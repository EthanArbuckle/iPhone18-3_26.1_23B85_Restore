@interface UISDeviceContext(SpringBoard)
+ (id)sb_defaultContext;
@end

@implementation UISDeviceContext(SpringBoard)

+ (id)sb_defaultContext
{
  v0 = [MEMORY[0x277D77798] defaultContext];
  SBHScreenTypeForCurrentDevice();
  SBHDisplayCornerRadiusForScreenType();
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  [v0 setDeviceInfoValue:v1 forKey:*MEMORY[0x277D77810]];

  [v0 sb_configureForDeviceEmulation];

  return v0;
}

@end