@interface SPUISDateFormatManager
+ (BOOL)date:(id)a3 isBetweenDate:(id)a4 andDate:(id)a5;
+ (BOOL)hasRelativeFormatForDate:(id)a3;
+ (BOOL)isDate:(id)a3 withinTimeInterval:(double)a4 includePast:(BOOL)a5;
+ (id)dyanmicStringFromDate:(id)a3;
+ (id)dynamicDateTimeStringsFromDate:(id)a3;
+ (id)dynamicStringFromDate:(id)a3 isCompact:(BOOL)a4;
+ (id)fullDateTimeStringsFromDate:(id)a3;
+ (id)icalConformingStringFromDate:(id)a3;
+ (id)nextUpcomingDateForDateComponents:(id)a3 fromDate:(id)a4;
+ (id)shortDateTimeStringFromDate:(id)a3 isAllDay:(BOOL)a4 showAllDayString:(BOOL)a5;
+ (id)stringFromBirthdayComponents:(id)a3;
+ (id)stringFromTimeInterval:(double)a3;
+ (id)stringsFromDate:(id)a3 toDate:(id)a4 isAllDay:(BOOL)a5;
+ (id)tomorrow;
+ (void)initialize;
+ (void)overrideLocale:(id)a3;
- (CNDateComponentsFormatter)birthdayDateComponentsFormatter;
- (NSDateComponentsFormatter)dateComponentsFormatter;
- (NSDateFormatter)dateFormatter;
- (NSDateFormatter)dayOfWeekFormatter;
- (NSDateFormatter)longRelativeDateFormatter;
- (NSDateFormatter)mediumRelativeDateFormatter;
- (NSDateFormatter)shortDateTimeFormatter;
- (NSDateFormatter)shortDayOfWeekFormatter;
- (NSDateFormatter)shortRelativeDateFormatter;
- (NSDateFormatter)shortTimeFormatter;
- (NSDateIntervalFormatter)allDayDateFormatter;
- (NSDateIntervalFormatter)dateIntervalFormatter;
- (NSDateIntervalFormatter)mediumDayOfWeekDateIntervalFormatter;
- (NSDateIntervalFormatter)mediumDayOfWeekDateTimeIntervalFormatter;
- (NSDateIntervalFormatter)shortDateIntervalFormatter;
- (NSDateIntervalFormatter)shortDateTimeIntervalFormatter;
- (SPUISDateFormatManager)init;
- (id)allFormatters;
- (id)calendar;
- (id)currentLocale;
- (void)purgeMemory;
@end

@implementation SPUISDateFormatManager

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    sharedDateFormatManager = objc_opt_new();

    MEMORY[0x2821F96F8]();
  }
}

- (SPUISDateFormatManager)init
{
  v5.receiver = self;
  v5.super_class = SPUISDateFormatManager;
  v2 = [(SPUISDateFormatManager *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_purgeMemory name:@"UIApplicationDidReceiveMemoryWarningNotification" object:0];
  }

  return v2;
}

- (void)purgeMemory
{
  birthdayDateComponentsFormatter = self->_birthdayDateComponentsFormatter;
  self->_birthdayDateComponentsFormatter = 0;

  dateComponentsFormatter = self->_dateComponentsFormatter;
  self->_dateComponentsFormatter = 0;

  shortRelativeDateFormatter = self->_shortRelativeDateFormatter;
  self->_shortRelativeDateFormatter = 0;

  mediumRelativeDateFormatter = self->_mediumRelativeDateFormatter;
  self->_mediumRelativeDateFormatter = 0;

  longRelativeDateFormatter = self->_longRelativeDateFormatter;
  self->_longRelativeDateFormatter = 0;

  dayOfWeekFormatter = self->_dayOfWeekFormatter;
  self->_dayOfWeekFormatter = 0;

  shortDayOfWeekFormatter = self->_shortDayOfWeekFormatter;
  self->_shortDayOfWeekFormatter = 0;

  shortDateTimeFormatter = self->_shortDateTimeFormatter;
  self->_shortDateTimeFormatter = 0;

  shortTimeFormatter = self->_shortTimeFormatter;
  self->_shortTimeFormatter = 0;

  dateFormatter = self->_dateFormatter;
  self->_dateFormatter = 0;

  shortDateTimeIntervalFormatter = self->_shortDateTimeIntervalFormatter;
  self->_shortDateTimeIntervalFormatter = 0;

  mediumDayOfWeekDateTimeIntervalFormatter = self->_mediumDayOfWeekDateTimeIntervalFormatter;
  self->_mediumDayOfWeekDateTimeIntervalFormatter = 0;

  shortDateIntervalFormatter = self->_shortDateIntervalFormatter;
  self->_shortDateIntervalFormatter = 0;

  mediumDayOfWeekDateIntervalFormatter = self->_mediumDayOfWeekDateIntervalFormatter;
  self->_mediumDayOfWeekDateIntervalFormatter = 0;

  allDayDateFormatter = self->_allDayDateFormatter;
  self->_allDayDateFormatter = 0;

  dateIntervalFormatter = self->_dateIntervalFormatter;
  self->_dateIntervalFormatter = 0;
}

