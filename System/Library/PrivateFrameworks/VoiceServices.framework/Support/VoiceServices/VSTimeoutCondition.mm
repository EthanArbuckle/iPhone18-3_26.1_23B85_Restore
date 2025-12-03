@interface VSTimeoutCondition
- (BOOL)_waitForTimeInterval:(double)interval;
- (BOOL)wait;
- (VSTimeoutCondition)initWithTimeoutValue:(double)value;
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
  refreshTimeoutCondition = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [refreshTimeoutCondition lock];

  self->_shouldStop = 1;
  refreshTimeoutCondition2 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [refreshTimeoutCondition2 signal];

  refreshTimeoutCondition3 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [refreshTimeoutCondition3 unlock];
}

- (void)refresh
{
  refreshTimeoutCondition = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [refreshTimeoutCondition lock];

  refreshTimeoutCondition2 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [refreshTimeoutCondition2 signal];

  refreshTimeoutCondition3 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [refreshTimeoutCondition3 unlock];
}

- (BOOL)_waitForTimeInterval:(double)interval
{
  refreshTimeoutCondition = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [refreshTimeoutCondition lock];

  refreshTimeoutCondition2 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:interval];
  v8 = [refreshTimeoutCondition2 waitUntilDate:v7];

  refreshTimeoutCondition3 = [(VSTimeoutCondition *)self refreshTimeoutCondition];
  [refreshTimeoutCondition3 unlock];

  return v8;
}

- (VSTimeoutCondition)initWithTimeoutValue:(double)value
{
  v9.receiver = self;
  v9.super_class = VSTimeoutCondition;
  v4 = [(VSTimeoutCondition *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_timeoutValue = value;
    v6 = objc_alloc_init(MEMORY[0x277CCA928]);
    refreshTimeoutCondition = v5->_refreshTimeoutCondition;
    v5->_refreshTimeoutCondition = v6;

    v5->_shouldStop = 0;
  }

  return v5;
}

@end