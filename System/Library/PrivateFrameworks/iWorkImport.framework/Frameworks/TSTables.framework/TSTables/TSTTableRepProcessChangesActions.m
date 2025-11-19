@interface TSTTableRepProcessChangesActions
- (TSUCellRect)dirtyStrokeRange;
- (id).cxx_construct;
- (void)setDirtyCellRange:(TSUCellRect)a3;
@end

@implementation TSTTableRepProcessChangesActions

- (void)setDirtyCellRange:(TSUCellRect)a3
{
  end = self->_dirtyCellRanges.__end_;
  cap = self->_dirtyCellRanges.__cap_;
  if (end >= cap)
  {
    begin = self->_dirtyCellRanges.__begin_;
    v8 = end - begin;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_22107C148();
    }

    v10 = cap - begin;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_221086F74(&self->_dirtyCellRanges, v11);
    }

    *(16 * v8) = a3;
    v6 = (16 * v8 + 16);
    v12 = self->_dirtyCellRanges.__begin_;
    v13 = (self->_dirtyCellRanges.__end_ - v12);
    v14 = (16 * v8 - v13);
    memcpy(v14, v12, v13);
    v15 = self->_dirtyCellRanges.__begin_;
    self->_dirtyCellRanges.__begin_ = v14;
    self->_dirtyCellRanges.__end_ = v6;
    self->_dirtyCellRanges.__cap_ = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *end = a3;
    v6 = end + 1;
  }

  self->_dirtyCellRanges.__end_ = v6;
}

- (TSUCellRect)dirtyStrokeRange
{
  size = self->_dirtyStrokeRange.size;
  origin = self->_dirtyStrokeRange.origin;
  result.size = size;
  result.origin = origin;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end