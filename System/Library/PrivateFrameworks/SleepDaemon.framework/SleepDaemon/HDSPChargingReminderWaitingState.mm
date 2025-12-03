@interface HDSPChargingReminderWaitingState
- (id)expirationDate;
@end

@implementation HDSPChargingReminderWaitingState

- (id)expirationDate
{
  stateMachine = [(HKSPStateMachineState *)self stateMachine];
  infoProvider = [stateMachine infoProvider];

  currentDate = [infoProvider currentDate];
  v5 = [infoProvider monitoringWindowAfterDate:currentDate];
  startDate = [v5 startDate];

  return startDate;
}

@end