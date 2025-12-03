@interface SBCenterWindowToExistingSplitViewSwitcherModifier
- (BOOL)_wasPreviousCenterAppLayout:(id)layout layoutRole:(int64_t)role;
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBCenterWindowToExistingSplitViewSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout;
- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (id)handleSceneReadyEvent:(id)event;
- (id)topMostLayoutRolesForAppLayout:(id)layout;
- (id)visibleAppLayouts;
@end

@implementation SBCenterWindowToExistingSplitViewSwitcherModifier

- (SBCenterWindowToExistingSplitViewSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout
{
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v11 = appLayoutCopy;
  if (layoutCopy)
  {
    if (appLayoutCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBCenterWindowToExistingSplitViewSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  [SBCenterWindowToExistingSplitViewSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:];
LABEL_3:
  v19.receiver = self;
  v19.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  v12 = [(SBTransitionSwitcherModifier *)&v19 initWithTransitionID:dCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fromAppLayout, layout);
    objc_storeStrong(&v13->_toAppLayout, appLayout);
    v14 = [(SBAppLayout *)v13->_fromAppLayout itemForLayoutRole:4];
    v15 = [(SBAppLayout *)v13->_toAppLayout layoutRoleForItem:v14];
    v13->_layoutRoleBeingReplaced = v15;
    if ((SBLayoutRoleIsValidForSplitView(v15) & 1) == 0)
    {
      [SBCenterWindowToExistingSplitViewSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:];
    }

    v16 = [(SBAppLayout *)v13->_fromAppLayout leafAppLayoutForRole:v13->_layoutRoleBeingReplaced];
    appLayoutBeingReplaced = v13->_appLayoutBeingReplaced;
    v13->_appLayoutBeingReplaced = v16;

    if (!v13->_appLayoutBeingReplaced)
    {
      [SBCenterWindowToExistingSplitViewSwitcherModifier initWithTransitionID:fromAppLayout:toAppLayout:];
    }
  }

  return v13;
}

- (id)handleSceneReadyEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:event];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  visibleAppLayouts = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts mutableCopy];

  [v4 addObject:self->_appLayoutBeingReplaced];

  return v4;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v34.receiver = self;
  v34.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  layoutCopy = layout;
  [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v34 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LODWORD(role) = [(SBAppLayout *)self->_appLayoutBeingReplaced isEqual:layoutCopy, v34.receiver, v34.super_class];

  if (role)
  {
    layoutRoleBeingReplaced = self->_layoutRoleBeingReplaced;
    fromAppLayout = self->_fromAppLayout;
    [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self containerViewBounds];
    [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self preferredFrameForLayoutRole:layoutRoleBeingReplaced inAppLayout:fromAppLayout bounds:[(SBCenterWindowToExistingSplitViewSwitcherModifier *)self switcherInterfaceOrientation] interfaceOrientation:v22, v23, v24, v25];
    v13 = v26;
    v15 = v27;
    v17 = v28;
    v19 = v29;
  }

  v30 = v13;
  v31 = v15;
  v32 = v17;
  v33 = v19;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  v12.receiver = self;
  v12.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  layoutCopy = layout;
  [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
  v10 = v9;
  LODWORD(index) = [(SBAppLayout *)self->_appLayoutBeingReplaced isEqual:layoutCopy, v12.receiver, v12.super_class];

  result = 1.0;
  if (!index)
  {
    return v10;
  }

  return result;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v12.receiver = self;
  v12.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  layoutCopy = layout;
  [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v12 dimmingAlphaForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  LODWORD(role) = [(SBAppLayout *)self->_appLayoutBeingReplaced isEqual:layoutCopy, v12.receiver, v12.super_class];

  if (role)
  {
    medusaSettings = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self medusaSettings];
    [medusaSettings defaultDimmingOpacity];
    v8 = v10;
  }

  return v8;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  LOBYTE(v7) = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v9 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
  if ([(SBCenterWindowToExistingSplitViewSwitcherModifier *)self _wasPreviousCenterAppLayout:layoutCopy layoutRole:blurred])
  {
    v7 = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self isLayoutRoleContentReady:blurred inAppLayout:layoutCopy]^ 1;
  }

  return v7;
}

- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v13.receiver = self;
  v13.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  layoutCopy = layout;
  [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v13 blurDelayForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  LODWORD(role) = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self _wasPreviousCenterAppLayout:layoutCopy layoutRole:role, v13.receiver, v13.super_class];

  if (role)
  {
    switcherSettings = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings resizeBlurDelay];
    v8 = v11;
  }

  return v8;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  v9.receiver = self;
  v9.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  layoutCopy = layout;
  v7 = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v9 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  LOBYTE(scene) = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self _wasPreviousCenterAppLayout:layoutCopy layoutRole:scene, v9.receiver, v9.super_class];

  return (scene | v7) & 1;
}

- (id)topMostLayoutRolesForAppLayout:(id)layout
{
  v11.receiver = self;
  v11.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  layoutCopy = layout;
  v5 = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v11 topMostLayoutRolesForAppLayout:layoutCopy];
  v6 = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self _wasPreviousCenterAppLayout:layoutCopy layoutRole:self->_layoutRoleBeingReplaced, v11.receiver, v11.super_class];

  if (v6)
  {
    v7 = [v5 mutableCopy];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_layoutRoleBeingReplaced];
    [v7 removeObject:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_layoutRoleBeingReplaced];
    [v7 insertObject:v9 atIndex:0];

    v5 = v7;
  }

  return v5;
}

- (BOOL)_wasPreviousCenterAppLayout:(id)layout layoutRole:(int64_t)role
{
  fromAppLayout = self->_fromAppLayout;
  layoutCopy = layout;
  v8 = [(SBAppLayout *)fromAppLayout itemForLayoutRole:4];
  v9 = [layoutCopy itemForLayoutRole:self->_layoutRoleBeingReplaced];

  if ([(SBDisplayItem *)v8 isEqualToItem:v9])
  {
    v10 = self->_layoutRoleBeingReplaced == role;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initWithTransitionID:fromAppLayout:toAppLayout:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"fromAppLayout" object:? file:? lineNumber:? description:?];
}

- (void)initWithTransitionID:fromAppLayout:toAppLayout:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"toAppLayout" object:? file:? lineNumber:? description:?];
}

- (void)initWithTransitionID:fromAppLayout:toAppLayout:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithTransitionID:fromAppLayout:toAppLayout:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end