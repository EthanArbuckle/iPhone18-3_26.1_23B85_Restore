@interface SBSwitcherAppSuggestionBannerView
- (SBSwitcherAppSuggestionBannerView)initWithFrame:(CGRect)a3 appSuggestion:(id)a4 style:(unint64_t)a5;
- (id)_appTitleForSuggestion:(id)a3;
- (id)_descriptionFont;
- (id)_descriptionStringForSuggestion:(id)a3;
- (id)_firstWakeGreetingString;
- (id)_iconImageCache;
- (id)_iconImageFromAppWithBundleIdentifier:(id)a3 withIconImageCache:(id)a4;
- (id)_iconImageViewFromAppWithBundleIdentifier:(id)a3 withIconImageCache:(id)a4;
- (id)_meCardShortName;
- (id)_textStyle;
- (id)_titleFont;
- (void)_configureConstraints;
- (void)_createAppLabelForSuggestion:(id)a3;
- (void)_createDarkeningView;
- (void)_createDescriptionLabelForSuggestion:(id)a3;
- (void)_createIconViewForSuggestion:(id)a3;
- (void)_updateAppearanceForCurrentUserInterfaceStyle;
- (void)_updateIconViewCornerRadius;
- (void)_updateIconViewImageForSuggestion:(id)a3;
- (void)didMoveToWindow;
- (void)setHighlighted:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation SBSwitcherAppSuggestionBannerView

- (SBSwitcherAppSuggestionBannerView)initWithFrame:(CGRect)a3 appSuggestion:(id)a4 style:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v28[3] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  v27[0] = v14;
  v28[0] = @"cmdTabLight";
  v15 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v27[1] = v15;
  v28[1] = @"cmdTabLight";
  v16 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v27[2] = v16;
  v28[2] = @"cmdTabDark";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];

  v26.receiver = self;
  v26.super_class = SBSwitcherAppSuggestionBannerView;
  v18 = [(PLPlatterView *)&v26 initWithRecipeNamesByTraitCollection:v17 inBundle:v13];
  v19 = v18;
  if (v18)
  {
    v18->_style = a5;
    objc_storeStrong(&v18->_suggestion, a4);
    [(PLPlatterView *)v19 setHasShadow:1];
    v23 = 1036831949;
    v24 = xmmword_21F8A66D0;
    v25 = 0x4036800000000000;
    [(PLPlatterView *)v19 setShadowAttributes:&v23];
    [(SBSwitcherAppSuggestionBannerView *)v19 setFrame:x, y, width, height];
    [(SBSwitcherAppSuggestionBannerView *)v19 _createAppLabelForSuggestion:v19->_suggestion];
    [(SBSwitcherAppSuggestionBannerView *)v19 _createIconViewForSuggestion:v19->_suggestion];
    [(SBSwitcherAppSuggestionBannerView *)v19 _createDescriptionLabelForSuggestion:v19->_suggestion];
    [(SBSwitcherAppSuggestionBannerView *)v19 _createDarkeningView];
    [(SBSwitcherAppSuggestionBannerView *)v19 _configureConstraints];
    [(SBSwitcherAppSuggestionBannerView *)v19 _updateAppearanceForCurrentUserInterfaceStyle];
    v20 = [(SBSwitcherAppSuggestionBannerView *)v19 _borderView];
    [(PLPlatterView *)v19 _continuousCornerRadius];
    [v20 _setContinuousCornerRadius:?];
    v21 = [v20 layer];
    [v21 setBorderWidth:0.3];
  }

  return v19;
}

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(UIView *)self->_highlightDarkeningView setHidden:!a3];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(SBSwitcherAppSuggestionBannerView *)self traitCollection];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {

    [(SBSwitcherAppSuggestionBannerView *)self _updateAppearanceForCurrentUserInterfaceStyle];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = SBSwitcherAppSuggestionBannerView;
  [(SBSwitcherAppSuggestionBannerView *)&v4 didMoveToWindow];
  v3 = [(SBSwitcherAppSuggestionBannerView *)self window];

  if (v3)
  {
    [(SBSwitcherAppSuggestionBannerView *)self _updateIconViewImage];
    [(SBSwitcherAppSuggestionBannerView *)self _updateIconViewCornerRadius];
  }
}

