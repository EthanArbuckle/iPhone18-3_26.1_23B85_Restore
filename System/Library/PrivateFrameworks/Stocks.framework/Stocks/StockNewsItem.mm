@interface StockNewsItem
+ (id)localizedStringForDate:(id)a3;
- (NSString)localizedDateString;
- (StockNewsItem)initWithArchiveDictionary:(id)a3;
- (id)archiveDictionary;
- (id)description;
- (int64_t)chronologicalComparisonWithNewsItem:(id)a3;
- (void)resetLocale;
- (void)setDate:(id)a3;
@end

@implementation StockNewsItem

+ (id)localizedStringForDate:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (!dateFormatter_0)
    {
      dateFormatter_0 = CFDateFormatterCreate(0, [MEMORY[0x277CBEAF8] currentLocale], kCFDateFormatterShortStyle, kCFDateFormatterNoStyle);
    }

    if (!timeFormatter)
    {
      timeFormatter = CFDateFormatterCreate(0, [MEMORY[0x277CBEAF8] currentLocale], kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
    }

    v4 = objc_alloc(MEMORY[0x277CBEA80]);
    v5 = [v4 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
    v6 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [v5 setTimeZone:v6];

    v7 = [v5 isDateInToday:v3];
    StringWithDate = CFDateFormatterCreateStringWithDate(0, timeFormatter, v3);
    v9 = StringWithDate;
    if (v7)
    {
      v10 = StringWithDate;
    }

    else
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [StocksBundles getBundle:1];
      v13 = [v12 localizedStringForKey:@"%@ at %@" value:&stru_287C73C90 table:@"Localizable"];
      v14 = CFDateFormatterCreateStringWithDate(0, dateFormatter_0, v3);
      v10 = [v11 stringWithFormat:v13, v14, v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)resetLocale
{
  if (dateFormatter_0)
  {
    CFRelease(dateFormatter_0);
    dateFormatter_0 = 0;
  }

  if (timeFormatter)
  {
    CFRelease(timeFormatter);
    timeFormatter = 0;
  }

  localizedDateString = self->_localizedDateString;
  self->_localizedDateString = 0;
}

- (StockNewsItem)initWithArchiveDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = StockNewsItem;
  v5 = [(StockNewsItem *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"nih"];
    v7 = [v4 objectForKey:@"nisum"];
    v8 = [v4 objectForKey:@"nis"];
    v9 = [v4 objectForKey:@"nid"];
    v10 = [v4 objectForKey:@"nil"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (v11 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v10]) != 0)
    {
      v12 = v11;
      [(StockNewsItem *)v5 setHeadline:v6];
      [(StockNewsItem *)v5 setSummary:v7];
      [(StockNewsItem *)v5 setSource:v8];
      v13 = MEMORY[0x277CBEAA8];
      [v9 doubleValue];
      v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
      [(StockNewsItem *)v5 setDate:v14];

      [(StockNewsItem *)v5 setLink:v12];
      v15 = v5;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)archiveDictionary
{
  v3 = objc_alloc(MEMORY[0x277CCABB0]);
  [(NSDate *)self->_date timeIntervalSinceReferenceDate];
  v4 = [v3 initWithDouble:?];
  v5 = MEMORY[0x277CBEAC0];
  headline = self->_headline;
  summary = self->_summary;
  v8 = [(NSURL *)self->_link absoluteString];
  v9 = [v5 dictionaryWithObjectsAndKeys:{headline, @"nih", summary, @"nisum", v4, @"nid", v8, @"nil", self->_source, @"nis", 0}];

  return v9;
}

- (void)setDate:(id)a3
{
  v5 = a3;
  p_date = &self->_date;
  if (self->_date != v5)
  {
    v8 = v5;
    objc_storeStrong(p_date, a3);
    localizedDateString = self->_localizedDateString;
    self->_localizedDateString = 0;

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_date, v5);
}

- (int64_t)chronologicalComparisonWithNewsItem:(id)a3
{
  v4 = [a3 date];
  v5 = [(StockNewsItem *)self date];
  v6 = [v4 compare:v5];

  return v6;
}

- (NSString)localizedDateString
{
  localizedDateString = self->_localizedDateString;
  if (!localizedDateString)
  {
    v4 = [StockNewsItem localizedStringForDate:self->_date];
    v5 = self->_localizedDateString;
    self->_localizedDateString = v4;

    localizedDateString = self->_localizedDateString;
  }

  return localizedDateString;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(StockNewsItem *)self headline];
  v5 = [(StockNewsItem *)self date];
  v6 = [v3 stringWithFormat:@"<StockNewsItem: %p, headline: %@, date: %@>", self, v4, v5];

  return v6;
}

@end