@interface SBHomeButtonPressMesaUnlockTrigger
- (BOOL)bioUnlock;
- (id)succinctDescriptionBuilder;
- (void)menuButtonUp;
- (void)screenOff;
- (void)significantUserInteractionOccurred;
@end

@implementation SBHomeButtonPressMesaUnlockTrigger

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBHomeButtonPressMesaUnlockTrigger;
  succinctDescriptionBuilder = [(SBMesaUnlockTrigger *)&v7 succinctDescriptionBuilder];
  v4 = [succinctDescriptionBuilder appendBool:*(&self->super._authenticated + 2) withName:@"primed"];
  v5 = [succinctDescriptionBuilder appendBool:*(&self->super._authenticated + 1) withName:@"menuButtonDown"];

  return succinctDescriptionBuilder;
}

- (BOOL)bioUnlock
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(&self->super._authenticated + 1) || *(&self->super._authenticated + 2))
  {
    v3 = SBLogLockScreenMesaUnlockBehaviors();
    v4 = 1;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(&self->super._authenticated + 1);
      v6 = *(&self->super._authenticated + 2);
      v8[0] = 67109376;
      v8[1] = v5;
      v9 = 1024;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBHomeButtonPressMesaUnlockTrigger] unlocking because menuButtonDown: %d primed: %d", v8, 0xEu);
    }
  }

  else
  {
    v3 = SBLogLockScreenMesaUnlockBehaviors();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "[SBHomeButtonPressMesaUnlockTrigger] not unlocking because not primed and menu button up", v8, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)screenOff
{
  v3 = SBLogLockScreenMesaUnlockBehaviors();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBHomeButtonPressMesaUnlockTrigger *)v3 screenOff:v4];
  }

  *(&self->super._authenticated + 2) = 0;
}

- (void)significantUserInteractionOccurred
{
  if (*(&self->super._authenticated + 2))
  {
    v3 = SBLogLockScreenMesaUnlockBehaviors();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(SBHomeButtonPressMesaUnlockTrigger *)v3 significantUserInteractionOccurred:v4];
    }

    *(&self->super._authenticated + 2) = 0;
  }
}

- (void)menuButtonUp
{
  v3 = SBLogLockScreenMesaUnlockBehaviors();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SBHomeButtonPressMesaUnlockTrigger *)v3 menuButtonUp:v4];
  }

  *(&self->super._authenticated + 1) = 0;
  *(&self->super._authenticated + 2) = 1;
}

@end