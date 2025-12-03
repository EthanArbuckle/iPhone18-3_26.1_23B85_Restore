@interface ICSStatusValue
+ (id)statusTypeFromCode:(int)code statusString:(id)string;
+ (id)statusValueFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSStatusValue

+ (id)statusValueFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = [ICSStatusValue statusTypeFromCode:[ICSComponent statusFromString:stringCopy] statusString:stringCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)statusTypeFromCode:(int)code statusString:(id)string
{
  stringCopy = string;
  v6 = [(ICSPredefinedValue *)[ICSStatusValue alloc] initWithLong:code];
  [(ICSStatusValue *)v6 setStatusString:stringCopy];

  return v6;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  statusString = [(ICSStatusValue *)self statusString];
  if (statusString)
  {
    [(ICSStatusValue *)self statusString];
  }

  else
  {
    [ICSComponent stringFromStatus:[(ICSPredefinedValue *)self longValue]];
  }
  v7 = ;

  v8 = @"TENTATIVE";
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  iCalendarAppendStringToStringWithOptions(v9, stringCopy, optionsCopy);
}

@end