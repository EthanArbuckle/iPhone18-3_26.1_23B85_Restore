@interface SBAppSwitcherSnapshotCacheEntry
- (BOOL)_matchesAppLayout:(id)a3 displayItem:(id)a4;
- (id)description;
- (int64_t)role;
@end

@implementation SBAppSwitcherSnapshotCacheEntry

- (int64_t)role
{
  v3 = [(SBAppSwitcherSnapshotCacheEntry *)self appLayout];
  v4 = [(SBAppSwitcherSnapshotCacheEntry *)self displayItem];
  v5 = [v3 layoutRoleForItem:v4];

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
  v10 = [v3 build];

  return v10;
}

- (BOOL)_matchesAppLayout:(id)a3 displayItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBAppSwitcherSnapshotCacheEntry *)self appLayout];
  v9 = [v8 isEqual:v7];

  if (v9)
  {
    v10 = [(SBAppSwitcherSnapshotCacheEntry *)self displayItem];
    v11 = [(SBDisplayItem *)v10 isEqualToItem:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end