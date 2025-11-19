@interface UISApplicationSupportDisplayEdgeInfo
@end

@implementation UISApplicationSupportDisplayEdgeInfo

uint64_t __84__UISApplicationSupportDisplayEdgeInfo_SBHScreenTypes__sb_thisDeviceDisplayEdgeInfo__block_invoke(uint64_t a1)
{
  sb_thisDeviceDisplayEdgeInfo_sNewThisDeviceDisplayEdgeInfo = [*(a1 + 32) sbh_displayEdgeInfoForScreenType:SBHScreenTypeForCurrentDevice()];

  return MEMORY[0x1EEE66BB8]();
}

@end