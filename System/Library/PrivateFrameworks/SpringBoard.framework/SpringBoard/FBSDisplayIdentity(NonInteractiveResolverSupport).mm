@interface FBSDisplayIdentity(NonInteractiveResolverSupport)
- (uint64_t)_sb_nonInteractiveAvailableWithSwitcher:()NonInteractiveResolverSupport applicationController:authenticationState:;
@end

@implementation FBSDisplayIdentity(NonInteractiveResolverSupport)

- (uint64_t)_sb_nonInteractiveAvailableWithSwitcher:()NonInteractiveResolverSupport applicationController:authenticationState:
{
  v7 = a4;
  type = [self type];
  if (type == 5)
  {
    musicApplication = [v7 musicApplication];
    goto LABEL_9;
  }

  if (type == 4)
  {
    musicApplication = [v7 iPodOutApplication];
LABEL_9:
    v9 = musicApplication;
    processState = [musicApplication processState];
    HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication = [processState isRunning];

LABEL_10:
    goto LABEL_12;
  }

  if (type != 1)
  {
    HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication = 0;
    goto LABEL_12;
  }

  if (HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication)
  {
    if (![self isRestrictedAirPlayDisplay])
    {
      HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication = 1;
      goto LABEL_12;
    }

    v9 = [v7 applicationWithPid:{objc_msgSend(self, "pid")}];
    HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication = SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication(v9);
    goto LABEL_10;
  }

LABEL_12:

  return HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication;
}

@end