@interface SBSplitRemovalSwitcherModifier
- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)index;
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (CGRect)frameForLayoutRole:(int64_t)layoutRoleToKeep inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (SBSplitRemovalSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout layoutRoleToRemove:(int64_t)remove animationStyle:(int64_t)style;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (id)adjustedAppLayoutsForAppLayouts:(id)layouts;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleSceneReadyEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
@end

@implementation SBSplitRemovalSwitcherModifier

- (SBSplitRemovalSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout layoutRoleToRemove:(int64_t)remove animationStyle:(int64_t)style
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v23.receiver = self;
  v23.super_class = SBSplitRemovalSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v23 initWithTransitionID:d];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fromAppLayout, layout);
    objc_storeStrong(&v16->_toAppLayout, appLayout);
    v17 = 1;
    if (remove == 1)
    {
      v17 = 2;
    }

    v16->_layoutRoleToKeep = v17;
    v16->_layoutRoleToRemove = remove;
    v16->_animationStyle = style;
    v18 = [layoutCopy leafAppLayoutForRole:v16->_layoutRoleToKeep];
    remainingAppLayout = v16->_remainingAppLayout;
    v16->_remainingAppLayout = v18;

    v20 = [layoutCopy leafAppLayoutForRole:v16->_layoutRoleToRemove];
    removedAppLayout = v16->_removedAppLayout;
    v16->_removedAppLayout = v20;

    v16->_animationPhase = 1;
  }

  return v16;
}

- (id)handleSceneReadyEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = SBSplitRemovalSwitcherModifier;
  v3 = [(SBSwitcherModifier *)&v7 handleSceneReadyEvent:event];
  v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
  v5 = SBAppendSwitcherModifierResponse(v4, v3);

  return v5;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBSplitRemovalSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:@"SBSplitRemovalSwitcherModifierTimerEventReason"];
  if (eventCopy)
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
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v4 = SBAppendSwitcherModifierResponse(v3, transitionWillBegin);

  return v4;
}

- (id)transitionWillUpdate
{
  v19.receiver = self;
  v19.super_class = SBSplitRemovalSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v19 transitionWillUpdate];
  if (self->_animationPhase == 1)
  {
    animationStyle = self->_animationStyle;
    entityRemovalSettings = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
    v6 = entityRemovalSettings;
    if (animationStyle == 2)
    {
      medusaCommitIntentAnimationSettings = [entityRemovalSettings medusaCommitIntentAnimationSettings];
      [medusaCommitIntentAnimationSettings toBeRemovedSlideOutAnimationDelay];
    }

    else
    {
      medusaCommitIntentAnimationSettings = [entityRemovalSettings medusaDeleteIntentAnimationSettings];
      [medusaCommitIntentAnimationSettings toBeMadeFullscreenFrameAnimationDelay];
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
    v14 = SBAppendSwitcherModifierResponse(v13, transitionWillUpdate);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    transitionWillUpdate = v14;
  }

  return transitionWillUpdate;
}

