@interface PXContextualMemoriesTimeSetting
- (NSDate)date;
- (NSString)headerTitle;
- (NSString)title;
- (PXContextualMemoriesTimeSetting)init;
- (id)_forceMiddayDateForDate:(id)date;
- (void)resetToDefault;
- (void)setDate:(id)date;
@end

@implementation PXContextualMemoriesTimeSetting

- (id)_forceMiddayDateForDate:(id)date
{
  v3 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:28 fromDate:dateCopy];

  [v6 setHour:12];
  [v6 setMinute:0];
  [v6 setSecond:0];
  [v6 setNanosecond:0];
  v7 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v6 setTimeZone:v7];

  v8 = [currentCalendar dateFromComponents:v6];

  return v8;
}

- (NSDate)date
{
  date = self->_date;
  if (date)
  {
    v3 = date;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
    v3 = [(PXContextualMemoriesTimeSetting *)self _forceMiddayDateForDate:date];
  }

  return v3;
}

- (void)setDate:(id)date
{
  if (self->_date != date)
  {
    v5 = [(PXContextualMemoriesTimeSetting *)self _forceMiddayDateForDate:?];
    date = self->_date;
    self->_date = v5;
  }
}

- (void)resetToDefault
{
  [(PXContextualMemoriesTimeSetting *)self willChangeValueForKey:@"date"];
  date = self->_date;
  self->_date = 0;

  [(PXContextualMemoriesTimeSetting *)self didChangeValueForKey:@"date"];
}

- (NSString)title
{
  date = [(PXContextualMemoriesTimeSetting *)self date];
  if (date)
  {
    dateFormatter = [(PXContextualMemoriesTimeSetting *)self dateFormatter];
    date2 = [(PXContextualMemoriesTimeSetting *)self date];
    v6 = [dateFormatter stringFromDate:date2];
  }

  else
  {
    v6 = &stru_1F1741150;
  }

  return v6;
}

- (NSString)headerTitle
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"Time" value:&stru_1F1741150 table:0];

  return v3;
}

- (PXContextualMemoriesTimeSetting)init
{
  v6.receiver = self;
  v6.super_class = PXContextualMemoriesTimeSetting;
  v2 = [(PXContextualMemoriesTimeSetting *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
    dateFormatter = v2->_dateFormatter;
    v2->_dateFormatter = v3;

    [(NSDateFormatter *)v2->_dateFormatter setDateStyle:2];
    [(NSDateFormatter *)v2->_dateFormatter setTimeStyle:0];
  }

  return v2;
}

@end