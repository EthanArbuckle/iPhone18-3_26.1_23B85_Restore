@interface CRCHNetworkCursor
- (id).cxx_construct;
- (void)addEdgeIndex:(unint64_t)index;
@end

@implementation CRCHNetworkCursor

- (void)addEdgeIndex:(unint64_t)index
{
  end = self->_edgeIndexes.__end_;
  cap = self->_edgeIndexes.__cap_;
  if (end >= cap)
  {
    begin = self->_edgeIndexes.__begin_;
    v9 = end - begin;
    v10 = end - begin;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
    }

    v12 = cap - begin;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&self->_edgeIndexes, v14);
    }

    v15 = end - begin;
    v16 = (8 * v10);
    v17 = (8 * v10 - 8 * v15);
    *v16 = index;
    v7 = v16 + 1;
    memcpy(v17, begin, v9);
    v18 = self->_edgeIndexes.__begin_;
    self->_edgeIndexes.__begin_ = v17;
    self->_edgeIndexes.__end_ = v7;
    self->_edgeIndexes.__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *end = index;
    v7 = end + 1;
  }

  self->_edgeIndexes.__end_ = v7;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end