@interface UIVisualEffect(StocksUI)
+ (id)su_visualEffectsForBarWithBackgroundColor:()StocksUI;
@end

@implementation UIVisualEffect(StocksUI)

+ (id)su_visualEffectsForBarWithBackgroundColor:()StocksUI
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277D75D58] effectCompositingColor:?];
  v4[0] = v0;
  v1 = [MEMORY[0x277D75210] effectWithBlurRadius:20.0];
  v4[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

@end