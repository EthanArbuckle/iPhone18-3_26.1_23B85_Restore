@interface TSTMergeRangeSortedSet
- (TSTMergeRangeSortedSet)init;
- (id).cxx_construct;
- (void)addRange:(TSUCellRect)range height:(double)height paddingInsets:(UIEdgeInsets)insets isCheckbox:(BOOL)checkbox;
- (void)enumerateMergeRangesUsingBlock:(id)block;
@end

@implementation TSTMergeRangeSortedSet

- (TSTMergeRangeSortedSet)init
{
  v3.receiver = self;
  v3.super_class = TSTMergeRangeSortedSet;
  result = [(TSTMergeRangeSortedSet *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
  }

  return result;
}

- (void)addRange:(TSUCellRect)range height:(double)height paddingInsets:(UIEdgeInsets)insets isCheckbox:(BOOL)checkbox
{
  rangeCopy = range;
  heightCopy = height;
  insetsCopy = insets;
  if (range.size.numberOfColumns)
  {
    v7 = (*&range.origin & 0xFFFF00000000) == 0x7FFF00000000;
  }

  else
  {
    v7 = 1;
  }

  v8 = (*&range.origin + (*&range.size << 32) + 0xFFFF00000000) & 0xFFFF00000000;
  if (v7)
  {
    v8 = 0x7FFF00000000;
  }

  v9 = 0x7FFFFFFFLL;
  if (range.size.numberOfRows)
  {
    v10 = range.origin.row == 0x7FFFFFFF;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v9 = range.origin.row + range.size.numberOfRows - 1;
  }

  v14 = v8 | v9;
  checkboxCopy = checkbox;
  os_unfair_lock_lock(&self->_lock);
  sub_22141ED50(&self->_set, &rangeCopy);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)enumerateMergeRangesUsingBlock:(id)block
{
  blockCopy = block;
  v10 = 0;
  begin_node = self->_set.__tree_.__begin_node_;
  p_end_node = &self->_set.__tree_.__end_node_;
  if (begin_node != &self->_set.__tree_.__end_node_)
  {
    do
    {
      blockCopy[2](blockCopy, begin_node[4].__left_, begin_node[5].__left_, begin_node[12].__left_ & 1, &v10, *&begin_node[6].__left_, *&begin_node[7].__left_, *&begin_node[8].__left_, *&begin_node[9].__left_, *&begin_node[10].__left_);
      if (v10)
      {
        break;
      }

      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v8 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v8 = begin_node[2].__left_;
          v9 = v8->__left_ == begin_node;
          begin_node = v8;
        }

        while (!v9);
      }

      begin_node = v8;
    }

    while (v8 != p_end_node);
  }

  sub_2210BC9F8(&self->_set, self->_set.__tree_.__end_node_.__left_);
  self->_set.__tree_.__end_node_.__left_ = 0;
  self->_set.__tree_.__size_ = 0;
  self->_set.__tree_.__begin_node_ = p_end_node;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end