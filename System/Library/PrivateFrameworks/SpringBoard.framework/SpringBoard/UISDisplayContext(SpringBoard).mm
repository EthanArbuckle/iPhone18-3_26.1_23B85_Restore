@interface UISDisplayContext(SpringBoard)
+ (id)sb_defaultContextForDisplayConfiguration:()SpringBoard;
+ (id)sb_embeddedDisplayDefaultContext;
+ (id)sb_mainThreadFree_embeddedDisplayDefaultContext;
@end

@implementation UISDisplayContext(SpringBoard)

+ (id)sb_embeddedDisplayDefaultContext
{
  v0 = [MEMORY[0x277D0AA90] sharedInstance];
  v1 = [v0 mainConfiguration];

  v2 = [MEMORY[0x277D777A0] defaultContext];
  [v2 setDisplayConfiguration:v1];
  v3 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  [v2 setDisplayEdgeInfo:v3];

  v4 = [MEMORY[0x277D77780] sb_thisDeviceDisplayShape];
  [v2 setExclusionArea:v4];

  [v2 setArtworkSubtype:SBFEffectiveArtworkSubtype()];
  [v2 sb_configureForDeviceEmulation];
  v5 = SBApp;
  v6 = [v1 identity];
  v7 = [v5 userInterfaceStyleProviderForDisplay:v6];

  [v2 setUserInterfaceStyle:{objc_msgSend(v7, "currentStyle")}];

  return v2;
}

+ (id)sb_mainThreadFree_embeddedDisplayDefaultContext
{
  v0 = [MEMORY[0x277D777A0] defaultContext];
  v1 = [MEMORY[0x277D0AA90] sharedInstance];
  v2 = [v1 mainConfiguration];
  [v0 setDisplayConfiguration:v2];

  v3 = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  [v0 setDisplayEdgeInfo:v3];

  v4 = [MEMORY[0x277D77780] sb_thisDeviceDisplayShape];
  [v0 setExclusionArea:v4];

  [v0 setArtworkSubtype:SBFEffectiveArtworkSubtype()];

  return v0;
}

+ (id)sb_defaultContextForDisplayConfiguration:()SpringBoard
{
  v3 = a3;
  if ([v3 isMainRootDisplay])
  {
    v4 = [objc_opt_class() sb_embeddedDisplayDefaultContext];
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277D777A0]) initWithDisplayConfiguration:v3];
    [v4 setDisplayEdgeInfo:0];
    [v4 setExclusionArea:0];
    [v4 setArtworkSubtype:SBFEffectiveArtworkSubtype()];
    v5 = SBApp;
    v6 = [v3 identity];
    v7 = [v5 userInterfaceStyleProviderForDisplay:v6];

    [v4 setUserInterfaceStyle:{objc_msgSend(v7, "currentStyle")}];
  }

  return v4;
}

@end