- (CNDateComponentsFormatter)birthdayDateComponentsFormatter
{
  p_birthdayDateComponentsFormatter = &self->_birthdayDateComponentsFormatter;
  v4 = self->_birthdayDateComponentsFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    v5 = [(SPUISDateFormatManager *)self currentLocale];
    [(CNDateComponentsFormatter *)v4 setLocale:v5];

    objc_storeStrong(p_birthdayDateComponentsFormatter, v4);
  }

  return v4;
}

- (NSDateComponentsFormatter)dateComponentsFormatter
{
  p_dateComponentsFormatter = &self->_dateComponentsFormatter;
  v4 = self->_dateComponentsFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    [(NSDateComponentsFormatter *)v4 setZeroFormattingBehavior:0];
    [(NSDateComponentsFormatter *)v4 setUnitsStyle:0];
    v5 = [(SPUISDateFormatManager *)self currentLocale];
    v6 = [(NSDateComponentsFormatter *)v4 calendar];
    [v6 setLocale:v5];

    objc_storeStrong(p_dateComponentsFormatter, v4);
  }

  return v4;
}

- (NSDateFormatter)shortRelativeDateFormatter
{
  p_shortRelativeDateFormatter = &self->_shortRelativeDateFormatter;
  v4 = self->_shortRelativeDateFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    [(NSDateFormatter *)v4 setFormattingContext:1];
    [(NSDateFormatter *)v4 setDateStyle:1];
    [(NSDateFormatter *)v4 setTimeStyle:0];
    [(NSDateFormatter *)v4 setDoesRelativeDateFormatting:1];
    v5 = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:v5];

    objc_storeStrong(p_shortRelativeDateFormatter, v4);
  }

  return v4;
}

- (NSDateFormatter)mediumRelativeDateFormatter
{
  p_mediumRelativeDateFormatter = &self->_mediumRelativeDateFormatter;
  v4 = self->_mediumRelativeDateFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    [(NSDateFormatter *)v4 setFormattingContext:1];
    [(NSDateFormatter *)v4 setDateStyle:2];
    [(NSDateFormatter *)v4 setTimeStyle:0];
    [(NSDateFormatter *)v4 setDoesRelativeDateFormatting:1];
    v5 = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:v5];

    objc_storeStrong(p_mediumRelativeDateFormatter, v4);
  }

  return v4;
}

- (NSDateFormatter)longRelativeDateFormatter
{
  p_longRelativeDateFormatter = &self->_longRelativeDateFormatter;
  v4 = self->_longRelativeDateFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    [(NSDateFormatter *)v4 setFormattingContext:1];
    [(NSDateFormatter *)v4 setDateStyle:4];
    [(NSDateFormatter *)v4 setTimeStyle:0];
    [(NSDateFormatter *)v4 setDoesRelativeDateFormatting:1];
    v5 = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:v5];

    objc_storeStrong(p_longRelativeDateFormatter, v4);
  }

  return v4;
}

- (NSDateFormatter)dayOfWeekFormatter
{
  p_dayOfWeekFormatter = &self->_dayOfWeekFormatter;
  v4 = self->_dayOfWeekFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    v5 = MEMORY[0x277CCA968];
    v6 = [(SPUISDateFormatManager *)self currentLocale];
    v7 = [v5 dateFormatFromTemplate:@"EEEE" options:0 locale:v6];
    [(NSDateFormatter *)v4 setDateFormat:v7];

    v8 = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:v8];

    objc_storeStrong(p_dayOfWeekFormatter, v4);
  }

  return v4;
}

