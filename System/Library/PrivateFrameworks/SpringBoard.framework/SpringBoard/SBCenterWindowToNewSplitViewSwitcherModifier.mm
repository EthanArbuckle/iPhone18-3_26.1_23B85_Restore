@interface SBCenterWindowToNewSplitViewSwitcherModifier
- (BOOL)_wasItemPreviouslyCenter:(id)a3;
- (BOOL)_wasItemPreviouslyFullScreen:(id)a3;
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (SBCenterWindowToNewSplitViewSwitcherModifier)initWithTransitionID:(id)a3 fromFullScreenAppLayout:(id)a4 toSpaceAppLayout:(id)a5;
- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)handleSceneReadyEvent:(id)a3;
- (id)topMostLayoutRolesForAppLayout:(id)a3;
@end

@implementation SBCenterWindowToNewSplitViewSwitcherModifier

- (SBCenterWindowToNewSplitViewSwitcherModifier)initWithTransitionID:(id)a3 fromFullScreenAppLayout:(id)a4 toSpaceAppLayout:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBCenterWindowToNewSplitViewSwitcherModifier initWithTransitionID:a2 fromFullScreenAppLayout:self toSpaceAppLayout:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [SBCenterWindowToNewSplitViewSwitcherModifier initWithTransitionID:a2 fromFullScreenAppLayout:self toSpaceAppLayout:?];
LABEL_3:
  v20.receiver = self;
  v20.super_class = SBCenterWindowToNewSplitViewSwitcherModifier;
  v13 = [(SBTransitionSwitcherModifier *)&v20 initWithTransitionID:v9];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fromFullScreenAppLayout, a4);
    objc_storeStrong(&v14->_toSpaceAppLayout, a5);
    toSpaceAppLayout = v14->_toSpaceAppLayout;
    v16 = [v10 itemForLayoutRole:1];
    v17 = [(SBAppLayout *)toSpaceAppLayout layoutRoleForItem:v16];

    if ((SBLayoutRoleIsValidForSplitView(v17) & 1) == 0)
    {
      [SBCenterWindowToNewSplitViewSwitcherModifier initWithTransitionID:a2 fromFullScreenAppLayout:v14 toSpaceAppLayout:?];
    }

    v18 = 2;
    if (v17 != 1)
    {
      v18 = 1;
    }

    v14->_layoutRoleBeingAdded = v18;
  }

  return v14;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBCenterWindowToNewSplitViewSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:a3];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SBCenterWindowToNewSplitViewSwitcherModifier;
  LOBYTE(v7) = [(SBCenterWindowToNewSplitViewSwitcherModifier *)&v10 isLayoutRoleBlurred:a3 inAppLayout:v6];
  v8 = [v6 itemForLayoutRole:a3];
  if ([(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyFullScreen:v8]|| [(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyCenter:v8])
  {
    v7 = [(SBCenterWindowToNewSplitViewSwitcherModifier *)self isLayoutRoleContentReady:a3 inAppLayout:v6]^ 1;
  }

  return v7;
}

- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v14.receiver = self;
  v14.super_class = SBCenterWindowToNewSplitViewSwitcherModifier;
  v6 = a4;
  [(SBCenterWindowToNewSplitViewSwitcherModifier *)&v14 blurDelayForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  v9 = [v6 itemForLayoutRole:{a3, v14.receiver, v14.super_class}];

  if ([(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyFullScreen:v9]|| [(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyCenter:v9])
  {
    v10 = [(SBCenterWindowToNewSplitViewSwitcherModifier *)self switcherSettings];
    v11 = [v10 animationSettings];
    [v11 resizeBlurDelay];
    v8 = v12;
  }

  return v8;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBCenterWindowToNewSplitViewSwitcherModifier;
  v6 = a4;
  v7 = [(SBCenterWindowToNewSplitViewSwitcherModifier *)&v10 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  v8 = [v6 itemForLayoutRole:{a3, v10.receiver, v10.super_class}];

  if ([(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyFullScreen:v8]|| [(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyCenter:v8])
  {
    v7 = 1;
  }

  return v7;
}

- (id)topMostLayoutRolesForAppLayout:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBCenterWindowToNewSplitViewSwitcherModifier;
  v4 = a3;
  v5 = [(SBCenterWindowToNewSplitViewSwitcherModifier *)&v11 topMostLayoutRolesForAppLayout:v4];
  v6 = [v4 isEqual:{self->_toSpaceAppLayout, v11.receiver, v11.super_class}];

  if (v6)
  {
    v7 = [v5 mutableCopy];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_layoutRoleBeingAdded];
    [v7 removeObject:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_layoutRoleBeingAdded];
    [v7 insertObject:v9 atIndex:0];

    v5 = v7;
  }

  return v5;
}

- (BOOL)_wasItemPreviouslyFullScreen:(id)a3
{
  fromFullScreenAppLayout = self->_fromFullScreenAppLayout;
  v4 = a3;
  v5 = [(SBAppLayout *)fromFullScreenAppLayout itemForLayoutRole:1];
  v6 = [(SBDisplayItem *)v5 isEqualToItem:v4];

  return v6;
}

- (BOOL)_wasItemPreviouslyCenter:(id)a3
{
  fromFullScreenAppLayout = self->_fromFullScreenAppLayout;
  v4 = a3;
  v5 = [(SBAppLayout *)fromFullScreenAppLayout itemForLayoutRole:4];
  v6 = [(SBDisplayItem *)v5 isEqualToItem:v4];

  return v6;
}

- (void)initWithTransitionID:(uint64_t)a1 fromFullScreenAppLayout:(uint64_t)a2 toSpaceAppLayout:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCenterWindowToNewSplitViewSwitcherModifier.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"fromFullScreenAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromFullScreenAppLayout:(uint64_t)a2 toSpaceAppLayout:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCenterWindowToNewSplitViewSwitcherModifier.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"toSpaceAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromFullScreenAppLayout:(uint64_t)a2 toSpaceAppLayout:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCenterWindowToNewSplitViewSwitcherModifier.m" lineNumber:36 description:@"Couldn't find previous fullscreen item in the new combined split layout"];
}

@end