@interface NSDate(WiFiKitUI)
- (BOOL)isTodayWithCalendar:()WiFiKitUI;
- (id)stringFromDHCPLeaseExpirationDateWithFormatString:()WiFiKitUI;
@end

@implementation NSDate(WiFiKitUI)

- (id)stringFromDHCPLeaseExpirationDateWithFormatString:()WiFiKitUI
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CCA968]);
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [a1 isTodayWithCalendar:v6];

  if (v7)
  {
    [v5 setTimeStyle:1];
    [v5 setDateStyle:0];
  }

  else
  {
    v8 = [MEMORY[0x277CBEAF8] currentLocale];
    v9 = [v8 localeIdentifier];
    v10 = [v9 isEqualToString:@"en_US"];

    [v5 setDoesRelativeDateFormatting:1];
    if (v4 && v10)
    {
      [v5 setDateStyle:1];
      v11 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v11 setTimeStyle:1];
      v12 = MEMORY[0x277CCACA8];
      v13 = [v5 stringFromDate:a1];
      v14 = [v11 stringFromDate:a1];
      v15 = [v12 stringWithFormat:v4, v13, v14];

      goto LABEL_8;
    }

    [v5 setDateStyle:3];
    [v5 setTimeStyle:1];
  }

  v15 = [v5 stringFromDate:a1];
LABEL_8:

  return v15;
}

- (BOOL)isTodayWithCalendar:()WiFiKitUI
{
  v4 = MEMORY[0x277CBEAA8];
  v5 = a3;
  v6 = [v4 date];
  v7 = [v5 components:30 fromDate:v6];

  v8 = [v5 components:30 fromDate:a1];

  v9 = [v7 day];
  if (v9 == [v8 day] && (v10 = objc_msgSend(v7, "month"), v10 == objc_msgSend(v8, "month")) && (v11 = objc_msgSend(v7, "year"), v11 == objc_msgSend(v8, "year")))
  {
    v12 = [v7 era];
    v13 = v12 == [v8 era];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end