- (NSDateFormatter)shortDayOfWeekFormatter
{
  p_shortDayOfWeekFormatter = &self->_shortDayOfWeekFormatter;
  v4 = self->_shortDayOfWeekFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    v5 = MEMORY[0x277CCA968];
    v6 = [(SPUISDateFormatManager *)self currentLocale];
    v7 = [v5 dateFormatFromTemplate:@"E" options:0 locale:v6];
    [(NSDateFormatter *)v4 setDateFormat:v7];

    v8 = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:v8];

    objc_storeStrong(p_shortDayOfWeekFormatter, v4);
  }

  return v4;
}

- (NSDateFormatter)shortDateTimeFormatter
{
  p_shortDateTimeFormatter = &self->_shortDateTimeFormatter;
  v4 = self->_shortDateTimeFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    [(NSDateFormatter *)v4 setFormattingContext:1];
    [(NSDateFormatter *)v4 setDateStyle:1];
    [(NSDateFormatter *)v4 setTimeStyle:1];
    [(NSDateFormatter *)v4 setDoesRelativeDateFormatting:1];
    v5 = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:v5];

    objc_storeStrong(p_shortDateTimeFormatter, v4);
  }

  return v4;
}

- (NSDateFormatter)shortTimeFormatter
{
  p_shortTimeFormatter = &self->_shortTimeFormatter;
  v4 = self->_shortTimeFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    [(NSDateFormatter *)v4 setFormattingContext:1];
    [(NSDateFormatter *)v4 setDateStyle:0];
    [(NSDateFormatter *)v4 setTimeStyle:1];
    v5 = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:v5];

    objc_storeStrong(p_shortTimeFormatter, v4);
  }

  return v4;
}

- (NSDateFormatter)dateFormatter
{
  p_dateFormatter = &self->_dateFormatter;
  v4 = self->_dateFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    v5 = [@"EMMMdyyyy" stringByAppendingString:@"jmma"];
    [(NSDateFormatter *)v4 setFormattingContext:1];
    v6 = MEMORY[0x277CCA968];
    v7 = [(SPUISDateFormatManager *)self currentLocale];
    v8 = [v6 dateFormatFromTemplate:v5 options:0 locale:v7];
    [(NSDateFormatter *)v4 setDateFormat:v8];

    objc_storeStrong(p_dateFormatter, v4);
  }

  return v4;
}

- (NSDateIntervalFormatter)shortDateTimeIntervalFormatter
{
  p_shortDateTimeIntervalFormatter = &self->_shortDateTimeIntervalFormatter;
  v4 = self->_shortDateTimeIntervalFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    [(NSDateIntervalFormatter *)v4 setDateStyle:1];
    [(NSDateIntervalFormatter *)v4 setTimeStyle:1];
    v5 = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateIntervalFormatter *)v4 setLocale:v5];

    objc_storeStrong(p_shortDateTimeIntervalFormatter, v4);
  }

  return v4;
}

- (NSDateIntervalFormatter)mediumDayOfWeekDateTimeIntervalFormatter
{
  v12[3] = *MEMORY[0x277D85DE8];
  p_mediumDayOfWeekDateTimeIntervalFormatter = &self->_mediumDayOfWeekDateTimeIntervalFormatter;
  v4 = self->_mediumDayOfWeekDateTimeIntervalFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    v12[0] = @"E";
    v12[1] = @"MMMd";
    v12[2] = @"jma";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
    v6 = [v5 componentsJoinedByString:&stru_287C50EE8];

    v7 = MEMORY[0x277CCA968];
    v8 = [(SPUISDateFormatManager *)self currentLocale];
    v9 = [v7 dateFormatFromTemplate:v6 options:0 locale:v8];
    [(NSDateIntervalFormatter *)v4 setDateTemplate:v9];

    objc_storeStrong(p_mediumDayOfWeekDateTimeIntervalFormatter, v4);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDateIntervalFormatter)shortDateIntervalFormatter
{
  p_shortDateIntervalFormatter = &self->_shortDateIntervalFormatter;
  v4 = self->_shortDateIntervalFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    [(NSDateIntervalFormatter *)v4 setDateStyle:1];
    [(NSDateIntervalFormatter *)v4 setTimeStyle:0];
    v5 = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateIntervalFormatter *)v4 setLocale:v5];

    objc_storeStrong(p_shortDateIntervalFormatter, v4);
  }

  return v4;
}

