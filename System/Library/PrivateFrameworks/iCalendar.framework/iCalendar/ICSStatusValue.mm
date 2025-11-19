@interface ICSStatusValue
+ (id)statusTypeFromCode:(int)a3 statusString:(id)a4;
+ (id)statusValueFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSStatusValue

+ (id)statusValueFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [ICSStatusValue statusTypeFromCode:[ICSComponent statusFromString:v3] statusString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)statusTypeFromCode:(int)a3 statusString:(id)a4
{
  v5 = a4;
  v6 = [(ICSPredefinedValue *)[ICSStatusValue alloc] initWithLong:a3];
  [(ICSStatusValue *)v6 setStatusString:v5];

  return v6;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v10 = a4;
  v6 = [(ICSStatusValue *)self statusString];
  if (v6)
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

  iCalendarAppendStringToStringWithOptions(v9, v10, v4);
}

@end