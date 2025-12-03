@interface SUUISoftwareUpdateVersionTypeUtilities
+ (id)description:(int64_t)description;
@end

@implementation SUUISoftwareUpdateVersionTypeUtilities

+ (id)description:(int64_t)description
{
  if (description)
  {
    if (description == 1)
    {
      v4 = MEMORY[0x277D82BE0](@"SUUISoftwareUpdateVersionTypeMajor");
    }

    else if (description == 2)
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