- (NSDateIntervalFormatter)mediumDayOfWeekDateIntervalFormatter
{
  v12[2] = *MEMORY[0x277D85DE8];
  p_mediumDayOfWeekDateIntervalFormatter = &self->_mediumDayOfWeekDateIntervalFormatter;
  v4 = self->_mediumDayOfWeekDateIntervalFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    v12[0] = @"E";
    v12[1] = @"MMMd";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    v6 = [v5 componentsJoinedByString:&stru_287C50EE8];

    v7 = MEMORY[0x277CCA968];
    v8 = [(SPUISDateFormatManager *)self currentLocale];
    v9 = [v7 dateFormatFromTemplate:v6 options:0 locale:v8];
    [(NSDateIntervalFormatter *)v4 setDateTemplate:v9];

    objc_storeStrong(p_mediumDayOfWeekDateIntervalFormatter, v4);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSDateIntervalFormatter)allDayDateFormatter
{
  p_allDayDateFormatter = &self->_allDayDateFormatter;
  v4 = self->_allDayDateFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    v5 = MEMORY[0x277CCA968];
    v6 = [(SPUISDateFormatManager *)self currentLocale];
    v7 = [v5 dateFormatFromTemplate:@"EMMMdyyyy" options:0 locale:v6];
    [(NSDateIntervalFormatter *)v4 setDateTemplate:v7];

    objc_storeStrong(p_allDayDateFormatter, v4);
  }

  return v4;
}

- (NSDateIntervalFormatter)dateIntervalFormatter
{
  p_dateIntervalFormatter = &self->_dateIntervalFormatter;
  v4 = self->_dateIntervalFormatter;
  if (!v4)
  {
    v4 = objc_opt_new();
    v5 = [@"EMMMdyyyy" stringByAppendingString:@"jmma"];
    v6 = MEMORY[0x277CCA968];
    v7 = [(SPUISDateFormatManager *)self currentLocale];
    v8 = [v6 dateFormatFromTemplate:v5 options:0 locale:v7];
    [(NSDateIntervalFormatter *)v4 setDateTemplate:v8];

    objc_storeStrong(p_dateIntervalFormatter, v4);
  }

  return v4;
}

- (id)allFormatters
{
  v22[16] = *MEMORY[0x277D85DE8];
  v21 = [(SPUISDateFormatManager *)self birthdayDateComponentsFormatter];
  v22[0] = v21;
  v20 = [(SPUISDateFormatManager *)self dateComponentsFormatter];
  v22[1] = v20;
  v19 = [(SPUISDateFormatManager *)self shortRelativeDateFormatter];
  v22[2] = v19;
  v18 = [(SPUISDateFormatManager *)self mediumRelativeDateFormatter];
  v22[3] = v18;
  v17 = [(SPUISDateFormatManager *)self longRelativeDateFormatter];
  v22[4] = v17;
  v16 = [(SPUISDateFormatManager *)self dayOfWeekFormatter];
  v22[5] = v16;
  v3 = [(SPUISDateFormatManager *)self shortDayOfWeekFormatter];
  v22[6] = v3;
  v4 = [(SPUISDateFormatManager *)self shortDateTimeFormatter];
  v22[7] = v4;
  v5 = [(SPUISDateFormatManager *)self shortTimeFormatter];
  v22[8] = v5;
  v6 = [(SPUISDateFormatManager *)self dateFormatter];
  v22[9] = v6;
  v7 = [(SPUISDateFormatManager *)self shortDateTimeIntervalFormatter];
  v22[10] = v7;
  v8 = [(SPUISDateFormatManager *)self mediumDayOfWeekDateTimeIntervalFormatter];
  v22[11] = v8;
  v9 = [(SPUISDateFormatManager *)self shortDateIntervalFormatter];
  v22[12] = v9;
  v10 = [(SPUISDateFormatManager *)self mediumDayOfWeekDateIntervalFormatter];
  v22[13] = v10;
  v11 = [(SPUISDateFormatManager *)self allDayDateFormatter];
  v22[14] = v11;
  v12 = [(SPUISDateFormatManager *)self dateIntervalFormatter];
  v22[15] = v12;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:16];

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)currentLocale
{
  v2 = [(SPUISDateFormatManager *)self overrideLocale];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEAF8] currentLocale];
  }

  v5 = v4;

  return v5;
}

