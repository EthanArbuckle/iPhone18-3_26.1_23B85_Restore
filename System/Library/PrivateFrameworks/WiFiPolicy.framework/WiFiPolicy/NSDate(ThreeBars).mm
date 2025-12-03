@interface NSDate(ThreeBars)
- (id)dateByAddingDays:()ThreeBars;
@end

@implementation NSDate(ThreeBars)

- (id)dateByAddingDays:()ThreeBars
{
  v5 = objc_autoreleasePoolPush();
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar components:28 fromDate:self];
  v8 = [currentCalendar dateFromComponents:v7];
  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v9 setDay:a3];
  v10 = [currentCalendar dateByAddingComponents:v9 toDate:v8 options:0];

  objc_autoreleasePoolPop(v5);

  return v10;
}

@end