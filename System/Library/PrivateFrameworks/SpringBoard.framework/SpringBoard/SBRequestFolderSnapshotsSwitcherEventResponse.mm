@interface SBRequestFolderSnapshotsSwitcherEventResponse
- (SBRequestFolderSnapshotsSwitcherEventResponse)initWithSnapshotRequest:(BOOL)request;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
@end

@implementation SBRequestFolderSnapshotsSwitcherEventResponse

- (SBRequestFolderSnapshotsSwitcherEventResponse)initWithSnapshotRequest:(BOOL)request
{
  v5.receiver = self;
  v5.super_class = SBRequestFolderSnapshotsSwitcherEventResponse;
  result = [(SBChainableModifierEventResponse *)&v5 init];
  if (result)
  {
    result->_snapshotRequested = request;
  }

  return result;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v7.receiver = self;
  v7.super_class = SBRequestFolderSnapshotsSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v7 descriptionBuilderWithMultilinePrefix:prefix];
  v5 = [v4 appendBool:self->_snapshotRequested withName:@"snapshotRequested"];

  return v4;
}

@end