- (id)calendar
{
  v3 = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = [(SPUISDateFormatManager *)self currentLocale];
  [v3 setLocale:v4];

  return v3;
}

+ (id)tomorrow
{
  v3 = objc_opt_new();
  [v3 setDay:1];
  v4 = [a1 calendar];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [v4 dateByAddingComponents:v3 toDate:v5 options:0];

  return v6;
}

+ (BOOL)date:(id)a3 isBetweenDate:(id)a4 andDate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 compare:a4] != -1 && objc_msgSend(v7, "compare:", v8) != 1;

  return v9;
}

+ (BOOL)isDate:(id)a3 withinTimeInterval:(double)a4 includePast:(BOOL)a5
{
  if (!a3)
  {
    return 0;
  }

  v5 = a5;
  [a3 timeIntervalSinceNow];
  v8 = fabs(v7);
  if (v5)
  {
    v7 = v8;
  }

  return v7 <= a4 && v7 >= 0.0;
}

+ (BOOL)hasRelativeFormatForDate:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [sharedDateFormatManager calendar];
    if ([v4 isDateInYesterday:v3] & 1) != 0 || (objc_msgSend(v4, "isDateInToday:", v3))
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 isDateInTomorrow:v3];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)shortDateTimeStringFromDate:(id)a3 isAllDay:(BOOL)a4 showAllDayString:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  if (v6)
  {
    if (v5)
    {
      v8 = [SPUISUtilities localizedStringForKey:@"ALL_DAY_SHORT_FORMAT"];
    }

    else
    {
      v8 = @"%@";
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = [sharedDateFormatManager shortRelativeDateFormatter];
    v12 = [v11 stringFromDate:v7];
    v9 = [v10 localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v12];
  }

  else
  {
    v8 = [sharedDateFormatManager shortDateTimeFormatter];
    v9 = [(__CFString *)v8 stringFromDate:v7];
  }

  return v9;
}

+ (id)dynamicStringFromDate:(id)a3 isCompact:(BOOL)a4
{
  v6 = a3;
  if (!v6)
  {
    v9 = &stru_287C50EE8;
    goto LABEL_13;
  }

  v7 = sharedDateFormatManager;
  v8 = v7;
  if (a4)
  {
    [v7 shortRelativeDateFormatter];
  }

  else
  {
    [v7 mediumRelativeDateFormatter];
  }
  v10 = ;
  v9 = [v10 stringFromDate:v6];

  v11 = [sharedDateFormatManager calendar];
  v12 = [v11 isDateInToday:v6];

  if (v12)
  {
    v13 = [v8 shortTimeFormatter];
  }

  else
  {
    if (([a1 hasRelativeFormatForDate:v6] & 1) != 0 || !objc_msgSend(a1, "isDateWithinWeeksTime:", v6))
    {
      goto LABEL_12;
    }

    v13 = [v8 dayOfWeekFormatter];
  }

  v14 = v13;
  v15 = [v13 stringFromDate:v6];

  v9 = v15;
LABEL_12:

LABEL_13:

  return v9;
}

+ (id)dyanmicStringFromDate:(id)a3
{
  v4 = a3;
  v5 = sharedDateFormatManager;
  v6 = [v5 shortRelativeDateFormatter];
  v7 = [v6 stringFromDate:v4];

  if (([a1 hasRelativeFormatForDate:v4] & 1) == 0 && objc_msgSend(a1, "isDateWithinMonthsTime:", v4))
  {
    v8 = [v5 mediumDayOfWeekDateIntervalFormatter];
    v9 = [v8 stringFromDate:v4 toDate:v4];

    v7 = v9;
  }

  return v7;
}

