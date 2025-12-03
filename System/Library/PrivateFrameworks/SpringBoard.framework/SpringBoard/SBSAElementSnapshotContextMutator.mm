@interface SBSAElementSnapshotContextMutator
- (SBSAElementSnapshotContextMutator)initWithElementSnapshotContext:(id)context;
@end

@implementation SBSAElementSnapshotContextMutator

- (SBSAElementSnapshotContextMutator)initWithElementSnapshotContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SBSAElementSnapshotContextMutator;
  v6 = [(SBSAElementSnapshotContextMutator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementSnapshotContext, context);
  }

  return v7;
}

@end