@interface PXContextualMemoriesTimeSetting
- (NSDate)date;
- (NSString)headerTitle;
- (NSString)title;
- (PXContextualMemoriesTimeSetting)init;
- (id)_forceMiddayDateForDate:(id)a3;
- (void)resetToDefault;
- (void)setDate:(id)a3;
@end

@implementation PXContextualMemoriesTimeSetting

- (id)_forceMiddayDateForDate:(id)a3
{
  v3 = MEMORY[0x1E695DEE8];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [v5 components:28 fromDate:v4];

  [v6 setHour:12];
  [v6 setMinute:0];
  [v6 setSecond:0];
  [v6 setNanosecond:0];
  v7 = [MEMORY[0x1E695DFE8] timeZoneWithAbbreviation:@"GMT"];
  [v6 setTimeZone:v7];

  v8 = [v5 dateFromComponents:v6];

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
    v5 = [MEMORY[0x1E695DF00] date];
    v3 = [(PXContextualMemoriesTimeSetting *)self _forceMiddayDateForDate:v5];
  }

  return v3;
}

- (void)setDate:(id)a3
{
  if (self->_date != a3)
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
  v3 = [(PXContextualMemoriesTimeSetting *)self date];
  if (v3)
  {
    v4 = [(PXContextualMemoriesTimeSetting *)self dateFormatter];
    v5 = [(PXContextualMemoriesTimeSetting *)self date];
    v6 = [v4 stringFromDate:v5];
  }

  else
  {
    v6 = &stru_1F1741150;
  }

  return v6;
}

- (NSString)headerTitle
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 localizedStringForKey:@"Time" value:&stru_1F1741150 table:0];

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