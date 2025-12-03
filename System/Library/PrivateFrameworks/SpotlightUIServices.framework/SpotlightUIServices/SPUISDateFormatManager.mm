@interface SPUISDateFormatManager
+ (BOOL)date:(id)date isBetweenDate:(id)betweenDate andDate:(id)andDate;
+ (BOOL)hasRelativeFormatForDate:(id)date;
+ (BOOL)isDate:(id)date withinTimeInterval:(double)interval includePast:(BOOL)past;
+ (id)dyanmicStringFromDate:(id)date;
+ (id)dynamicDateTimeStringsFromDate:(id)date;
+ (id)dynamicStringFromDate:(id)date isCompact:(BOOL)compact;
+ (id)fullDateTimeStringsFromDate:(id)date;
+ (id)icalConformingStringFromDate:(id)date;
+ (id)nextUpcomingDateForDateComponents:(id)components fromDate:(id)date;
+ (id)shortDateTimeStringFromDate:(id)date isAllDay:(BOOL)day showAllDayString:(BOOL)string;
+ (id)stringFromBirthdayComponents:(id)components;
+ (id)stringFromTimeInterval:(double)interval;
+ (id)stringsFromDate:(id)date toDate:(id)toDate isAllDay:(BOOL)day;
+ (id)tomorrow;
+ (void)initialize;
+ (void)overrideLocale:(id)locale;
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
  if (objc_opt_class() == self)
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_purgeMemory name:@"UIApplicationDidReceiveMemoryWarningNotification" object:0];
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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    [(CNDateComponentsFormatter *)v4 setLocale:currentLocale];

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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    calendar = [(NSDateComponentsFormatter *)v4 calendar];
    [calendar setLocale:currentLocale];

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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:currentLocale];

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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:currentLocale];

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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:currentLocale];

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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    v7 = [v5 dateFormatFromTemplate:@"EEEE" options:0 locale:currentLocale];
    [(NSDateFormatter *)v4 setDateFormat:v7];

    currentLocale2 = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:currentLocale2];

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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    v7 = [v5 dateFormatFromTemplate:@"E" options:0 locale:currentLocale];
    [(NSDateFormatter *)v4 setDateFormat:v7];

    currentLocale2 = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:currentLocale2];

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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:currentLocale];

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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateFormatter *)v4 setLocale:currentLocale];

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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    v8 = [v6 dateFormatFromTemplate:v5 options:0 locale:currentLocale];
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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateIntervalFormatter *)v4 setLocale:currentLocale];

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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    v9 = [v7 dateFormatFromTemplate:v6 options:0 locale:currentLocale];
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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    [(NSDateIntervalFormatter *)v4 setLocale:currentLocale];

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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    v9 = [v7 dateFormatFromTemplate:v6 options:0 locale:currentLocale];
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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    v7 = [v5 dateFormatFromTemplate:@"EMMMdyyyy" options:0 locale:currentLocale];
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
    currentLocale = [(SPUISDateFormatManager *)self currentLocale];
    v8 = [v6 dateFormatFromTemplate:v5 options:0 locale:currentLocale];
    [(NSDateIntervalFormatter *)v4 setDateTemplate:v8];

    objc_storeStrong(p_dateIntervalFormatter, v4);
  }

  return v4;
}

- (id)allFormatters
{
  v22[16] = *MEMORY[0x277D85DE8];
  birthdayDateComponentsFormatter = [(SPUISDateFormatManager *)self birthdayDateComponentsFormatter];
  v22[0] = birthdayDateComponentsFormatter;
  dateComponentsFormatter = [(SPUISDateFormatManager *)self dateComponentsFormatter];
  v22[1] = dateComponentsFormatter;
  shortRelativeDateFormatter = [(SPUISDateFormatManager *)self shortRelativeDateFormatter];
  v22[2] = shortRelativeDateFormatter;
  mediumRelativeDateFormatter = [(SPUISDateFormatManager *)self mediumRelativeDateFormatter];
  v22[3] = mediumRelativeDateFormatter;
  longRelativeDateFormatter = [(SPUISDateFormatManager *)self longRelativeDateFormatter];
  v22[4] = longRelativeDateFormatter;
  dayOfWeekFormatter = [(SPUISDateFormatManager *)self dayOfWeekFormatter];
  v22[5] = dayOfWeekFormatter;
  shortDayOfWeekFormatter = [(SPUISDateFormatManager *)self shortDayOfWeekFormatter];
  v22[6] = shortDayOfWeekFormatter;
  shortDateTimeFormatter = [(SPUISDateFormatManager *)self shortDateTimeFormatter];
  v22[7] = shortDateTimeFormatter;
  shortTimeFormatter = [(SPUISDateFormatManager *)self shortTimeFormatter];
  v22[8] = shortTimeFormatter;
  dateFormatter = [(SPUISDateFormatManager *)self dateFormatter];
  v22[9] = dateFormatter;
  shortDateTimeIntervalFormatter = [(SPUISDateFormatManager *)self shortDateTimeIntervalFormatter];
  v22[10] = shortDateTimeIntervalFormatter;
  mediumDayOfWeekDateTimeIntervalFormatter = [(SPUISDateFormatManager *)self mediumDayOfWeekDateTimeIntervalFormatter];
  v22[11] = mediumDayOfWeekDateTimeIntervalFormatter;
  shortDateIntervalFormatter = [(SPUISDateFormatManager *)self shortDateIntervalFormatter];
  v22[12] = shortDateIntervalFormatter;
  mediumDayOfWeekDateIntervalFormatter = [(SPUISDateFormatManager *)self mediumDayOfWeekDateIntervalFormatter];
  v22[13] = mediumDayOfWeekDateIntervalFormatter;
  allDayDateFormatter = [(SPUISDateFormatManager *)self allDayDateFormatter];
  v22[14] = allDayDateFormatter;
  dateIntervalFormatter = [(SPUISDateFormatManager *)self dateIntervalFormatter];
  v22[15] = dateIntervalFormatter;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:16];

  v13 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)currentLocale
{
  overrideLocale = [(SPUISDateFormatManager *)self overrideLocale];
  v3 = overrideLocale;
  if (overrideLocale)
  {
    currentLocale = overrideLocale;
  }

  else
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  }

  v5 = currentLocale;

  return v5;
}

