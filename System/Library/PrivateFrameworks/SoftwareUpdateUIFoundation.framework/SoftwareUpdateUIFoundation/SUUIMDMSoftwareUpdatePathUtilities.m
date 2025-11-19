@interface SUUIMDMSoftwareUpdatePathUtilities
+ (id)description:(unint64_t)a3;
@end

@implementation SUUIMDMSoftwareUpdatePathUtilities

+ (id)description:(unint64_t)a3
{
  if (a3)
  {
    switch(a3)
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