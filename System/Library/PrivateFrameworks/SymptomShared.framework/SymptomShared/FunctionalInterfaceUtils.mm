@interface FunctionalInterfaceUtils
+ (id)stringForFunctionalInterfaceType:(unsigned __int8)a3;
+ (unsigned)nwFunctionalInterfaceTypeForNWInterface:(id)a3;
@end

@implementation FunctionalInterfaceUtils

+ (unsigned)nwFunctionalInterfaceTypeForNWInterface:(id)a3
{
  v3 = a3;
  v4 = [v3 type];
  v5 = [v3 subtype];

  return [FunctionalInterfaceUtils nwFunctionalInterfaceTypeForNWInterfaceType:v4 nwInterfaceSubtype:v5];
}

+ (id)stringForFunctionalInterfaceType:(unsigned __int8)a3
{
  if ((a3 - 1) > 6)
  {
    return @"Other";
  }

  else
  {
    return off_2789868A0[(a3 - 1)];
  }
}

@end