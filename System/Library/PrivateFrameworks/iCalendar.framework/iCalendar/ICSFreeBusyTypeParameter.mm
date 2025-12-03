@interface ICSFreeBusyTypeParameter
+ (id)freeBusyTypeParameterFromCode:(unint64_t)code;
+ (id)freeBusyTypeParameterFromICSString:(id)string;
@end

@implementation ICSFreeBusyTypeParameter

+ (id)freeBusyTypeParameterFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"FREE"])
  {
    v4 = 4;
LABEL_9:
    v5 = [ICSFreeBusyTypeParameter freeBusyTypeParameterFromCode:v4];
    goto LABEL_10;
  }

  if ([stringCopy isEqualToString:@"BUSY-UNAVAILABLE"])
  {
    v4 = 2;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:@"BUSY-TENTATIVE"])
  {
    v4 = 3;
    goto LABEL_9;
  }

  if ([stringCopy isEqualToString:@"BUSY"])
  {
    v4 = 1;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (id)freeBusyTypeParameterFromCode:(unint64_t)code
{
  v3 = [(ICSPredefinedValue *)[ICSFreeBusyTypeParameter alloc] initWithLong:code];

  return v3;
}

@end