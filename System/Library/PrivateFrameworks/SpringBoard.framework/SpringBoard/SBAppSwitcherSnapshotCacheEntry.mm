@interface SBAppSwitcherSnapshotCacheEntry
- (BOOL)_matchesAppLayout:(id)layout displayItem:(id)item;
- (id)description;
- (int64_t)role;
@end

@implementation SBAppSwitcherSnapshotCacheEntry

- (int64_t)role
{
  appLayout = [(SBAppSwitcherSnapshotCacheEntry *)self appLayout];
  displayItem = [(SBAppSwitcherSnapshotCacheEntry *)self displayItem];
  v5 = [appLayout layoutRoleForItem:displayItem];

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_appLayout withName:@"appLayout" skipIfNil:0];
  v5 = [v3 appendObject:self->_displayItem withName:@"displayItem" skipIfNil:0];
  v6 = [v3 appendObject:self->_snapshot withName:@"snapshot" skipIfNil:0];
  v7 = [v3 appendObject:self->_snapshotImage withName:@"snapshotImage" skipIfNil:0];
  v8 = [v3 appendBool:self->_fromFullSizeSnapshotRequest withName:@"fromFullSizeSnapshot"];
  v9 = [v3 appendBool:self->_needsUpdate withName:@"needsUpdate"];
  build = [v3 build];

  return build;
}

- (BOOL)_matchesAppLayout:(id)layout displayItem:(id)item
{
  itemCopy = item;
  layoutCopy = layout;
  appLayout = [(SBAppSwitcherSnapshotCacheEntry *)self appLayout];
  v9 = [appLayout isEqual:layoutCopy];

  if (v9)
  {
    displayItem = [(SBAppSwitcherSnapshotCacheEntry *)self displayItem];
    v11 = [(SBDisplayItem *)displayItem isEqualToItem:itemCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end