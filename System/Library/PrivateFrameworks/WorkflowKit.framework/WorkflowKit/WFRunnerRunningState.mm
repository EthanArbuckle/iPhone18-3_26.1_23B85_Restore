@interface WFRunnerRunningState
- (BOOL)shouldStartTimer;
- (WFRunnerRunningState)initWithEnvironment:(int64_t)environment isPersonalAutomation:(BOOL)automation;
- (double)timeoutDuration;
- (void)cancel;
@end

@implementation WFRunnerRunningState

- (BOOL)shouldStartTimer
{
  environment = [(WFRunnerRunningState *)self environment];
  environment2 = [(WFRunnerRunningState *)self environment];
  if (environment == 1 || environment2 == 3)
  {
    return 1;
  }

  return [(WFRunnerRunningState *)self isPersonalAutomation];
}

- (void)cancel
{
  timeoutHandler = [(WFRunnerRunningState *)self timeoutHandler];
  timeoutHandler[2]();
}

- (double)timeoutDuration
{
  environment = [(WFRunnerRunningState *)self environment];
  v3 = MEMORY[0x1E69E1208];
  if (environment != 1)
  {
    v3 = MEMORY[0x1E69E1200];
  }

  return *v3;
}

- (WFRunnerRunningState)initWithEnvironment:(int64_t)environment isPersonalAutomation:(BOOL)automation
{
  v9.receiver = self;
  v9.super_class = WFRunnerRunningState;
  v5 = [(WFRunnerRunningState *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_isPersonalAutomation = automation;
    v7 = v5;
  }

  return v6;
}

@end