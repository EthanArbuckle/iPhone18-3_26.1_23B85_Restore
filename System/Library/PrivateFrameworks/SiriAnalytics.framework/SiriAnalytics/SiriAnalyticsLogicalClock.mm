@interface SiriAnalyticsLogicalClock
- (BOOL)containsTimestamp:(unint64_t)a3;
- (SiriAnalyticsLogicalClock)initWithClockIdentifier:(id)a3 timestampOffset:(unint64_t)a4 startedOn:(unint64_t)a5;
- (id)description;
- (id)logicalTimestampForMachAbsoluteTime:(unint64_t)a3;
- (void)stopClock;
@end

@implementation SiriAnalyticsLogicalClock

- (BOOL)containsTimestamp:(unint64_t)a3
{
  if ([(SiriAnalyticsLogicalClockStatistics *)self->_clockStatistics startedOn]> a3)
  {
    return 0;
  }

  if ([(SiriAnalyticsLogicalClockStatistics *)self->_clockStatistics endedOn])
  {
    return [(SiriAnalyticsLogicalClockStatistics *)self->_clockStatistics endedOn]>= a3;
  }

  return 1;
}

- (void)stopClock
{
  clockStatistics = self->_clockStatistics;
  v3 = mach_absolute_time();

  [(SiriAnalyticsLogicalClockStatistics *)clockStatistics setEndedOn:v3];
}

- (id)logicalTimestampForMachAbsoluteTime:(unint64_t)a3
{
  v3 = [[SiriAnalyticsLogicalTimeStamp alloc] initWithMachAbsoluteTime:self->_timestampOffset + a3 clockIdentifier:self->_clockIdentifier];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p clockIdentifier: %@>", v5, self, self->_clockIdentifier];

  return v6;
}

- (SiriAnalyticsLogicalClock)initWithClockIdentifier:(id)a3 timestampOffset:(unint64_t)a4 startedOn:(unint64_t)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = SiriAnalyticsLogicalClock;
  v9 = [(SiriAnalyticsLogicalClock *)&v15 init];
  if (v9)
  {
    v10 = [v8 copy];
    clockIdentifier = v9->_clockIdentifier;
    v9->_clockIdentifier = v10;

    v9->_timestampOffset = a4;
    v12 = objc_alloc_init(SiriAnalyticsLogicalClockStatistics);
    clockStatistics = v9->_clockStatistics;
    v9->_clockStatistics = v12;

    [(SiriAnalyticsLogicalClockStatistics *)v9->_clockStatistics setStartedOn:a5];
  }

  return v9;
}

@end