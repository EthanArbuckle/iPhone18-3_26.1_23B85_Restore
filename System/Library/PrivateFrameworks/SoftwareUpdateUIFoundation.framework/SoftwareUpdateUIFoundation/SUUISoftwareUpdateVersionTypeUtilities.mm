@interface SUUISoftwareUpdateVersionTypeUtilities
+ (id)description:(int64_t)a3;
@end

@implementation SUUISoftwareUpdateVersionTypeUtilities

+ (id)description:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = MEMORY[0x277D82BE0](@"SUUISoftwareUpdateVersionTypeMajor");
    }

    else if (a3 == 2)
    {
      v4 = MEMORY[0x277D82BE0](@"SUUISoftwareUpdateVersionTypeMinor");
    }
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](@"SUUISoftwareUpdateVersionTypeUnknown");
  }

  return v4;
}

@end