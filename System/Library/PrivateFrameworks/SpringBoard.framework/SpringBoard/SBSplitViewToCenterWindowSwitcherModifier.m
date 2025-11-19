@interface SBSplitViewToCenterWindowSwitcherModifier
- (BOOL)_isItemBeingMovedToCenter:(id)a3;
- (BOOL)_isItemBeingResized:(id)a3;
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (SBSplitViewToCenterWindowSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5;
- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)handleSceneReadyEvent:(id)a3;
@end

@implementation SBSplitViewToCenterWindowSwitcherModifier

- (SBSplitViewToCenterWindowSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5
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
    [SBSplitViewToCenterWindowSwitcherModifier initWithTransitionID:a2 fromAppLayout:self toAppLayout:?];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [SBSplitViewToCenterWindowSwitcherModifier initWithTransitionID:a2 fromAppLayout:self toAppLayout:?];
LABEL_3:
  v20.receiver = self;
  v20.super_class = SBSplitViewToCenterWindowSwitcherModifier;
  v13 = [(SBTransitionSwitcherModifier *)&v20 initWithTransitionID:v9];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fromAppLayout, a4);
    objc_storeStrong(&v14->_toAppLayout, a5);
    fromAppLayout = v14->_fromAppLayout;
    v16 = [(SBAppLayout *)v14->_toAppLayout itemForLayoutRole:4];
    v14->_layoutRoleBeingMoved = [(SBAppLayout *)fromAppLayout layoutRoleForItem:v16];

    layoutRoleBeingMoved = v14->_layoutRoleBeingMoved;
    if (!layoutRoleBeingMoved)
    {
      [(SBSplitViewToCenterWindowSwitcherModifier *)a2 initWithTransitionID:v14 fromAppLayout:&v14->_layoutRoleBeingMoved toAppLayout:&v21];
      layoutRoleBeingMoved = v21;
    }

    if (layoutRoleBeingMoved == 1)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    v14->_layoutRoleBeingResized = v18;
  }

  return v14;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBSplitViewToCenterWindowSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:a3];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = SBSplitViewToCenterWindowSwitcherModifier;
  LOBYTE(v7) = [(SBSplitViewToCenterWindowSwitcherModifier *)&v10 isLayoutRoleBlurred:a3 inAppLayout:v6];
  v8 = [v6 itemForLayoutRole:a3];
  if ([(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingMovedToCenter:v8]|| [(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingResized:v8])
  {
    v7 = [(SBSplitViewToCenterWindowSwitcherModifier *)self isLayoutRoleContentReady:a3 inAppLayout:v6]^ 1;
  }

  return v7;
}

- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v14.receiver = self;
  v14.super_class = SBSplitViewToCenterWindowSwitcherModifier;
  v6 = a4;
  [(SBSplitViewToCenterWindowSwitcherModifier *)&v14 blurDelayForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  v9 = [v6 itemForLayoutRole:{a3, v14.receiver, v14.super_class}];

  if ([(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingMovedToCenter:v9]|| [(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingResized:v9])
  {
    v10 = [(SBSplitViewToCenterWindowSwitcherModifier *)self switcherSettings];
    v11 = [v10 animationSettings];
    [v11 resizeBlurDelay];
    v8 = v12;
  }

  return v8;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v10.receiver = self;
  v10.super_class = SBSplitViewToCenterWindowSwitcherModifier;
  v6 = a4;
  v7 = [(SBSplitViewToCenterWindowSwitcherModifier *)&v10 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  v8 = [v6 itemForLayoutRole:{a3, v10.receiver, v10.super_class}];

  if ([(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingMovedToCenter:v8]|| [(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingResized:v8])
  {
    v7 = 1;
  }

  return v7;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)a3
{
  v4 = a3;
  v5 = [(SBAppLayout *)self->_fromAppLayout itemForLayoutRole:self->_layoutRoleBeingResized];
  v6 = [v4 containsItem:v5];

  if (v6)
  {
    v7 = SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBSplitViewToCenterWindowSwitcherModifier;
    v7 = [(SBTransitionSwitcherModifier *)&v10 asyncRenderingAttributesForAppLayout:v4];
  }

  v8 = v7;

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withCornerRadii:(UIRectCornerRadii)a5
{
  topRight = a5.topRight;
  bottomRight = a5.bottomRight;
  bottomLeft = a5.bottomLeft;
  topLeft = a5.topLeft;
  v31.receiver = self;
  v31.super_class = SBSplitViewToCenterWindowSwitcherModifier;
  v11 = a4;
  [(SBSplitViewToCenterWindowSwitcherModifier *)&v31 cornerRadiiForLayoutRole:a3 inAppLayout:v11 withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(SBSplitViewToCenterWindowSwitcherModifier *)self displayCornerRadius];
  v20 = [v11 itemForLayoutRole:a3];

  if ([(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingMovedToCenter:v20])
  {
    toAppLayout = self->_toAppLayout;
    v30.receiver = self;
    v30.super_class = SBSplitViewToCenterWindowSwitcherModifier;
    [(SBSplitViewToCenterWindowSwitcherModifier *)&v30 cornerRadiiForLayoutRole:4 inAppLayout:toAppLayout withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
LABEL_5:
    v13 = v22;
    v15 = v23;
    v17 = v24;
    v19 = v25;
    goto LABEL_6;
  }

  if ([(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingResized:v20])
  {
    SBRectCornerRadiiForRadius();
    goto LABEL_5;
  }

LABEL_6:

  v26 = v13;
  v27 = v15;
  v28 = v17;
  v29 = v19;
  result.topRight = v29;
  result.bottomRight = v28;
  result.bottomLeft = v27;
  result.topLeft = v26;
  return result;
}

- (BOOL)_isItemBeingMovedToCenter:(id)a3
{
  fromAppLayout = self->_fromAppLayout;
  layoutRoleBeingMoved = self->_layoutRoleBeingMoved;
  v5 = a3;
  v6 = [(SBAppLayout *)fromAppLayout itemForLayoutRole:layoutRoleBeingMoved];
  LOBYTE(layoutRoleBeingMoved) = [(SBDisplayItem *)v6 isEqualToItem:v5];

  return layoutRoleBeingMoved;
}

- (BOOL)_isItemBeingResized:(id)a3
{
  fromAppLayout = self->_fromAppLayout;
  layoutRoleBeingResized = self->_layoutRoleBeingResized;
  v5 = a3;
  v6 = [(SBAppLayout *)fromAppLayout itemForLayoutRole:layoutRoleBeingResized];
  LOBYTE(layoutRoleBeingResized) = [(SBDisplayItem *)v6 isEqualToItem:v5];

  return layoutRoleBeingResized;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSplitViewToCenterWindowSwitcherModifier.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSplitViewToCenterWindowSwitcherModifier.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

- (void)initWithTransitionID:(void *)a3 fromAppLayout:(void *)a4 toAppLayout:.cold.3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBSplitViewToCenterWindowSwitcherModifier.m" lineNumber:37 description:@"Couldn't find the new center item in the from appLayout"];

  *a4 = *a3;
}

@end