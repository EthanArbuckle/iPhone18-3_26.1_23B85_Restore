@interface NSDate(TestFlightCoreAdditions)
- (id)tf_timeFromNow;
@end

@implementation NSDate(TestFlightCoreAdditions)

- (id)tf_timeFromNow
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = objc_alloc_init(MEMORY[0x277CBEAA8]);
  v4 = [currentCalendar components:112 fromDate:v3 toDate:self options:0];

  return v4;
}

@end