- (void)_updateAppearanceForCurrentUserInterfaceStyle
{
  v3 = [(SBSwitcherAppSuggestionBannerView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  v5 = [(SBSwitcherAppSuggestionBannerView *)self _borderView];
  v6 = [v5 layer];
  v7 = 0.0;
  if (v4 == 2)
  {
    v7 = 1.0;
  }

  v8 = [MEMORY[0x277D75348] colorWithWhite:v7 alpha:0.08];
  [v6 setBorderColor:{objc_msgSend(v8, "CGColor")}];

  [(SBSwitcherAppSuggestionBannerView *)self _updateIconViewImage];
}

- (id)_textStyle
{
  v3 = *MEMORY[0x277D76938];
  if ([(SBSwitcherAppSuggestionBannerView *)self _isSingleLine])
  {
    v4 = *MEMORY[0x277D76968];

    v3 = v4;
  }

  return v3;
}

- (id)_titleFont
{
  v3 = [MEMORY[0x277CF0D60] defaultFontProvider];
  v4 = [(SBSwitcherAppSuggestionBannerView *)self _textStyle];
  v5 = [v3 preferredFontForTextStyle:v4 hiFontStyle:4];

  return v5;
}

- (id)_descriptionFont
{
  v3 = [MEMORY[0x277CF0D60] defaultFontProvider];
  v4 = [(SBSwitcherAppSuggestionBannerView *)self _textStyle];
  v5 = [v3 preferredFontForTextStyle:v4 hiFontStyle:1];

  return v5;
}

- (void)_configureConstraints
{
  v30[3] = *MEMORY[0x277D85DE8];
  v3 = [(PLPlatterView *)self customContentView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:self->_appLabel forKey:@"appLabel"];
  [v4 setObject:self->_descriptionLabel forKey:@"descriptionLabel"];
  [v4 setObject:self->_iconContainerView forKey:@"iconView"];
  [v4 setObject:v3 forKey:@"contentView"];
  [v4 setObject:self->_highlightDarkeningView forKey:@"darkeningView"];
  v29[0] = @"spaceFromLeftEdge";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:8.0];
  v30[0] = v5;
  v29[1] = @"iconMargin";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:8.0];
  v30[1] = v6;
  v29[2] = @"iconLabelMargin";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:8.0];
  v30[2] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];

  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[contentView]|" options:0 metrics:v8 views:v4];
  [v9 addObjectsFromArray:v10];

  v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[contentView]|" options:0 metrics:v8 views:v4];
  [v9 addObjectsFromArray:v11];

  v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[darkeningView]|" options:0 metrics:v8 views:v4];
  [v9 addObjectsFromArray:v12];

  v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[darkeningView]|" options:0 metrics:v8 views:v4];
  [v9 addObjectsFromArray:v13];

  [MEMORY[0x277CCAAD0] activateConstraints:v9];
  [MEMORY[0x277CCAAD0] activateConstraints:v9];
  v14 = [(SBSwitcherAppSuggestionBannerView *)self _titleFont];
  v15 = [MEMORY[0x277CBEB18] array];
  if ([(SBSwitcherAppSuggestionBannerView *)self _isSingleLine])
  {
    v16 = [MEMORY[0x277CCAAD0] constraintWithItem:v3 attribute:3 relatedBy:0 toItem:self->_appLabel attribute:11 multiplier:1.0 constant:-24.0];
    [v15 addObject:v16];

    v17 = [MEMORY[0x277CCAAD0] constraintWithItem:v3 attribute:3 relatedBy:0 toItem:self->_descriptionLabel attribute:11 multiplier:1.0 constant:-24.0];
    v18 = @"|-iconMargin-[iconView]-iconLabelMargin-[appLabel][descriptionLabel]-(>=spaceFromLeftEdge)-|";
  }

  else
  {
    [v14 _scaledValueForValue:18.0];
    v20 = -v19;
    [v14 _scaledValueForValue:13.0];
    v22 = -v21;
    v23 = [MEMORY[0x277CCAAD0] constraintWithItem:v3 attribute:3 relatedBy:0 toItem:self->_appLabel attribute:11 multiplier:1.0 constant:v20];
    [v15 addObject:v23];

    v24 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_appLabel attribute:11 relatedBy:0 toItem:self->_descriptionLabel attribute:11 multiplier:1.0 constant:v22];
    [v15 addObject:v24];

    v25 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_appLabel attribute:5 relatedBy:0 toItem:self->_descriptionLabel attribute:5 multiplier:1.0 constant:0.0];
    [v15 addObject:v25];

    v26 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_appLabel attribute:6 relatedBy:-1 toItem:v3 attribute:6 multiplier:1.0 constant:-8.0];
    [v15 addObject:v26];

    v17 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_descriptionLabel attribute:6 relatedBy:-1 toItem:v3 attribute:6 multiplier:1.0 constant:-8.0];
    v18 = @"|-iconMargin-[iconView]-iconLabelMargin-[appLabel]";
  }

  [v15 addObject:v17];

  v27 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v18 options:0 metrics:v8 views:v4];
  [v15 addObjectsFromArray:v27];

  v28 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_iconContainerView attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
  [v15 addObject:v28];

  [MEMORY[0x277CCAAD0] activateConstraints:v15];
}