BOOL __54__SBSplitRemovalSwitcherModifier_transitionWillUpdate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (id)adjustedAppLayoutsForAppLayouts:(id)layouts
{
  v7.receiver = self;
  v7.super_class = SBSplitRemovalSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v7 adjustedAppLayoutsForAppLayouts:layouts];
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

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v18.receiver = self;
  v18.super_class = SBSplitRemovalSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v18 animationAttributesForLayoutElement:elementCopy];
  if ([elementCopy isEqual:self->_remainingAppLayout])
  {
    v6 = [v5 mutableCopy];
    if (self->_animationStyle != 2)
    {
      entityRemovalSettings = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
      medusaDeleteIntentAnimationSettings = [entityRemovalSettings medusaDeleteIntentAnimationSettings];

      toBeMadeFullscreenFrameAnimationSettings = [medusaDeleteIntentAnimationSettings toBeMadeFullscreenFrameAnimationSettings];
      [v6 setLayoutSettings:toBeMadeFullscreenFrameAnimationSettings];
    }
  }

  if ([elementCopy isEqual:self->_removedAppLayout])
  {
    v10 = [v5 mutableCopy];
    animationStyle = self->_animationStyle;
    entityRemovalSettings2 = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
    v13 = entityRemovalSettings2;
    if (animationStyle == 2)
    {
      medusaCommitIntentAnimationSettings = [entityRemovalSettings2 medusaCommitIntentAnimationSettings];

      if (self->_animationPhase != 2)
      {
LABEL_11:

        goto LABEL_12;
      }

      toBeRemovedSlideOutAnimationSettings = [medusaCommitIntentAnimationSettings toBeRemovedSlideOutAnimationSettings];
      [v10 setLayoutSettings:toBeRemovedSlideOutAnimationSettings];
    }

    else
    {
      medusaCommitIntentAnimationSettings = [entityRemovalSettings2 medusaDeleteIntentAnimationSettings];

      toBeRemovedScaleAnimationSettings = [medusaCommitIntentAnimationSettings toBeRemovedScaleAnimationSettings];
      [v10 setScaleSettings:toBeRemovedScaleAnimationSettings];

      toBeRemovedSlideOutAnimationSettings = [medusaCommitIntentAnimationSettings toBeRemovedAlphaAnimationSettings];
      [v10 setOpacitySettings:toBeRemovedSlideOutAnimationSettings];
    }

    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  appLayouts = [(SBSplitRemovalSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if ((([v6 isEqual:self->_remainingAppLayout] & 1) != 0 || objc_msgSend(v6, "isEqual:", self->_removedAppLayout)) && -[SBTransitionSwitcherModifier isUpdatingLayout](self, "isUpdatingLayout"))
  {
    [(SBSplitRemovalSwitcherModifier *)self displayCornerRadius];
    SBRectCornerRadiiForRadius();
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBSplitRemovalSwitcherModifier;
    [(SBSplitRemovalSwitcherModifier *)&v19 cornerRadiiForIndex:index];
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

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBSplitRemovalSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (([v6 isEqual:self->_remainingAppLayout] & 1) != 0 || objc_msgSend(v6, "isEqual:", self->_removedAppLayout))
  {
    [(SBSplitRemovalSwitcherModifier *)self containerViewBounds];
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SBSplitRemovalSwitcherModifier;
    [(SBSplitRemovalSwitcherModifier *)&v19 frameForIndex:index];
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

- (CGRect)frameForLayoutRole:(int64_t)layoutRoleToKeep inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_remainingAppLayout])
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

  if (![layoutCopy isEqual:self->_removedAppLayout])
  {
    v45.receiver = self;
    v45.super_class = SBSplitRemovalSwitcherModifier;
    [(SBSplitRemovalSwitcherModifier *)&v45 frameForLayoutRole:layoutRoleToKeep inAppLayout:layoutCopy withBounds:x, y, width, height];
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
    entityRemovalSettings = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
    medusaCommitIntentAnimationSettings = [entityRemovalSettings medusaCommitIntentAnimationSettings];
    [medusaCommitIntentAnimationSettings toBeRemovedSlideOutHeightOffsetMultiplier];
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

- (BOOL)isContentStatusBarVisibleForIndex:(unint64_t)index
{
  appLayouts = [(SBSplitRemovalSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (([v6 isEqual:self->_remainingAppLayout] & 1) != 0 || objc_msgSend(v6, "isEqual:", self->_removedAppLayout))
  {
    isPreparingLayout = [(SBTransitionSwitcherModifier *)self isPreparingLayout];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBSplitRemovalSwitcherModifier;
    isPreparingLayout = [(SBSplitRemovalSwitcherModifier *)&v10 isContentStatusBarVisibleForIndex:index];
  }

  v8 = isPreparingLayout;

  return v8;
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_remainingAppLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSplitRemovalSwitcherModifier;
    v7 = [(SBSplitRemovalSwitcherModifier *)&v9 isLayoutRoleBlurred:blurred inAppLayout:layoutCopy];
  }

  return v7;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_remainingAppLayout])
  {
    v7 = 1;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBSplitRemovalSwitcherModifier;
    v7 = [(SBSplitRemovalSwitcherModifier *)&v9 isLayoutRoleMatchMovedToScene:scene inAppLayout:layoutCopy];
  }

  return v7;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = 1.0;
  if (([layoutCopy isEqual:self->_remainingAppLayout] & 1) == 0)
  {
    if ([layoutCopy isEqual:self->_removedAppLayout])
    {
      if (self->_animationStyle != 2 && ![(SBTransitionSwitcherModifier *)self isPreparingLayout])
      {
        entityRemovalSettings = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
        medusaDeleteIntentAnimationSettings = [entityRemovalSettings medusaDeleteIntentAnimationSettings];
        [medusaDeleteIntentAnimationSettings toBeRemovedFinalAlpha];
        v9 = v12;
      }
    }

    else
    {
      v15.receiver = self;
      v15.super_class = SBSplitRemovalSwitcherModifier;
      [(SBSplitRemovalSwitcherModifier *)&v15 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
      v9 = v13;
    }
  }

  return v9;
}

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if ([layoutCopy isEqual:self->_removedAppLayout] && -[SBTransitionSwitcherModifier isUpdatingLayout](self, "isUpdatingLayout"))
  {
    entityRemovalSettings = [(SBSplitRemovalSwitcherModifier *)self entityRemovalSettings];
    medusaDeleteIntentAnimationSettings = [entityRemovalSettings medusaDeleteIntentAnimationSettings];
    [medusaDeleteIntentAnimationSettings toBeRemovedFinalScale];
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBSplitRemovalSwitcherModifier;
    [(SBSplitRemovalSwitcherModifier *)&v13 scaleForLayoutRole:role inAppLayout:layoutCopy];
    v10 = v11;
  }

  return v10;
}

- (id)topMostLayoutElements
{
  v9.receiver = self;
  v9.super_class = SBSplitRemovalSwitcherModifier;
  topMostLayoutElements = [(SBSplitRemovalSwitcherModifier *)&v9 topMostLayoutElements];
  v4 = [topMostLayoutElements mutableCopy];
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
  visibleAppLayouts = [(SBSplitRemovalSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts mutableCopy];

  [v4 removeObject:self->_toAppLayout];
  [v4 addObject:self->_remainingAppLayout];
  [v4 addObject:self->_removedAppLayout];

  return v4;
}

@end