@interface SiriAnalyticsLogicalClockStatistics
- (unint64_t)clockAgeInNanoseconds;
- (unint64_t)utilizationLifetimeInNanoseconds;
- (void)noteMessageEmitted;
@end

@implementation SiriAnalyticsLogicalClockStatistics

- (void)noteMessageEmitted
{
  v3 = mach_absolute_time();
  v4 = self->_messagesEmitted + 1;
  self->_lastMessageEmittedOn = v3;
  self->_messagesEmitted = v4;
  self->_bookkeepingDirtied = 1;
}

- (unint64_t)utilizationLifetimeInNanoseconds
{
  lastMessageEmittedOn = self->_lastMessageEmittedOn;
  if (!lastMessageEmittedOn)
  {
    return 0;
  }

  if (_SiriAnalyticsMachAbsoluteTimeRate_onceToken[0] != -1)
  {
    dispatch_once(_SiriAnalyticsMachAbsoluteTimeRate_onceToken, &__block_literal_global);
  }

  return (*&_SiriAnalyticsMachAbsoluteTimeRate_rate * lastMessageEmittedOn) - (*&_SiriAnalyticsMachAbsoluteTimeRate_rate * self->_startedOn);
}

- (unint64_t)clockAgeInNanoseconds
{
  endedOn = self->_endedOn;
  if (!endedOn)
  {
    return 0;
  }

  if (_SiriAnalyticsMachAbsoluteTimeRate_onceToken[0] != -1)
  {
    dispatch_once(_SiriAnalyticsMachAbsoluteTimeRate_onceToken, &__block_literal_global);
  }

  return (*&_SiriAnalyticsMachAbsoluteTimeRate_rate * endedOn) - (*&_SiriAnalyticsMachAbsoluteTimeRate_rate * self->_startedOn);
}

@end