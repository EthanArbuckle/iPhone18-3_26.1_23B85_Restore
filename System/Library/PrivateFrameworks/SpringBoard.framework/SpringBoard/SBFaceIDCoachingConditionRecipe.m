@interface SBFaceIDCoachingConditionRecipe
- (BOOL)_overrideCoachingConditionEnabled;
- (void)_setOverrideCoachingConditionEnabled:(BOOL)a3;
- (void)_setOverrideCoachingEvent:(unint64_t)a3;
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

- (void)_setOverrideCoachingConditionEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D02C20] rootSettings];
  v4 = [v5 pearlSettings];
  [v4 setOverrideCoachingConditionEnabled:v3];
}

- (BOOL)_overrideCoachingConditionEnabled
{
  v2 = [MEMORY[0x277D02C20] rootSettings];
  v3 = [v2 pearlSettings];
  v4 = [v3 overrideCoachingConditionEnabled];

  return v4;
}

- (void)_setOverrideCoachingEvent:(unint64_t)a3
{
  v5 = [MEMORY[0x277D02C20] rootSettings];
  v4 = [v5 pearlSettings];
  [v4 setOverrideCoachingBiometricEvent:a3];
}

@end