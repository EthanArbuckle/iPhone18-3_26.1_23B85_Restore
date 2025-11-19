@interface SBSplitRemovalSwitcherModifier
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3;
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (CGRect)frameForIndex:(unint64_t)a3;
- (CGRect)frameForLayoutRole:(int64_t)layoutRoleToKeep inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (SBSplitRemovalSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 layoutRoleToRemove:(int64_t)a6 animationStyle:(int64_t)a7;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (id)adjustedAppLayoutsForAppLayouts:(id)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
@end

@implementation SBSplitRemovalSwitcherModifier

- (SBSplitRemovalSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5 layoutRoleToRemove:(int64_t)a6 animationStyle:(int64_t)a7
{
  v13 = a4;
  v14 = a5;
  v23.receiver = self;
  v23.super_class = SBSplitRemovalSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v23 initWithTransitionID:a3];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromAppLayout, a4);
    objc_storeStrong(&v16->_toAppLayout, a5);
    v17 = 1;
    if (a6 == 1)
    {
      v17 = 2;
    }

    v16->_layoutRoleToKeep = v17;
    v16->_layoutRoleToRemove = a6;
    v16->_animationStyle = a7;
    v18 = [v13 leafAppLayoutForRole:v16->_layoutRoleToKeep];
    remainingAppLayout = v16->_remainingAppLayout;
    v16->_remainingAppLayout = v18;

    v20 = [v13 leafAppLayoutForRole:v16->_layoutRoleToRemove];
    removedAppLayout = v16->_removedAppLayout;
    v16->_removedAppLayout = v20;

    v16->_animationPhase = 1;
  }

  return v16;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBSplitRemovalSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:a3];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBSplitRemovalSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  LODWORD(v4) = [v6 isEqualToString:@"SBSplitRemovalSwitcherModifierTimerEventReason"];
  if (v4)
  {
    self->_animationPhase = 2;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBSplitRemovalSwitcherModifier;
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v4 = SBAppendSwitcherModifierResponse(v3, v2);

  return v4;
}

- (id)transitionWillUpdate
{
  v19.receiver = self;
  v19.super_class = SBSplitRemovalSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v19 transitionWillUpdate];
  if (self->_animationPhase == 1)
  {
    animationStyle = self->_animationStyle;
    v5 = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
    v6 = v5;
    if (animationStyle == 2)
    {
      v7 = [v5 medusaCommitIntentAnimationSettings];
      [v7 toBeRemovedSlideOutAnimationDelay];
    }

    else
    {
      v7 = [v5 medusaDeleteIntentAnimationSettings];
      [v7 toBeMadeFullscreenFrameAnimationDelay];
    }

    v9 = v8;
    UIAnimationDragCoefficient();
    v11 = v10;

    objc_initWeak(&location, self);
    v12 = [SBTimerEventSwitcherEventResponse alloc];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__SBSplitRemovalSwitcherModifier_transitionWillUpdate__block_invoke;
    v16[3] = &unk_2783AD4A0;
    objc_copyWeak(&v17, &location);
    v13 = [(SBTimerEventSwitcherEventResponse *)v12 initWithDelay:v16 validator:@"SBSplitRemovalSwitcherModifierTimerEventReason" reason:v9 * v11];
    v14 = SBAppendSwitcherModifierResponse(v13, v3);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    v3 = v14;
  }

  return v3;
}

