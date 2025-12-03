@interface SUUISoftwareUpdateTypeUtilities
+ (id)description:(int64_t)description;
@end

@implementation SUUISoftwareUpdateTypeUtilities

+ (id)description:(int64_t)description
{
  if (description)
  {
    switch(description)
    {
      case 1:
        v4 = MEMORY[0x277D82BE0](@"SUUISoftwareUpdateTypeIncremental");
        break;
      case 2:
        v4 = MEMORY[0x277D82BE0](@"SUUISoftwareUpdateTypeFull");
        break;
      case 3:
        v4 = MEMORY[0x277D82BE0](@"SUUISoftwareUpdateTypeEmergency");
        break;
      case 4:
        v4 = MEMORY[0x277D82BE0](@"SUUISoftwareUpdateTypeSplat");
        break;
    }
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](@"SUUISoftwareUpdateTypeUnknown");
  }

  return v4;
}

@end