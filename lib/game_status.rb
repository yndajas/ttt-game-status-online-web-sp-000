# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |combination|
    if combination.all? {|index|board[index] == "X"}
      return combination
    elsif combination.all? {|index|board[index] == "O"}
      return combination
    end
  end
  false
end

def full(board)
  board.all? {index|index == "X" || index == "O"}
end