@interface ICSBusyStatusValue
+ (id)busyStatusTypeFromCode:(int)code;
+ (id)busyStatusValueFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSBusyStatusValue

+ (id)busyStatusValueFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"BUSY"])
  {
    v4 = 1;
LABEL_9:
    v5 = [ICSBusyStatusValue busyStatusTypeFromCode:v4];
    goto LABEL_10;
  }

  if ([stringCopy isEqualToString:@"FREE"])
  {
    v4 = 2;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:@"TENTATIVE"])
  {
    v4 = 3;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:@"OOF"])
  {
    v4 = 4;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (id)busyStatusTypeFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSBusyStatusValue alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  v6 = [(ICSPredefinedValue *)self longValue]- 2;
  if (v6 > 2)
  {
    v7 = @"BUSY";
  }

  else
  {
    v7 = off_27A64C158[v6];
  }

  iCalendarAppendStringToStringWithOptions(v7, stringCopy, optionsCopy);
}

@end