+ (id)dynamicDateTimeStringsFromDate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sharedDateFormatManager;
  v6 = [sharedDateFormatManager shortRelativeDateFormatter];
  v7 = [v6 stringFromDate:v4];

  if (([a1 hasRelativeFormatForDate:v4] & 1) == 0 && objc_msgSend(a1, "isDateWithinMonthsTime:", v4))
  {
    v8 = [v5 mediumDayOfWeekDateIntervalFormatter];
    v9 = [v8 stringFromDate:v4 toDate:v4];

    v7 = v9;
  }

  v10 = [v5 shortTimeFormatter];
  v11 = [v10 stringFromDate:v4];

  if (v7 && v11)
  {
    v19 = v7;
    v20 = v11;
    v12 = MEMORY[0x277CBEA60];
    v13 = &v19;
    v14 = 2;
LABEL_9:
    v15 = [v12 arrayWithObjects:v13 count:{v14, v18, v19, v20, v21}];
    goto LABEL_10;
  }

  if (v7)
  {
    v18 = v7;
    v12 = MEMORY[0x277CBEA60];
    v13 = &v18;
    v14 = 1;
    goto LABEL_9;
  }

  v15 = 0;
LABEL_10:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)fullDateTimeStringsFromDate:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = sharedDateFormatManager;
  v5 = a3;
  v6 = [v4 longRelativeDateFormatter];
  v7 = [v6 stringFromDate:v5];

  v8 = [v4 shortTimeFormatter];
  v9 = [v8 stringFromDate:v5];

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v14[0] = v7;
    v14[1] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)stringsFromDate:(id)a3 toDate:(id)a4 isAllDay:(BOOL)a5
{
  v5 = a5;
  v20[2] = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (a3)
  {
    v9 = sharedDateFormatManager;
    v10 = a3;
    if ([a1 isDateWithinMonthsTime:v10] && (!v8 || objc_msgSend(a1, "isDateWithinMonthsTime:", v8)))
    {
      if (v5)
      {
        [v9 mediumDayOfWeekDateIntervalFormatter];
      }

      else
      {
        [v9 mediumDayOfWeekDateTimeIntervalFormatter];
      }
    }

    else if (v5)
    {
      [v9 shortDateIntervalFormatter];
    }

    else
    {
      [v9 shortDateTimeIntervalFormatter];
    }
    v11 = ;
    v13 = v11;
    if (v8)
    {
      v14 = v8;
    }

    else
    {
      v14 = v10;
    }

    v15 = [v11 stringFromDate:v10 toDate:v14];

    if (v5)
    {
      v20[0] = v15;
      v16 = [SPUISUtilities localizedStringForKey:@"ALL_DAY"];
      v20[1] = v16;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    }

    else
    {
      v19 = v15;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)stringFromBirthdayComponents:(id)a3
{
  v3 = sharedDateFormatManager;
  v4 = a3;
  v5 = [v3 birthdayDateComponentsFormatter];
  v6 = [v5 stringFromDateComponents:v4];

  return v6;
}

+ (id)icalConformingStringFromDate:(id)a3
{
  v3 = MEMORY[0x277CCA968];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v5 setLocale:v6];

  [v5 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  v7 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v5 setTimeZone:v7];

  v8 = [v5 stringFromDate:v4];

  return v8;
}

+ (id)stringFromTimeInterval:(double)a3
{
  v4 = [sharedDateFormatManager dateComponentsFormatter];
  v5 = v4;
  v6 = round(a3);
  if (v6 < 3600.0)
  {
    v7 = 192;
  }

  else
  {
    v7 = 224;
  }

  [v4 setAllowedUnits:v7];
  v8 = [v5 stringFromTimeInterval:v6];

  return v8;
}

+ (id)nextUpcomingDateForDateComponents:(id)a3 fromDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 calendar];
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setMonth:{objc_msgSend(v6, "month")}];
  [v8 setLeapMonth:{objc_msgSend(v6, "isLeapMonth")}];
  v9 = [v6 day];

  [v8 setDay:v9];
  [v8 setHour:12];
  v10 = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [v10 nextDateAfterDate:v5 matchingHour:0 minute:0 second:0 options:6];

  v12 = [v7 nextDateAfterDate:v11 matchingComponents:v8 options:256];

  return v12;
}

+ (void)overrideLocale:(id)a3
{
  [sharedDateFormatManager setOverrideLocale:a3];
  v3 = sharedDateFormatManager;

  [v3 purgeMemory];
}

@end