- (void)_createAppLabelForSuggestion:(id)a3
{
  v13 = [(SBSwitcherAppSuggestionBannerView *)self _appTitleForSuggestion:a3];
  v4 = objc_alloc(MEMORY[0x277D756B8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  appLabel = self->_appLabel;
  self->_appLabel = v5;

  [(UILabel *)self->_appLabel setText:v13];
  v7 = self->_appLabel;
  v8 = [(SBSwitcherAppSuggestionBannerView *)self _titleFont];
  [(UILabel *)v7 setFont:v8];

  v9 = self->_appLabel;
  v10 = [MEMORY[0x277D75348] labelColor];
  v11 = [v10 colorWithAlphaComponent:0.75];
  [(UILabel *)v9 setTextColor:v11];

  [(UILabel *)self->_appLabel setTextAlignment:0];
  [(UILabel *)self->_appLabel setLineBreakMode:5];
  [(UILabel *)self->_appLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(PLPlatterView *)self customContentView];
  [v12 addSubview:self->_appLabel];
}

- (id)_appTitleForSuggestion:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleIdentifier];
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationWithBundleIdentifier:v4];

  if (v6)
  {
    if (([v3 isLocationPredictionOfType:0] & 1) != 0 || objc_msgSend(v3, "isLocationPredictionOfType:", 1))
    {
      v7 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = v7;
      v9 = @"LOCATION_DIRECTION_LAUNCH_SUGGESTION_FORMAT";
LABEL_5:
      v10 = [v7 localizedStringForKey:v9 value:&stru_283094718 table:@"SpringBoard"];

      v11 = MEMORY[0x277CCACA8];
      v12 = [v3 suggestedLocationName];
      v13 = [v6 displayName];
      v14 = [v11 stringWithFormat:v10, v12, v13];

LABEL_8:
      goto LABEL_13;
    }

    if ([v3 isLocationPredictionOfType:2])
    {
      v7 = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = v7;
      v9 = @"LOCATION_RIDE_LAUNCH_SUGGESTION_FORMAT";
      goto LABEL_5;
    }

    v14 = [v6 displayName];
  }

  else
  {
    if ([v3 isSiriSuggestion])
    {
      v10 = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = [v10 localizedStringForKey:@"SIRI" value:&stru_283094718 table:@"SpringBoard"];
      goto LABEL_8;
    }

    v14 = &stru_283094718;
  }

LABEL_13:

  return v14;
}

