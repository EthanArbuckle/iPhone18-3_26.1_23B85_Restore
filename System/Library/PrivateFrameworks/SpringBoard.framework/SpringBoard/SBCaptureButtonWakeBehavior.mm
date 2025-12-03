@interface SBCaptureButtonWakeBehavior
- (BOOL)_shouldWake:(id)wake;
- (BOOL)_withinDirectLaunchGracePeriod:(id)period;
- (unint64_t)cameraLaunchIntentInContext:(id)context;
- (unint64_t)prewarmIntentInContext:(id)context;
- (unint64_t)wakeIntentInContext:(id)context;
@end

@implementation SBCaptureButtonWakeBehavior

- (unint64_t)prewarmIntentInContext:(id)context
{
  contextCopy = context;
  if ([contextCopy event] == 1 && objc_msgSend(contextCopy, "gesture") == 1 && (objc_msgSend(contextCopy, "isScreenOn") & 1) == 0)
  {
    policy = [contextCopy policy];
    v4 = [policy isVisionIntelligenceEnabled] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)cameraLaunchIntentInContext:(id)context
{
  contextCopy = context;
  if ([contextCopy event] == 2 && ((v5 = objc_msgSend(contextCopy, "gesture"), v5 == 4) || v5 == 1))
  {
    if ([(SBCaptureButtonWakeBehavior *)self _withinDirectLaunchGracePeriod:contextCopy])
    {
      v6 = 2;
    }

    else
    {
      v6 = [(SBCaptureButtonWakeBehavior *)self _shouldWake:contextCopy];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)wakeIntentInContext:(id)context
{
  contextCopy = context;
  policy = [contextCopy policy];
  wakeEnabled = [policy wakeEnabled];

  if (wakeEnabled && [contextCopy event] == 2)
  {
    v7 = [(SBCaptureButtonWakeBehavior *)self _shouldWake:contextCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldWake:(id)wake
{
  wakeCopy = wake;
  policy = [wakeCopy policy];
  wakeEnabled = [policy wakeEnabled];

  if (wakeEnabled && ([wakeCopy policy], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "wakingBacklightStates"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(wakeCopy, "backlightState")), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, v8, v7, v10) && (objc_msgSend(wakeCopy, "gesture") == 1 || objc_msgSend(wakeCopy, "gesture") == 4) && !-[SBCaptureButtonWakeBehavior _withinDirectLaunchGracePeriod:](self, "_withinDirectLaunchGracePeriod:", wakeCopy))
  {
    v11 = [wakeCopy isVoiceOverScreenCurtainActive] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)_withinDirectLaunchGracePeriod:(id)period
{
  periodCopy = period;
  policy = [periodCopy policy];
  directLaunchAfterUnsuppressEnabled = [policy directLaunchAfterUnsuppressEnabled];

  if (directLaunchAfterUnsuppressEnabled)
  {
    isWithinDirectLaunchGracePeriod = [periodCopy isWithinDirectLaunchGracePeriod];
  }

  else
  {
    isWithinDirectLaunchGracePeriod = 0;
  }

  return isWithinDirectLaunchGracePeriod;
}

@end