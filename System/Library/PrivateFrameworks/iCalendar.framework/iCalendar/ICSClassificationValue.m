@interface ICSClassificationValue
+ (id)classificationFromCode:(int)a3;
+ (id)classificationValueFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSClassificationValue

+ (id)classificationValueFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PUBLIC"])
  {
    v4 = 1;
LABEL_7:
    v5 = [ICSClassificationValue classificationFromCode:v4];
    goto LABEL_8;
  }

  if ([v3 isEqualToString:@"PRIVATE"])
  {
    v4 = 2;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"CONFIDENTIAL"])
  {
    v4 = 3;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (id)classificationFromCode:(int)a3
{
  v3 = [(ICSPredefinedValue *)[ICSClassificationValue alloc] initWithLong:a3];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v9 = a4;
  v6 = [(ICSPredefinedValue *)self longValue];
  v7 = @"PUBLIC";
  if (v6 == 2)
  {
    v7 = @"PRIVATE";
  }

  if (v6 == 3)
  {
    v8 = @"CONFIDENTIAL";
  }

  else
  {
    v8 = v7;
  }

  iCalendarAppendStringToStringWithOptions(v8, v9, v4);
}

@end