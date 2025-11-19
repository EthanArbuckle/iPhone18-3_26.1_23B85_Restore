@interface TSTTableHeaderStorage
- (TSTTableHeaderStorage)initWithOwner:(id)a3;
- (void)dealloc;
@end

@implementation TSTTableHeaderStorage

- (TSTTableHeaderStorage)initWithOwner:(id)a3
{
  v6.receiver = self;
  v6.super_class = TSTTableHeaderStorage;
  v4 = [(TSPContainedObject *)&v6 initWithOwner:?];
  if (v4)
  {
    v4->mBuckets[0] = -[TSTTableHeaderStorageBucket initWithContext:]([TSTTableHeaderStorageBucket alloc], "initWithContext:", [a3 context]);
  }

  return v4;
}

- (void)dealloc
{
  self->mBuckets[0] = 0;
  v3.receiver = self;
  v3.super_class = TSTTableHeaderStorage;
  [(TSTTableHeaderStorage *)&v3 dealloc];
}

@end