@interface SBHomeScreenReturnToSpotlightPolicy
+ (BOOL)areSpotlightBreadcrumbsEnabled;
- (SBHomeScreenReturnToSpotlightPolicy)init;
- (unint64_t)homeScreenZStackParticipantDidChange:(id)a3 launchingForSpotlight:(BOOL)a4;
- (void)willReactivateSpotlight;
@end

@implementation SBHomeScreenReturnToSpotlightPolicy

+ (BOOL)areSpotlightBreadcrumbsEnabled
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  return (v3 & 0xFFFFFFFFFFFFFFFBLL) == 1;
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
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    v3->_shouldAnimateReactivation = (v5 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  return v3;
}

- (unint64_t)homeScreenZStackParticipantDidChange:(id)a3 launchingForSpotlight:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 activationState];
  lastKnownActivationState = self->_lastKnownActivationState;
  v9 = [v6 activationState];

  self->_lastKnownActivationState = v9;
  if (v7 != lastKnownActivationState)
  {
    if (v7 == 1 && !self->_homeScreenInactiveReason)
    {
      v13 = +[SBSceneManagerCoordinator sharedInstance];
      v14 = [v13 sceneDeactivationManager];
      v15 = [v14 newAssertionWithReason:3];
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
          if (v7 == 2)
          {
            shouldReactivateSpotlight = 0;
            self->_shouldReactivateSpotlight = v11 <= reactivationWindowDuration;
            goto LABEL_24;
          }

          if (!v4)
          {
            if (self->_shouldAnimateReactivation)
            {
              if (v7 == 1 || lastKnownActivationState == 2)
              {
                self->_shouldReactivateSpotlight = v11 <= reactivationWindowDuration;
              }

              if (!v7)
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
        if (v7 == 1)
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

    if (v4)
    {
      self->_anchorTimeForReactivationWindow = CFAbsoluteTimeGetCurrent();
    }

    shouldReactivateSpotlight = 0;
    self->_shouldReactivateSpotlight = v4;
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
      v4 = [v3 sceneDeactivationManager];
      v5 = [v4 newAssertionWithReason:5];
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