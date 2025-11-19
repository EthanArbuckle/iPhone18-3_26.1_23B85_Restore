@interface HDSPChargingReminderWaitingState
- (id)expirationDate;
@end

@implementation HDSPChargingReminderWaitingState

- (id)expirationDate
{
  v2 = [(HKSPStateMachineState *)self stateMachine];
  v3 = [v2 infoProvider];

  v4 = [v3 currentDate];
  v5 = [v3 monitoringWindowAfterDate:v4];
  v6 = [v5 startDate];

  return v6;
}

@end