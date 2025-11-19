@interface ICSBusyStatusValue
+ (id)busyStatusTypeFromCode:(int)a3;
+ (id)busyStatusValueFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSBusyStatusValue

+ (id)busyStatusValueFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"BUSY"])
  {
    v4 = 1;
LABEL_9:
    v5 = [ICSBusyStatusValue busyStatusTypeFromCode:v4];
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"FREE"])
  {
    v4 = 2;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"TENTATIVE"])
  {
    v4 = 3;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"OOF"])
  {
    v4 = 4;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (id)busyStatusTypeFromCode:(int)a3
{
  v3 = [(ICSPredefinedValue *)[ICSBusyStatusValue alloc] initWithLong:a3];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = [(ICSPredefinedValue *)self longValue]- 2;
  if (v6 > 2)
  {
    v7 = @"BUSY";
  }

  else
  {
    v7 = off_27A64C158[v6];
  }

  iCalendarAppendStringToStringWithOptions(v7, v8, v4);
}

@end