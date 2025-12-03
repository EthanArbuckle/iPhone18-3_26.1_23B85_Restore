@interface SBCaptureButtonLaunchBehavior
- (unint64_t)cameraLaunchIntentInContext:(id)context;
- (unint64_t)prewarmIntentInContext:(id)context;
@end

@implementation SBCaptureButtonLaunchBehavior

- (unint64_t)cameraLaunchIntentInContext:(id)context
{
  contextCopy = context;
  if ([contextCopy event] == 2)
  {
    gesture = [contextCopy gesture];
    if ((gesture - 1) < 2)
    {
      goto LABEL_5;
    }

    if (gesture == 3)
    {
      policy = [contextCopy policy];
      if ([policy isVisionIntelligenceEnabled])
      {
        v6 = 5;
      }

      else
      {
        v6 = 1;
      }

      goto LABEL_12;
    }

    if (gesture == 4)
    {
LABEL_5:
      policy = [contextCopy captureAppBundleID];
      if (policy)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

LABEL_12:

      goto LABEL_13;
    }
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (unint64_t)prewarmIntentInContext:(id)context
{
  contextCopy = context;
  if ([contextCopy event] != 1)
  {
    v5 = 0;
    goto LABEL_23;
  }

  gesture = [contextCopy gesture];
  v5 = 0;
  if (gesture > 2)
  {
    if (gesture != 3)
    {
      if (gesture != 4)
      {
        goto LABEL_23;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (gesture != 1)
    {
      if (gesture != 2)
      {
        goto LABEL_23;
      }

LABEL_9:
      if ([contextCopy isPrewarmLockoutActive])
      {
        v5 = 1;
      }

      else
      {
        captureAppBundleID = [contextCopy captureAppBundleID];
        if (captureAppBundleID)
        {
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }
      }

      goto LABEL_23;
    }

    captureAppBundleID2 = [contextCopy captureAppBundleID];

    if (captureAppBundleID2)
    {
      if ([contextCopy isPrewarmLockoutActive])
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      goto LABEL_23;
    }
  }

  policy = [contextCopy policy];
  if ([policy isVisionIntelligenceEnabled])
  {
    v5 = 3;
  }

  else
  {
    v5 = 1;
  }

LABEL_23:
  return v5;
}

@end