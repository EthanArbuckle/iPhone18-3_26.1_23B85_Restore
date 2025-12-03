@interface TSTWidthHeightCollection
- (id).cxx_construct;
- (void)addFittingHeight:(double)height forCellID:(TSUCellCoord)d;
- (void)addFittingWidth:(double)width forCellID:(TSUCellCoord)d;
- (void)enumerateFittingHeightsUsingBlock:(id)block;
- (void)enumerateFittingWidthsUsingBlock:(id)block;
@end

@implementation TSTWidthHeightCollection

- (void)addFittingHeight:(double)height forCellID:(TSUCellCoord)d
{
  end = self->_fittingHeights.__end_;
  cap = self->_fittingHeights.__cap_;
  if (end >= cap)
  {
    begin = self->_fittingHeights.__begin_;
    v9 = (end - begin) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      sub_22107C148();
    }

    v11 = cap - begin;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_221086F74(&self->_fittingHeights, v12);
    }

    v13 = 16 * v9;
    *v13 = d;
    *(v13 + 8) = height;
    v7 = (16 * v9 + 16);
    v14 = self->_fittingHeights.__begin_;
    v15 = (self->_fittingHeights.__end_ - v14);
    v16 = (v13 - v15);
    memcpy((v13 - v15), v14, v15);
    v17 = self->_fittingHeights.__begin_;
    self->_fittingHeights.__begin_ = v16;
    self->_fittingHeights.__end_ = v7;
    self->_fittingHeights.__cap_ = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *end = d;
    end[1] = height;
    v7 = end + 2;
  }

  self->_fittingHeights.__end_ = v7;
}

- (void)addFittingWidth:(double)width forCellID:(TSUCellCoord)d
{
  HIDWORD(v7[0]) = *&d.column;
  v6 = sub_2210C3024(&self->_columnToMaxFittingWidths.__table_.__bucket_list_.__ptr_, v7 + 2);
  if (v6 && *(v6 + 3) > width)
  {
    width = *(v6 + 3);
  }

  v7[2] = v7 + 4;
  *(sub_2210C30DC(&self->_columnToMaxFittingWidths.__table_.__bucket_list_.__ptr_, v7 + 2) + 3) = width;
}

- (void)enumerateFittingHeightsUsingBlock:(id)block
{
  blockCopy = block;
  v7 = 0;
  begin = self->_fittingHeights.__begin_;
  for (i = self->_fittingHeights.__end_; begin != i; begin += 2)
  {
    blockCopy[2](blockCopy, *begin, &v7, begin[1]);
    if (v7)
    {
      break;
    }
  }
}

- (void)enumerateFittingWidthsUsingBlock:(id)block
{
  blockCopy = block;
  v6 = 0;
  p_first_node = &self->_columnToMaxFittingWidths.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    blockCopy[2](blockCopy, LOWORD(p_first_node[2].__next_), &v6, *&p_first_node[3].__next_);
  }

  while ((v6 & 1) == 0);
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 16) = 1065353216;
  return self;
}

@end