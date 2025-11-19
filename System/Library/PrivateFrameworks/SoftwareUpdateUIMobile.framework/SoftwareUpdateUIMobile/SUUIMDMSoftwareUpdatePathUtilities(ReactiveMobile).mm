@interface SUUIMDMSoftwareUpdatePathUtilities(ReactiveMobile)
+ (uint64_t)definitionFromSUType:()ReactiveMobile;
@end

@implementation SUUIMDMSoftwareUpdatePathUtilities(ReactiveMobile)

+ (uint64_t)definitionFromSUType:()ReactiveMobile
{
  switch(a3)
  {
    case 0:
      return 0;
    case 1:
      return 1;
    case 2:
      return 2;
  }

  return 3;
}

@end