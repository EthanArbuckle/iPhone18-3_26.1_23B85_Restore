@interface UISApplicationSupportDisplayEdgeInfo(SBHScreenTypes)
+ (id)sb_thisDeviceDisplayEdgeInfo;
+ (id)sbh_displayEdgeInfoForScreenType:()SBHScreenTypes;
- (void)sb_applyDisplayEdgeInfoToSceneSettings:()SBHScreenTypes;
@end

@implementation UISApplicationSupportDisplayEdgeInfo(SBHScreenTypes)

+ (id)sb_thisDeviceDisplayEdgeInfo
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__UISApplicationSupportDisplayEdgeInfo_SBHScreenTypes__sb_thisDeviceDisplayEdgeInfo__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sb_thisDeviceDisplayEdgeInfo_onceToken != -1)
  {
    dispatch_once(&sb_thisDeviceDisplayEdgeInfo_onceToken, block);
  }

  v1 = sb_thisDeviceDisplayEdgeInfo_sNewThisDeviceDisplayEdgeInfo;

  return v1;
}

+ (id)sbh_displayEdgeInfoForScreenType:()SBHScreenTypes
{
  v5 = 29.0;
  v6 = 49.0;
  v7 = 51.0;
  *&v8 = 48.0;
  v9 = 38.0;
  v10 = 53.0;
  v11 = 40.0;
  switch(a3)
  {
    case 3uLL:
    case 5uLL:
    case 8uLL:
      v12 = 0x4046000000000000;
      goto LABEL_7;
    case 4uLL:
LABEL_19:
      v10 = v9;
      goto LABEL_26;
    case 6uLL:
LABEL_18:
      v5 = 30.67;
      v10 = v11;
      goto LABEL_26;
    case 7uLL:
      goto LABEL_24;
    case 9uLL:
    case 0xFuLL:
      v12 = 0x4049000000000000;
LABEL_7:
      v8 = v12;
      goto LABEL_11;
    case 0xAuLL:
    case 0x10uLL:
      *&v8 = 43.0;
      goto LABEL_11;
    case 0xBuLL:
    case 0xDuLL:
    case 0x11uLL:
    case 0x13uLL:
      *&v8 = 47.0;
      goto LABEL_11;
    case 0xCuLL:
    case 0x12uLL:
      *&v8 = 39.0;
      goto LABEL_11;
    case 0xEuLL:
    case 0x14uLL:
      *&v8 = 41.0;
      goto LABEL_11;
    case 0x15uLL:
    case 0x17uLL:
      *&v8 = 59.0;
      goto LABEL_11;
    case 0x16uLL:
LABEL_17:
      v5 = 27.67;
      goto LABEL_25;
    case 0x18uLL:
LABEL_20:
      v5 = 31.0;
      v10 = v7;
      goto LABEL_26;
    case 0x19uLL:
    case 0x1BuLL:
      v13 = 0x404F000000000000;
      goto LABEL_23;
    case 0x1AuLL:
LABEL_21:
      v5 = 27.0;
      v10 = v6;
      goto LABEL_26;
    case 0x1CuLL:
      goto LABEL_26;
    case 0x1DuLL:
      v13 = 0x4051000000000000;
LABEL_23:
      v8 = v13;
LABEL_24:
      v5 = 34.0;
      goto LABEL_25;
    case 0x1EuLL:
      v5 = 30.33;
      v10 = 61.0;
      goto LABEL_26;
    default:
LABEL_11:
      v9 = *&v8;
      v11 = *&v8;
      v7 = *&v8;
      v6 = *&v8;
      switch(a3)
      {
        case 3uLL:
        case 5uLL:
        case 7uLL:
        case 9uLL:
        case 0xBuLL:
        case 0xDuLL:
        case 0xFuLL:
        case 0x11uLL:
        case 0x13uLL:
        case 0x15uLL:
        case 0x17uLL:
        case 0x19uLL:
          goto LABEL_24;
        case 4uLL:
          goto LABEL_19;
        case 6uLL:
          goto LABEL_18;
        case 8uLL:
          v5 = 31.0;
          break;
        case 0xAuLL:
        case 0x10uLL:
          break;
        case 0xCuLL:
        case 0x12uLL:
          v5 = 28.0;
          break;
        case 0xEuLL:
        case 0x14uLL:
          v5 = 29.67;
          break;
        case 0x16uLL:
          goto LABEL_17;
        case 0x18uLL:
          goto LABEL_20;
        case 0x1AuLL:
          goto LABEL_21;
        default:
          if (a3 - 105 >= 0xE)
          {
            v10 = *&v8;
            v5 = 0.0;
            goto LABEL_26;
          }

          v14 = _os_feature_enabled_impl();
          v6 = 20.0;
          v7 = 25.0;
          if (v14)
          {
            v5 = 25.0;
          }

          else
          {
            v5 = 20.0;
          }

          break;
      }

LABEL_25:
      v10 = *&v8;
LABEL_26:
      v15 = [SBHDisplayDomain rootSettings:v6];
      [v15 additionalTopSafeAreaInset];
      v17 = v16;

      v18 = objc_alloc_init(self);
      if (!SBHScreenTypeHasHomeButton(a3) && (SBHScreenTypeIsPhone(a3) || SBHScreenTypeIsPad(a3)))
      {
        v19 = v10 + v17;
        if (SBHScreenTypeIsPhone(a3))
        {
          v20 = 0.0;
          if (a3 <= 0x76)
          {
            v20 = dbl_1BEE85E60[a3];
          }

          v21 = [objc_alloc(MEMORY[0x1E69DEBC8]) initWithTop:v20 left:0.0 bottom:0.0 right:0.0];
          [v18 setPeripheryInsets:v21];

          v22 = 21.0;
        }

        else
        {
          v23 = _os_feature_enabled_impl();
          v22 = 15.0;
          if (v23)
          {
            v22 = 20.0;
          }
        }

        v24 = [MEMORY[0x1E696AD98] numberWithDouble:v22];
        [v18 setHomeAffordanceOverlayAllowance:v24];

        v25 = [objc_alloc(MEMORY[0x1E69DEBC8]) initWithTop:v19 left:0.0 bottom:v5 right:0.0];
        [v18 setSafeAreaInsetsPortrait:v25];
      }

      return v18;
  }
}

- (void)sb_applyDisplayEdgeInfoToSceneSettings:()SBHScreenTypes
{
  v4 = a3;
  safeAreaInsetsPortrait = [self safeAreaInsetsPortrait];
  UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
  [v4 setSafeAreaInsetsPortrait:?];

  peripheryInsets = [self peripheryInsets];
  UIEdgeInsetsFromApplicationSupportDisplayEdgeInsetsWrapper();
  [v4 setPeripheryInsets:?];

  homeAffordanceOverlayAllowance = [self homeAffordanceOverlayAllowance];
  [homeAffordanceOverlayAllowance doubleValue];
  [v4 setHomeAffordanceOverlayAllowance:?];
}

@end