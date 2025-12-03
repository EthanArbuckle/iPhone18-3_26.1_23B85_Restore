@interface SWSystemSleepMonitorAggregateState
- (SWSystemSleepMonitorAggregateState)initWithSleepMonitorState:(unint64_t)state stateTimestamp:(unint64_t)timestamp powerManagementPhase:(unint64_t)phase phaseTimestamp:(unint64_t)phaseTimestamp;
- (id)description;
- (id)descriptionForTimestamp:(unint64_t)timestamp;
@end

@implementation SWSystemSleepMonitorAggregateState

- (SWSystemSleepMonitorAggregateState)initWithSleepMonitorState:(unint64_t)state stateTimestamp:(unint64_t)timestamp powerManagementPhase:(unint64_t)phase phaseTimestamp:(unint64_t)phaseTimestamp
{
  v11.receiver = self;
  v11.super_class = SWSystemSleepMonitorAggregateState;
  result = [(SWSystemSleepMonitorAggregateState *)&v11 init];
  if (result)
  {
    result->_sleepMonitorState = state;
    result->_sleepMonitorStateTimestamp = timestamp;
    result->_powerManagementPhase = phase;
    result->_powerManagementPhaseTimestamp = phaseTimestamp;
  }

  return result;
}

- (id)description
{
  v3 = mach_continuous_time();

  return [(SWSystemSleepMonitorAggregateState *)self descriptionForTimestamp:v3];
}

- (id)descriptionForTimestamp:(unint64_t)timestamp
{
  v5 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SWSystemSleepMonitorAggregateState_descriptionForTimestamp___block_invoke;
  v9[3] = &unk_279D43120;
  v6 = v5;
  v10 = v6;
  selfCopy = self;
  timestampCopy = timestamp;
  [v6 appendProem:0 block:v9];
  v7 = [v6 description];

  return v7;
}

id __62__SWSystemSleepMonitorAggregateState_descriptionForTimestamp___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8) - 1;
  if (v3 > 4)
  {
    v4 = @"waking";
  }

  else
  {
    v4 = off_279D43230[v3];
  }

  [v2 appendString:v4 withName:@"SWSleepState"];
  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 16);
  v7 = *(a1 + 48);
  BSTimeDifferenceFromMachTimeToMachTime();
  v8 = [v5 appendTimeInterval:0 withName:0 decomposeUnits:?];
  v9 = __ROR8__(*(*(a1 + 40) + 24) - 3758097008, 4);
  if (v9 > 0xB)
  {
    v10 = @"initialized";
  }

  else
  {
    v10 = off_279D43258[v9];
  }

  [*(a1 + 32) appendString:v10 withName:@"phase"];
  v11 = *(a1 + 32);
  v12 = *(*(a1 + 40) + 32);
  v13 = *(a1 + 48);
  BSTimeDifferenceFromMachTimeToMachTime();
  return [v11 appendTimeInterval:0 withName:0 decomposeUnits:?];
}

@end