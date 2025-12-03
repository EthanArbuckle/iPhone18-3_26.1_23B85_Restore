@interface SBSplitViewToCenterWindowSwitcherModifier
- (BOOL)_isItemBeingMovedToCenter:(id)center;
- (BOOL)_isItemBeingResized:(id)resized;
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (SBSplitViewToCenterWindowSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout;
- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout;
- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii;
- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)handleSceneReadyEvent:(id)event;
@end

@implementation SBSplitViewToCenterWindowSwitcherModifier

- (SBSplitViewToCenterWindowSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout
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
  v13 = [(SBTransitionSwitcherModifier *)&v20 initWithTransitionID:dCopy];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fromAppLayout, layout);
    objc_storeStrong(&v14->_toAppLayout, appLayout);
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

- (id)handleSceneReadyEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBSplitViewToCenterWindowSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:event];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  v10.receiver = self;
  v10.super_class = SBSplitViewToCenterWindowSwitcherModifier;
  LOBYTE(v7) = [(SBSplitViewToCenterWindowSwitcherModifier *)&v10 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
  v8 = [layoutCopy itemForLayoutRole:blurred];
  if ([(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingMovedToCenter:v8]|| [(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingResized:v8])
  {
    v7 = [(SBSplitViewToCenterWindowSwitcherModifier *)self isLayoutRoleContentReady:blurred inAppLayout:layoutCopy]^ 1;
  }

  return v7;
}

- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v14.receiver = self;
  v14.super_class = SBSplitViewToCenterWindowSwitcherModifier;
  layoutCopy = layout;
  [(SBSplitViewToCenterWindowSwitcherModifier *)&v14 blurDelayForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  v9 = [layoutCopy itemForLayoutRole:{role, v14.receiver, v14.super_class}];

  if ([(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingMovedToCenter:v9]|| [(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingResized:v9])
  {
    switcherSettings = [(SBSplitViewToCenterWindowSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings resizeBlurDelay];
    v8 = v12;
  }

  return v8;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  v10.receiver = self;
  v10.super_class = SBSplitViewToCenterWindowSwitcherModifier;
  layoutCopy = layout;
  v7 = [(SBSplitViewToCenterWindowSwitcherModifier *)&v10 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  v8 = [layoutCopy itemForLayoutRole:{scene, v10.receiver, v10.super_class}];

  if ([(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingMovedToCenter:v8]|| [(SBSplitViewToCenterWindowSwitcherModifier *)self _isItemBeingResized:v8])
  {
    v7 = 1;
  }

  return v7;
}

- (SBSwitcherAsyncRenderingAttributes)asyncRenderingAttributesForAppLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [(SBAppLayout *)self->_fromAppLayout itemForLayoutRole:self->_layoutRoleBeingResized];
  v6 = [layoutCopy containsItem:v5];

  if (v6)
  {
    v7 = SBSwitcherAsyncRenderingAttributesMake(0, 0);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBSplitViewToCenterWindowSwitcherModifier;
    v7 = [(SBTransitionSwitcherModifier *)&v10 asyncRenderingAttributesForAppLayout:layoutCopy];
  }

  v8 = v7;

  return v8;
}

- (UIRectCornerRadii)cornerRadiiForLayoutRole:(int64_t)role inAppLayout:(id)layout withCornerRadii:(UIRectCornerRadii)radii
{
  topRight = radii.topRight;
  bottomRight = radii.bottomRight;
  bottomLeft = radii.bottomLeft;
  topLeft = radii.topLeft;
  v31.receiver = self;
  v31.super_class = SBSplitViewToCenterWindowSwitcherModifier;
  layoutCopy = layout;
  [(SBSplitViewToCenterWindowSwitcherModifier *)&v31 cornerRadiiForLayoutRole:role inAppLayout:layoutCopy withCornerRadii:topLeft, bottomLeft, bottomRight, topRight];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  [(SBSplitViewToCenterWindowSwitcherModifier *)self displayCornerRadius];
  v20 = [layoutCopy itemForLayoutRole:role];

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

- (BOOL)_isItemBeingMovedToCenter:(id)center
{
  fromAppLayout = self->_fromAppLayout;
  layoutRoleBeingMoved = self->_layoutRoleBeingMoved;
  centerCopy = center;
  v6 = [(SBAppLayout *)fromAppLayout itemForLayoutRole:layoutRoleBeingMoved];
  LOBYTE(layoutRoleBeingMoved) = [(SBDisplayItem *)v6 isEqualToItem:centerCopy];

  return layoutRoleBeingMoved;
}

- (BOOL)_isItemBeingResized:(id)resized
{
  fromAppLayout = self->_fromAppLayout;
  layoutRoleBeingResized = self->_layoutRoleBeingResized;
  resizedCopy = resized;
  v6 = [(SBAppLayout *)fromAppLayout itemForLayoutRole:layoutRoleBeingResized];
  LOBYTE(layoutRoleBeingResized) = [(SBDisplayItem *)v6 isEqualToItem:resizedCopy];

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