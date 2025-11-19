@interface SBCenterWindowToExistingSplitViewSwitcherModifier
- (BOOL)_wasPreviousCenterAppLayout:(id)a3 layoutRole:(int64_t)a4;
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBCenterWindowToExistingSplitViewSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5;
- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)handleSceneReadyEvent:(id)a3;
- (id)topMostLayoutRolesForAppLayout:(id)a3;
- (id)visibleAppLayouts;
@end

@implementation SBCenterWindowToExistingSplitViewSwitcherModifier

- (SBCenterWindowToExistingSplitViewSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    if (v10)
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
  v12 = [(SBTransitionSwitcherModifier *)&v19 initWithTransitionID:v8];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_fromAppLayout, a4);
    objc_storeStrong(&v13->_toAppLayout, a5);
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

- (id)handleSceneReadyEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:a3];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  v3 = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 mutableCopy];

  [v4 addObject:self->_appLayoutBeingReplaced];

  return v4;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v34.receiver = self;
  v34.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  v11 = a4;
  [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v34 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LODWORD(a3) = [(SBAppLayout *)self->_appLayoutBeingReplaced isEqual:v11, v34.receiver, v34.super_class];

  if (a3)
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

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v12.receiver = self;
  v12.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  v8 = a4;
  [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
  v10 = v9;
  LODWORD(a5) = [(SBAppLayout *)self->_appLayoutBeingReplaced isEqual:v8, v12.receiver, v12.super_class];

  result = 1.0;
  if (!a5)
  {
    return v10;
  }

  return result;
}

- (double)dimmingAlphaForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v12.receiver = self;
  v12.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  v6 = a4;
  [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v12 dimmingAlphaForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  LODWORD(a3) = [(SBAppLayout *)self->_appLayoutBeingReplaced isEqual:v6, v12.receiver, v12.super_class];

  if (a3)
  {
    v9 = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self medusaSettings];
    [v9 defaultDimmingOpacity];
    v8 = v10;
  }

  return v8;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v9.receiver = self;
  v9.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  LOBYTE(v7) = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v9 isLayoutRoleBlurred:a3 inAppLayout:v6];
  if ([(SBCenterWindowToExistingSplitViewSwitcherModifier *)self _wasPreviousCenterAppLayout:v6 layoutRole:a3])
  {
    v7 = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self isLayoutRoleContentReady:a3 inAppLayout:v6]^ 1;
  }

  return v7;
}

- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v13.receiver = self;
  v13.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  v6 = a4;
  [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v13 blurDelayForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  LODWORD(a3) = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self _wasPreviousCenterAppLayout:v6 layoutRole:a3, v13.receiver, v13.super_class];

  if (a3)
  {
    v9 = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self switcherSettings];
    v10 = [v9 animationSettings];
    [v10 resizeBlurDelay];
    v8 = v11;
  }

  return v8;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  v6 = a4;
  v7 = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v9 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  LOBYTE(a3) = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self _wasPreviousCenterAppLayout:v6 layoutRole:a3, v9.receiver, v9.super_class];

  return (a3 | v7) & 1;
}

- (id)topMostLayoutRolesForAppLayout:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBCenterWindowToExistingSplitViewSwitcherModifier;
  v4 = a3;
  v5 = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)&v11 topMostLayoutRolesForAppLayout:v4];
  v6 = [(SBCenterWindowToExistingSplitViewSwitcherModifier *)self _wasPreviousCenterAppLayout:v4 layoutRole:self->_layoutRoleBeingReplaced, v11.receiver, v11.super_class];

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

- (BOOL)_wasPreviousCenterAppLayout:(id)a3 layoutRole:(int64_t)a4
{
  fromAppLayout = self->_fromAppLayout;
  v7 = a3;
  v8 = [(SBAppLayout *)fromAppLayout itemForLayoutRole:4];
  v9 = [v7 itemForLayoutRole:self->_layoutRoleBeingReplaced];

  if ([(SBDisplayItem *)v8 isEqualToItem:v9])
  {
    v10 = self->_layoutRoleBeingReplaced == a4;
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