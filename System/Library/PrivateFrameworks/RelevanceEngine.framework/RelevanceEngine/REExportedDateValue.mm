@interface REExportedDateValue
- (REExportedDateValue)initWithDate:(id)a3;
@end

@implementation REExportedDateValue

- (REExportedDateValue)initWithDate:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REExportedDateValue;
  v6 = [(REExportedDateValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_date, a3);
  }

  return v7;
}

@end