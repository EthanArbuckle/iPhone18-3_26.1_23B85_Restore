@interface REExportedNumberValue
- (REExportedNumberValue)initWithNumber:(id)a3;
@end

@implementation REExportedNumberValue

- (REExportedNumberValue)initWithNumber:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REExportedNumberValue;
  v6 = [(REExportedNumberValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_number, a3);
  }

  return v7;
}

@end