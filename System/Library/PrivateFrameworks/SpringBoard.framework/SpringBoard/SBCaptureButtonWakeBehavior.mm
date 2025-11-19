@interface SBCaptureButtonWakeBehavior
- (BOOL)_shouldWake:(id)a3;
- (BOOL)_withinDirectLaunchGracePeriod:(id)a3;
- (unint64_t)cameraLaunchIntentInContext:(id)a3;
- (unint64_t)prewarmIntentInContext:(id)a3;
- (unint64_t)wakeIntentInContext:(id)a3;
@end

@implementation SBCaptureButtonWakeBehavior

- (unint64_t)prewarmIntentInContext:(id)a3
{
  v3 = a3;
  if ([v3 event] == 1 && objc_msgSend(v3, "gesture") == 1 && (objc_msgSend(v3, "isScreenOn") & 1) == 0)
  {
    v6 = [v3 policy];
    v4 = [v6 isVisionIntelligenceEnabled] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)cameraLaunchIntentInContext:(id)a3
{
  v4 = a3;
  if ([v4 event] == 2 && ((v5 = objc_msgSend(v4, "gesture"), v5 == 4) || v5 == 1))
  {
    if ([(SBCaptureButtonWakeBehavior *)self _withinDirectLaunchGracePeriod:v4])
    {
      v6 = 2;
    }

    else
    {
      v6 = [(SBCaptureButtonWakeBehavior *)self _shouldWake:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)wakeIntentInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 policy];
  v6 = [v5 wakeEnabled];

  if (v6 && [v4 event] == 2)
  {
    v7 = [(SBCaptureButtonWakeBehavior *)self _shouldWake:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldWake:(id)a3
{
  v4 = a3;
  v5 = [v4 policy];
  v6 = [v5 wakeEnabled];

  if (v6 && ([v4 policy], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "wakingBacklightStates"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v4, "backlightState")), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "containsObject:", v9), v9, v8, v7, v10) && (objc_msgSend(v4, "gesture") == 1 || objc_msgSend(v4, "gesture") == 4) && !-[SBCaptureButtonWakeBehavior _withinDirectLaunchGracePeriod:](self, "_withinDirectLaunchGracePeriod:", v4))
  {
    v11 = [v4 isVoiceOverScreenCurtainActive] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)_withinDirectLaunchGracePeriod:(id)a3
{
  v3 = a3;
  v4 = [v3 policy];
  v5 = [v4 directLaunchAfterUnsuppressEnabled];

  if (v5)
  {
    v6 = [v3 isWithinDirectLaunchGracePeriod];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end