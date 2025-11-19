@interface SBCaptureButtonLaunchBehavior
- (unint64_t)cameraLaunchIntentInContext:(id)a3;
- (unint64_t)prewarmIntentInContext:(id)a3;
@end

@implementation SBCaptureButtonLaunchBehavior

- (unint64_t)cameraLaunchIntentInContext:(id)a3
{
  v3 = a3;
  if ([v3 event] == 2)
  {
    v4 = [v3 gesture];
    if ((v4 - 1) < 2)
    {
      goto LABEL_5;
    }

    if (v4 == 3)
    {
      v5 = [v3 policy];
      if ([v5 isVisionIntelligenceEnabled])
      {
        v6 = 5;
      }

      else
      {
        v6 = 1;
      }

      goto LABEL_12;
    }

    if (v4 == 4)
    {
LABEL_5:
      v5 = [v3 captureAppBundleID];
      if (v5)
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

- (unint64_t)prewarmIntentInContext:(id)a3
{
  v3 = a3;
  if ([v3 event] != 1)
  {
    v5 = 0;
    goto LABEL_23;
  }

  v4 = [v3 gesture];
  v5 = 0;
  if (v4 > 2)
  {
    if (v4 != 3)
    {
      if (v4 != 4)
      {
        goto LABEL_23;
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (v4 != 1)
    {
      if (v4 != 2)
      {
        goto LABEL_23;
      }

LABEL_9:
      if ([v3 isPrewarmLockoutActive])
      {
        v5 = 1;
      }

      else
      {
        v6 = [v3 captureAppBundleID];
        if (v6)
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

    v7 = [v3 captureAppBundleID];

    if (v7)
    {
      if ([v3 isPrewarmLockoutActive])
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

  v8 = [v3 policy];
  if ([v8 isVisionIntelligenceEnabled])
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