@interface SBRequestFolderSnapshotsSwitcherEventResponse
- (SBRequestFolderSnapshotsSwitcherEventResponse)initWithSnapshotRequest:(BOOL)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBRequestFolderSnapshotsSwitcherEventResponse

- (SBRequestFolderSnapshotsSwitcherEventResponse)initWithSnapshotRequest:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SBRequestFolderSnapshotsSwitcherEventResponse;
  result = [(SBChainableModifierEventResponse *)&v5 init];
  if (result)
  {
    result->_snapshotRequested = a3;
  }

  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBRequestFolderSnapshotsSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v7 descriptionBuilderWithMultilinePrefix:a3];
  v5 = [v4 appendBool:self->_snapshotRequested withName:@"snapshotRequested"];

  return v4;
}

@end