@interface ICSRoleParameter
+ (id)roleParameterFromCode:(int)code;
+ (id)roleParameterFromICSString:(id)string;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSRoleParameter

+ (id)roleParameterFromICSString:(id)string
{
  v3 = [ICSUserAddress roleFromICSString:string];
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

+ (id)roleParameterFromCode:(int)code
{
  v3 = [(ICSPredefinedValue *)[ICSRoleParameter alloc] initWithLong:code];

  return v3;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  optionsCopy = options;
  stringCopy = string;
  v7 = [ICSUserAddress ICSStringFromRole:[(ICSPredefinedValue *)self longValue]];
  iCalendarAppendStringToStringWithOptions(v7, stringCopy, optionsCopy);
}

@end