BOOL __54__SBSplitRemovalSwitcherModifier_transitionWillUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)a3
{
  v7.receiver = self;
  v7.super_class = SBSplitRemovalSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v7 adjustedAppLayoutsForAppLayouts:a3];
  v5 = [v4 mutableCopy];

  if (([v5 containsObject:self->_remainingAppLayout] & 1) == 0)
  {
    [v5 addObject:self->_remainingAppLayout];
  }

  if (([v5 containsObject:self->_removedAppLayout] & 1) == 0)
  {
    [v5 addObject:self->_removedAppLayout];
  }

  return v5;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SBSplitRemovalSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v18 animationAttributesForLayoutElement:v4];
  if ([v4 isEqual:self->_remainingAppLayout])
  {
    v6 = [v5 mutableCopy];
    if (self->_animationStyle != 2)
    {
      v7 = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
      v8 = [v7 medusaDeleteIntentAnimationSettings];

      v9 = [v8 toBeMadeFullscreenFrameAnimationSettings];
      [v6 setLayoutSettings:v9];
    }
  }

  if ([v4 isEqual:self->_removedAppLayout])
  {
    v10 = [v5 mutableCopy];
    animationStyle = self->_animationStyle;
    v12 = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
    v13 = v12;
    if (animationStyle == 2)
    {
      v14 = [v12 medusaCommitIntentAnimationSettings];

      if (self->_animationPhase != 2)
      {
LABEL_11:

        goto LABEL_12;
      }

      v15 = [v14 toBeRemovedSlideOutAnimationSettings];
      [v10 setLayoutSettings:v15];
    }

    else
    {
      v14 = [v12 medusaDeleteIntentAnimationSettings];

      v16 = [v14 toBeRemovedScaleAnimationSettings];
      [v10 setScaleSettings:v16];

      v15 = [v14 toBeRemovedAlphaAnimationSettings];
      [v10 setOpacitySettings:v15];
    }

    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  v5 = [(SBSplitRemovalSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if ((([v6 isEqual:self->_remainingAppLayout] & 1) != 0 || objc_msgSend(v6, "isEqual:", self->_removedAppLayout)) && -[SBTransitionSwitcherModifier isUpdatingLayout](self, "isUpdatingLayout"))
  {
    [(SBSplitRemovalSwitcherModifier *)self displayCornerRadius];
    SBRectCornerRadiiForRadius();
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBSplitRemovalSwitcherModifier;
    [(SBSplitRemovalSwitcherModifier *)&v19 cornerRadiiForIndex:a3];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.topRight = v18;
  result.bottomRight = v17;
  result.bottomLeft = v16;
  result.topLeft = v15;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBSplitRemovalSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (([v6 isEqual:self->_remainingAppLayout] & 1) != 0 || objc_msgSend(v6, "isEqual:", self->_removedAppLayout))
  {
    [(SBSplitRemovalSwitcherModifier *)self containerViewBounds];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBSplitRemovalSwitcherModifier;
    [(SBSplitRemovalSwitcherModifier *)&v19 frameForIndex:a3];
  }

  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)frameForLayoutRole:(int64_t)layoutRoleToKeep inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  if ([v11 isEqual:self->_remainingAppLayout])
  {
    if (self->_animationPhase == 2)
    {
      v12 = 176;
    }

    else
    {
      layoutRoleToKeep = self->_layoutRoleToKeep;
      v12 = 168;
    }

    v32 = *(&self->super.super.super.super.super.isa + v12);
    [(SBSplitRemovalSwitcherModifier *)self containerViewBounds];
    [(SBSplitRemovalSwitcherModifier *)self preferredFrameForLayoutRole:layoutRoleToKeep inAppLayout:v32 bounds:[(SBSplitRemovalSwitcherModifier *)self switcherInterfaceOrientation] interfaceOrientation:v33, v34, v35, v36];
    goto LABEL_11;
  }

  if (![v11 isEqual:self->_removedAppLayout])
  {
    v45.receiver = self;
    v45.super_class = SBSplitRemovalSwitcherModifier;
    [(SBSplitRemovalSwitcherModifier *)&v45 frameForLayoutRole:layoutRoleToKeep inAppLayout:v11 withBounds:x, y, width, height];
LABEL_11:
    v20 = v37;
    v22 = v38;
    v24 = v39;
    v26 = v40;
    goto LABEL_12;
  }

  layoutRoleToRemove = self->_layoutRoleToRemove;
  fromAppLayout = self->_fromAppLayout;
  [(SBSplitRemovalSwitcherModifier *)self containerViewBounds];
  [(SBSplitRemovalSwitcherModifier *)self preferredFrameForLayoutRole:layoutRoleToRemove inAppLayout:fromAppLayout bounds:[(SBSplitRemovalSwitcherModifier *)self switcherInterfaceOrientation] interfaceOrientation:v15, v16, v17, v18];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  if (self->_animationPhase == 2 && self->_animationStyle == 2)
  {
    [(SBSplitRemovalSwitcherModifier *)self containerViewBounds];
    v27 = CGRectGetHeight(v46);
    v28 = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
    v29 = [v28 medusaCommitIntentAnimationSettings];
    [v29 toBeRemovedSlideOutHeightOffsetMultiplier];
    v31 = v27 * v30;

    v22 = v22 - v31;
  }

LABEL_12:

  v41 = v20;
  v42 = v22;
  v43 = v24;
  v44 = v26;
  result.size.height = v44;
  result.size.width = v43;
  result.origin.y = v42;
  result.origin.x = v41;
  return result;
}

- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)a3
{
  v5 = [(SBSplitRemovalSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (([v6 isEqual:self->_remainingAppLayout] & 1) != 0 || objc_msgSend(v6, "isEqual:", self->_removedAppLayout))
  {
    v7 = [(SBTransitionSwitcherModifier *)self isPreparingLayout];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBSplitRemovalSwitcherModifier;
    v7 = [(SBSplitRemovalSwitcherModifier *)&v10 isContentStatusBarVisibleForIndex:a3];
  }

  v8 = v7;

  return v8;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 isEqual:self->_remainingAppLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSplitRemovalSwitcherModifier;
    v7 = [(SBSplitRemovalSwitcherModifier *)&v9 isLayoutRoleBlurred:a3 inAppLayout:v6];
  }

  return v7;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 isEqual:self->_remainingAppLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSplitRemovalSwitcherModifier;
    v7 = [(SBSplitRemovalSwitcherModifier *)&v9 isLayoutRoleMatchMovedToScene:a3 inAppLayout:v6];
  }

  return v7;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = 1.0;
  if (([v8 isEqual:self->_remainingAppLayout] & 1) == 0)
  {
    if ([v8 isEqual:self->_removedAppLayout])
    {
      if (self->_animationStyle != 2 && ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
      {
        v10 = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
        v11 = [v10 medusaDeleteIntentAnimationSettings];
        [v11 toBeRemovedFinalAlpha];
        v9 = v12;
      }
    }

    else
    {
      v15.receiver = self;
      v15.super_class = SBSplitRemovalSwitcherModifier;
      [(SBSplitRemovalSwitcherModifier *)&v15 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
      v9 = v13;
    }
  }

  return v9;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if ([v6 isEqual:self->_removedAppLayout] && -[SBTransitionSwitcherModifier isUpdatingLayout](self, "isUpdatingLayout"))
  {
    v7 = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
    v8 = [v7 medusaDeleteIntentAnimationSettings];
    [v8 toBeRemovedFinalScale];
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBSplitRemovalSwitcherModifier;
    [(SBSplitRemovalSwitcherModifier *)&v13 scaleForLayoutRole:a3 inAppLayout:v6];
    v10 = v11;
  }

  return v10;
}

- (id)topMostLayoutElements
{
  v9.receiver = self;
  v9.super_class = SBSplitRemovalSwitcherModifier;
  v3 = [(SBSplitRemovalSwitcherModifier *)&v9 topMostLayoutElements];
  v4 = [v3 mutableCopy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v7 = v6;

  [v7 removeObject:self->_remainingAppLayout];
  [v7 removeObject:self->_removedAppLayout];
  [v7 insertObject:self->_removedAppLayout atIndex:0];
  [v7 insertObject:self->_remainingAppLayout atIndex:0];

  return v7;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBSplitRemovalSwitcherModifier;
  v3 = [(SBSplitRemovalSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 mutableCopy];

  [v4 removeObject:self->_toAppLayout];
  [v4 addObject:self->_remainingAppLayout];
  [v4 addObject:self->_removedAppLayout];

  return v4;
}

@end