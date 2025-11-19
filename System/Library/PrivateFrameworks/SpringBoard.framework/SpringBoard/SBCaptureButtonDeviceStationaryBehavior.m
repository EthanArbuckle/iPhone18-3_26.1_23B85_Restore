@interface SBCaptureButtonDeviceStationaryBehavior
- (BOOL)_enabledInContext:(id)a3;
- (BOOL)_isWithinDebouncePeriod:(id)a3;
- (unint64_t)cameraLaunchIntentInContext:(id)a3;
- (unint64_t)coachIntentInContext:(id)a3;
@end

@implementation SBCaptureButtonDeviceStationaryBehavior

- (unint64_t)cameraLaunchIntentInContext:(id)a3
{
  v4 = a3;
  if ([(SBCaptureButtonDeviceStationaryBehavior *)self _enabledInContext:v4])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__SBCaptureButtonDeviceStationaryBehavior_cameraLaunchIntentInContext___block_invoke;
    v11[3] = &unk_2783A9500;
    v5 = v4;
    v12 = v5;
    v6 = MEMORY[0x223D6F7F0](v11);
    if ([v5 event] == 2)
    {
      v7 = [v5 gesture];
      if ((v7 - 1) < 2)
      {
        goto LABEL_6;
      }

      if (v7 == 3)
      {
        if ([(SBCaptureButtonDeviceStationaryBehavior *)self _isWithinDebouncePeriod:v5])
        {
          v9 = [v5 policy];
          if ([v9 isVisionIntelligenceEnabled])
          {
            v8 = 5;
          }

          else
          {
            v8 = 0;
          }

          goto LABEL_16;
        }

        goto LABEL_15;
      }

      if (v7 == 4)
      {
LABEL_6:
        if ([(SBCaptureButtonDeviceStationaryBehavior *)self _isWithinDebouncePeriod:v5])
        {
          v8 = 2;
LABEL_16:

          goto LABEL_17;
        }

LABEL_15:
        v8 = v6[2](v6);
        goto LABEL_16;
      }
    }

    v8 = 0;
    goto LABEL_16;
  }

  v8 = 0;
LABEL_17:

  return v8;
}

- (unint64_t)coachIntentInContext:(id)a3
{
  v4 = a3;
  v5 = -[SBCaptureButtonDeviceStationaryBehavior cameraLaunchIntentInContext:](self, "cameraLaunchIntentInContext:", v4) == 1 && [v4 event] == 2;

  return v5;
}

- (BOOL)_isWithinDebouncePeriod:(id)a3
{
  v3 = a3;
  [v3 timeSinceLastStationarySquelch];
  v5 = v4;
  v6 = [v3 policy];

  [v6 deviceStationaryDetectionStationaryDebounceInterval];
  LOBYTE(v3) = v5 < v7;

  return v3;
}

- (BOOL)_enabledInContext:(id)a3
{
  v3 = a3;
  if ([v3 uiLocked])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v3 policy];
    v4 = [v5 deviceStationaryDetectionEnabledWhenUnlocked];
  }

  v6 = [v3 gesture] == 1 || objc_msgSend(v3, "gesture") == 3;
  v7 = [v3 policy];
  v8 = [v7 deviceStationaryDetectionEnabled];

  if (v8)
  {
    v9 = v6 & v4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end