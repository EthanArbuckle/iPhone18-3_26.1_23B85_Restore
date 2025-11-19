@interface REExportedStringValue
- (REExportedStringValue)initWithString:(id)a3;
@end

@implementation REExportedStringValue

- (REExportedStringValue)initWithString:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = REExportedStringValue;
  v5 = [(REExportedStringValue *)&v8 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v4 identifier];

      v4 = v6;
    }

    objc_storeStrong(&v5->_string, v4);
  }

  return v5;
}

@end