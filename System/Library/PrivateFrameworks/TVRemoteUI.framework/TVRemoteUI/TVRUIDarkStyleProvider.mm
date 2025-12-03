@interface TVRUIDarkStyleProvider
- (BOOL)hasHomeButton;
- (BOOL)isPad;
- (BOOL)isPhone;
- (BOOL)isSmallDevice;
- (CGSize)mediaControlsButtonSize;
- (CGSize)primaryButtonSize;
- (CGSize)remoteSize;
- (CGSize)secondaryButtonSize;
- (UIEdgeInsets)captionButtonInsets;
- (UIEdgeInsets)controlPanelInsets;
- (UIEdgeInsets)directionalPadInsetForSmallDevices;
- (UIEdgeInsets)mediaControlsInsets;
- (UIEdgeInsets)rootBackgroundInsets;
- (UIEdgeInsets)secondaryButtonInsets;
- (UIEdgeInsets)topControlPanelInsets;
- (UIEdgeInsets)touchpadInsets;
- (double)_preferredFontSizeForMenuButton;
- (double)controlPanelViewHeight;
- (double)deviceListRowHeight;
- (double)deviceSafeAreaInsetBottom;
- (double)deviceSafeAreaInsetTop;
- (double)topButtonPanelPadding;
- (double)touchpadHeight;
- (id)_darkTraitCollectionWithLevel:(int64_t)level;
- (id)_imageWithName:(id)name;
- (id)_symbolImageForMiniPlayerNamed:(id)named buttonType:(int64_t)type;
- (id)_symbolImageForTopControlPanelNamed:(id)named;
- (id)appleTVIcon;
- (id)captionsButtonIcon:(BOOL)icon;
- (id)checkmarkImage;
- (id)chevronImage;
- (id)controlGlassVariant;
- (id)defaultDeviceTitle;
- (id)devicePickerIconForDeviceModel:(id)model;
- (id)fontForDeviceTitle;
- (id)iconForButtonType:(int64_t)type buttonLocation:(int64_t)location;
- (id)iconForDeviceModel:(id)model;
- (id)pagingButtonBackgroundColor;
- (id)pagingButtonFont;
- (id)rootBackgroundColor;
- (id)rootBackgroundView;
- (id)separatorView;
- (id)textForButtonType:(int64_t)type;
- (id)textForDeviceLockoutAlert;
- (id)textForPairingAlert;
- (id)textForPairingPasswordAlert;
- (id)tintColorForChevronImage;
- (id)tintColorForHints;
- (id)touchpadBackgroundColor;
@end

@implementation TVRUIDarkStyleProvider

- (CGSize)remoteSize
{
  if ([(TVRUIDarkStyleProvider *)self isPad])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v4 = v3;

    v5 = 812.0;
    if (v4 + -54.0 <= 812.0)
    {
      v5 = v4 + -54.0;
    }

    v6 = 375.0;
  }

  else
  {
    v6 = 1.79769313e308;
    v5 = 1.79769313e308;
  }

  result.height = v5;
  result.width = v6;
  return result;
}

- (id)rootBackgroundView
{
  v2 = objc_alloc_init(MEMORY[0x277D75D18]);

  return v2;
}

- (UIEdgeInsets)rootBackgroundInsets
{
  if ([(TVRUIDarkStyleProvider *)self isPhone])
  {
    UIEdgeInsetsMakeWithEdges();
  }

  else
  {
    v2 = *MEMORY[0x277D768C8];
    v3 = *(MEMORY[0x277D768C8] + 8);
    v4 = *(MEMORY[0x277D768C8] + 16);
    v5 = *(MEMORY[0x277D768C8] + 24);
  }

  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)rootBackgroundColor
{
  v2 = [(TVRUIDarkStyleProvider *)self _darkTraitCollectionWithLevel:0];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [systemBackgroundColor resolvedColorWithTraitCollection:v2];

  return v4;
}

- (id)touchpadBackgroundColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v3 = [MEMORY[0x277D75348] colorWithRed:0.149019608 green:0.149019608 blue:0.149019608 alpha:1.0];
  }

  else
  {
    v4 = [(TVRUIDarkStyleProvider *)self _darkTraitCollectionWithLevel:0];
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    v3 = [secondarySystemBackgroundColor resolvedColorWithTraitCollection:v4];
  }

  return v3;
}

- (double)touchpadHeight
{
  if ([(TVRUIDarkStyleProvider *)self isPhone])
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    v5 = v4;

    return v5 * 0.6;
  }

  else
  {
    [(TVRUIDarkStyleProvider *)self remoteSize];
    return v7 * 0.68;
  }
}

