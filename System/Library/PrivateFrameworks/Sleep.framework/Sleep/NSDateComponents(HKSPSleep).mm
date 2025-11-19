@interface NSDateComponents(HKSPSleep)
- (id)hksp_description;
- (id)hksp_timeComponents;
- (uint64_t)hksp_compareHourAndMinuteComponents:()HKSPSleep;
@end

@implementation NSDateComponents(HKSPSleep)

- (id)hksp_description
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([a1 year] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(a1, "month") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(a1, "day") != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"%04ld-%02ld-%02ld", objc_msgSend(a1, "year"), objc_msgSend(a1, "month"), objc_msgSend(a1, "day")];
  }

  if ([a1 hour] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(a1, "minute") != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@" %ld:%02ld", objc_msgSend(a1, "hour"), objc_msgSend(a1, "minute")];
  }

  v3 = [v2 hk_stripLeadingTrailingWhitespace];

  return v3;
}

- (uint64_t)hksp_compareHourAndMinuteComponents:()HKSPSleep
{
  v5 = a3;
  if ([a1 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"NSDateComponents+HKSPSleep.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"self.hour != NSDateComponentUndefined"}];
  }

  if ([a1 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"NSDateComponents+HKSPSleep.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"self.minute != NSDateComponentUndefined"}];
  }

  if ([v5 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:a1 file:@"NSDateComponents+HKSPSleep.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"otherDateComponents.hour != NSDateComponentUndefined"}];
  }

  if ([v5 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"NSDateComponents+HKSPSleep.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"otherDateComponents.minute != NSDateComponentUndefined"}];
  }

  v6 = [a1 hk_hourNumber];
  v7 = [v5 hk_hourNumber];
  v8 = [v6 compare:v7];

  v9 = [a1 hk_minuteNumber];
  v10 = [v5 hk_minuteNumber];
  v11 = [v9 compare:v10];

  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  return v12;
}

- (id)hksp_timeComponents
{
  v2 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v2 setHour:{objc_msgSend(a1, "hour")}];
  [v2 setMinute:{objc_msgSend(a1, "minute")}];

  return v2;
}

@end