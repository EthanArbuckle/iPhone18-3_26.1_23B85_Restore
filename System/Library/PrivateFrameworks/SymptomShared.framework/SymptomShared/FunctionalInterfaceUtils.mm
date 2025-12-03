@interface FunctionalInterfaceUtils
+ (id)stringForFunctionalInterfaceType:(unsigned __int8)type;
+ (unsigned)nwFunctionalInterfaceTypeForNWInterface:(id)interface;
@end

@implementation FunctionalInterfaceUtils

+ (unsigned)nwFunctionalInterfaceTypeForNWInterface:(id)interface
{
  interfaceCopy = interface;
  type = [interfaceCopy type];
  subtype = [interfaceCopy subtype];

  return [FunctionalInterfaceUtils nwFunctionalInterfaceTypeForNWInterfaceType:type nwInterfaceSubtype:subtype];
}

+ (id)stringForFunctionalInterfaceType:(unsigned __int8)type
{
  if ((type - 1) > 6)
  {
    return @"Other";
  }

  else
  {
    return off_2789868A0[(type - 1)];
  }
}

@end