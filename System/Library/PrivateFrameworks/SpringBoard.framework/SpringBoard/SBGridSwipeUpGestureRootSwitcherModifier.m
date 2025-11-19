@interface SBGridSwipeUpGestureRootSwitcherModifier
- (SBGridSwipeUpGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 multitaskingModifier:(id)a4;
- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4;
- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4;
@end

@implementation SBGridSwipeUpGestureRootSwitcherModifier

- (SBGridSwipeUpGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)a3 multitaskingModifier:(id)a4
{
  v8 = a4;
  v11.receiver = self;
  v11.super_class = SBGridSwipeUpGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:a3];
  if (v9)
  {
    if (!v8)
    {
      [SBGridSwipeUpGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 multitaskingModifier:v9];
    }

    objc_storeStrong(&v9->_multitaskingModifier, a4);
  }

  return v9;
}

- (id)gestureChildModifierForGestureEvent:(id)a3 activeTransitionModifier:(id)a4
{
  v4 = a3;
  v5 = [SBGridSwipeUpGestureSwitcherModifier alloc];
  v6 = [v4 gestureID];

  v7 = [(SBGridSwipeUpGestureSwitcherModifier *)v5 initWithGestureID:v6 delayCompletionUntilTransitionBegins:1];

  return v7;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)a3 activeGestureModifier:(id)a4
{
  v5 = a3;
  if ([v5 fromEnvironmentMode] != 2 || objc_msgSend(v5, "toEnvironmentMode") != 1)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v6 = [v5 fromAppExposeBundleID];

  if (v6)
  {
    v7 = [SBAppExposeWindowingModifier alloc];
    v8 = [v5 fromAppExposeBundleID];
    v9 = [(SBAppExposeWindowingModifier *)v7 initWithBundleIdentifier:v8];
  }

  else
  {
    v11 = [(SBGridSwipeUpGestureRootSwitcherModifier *)self _newMultitaskingModifier];
    v12 = objc_opt_class();
    v8 = v11;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v8;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v9 = v13;
  }

  if (v9)
  {
    if (SBPeekConfigurationIsValid([v5 toPeekConfiguration]))
    {
      v14 = [SBFlexibleWindowingExposeToHomePeekWindowingModifier alloc];
      v10 = [v5 transitionID];
      v15 = [(SBFlexibleWindowingExposeToHomePeekWindowingModifier *)v14 initWithTransitionID:v10 direction:0 exposeModifier:v9];
LABEL_18:
      v19 = v15;

      v10 = v19;
      goto LABEL_19;
    }

    v16 = [SBContinuousExposeToHomeSwitcherModifier alloc];
    v17 = [v5 transitionID];
    v10 = [(SBContinuousExposeToHomeSwitcherModifier *)v16 initWithTransitionID:v17 direction:0 exposeModifier:v9];

    v18 = [v5 fromAppExposeBundleID];

    if (v18)
    {
      v15 = [[SBAppExposeToHomeWindowingModifier alloc] initWithTransitionModifier:v10 appExposeModifier:v9];
      goto LABEL_18;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_19:

LABEL_20:

  return v10;
}

- (void)initWithStartingEnvironmentMode:(uint64_t)a1 multitaskingModifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBGridSwipeUpGestureRootSwitcherModifier.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"multitaskingModifier"}];
}

@end