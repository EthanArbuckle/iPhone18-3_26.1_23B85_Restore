@interface TSTMergeRegionMapIterator
- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)nextMergeRegion;
- (TSTMergeRegionMapIterator)initWithMergeRegionMap:(id)a3;
- (void)dealloc;
@end

@implementation TSTMergeRegionMapIterator

- (TSTMergeRegionMapIterator)initWithMergeRegionMap:(id)a3
{
  v7.receiver = self;
  v7.super_class = TSTMergeRegionMapIterator;
  v4 = [(TSTMergeRegionMapIterator *)&v7 init];
  if (v4)
  {
    v5 = a3;
    v4->mMergeRegionMap = v5;
    v4->mMergeRegionIterator.__i_.__node_ = v5->mMergeRegionTopLeftToMergeRegionSize.__table_.__first_node_.__next_;
  }

  return v4;
}

- ($AA9F29356CAB8C7531B71D0D1ACCC7CE)nextMergeRegion
{
  node = self->mMergeRegionIterator.__i_.__node_;
  if (!node)
  {
    return 0xFFFFFFLL;
  }

  v4 = *(node + 2);
  self->mMergeRegionIterator.__i_.__node_ = *node;
  return v4;
}

- (void)dealloc
{
  self->mMergeRegionMap = 0;
  v3.receiver = self;
  v3.super_class = TSTMergeRegionMapIterator;
  [(TSTMergeRegionMapIterator *)&v3 dealloc];
}

@end