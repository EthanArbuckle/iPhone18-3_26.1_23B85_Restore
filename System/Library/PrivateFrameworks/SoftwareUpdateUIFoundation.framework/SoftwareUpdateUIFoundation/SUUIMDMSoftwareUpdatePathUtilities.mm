@interface SUUIMDMSoftwareUpdatePathUtilities
+ (id)description:(unint64_t)description;
@end

@implementation SUUIMDMSoftwareUpdatePathUtilities

+ (id)description:(unint64_t)description
{
  if (description)
  {
    switch(description)
    {
      case 1uLL:
        v4 = MEMORY[0x277D82BE0](@"SUUIMDMSoftwareUpdatePathSlow");
        break;
      case 2uLL:
        v4 = MEMORY[0x277D82BE0](@"SUUIMDMSoftwareUpdatePathFast");
        break;
      case 3uLL:
        v4 = MEMORY[0x277D82BE0](@"SUUIMDMSoftwareUpdatePathNotSet");
        break;
    }
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](@"SUUIMDMSoftwareUpdatePathDefault");
  }

  return v4;
}

@end