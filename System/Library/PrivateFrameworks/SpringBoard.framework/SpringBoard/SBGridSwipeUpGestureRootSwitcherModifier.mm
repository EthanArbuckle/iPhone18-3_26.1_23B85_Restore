@interface SBGridSwipeUpGestureRootSwitcherModifier
- (SBGridSwipeUpGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode multitaskingModifier:(id)modifier;
- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier;
- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier;
@end

@implementation SBGridSwipeUpGestureRootSwitcherModifier

- (SBGridSwipeUpGestureRootSwitcherModifier)initWithStartingEnvironmentMode:(int64_t)mode multitaskingModifier:(id)modifier
{
  modifierCopy = modifier;
  v11.receiver = self;
  v11.super_class = SBGridSwipeUpGestureRootSwitcherModifier;
  v9 = [(SBGestureRootSwitcherModifier *)&v11 initWithStartingEnvironmentMode:mode];
  if (v9)
  {
    if (!modifierCopy)
    {
      [SBGridSwipeUpGestureRootSwitcherModifier initWithStartingEnvironmentMode:a2 multitaskingModifier:v9];
    }

    objc_storeStrong(&v9->_multitaskingModifier, modifier);
  }

  return v9;
}

- (id)gestureChildModifierForGestureEvent:(id)event activeTransitionModifier:(id)modifier
{
  eventCopy = event;
  v5 = [SBGridSwipeUpGestureSwitcherModifier alloc];
  gestureID = [eventCopy gestureID];

  v7 = [(SBGridSwipeUpGestureSwitcherModifier *)v5 initWithGestureID:gestureID delayCompletionUntilTransitionBegins:1];

  return v7;
}

- (id)transitionChildModifierForMainTransitionEvent:(id)event activeGestureModifier:(id)modifier
{
  eventCopy = event;
  if ([eventCopy fromEnvironmentMode] != 2 || objc_msgSend(eventCopy, "toEnvironmentMode") != 1)
  {
    transitionID = 0;
    goto LABEL_20;
  }

  fromAppExposeBundleID = [eventCopy fromAppExposeBundleID];

  if (fromAppExposeBundleID)
  {
    v7 = [SBAppExposeWindowingModifier alloc];
    fromAppExposeBundleID2 = [eventCopy fromAppExposeBundleID];
    v9 = [(SBAppExposeWindowingModifier *)v7 initWithBundleIdentifier:fromAppExposeBundleID2];
  }

  else
  {
    _newMultitaskingModifier = [(SBGridSwipeUpGestureRootSwitcherModifier *)self _newMultitaskingModifier];
    v12 = objc_opt_class();
    fromAppExposeBundleID2 = _newMultitaskingModifier;
    if (v12)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = fromAppExposeBundleID2;
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
    if (SBPeekConfigurationIsValid([eventCopy toPeekConfiguration]))
    {
      v14 = [SBFlexibleWindowingExposeToHomePeekWindowingModifier alloc];
      transitionID = [eventCopy transitionID];
      v15 = [(SBFlexibleWindowingExposeToHomePeekWindowingModifier *)v14 initWithTransitionID:transitionID direction:0 exposeModifier:v9];
LABEL_18:
      v19 = v15;

      transitionID = v19;
      goto LABEL_19;
    }

    v16 = [SBContinuousExposeToHomeSwitcherModifier alloc];
    transitionID2 = [eventCopy transitionID];
    transitionID = [(SBContinuousExposeToHomeSwitcherModifier *)v16 initWithTransitionID:transitionID2 direction:0 exposeModifier:v9];

    fromAppExposeBundleID3 = [eventCopy fromAppExposeBundleID];

    if (fromAppExposeBundleID3)
    {
      v15 = [[SBAppExposeToHomeWindowingModifier alloc] initWithTransitionModifier:transitionID appExposeModifier:v9];
      goto LABEL_18;
    }
  }

  else
  {
    transitionID = 0;
  }

LABEL_19:

LABEL_20:

  return transitionID;
}

- (void)initWithStartingEnvironmentMode:(uint64_t)a1 multitaskingModifier:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBGridSwipeUpGestureRootSwitcherModifier.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"multitaskingModifier"}];
}

@end