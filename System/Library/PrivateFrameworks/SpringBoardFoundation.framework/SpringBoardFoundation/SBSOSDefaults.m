@interface SBSOSDefaults
- (BOOL)clawCanTriggerSOS;
- (BOOL)isAutomaticCallCountdownEnabled;
- (int64_t)lockButtonSOSTriggerCount;
- (void)_bindAndRegisterDefaults;
- (void)lockButtonSOSTriggerCount;
@end

@implementation SBSOSDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disablesForAccessibility"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBDisablesSOSForAccessibility" toDefaultValue:MEMORY[0x1E695E110] options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"performedCheckForTripleClickSOSMigrationAlert"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBPerformedCheckForTripleClickSOSMigrationAlert" toDefaultValue:v4 options:1];
}

- (int64_t)lockButtonSOSTriggerCount
{
  v2 = [getSOSUtilitiesClass() SOSTriggerClickCount];
  if (v2 > 5 || ((1 << v2) & 0x29) == 0)
  {
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(SBSOSDefaults *)v2 lockButtonSOSTriggerCount];
    }

    return -1;
  }

  return v2;
}

- (BOOL)clawCanTriggerSOS
{
  SOSUtilitiesClass = getSOSUtilitiesClass();

  return [SOSUtilitiesClass canTriggerSOSWithVolumeLockHold];
}

- (BOOL)isAutomaticCallCountdownEnabled
{
  SOSUtilitiesClass = getSOSUtilitiesClass();

  return [SOSUtilitiesClass isAutomaticCallCountdownEnabled];
}

- (void)lockButtonSOSTriggerCount
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BEA11000, a2, OS_LOG_TYPE_ERROR, "SBSOSDefaults - Unsupported Lock Button Trigger Click Count: %d.", v2, 8u);
}

@end