- (UIEdgeInsets)touchpadInsets
{
  if ([(TVRUIDarkStyleProvider *)self hasHomeButton]&& [(TVRUIDarkStyleProvider *)self isPhone])
  {
    v3 = 16.0;
    v4 = 0.0;
    v5 = 12.0;
  }

  else
  {
    isPhone = [(TVRUIDarkStyleProvider *)self isPhone];
    v3 = 16.0;
    v5 = 22.0;
    if (!isPhone)
    {
      v5 = 16.0;
    }

    v4 = 0.0;
  }

  v7 = v3;
  result.right = v7;
  result.bottom = v4;
  result.left = v3;
  result.top = v5;
  return result;
}

- (UIEdgeInsets)directionalPadInsetForSmallDevices
{
  v2 = 10.0;
  v3 = 10.0;
  v4 = 10.0;
  v5 = 10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)topControlPanelInsets
{
  v2 = +[TVRUIFeatures isSolariumEnabled];
  v3 = 20.0;
  if (!v2)
  {
    v3 = 35.0;
  }

  v4 = 0.0;
  v5 = 0.0;
  v6 = v3;
  result.right = v6;
  result.bottom = v5;
  result.left = v3;
  result.top = v4;
  return result;
}

- (double)controlPanelViewHeight
{
  if (![(TVRUIDarkStyleProvider *)self isPhone])
  {
    return 227.36;
  }

  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v4 = v3;

  return v4 * 0.28;
}

- (UIEdgeInsets)controlPanelInsets
{
  v2 = 0.0;
  v3 = 14.0;
  v4 = 0.0;
  v5 = 14.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)primaryButtonSize
{
  v2 = 130.0;
  v3 = 130.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)secondaryButtonSize
{
  v2 = 84.0;
  v3 = 84.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)secondaryButtonInsets
{
  v2 = 10.0;
  v3 = 10.0;
  v4 = 10.0;
  v5 = 10.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)mediaControlsInsets
{
  [(TVRUIDarkStyleProvider *)self mediaControlsViewHeight];
  v4 = v3;
  [(TVRUIDarkStyleProvider *)self mediaControlsButtonSize];
  v6 = (v4 - v5) * 0.5;
  v7 = 10.0;
  v8 = 10.0;
  v9 = v6;
  result.right = v8;
  result.bottom = v9;
  result.left = v7;
  result.top = v6;
  return result;
}

- (CGSize)mediaControlsButtonSize
{
  v2 = 64.0;
  v3 = 64.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)captionButtonInsets
{
  [(TVRUIDarkStyleProvider *)self mediaControlsViewHeight];
  v4 = v3;
  [(TVRUIDarkStyleProvider *)self captionButtonSize];
  v6 = (v4 - v5) * 0.5;
  v7 = 10.0;
  v8 = 10.0;
  v9 = v6;
  result.right = v8;
  result.bottom = v9;
  result.left = v7;
  result.top = v6;
  return result;
}

- (id)_symbolImageForMiniPlayerNamed:(id)named buttonType:(int64_t)type
{
  namedCopy = named;
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = *MEMORY[0x277D76A08];
    v8 = namedCopy;
    v9 = 4;
    v10 = 2;
LABEL_5:
    v11 = [v6 tvrui_symbolImageWithName:v8 textStyle:v7 weight:v9 scale:v10 maxPointSize:45.0];
    goto LABEL_7;
  }

  if ((type - 9993) <= 1)
  {
    v6 = MEMORY[0x277D755B8];
    v7 = *MEMORY[0x277D769A8];
    v8 = namedCopy;
    v9 = 7;
    v10 = 3;
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_symbolImageForTopControlPanelNamed:(id)named
{
  v3 = MEMORY[0x277D75520];
  namedCopy = named;
  v5 = [v3 alloc];
  v6 = *MEMORY[0x277D76A28];
  v7 = [v5 initForTextStyle:*MEMORY[0x277D76A28]];
  v8 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v6 design:*MEMORY[0x277D743C8] variant:1024 maximumContentSizeCategory:*MEMORY[0x277D76808] compatibleWithTraitCollection:0];
  v9 = [v7 scaledFontForFont:v8 maximumPointSize:31.0];

  v10 = MEMORY[0x277D755B8];
  [v9 pointSize];
  v11 = [v10 tvrui_symbolImageWithName:namedCopy font:v9 fontSize:5 weight:2 scale:? maxPointSize:?];

  return v11;
}

