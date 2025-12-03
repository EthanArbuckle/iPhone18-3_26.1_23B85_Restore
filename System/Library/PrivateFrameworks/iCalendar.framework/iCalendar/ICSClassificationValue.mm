@interface ICSClassificationValue
+ (id)classificationFromCode:(int)code;
+ (id)classificationValueFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSClassificationValue

+ (id)classificationValueFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"PUBLIC"])
  {
    v4 = 1;
LABEL_7:
    v5 = [ICSClassificationValue classificationFromCode:v4];
    goto LABEL_8;
  }

  if ([stringCopy isEqualToString:@"PRIVATE"])
  {
    v4 = 2;
    goto LABEL_7;
  }

  if ([stringCopy isEqualToString:@"CONFIDENTIAL"])
  {
    v4 = 3;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (id)classificationFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSClassificationValue alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  longValue = [(ICSPredefinedValue *)self longValue];
  v7 = @"PUBLIC";
  if (longValue == 2)
  {
    v7 = @"PRIVATE";
  }

  if (longValue == 3)
  {
    v8 = @"CONFIDENTIAL";
  }

  else
  {
    v8 = v7;
  }

  iCalendarAppendStringToStringWithOptions(v8, stringCopy, optionsCopy);
}

@end