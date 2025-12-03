@interface SBFaceIDCoachingConditionRecipe
- (BOOL)_overrideCoachingConditionEnabled;
- (void)_setOverrideCoachingConditionEnabled:(BOOL)enabled;
- (void)_setOverrideCoachingEvent:(unint64_t)event;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBFaceIDCoachingConditionRecipe

- (void)handleVolumeIncrease
{
  if (![(SBFaceIDCoachingConditionRecipe *)self _overrideCoachingConditionEnabled])
  {
    [(SBFaceIDCoachingConditionRecipe *)self _setOverrideCoachingConditionEnabled:1];
  }

  if ((handleVolumeIncrease_coachingEvent + 1) <= 0x16)
  {
    v3 = handleVolumeIncrease_coachingEvent + 1;
  }

  else
  {
    v3 = 16;
  }

  handleVolumeIncrease_coachingEvent = v3;

  [(SBFaceIDCoachingConditionRecipe *)self _setOverrideCoachingEvent:?];
}

- (void)handleVolumeDecrease
{
  v3 = [(SBFaceIDCoachingConditionRecipe *)self _overrideCoachingConditionEnabled]^ 1;

  [(SBFaceIDCoachingConditionRecipe *)self _setOverrideCoachingConditionEnabled:v3];
}

- (void)_setOverrideCoachingConditionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  rootSettings = [MEMORY[0x277D02C20] rootSettings];
  pearlSettings = [rootSettings pearlSettings];
  [pearlSettings setOverrideCoachingConditionEnabled:enabledCopy];
}

- (BOOL)_overrideCoachingConditionEnabled
{
  rootSettings = [MEMORY[0x277D02C20] rootSettings];
  pearlSettings = [rootSettings pearlSettings];
  overrideCoachingConditionEnabled = [pearlSettings overrideCoachingConditionEnabled];

  return overrideCoachingConditionEnabled;
}

- (void)_setOverrideCoachingEvent:(unint64_t)event
{
  rootSettings = [MEMORY[0x277D02C20] rootSettings];
  pearlSettings = [rootSettings pearlSettings];
  [pearlSettings setOverrideCoachingBiometricEvent:event];
}

@end