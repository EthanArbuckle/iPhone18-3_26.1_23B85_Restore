@interface SBSceneResizeTransitionSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBSceneResizeTransitionSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout minimumCardWithForDismissal:(double)dismissal;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event;
- (id)handleSceneReadyEvent:(id)event;
- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout;
@end

@implementation SBSceneResizeTransitionSwitcherModifier

- (SBSceneResizeTransitionSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout minimumCardWithForDismissal:(double)dismissal
{
  dCopy = d;
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v14 = appLayoutCopy;
  if (!layoutCopy || !appLayoutCopy)
  {
    [SBSceneResizeTransitionSwitcherModifier initWithTransitionID:a2 fromAppLayout:self toAppLayout:? minimumCardWithForDismissal:?];
  }

  if (([layoutCopy isSplitConfiguration] & 1) == 0)
  {
    [SBSceneResizeTransitionSwitcherModifier initWithTransitionID:a2 fromAppLayout:self toAppLayout:? minimumCardWithForDismissal:?];
  }

  v27.receiver = self;
  v27.super_class = SBSceneResizeTransitionSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v27 initWithTransitionID:dCopy];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromAppLayout, layout);
    objc_storeStrong(&v16->_toAppLayout, appLayout);
    v16->_minimumCardWithForDismissal = dismissal;
    fromAppLayout = v16->_fromAppLayout;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __118__SBSceneResizeTransitionSwitcherModifier_initWithTransitionID_fromAppLayout_toAppLayout_minimumCardWithForDismissal___block_invoke;
    v25[3] = &unk_2783A8C90;
    v18 = v16;
    v26 = v18;
    v19 = [(SBAppLayout *)fromAppLayout appLayoutWithItemsPassingTest:v25];
    discardedAppLayout = v18->_discardedAppLayout;
    v18->_discardedAppLayout = v19;

    v21 = v18->_discardedAppLayout;
    if (v21)
    {
      v22 = v16->_fromAppLayout;
      v23 = [(SBAppLayout *)v21 itemForLayoutRole:1];
      v18->_discardedLayoutRole = [(SBAppLayout *)v22 layoutRoleForItem:v23];
    }

    else
    {
      v18->_discardedLayoutRole = 0;
    }
  }

  return v16;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v9.receiver = self;
  v9.super_class = SBSceneResizeTransitionSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v9 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  medusaSettings = [(SBSceneResizeTransitionSwitcherModifier *)self medusaSettings];
  medusaAnimationSettings = [medusaSettings medusaAnimationSettings];

  [v5 setLayoutSettings:medusaAnimationSettings];
  [v5 setPositionSettings:medusaAnimationSettings];
  [v5 setScaleSettings:medusaAnimationSettings];
  [v5 setOpacitySettings:medusaAnimationSettings];
  [v5 setCornerRadiusSettings:medusaAnimationSettings];
  [v5 setUpdateMode:3];

  return v5;
}

