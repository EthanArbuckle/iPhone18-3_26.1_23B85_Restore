@interface TSTCellRegionColMajorIterator
- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)getNext;
- (TSTCellRegionColMajorIterator)initWithCellRegion:(id)a3;
- (id).cxx_construct;
- (void)dealloc;
- (void)terminate;
@end

@implementation TSTCellRegionColMajorIterator

- (TSTCellRegionColMajorIterator)initWithCellRegion:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSTCellRegionColMajorIterator;
  v4 = [(TSTCellRegionColMajorIterator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [a3 fillCellRangeColMajorSet:&v4->mCellRangeSet leftToRight:1];
    v5->mBoundingCellRange = [a3 boundingCellRange];
    v5->mCellID = *(v5->mCellRangeSet.__tree_.__begin_node_ + 26);
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = TSTCellRegionColMajorIterator;
  [(TSTCellRegionColMajorIterator *)&v2 dealloc];
}

- ($2F2D2FE54C0B9D2AA4EBD8788136C7D0)getNext
{
  mCellID = self->mCellID;
  if (self->mCellID.row != 0xFFFF && (*&mCellID.row & 0xFF0000) != 0xFF0000)
  {
    p_mCellRangeSet = &self->mCellRangeSet;
    begin_node = self->mCellRangeSet.__tree_.__begin_node_;
    self->mCellID.row = mCellID.row + 1;
    v6 = *(begin_node + 26);
    if ((mCellID.row + 1) > (v6 + HIWORD(v6) - 1))
    {
      v8 = *(begin_node + 26);
      std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__remove_node_pointer(&self->mCellRangeSet, begin_node);
      operator delete(begin_node);
      WORD2(v8) = WORD2(v6) - 1;
      BYTE2(v8) = BYTE2(v6) + 1;
      if (WORD2(v6) != 1)
      {
        std::__tree<TSUColumnRowRect,TSTCellRangeColumnMajorLess,std::allocator<TSUColumnRowRect>>::__emplace_unique_key_args<TSUColumnRowRect,TSUColumnRowRect const&>(p_mCellRangeSet, &v8);
      }

      self->mCellID = *(self->mCellRangeSet.__tree_.__begin_node_ + 26);
    }
  }

  return *&mCellID;
}

- (void)terminate
{
  if (self->mCellRangeSet.__tree_.__size_ >= 2)
  {
    do
    {
      begin_node = self->mCellRangeSet.__tree_.__begin_node_;
      std::__tree<std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,EQKit::Config::Operator::Form>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,EQKit::Config::Operator::Form>>>::__remove_node_pointer(&self->mCellRangeSet, begin_node);
      operator delete(begin_node);
    }

    while (self->mCellRangeSet.__tree_.__size_ > 1);
  }

  self->mCellID = 0xFFFFFF;
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 2) = 0;
  *(self + 1) = self + 16;
  return self;
}

@end