- (id)calendar
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  currentLocale = [(SPUISDateFormatManager *)self currentLocale];
  [currentCalendar setLocale:currentLocale];

  return currentCalendar;
}

+ (id)tomorrow
{
  v3 = objc_opt_new();
  [v3 setDay:1];
  calendar = [self calendar];
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [calendar dateByAddingComponents:v3 toDate:date options:0];

  return v6;
}

+ (BOOL)date:(id)date isBetweenDate:(id)betweenDate andDate:(id)andDate
{
  dateCopy = date;
  andDateCopy = andDate;
  v9 = [dateCopy compare:betweenDate] != -1 && objc_msgSend(dateCopy, "compare:", andDateCopy) != 1;

  return v9;
}

+ (BOOL)isDate:(id)date withinTimeInterval:(double)interval includePast:(BOOL)past
{
  if (!date)
  {
    return 0;
  }

  pastCopy = past;
  [date timeIntervalSinceNow];
  v8 = fabs(v7);
  if (pastCopy)
  {
    v7 = v8;
  }

  return v7 <= interval && v7 >= 0.0;
}

+ (BOOL)hasRelativeFormatForDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    calendar = [sharedDateFormatManager calendar];
    if ([calendar isDateInYesterday:dateCopy] & 1) != 0 || (objc_msgSend(calendar, "isDateInToday:", dateCopy))
    {
      v5 = 1;
    }

    else
    {
      v5 = [calendar isDateInTomorrow:dateCopy];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)shortDateTimeStringFromDate:(id)date isAllDay:(BOOL)day showAllDayString:(BOOL)string
{
  stringCopy = string;
  dayCopy = day;
  dateCopy = date;
  if (dayCopy)
  {
    if (stringCopy)
    {
      shortDateTimeFormatter = [SPUISUtilities localizedStringForKey:@"ALL_DAY_SHORT_FORMAT"];
    }

    else
    {
      shortDateTimeFormatter = @"%@";
    }

    v10 = MEMORY[0x277CCACA8];
    shortRelativeDateFormatter = [sharedDateFormatManager shortRelativeDateFormatter];
    v12 = [shortRelativeDateFormatter stringFromDate:dateCopy];
    v9 = [v10 localizedStringWithValidatedFormat:shortDateTimeFormatter validFormatSpecifiers:@"%@" error:0, v12];
  }

  else
  {
    shortDateTimeFormatter = [sharedDateFormatManager shortDateTimeFormatter];
    v9 = [(__CFString *)shortDateTimeFormatter stringFromDate:dateCopy];
  }

  return v9;
}

+ (id)dynamicStringFromDate:(id)date isCompact:(BOOL)compact
{
  dateCopy = date;
  if (!dateCopy)
  {
    v9 = &stru_287C50EE8;
    goto LABEL_13;
  }

  v7 = sharedDateFormatManager;
  v8 = v7;
  if (compact)
  {
    [v7 shortRelativeDateFormatter];
  }

  else
  {
    [v7 mediumRelativeDateFormatter];
  }
  v10 = ;
  v9 = [v10 stringFromDate:dateCopy];

  calendar = [sharedDateFormatManager calendar];
  v12 = [calendar isDateInToday:dateCopy];

  if (v12)
  {
    shortTimeFormatter = [v8 shortTimeFormatter];
  }

  else
  {
    if (([self hasRelativeFormatForDate:dateCopy] & 1) != 0 || !objc_msgSend(self, "isDateWithinWeeksTime:", dateCopy))
    {
      goto LABEL_12;
    }

    shortTimeFormatter = [v8 dayOfWeekFormatter];
  }

  v14 = shortTimeFormatter;
  v15 = [shortTimeFormatter stringFromDate:dateCopy];

  v9 = v15;
LABEL_12:

LABEL_13:

  return v9;
}

