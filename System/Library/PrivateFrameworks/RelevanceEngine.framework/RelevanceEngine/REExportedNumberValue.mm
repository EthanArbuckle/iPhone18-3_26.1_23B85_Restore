@interface REExportedNumberValue
- (REExportedNumberValue)initWithNumber:(id)number;
@end

@implementation REExportedNumberValue

- (REExportedNumberValue)initWithNumber:(id)number
{
  numberCopy = number;
  v9.receiver = self;
  v9.super_class = REExportedNumberValue;
  v6 = [(REExportedNumberValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_number, number);
  }

  return v7;
}

@end