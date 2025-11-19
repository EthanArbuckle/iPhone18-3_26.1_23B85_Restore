@interface _SBAppSwitcherSnapshotCacheKey
- (BOOL)isEqual:(id)a3;
- (_SBAppSwitcherSnapshotCacheKey)initWithDisplayItem:(id)a3 inAppLayout:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _SBAppSwitcherSnapshotCacheKey

- (_SBAppSwitcherSnapshotCacheKey)initWithDisplayItem:(id)a3 inAppLayout:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _SBAppSwitcherSnapshotCacheKey;
  v9 = [(_SBAppSwitcherSnapshotCacheKey *)&v14 init];
  if (v9)
  {
    if (v7)
    {
      if (v8)
      {
LABEL_4:
        objc_storeStrong(&v9->_displayItem, a3);
        objc_storeStrong(&v9->_appLayout, a4);
        v10 = [MEMORY[0x277CF0C40] builder];
        v11 = [v10 appendObject:v9->_displayItem];
        v12 = [v10 appendObject:v9->_appLayout];
        v9->_hash = [v10 hash];

        goto LABEL_5;
      }
    }

    else
    {
      [_SBAppSwitcherSnapshotCacheKey initWithDisplayItem:inAppLayout:];
      if (v8)
      {
        goto LABEL_4;
      }
    }

    [_SBAppSwitcherSnapshotCacheKey initWithDisplayItem:inAppLayout:];
    goto LABEL_4;
  }

LABEL_5:

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, v4);

  if (v6)
  {
    v7 = [v6 displayItem];
    if ([v7 isEqual:self->_displayItem])
    {
      v8 = [v6 appLayout];
      v9 = [v8 isEqual:self->_appLayout];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  appLayout = self->_appLayout;
  displayItem = self->_displayItem;

  return [v4 initWithDisplayItem:displayItem inAppLayout:appLayout];
}

- (void)initWithDisplayItem:inAppLayout:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"displayItem" object:? file:? lineNumber:? description:?];
}

- (void)initWithDisplayItem:inAppLayout:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:@"appLayout" object:? file:? lineNumber:? description:?];
}

@end