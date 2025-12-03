@interface REExportedStringValue
- (REExportedStringValue)initWithString:(id)string;
@end

@implementation REExportedStringValue

- (REExportedStringValue)initWithString:(id)string
{
  stringCopy = string;
  v8.receiver = self;
  v8.super_class = REExportedStringValue;
  v5 = [(REExportedStringValue *)&v8 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [stringCopy identifier];

      stringCopy = identifier;
    }

    objc_storeStrong(&v5->_string, stringCopy);
  }

  return v5;
}

@end