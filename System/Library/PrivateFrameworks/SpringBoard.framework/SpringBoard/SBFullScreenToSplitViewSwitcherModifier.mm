@interface SBFullScreenToSplitViewSwitcherModifier
- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4;
- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4;
- (SBFullScreenToSplitViewSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5;
- (double)backgroundOpacityForIndex:(unint64_t)a3;
- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)homeScreenDimmingAlpha;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4;
- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleSceneReadyEvent:(id)a3;
- (id)topMostLayoutElements;
- (id)transitionWillBegin;
- (id)visibleAppLayouts;
@end

@implementation SBFullScreenToSplitViewSwitcherModifier

- (SBFullScreenToSplitViewSwitcherModifier)initWithTransitionID:(id)a3 fromAppLayout:(id)a4 toAppLayout:(id)a5
{
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = SBFullScreenToSplitViewSwitcherModifier;
  v12 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:a3];
  if (v12)
  {
    if (v10)
    {
      if (v11)
      {
LABEL_4:
        objc_storeStrong(&v12->_existingAppLayout, a4);
        v13 = [v11 leafAppLayoutForRole:2];
        incomingAppLayout = v12->_incomingAppLayout;
        v12->_incomingAppLayout = v13;

        v12->_blurExistingDisplayItem = 1;
        goto LABEL_5;
      }
    }

    else
    {
      [SBFullScreenToSplitViewSwitcherModifier initWithTransitionID:a2 fromAppLayout:v12 toAppLayout:?];
      if (v11)
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
  v2 = [(SBTransitionSwitcherModifier *)&v6 transitionWillBegin];
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:10 updateMode:4];
  v4 = SBAppendSwitcherModifierResponse(v3, v2);

  return v4;
}

- (id)handleSceneReadyEvent:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBFullScreenToSplitViewSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v13 handleSceneReadyEvent:v4];
  v6 = [v4 appLayout];

  if ([v6 containsAllItemsFromAppLayout:self->_existingAppLayout])
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

- (id)animationAttributesForLayoutElement:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SBFullScreenToSplitViewSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v13 animationAttributesForLayoutElement:v4];
  if (self->_existingAppLayout == v4)
  {
    v11 = [(SBFullScreenToSplitViewSwitcherModifier *)self entityRemovalSettings];
    v7 = [v11 medusaDeleteIntentAnimationSettings];

    v8 = [v5 mutableCopy];
    v10 = [v7 toBeMadeFullscreenFrameAnimationSettings];
    [v8 setLayoutSettings:v10];
  }

  else
  {
    if (self->_incomingAppLayout != v4)
    {
      goto LABEL_6;
    }

    v6 = [(SBFullScreenToSplitViewSwitcherModifier *)self entityRemovalSettings];
    v7 = [v6 medusaDeleteIntentAnimationSettings];

    v8 = [v5 mutableCopy];
    v9 = [v7 toBeRemovedScaleAnimationSettings];
    [v8 setScaleSettings:v9];

    v10 = [v7 toBeRemovedAlphaAnimationSettings];
    [v8 setOpacitySettings:v10];
  }

  v5 = v8;
LABEL_6:

  return v5;
}

- (BOOL)isLayoutRoleMatchMovedToScene:(int64_t)a3 inAppLayout:(id)a4
{
  if (self->_existingAppLayout == a4)
  {
    return 1;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = SBFullScreenToSplitViewSwitcherModifier;
  return [(SBFullScreenToSplitViewSwitcherModifier *)&v7 isLayoutRoleMatchMovedToScene:a3 inAppLayout:?];
}

- (BOOL)isLayoutRoleBlurred:(int64_t)a3 inAppLayout:(id)a4
{
  if (self->_existingAppLayout == a4)
  {
    return self->_blurExistingDisplayItem;
  }

  else
  {
    v9 = v4;
    v10 = v5;
    v8.receiver = self;
    v8.super_class = SBFullScreenToSplitViewSwitcherModifier;
    return [(SBFullScreenToSplitViewSwitcherModifier *)&v8 isLayoutRoleBlurred:a3 inAppLayout:?];
  }
}

- (double)shadowOpacityForLayoutRole:(int64_t)a3 atIndex:(unint64_t)a4
{
  v7 = [(SBFullScreenToSplitViewSwitcherModifier *)self appLayouts];
  v8 = [v7 objectAtIndex:a4];

  v9 = 1.0;
  if (([v8 isEqual:self->_existingAppLayout] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = SBFullScreenToSplitViewSwitcherModifier;
    [(SBFullScreenToSplitViewSwitcherModifier *)&v12 shadowOpacityForLayoutRole:a3 atIndex:a4];
    v9 = v10;
  }

  return v9;
}

- (double)blurDelayForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v14.receiver = self;
  v14.super_class = SBFullScreenToSplitViewSwitcherModifier;
  v6 = a4;
  [(SBFullScreenToSplitViewSwitcherModifier *)&v14 blurDelayForLayoutRole:a3 inAppLayout:v6];
  v8 = v7;
  existingAppLayout = self->_existingAppLayout;

  if (existingAppLayout == v6)
  {
    v10 = [(SBFullScreenToSplitViewSwitcherModifier *)self switcherSettings:v14.receiver];
    v11 = [v10 animationSettings];
    [v11 resizeBlurDelay];
    v8 = v12;
  }

  return v8;
}

- (double)backgroundOpacityForIndex:(unint64_t)a3
{
  v5 = [(SBFullScreenToSplitViewSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  if (v6 == self->_existingAppLayout)
  {
    v8 = 0.0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBFullScreenToSplitViewSwitcherModifier;
    [(SBFullScreenToSplitViewSwitcherModifier *)&v10 backgroundOpacityForIndex:a3];
    v8 = v7;
  }

  return v8;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if (self->_incomingAppLayout == v8 && [(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {
    v9 = [(SBFullScreenToSplitViewSwitcherModifier *)self entityRemovalSettings];
    v10 = [v9 medusaDeleteIntentAnimationSettings];
    [v10 toBeRemovedFinalAlpha];
    v12 = v11;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBFullScreenToSplitViewSwitcherModifier;
    [(SBFullScreenToSplitViewSwitcherModifier *)&v15 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v12 = v13;
  }

  return v12;
}

- (double)scaleForLayoutRole:(int64_t)a3 inAppLayout:(id)a4
{
  v6 = a4;
  if (self->_incomingAppLayout == v6 && [(SBTransitionSwitcherModifier *)self transitionPhase]== 1)
  {
    v7 = [(SBFullScreenToSplitViewSwitcherModifier *)self entityRemovalSettings];
    v8 = [v7 medusaDeleteIntentAnimationSettings];
    [v8 toBeRemovedFinalScale];
    v10 = v9;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SBFullScreenToSplitViewSwitcherModifier;
    [(SBFullScreenToSplitViewSwitcherModifier *)&v13 scaleForLayoutRole:a3 inAppLayout:v6];
    v10 = v11;
  }

  return v10;
}

- (id)topMostLayoutElements
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToSplitViewSwitcherModifier;
  v3 = [(SBFullScreenToSplitViewSwitcherModifier *)&v6 topMostLayoutElements];
  v4 = [v3 sb_arrayByInsertingOrMovingObject:self->_existingAppLayout toIndex:0];

  return v4;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBFullScreenToSplitViewSwitcherModifier;
  v3 = [(SBFullScreenToSplitViewSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 setByAddingObject:self->_incomingAppLayout];

  return v4;
}

- (double)homeScreenDimmingAlpha
{
  v2 = [(SBTransitionSwitcherModifier *)self transitionPhase];
  result = 1.0;
  if (v2 == 1)
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