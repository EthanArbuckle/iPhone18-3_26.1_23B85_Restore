@interface ICSFreeBusyTypeParameter
+ (id)freeBusyTypeParameterFromCode:(unint64_t)a3;
+ (id)freeBusyTypeParameterFromICSString:(id)a3;
@end

@implementation ICSFreeBusyTypeParameter

+ (id)freeBusyTypeParameterFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"FREE"])
  {
    v4 = 4;
LABEL_9:
    v5 = [ICSFreeBusyTypeParameter freeBusyTypeParameterFromCode:v4];
    goto LABEL_10;
  }

  if ([v3 isEqualToString:@"BUSY-UNAVAILABLE"])
  {
    v4 = 2;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"BUSY-TENTATIVE"])
  {
    v4 = 3;
    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"BUSY"])
  {
    v4 = 1;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (id)freeBusyTypeParameterFromCode:(unint64_t)a3
{
  v3 = [(ICSPredefinedValue *)[ICSFreeBusyTypeParameter alloc] initWithLong:a3];

  return v3;
}

@end