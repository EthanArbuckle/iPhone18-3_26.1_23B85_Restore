@interface SiriAnalyticsDerivativeClock
- (SiriAnalyticsDerivativeClock)initWithClockIdentifier:(id)identifier isolatedStreamUUID:(id)d timestampOffset:(unint64_t)offset rootClock:(id)clock;
@end

@implementation SiriAnalyticsDerivativeClock

- (SiriAnalyticsDerivativeClock)initWithClockIdentifier:(id)identifier isolatedStreamUUID:(id)d timestampOffset:(unint64_t)offset rootClock:(id)clock
{
  dCopy = d;
  clockCopy = clock;
  identifierCopy = identifier;
  v14 = mach_absolute_time();
  v17.receiver = self;
  v17.super_class = SiriAnalyticsDerivativeClock;
  v15 = [(SiriAnalyticsLogicalClock *)&v17 initWithClockIdentifier:identifierCopy timestampOffset:offset startedOn:v14];

  if (v15)
  {
    objc_storeWeak(&v15->_rootClock, clockCopy);
    objc_storeStrong(&v15->_isolatedStreamUUID, d);
  }

  return v15;
}

@end