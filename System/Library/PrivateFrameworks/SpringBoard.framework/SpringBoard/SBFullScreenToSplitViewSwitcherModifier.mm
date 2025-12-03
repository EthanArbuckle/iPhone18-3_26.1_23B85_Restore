@interface SBFullScreenToSplitViewSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout;
- (SBFullScreenToSplitViewSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout;
- (double)backgroundOpacityForIndex:(unint64_t)index;
- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)homeScreenDimmingAlpha;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleSceneReadyEvent:(id)event;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBFullScreenToSplitViewSwitcherModifier

- (SBFullScreenToSplitViewSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v16.receiver = self;
  v16.super_class = SBFullScreenToSplitViewSwitcherModifier;
  v12 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:d];
  if (v12)
  {
    if (layoutCopy)
    {
      if (appLayoutCopy)
      {
LABEL_4:
        objc_storeStrong(&v12->_existingAppLayout, layout);
        v13 = [appLayoutCopy leafAppLayoutForRole:2];
        incomingAppLayout = v12->_incomingAppLayout;
        v12->_incomingAppLayout = v13;

        v12->_blurExistingDisplayItem = 1;
        goto LABEL_5;
      }
    }

    else
    {
      [SBFullScreenToSplitViewSwitcherModifier initWithTransitionID:a2 fromAppLayout:v12 toAppLayout:?];
      if (appLayoutCopy)
      {
        goto LABEL_4;
      }
    }

    [SBFullScreenToSplitViewSwitcherModifier initWithTransitionID:a2 fromAppLayout:v12 toAppLayout:?];
    goto LABEL_4;
  }

LABEL_5:

  return v12;
}

- (id)transitionWillBegin
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToSplitViewSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:10 updateMode:4];
  v4 = SBAppendSwitcherModifierResponse(v3, transitionWillBegin);

  return v4;
}

- (id)handleSceneReadyEvent:(id)event
{
  v13.receiver = self;
  v13.super_class = SBFullScreenToSplitViewSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v13 handleSceneReadyEvent:eventCopy];
  appLayout = [eventCopy appLayout];

  if ([appLayout containsAllItemsFromAppLayout:self->_existingAppLayout])
  {
    if (self->_blurExistingDisplayItem)
    {
      existingAppLayout = self->_existingAppLayout;
      v12.receiver = self;
      v12.super_class = SBFullScreenToSplitViewSwitcherModifier;
      v8 = [(SBFullScreenToSplitViewSwitcherModifier *)&v12 isLayoutRoleContentReady:1 inAppLayout:existingAppLayout]^ 1;
    }

    else
    {
      v8 = 0;
    }

    self->_blurExistingDisplayItem = v8;
  }

  v9 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:64 updateMode:2];
  v10 = SBAppendSwitcherModifierResponse(v9, v5);

  return v10;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v13.receiver = self;
  v13.super_class = SBFullScreenToSplitViewSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v13 animationAttributesForLayoutElement:elementCopy];
  if (self->_existingAppLayout == elementCopy)
  {
    entityRemovalSettings = [(SBFullScreenToSplitViewSwitcherModifier *)self entityRemovalSettings];
    medusaDeleteIntentAnimationSettings = [entityRemovalSettings medusaDeleteIntentAnimationSettings];

    v8 = [v5 mutableCopy];
    toBeMadeFullscreenFrameAnimationSettings = [medusaDeleteIntentAnimationSettings toBeMadeFullscreenFrameAnimationSettings];
    [v8 setLayoutSettings:toBeMadeFullscreenFrameAnimationSettings];
  }

  else
  {
    if (self->_incomingAppLayout != elementCopy)
    {
      goto LABEL_6;
    }

    entityRemovalSettings2 = [(SBFullScreenToSplitViewSwitcherModifier *)self entityRemovalSettings];
    medusaDeleteIntentAnimationSettings = [entityRemovalSettings2 medusaDeleteIntentAnimationSettings];

    v8 = [v5 mutableCopy];
    toBeRemovedScaleAnimationSettings = [medusaDeleteIntentAnimationSettings toBeRemovedScaleAnimationSettings];
    [v8 setScaleSettings:toBeRemovedScaleAnimationSettings];

    toBeMadeFullscreenFrameAnimationSettings = [medusaDeleteIntentAnimationSettings toBeRemovedAlphaAnimationSettings];
    [v8 setOpacitySettings:toBeMadeFullscreenFrameAnimationSettings];
  }

  v5 = v8;
