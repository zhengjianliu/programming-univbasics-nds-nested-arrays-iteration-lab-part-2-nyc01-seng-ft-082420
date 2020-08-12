def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  row_index = 0
  min = []
  while row_index < src.size do
    element_index = 0
    m = src[row_index].first
    while element_index < src[row_index].count do
      if src[row_index][element_index] < m
        m = src[row_index][element_index]
      end
      element_index += 1
    end
    min.push(m)
    row_index += 1
  end
  min
end