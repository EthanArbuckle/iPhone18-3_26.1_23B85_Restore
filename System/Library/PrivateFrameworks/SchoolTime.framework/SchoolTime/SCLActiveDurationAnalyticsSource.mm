@interface SCLActiveDurationAnalyticsSource
- (SCLActiveDurationAnalyticsSource)initWithInitialState:(id)state;
- (unint64_t)secondsSinceContinuousTimestamp:(unint64_t)timestamp;
- (void)commitAnalyticsEventForTransitionFromState:(id)state toState:(id)toState;
- (void)setCurrentState:(id)state;
@end

@implementation SCLActiveDurationAnalyticsSource

- (SCLActiveDurationAnalyticsSource)initWithInitialState:(id)state
{
  stateCopy = state;
  v8.receiver = self;
  v8.super_class = SCLActiveDurationAnalyticsSource;
  v5 = [(SCLActiveDurationAnalyticsSource *)&v8 init];
  v6 = v5;
  if (v5)
  {
    mach_timebase_info(&v5->_timebase);
    [(SCLActiveDurationAnalyticsSource *)v6 setCurrentState:stateCopy];
  }

  return v6;
}

- (void)setCurrentState:(id)state
{
  stateCopy = state;
  v4 = self->_currentState;
  v5 = [stateCopy copy];
  currentState = self->_currentState;
  self->_currentState = v5;

  v7 = [(SCLActiveDurationAnalyticsSource *)self isActiveForState:v4];
  v8 = [(SCLActiveDurationAnalyticsSource *)self isActiveForState:stateCopy];
  if (v7 != v8)
  {
    if (v8)
    {
      self->_activeStartTimestamp = mach_continuous_approximate_time();
    }

    else
    {
      [(SCLActiveDurationAnalyticsSource *)self commitAnalyticsEventForTransitionFromState:v4 toState:stateCopy];
      [(SCLActiveDurationAnalyticsSource *)self setActiveStartTimestamp:0];
    }
  }
}

- (void)commitAnalyticsEventForTransitionFromState:(id)state toState:(id)toState
{
  stateCopy = state;
  [(SCLActiveDurationAnalyticsSource *)self secondsSinceContinuousTimestamp:[(SCLActiveDurationAnalyticsSource *)self activeStartTimestamp]];
  v6 = stateCopy;
  AnalyticsSendEventLazy();
}

id __87__SCLActiveDurationAnalyticsSource_commitAnalyticsEventForTransitionFromState_toState___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"scheduleEnabled";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isScheduleEnabled")}];
  v9[0] = v2;
  v8[1] = @"inSchedule";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "isInSchedule")}];
  v9[1] = v3;
  v8[2] = @"duration";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(a1 + 40)];
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (unint64_t)secondsSinceContinuousTimestamp:(unint64_t)timestamp
{
  v5 = mach_continuous_approximate_time();
  if (v5 < timestamp)
  {
    return 0;
  }

  return [(SCLActiveDurationAnalyticsSource *)self secondsWithMachTimeInterval:v5 - timestamp];
}

@end