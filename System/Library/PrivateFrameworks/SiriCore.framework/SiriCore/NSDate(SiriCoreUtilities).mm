@interface NSDate(SiriCoreUtilities)
- (BOOL)siriCore_isWithin1HourInterval;
- (BOOL)siriCore_isWithin24HourInterval;
@end

@implementation NSDate(SiriCoreUtilities)

- (BOOL)siriCore_isWithin1HourInterval
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:a1];
  v4 = v3;

  return fabs(v4) < 3600.0;
}

- (BOOL)siriCore_isWithin24HourInterval
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:a1];
  v4 = v3;

  return fabs(v4) < 86400.0;
}

@end