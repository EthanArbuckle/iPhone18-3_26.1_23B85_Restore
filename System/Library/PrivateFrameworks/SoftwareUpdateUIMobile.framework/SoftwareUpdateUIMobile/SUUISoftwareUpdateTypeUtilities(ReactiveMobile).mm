@interface SUUISoftwareUpdateTypeUtilities(ReactiveMobile)
+ (uint64_t)definitionFromSUType:()ReactiveMobile;
@end

@implementation SUUISoftwareUpdateTypeUtilities(ReactiveMobile)

+ (uint64_t)definitionFromSUType:()ReactiveMobile
{
  switch(a3)
  {
    case 1:
      return 1;
    case 2:
      return 2;
    case 3:
      return 3;
    case 4:
      return 4;
  }

  return 0;
}

@end