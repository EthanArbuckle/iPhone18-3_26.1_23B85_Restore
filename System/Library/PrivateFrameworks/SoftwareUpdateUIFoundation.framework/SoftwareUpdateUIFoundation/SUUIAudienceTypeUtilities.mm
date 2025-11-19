@interface SUUIAudienceTypeUtilities
+ (id)description:(int64_t)a3;
@end

@implementation SUUIAudienceTypeUtilities

+ (id)description:(int64_t)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = MEMORY[0x277D82BE0](@"SUUIAudienceTypeDefault");
    }

    else if (a3 == 2)
    {
      v4 = MEMORY[0x277D82BE0](@"SUUIAudienceTypeAlternate");
    }
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](@"SUUIAudienceTypeUnspecified");
  }

  return v4;
}

@end