- (id)iconForButtonType:(int64_t)type buttonLocation:(int64_t)location
{
  if (type <= 24)
  {
    if (type > 4)
    {
      if (type != 5)
      {
        if (type == 6)
        {
          v5 = @"goforward.10";
          if (location != 2)
          {
            goto LABEL_53;
          }

          v8 = 6;
        }

        else
        {
          if (type != 7)
          {
            goto LABEL_37;
          }

          v5 = @"gobackward.10";
          if (location != 2)
          {
            goto LABEL_53;
          }

          v8 = 7;
        }

LABEL_36:
        location = [(TVRUIDarkStyleProvider *)self _symbolImageForMiniPlayerNamed:v5 buttonType:v8];
        goto LABEL_54;
      }

      if (![TVRUIFeatures swapBackPlayPauseButtonsEnabled:5])
      {
        v10 = MEMORY[0x277D755B8];
        v12 = @"playpause.fill";
        v13 = 31.0;
        v11 = *MEMORY[0x277D76A20];
        v14 = 2;
        goto LABEL_43;
      }

      v15 = *MEMORY[0x277D74418];
      v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A20] design:*MEMORY[0x277D743D0] weight:*MEMORY[0x277D74418]];
      [(TVRUIDarkStyleProvider *)self _preferredFontSizeForMenuButton];
      v17 = MEMORY[0x277D755B8];
      v18 = v15;
      v19 = @"playpause.fill";
      v20 = v16;
    }

    else
    {
      if (type != 2)
      {
        if (type == 3)
        {
          v21 = [MEMORY[0x277D755B8] tvrui_symbolImageWithName:@"tv" textStyle:*MEMORY[0x277D76A28] weight:5 scale:3 maxPointSize:31.0];
          v22 = MEMORY[0x277D755D0];
          tintColor = [MEMORY[0x277D75348] tintColor];
          v24 = [v22 configurationWithHierarchicalColor:tintColor];

          v25 = [v21 imageByApplyingSymbolConfiguration:v24];

          goto LABEL_55;
        }

        if (type == 4)
        {
          v6 = @"mic.fill";
LABEL_39:
          location = [(TVRUIDarkStyleProvider *)self symbolImageForButtonPanelNamed:v6, location];
          goto LABEL_54;
        }

LABEL_37:
        if ((type & 0xFFFFFFFFFFFFFFFELL) == 0xA)
        {
          v6 = @"speaker.wave.2.fill";
          goto LABEL_39;
        }

        v25 = 0;
        if (type > 9994)
        {
          if (type == 9996)
          {
            v5 = @"backward.fill";
          }

          else
          {
            if (type != 9995)
            {
              goto LABEL_55;
            }

            v5 = @"forward.fill";
          }

          goto LABEL_53;
        }

        if (type == 9993)
        {
          v5 = @"play.fill";
          v8 = 9993;
        }

        else
        {
          if (type != 9994)
          {
            goto LABEL_55;
          }

          v5 = @"pause.fill";
          v8 = 9994;
        }

        goto LABEL_36;
      }

      if ([TVRUIFeatures swapBackPlayPauseButtonsEnabled:2])
      {
        v10 = MEMORY[0x277D755B8];
        v11 = *MEMORY[0x277D76A20];
        v12 = @"chevron.backward";
        v13 = 31.0;
        v14 = 3;
LABEL_43:
        location = [v10 tvrui_symbolImageWithName:v12 textStyle:v11 weight:4 scale:v14 maxPointSize:v13];
        goto LABEL_54;
      }

      v16 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76A28] design:*MEMORY[0x277D743D0] weight:*MEMORY[0x277D74418]];
      [(TVRUIDarkStyleProvider *)self _preferredFontSizeForMenuButton];
      v17 = MEMORY[0x277D755B8];
      v19 = @"chevron.backward";
      v20 = v16;
      v18 = 4;
    }

    v25 = [v17 tvrui_symbolImageWithName:v19 font:v20 fontSize:v18 weight:2 scale:? maxPointSize:?];

    goto LABEL_55;
  }

  if (type <= 29)
  {
    switch(type)
    {
      case 25:
        v6 = @"info";
        goto LABEL_39;
      case 28:
        v5 = @"list.bullet";
        goto LABEL_53;
      case 29:
        v7 = @"speaker.slash";
        goto LABEL_25;
    }

    goto LABEL_37;
  }

  if (type > 9997)
  {
    if (type == 9998)
    {
      v6 = @"magnifyingglass";
      goto LABEL_39;
    }

    if (type == 9999)
    {
      v6 = @"keyboard";
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (type != 30)
  {
    if (type == 9992)
    {
      v5 = @"info.circle";
LABEL_53:
      location = [(TVRUIDarkStyleProvider *)self _symbolImageForMediaControlsNamed:v5, location];
      goto LABEL_54;
    }

    goto LABEL_37;
  }

  v7 = @"power";
LABEL_25:
  location = [(TVRUIDarkStyleProvider *)self _symbolImageForTopControlPanelNamed:v7, location];
LABEL_54:
  v25 = location;
LABEL_55:

  return v25;
}

- (id)captionsButtonIcon:(BOOL)icon
{
  if (icon)
  {
    v3 = @"captions.bubble.fill";
  }

  else
  {
    v3 = @"captions.bubble";
  }

  v4 = [(TVRUIDarkStyleProvider *)self _symbolImageForMediaControlsNamed:v3];

  return v4;
}

- (id)tintColorForHints
{
  tertiaryLabelColor = [MEMORY[0x277D75348] tertiaryLabelColor];
  v3 = [tertiaryLabelColor colorWithAlphaComponent:1.0];

  return v3;
}

- (id)textForButtonType:(int64_t)type
{
  switch(type)
  {
    case 2:
      v3 = @"TVRemoteUIMenuButtonText";
      goto LABEL_7;
    case 24:
      v3 = @"TVRemoteUIExitButtonText";
      goto LABEL_7;
    case 23:
      v3 = @"TVRemoteUIBackButtonText";
LABEL_7:
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:v3 value:&stru_287E6AEF8 table:@"Localizable"];

      goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)chevronImage
{
  v2 = objc_alloc(MEMORY[0x277D75520]);
  v3 = *MEMORY[0x277D76968];
  v4 = [v2 initForTextStyle:*MEMORY[0x277D76968]];
  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v3 design:*MEMORY[0x277D743C8] variant:1024 maximumContentSizeCategory:*MEMORY[0x277D76808] compatibleWithTraitCollection:0];
  v6 = [v4 scaledFontForFont:v5 maximumPointSize:31.0];

  v7 = MEMORY[0x277D755B8];
  [v6 pointSize];
  v8 = [v7 tvrui_symbolImageWithName:@"chevron.forward" font:v6 fontSize:5 weight:2 scale:? maxPointSize:?];

  return v8;
}

