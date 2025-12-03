@interface UISApplicationSupportDisplayEdgeInfo(SpringBoard)
+ (id)sb_displayEdgeInfoForApplication:()SpringBoard;
+ (id)sb_displayEdgeInfoForScreenTypeConsideringCurrentDevice:()SpringBoard;
+ (id)sb_floatingApplicationDisplayEdgeInfo;
+ (id)sb_thisDeviceDisplayEdgeInfo;
- (__n128)sb_orientedEdgeInsetsForInterfaceOrientation:()SpringBoard traitCollection:;
- (id)sb_displayEdgeInfoWithSafeAreaInsetsForStatusBarHeight:()SpringBoard;
@end

@implementation UISApplicationSupportDisplayEdgeInfo(SpringBoard)

+ (id)sb_thisDeviceDisplayEdgeInfo
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__UISApplicationSupportDisplayEdgeInfo_SpringBoard__sb_thisDeviceDisplayEdgeInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sb_thisDeviceDisplayEdgeInfo_onceToken != -1)
  {
    dispatch_once(&sb_thisDeviceDisplayEdgeInfo_onceToken, block);
  }

  v1 = sb_thisDeviceDisplayEdgeInfo_sNewThisDeviceDisplayEdgeInfo;

  return v1;
}

+ (id)sb_floatingApplicationDisplayEdgeInfo
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__UISApplicationSupportDisplayEdgeInfo_SpringBoard__sb_floatingApplicationDisplayEdgeInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sb_floatingApplicationDisplayEdgeInfo_onceToken != -1)
  {
    dispatch_once(&sb_floatingApplicationDisplayEdgeInfo_onceToken, block);
  }

  v1 = sb_floatingApplicationDisplayEdgeInfo_sFloatingApplicationDisplayEdgeInfo;

  return v1;
}

+ (id)sb_displayEdgeInfoForApplication:()SpringBoard
{
  v4 = a3;
  _classicMode = [v4 _classicMode];
  if (SBApplicationClassicModeWantsSafeAreaInsets(_classicMode))
  {
    [self sb_displayEdgeInfoForScreenTypeConsideringCurrentDevice:{-[SBApplication _screenTypeForClassicMode:](v4, _classicMode)}];
  }

  else
  {
    [self sb_legacy_homeButtonDeviceDisplayEdgeInfo];
  }
  v6 = ;

  return v6;
}

+ (id)sb_displayEdgeInfoForScreenTypeConsideringCurrentDevice:()SpringBoard
{
  v5 = [self sbh_displayEdgeInfoForScreenType:?];
  v6 = SBHScreenTypeForCurrentDevice();
  if (v6 != a3)
  {
    v7 = v6;
    if (SBHScreenTypeIsPhone())
    {
      HasHomeButton = SBHScreenTypeHasHomeButton();
      if (v7 - 31 >= 0xFFFFFFFFFFFFFFF6 && (HasHomeButton & 1) == 0)
      {
        v9 = [SBApplication _unobscuredScreenTypeForScreenType:v7];
        SBHGetScreenSpecification();
        SBHGetScreenSpecification();
        v10 = [self sbh_displayEdgeInfoForScreenType:v9];
        safeAreaInsetsPortrait = [v10 safeAreaInsetsPortrait];
        [safeAreaInsetsPortrait topInset];
        v13 = round(0.0 / 0.0 * v12);

        safeAreaInsetsPortrait2 = [v5 safeAreaInsetsPortrait];
        v15 = objc_alloc(MEMORY[0x277D77758]);
        [safeAreaInsetsPortrait2 leftInset];
        v17 = v16;
        [safeAreaInsetsPortrait2 bottomInset];
        v19 = v18;
        [safeAreaInsetsPortrait2 rightInset];
        v21 = [v15 initWithTop:v13 left:v17 bottom:v19 right:v20];
        [v5 setSafeAreaInsetsPortrait:v21];
      }
    }
  }

  return v5;
}

- (id)sb_displayEdgeInfoWithSafeAreaInsetsForStatusBarHeight:()SpringBoard
{
  safeAreaInsetsPortrait = [self safeAreaInsetsPortrait];
  [safeAreaInsetsPortrait topInset];
  v6 = v5;

  if (v6 >= a2)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [self copy];
    safeAreaInsetsPortrait2 = [selfCopy safeAreaInsetsPortrait];
    v9 = objc_alloc(MEMORY[0x277D77758]);
    [safeAreaInsetsPortrait2 leftInset];
    v11 = v10;
    [safeAreaInsetsPortrait2 bottomInset];
    v13 = v12;
    [safeAreaInsetsPortrait2 rightInset];
    v15 = [v9 initWithTop:a2 left:v11 bottom:v13 right:v14];
    [selfCopy setSafeAreaInsetsPortrait:v15];
  }

  return selfCopy;
}

- (__n128)sb_orientedEdgeInsetsForInterfaceOrientation:()SpringBoard traitCollection:
{
  v5 = a4;
  safeAreaInsetsPortrait = [self safeAreaInsetsPortrait];
  UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
  v24 = v7;
  v25 = v8;
  v22 = v9;
  v23 = v10;

  *&v11.f64[0] = v24;
  v11.f64[1] = v22;
  v12.f64[0] = v25;
  v12.f64[1] = v23;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v11, *MEMORY[0x277D768C8]), vceqq_f64(v12, *(MEMORY[0x277D768C8] + 16))))) & 1) == 0)
  {
    if (![v5 userInterfaceIdiom])
    {
      SBFEdgeInsetsRotateToInterfaceOrientation();
      v14 = v13;
      v24 = v15;
      v17 = v16;
      userInterfaceIdiom = [v5 userInterfaceIdiom];
      v19 = fmax(v14, v17);
      if (userInterfaceIdiom == 3)
      {
        v19 = v14;
      }

      v22 = v19;
    }

    homeAffordanceOverlayAllowance = [self homeAffordanceOverlayAllowance];
    [homeAffordanceOverlayAllowance doubleValue];
  }

  return v24;
}

@end