- (id)_meCardShortName
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
  v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v8[0] = v2;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v3 _ios_meContactWithKeysToFetch:v4 error:0];

  if (v5)
  {
    v6 = [MEMORY[0x277CBDA78] stringFromContact:v5 style:1000];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_firstWakeGreetingString
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 localizedStringForKey:@"FIRST_WAKE_SUGGESTION_NONAME" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (id)_descriptionStringForSuggestion:(id)a3
{
  v4 = a3;
  if ([v4 isArrivedAtHomePrediction])
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = v5;
    v7 = @"ARRIVED_AT_HOME_SUGGESTION";
LABEL_7:
    v8 = [v5 localizedStringForKey:v7 value:&stru_283094718 table:@"SpringBoard"];
LABEL_8:

    goto LABEL_9;
  }

  if ([v4 isArrivedAtWorkPrediction])
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = v5;
    v7 = @"ARRIVED_AT_WORK_SUGGESTION";
    goto LABEL_7;
  }

  if ([v4 isLocationBasedSuggestion])
  {
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = v5;
    v7 = @"CONTINUITY_LOCATION_BASED_SUGGESTION";
    goto LABEL_7;
  }

  if (([v4 isLocationPredictionFromSource:0] & 1) != 0 || objc_msgSend(v4, "isLocationPredictionFromSource:", 1))
  {
    v13 = +[SBApplicationController sharedInstance];
    v14 = [v4 originatingBundleIdentifier];
    v6 = [v13 applicationWithBundleIdentifier:v14];

    v15 = [v4 isLocationPredictionFromSource:0];
    v16 = @"LOCATION_COPIED_IN_APP_SUGGESTION_FORMAT";
    if (v15)
    {
      v16 = @"LOCATION_DONATED_IN_APP_SUGGESTION_FORMAT";
    }

    v17 = MEMORY[0x277CCA8D8];
    v18 = v16;
    v19 = [v17 mainBundle];
    v20 = [v19 localizedStringForKey:v18 value:&stru_283094718 table:@"SpringBoard"];

    v21 = MEMORY[0x277CCACA8];
    v22 = [v6 displayName];
    v8 = [v21 stringWithFormat:v20, v22];

    goto LABEL_8;
  }

  if (([v4 isLocallyGeneratedSuggestion] & 1) == 0)
  {
    v23 = [v4 originatingDeviceName];
    v24 = [v23 length];

    if (v24)
    {
      v25 = [MEMORY[0x277CCA8D8] mainBundle];
      v26 = v25;
      v27 = @"CONTINUITY_ORIGINATOR_NAME_FORMAT";
LABEL_31:
      v6 = [v25 localizedStringForKey:v27 value:&stru_283094718 table:@"SpringBoard"];

      v30 = MEMORY[0x277CCACA8];
      v31 = [v4 originatingDeviceName];
      v8 = [v30 stringWithFormat:v6, v31];

      goto LABEL_8;
    }
  }

  if ([v4 isPrediction] && objc_msgSend(v4, "isFirstWakePrediction"))
  {
    v8 = [(SBSwitcherAppSuggestionBannerView *)self _firstWakeGreetingString];
  }

  else
  {
    if ([v4 isPrediction] && objc_msgSend(v4, "isCarPlayPrediction"))
    {
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = v5;
      v7 = @"CARPLAY_CONNECTED_SUGGESTION";
      goto LABEL_7;
    }

    if ([v4 isPrediction])
    {
      v28 = [v4 originatingDeviceName];
      v29 = [v28 length];

      if (v29)
      {
        v25 = [MEMORY[0x277CCA8D8] mainBundle];
        v26 = v25;
        v27 = @"DEVICE_CONNECTED_SUGGESTION_NAME_FORMAT";
        goto LABEL_31;
      }
    }

    if ([v4 isPrediction] && objc_msgSend(v4, "isHeadphonesPrediction"))
    {
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = v5;
      v7 = @"HEADPHONES_CONNECTED_SUGGESTION";
      goto LABEL_7;
    }

    if ([v4 isPrediction] && objc_msgSend(v4, "isBluetoothPrediction"))
    {
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = v5;
      v7 = @"BLUETOOTH_DEVICE_CONNECTED_SUGGESTION";
      goto LABEL_7;
    }

    if ([v4 isPrediction])
    {
      v5 = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = v5;
      v7 = @"GENERIC_DEVICE_CONNECTED_SUGGESTION";
      goto LABEL_7;
    }

    v8 = &stru_283094718;
  }

LABEL_9:
  if ([(SBSwitcherAppSuggestionBannerView *)self _isSingleLine])
  {
    v9 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [v9 localizedStringForKey:@"SINGLE_LINE_SUGGESTION_FORMAT" value:&stru_283094718 table:@"SpringBoard"];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v8];

    v8 = v11;
  }

  return v8;
}

