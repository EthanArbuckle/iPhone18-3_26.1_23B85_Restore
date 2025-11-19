@interface SiriAnalyticsDerivativeClock
- (SiriAnalyticsDerivativeClock)initWithClockIdentifier:(id)a3 isolatedStreamUUID:(id)a4 timestampOffset:(unint64_t)a5 rootClock:(id)a6;
@end

@implementation SiriAnalyticsDerivativeClock

- (SiriAnalyticsDerivativeClock)initWithClockIdentifier:(id)a3 isolatedStreamUUID:(id)a4 timestampOffset:(unint64_t)a5 rootClock:(id)a6
{
  v11 = a4;
  v12 = a6;
  v13 = a3;
  v14 = mach_absolute_time();
  v17.receiver = self;
  v17.super_class = SiriAnalyticsDerivativeClock;
  v15 = [(SiriAnalyticsLogicalClock *)&v17 initWithClockIdentifier:v13 timestampOffset:a5 startedOn:v14];

  if (v15)
  {
    objc_storeWeak(&v15->_rootClock, v12);
    objc_storeStrong(&v15->_isolatedStreamUUID, a4);
  }

  return v15;
}

@end