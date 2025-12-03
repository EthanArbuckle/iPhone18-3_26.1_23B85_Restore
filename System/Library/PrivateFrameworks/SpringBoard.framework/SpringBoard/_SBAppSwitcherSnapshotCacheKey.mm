@interface _SBAppSwitcherSnapshotCacheKey
- (BOOL)isEqual:(id)equal;
- (_SBAppSwitcherSnapshotCacheKey)initWithDisplayItem:(id)item inAppLayout:(id)layout;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _SBAppSwitcherSnapshotCacheKey

- (_SBAppSwitcherSnapshotCacheKey)initWithDisplayItem:(id)item inAppLayout:(id)layout
{
  itemCopy = item;
  layoutCopy = layout;
  v14.receiver = self;
  v14.super_class = _SBAppSwitcherSnapshotCacheKey;
  v9 = [(_SBAppSwitcherSnapshotCacheKey *)&v14 init];
  if (v9)
  {
    if (itemCopy)
    {
      if (layoutCopy)
      {
LABEL_4:
        objc_storeStrong(&v9->_displayItem, item);
        objc_storeStrong(&v9->_appLayout, layout);
        builder = [MEMORY[0x277CF0C40] builder];
        v11 = [builder appendObject:v9->_displayItem];
        v12 = [builder appendObject:v9->_appLayout];
        v9->_hash = [builder hash];

        goto LABEL_5;
      }
    }

    else
    {
      [_SBAppSwitcherSnapshotCacheKey initWithDisplayItem:inAppLayout:];
      if (layoutCopy)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = SBSafeCast(v5, equalCopy);

  if (v6)
  {
    displayItem = [v6 displayItem];
    if ([displayItem isEqual:self->_displayItem])
    {
      appLayout = [v6 appLayout];
      v9 = [appLayout isEqual:self->_appLayout];
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

- (id)copyWithZone:(_NSZone *)zone
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