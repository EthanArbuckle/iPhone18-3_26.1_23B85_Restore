@interface SBHomeToSwitcherSwitcherModifier
- (BOOL)isEffectivelyHome;
- (SBHomeToSwitcherSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction multitaskingModifier:(id)modifier;
- (double)containerStatusBarAnimationDuration;
- (double)fadeInDelayForSplitViewHandles;
- (id)handleTimerEvent:(id)event;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
@end

@implementation SBHomeToSwitcherSwitcherModifier

- (SBHomeToSwitcherSwitcherModifier)initWithTransitionID:(id)d direction:(int64_t)direction multitaskingModifier:(id)modifier
{
  modifierCopy = modifier;
  v18.receiver = self;
  v18.super_class = SBHomeToSwitcherSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v18 initWithTransitionID:d];
  v11 = v10;
  if (v10)
  {
    v10->_direction = direction;
    objc_storeStrong(&v10->_multitaskingModifier, modifier);
    multitaskingModifier = v11->_multitaskingModifier;
    v13 = objc_opt_class();
    v14 = multitaskingModifier;
    if (v13)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    [(SBSwitcherMultitaskingQueryProviding *)v16 setStaticTemporaryChildModifier:1];
  }

  return v11;
}

- (double)fadeInDelayForSplitViewHandles
{
  switcherSettings = [(SBHomeToSwitcherSwitcherModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  [windowingSettings percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  animationSettings = [switcherSettings animationSettings];
  layoutSettings = [animationSettings layoutSettings];
  [layoutSettings settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (double)containerStatusBarAnimationDuration
{
  appLayouts = [(SBHomeToSwitcherSwitcherModifier *)self appLayouts];
  v4 = [appLayouts count];

  if (v4)
  {
    return 0.35;
  }

  switcherSettings = [(SBHomeToSwitcherSwitcherModifier *)self switcherSettings];
  animationSettings = [switcherSettings animationSettings];

  if (self->_direction == 1)
  {
    [animationSettings statusBarToApexBounceAnimationDuration];
  }

  else
  {
    [animationSettings statusBarFromApexBounceAnimationDuration];
  }

  v5 = v8;

  return v5;
}

- (id)transitionWillBegin
{
  v15.receiver = self;
  v15.super_class = SBHomeToSwitcherSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v15 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  windowManagementContext = [(SBHomeToSwitcherSwitcherModifier *)self windowManagementContext];
  isFlexibleWindowingEnabled = [windowManagementContext isFlexibleWindowingEnabled];

  if ((isFlexibleWindowingEnabled & 1) == 0)
  {
    appLayoutToScrollToDuringTransition = [(SBHomeToSwitcherSwitcherModifier *)self appLayoutToScrollToDuringTransition];
    if (appLayoutToScrollToDuringTransition)
    {
      v8 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:appLayoutToScrollToDuringTransition alignment:0 animated:0];
      [(SBChainableModifierEventResponse *)v4 addChildResponse:v8];
    }
  }

  direction = self->_direction;
  v10 = [SBUpdateLayoutSwitcherEventResponse alloc];
  if (direction == 1)
  {
    v11 = 30;
  }

  else
  {
    v11 = 2;
  }

  v12 = [(SBUpdateLayoutSwitcherEventResponse *)v10 initWithOptions:v11 updateMode:2];
  [(SBChainableModifierEventResponse *)v4 addChildResponse:v12];

  v13 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:transitionWillBegin];

  return v13;
}

- (id)transitionWillUpdate
{
  v15.receiver = self;
  v15.super_class = SBHomeToSwitcherSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v15 transitionWillUpdate];
  if (self->_direction == 1)
  {
    appLayouts = [(SBHomeToSwitcherSwitcherModifier *)self appLayouts];
    v5 = [appLayouts count];

    if (!v5)
    {
      switcherSettings = [(SBHomeToSwitcherSwitcherModifier *)self switcherSettings];
      animationSettings = [switcherSettings animationSettings];
      [animationSettings emptySwitcherDismissDelay];
      v9 = v8;

      v10 = [SBTimerEventSwitcherEventResponse alloc];
      _dismissForEmptySwitcherResponseName = [(SBHomeToSwitcherSwitcherModifier *)self _dismissForEmptySwitcherResponseName];
      v12 = [(SBTimerEventSwitcherEventResponse *)v10 initWithDelay:0 validator:_dismissForEmptySwitcherResponseName reason:v9];

      v13 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v12 toResponse:transitionWillUpdate];

      transitionWillUpdate = v13;
    }
  }

  return transitionWillUpdate;
}

- (id)handleTimerEvent:(id)event
{
  v11.receiver = self;
  v11.super_class = SBHomeToSwitcherSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v11 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  _dismissForEmptySwitcherResponseName = [(SBHomeToSwitcherSwitcherModifier *)self _dismissForEmptySwitcherResponseName];
  if ([(SBDismissForEmptySwitcherSwitcherEventResponse *)reason isEqualToString:_dismissForEmptySwitcherResponseName])
  {
    appLayouts = [(SBHomeToSwitcherSwitcherModifier *)self appLayouts];
    v9 = [appLayouts count];

    if (v9)
    {
      goto LABEL_5;
    }

    reason = objc_alloc_init(SBDismissForEmptySwitcherSwitcherEventResponse);
    [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:reason toResponse:v5];
    v5 = _dismissForEmptySwitcherResponseName = v5;
  }

LABEL_5:

  return v5;
}

- (BOOL)isEffectivelyHome
{
  if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v3 = [(SBHomeToSwitcherSwitcherModifier *)self direction]== 1;
  }

  else
  {
    v3 = 0;
  }

  if ([(SBTransitionSwitcherModifier *)self isUpdatingLayout])
  {
    v4 = [(SBHomeToSwitcherSwitcherModifier *)self direction]== 0;
  }

  else
  {
    v4 = 0;
  }

  return v3 || v4;
}

@end