- (id)handleSceneReadyEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBSceneResizeTransitionSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:event];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = SBSceneResizeTransitionSwitcherModifier;
  v7 = [(SBSceneResizeTransitionSwitcherModifier *)&v9 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  if ([(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:layoutCopy]|| [(SBAppLayout *)self->_discardedAppLayout isOrContainsAppLayout:layoutCopy])
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  v7 = [layoutCopy leafAppLayoutForRole:blurred];
  if (![(SBAppLayout *)self->_fromAppLayout isOrContainsAppLayout:v7]&& ![(SBAppLayout *)self->_toAppLayout isOrContainsAppLayout:v7])
  {
    v14.receiver = self;
    v14.super_class = SBSceneResizeTransitionSwitcherModifier;
    LOBYTE(self) = [(SBSceneResizeTransitionSwitcherModifier *)&v14 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
    goto LABEL_18;
  }

  fromAppLayout = self->_fromAppLayout;
  if (fromAppLayout == self->_toAppLayout)
  {
    goto LABEL_15;
  }

  discardedAppLayout = self->_discardedAppLayout;
  if (discardedAppLayout)
  {
    v10 = v7 == discardedAppLayout;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    LOBYTE(self) = 1;
    goto LABEL_18;
  }

  if (discardedAppLayout)
  {
    v11 = v7 == discardedAppLayout;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if ([(SBAppLayout *)fromAppLayout isOrContainsAppLayout:v7])
    {
      v12 = [(SBSceneResizeTransitionSwitcherModifier *)self isLayoutRoleContentReady:1 inAppLayout:self->_fromAppLayout];
      LODWORD(self) = v12 & [(SBSceneResizeTransitionSwitcherModifier *)self isLayoutRoleContentReady:2 inAppLayout:self->_fromAppLayout]^ 1;
      goto LABEL_18;
    }

LABEL_15:
    LOBYTE(self) = 0;
    goto LABEL_18;
  }

  LODWORD(self) = [(SBSceneResizeTransitionSwitcherModifier *)self isLayoutRoleContentReady:1 inAppLayout:v7]^ 1;
LABEL_18:

  return self;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  v14.receiver = self;
  v14.super_class = SBSceneResizeTransitionSwitcherModifier;
  layoutCopy = layout;
  [(SBSceneResizeTransitionSwitcherModifier *)&v14 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
  v10 = v9;
  LODWORD(index) = [layoutCopy isOrContainsAppLayout:{self->_discardedAppLayout, v14.receiver, v14.super_class}];

  if (index)
  {
    medusaSettings = [(SBSceneResizeTransitionSwitcherModifier *)self medusaSettings];
    [medusaSettings resizeAnimationDismissItemOpacity];
    v10 = v12;
  }

  return v10;
}

- (id)appLayoutsToEnsureExistForMainTransitionEvent:(id)event
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (self->_discardedAppLayout)
  {
    v5[0] = self->_discardedAppLayout;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v27.receiver = self;
  v27.super_class = SBSceneResizeTransitionSwitcherModifier;
  [(SBSceneResizeTransitionSwitcherModifier *)&v27 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  appLayouts = [(SBSceneResizeTransitionSwitcherModifier *)self appLayouts];
  v14 = [appLayouts objectAtIndex:index];

  if ([v14 isOrContainsAppLayout:self->_discardedAppLayout])
  {
    [(SBSceneResizeTransitionSwitcherModifier *)self switcherViewBounds];
    v16 = v15;
    [(SBSceneResizeTransitionSwitcherModifier *)self separatorViewWidth];
    v18 = v17 * 0.5;
    minimumCardWithForDismissal = self->_minimumCardWithForDismissal;
    SBRectWithSize();
    v10 = v20;
    v12 = v21;
    discardedLayoutRole = self->_discardedLayoutRole;
    if (discardedLayoutRole == 1)
    {
      if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
      {
        goto LABEL_7;
      }

      discardedLayoutRole = self->_discardedLayoutRole;
    }

    if (discardedLayoutRole != 2 || [*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1)
    {
      v6 = v16 + v18;
      goto LABEL_9;
    }

LABEL_7:
    v6 = -(v18 + minimumCardWithForDismissal);
LABEL_9:
    v8 = 0.0;
  }

  v23 = v6;
  v24 = v8;
  v25 = v10;
  v26 = v12;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v31.receiver = self;
  v31.super_class = SBSceneResizeTransitionSwitcherModifier;
  layoutCopy = layout;
  [(SBSceneResizeTransitionSwitcherModifier *)&v31 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [layoutCopy leafAppLayoutForRole:{role, v31.receiver, v31.super_class}];

  discardedAppLayout = self->_discardedAppLayout;
  if (discardedAppLayout)
  {
    v22 = v20 == discardedAppLayout;
  }

  else
  {
    v22 = 0;
  }

  if (v22)
  {
    SBRectWithSize();
    v13 = v23;
    v15 = v24;
    v17 = v25;
    v19 = v26;
  }

  v27 = v13;
  v28 = v15;
  v29 = v17;
  v30 = v19;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  [(SBSceneResizeTransitionSwitcherModifier *)self displayCornerRadius];

  SBRectCornerRadiiForRadius();
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (BOOL)shouldUseAnchorPointToPinLayoutRolesToSpace:(unint64_t)space
{
  appLayouts = [(SBSceneResizeTransitionSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:space];

  if (v6 == self->_toAppLayout)
  {
    v7 = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSceneResizeTransitionSwitcherModifier;
    v7 = [(SBSceneResizeTransitionSwitcherModifier *)&v9 shouldUseAnchorPointToPinLayoutRolesToSpace:space];
  }

  return v7;
}

- (id)resizeGrabberLayoutAttributesForAppLayout:(id)layout
{
  v13.receiver = self;
  v13.super_class = SBSceneResizeTransitionSwitcherModifier;
  v4 = [(SBSceneResizeTransitionSwitcherModifier *)&v13 resizeGrabberLayoutAttributesForAppLayout:layout];
  if (self->_discardedAppLayout)
  {
    isRTLEnabled = [(SBSceneResizeTransitionSwitcherModifier *)self isRTLEnabled];
    discardedLayoutRole = self->_discardedLayoutRole;
    v7 = (discardedLayoutRole != 1) | isRTLEnabled;
    v8 = ((discardedLayoutRole == 2) & isRTLEnabled) == 0;
    v9 = 8;
    if (!v8)
    {
      v9 = 2;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = 2;
    }

    [v4 setEdge:v10];
    v11 = [(SBAppLayout *)self->_toAppLayout leafAppLayoutForRole:1];
    [v4 setLeafAppLayout:v11];
  }

  return v4;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:minimumCardWithForDismissal:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneResizeTransitionSwitcherModifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout && toAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:minimumCardWithForDismissal:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSceneResizeTransitionSwitcherModifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"[fromAppLayout isSplitConfiguration]"}];
}

@end