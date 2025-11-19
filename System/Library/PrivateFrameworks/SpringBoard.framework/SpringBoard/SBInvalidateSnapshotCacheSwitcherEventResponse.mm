@interface SBInvalidateSnapshotCacheSwitcherEventResponse
- (SBInvalidateSnapshotCacheSwitcherEventResponse)initWithDisplayItems:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
@end

@implementation SBInvalidateSnapshotCacheSwitcherEventResponse

- (SBInvalidateSnapshotCacheSwitcherEventResponse)initWithDisplayItems:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBInvalidateSnapshotCacheSwitcherEventResponse;
  v5 = [(SBChainableModifierEventResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    displayItems = v5->_displayItems;
    v5->_displayItems = v6;
  }

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v8.receiver = self;
  v8.super_class = SBInvalidateSnapshotCacheSwitcherEventResponse;
  v4 = [(SBChainableModifierEventResponse *)&v8 descriptionBuilderWithMultilinePrefix:a3];
  v5 = v4;
  displayItems = self->_displayItems;
  if (displayItems)
  {
    [v4 appendArraySection:displayItems withName:@"displayItems" skipIfEmpty:0];
  }

  else
  {
    [v4 appendString:@"(all)" withName:@"displayItems"];
  }

  return v5;
}

@end