- (id)tintColorForChevronImage
{
  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  v3 = [tertiarySystemFillColor colorWithAlphaComponent:1.0];

  return v3;
}

- (id)checkmarkImage
{
  v2 = objc_alloc(MEMORY[0x277D75520]);
  v3 = *MEMORY[0x277D76918];
  v4 = [v2 initForTextStyle:*MEMORY[0x277D76918]];
  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v3 design:*MEMORY[0x277D743C8] variant:1024 maximumContentSizeCategory:*MEMORY[0x277D76808] compatibleWithTraitCollection:0];
  v6 = [v4 scaledFontForFont:v5 maximumPointSize:31.0];

  v7 = MEMORY[0x277D755B8];
  [v6 pointSize];
  v8 = [v7 tvrui_symbolImageWithName:@"checkmark" font:v6 fontSize:5 weight:2 scale:? maxPointSize:?];

  return v8;
}

- (id)fontForDeviceTitle
{
  v2 = objc_alloc(MEMORY[0x277D75520]);
  v3 = *MEMORY[0x277D76988];
  v4 = [v2 initForTextStyle:*MEMORY[0x277D76988]];
  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v3 design:*MEMORY[0x277D743C8] variant:1024 maximumContentSizeCategory:*MEMORY[0x277D76808] compatibleWithTraitCollection:0];
  v6 = [v4 scaledFontForFont:v5 maximumPointSize:40.0];

  return v6;
}

- (double)deviceListRowHeight
{
  v2 = +[TVRUIFeatures isSolariumEnabled];
  result = 52.0;
  if (v2)
  {
    return 56.0;
  }

  return result;
}

- (id)defaultDeviceTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TVRemoteUIDefaultDropDownTextGeneric" value:&stru_287E6AEF8 table:@"Localizable"];

  return v3;
}

- (id)separatorView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  cellSeparatorBackgroundColor = [(TVRUIDarkStyleProvider *)self cellSeparatorBackgroundColor];
  [v3 setBackgroundColor:cellSeparatorBackgroundColor];

  return v3;
}

