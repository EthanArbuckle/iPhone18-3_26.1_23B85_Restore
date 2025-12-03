@interface TSTMergeListWrapper
- (TSTMergeListWrapper)initWithMergeList:(const void *)list;
- (TSTMergeListWrapper)mergeListWrapperWithRangesPassingTest:(id)test;
- (id).cxx_construct;
- (void)enumerateRangesUsingBlock:(id)block;
@end

@implementation TSTMergeListWrapper

- (TSTMergeListWrapper)initWithMergeList:(const void *)list
{
  v8.receiver = self;
  v8.super_class = TSTMergeListWrapper;
  v4 = [(TSTMergeListWrapper *)&v8 init];
  p_mergeList = &v4->_mergeList;
  if (v4)
  {
    v6 = p_mergeList == list;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    sub_2210BD068(p_mergeList, *list, *(list + 1), (*(list + 1) - *list) >> 4);
  }

  return v4;
}

- (void)enumerateRangesUsingBlock:(id)block
{
  blockCopy = block;
  v8 = 0;
  begin = self->_mergeList.__begin_;
  end = self->_mergeList.__end_;
  if (begin != end)
  {
    v7 = 0;
    do
    {
      (*(blockCopy + 2))(blockCopy, v7, *&begin->origin, *&begin->size, &v8);
      if (v8)
      {
        break;
      }

      ++v7;
      ++begin;
    }

    while (begin != end);
  }
}

- (TSTMergeListWrapper)mergeListWrapperWithRangesPassingTest:(id)test
{
  testCopy = test;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  begin = self->_mergeList.__begin_;
  end = self->_mergeList.__end_;
  if (begin != end)
  {
    v7 = begin + 1;
    do
    {
      v15 = v7[-1];
      if ((*(testCopy + 2))(testCopy, *&v15.origin, *&v15.size, &v16))
      {
        sub_221083454(&__p, &v15);
      }

      if (v16)
      {
        break;
      }
    }

    while (v7++ != end);
  }

  v9 = objc_alloc(objc_opt_class());
  v13 = objc_msgSend_initWithMergeList_(v9, v10, &__p, v11, v12);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v13;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end