LABEL_6:

  return v5;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)scene inAppLayout:(id)layout
{
  if (self->_existingAppLayout == layout)
  {
    return 1;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = SBFullScreenToSplitViewSwitcherModifier;
  return [(SBFullScreenToSplitViewSwitcherModifier *)&v7 isLayoutRoleMatchMovedToScene:scene inAppLayout:?];
}

- (BOOL)isLayoutRoleBlurred:(int64_t)blurred inAppLayout:(id)layout
{
  if (self->_existingAppLayout == layout)
  {
    return self->_blurExistingDisplayItem;
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = SBFullScreenToSplitViewSwitcherModifier;
    return [(SBFullScreenToSplitViewSwitcherModifier *)&v8 isLayoutRoleBlurred:blurred inAppLayout:?];
  }
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  appLayouts = [(SBFullScreenToSplitViewSwitcherModifier *)self appLayouts];
  v8 = [appLayouts objectAtIndex:index];

  v9 = 1.0;
  if (([v8 isEqual:self->_existingAppLayout] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = SBFullScreenToSplitViewSwitcherModifier;
    [(SBFullScreenToSplitViewSwitcherModifier *)&v12 shadowOpacityForLayoutRole:role atIndex:index];
    v9 = v10;
  }

  return v9;
}

- (double)blurDelayForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  v14.receiver = self;
  v14.super_class = SBFullScreenToSplitViewSwitcherModifier;
  layoutCopy = layout;
  [(SBFullScreenToSplitViewSwitcherModifier *)&v14 blurDelayForLayoutRole:role inAppLayout:layoutCopy];
  v8 = v7;
  existingAppLayout = self->_existingAppLayout;

  if (existingAppLayout == layoutCopy)
  {
    v10 = [(SBFullScreenToSplitViewSwitcherModifier *)self switcherSettings:v14.receiver];
    animationSettings = [v10 animationSettings];
    [animationSettings resizeBlurDelay];
    v8 = v12;
  }

  return v8;
}

- (double)backgroundOpacityForIndex:(unint64_t)index
{
  appLayouts = [(SBFullScreenToSplitViewSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 == self->_existingAppLayout)
  {
    v8 = 0.0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBFullScreenToSplitViewSwitcherModifier;
    [(SBFullScreenToSplitViewSwitcherModifier *)&v10 backgroundOpacityForIndex:index];
    v8 = v7;
  }

  return v8;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if (self->_incomingAppLayout == layoutCopy && [(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {
    entityRemovalSettings = [(SBFullScreenToSplitViewSwitcherModifier *)self entityRemovalSettings];
    medusaDeleteIntentAnimationSettings = [entityRemovalSettings medusaDeleteIntentAnimationSettings];
    [medusaDeleteIntentAnimationSettings toBeRemovedFinalAlpha];
    v12 = v11;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBFullScreenToSplitViewSwitcherModifier;
    [(SBFullScreenToSplitViewSwitcherModifier *)&v15 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v12 = v13;
  }

  return v12;
}

- (double)scaleForLayoutRole:(int64_t)role inAppLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_incomingAppLayout == layoutCopy && [(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {
    entityRemovalSettings = [(SBFullScreenToSplitViewSwitcherModifier *)self entityRemovalSettings];
    medusaDeleteIntentAnimationSettings = [entityRemovalSettings medusaDeleteIntentAnimationSettings];
    [medusaDeleteIntentAnimationSettings toBeRemovedFinalScale];
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenToSplitViewSwitcherModifier;
    [(SBFullScreenToSplitViewSwitcherModifier *)&v13 scaleForLayoutRole:role inAppLayout:layoutCopy];
    v10 = v11;
  }

  return v10;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToSplitViewSwitcherModifier;
  topMostLayoutElements = [(SBFullScreenToSplitViewSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [topMostLayoutElements sb_arrayByInsertingOrMovingObject:self->_existingAppLayout toIndex:0];

  return v4;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToSplitViewSwitcherModifier;
  visibleAppLayouts = [(SBFullScreenToSplitViewSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [visibleAppLayouts setByAddingObject:self->_incomingAppLayout];

  return v4;
}

- (double)homeScreenDimmingAlpha
{
  transitionPhase = [(SBTransitionSwitcherModifier *)self transitionPhase];
  result = 1.0;
  if (transitionPhase == 1)
  {
    return 0.0;
  }

  return result;
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenToSplitViewSwitcherModifier.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"fromAppLayout"}];
}

- (void)initWithTransitionID:(uint64_t)a1 fromAppLayout:(uint64_t)a2 toAppLayout:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFullScreenToSplitViewSwitcherModifier.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"toAppLayout"}];
}

@end