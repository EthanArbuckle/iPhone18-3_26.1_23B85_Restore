@interface SiriAnalyticsLogicalClock
- (BOOL)containsTimestamp:(unint64_t)timestamp;
- (SiriAnalyticsLogicalClock)initWithClockIdentifier:(id)identifier timestampOffset:(unint64_t)offset startedOn:(unint64_t)on;
- (id)description;
- (id)logicalTimestampForMachAbsoluteTime:(unint64_t)time;
- (void)stopClock;
@end

@implementation SiriAnalyticsLogicalClock

- (BOOL)containsTimestamp:(unint64_t)timestamp
{
  if ([(SiriAnalyticsLogicalClockStatistics *)self->_clockStatistics startedOn]> timestamp)
  {
    return 0;
  }

  if ([(SiriAnalyticsLogicalClockStatistics *)self->_clockStatistics endedOn])
  {
    return [(SiriAnalyticsLogicalClockStatistics *)self->_clockStatistics endedOn]>= timestamp;
  }

  return 1;
}

- (void)stopClock
{
  clockStatistics = self->_clockStatistics;
  v3 = mach_absolute_time();

  [(SiriAnalyticsLogicalClockStatistics *)clockStatistics setEndedOn:v3];
}

- (id)logicalTimestampForMachAbsoluteTime:(unint64_t)time
{
  v3 = [[SiriAnalyticsLogicalTimeStamp alloc] initWithMachAbsoluteTime:self->_timestampOffset + time clockIdentifier:self->_clockIdentifier];

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

- (SiriAnalyticsLogicalClock)initWithClockIdentifier:(id)identifier timestampOffset:(unint64_t)offset startedOn:(unint64_t)on
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SiriAnalyticsLogicalClock;
  v9 = [(SiriAnalyticsLogicalClock *)&v15 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    clockIdentifier = v9->_clockIdentifier;
    v9->_clockIdentifier = v10;

    v9->_timestampOffset = offset;
    v12 = objc_alloc_init(SiriAnalyticsLogicalClockStatistics);
    clockStatistics = v9->_clockStatistics;
    v9->_clockStatistics = v12;

    [(SiriAnalyticsLogicalClockStatistics *)v9->_clockStatistics setStartedOn:on];
  }

  return v9;
}

@end