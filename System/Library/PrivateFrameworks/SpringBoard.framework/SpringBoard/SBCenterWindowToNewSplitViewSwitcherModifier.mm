@interface SBCenterWindowToNewSplitViewSwitcherModifier
- (BOOL)_wasItemPreviouslyCenter:(id)center;
- (BOOL)_wasItemPreviouslyFullScreen:(id)screen;
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (SBCenterWindowToNewSplitViewSwitcherModifier)initWithTransitionID:(id)d fromFullScreenAppLayout:(id)layout toSpaceAppLayout:(id)appLayout;
- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)handleSceneReadyEvent:(id)event;
- (id)topMostLayoutRolesForAppLayout:(id)layout;
@end

@implementation SBCenterWindowToNewSplitViewSwitcherModifier

- (SBCenterWindowToNewSplitViewSwitcherModifier)initWithTransitionID:(id)d fromFullScreenAppLayout:(id)layout toSpaceAppLayout:(id)appLayout
{
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v12 = appLayoutCopy;
  if (layoutCopy)
  {
    if (appLayoutCopy)
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
  v13 = [(SBTransitionSwitcherModifier *)&v20 initWithTransitionID:dCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fromFullScreenAppLayout, layout);
    objc_storeStrong(&v14->_toSpaceAppLayout, appLayout);
    toSpaceAppLayout = v14->_toSpaceAppLayout;
    v16 = [layoutCopy itemForLayoutRole:1];
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

- (id)handleSceneReadyEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBCenterWindowToNewSplitViewSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:event];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  v10.receiver = self;
  v10.super_class = SBCenterWindowToNewSplitViewSwitcherModifier;
  LOBYTE(v7) = [(SBCenterWindowToNewSplitViewSwitcherModifier *)&v10 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
  v8 = [layoutCopy itemForLayoutRole:blurred];
  if ([(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyFullScreen:v8]|| [(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyCenter:v8])
  {
    v7 = [(SBCenterWindowToNewSplitViewSwitcherModifier *)self isLayoutRoleContentReady:blurred inAppLayout:layoutCopy]^ 1;
  }

  return v7;
}

- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v14.receiver = self;
  v14.super_class = SBCenterWindowToNewSplitViewSwitcherModifier;
  layoutCopy = layout;
  [(SBCenterWindowToNewSplitViewSwitcherModifier *)&v14 blurDelayForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  v9 = [layoutCopy itemForLayoutRole:{role, v14.receiver, v14.super_class}];

  if ([(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyFullScreen:v9]|| [(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyCenter:v9])
  {
    switcherSettings = [(SBCenterWindowToNewSplitViewSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings resizeBlurDelay];
    v8 = v12;
  }

  return v8;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  v10.receiver = self;
  v10.super_class = SBCenterWindowToNewSplitViewSwitcherModifier;
  layoutCopy = layout;
  v7 = [(SBCenterWindowToNewSplitViewSwitcherModifier *)&v10 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  v8 = [layoutCopy itemForLayoutRole:{scene, v10.receiver, v10.super_class}];

  if ([(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyFullScreen:v8]|| [(SBCenterWindowToNewSplitViewSwitcherModifier *)self _wasItemPreviouslyCenter:v8])
  {
    v7 = 1;
  }

  return v7;
}

- (id)topMostLayoutRolesForAppLayout:(id)layout
{
  v11.receiver = self;
  v11.super_class = SBCenterWindowToNewSplitViewSwitcherModifier;
  layoutCopy = layout;
  v5 = [(SBCenterWindowToNewSplitViewSwitcherModifier *)&v11 topMostLayoutRolesForAppLayout:layoutCopy];
  v6 = [layoutCopy isEqual:{self->_toSpaceAppLayout, v11.receiver, v11.super_class}];

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

- (BOOL)_wasItemPreviouslyFullScreen:(id)screen
{
  fromFullScreenAppLayout = self->_fromFullScreenAppLayout;
  screenCopy = screen;
  v5 = [(SBAppLayout *)fromFullScreenAppLayout itemForLayoutRole:1];
  v6 = [(SBDisplayItem *)v5 isEqualToItem:screenCopy];

  return v6;
}

- (BOOL)_wasItemPreviouslyCenter:(id)center
{
  fromFullScreenAppLayout = self->_fromFullScreenAppLayout;
  centerCopy = center;
  v5 = [(SBAppLayout *)fromFullScreenAppLayout itemForLayoutRole:4];
  v6 = [(SBDisplayItem *)v5 isEqualToItem:centerCopy];

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