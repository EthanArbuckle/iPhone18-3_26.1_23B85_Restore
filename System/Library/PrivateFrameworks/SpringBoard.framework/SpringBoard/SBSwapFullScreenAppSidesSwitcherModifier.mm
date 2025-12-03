@interface SBSwapFullScreenAppSidesSwitcherModifier
- (SBSwapFullScreenAppSidesSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout layoutRoleToKeepOnTop:(int64_t)top;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleTimerEvent:(id)event;
- (id)topMostLayoutRolesForAppLayout:(id)layout;
- (id)transitionWillBegin;
@end

@implementation SBSwapFullScreenAppSidesSwitcherModifier

- (SBSwapFullScreenAppSidesSwitcherModifier)initWithTransitionID:(id)d fromAppLayout:(id)layout toAppLayout:(id)appLayout layoutRoleToKeepOnTop:(int64_t)top
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v16.receiver = self;
  v16.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
  v13 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:d];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_fromAppLayout, layout);
    objc_storeStrong(&v14->_toAppLayout, appLayout);
    v14->_layoutRoleToKeepOnTop = top;
    v14->_animationPhase = 0;
  }

  return v14;
}

- (id)transitionWillBegin
{
  v11.receiver = self;
  v11.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v11 transitionWillBegin];
  if (!self->_animationPhase)
  {
    switcherSettings = [(SBSwapFullScreenAppSidesSwitcherModifier *)self switcherSettings];
    animationSettings = [switcherSettings animationSettings];
    [animationSettings swapAppSidesShadowFadeOutDelay];
    v7 = v6;

    v8 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBSwapFullScreenAppSidesSwitcherModifierTimerEventReason" reason:v7];
    v9 = SBAppendSwitcherModifierResponse(v8, transitionWillBegin);

    transitionWillBegin = v9;
  }

  return transitionWillBegin;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  LODWORD(eventCopy) = [reason isEqualToString:@"SBSwapFullScreenAppSidesSwitcherModifierTimerEventReason"];
  if (eventCopy)
  {
    self->_animationPhase = 1;
    v7 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:30 updateMode:3];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)topMostLayoutRolesForAppLayout:(id)layout
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
  layoutCopy = layout;
  v5 = [(SBSwapFullScreenAppSidesSwitcherModifier *)&v12 topMostLayoutRolesForAppLayout:layoutCopy];
  toAppLayout = self->_toAppLayout;

  if (toAppLayout == layoutCopy)
  {
    if (self->_layoutRoleToKeepOnTop == 1)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{v7, v12.receiver, v12.super_class}];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v10 = [v9 arrayByAddingObjectsFromArray:v5];

    v5 = v10;
  }

  return v5;
}

- (double)shadowOpacityForLayoutRole:(int64_t)role atIndex:(unint64_t)index
{
  result = 1.0;
  if (self->_animationPhase == 1)
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
    [(SBSwapFullScreenAppSidesSwitcherModifier *)&v7 shadowOpacityForLayoutRole:role atIndex:index, 1.0];
  }

  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  [(SBSwapFullScreenAppSidesSwitcherModifier *)self displayCornerRadius];
  v4 = v3;
  v5 = v3;
  v6 = v3;
  result.topRight = v6;
  result.bottomRight = v5;
  result.bottomLeft = v4;
  result.topLeft = v3;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  v13.receiver = self;
  v13.super_class = SBSwapFullScreenAppSidesSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v13 animationAttributesForLayoutElement:element];
  v5 = [v4 mutableCopy];

  switcherSettings = [(SBSwapFullScreenAppSidesSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];
  swapAppSidesLayoutAnimationSettings = [animationSettings swapAppSidesLayoutAnimationSettings];
  [v5 setLayoutSettings:swapAppSidesLayoutAnimationSettings];

  switcherSettings2 = [(SBSwapFullScreenAppSidesSwitcherModifier *)self switcherSettings];
  animationSettings2 = [switcherSettings2 animationSettings];
  swapAppSidesOpacityAnimationSettings = [animationSettings2 swapAppSidesOpacityAnimationSettings];
  [v5 setOpacitySettings:swapAppSidesOpacityAnimationSettings];

  [v5 setUpdateMode:3];

  return v5;
}

@end