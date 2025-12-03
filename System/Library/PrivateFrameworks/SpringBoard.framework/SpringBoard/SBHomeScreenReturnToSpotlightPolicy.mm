@interface SBHomeScreenReturnToSpotlightPolicy
+ (BOOL)areSpotlightBreadcrumbsEnabled;
- (SBHomeScreenReturnToSpotlightPolicy)init;
- (unint64_t)homeScreenZStackParticipantDidChange:(id)change launchingForSpotlight:(BOOL)spotlight;
- (void)willReactivateSpotlight;
@end

@implementation SBHomeScreenReturnToSpotlightPolicy

+ (BOOL)areSpotlightBreadcrumbsEnabled
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  return (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
}

- (SBHomeScreenReturnToSpotlightPolicy)init
{
  v7.receiver = self;
  v7.super_class = SBHomeScreenReturnToSpotlightPolicy;
  v2 = [(SBHomeScreenReturnToSpotlightPolicy *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_reactivationWindowDuration = 8.0;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v3->_shouldAnimateReactivation = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  return v3;
}

- (unint64_t)homeScreenZStackParticipantDidChange:(id)change launchingForSpotlight:(BOOL)spotlight
{
  spotlightCopy = spotlight;
  changeCopy = change;
  activationState = [changeCopy activationState];
  lastKnownActivationState = self->_lastKnownActivationState;
  activationState2 = [changeCopy activationState];

  self->_lastKnownActivationState = activationState2;
  if (activationState != lastKnownActivationState)
  {
    if (activationState == 1 && !self->_homeScreenInactiveReason)
    {
      v13 = +[SBSceneManagerCoordinator sharedInstance];
      sceneDeactivationManager = [v13 sceneDeactivationManager];
      v15 = [sceneDeactivationManager newAssertionWithReason:3];
      homeScreenInactiveReason = self->_homeScreenInactiveReason;
      self->_homeScreenInactiveReason = v15;

      [(UIApplicationSceneDeactivationAssertion *)self->_homeScreenInactiveReason acquireWithPredicate:&__block_literal_global_321 transitionContext:0];
      if (lastKnownActivationState)
      {
LABEL_6:
        if (self->_shouldReactivateSpotlight)
        {
          [(SBHomeScreenReturnToSpotlightPolicy *)self _elapsedTime];
          reactivationWindowDuration = self->_reactivationWindowDuration;
          if (activationState == 2)
          {
            shouldReactivateSpotlight = 0;
            self->_shouldReactivateSpotlight = v11 <= reactivationWindowDuration;
            goto LABEL_24;
          }

          if (!spotlightCopy)
          {
            if (self->_shouldAnimateReactivation)
            {
              if (activationState == 1 || lastKnownActivationState == 2)
              {
                self->_shouldReactivateSpotlight = v11 <= reactivationWindowDuration;
              }

              if (!activationState)
              {
                shouldReactivateSpotlight = self->_shouldReactivateSpotlight;
                goto LABEL_24;
              }
            }

            else if (lastKnownActivationState == 2)
            {
              shouldReactivateSpotlight = v11 <= reactivationWindowDuration;
              self->_shouldReactivateSpotlight = shouldReactivateSpotlight;
              goto LABEL_23;
            }
          }
        }

        shouldReactivateSpotlight = 0;
LABEL_23:
        if (activationState == 1)
        {
          return shouldReactivateSpotlight;
        }

LABEL_24:
        [(UIApplicationSceneDeactivationAssertion *)self->_spotlightSceneDeactivationAssertion relinquish];
        spotlightSceneDeactivationAssertion = self->_spotlightSceneDeactivationAssertion;
        self->_spotlightSceneDeactivationAssertion = 0;

        [(UIApplicationSceneDeactivationAssertion *)self->_homeScreenInactiveReason relinquish];
        v18 = self->_homeScreenInactiveReason;
        self->_homeScreenInactiveReason = 0;

        return shouldReactivateSpotlight;
      }
    }

    else if (lastKnownActivationState)
    {
      goto LABEL_6;
    }

    if (spotlightCopy)
    {
      self->_anchorTimeForReactivationWindow = CFAbsoluteTimeGetCurrent();
    }

    shouldReactivateSpotlight = 0;
    self->_shouldReactivateSpotlight = spotlightCopy;
    goto LABEL_23;
  }

  return 0;
}

uint64_t __98__SBHomeScreenReturnToSpotlightPolicy_homeScreenZStackParticipantDidChange_launchingForSpotlight___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 clientHandle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.Spotlight"];

  return v4;
}

- (void)willReactivateSpotlight
{
  if (self->_lastKnownActivationState)
  {
    if (!self->_spotlightSceneDeactivationAssertion)
    {
      v3 = +[SBSceneManagerCoordinator sharedInstance];
      sceneDeactivationManager = [v3 sceneDeactivationManager];
      v5 = [sceneDeactivationManager newAssertionWithReason:5];
      spotlightSceneDeactivationAssertion = self->_spotlightSceneDeactivationAssertion;
      self->_spotlightSceneDeactivationAssertion = v5;

      v7 = self->_spotlightSceneDeactivationAssertion;

      [(UIApplicationSceneDeactivationAssertion *)v7 acquireWithPredicate:&__block_literal_global_2_1 transitionContext:0];
    }
  }

  else
  {
    self->_shouldReactivateSpotlight = 0;
  }
}

uint64_t __62__SBHomeScreenReturnToSpotlightPolicy_willReactivateSpotlight__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 clientHandle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqualToString:@"com.apple.Spotlight"];

  return v4;
}

@end