+ (id)dyanmicStringFromDate:(id)date
{
  dateCopy = date;
  v5 = sharedDateFormatManager;
  shortRelativeDateFormatter = [v5 shortRelativeDateFormatter];
  v7 = [shortRelativeDateFormatter stringFromDate:dateCopy];

  if (([self hasRelativeFormatForDate:dateCopy] & 1) == 0 && objc_msgSend(self, "isDateWithinMonthsTime:", dateCopy))
  {
    mediumDayOfWeekDateIntervalFormatter = [v5 mediumDayOfWeekDateIntervalFormatter];
    v9 = [mediumDayOfWeekDateIntervalFormatter stringFromDate:dateCopy toDate:dateCopy];

    v7 = v9;
  }

  return v7;
}

+ (id)dynamicDateTimeStringsFromDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = sharedDateFormatManager;
  shortRelativeDateFormatter = [sharedDateFormatManager shortRelativeDateFormatter];
  v7 = [shortRelativeDateFormatter stringFromDate:dateCopy];

  if (([self hasRelativeFormatForDate:dateCopy] & 1) == 0 && objc_msgSend(self, "isDateWithinMonthsTime:", dateCopy))
  {
    mediumDayOfWeekDateIntervalFormatter = [v5 mediumDayOfWeekDateIntervalFormatter];
    v9 = [mediumDayOfWeekDateIntervalFormatter stringFromDate:dateCopy toDate:dateCopy];

    v7 = v9;
  }

  shortTimeFormatter = [v5 shortTimeFormatter];
  v11 = [shortTimeFormatter stringFromDate:dateCopy];

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

+ (id)fullDateTimeStringsFromDate:(id)date
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = sharedDateFormatManager;
  dateCopy = date;
  longRelativeDateFormatter = [v4 longRelativeDateFormatter];
  v7 = [longRelativeDateFormatter stringFromDate:dateCopy];

  shortTimeFormatter = [v4 shortTimeFormatter];
  v9 = [shortTimeFormatter stringFromDate:dateCopy];

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

+ (id)stringsFromDate:(id)date toDate:(id)toDate isAllDay:(BOOL)day
{
  dayCopy = day;
  v20[2] = *MEMORY[0x277D85DE8];
  toDateCopy = toDate;
  if (date)
  {
    v9 = sharedDateFormatManager;
    dateCopy = date;
    if ([self isDateWithinMonthsTime:dateCopy] && (!toDateCopy || objc_msgSend(self, "isDateWithinMonthsTime:", toDateCopy)))
    {
      if (dayCopy)
      {
        [v9 mediumDayOfWeekDateIntervalFormatter];
      }

      else
      {
        [v9 mediumDayOfWeekDateTimeIntervalFormatter];
      }
    }

    else if (dayCopy)
    {
      [v9 shortDateIntervalFormatter];
    }

    else
    {
      [v9 shortDateTimeIntervalFormatter];
    }
    v11 = ;
    v13 = v11;
    if (toDateCopy)
    {
      v14 = toDateCopy;
    }

    else
    {
      v14 = dateCopy;
    }

    v15 = [v11 stringFromDate:dateCopy toDate:v14];

    if (dayCopy)
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

+ (id)stringFromBirthdayComponents:(id)components
{
  v3 = sharedDateFormatManager;
  componentsCopy = components;
  birthdayDateComponentsFormatter = [v3 birthdayDateComponentsFormatter];
  v6 = [birthdayDateComponentsFormatter stringFromDateComponents:componentsCopy];

  return v6;
}

+ (id)icalConformingStringFromDate:(id)date
{
  v3 = MEMORY[0x277CCA968];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v5 setLocale:v6];

  [v5 setDateFormat:@"yyyy-MM-dd_HH:mm:ss"];
  v7 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v5 setTimeZone:v7];

  v8 = [v5 stringFromDate:dateCopy];

  return v8;
}

+ (id)stringFromTimeInterval:(double)interval
{
  dateComponentsFormatter = [sharedDateFormatManager dateComponentsFormatter];
  v5 = dateComponentsFormatter;
  v6 = round(interval);
  if (v6 < 3600.0)
  {
    v7 = 192;
  }

  else
  {
    v7 = 224;
  }

  [dateComponentsFormatter setAllowedUnits:v7];
  v8 = [v5 stringFromTimeInterval:v6];

  return v8;
}

+ (id)nextUpcomingDateForDateComponents:(id)components fromDate:(id)date
{
  dateCopy = date;
  componentsCopy = components;
  calendar = [componentsCopy calendar];
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setMonth:{objc_msgSend(componentsCopy, "month")}];
  [v8 setLeapMonth:{objc_msgSend(componentsCopy, "isLeapMonth")}];
  v9 = [componentsCopy day];

  [v8 setDay:v9];
  [v8 setHour:12];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v11 = [currentCalendar nextDateAfterDate:dateCopy matchingHour:0 minute:0 second:0 options:6];

  v12 = [calendar nextDateAfterDate:v11 matchingComponents:v8 options:256];

  return v12;
}

+ (void)overrideLocale:(id)locale
{
  [sharedDateFormatManager setOverrideLocale:locale];
  v3 = sharedDateFormatManager;

  [v3 purgeMemory];
}

@end