- (id)textForPairingAlert
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TVRemoteUIPairingEnterPasscodeString" value:&stru_287E6AEF8 table:@"Localizable"];

  return v3;
}

- (id)textForPairingPasswordAlert
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TVRemoteUIPairingEnterPasswordString" value:&stru_287E6AEF8 table:@"Localizable"];

  return v3;
}

- (id)textForDeviceLockoutAlert
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"TVRemoteUIPairingLockoutOkText" value:&stru_287E6AEF8 table:@"Localizable"];

  return v3;
}

- (id)devicePickerIconForDeviceModel:(id)model
{
  modelCopy = model;
  if ([modelCopy isEqualToString:*MEMORY[0x277D6C590]])
  {
    v4 = @"tv";
  }

  else if ([modelCopy isEqualToString:*MEMORY[0x277D6C588]])
  {
    v4 = @"mediastick";
  }

  else if ([modelCopy isEqualToString:*MEMORY[0x277D6C580]])
  {
    v4 = @"tv.and.mediabox";
  }

  else
  {
    v4 = @"appletv.fill";
  }

  v5 = objc_alloc(MEMORY[0x277D75520]);
  v6 = *MEMORY[0x277D76918];
  v7 = [v5 initForTextStyle:*MEMORY[0x277D76918]];
  v8 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v6 maximumContentSizeCategory:*MEMORY[0x277D76808]];
  v9 = [v7 scaledFontForFont:v8 maximumPointSize:31.0];

  v10 = MEMORY[0x277D755B8];
  [v9 pointSize];
  v11 = [v10 tvrui_symbolImageWithName:v4 font:v9 fontSize:5 weight:3 scale:? maxPointSize:?];
  configurationPreferringMonochrome = [MEMORY[0x277D755D0] configurationPreferringMonochrome];
  v13 = [v11 imageByApplyingSymbolConfiguration:configurationPreferringMonochrome];

  return v13;
}

- (id)iconForDeviceModel:(id)model
{
  modelCopy = model;
  if ([modelCopy isEqualToString:*MEMORY[0x277D6C590]])
  {
    genericTVIcon = [(TVRUIDarkStyleProvider *)self genericTVIcon];
  }

  else if ([modelCopy isEqualToString:*MEMORY[0x277D6C588]])
  {
    genericTVIcon = [(TVRUIDarkStyleProvider *)self airplayStickIcon];
  }

  else
  {
    if ([modelCopy isEqualToString:*MEMORY[0x277D6C580]])
    {
      [(TVRUIDarkStyleProvider *)self airplaySetTopBoxIcon];
    }

    else
    {
      [(TVRUIDarkStyleProvider *)self appleTVIcon];
    }
    genericTVIcon = ;
  }

  v6 = genericTVIcon;

  return v6;
}

- (id)appleTVIcon
{
  fontForDeviceTitle = [(TVRUIDarkStyleProvider *)self fontForDeviceTitle];
  v3 = MEMORY[0x277D755B8];
  [fontForDeviceTitle pointSize];
  v4 = [v3 tvrui_symbolImageWithName:@"appletv.fill" font:fontForDeviceTitle fontSize:4 weight:2 scale:? maxPointSize:?];

  return v4;
}

- (double)deviceSafeAreaInsetTop
{
  v3 = SBUIIsSystemApertureEnabled();
  isPad = [(TVRUIDarkStyleProvider *)self isPad];
  result = 22.0;
  if (!isPad)
  {
    if (v3)
    {
      v6 = 63.0;
    }

    else
    {
      v6 = 53.0;
    }

    hasHomeButton = [(TVRUIDarkStyleProvider *)self hasHomeButton];
    result = 22.0;
    if (!hasHomeButton)
    {
      return v6;
    }
  }

  return result;
}

- (double)deviceSafeAreaInsetBottom
{
  hasHomeButton = [(TVRUIDarkStyleProvider *)self hasHomeButton];
  result = 0.0;
  if (!hasHomeButton)
  {
    isPad = [(TVRUIDarkStyleProvider *)self isPad];
    result = 34.0;
    if (isPad)
    {
      return 0.0;
    }
  }

  return result;
}

- (double)topButtonPanelPadding
{
  hasHomeButton = [(TVRUIDarkStyleProvider *)self hasHomeButton];
  result = 4.0;
  if (!hasHomeButton)
  {
    isPad = [(TVRUIDarkStyleProvider *)self isPad];
    result = 44.0;
    if (isPad)
    {
      return 4.0;
    }
  }

  return result;
}

