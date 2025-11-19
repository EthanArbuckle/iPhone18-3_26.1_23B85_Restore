@interface SBHomeToSwitcherSwitcherModifier
- (BOOL)isEffectivelyHome;
- (SBHomeToSwitcherSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 multitaskingModifier:(id)a5;
- (double)containerStatusBarAnimationDuration;
- (double)fadeInDelayForSplitViewHandles;
- (id)handleTimerEvent:(id)a3;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
@end

@implementation SBHomeToSwitcherSwitcherModifier

- (SBHomeToSwitcherSwitcherModifier)initWithTransitionID:(id)a3 direction:(int64_t)a4 multitaskingModifier:(id)a5
{
  v9 = a5;
  v18.receiver = self;
  v18.super_class = SBHomeToSwitcherSwitcherModifier;
  v10 = [(SBTransitionSwitcherModifier *)&v18 initWithTransitionID:a3];
  v11 = v10;
  if (v10)
  {
    v10->_direction = a4;
    objc_storeStrong(&v10->_multitaskingModifier, a5);
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
  v2 = [(SBHomeToSwitcherSwitcherModifier *)self switcherSettings];
  v3 = [v2 windowingSettings];
  [v3 percentageOfTransitionForSplitViewHandleFadeInDelay];
  v5 = v4;
  v6 = [v2 animationSettings];
  v7 = [v6 layoutSettings];
  [v7 settlingDuration];
  v9 = v5 * v8;

  return v9;
}

- (double)containerStatusBarAnimationDuration
{
  v3 = [(SBHomeToSwitcherSwitcherModifier *)self appLayouts];
  v4 = [v3 count];

  if (v4)
  {
    return 0.35;
  }

  v6 = [(SBHomeToSwitcherSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];

  if (self->_direction == 1)
  {
    [v7 statusBarToApexBounceAnimationDuration];
  }

  else
  {
    [v7 statusBarFromApexBounceAnimationDuration];
  }

  v5 = v8;

  return v5;
}

- (id)transitionWillBegin
{
  v15.receiver = self;
  v15.super_class = SBHomeToSwitcherSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v15 transitionWillBegin];
  v4 = objc_alloc_init(SBSwitcherModifierEventResponse);
  v5 = [(SBHomeToSwitcherSwitcherModifier *)self windowManagementContext];
  v6 = [v5 isFlexibleWindowingEnabled];

  if ((v6 & 1) == 0)
  {
    v7 = [(SBHomeToSwitcherSwitcherModifier *)self appLayoutToScrollToDuringTransition];
    if (v7)
    {
      v8 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v7 alignment:0 animated:0];
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

  v13 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v4 toResponse:v3];

  return v13;
}

- (id)transitionWillUpdate
{
  v15.receiver = self;
  v15.super_class = SBHomeToSwitcherSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v15 transitionWillUpdate];
  if (self->_direction == 1)
  {
    v4 = [(SBHomeToSwitcherSwitcherModifier *)self appLayouts];
    v5 = [v4 count];

    if (!v5)
    {
      v6 = [(SBHomeToSwitcherSwitcherModifier *)self switcherSettings];
      v7 = [v6 animationSettings];
      [v7 emptySwitcherDismissDelay];
      v9 = v8;

      v10 = [SBTimerEventSwitcherEventResponse alloc];
      v11 = [(SBHomeToSwitcherSwitcherModifier *)self _dismissForEmptySwitcherResponseName];
      v12 = [(SBTimerEventSwitcherEventResponse *)v10 initWithDelay:0 validator:v11 reason:v9];

      v13 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v12 toResponse:v3];

      v3 = v13;
    }
  }

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v11.receiver = self;
  v11.super_class = SBHomeToSwitcherSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v11 handleTimerEvent:v4];
  v6 = [v4 reason];

  v7 = [(SBHomeToSwitcherSwitcherModifier *)self _dismissForEmptySwitcherResponseName];
  if ([(SBDismissForEmptySwitcherSwitcherEventResponse *)v6 isEqualToString:v7])
  {
    v8 = [(SBHomeToSwitcherSwitcherModifier *)self appLayouts];
    v9 = [v8 count];

    if (v9)
    {
      goto LABEL_5;
    }

    v6 = objc_alloc_init(SBDismissForEmptySwitcherSwitcherEventResponse);
    [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v6 toResponse:v5];
    v5 = v7 = v5;
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