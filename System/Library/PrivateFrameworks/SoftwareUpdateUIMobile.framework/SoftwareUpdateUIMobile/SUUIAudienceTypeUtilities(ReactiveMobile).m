@interface SUUIAudienceTypeUtilities(ReactiveMobile)
+ (uint64_t)definitionFromSUType:()ReactiveMobile;
@end

@implementation SUUIAudienceTypeUtilities(ReactiveMobile)

+ (uint64_t)definitionFromSUType:()ReactiveMobile
{
  if (a3 == 1)
  {
    return 1;
  }

  if (a3 == 2)
  {
    return 2;
  }

  return 1;
}

@end