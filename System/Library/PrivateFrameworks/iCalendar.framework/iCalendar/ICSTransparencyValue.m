@interface ICSTransparencyValue
+ (id)transparencyTypeFromCode:(int)a3;
+ (id)transparencyValueFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSTransparencyValue

+ (id)transparencyValueFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"TRANSPARENT"])
  {
    v4 = 2;
LABEL_5:
    v5 = [ICSTransparencyValue transparencyTypeFromCode:v4];
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"OPAQUE"])
  {
    v4 = 1;
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)transparencyTypeFromCode:(int)a3
{
  v3 = [(ICSPredefinedValue *)[ICSTransparencyValue alloc] initWithLong:a3];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v7 = a4;
  if ([(ICSPredefinedValue *)self longValue]== 2)
  {
    v6 = @"TRANSPARENT";
  }

  else
  {
    v6 = @"OPAQUE";
  }

  iCalendarAppendStringToStringWithOptions(v6, v7, v4);
}

@end