@interface SBWakeDebounceFilter
- (BOOL)wakeEventOccurred;
- (double)_currentTime;
- (void)_reconfigureFilter;
- (void)setIntervalActivationLimit:(unint64_t)a3;
@end

@implementation SBWakeDebounceFilter

- (void)setIntervalActivationLimit:(unint64_t)a3
{
  if (self->_intervalActivationLimit != a3)
  {
    self->_intervalActivationLimit = a3;
    [(SBWakeDebounceFilter *)self _reconfigureFilter];
  }
}

- (BOOL)wakeEventOccurred
{
  if (!self->_intervalActivationLimit)
  {
    return 1;
  }

  v3 = [(NSMutableArray *)self->_wakeEvents count];
  overrideTime = self->_overrideTime;
  if (overrideTime)
  {
    [(NSNumber *)overrideTime doubleValue];
  }

  else
  {
    BSContinuousMachTimeNow();
  }

  v7 = v5;
  v8 = [(NSMutableArray *)self->_wakeEvents objectAtIndexedSubscript:self->_oldestWakeEventIndex % v3];
  [v8 doubleValue];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  wakeEvents = self->_wakeEvents;
  oldestWakeEventIndex = self->_oldestWakeEventIndex;
  self->_oldestWakeEventIndex = oldestWakeEventIndex + 1;
  [(NSMutableArray *)wakeEvents setObject:v9 atIndexedSubscript:oldestWakeEventIndex % v3];

  return BSFloatGreaterThanFloat();
}

- (void)_reconfigureFilter
{
  if (a1)
  {
    v2 = [*(a1 + 8) count];
    v3 = *(a1 + 24);
    if (v3 != v2)
    {
      v4 = v2;
      v5 = objc_autoreleasePoolPush();
      v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v3];
      if (v4 >= 1)
      {
        for (i = 0; i != v4; ++i)
        {
          v8 = [*(a1 + 8) objectAtIndexedSubscript:(i + *(a1 + 16)) % v4];
          [v6 addObject:v8];
        }
      }

      v9 = v3 - v4;
      if (v3 > v4)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
        do
        {
          [v6 addObject:v10];
          --v9;
        }

        while (v9);
      }

      [*(a1 + 8) removeAllObjects];
      v11 = *(a1 + 8);
      *(a1 + 8) = v6;

      *(a1 + 16) = v4;

      objc_autoreleasePoolPop(v5);
    }
  }
}

- (double)_currentTime
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = *(a1 + 32);
  if (v1)
  {
    [v1 doubleValue];
  }

  else
  {
    BSContinuousMachTimeNow();
  }

  return result;
}

@end