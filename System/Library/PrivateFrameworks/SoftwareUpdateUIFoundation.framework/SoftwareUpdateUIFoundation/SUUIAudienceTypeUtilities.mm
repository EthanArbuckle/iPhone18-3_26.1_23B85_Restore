@interface SUUIAudienceTypeUtilities
+ (id)description:(int64_t)description;
@end

@implementation SUUIAudienceTypeUtilities

+ (id)description:(int64_t)description
{
  if (description)
  {
    if (description == 1)
    {
      v4 = MEMORY[0x277D82BE0](@"SUUIAudienceTypeDefault");
    }

    else if (description == 2)
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