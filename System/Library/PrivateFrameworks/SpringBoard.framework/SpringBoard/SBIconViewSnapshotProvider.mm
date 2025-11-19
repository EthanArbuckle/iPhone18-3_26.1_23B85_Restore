@interface SBIconViewSnapshotProvider
- (SBIconViewSnapshotProvider)initWithSnapshotView:(id)a3 invalidation:(id)a4;
- (void)invalidate;
@end

@implementation SBIconViewSnapshotProvider

- (SBIconViewSnapshotProvider)initWithSnapshotView:(id)a3 invalidation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SBIconViewSnapshotProvider;
  v9 = [(SBIconViewSnapshotProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapshotView, a3);
    v11 = [v8 copy];
    invalidationBlock = v10->_invalidationBlock;
    v10->_invalidationBlock = v11;
  }

  return v10;
}

- (void)invalidate
{
  invalidationBlock = self->_invalidationBlock;
  if (invalidationBlock)
  {
    v5 = MEMORY[0x223D6F7F0](invalidationBlock, a2);
    v4 = self->_invalidationBlock;
    self->_invalidationBlock = 0;

    v5[2](v5, self);
  }
}

@end