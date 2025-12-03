@interface UISDisplayContext(SpringBoard)
+ (id)sb_defaultContextForDisplayConfiguration:()SpringBoard;
+ (id)sb_embeddedDisplayDefaultContext;
+ (id)sb_mainThreadFree_embeddedDisplayDefaultContext;
@end

@implementation UISDisplayContext(SpringBoard)

+ (id)sb_embeddedDisplayDefaultContext
{
  mEMORY[0x277D0AA90] = [MEMORY[0x277D0AA90] sharedInstance];
  mainConfiguration = [mEMORY[0x277D0AA90] mainConfiguration];

  defaultContext = [MEMORY[0x277D777A0] defaultContext];
  [defaultContext setDisplayConfiguration:mainConfiguration];
  sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  [defaultContext setDisplayEdgeInfo:sb_thisDeviceDisplayEdgeInfo];

  sb_thisDeviceDisplayShape = [MEMORY[0x277D77780] sb_thisDeviceDisplayShape];
  [defaultContext setExclusionArea:sb_thisDeviceDisplayShape];

  [defaultContext setArtworkSubtype:SBFEffectiveArtworkSubtype()];
  [defaultContext sb_configureForDeviceEmulation];
  v5 = SBApp;
  identity = [mainConfiguration identity];
  v7 = [v5 userInterfaceStyleProviderForDisplay:identity];

  [defaultContext setUserInterfaceStyle:{objc_msgSend(v7, "currentStyle")}];

  return defaultContext;
}

+ (id)sb_mainThreadFree_embeddedDisplayDefaultContext
{
  defaultContext = [MEMORY[0x277D777A0] defaultContext];
  mEMORY[0x277D0AA90] = [MEMORY[0x277D0AA90] sharedInstance];
  mainConfiguration = [mEMORY[0x277D0AA90] mainConfiguration];
  [defaultContext setDisplayConfiguration:mainConfiguration];

  sb_thisDeviceDisplayEdgeInfo = [MEMORY[0x277D77750] sb_thisDeviceDisplayEdgeInfo];
  [defaultContext setDisplayEdgeInfo:sb_thisDeviceDisplayEdgeInfo];

  sb_thisDeviceDisplayShape = [MEMORY[0x277D77780] sb_thisDeviceDisplayShape];
  [defaultContext setExclusionArea:sb_thisDeviceDisplayShape];

  [defaultContext setArtworkSubtype:SBFEffectiveArtworkSubtype()];

  return defaultContext;
}

+ (id)sb_defaultContextForDisplayConfiguration:()SpringBoard
{
  v3 = a3;
  if ([v3 isMainRootDisplay])
  {
    sb_embeddedDisplayDefaultContext = [objc_opt_class() sb_embeddedDisplayDefaultContext];
  }

  else
  {
    sb_embeddedDisplayDefaultContext = [objc_alloc(MEMORY[0x277D777A0]) initWithDisplayConfiguration:v3];
    [sb_embeddedDisplayDefaultContext setDisplayEdgeInfo:0];
    [sb_embeddedDisplayDefaultContext setExclusionArea:0];
    [sb_embeddedDisplayDefaultContext setArtworkSubtype:SBFEffectiveArtworkSubtype()];
    v5 = SBApp;
    identity = [v3 identity];
    v7 = [v5 userInterfaceStyleProviderForDisplay:identity];

    [sb_embeddedDisplayDefaultContext setUserInterfaceStyle:{objc_msgSend(v7, "currentStyle")}];
  }

  return sb_embeddedDisplayDefaultContext;
}

@end