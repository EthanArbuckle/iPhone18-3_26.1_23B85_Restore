@interface SBCaptureButtonViewObstructedBehavior
- (unint64_t)cameraLaunchIntentInContext:(id)a3;
- (unint64_t)coachIntentInContext:(id)a3;
- (unint64_t)wakeIntentInContext:(id)a3;
@end

@implementation SBCaptureButtonViewObstructedBehavior

- (unint64_t)cameraLaunchIntentInContext:(id)a3
{
  v3 = a3;
  v4 = [v3 event];
  if (v4 == 2)
  {
    if ([v3 suppressedOnButtonDown])
    {
      v5 = 3;
      goto LABEL_9;
    }

LABEL_7:
    v5 = [v3 isSuppressed];
    goto LABEL_9;
  }

  if (v4 != 1)
  {
    v5 = 0;
    goto LABEL_9;
  }

  if (([v3 shouldSuspendLaunchOnButtonDown] & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = 4;
LABEL_9:

  return v5;
}

- (unint64_t)coachIntentInContext:(id)a3
{
  if ([(SBCaptureButtonViewObstructedBehavior *)self _isAbortingForContext:a3])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)wakeIntentInContext:(id)a3
{
  if ([(SBCaptureButtonViewObstructedBehavior *)self _isAbortingForContext:a3])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

@end