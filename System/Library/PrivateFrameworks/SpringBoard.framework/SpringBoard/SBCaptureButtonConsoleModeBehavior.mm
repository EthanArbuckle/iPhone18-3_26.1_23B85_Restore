@interface SBCaptureButtonConsoleModeBehavior
- (unint64_t)cameraLaunchIntentInContext:(id)context;
- (unint64_t)coachIntentInContext:(id)context;
- (unint64_t)prewarmIntentInContext:(id)context;
@end

@implementation SBCaptureButtonConsoleModeBehavior

- (unint64_t)prewarmIntentInContext:(id)context
{
  contextCopy = context;
  policy = [contextCopy policy];
  consoleModeMitigationEnabled = [policy consoleModeMitigationEnabled];

  if (consoleModeMitigationEnabled)
  {
    inGameMode = [contextCopy inGameMode];
  }

  else
  {
    inGameMode = 0;
  }

  return inGameMode;
}

- (unint64_t)cameraLaunchIntentInContext:(id)context
{
  contextCopy = context;
  policy = [contextCopy policy];
  consoleModeMitigationEnabled = [policy consoleModeMitigationEnabled];

  if (consoleModeMitigationEnabled)
  {
    inGameMode = [contextCopy inGameMode];
  }

  else
  {
    inGameMode = 0;
  }

  return inGameMode;
}

- (unint64_t)coachIntentInContext:(id)context
{
  contextCopy = context;
  if ([contextCopy inGameMode] && objc_msgSend(contextCopy, "event") == 2)
  {
    if ([contextCopy inGameModeStreakCount] == 1)
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