@interface SBIconViewSnapshotProvider
- (SBIconViewSnapshotProvider)initWithSnapshotView:(id)view invalidation:(id)invalidation;
- (void)invalidate;
@end

@implementation SBIconViewSnapshotProvider

- (SBIconViewSnapshotProvider)initWithSnapshotView:(id)view invalidation:(id)invalidation
{
  viewCopy = view;
  invalidationCopy = invalidation;
  v14.receiver = self;
  v14.super_class = SBIconViewSnapshotProvider;
  v9 = [(SBIconViewSnapshotProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_snapshotView, view);
    v11 = [invalidationCopy copy];
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