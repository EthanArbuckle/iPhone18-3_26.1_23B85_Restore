@interface VSTimeoutCondition
- (BOOL)_waitForTimeInterval:(double)a3;
- (BOOL)wait;
- (VSTimeoutCondition)initWithTimeoutValue:(double)a3;
- (void)refresh;
- (void)stop;
@end

@implementation VSTimeoutCondition

- (BOOL)wait
{
  do
  {
    [(VSTimeoutCondition *)self timeoutValue];
    v3 = [(VSTimeoutCondition *)self _waitForTimeInterval:?];
  }

  while (v3 && ![(VSTimeoutCondition *)self shouldStop]);
  return v3;
}

- (void)stop
{
  v3 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [v3 lock];

  self->_shouldStop = 1;
  v4 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [v4 signal];

  v5 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [v5 unlock];
}

- (void)refresh
{
  v3 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [v3 lock];

  v4 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [v4 signal];

  v5 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [v5 unlock];
}

- (BOOL)_waitForTimeInterval:(double)a3
{
  v5 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [v5 lock];

  v6 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:a3];
  v8 = [v6 waitUntilDate:v7];

  v9 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [v9 unlock];

  return v8;
}

- (VSTimeoutCondition)initWithTimeoutValue:(double)a3
{
  v9.receiver = self;
  v9.super_class = VSTimeoutCondition;
  v4 = [(VSTimeoutCondition *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeoutValue = a3;
    v6 = objc_alloc_init(MEMORY[0x277CCA928]);
    refreshTimeoutCondition = v5->_refreshTimeoutCondition;
    v5->_refreshTimeoutCondition = v6;

    v5->_shouldStop = 0;
  }

  return v5;
}

@end