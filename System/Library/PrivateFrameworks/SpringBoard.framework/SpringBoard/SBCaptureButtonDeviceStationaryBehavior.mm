@interface SBCaptureButtonDeviceStationaryBehavior
- (BOOL)_enabledInContext:(id)context;
- (BOOL)_isWithinDebouncePeriod:(id)period;
- (unint64_t)cameraLaunchIntentInContext:(id)context;
- (unint64_t)coachIntentInContext:(id)context;
@end

@implementation SBCaptureButtonDeviceStationaryBehavior

- (unint64_t)cameraLaunchIntentInContext:(id)context
{
  contextCopy = context;
  if ([(SBCaptureButtonDeviceStationaryBehavior *)self _enabledInContext:contextCopy])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__SBCaptureButtonDeviceStationaryBehavior_cameraLaunchIntentInContext___block_invoke;
    v11[3] = &unk_2783A9500;
    v5 = contextCopy;
    v12 = v5;
    v6 = MEMORY[0x223D6F7F0](v11);
    if ([v5 event] == 2)
    {
      gesture = [v5 gesture];
      if ((gesture - 1) < 2)
      {
        goto LABEL_6;
      }

      if (gesture == 3)
      {
        if ([(SBCaptureButtonDeviceStationaryBehavior *)self _isWithinDebouncePeriod:v5])
        {
          policy = [v5 policy];
          if ([policy isVisionIntelligenceEnabled])
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

      if (gesture == 4)
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

- (unint64_t)coachIntentInContext:(id)context
{
  contextCopy = context;
  v5 = -[SBCaptureButtonDeviceStationaryBehavior cameraLaunchIntentInContext:](self, "cameraLaunchIntentInContext:", contextCopy) == 1 && [contextCopy event] == 2;

  return v5;
}

- (BOOL)_isWithinDebouncePeriod:(id)period
{
  periodCopy = period;
  [periodCopy timeSinceLastStationarySquelch];
  v5 = v4;
  policy = [periodCopy policy];

  [policy deviceStationaryDetectionStationaryDebounceInterval];
  LOBYTE(periodCopy) = v5 < v7;

  return periodCopy;
}

- (BOOL)_enabledInContext:(id)context
{
  contextCopy = context;
  if ([contextCopy uiLocked])
  {
    deviceStationaryDetectionEnabledWhenUnlocked = 1;
  }

  else
  {
    policy = [contextCopy policy];
    deviceStationaryDetectionEnabledWhenUnlocked = [policy deviceStationaryDetectionEnabledWhenUnlocked];
  }

  v6 = [contextCopy gesture] == 1 || objc_msgSend(contextCopy, "gesture") == 3;
  policy2 = [contextCopy policy];
  deviceStationaryDetectionEnabled = [policy2 deviceStationaryDetectionEnabled];

  if (deviceStationaryDetectionEnabled)
  {
    v9 = v6 & deviceStationaryDetectionEnabledWhenUnlocked;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end