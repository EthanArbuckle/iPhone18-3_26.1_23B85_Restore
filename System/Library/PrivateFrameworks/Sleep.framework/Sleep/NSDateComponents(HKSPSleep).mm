@interface NSDateComponents(HKSPSleep)
- (id)hksp_description;
- (id)hksp_timeComponents;
- (uint64_t)hksp_compareHourAndMinuteComponents:()HKSPSleep;
@end

@implementation NSDateComponents(HKSPSleep)

- (id)hksp_description
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([self year] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(self, "month") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(self, "day") != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@"%04ld-%02ld-%02ld", objc_msgSend(self, "year"), objc_msgSend(self, "month"), objc_msgSend(self, "day")];
  }

  if ([self hour] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(self, "minute") != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v2 appendFormat:@" %ld:%02ld", objc_msgSend(self, "hour"), objc_msgSend(self, "minute")];
  }

  hk_stripLeadingTrailingWhitespace = [v2 hk_stripLeadingTrailingWhitespace];

  return hk_stripLeadingTrailingWhitespace;
}

- (uint64_t)hksp_compareHourAndMinuteComponents:()HKSPSleep
{
  v5 = a3;
  if ([self hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDateComponents+HKSPSleep.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"self.hour != NSDateComponentUndefined"}];
  }

  if ([self minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSDateComponents+HKSPSleep.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"self.minute != NSDateComponentUndefined"}];
  }

  if ([v5 hour] == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"NSDateComponents+HKSPSleep.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"otherDateComponents.hour != NSDateComponentUndefined"}];
  }

  if ([v5 minute] == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"NSDateComponents+HKSPSleep.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"otherDateComponents.minute != NSDateComponentUndefined"}];
  }

  hk_hourNumber = [self hk_hourNumber];
  hk_hourNumber2 = [v5 hk_hourNumber];
  v8 = [hk_hourNumber compare:hk_hourNumber2];

  hk_minuteNumber = [self hk_minuteNumber];
  hk_minuteNumber2 = [v5 hk_minuteNumber];
  v11 = [hk_minuteNumber compare:hk_minuteNumber2];

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
  [v2 setHour:{objc_msgSend(self, "hour")}];
  [v2 setMinute:{objc_msgSend(self, "minute")}];

  return v2;
}

@end