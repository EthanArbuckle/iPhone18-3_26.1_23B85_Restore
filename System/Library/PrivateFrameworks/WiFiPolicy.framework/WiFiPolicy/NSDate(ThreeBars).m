@interface NSDate(ThreeBars)
- (id)dateByAddingDays:()ThreeBars;
@end

@implementation NSDate(ThreeBars)

- (id)dateByAddingDays:()ThreeBars
{
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 components:28 fromDate:a1];
  v8 = [v6 dateFromComponents:v7];
  v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v9 setDay:a3];
  v10 = [v6 dateByAddingComponents:v9 toDate:v8 options:0];

  objc_autoreleasePoolPop(v5);

  return v10;
}

@end