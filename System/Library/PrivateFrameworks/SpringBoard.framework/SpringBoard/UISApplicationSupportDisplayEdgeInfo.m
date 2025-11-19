@interface UISApplicationSupportDisplayEdgeInfo
@end

@implementation UISApplicationSupportDisplayEdgeInfo

void __81__UISApplicationSupportDisplayEdgeInfo_SpringBoard__sb_thisDeviceDisplayEdgeInfo__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sbh_displayEdgeInfoForScreenType:SBHScreenTypeForCurrentDevice()];
  v2 = sb_thisDeviceDisplayEdgeInfo_sNewThisDeviceDisplayEdgeInfo;
  sb_thisDeviceDisplayEdgeInfo_sNewThisDeviceDisplayEdgeInfo = v1;
}

void __90__UISApplicationSupportDisplayEdgeInfo_SpringBoard__sb_floatingApplicationDisplayEdgeInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sb_thisDeviceDisplayEdgeInfo];
  v3 = sb_floatingApplicationDisplayEdgeInfo_sFloatingApplicationDisplayEdgeInfo;
  sb_floatingApplicationDisplayEdgeInfo_sFloatingApplicationDisplayEdgeInfo = v2;

  v4 = [*(a1 + 32) sb_legacy_roundCornerPadDisplayEdgeInfo];
  if (v4 != sb_floatingApplicationDisplayEdgeInfo_sFloatingApplicationDisplayEdgeInfo)
  {
    v22 = v4;
    v5 = [v4 safeAreaInsetsPortrait];
    [v5 bottomInset];
    v7 = v6;

    v8 = [sb_floatingApplicationDisplayEdgeInfo_sFloatingApplicationDisplayEdgeInfo safeAreaInsetsPortrait];
    [v8 bottomInset];
    v10 = v9;

    v4 = v22;
    if (v7 > v10)
    {
      v11 = [sb_floatingApplicationDisplayEdgeInfo_sFloatingApplicationDisplayEdgeInfo copy];
      v12 = sb_floatingApplicationDisplayEdgeInfo_sFloatingApplicationDisplayEdgeInfo;
      sb_floatingApplicationDisplayEdgeInfo_sFloatingApplicationDisplayEdgeInfo = v11;

      v13 = [sb_floatingApplicationDisplayEdgeInfo_sFloatingApplicationDisplayEdgeInfo safeAreaInsetsPortrait];
      v14 = sb_floatingApplicationDisplayEdgeInfo_sFloatingApplicationDisplayEdgeInfo;
      v15 = objc_alloc(MEMORY[0x277D77758]);
      [v13 topInset];
      v17 = v16;
      [v13 leftInset];
      v19 = v18;
      [v13 rightInset];
      v21 = [v15 initWithTop:v17 left:v19 bottom:v7 right:v20];
      [v14 setSafeAreaInsetsPortrait:v21];

      v4 = v22;
    }
  }
}

void __99__UISApplicationSupportDisplayEdgeInfo_SpringBoardPreAzul__sb_legacy_roundCornerPadDisplayEdgeInfo__block_invoke(uint64_t a1)
{
  v2 = SBFIsSAEIncreasedInsetAvailable();
  if (v2)
  {
    v3 = 25.0;
  }

  else
  {
    v3 = 20.0;
  }

  if (v2)
  {
    v4 = 20.0;
  }

  else
  {
    v4 = 15.0;
  }

  v5 = objc_alloc_init(*(a1 + 32));
  v6 = sb_legacy_roundCornerPadDisplayEdgeInfo_sRoundCornerPadDisplayEdgeInfo;
  sb_legacy_roundCornerPadDisplayEdgeInfo_sRoundCornerPadDisplayEdgeInfo = v5;

  v7 = sb_legacy_roundCornerPadDisplayEdgeInfo_sRoundCornerPadDisplayEdgeInfo;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [v7 setHomeAffordanceOverlayAllowance:v8];

  v9 = sb_legacy_roundCornerPadDisplayEdgeInfo_sRoundCornerPadDisplayEdgeInfo;
  v10 = [objc_alloc(MEMORY[0x277D77758]) initWithTop:0.0 left:0.0 bottom:v3 right:0.0];
  [v9 setSafeAreaInsetsPortrait:v10];
}

void __101__UISApplicationSupportDisplayEdgeInfo_SpringBoardPreAzul__sb_legacy_homeButtonDeviceDisplayEdgeInfo__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sb_legacy_homeButtonDeviceDisplayEdgeInfo_sHomeButtonDeviceDisplayEdgeInfo;
  sb_legacy_homeButtonDeviceDisplayEdgeInfo_sHomeButtonDeviceDisplayEdgeInfo = v1;
}

@end