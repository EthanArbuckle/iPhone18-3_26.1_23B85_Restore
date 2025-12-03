@interface REExportedDateValue
- (REExportedDateValue)initWithDate:(id)date;
@end

@implementation REExportedDateValue

- (REExportedDateValue)initWithDate:(id)date
{
  dateCopy = date;
  v9.receiver = self;
  v9.super_class = REExportedDateValue;
  v6 = [(REExportedDateValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, date);
  }

  return v7;
}

@end