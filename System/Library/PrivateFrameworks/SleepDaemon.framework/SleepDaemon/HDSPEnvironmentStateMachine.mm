@interface HDSPEnvironmentStateMachine
- (BOOL)isSystemReady;
- (BOOL)needsDataMigration;
- (HDSPEnvironmentStateMachine)initWithDelegate:(id)delegate infoProvider:(id)provider;
- (void)dataMigrationDidComplete;
- (void)systemDidBecomeReady;
@end

@implementation HDSPEnvironmentStateMachine

- (HDSPEnvironmentStateMachine)initWithDelegate:(id)delegate infoProvider:(id)provider
{
  v15.receiver = self;
  v15.super_class = HDSPEnvironmentStateMachine;
  v4 = [(HKSPStateMachine *)&v15 initWithDelegate:delegate infoProvider:provider];
  if (v4)
  {
    v5 = [(HKSPStateMachineState *)[HDSPEnvironmentNotReadyState alloc] initWithStateMachine:v4];
    notReadyState = v4->_notReadyState;
    v4->_notReadyState = v5;

    v7 = [(HKSPStateMachineState *)[HDSPEnvironmentMigrationState alloc] initWithStateMachine:v4];
    migrationState = v4->_migrationState;
    v4->_migrationState = v7;

    v9 = [(HKSPStateMachineState *)[HDSPEnvironmentReadyState alloc] initWithStateMachine:v4];
    readyState = v4->_readyState;
    v4->_readyState = v9;

    v11 = [(HKSPStateMachineState *)[HDSPEnvironmentDemoState alloc] initWithStateMachine:v4];
    demoState = v4->_demoState;
    v4->_demoState = v11;

    [(HKSPStateMachine *)v4 setInitialState:v4->_notReadyState];
    v13 = v4;
  }

  return v4;
}

- (void)systemDidBecomeReady
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState systemDidBecomeReady];
}

- (void)dataMigrationDidComplete
{
  currentState = [(HKSPStateMachine *)self currentState];
  [currentState dataMigrationDidComplete];
}

- (BOOL)isSystemReady
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  isSystemReady = [infoProvider isSystemReady];

  return isSystemReady;
}

- (BOOL)needsDataMigration
{
  infoProvider = [(HKSPStateMachine *)self infoProvider];
  needsDataMigration = [infoProvider needsDataMigration];

  return needsDataMigration;
}

@end