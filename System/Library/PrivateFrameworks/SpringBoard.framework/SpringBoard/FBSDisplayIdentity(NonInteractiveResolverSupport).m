@interface FBSDisplayIdentity(NonInteractiveResolverSupport)
- (uint64_t)_sb_nonInteractiveAvailableWithSwitcher:()NonInteractiveResolverSupport applicationController:authenticationState:;
@end

@implementation FBSDisplayIdentity(NonInteractiveResolverSupport)

- (uint64_t)_sb_nonInteractiveAvailableWithSwitcher:()NonInteractiveResolverSupport applicationController:authenticationState:
{
  v7 = a4;
  v8 = [a1 type];
  if (v8 == 5)
  {
    v10 = [v7 musicApplication];
    goto LABEL_9;
  }

  if (v8 == 4)
  {
    v10 = [v7 iPodOutApplication];
LABEL_9:
    v9 = v10;
    v11 = [v10 processState];
    HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication = [v11 isRunning];

LABEL_10:
    goto LABEL_12;
  }

  if (v8 != 1)
  {
    HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication = 0;
    goto LABEL_12;
  }

  if (HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication)
  {
    if (![a1 isRestrictedAirPlayDisplay])
    {
      HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication = 1;
      goto LABEL_12;
    }

    v9 = [v7 applicationWithPid:{objc_msgSend(a1, "pid")}];
    HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication = SBWorkspaceHasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication(v9);
    goto LABEL_10;
  }

LABEL_12:

  return HasApplicationSceneInLockedOrUnlockedEnvironmentLayoutStateMatchingApplication;
}

@end