- (void)_createDescriptionLabelForSuggestion:(id)a3
{
  v13 = [(SBSwitcherAppSuggestionBannerView *)self _descriptionStringForSuggestion:a3];
  v4 = objc_alloc(MEMORY[0x277D756B8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v5;

  [(UILabel *)self->_descriptionLabel setText:v13];
  v7 = self->_descriptionLabel;
  v8 = [(SBSwitcherAppSuggestionBannerView *)self _descriptionFont];
  [(UILabel *)v7 setFont:v8];

  v9 = self->_descriptionLabel;
  v10 = [MEMORY[0x277D75348] labelColor];
  v11 = [v10 colorWithAlphaComponent:0.75];
  [(UILabel *)v9 setTextColor:v11];

  [(UILabel *)self->_descriptionLabel setTextAlignment:0];
  [(UILabel *)self->_descriptionLabel setLineBreakMode:5];
  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [(PLPlatterView *)self customContentView];
  [v12 addSubview:self->_descriptionLabel];
}

- (id)_iconImageFromAppWithBundleIdentifier:(id)a3 withIconImageCache:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(UIView *)self _sbWindowScene];
  v9 = [v8 iconController];
  v10 = [v7 isEqualToString:@"com.apple.Siri"];

  if (v10)
  {
    v11 = [v9 notificationIconImageCache];

    if (v11 == v6)
    {
      v12 = @"siri-suggestion-landscape";
    }

    else
    {
      v12 = @"siri-suggestion";
    }

    v13 = [MEMORY[0x277D755B8] imageNamed:v12];
    v14 = [MEMORY[0x277D75348] labelColor];
    v15 = [v14 colorWithAlphaComponent:0.75];
    v16 = [v13 _flatImageWithColor:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_iconImageViewFromAppWithBundleIdentifier:(id)a3 withIconImageCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(SBSwitcherAppSuggestionBannerView *)self _iconImageFromAppWithBundleIdentifier:v6 withIconImageCache:v7];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
    }

    else
    {
      v10 = +[SBIconController sharedIconRepository];
      v11 = [v10 applicationIconForBundleIdentifier:v6];

      v12 = [(SBSwitcherAppSuggestionBannerView *)self traitCollection];
      [v7 iconImageInfo];
      v9 = [v11 iconLayerViewWithInfo:v12 traitCollection:17 options:-1 priority:?];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_iconImageCache
{
  v3 = [(UIView *)self _sbWindowScene];
  v4 = [v3 iconController];

  if ([(SBSwitcherAppSuggestionBannerView *)self _isSingleLine])
  {
    [v4 notificationIconImageCache];
  }

  else
  {
    [v4 tableUIIconImageCache];
  }
  v5 = ;

  return v5;
}

- (void)_createIconViewForSuggestion:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (([v4 isSiriSuggestion] & 1) != 0 || (objc_msgSend(v4, "bundleIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
  {
    [(SBSwitcherAppSuggestionBannerView *)self _isSingleLine];
    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    iconContainerView = self->_iconContainerView;
    self->_iconContainerView = v7;

    [(UIView *)self->_iconContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(PLPlatterView *)self customContentView];
    [v9 addSubview:self->_iconContainerView];

    v10 = [(UIView *)self->_iconContainerView heightAnchor];
    v11 = [v10 constraintEqualToConstant:24.0];
    v15[0] = v11;
    v12 = [(UIView *)self->_iconContainerView widthAnchor];
    v13 = [v12 constraintEqualToConstant:24.0];
    v15[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

    [MEMORY[0x277CCAAD0] activateConstraints:v14];
    [(SBSwitcherAppSuggestionBannerView *)self _updateIconViewImageForSuggestion:v4];
  }
}

- (void)_updateIconViewImageForSuggestion:(id)a3
{
  v25[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBSwitcherAppSuggestionBannerView *)self _iconImageCache];
  v6 = [v4 bundleIdentifier];

  v7 = [(SBSwitcherAppSuggestionBannerView *)self _iconImageViewFromAppWithBundleIdentifier:v6 withIconImageCache:v5];

  if (v7)
  {
    [v5 iconImageInfo];
    [v7 _setContinuousCornerRadius:v8];
    v9 = [v7 layer];
    [v9 setMasksToBounds:1];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_iconView removeFromSuperview];
    objc_storeStrong(&self->_iconView, v7);
    v24 = v5;
    [(UIView *)self->_iconContainerView addSubview:self->_iconView];
    v19 = MEMORY[0x277CCAAD0];
    v23 = [v7 leadingAnchor];
    v22 = [(UIView *)self->_iconContainerView leadingAnchor];
    v21 = [v23 constraintEqualToAnchor:v22];
    v25[0] = v21;
    v20 = [v7 trailingAnchor];
    v10 = [(UIView *)self->_iconContainerView trailingAnchor];
    v11 = [v20 constraintEqualToAnchor:v10];
    v25[1] = v11;
    v12 = [v7 topAnchor];
    v13 = [(UIView *)self->_iconContainerView topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v25[2] = v14;
    v15 = [v7 bottomAnchor];
    v16 = [(UIView *)self->_iconContainerView bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v25[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    [v19 activateConstraints:v18];

    v5 = v24;
  }
}

- (void)_updateIconViewCornerRadius
{
  v4 = [(SBSwitcherAppSuggestionBannerView *)self _iconImageCache];
  [v4 iconImageInfo];
  [(UIView *)self->_iconView _setContinuousCornerRadius:v3];
}

- (void)_createDarkeningView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  [(SBSwitcherAppSuggestionBannerView *)self bounds];
  v4 = [v3 initWithFrame:?];
  highlightDarkeningView = self->_highlightDarkeningView;
  self->_highlightDarkeningView = v4;

  v6 = self->_highlightDarkeningView;
  v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
  [(UIView *)v6 setBackgroundColor:v7];

  [(UIView *)self->_highlightDarkeningView setUserInteractionEnabled:0];
  [(UIView *)self->_highlightDarkeningView setHidden:1];
  v8 = self->_highlightDarkeningView;
  [(PLPlatterView *)self _continuousCornerRadius];
  [(UIView *)v8 _setContinuousCornerRadius:?];
  v9 = self->_highlightDarkeningView;

  [(SBSwitcherAppSuggestionBannerView *)self addSubview:v9];
}

@end