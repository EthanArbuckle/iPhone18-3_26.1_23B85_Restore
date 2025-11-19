@interface ICSRoleParameter
+ (id)roleParameterFromCode:(int)a3;
+ (id)roleParameterFromICSString:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSRoleParameter

+ (id)roleParameterFromICSString:(id)a3
{
  v3 = [ICSUserAddress roleFromICSString:a3];
  if (v3)
  {
    v4 = [ICSRoleParameter roleParameterFromCode:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)roleParameterFromCode:(int)a3
{
  v3 = [(ICSPredefinedValue *)[ICSRoleParameter alloc] initWithLong:a3];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [ICSUserAddress ICSStringFromRole:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, v6, v4);
}

@end