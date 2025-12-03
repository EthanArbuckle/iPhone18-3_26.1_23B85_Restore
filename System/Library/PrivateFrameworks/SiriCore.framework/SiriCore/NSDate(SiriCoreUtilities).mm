@interface NSDate(SiriCoreUtilities)
- (BOOL)siriCore_isWithin1HourInterval;
- (BOOL)siriCore_isWithin24HourInterval;
@end

@implementation NSDate(SiriCoreUtilities)

- (BOOL)siriCore_isWithin1HourInterval
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self];
  v4 = v3;

  return fabs(v4) < 3600.0;
}

- (BOOL)siriCore_isWithin24HourInterval
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self];
  v4 = v3;

  return fabs(v4) < 86400.0;
}

@end