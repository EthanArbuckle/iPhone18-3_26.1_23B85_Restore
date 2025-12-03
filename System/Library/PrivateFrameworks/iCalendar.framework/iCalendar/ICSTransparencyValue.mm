@interface ICSTransparencyValue
+ (id)transparencyTypeFromCode:(int)code;
+ (id)transparencyValueFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSTransparencyValue

+ (id)transparencyValueFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"TRANSPARENT"])
  {
    v4 = 2;
LABEL_5:
    v5 = [ICSTransparencyValue transparencyTypeFromCode:v4];
    goto LABEL_7;
  }

  if ([stringCopy isEqualToString:@"OPAQUE"])
  {
    v4 = 1;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)transparencyTypeFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSTransparencyValue alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  if ([(ICSPredefinedValue *)self longValue]== 2)
  {
    v6 = @"TRANSPARENT";
  }

  else
  {
    v6 = @"OPAQUE";
  }

  iCalendarAppendStringToStringWithOptions(v6, stringCopy, optionsCopy);
}

@end