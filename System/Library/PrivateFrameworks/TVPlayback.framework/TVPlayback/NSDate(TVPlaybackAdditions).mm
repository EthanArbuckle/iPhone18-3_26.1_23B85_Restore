@interface NSDate(TVPlaybackAdditions)
+ (id)tvp_dateWithMillisecondsSince1970:()TVPlaybackAdditions;
- (BOOL)_isEqualToDateIgnoringTime:()TVPlaybackAdditions;
- (id)tvp_dateByAddingDays:()TVPlaybackAdditions;
- (id)tvp_dateCeiledToNearestMinute:()TVPlaybackAdditions;
- (id)tvp_dateFlooredToNearestMinute:()TVPlaybackAdditions;
- (uint64_t)tvp_isToday;
- (uint64_t)tvp_isTomorrow;
- (uint64_t)tvp_isYesterday;
@end

@implementation NSDate(TVPlaybackAdditions)

+ (id)tvp_dateWithMillisecondsSince1970:()TVPlaybackAdditions
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [[self alloc] initWithTimeIntervalSince1970:{objc_msgSend(v4, "longLongValue") / 1000.0}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tvp_dateFlooredToNearestMinute:()TVPlaybackAdditions
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar components:32960 fromDate:self];
  minute = [v6 minute];
  v8 = minute;
  v9 = minute / a3;
  v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v10 setMinute:v9 * a3 - v8];
  [v10 setSecond:{-objc_msgSend(v6, "second")}];
  [v10 setNanosecond:{-objc_msgSend(v6, "nanosecond")}];
  v11 = [currentCalendar dateByAddingComponents:v10 toDate:self options:0];

  return v11;
}

- (id)tvp_dateCeiledToNearestMinute:()TVPlaybackAdditions
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar components:32960 fromDate:self];
  minute = [v6 minute];
  second = [v6 second];
  nanosecond = [v6 nanosecond];
  v10 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v11 = v10;
  if (minute % a3)
  {
    v12 = 0;
  }

  else
  {
    v12 = second <= 0;
  }

  if (!v12 || !second && nanosecond >= 1)
  {
    [v10 setMinute:a3 + a3 * (minute / a3) - minute];
  }

  [v11 setSecond:-second];
  [v11 setNanosecond:-nanosecond];
  v13 = [currentCalendar dateByAddingComponents:v11 toDate:self options:0];

  return v13;
}

- (id)tvp_dateByAddingDays:()TVPlaybackAdditions
{
  v5 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v5 setDay:a3];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [currentCalendar dateByAddingComponents:v5 toDate:self options:0];

  return v7;
}

- (uint64_t)tvp_isToday
{
  date = [MEMORY[0x277CBEAA8] date];
  v3 = [self _isEqualToDateIgnoringTime:date];

  return v3;
}

- (uint64_t)tvp_isTomorrow
{
  date = [MEMORY[0x277CBEAA8] date];
  v3 = [date tvp_dateByAddingDays:1];
  v4 = [self _isEqualToDateIgnoringTime:v3];

  return v4;
}

- (uint64_t)tvp_isYesterday
{
  date = [MEMORY[0x277CBEAA8] date];
  v3 = [date tvp_dateBySubtractingDays:1];
  v4 = [self _isEqualToDateIgnoringTime:v3];

  return v4;
}

- (BOOL)_isEqualToDateIgnoringTime:()TVPlaybackAdditions
{
  v4 = MEMORY[0x277CBEA80];
  v5 = a3;
  currentCalendar = [v4 currentCalendar];
  v7 = [currentCalendar components:28 fromDate:self];
  v8 = [currentCalendar components:28 fromDate:v5];

  year = [v7 year];
  if (year == [v8 year] && (v10 = objc_msgSend(v7, "month"), v10 == objc_msgSend(v8, "month")))
  {
    v11 = [v7 day];
    v12 = v11 == [v8 day];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end