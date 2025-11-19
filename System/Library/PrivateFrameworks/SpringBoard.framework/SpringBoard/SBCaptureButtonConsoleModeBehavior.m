@interface SBCaptureButtonConsoleModeBehavior
- (unint64_t)cameraLaunchIntentInContext:(id)a3;
- (unint64_t)coachIntentInContext:(id)a3;
- (unint64_t)prewarmIntentInContext:(id)a3;
@end

@implementation SBCaptureButtonConsoleModeBehavior

- (unint64_t)prewarmIntentInContext:(id)a3
{
  v3 = a3;
  v4 = [v3 policy];
  v5 = [v4 consoleModeMitigationEnabled];

  if (v5)
  {
    v6 = [v3 inGameMode];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)cameraLaunchIntentInContext:(id)a3
{
  v3 = a3;
  v4 = [v3 policy];
  v5 = [v4 consoleModeMitigationEnabled];

  if (v5)
  {
    v6 = [v3 inGameMode];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)coachIntentInContext:(id)a3
{
  v3 = a3;
  if ([v3 inGameMode] && objc_msgSend(v3, "event") == 2)
  {
    if ([v3 inGameModeStreakCount] == 1)
    {
      v4 = 2;
    }

    else
    {
      v4 = 3;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end