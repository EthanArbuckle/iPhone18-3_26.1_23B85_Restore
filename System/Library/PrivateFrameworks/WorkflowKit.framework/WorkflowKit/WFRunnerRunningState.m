@interface WFRunnerRunningState
- (BOOL)shouldStartTimer;
- (WFRunnerRunningState)initWithEnvironment:(int64_t)a3 isPersonalAutomation:(BOOL)a4;
- (double)timeoutDuration;
- (void)cancel;
@end

@implementation WFRunnerRunningState

- (BOOL)shouldStartTimer
{
  v3 = [(WFRunnerRunningState *)self environment];
  v4 = [(WFRunnerRunningState *)self environment];
  if (v3 == 1 || v4 == 3)
  {
    return 1;
  }

  return [(WFRunnerRunningState *)self isPersonalAutomation];
}

- (void)cancel
{
  v2 = [(WFRunnerRunningState *)self timeoutHandler];
  v2[2]();
}

- (double)timeoutDuration
{
  v2 = [(WFRunnerRunningState *)self environment];
  v3 = MEMORY[0x1E69E1208];
  if (v2 != 1)
  {
    v3 = MEMORY[0x1E69E1200];
  }

  return *v3;
}

- (WFRunnerRunningState)initWithEnvironment:(int64_t)a3 isPersonalAutomation:(BOOL)a4
{
  v9.receiver = self;
  v9.super_class = WFRunnerRunningState;
  v5 = [(WFRunnerRunningState *)&v9 init];
  v6 = v5;
  if (v5)
  {
    v5->_isPersonalAutomation = a4;
    v7 = v5;
  }

  return v6;
}

@end