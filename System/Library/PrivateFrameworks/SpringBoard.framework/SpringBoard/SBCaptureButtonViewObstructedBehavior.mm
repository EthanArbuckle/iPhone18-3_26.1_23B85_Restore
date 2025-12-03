@interface SBCaptureButtonViewObstructedBehavior
- (unint64_t)cameraLaunchIntentInContext:(id)context;
- (unint64_t)coachIntentInContext:(id)context;
- (unint64_t)wakeIntentInContext:(id)context;
@end

@implementation SBCaptureButtonViewObstructedBehavior

- (unint64_t)cameraLaunchIntentInContext:(id)context
{
  contextCopy = context;
  event = [contextCopy event];
  if (event == 2)
  {
    if ([contextCopy suppressedOnButtonDown])
    {
      isSuppressed = 3;
      goto LABEL_9;
    }

LABEL_7:
    isSuppressed = [contextCopy isSuppressed];
    goto LABEL_9;
  }

  if (event != 1)
  {
    isSuppressed = 0;
    goto LABEL_9;
  }

  if (([contextCopy shouldSuspendLaunchOnButtonDown] & 1) == 0)
  {
    goto LABEL_7;
  }

  isSuppressed = 4;
LABEL_9:

  return isSuppressed;
}

- (unint64_t)coachIntentInContext:(id)context
{
  if ([(SBCaptureButtonViewObstructedBehavior *)self _isAbortingForContext:context])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)wakeIntentInContext:(id)context
{
  if ([(SBCaptureButtonViewObstructedBehavior *)self _isAbortingForContext:context])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end