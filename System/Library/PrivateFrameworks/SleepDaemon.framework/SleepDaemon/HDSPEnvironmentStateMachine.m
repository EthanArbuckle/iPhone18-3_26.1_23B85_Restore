@interface HDSPEnvironmentStateMachine
- (BOOL)isSystemReady;
- (BOOL)needsDataMigration;
- (HDSPEnvironmentStateMachine)initWithDelegate:(id)a3 infoProvider:(id)a4;
- (void)dataMigrationDidComplete;
- (void)systemDidBecomeReady;
@end

@implementation HDSPEnvironmentStateMachine

- (HDSPEnvironmentStateMachine)initWithDelegate:(id)a3 infoProvider:(id)a4
{
  v15.receiver = self;
  v15.super_class = HDSPEnvironmentStateMachine;
  v4 = [(HKSPStateMachine *)&v15 initWithDelegate:a3 infoProvider:a4];
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
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 systemDidBecomeReady];
}

- (void)dataMigrationDidComplete
{
  v2 = [(HKSPStateMachine *)self currentState];
  [v2 dataMigrationDidComplete];
}

- (BOOL)isSystemReady
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 isSystemReady];

  return v3;
}

- (BOOL)needsDataMigration
{
  v2 = [(HKSPStateMachine *)self infoProvider];
  v3 = [v2 needsDataMigration];

  return v3;
}

@end