- (id)pagingButtonFont
{
  v2 = objc_alloc(MEMORY[0x277D75520]);
  v3 = *MEMORY[0x277D769C0];
  v4 = [v2 initForTextStyle:*MEMORY[0x277D769C0]];
  v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:v3 design:*MEMORY[0x277D743D0] variant:1024 maximumContentSizeCategory:*MEMORY[0x277D76808] compatibleWithTraitCollection:0];
  v6 = [v4 scaledFontForFont:v5 maximumPointSize:38.0];

  return v6;
}

- (id)pagingButtonBackgroundColor
{
  v2 = [(TVRUIDarkStyleProvider *)self _darkTraitCollectionWithLevel:1];
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v4 = [secondarySystemBackgroundColor resolvedColorWithTraitCollection:v2];

  return v4;
}

- (BOOL)isSmallDevice
{
  v9 = *MEMORY[0x277D85DE8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;

  if (v4 <= 667.0)
  {
    v5 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[TVRUIDarkStyleProvider isSmallDevice]";
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, "%s returned YES", &v7, 0xCu);
    }
  }

  return v4 <= 667.0;
}

- (BOOL)isPhone
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 0;

  return v3;
}

- (BOOL)isPad
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v3 = [currentDevice userInterfaceIdiom] == 1;

  return v3;
}

- (id)controlGlassVariant
{
  v2 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:1 size:1];

  return v2;
}

- (BOOL)hasHomeButton
{
  if (hasHomeButton_onceToken_0 != -1)
  {
    [TVRUIDarkStyleProvider hasHomeButton];
  }

  return hasHomeButton_hasHomeButton_0;
}

uint64_t __39__TVRUIDarkStyleProvider_hasHomeButton__block_invoke()
{
  result = MGGetSInt32Answer();
  hasHomeButton_hasHomeButton_0 = result != 2;
  return result;
}

- (id)_darkTraitCollectionWithLevel:(int64_t)level
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__TVRUIDarkStyleProvider__darkTraitCollectionWithLevel___block_invoke;
  v5[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
  v5[4] = level;
  v3 = [MEMORY[0x277D75C80] traitCollectionWithTraits:v5];

  return v3;
}

void __56__TVRUIDarkStyleProvider__darkTraitCollectionWithLevel___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setUserInterfaceLevel:v2];
  [v3 setUserInterfaceStyle:2];
}

- (id)_imageWithName:(id)name
{
  v3 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v5 = [v3 bundleForClass:objc_opt_class()];
  v6 = [MEMORY[0x277D755B8] imageNamed:nameCopy inBundle:v5];

  v7 = [v6 imageWithRenderingMode:2];

  return v7;
}

- (double)_preferredFontSizeForMenuButton
{
  if (_TVRUIIsCategory(*MEMORY[0x277D76860]))
  {
    return 42.0;
  }

  if (_TVRUIIsCategory(*MEMORY[0x277D76830]))
  {
    return 36.0;
  }

  if (_TVRUIIsCategory(*MEMORY[0x277D76858]))
  {
    return 38.0;
  }

  if (_TVRUIIsCategory(*MEMORY[0x277D76840]))
  {
    return 40.0;
  }

  if (_TVRUIIsCategory(*MEMORY[0x277D76838]))
  {
    return 42.0;
  }

  if (_TVRUIIsCategory(*MEMORY[0x277D76828]))
  {
    return 45.0;
  }

  if (_TVRUIIsCategory(*MEMORY[0x277D76820]))
  {
    return 48.0;
  }

  if (_TVRUIIsCategory(*MEMORY[0x277D76818]))
  {
    return 51.0;
  }

  if (_TVRUIIsCategory(*MEMORY[0x277D76808]))
  {
    return 54.0;
  }

  if (_TVRUIIsCategory(*MEMORY[0x277D76800]))
  {
    return 57.0;
  }

  if (_TVRUIIsCategory(*MEMORY[0x277D767F8]))
  {
    return 60.0;
  }

  if (_TVRUIIsCategory(*MEMORY[0x277D767F0]))
  {
    return 63.0;
  }

  v4 = *MEMORY[0x277D767E8];
  if (_TVRUIIsCategory(*MEMORY[0x277D767E8]))
  {
    return 66.0;
  }

  v5 = _TVRUIIsCategory(v4);
  result = 42.0;
  if (v5)
  {
    return 70.0;
  }

  return result;
}

@end