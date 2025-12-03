@interface SBSwitcherAppSuggestionBannerView
- (SBSwitcherAppSuggestionBannerView)initWithFrame:(CGRect)frame appSuggestion:(id)suggestion style:(unint64_t)style;
- (id)_appTitleForSuggestion:(id)suggestion;
- (id)_descriptionFont;
- (id)_descriptionStringForSuggestion:(id)suggestion;
- (id)_firstWakeGreetingString;
- (id)_iconImageCache;
- (id)_iconImageFromAppWithBundleIdentifier:(id)identifier withIconImageCache:(id)cache;
- (id)_iconImageViewFromAppWithBundleIdentifier:(id)identifier withIconImageCache:(id)cache;
- (id)_meCardShortName;
- (id)_textStyle;
- (id)_titleFont;
- (void)_configureConstraints;
- (void)_createAppLabelForSuggestion:(id)suggestion;
- (void)_createDarkeningView;
- (void)_createDescriptionLabelForSuggestion:(id)suggestion;
- (void)_createIconViewForSuggestion:(id)suggestion;
- (void)_updateAppearanceForCurrentUserInterfaceStyle;
- (void)_updateIconViewCornerRadius;
- (void)_updateIconViewImageForSuggestion:(id)suggestion;
- (void)didMoveToWindow;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation SBSwitcherAppSuggestionBannerView

- (SBSwitcherAppSuggestionBannerView)initWithFrame:(CGRect)frame appSuggestion:(id)suggestion style:(unint64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v28[3] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
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
    v18->_style = style;
    objc_storeStrong(&v18->_suggestion, suggestion);
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
    _borderView = [(SBSwitcherAppSuggestionBannerView *)v19 _borderView];
    [(PLPlatterView *)v19 _continuousCornerRadius];
    [_borderView _setContinuousCornerRadius:?];
    layer = [_borderView layer];
    [layer setBorderWidth:0.3];
  }

  return v19;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(UIView *)self->_highlightDarkeningView setHidden:!highlighted];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(SBSwitcherAppSuggestionBannerView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  userInterfaceStyle2 = [changeCopy userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {

    [(SBSwitcherAppSuggestionBannerView *)self _updateAppearanceForCurrentUserInterfaceStyle];
  }
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = SBSwitcherAppSuggestionBannerView;
  [(SBSwitcherAppSuggestionBannerView *)&v4 didMoveToWindow];
  window = [(SBSwitcherAppSuggestionBannerView *)self window];

  if (window)
  {
    [(SBSwitcherAppSuggestionBannerView *)self _updateIconViewImage];
    [(SBSwitcherAppSuggestionBannerView *)self _updateIconViewCornerRadius];
  }
}

- (void)_updateAppearanceForCurrentUserInterfaceStyle
{
  traitCollection = [(SBSwitcherAppSuggestionBannerView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  _borderView = [(SBSwitcherAppSuggestionBannerView *)self _borderView];
  layer = [_borderView layer];
  v7 = 0.0;
  if (userInterfaceStyle == 2)
  {
    v7 = 1.0;
  }

  v8 = [MEMORY[0x277D75348] colorWithWhite:v7 alpha:0.08];
  [layer setBorderColor:{objc_msgSend(v8, "CGColor")}];

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
  defaultFontProvider = [MEMORY[0x277CF0D60] defaultFontProvider];
  _textStyle = [(SBSwitcherAppSuggestionBannerView *)self _textStyle];
  v5 = [defaultFontProvider preferredFontForTextStyle:_textStyle hiFontStyle:4];

  return v5;
}

- (id)_descriptionFont
{
  defaultFontProvider = [MEMORY[0x277CF0D60] defaultFontProvider];
  _textStyle = [(SBSwitcherAppSuggestionBannerView *)self _textStyle];
  v5 = [defaultFontProvider preferredFontForTextStyle:_textStyle hiFontStyle:1];

  return v5;
}

- (void)_configureConstraints
{
  v30[3] = *MEMORY[0x277D85DE8];
  customContentView = [(PLPlatterView *)self customContentView];
  [customContentView setTranslatesAutoresizingMaskIntoConstraints:0];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_appLabel forKey:@"appLabel"];
  [dictionary setObject:self->_descriptionLabel forKey:@"descriptionLabel"];
  [dictionary setObject:self->_iconContainerView forKey:@"iconView"];
  [dictionary setObject:customContentView forKey:@"contentView"];
  [dictionary setObject:self->_highlightDarkeningView forKey:@"darkeningView"];
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

  array = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[contentView]|" options:0 metrics:v8 views:dictionary];
  [array addObjectsFromArray:v10];

  v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[contentView]|" options:0 metrics:v8 views:dictionary];
  [array addObjectsFromArray:v11];

  v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[darkeningView]|" options:0 metrics:v8 views:dictionary];
  [array addObjectsFromArray:v12];

  v13 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[darkeningView]|" options:0 metrics:v8 views:dictionary];
  [array addObjectsFromArray:v13];

  [MEMORY[0x277CCAAD0] activateConstraints:array];
  [MEMORY[0x277CCAAD0] activateConstraints:array];
  _titleFont = [(SBSwitcherAppSuggestionBannerView *)self _titleFont];
  array2 = [MEMORY[0x277CBEB18] array];
  if ([(SBSwitcherAppSuggestionBannerView *)self _isSingleLine])
  {
    v16 = [MEMORY[0x277CCAAD0] constraintWithItem:customContentView attribute:3 relatedBy:0 toItem:self->_appLabel attribute:11 multiplier:1.0 constant:-24.0];
    [array2 addObject:v16];

    v17 = [MEMORY[0x277CCAAD0] constraintWithItem:customContentView attribute:3 relatedBy:0 toItem:self->_descriptionLabel attribute:11 multiplier:1.0 constant:-24.0];
    v18 = @"|-iconMargin-[iconView]-iconLabelMargin-[appLabel][descriptionLabel]-(>=spaceFromLeftEdge)-|";
  }

  else
  {
    [_titleFont _scaledValueForValue:18.0];
    v20 = -v19;
    [_titleFont _scaledValueForValue:13.0];
    v22 = -v21;
    v23 = [MEMORY[0x277CCAAD0] constraintWithItem:customContentView attribute:3 relatedBy:0 toItem:self->_appLabel attribute:11 multiplier:1.0 constant:v20];
    [array2 addObject:v23];

    v24 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_appLabel attribute:11 relatedBy:0 toItem:self->_descriptionLabel attribute:11 multiplier:1.0 constant:v22];
    [array2 addObject:v24];

    v25 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_appLabel attribute:5 relatedBy:0 toItem:self->_descriptionLabel attribute:5 multiplier:1.0 constant:0.0];
    [array2 addObject:v25];

    v26 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_appLabel attribute:6 relatedBy:-1 toItem:customContentView attribute:6 multiplier:1.0 constant:-8.0];
    [array2 addObject:v26];

    v17 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_descriptionLabel attribute:6 relatedBy:-1 toItem:customContentView attribute:6 multiplier:1.0 constant:-8.0];
    v18 = @"|-iconMargin-[iconView]-iconLabelMargin-[appLabel]";
  }

  [array2 addObject:v17];

  v27 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v18 options:0 metrics:v8 views:dictionary];
  [array2 addObjectsFromArray:v27];

  v28 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_iconContainerView attribute:10 relatedBy:0 toItem:customContentView attribute:10 multiplier:1.0 constant:0.0];
  [array2 addObject:v28];

  [MEMORY[0x277CCAAD0] activateConstraints:array2];
}

- (void)_createAppLabelForSuggestion:(id)suggestion
{
  v13 = [(SBSwitcherAppSuggestionBannerView *)self _appTitleForSuggestion:suggestion];
  v4 = objc_alloc(MEMORY[0x277D756B8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  appLabel = self->_appLabel;
  self->_appLabel = v5;

  [(UILabel *)self->_appLabel setText:v13];
  v7 = self->_appLabel;
  _titleFont = [(SBSwitcherAppSuggestionBannerView *)self _titleFont];
  [(UILabel *)v7 setFont:_titleFont];

  v9 = self->_appLabel;
  labelColor = [MEMORY[0x277D75348] labelColor];
  v11 = [labelColor colorWithAlphaComponent:0.75];
  [(UILabel *)v9 setTextColor:v11];

  [(UILabel *)self->_appLabel setTextAlignment:0];
  [(UILabel *)self->_appLabel setLineBreakMode:5];
  [(UILabel *)self->_appLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  customContentView = [(PLPlatterView *)self customContentView];
  [customContentView addSubview:self->_appLabel];
}

- (id)_appTitleForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  bundleIdentifier = [suggestionCopy bundleIdentifier];
  v5 = +[SBApplicationController sharedInstance];
  v6 = [v5 applicationWithBundleIdentifier:bundleIdentifier];

  if (v6)
  {
    if (([suggestionCopy isLocationPredictionOfType:0] & 1) != 0 || objc_msgSend(suggestionCopy, "isLocationPredictionOfType:", 1))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = mainBundle;
      v9 = @"LOCATION_DIRECTION_LAUNCH_SUGGESTION_FORMAT";
LABEL_5:
      mainBundle2 = [mainBundle localizedStringForKey:v9 value:&stru_283094718 table:@"SpringBoard"];

      v11 = MEMORY[0x277CCACA8];
      suggestedLocationName = [suggestionCopy suggestedLocationName];
      displayName = [v6 displayName];
      displayName2 = [v11 stringWithFormat:mainBundle2, suggestedLocationName, displayName];

LABEL_8:
      goto LABEL_13;
    }

    if ([suggestionCopy isLocationPredictionOfType:2])
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v8 = mainBundle;
      v9 = @"LOCATION_RIDE_LAUNCH_SUGGESTION_FORMAT";
      goto LABEL_5;
    }

    displayName2 = [v6 displayName];
  }

  else
  {
    if ([suggestionCopy isSiriSuggestion])
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      displayName2 = [mainBundle2 localizedStringForKey:@"SIRI" value:&stru_283094718 table:@"SpringBoard"];
      goto LABEL_8;
    }

    displayName2 = &stru_283094718;
  }

LABEL_13:

  return displayName2;
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
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [mainBundle localizedStringForKey:@"FIRST_WAKE_SUGGESTION_NONAME" value:&stru_283094718 table:@"SpringBoard"];

  return v3;
}

- (id)_descriptionStringForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  if ([suggestionCopy isArrivedAtHomePrediction])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = mainBundle;
    v7 = @"ARRIVED_AT_HOME_SUGGESTION";
LABEL_7:
    _firstWakeGreetingString = [mainBundle localizedStringForKey:v7 value:&stru_283094718 table:@"SpringBoard"];
LABEL_8:

    goto LABEL_9;
  }

  if ([suggestionCopy isArrivedAtWorkPrediction])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = mainBundle;
    v7 = @"ARRIVED_AT_WORK_SUGGESTION";
    goto LABEL_7;
  }

  if ([suggestionCopy isLocationBasedSuggestion])
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = mainBundle;
    v7 = @"CONTINUITY_LOCATION_BASED_SUGGESTION";
    goto LABEL_7;
  }

  if (([suggestionCopy isLocationPredictionFromSource:0] & 1) != 0 || objc_msgSend(suggestionCopy, "isLocationPredictionFromSource:", 1))
  {
    v13 = +[SBApplicationController sharedInstance];
    originatingBundleIdentifier = [suggestionCopy originatingBundleIdentifier];
    v6 = [v13 applicationWithBundleIdentifier:originatingBundleIdentifier];

    v15 = [suggestionCopy isLocationPredictionFromSource:0];
    v16 = @"LOCATION_COPIED_IN_APP_SUGGESTION_FORMAT";
    if (v15)
    {
      v16 = @"LOCATION_DONATED_IN_APP_SUGGESTION_FORMAT";
    }

    v17 = MEMORY[0x277CCA8D8];
    v18 = v16;
    mainBundle2 = [v17 mainBundle];
    v20 = [mainBundle2 localizedStringForKey:v18 value:&stru_283094718 table:@"SpringBoard"];

    v21 = MEMORY[0x277CCACA8];
    displayName = [v6 displayName];
    _firstWakeGreetingString = [v21 stringWithFormat:v20, displayName];

    goto LABEL_8;
  }

  if (([suggestionCopy isLocallyGeneratedSuggestion] & 1) == 0)
  {
    originatingDeviceName = [suggestionCopy originatingDeviceName];
    v24 = [originatingDeviceName length];

    if (v24)
    {
      mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
      v26 = mainBundle3;
      v27 = @"CONTINUITY_ORIGINATOR_NAME_FORMAT";
LABEL_31:
      v6 = [mainBundle3 localizedStringForKey:v27 value:&stru_283094718 table:@"SpringBoard"];

      v30 = MEMORY[0x277CCACA8];
      originatingDeviceName2 = [suggestionCopy originatingDeviceName];
      _firstWakeGreetingString = [v30 stringWithFormat:v6, originatingDeviceName2];

      goto LABEL_8;
    }
  }

  if ([suggestionCopy isPrediction] && objc_msgSend(suggestionCopy, "isFirstWakePrediction"))
  {
    _firstWakeGreetingString = [(SBSwitcherAppSuggestionBannerView *)self _firstWakeGreetingString];
  }

  else
  {
    if ([suggestionCopy isPrediction] && objc_msgSend(suggestionCopy, "isCarPlayPrediction"))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = mainBundle;
      v7 = @"CARPLAY_CONNECTED_SUGGESTION";
      goto LABEL_7;
    }

    if ([suggestionCopy isPrediction])
    {
      originatingDeviceName3 = [suggestionCopy originatingDeviceName];
      v29 = [originatingDeviceName3 length];

      if (v29)
      {
        mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
        v26 = mainBundle3;
        v27 = @"DEVICE_CONNECTED_SUGGESTION_NAME_FORMAT";
        goto LABEL_31;
      }
    }

    if ([suggestionCopy isPrediction] && objc_msgSend(suggestionCopy, "isHeadphonesPrediction"))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = mainBundle;
      v7 = @"HEADPHONES_CONNECTED_SUGGESTION";
      goto LABEL_7;
    }

    if ([suggestionCopy isPrediction] && objc_msgSend(suggestionCopy, "isBluetoothPrediction"))
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = mainBundle;
      v7 = @"BLUETOOTH_DEVICE_CONNECTED_SUGGESTION";
      goto LABEL_7;
    }

    if ([suggestionCopy isPrediction])
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v6 = mainBundle;
      v7 = @"GENERIC_DEVICE_CONNECTED_SUGGESTION";
      goto LABEL_7;
    }

    _firstWakeGreetingString = &stru_283094718;
  }

LABEL_9:
  if ([(SBSwitcherAppSuggestionBannerView *)self _isSingleLine])
  {
    mainBundle4 = [MEMORY[0x277CCA8D8] mainBundle];
    v10 = [mainBundle4 localizedStringForKey:@"SINGLE_LINE_SUGGESTION_FORMAT" value:&stru_283094718 table:@"SpringBoard"];

    v11 = [MEMORY[0x277CCACA8] stringWithFormat:v10, _firstWakeGreetingString];

    _firstWakeGreetingString = v11;
  }

  return _firstWakeGreetingString;
}

- (void)_createDescriptionLabelForSuggestion:(id)suggestion
{
  v13 = [(SBSwitcherAppSuggestionBannerView *)self _descriptionStringForSuggestion:suggestion];
  v4 = objc_alloc(MEMORY[0x277D756B8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v5;

  [(UILabel *)self->_descriptionLabel setText:v13];
  v7 = self->_descriptionLabel;
  _descriptionFont = [(SBSwitcherAppSuggestionBannerView *)self _descriptionFont];
  [(UILabel *)v7 setFont:_descriptionFont];

  v9 = self->_descriptionLabel;
  labelColor = [MEMORY[0x277D75348] labelColor];
  v11 = [labelColor colorWithAlphaComponent:0.75];
  [(UILabel *)v9 setTextColor:v11];

  [(UILabel *)self->_descriptionLabel setTextAlignment:0];
  [(UILabel *)self->_descriptionLabel setLineBreakMode:5];
  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  customContentView = [(PLPlatterView *)self customContentView];
  [customContentView addSubview:self->_descriptionLabel];
}

- (id)_iconImageFromAppWithBundleIdentifier:(id)identifier withIconImageCache:(id)cache
{
  cacheCopy = cache;
  identifierCopy = identifier;
  _sbWindowScene = [(UIView *)self _sbWindowScene];
  iconController = [_sbWindowScene iconController];
  v10 = [identifierCopy isEqualToString:@"com.apple.Siri"];

  if (v10)
  {
    notificationIconImageCache = [iconController notificationIconImageCache];

    if (notificationIconImageCache == cacheCopy)
    {
      v12 = @"siri-suggestion-landscape";
    }

    else
    {
      v12 = @"siri-suggestion";
    }

    v13 = [MEMORY[0x277D755B8] imageNamed:v12];
    labelColor = [MEMORY[0x277D75348] labelColor];
    v15 = [labelColor colorWithAlphaComponent:0.75];
    v16 = [v13 _flatImageWithColor:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_iconImageViewFromAppWithBundleIdentifier:(id)identifier withIconImageCache:(id)cache
{
  identifierCopy = identifier;
  cacheCopy = cache;
  if (cacheCopy)
  {
    v8 = [(SBSwitcherAppSuggestionBannerView *)self _iconImageFromAppWithBundleIdentifier:identifierCopy withIconImageCache:cacheCopy];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v8];
    }

    else
    {
      v10 = +[SBIconController sharedIconRepository];
      v11 = [v10 applicationIconForBundleIdentifier:identifierCopy];

      traitCollection = [(SBSwitcherAppSuggestionBannerView *)self traitCollection];
      [cacheCopy iconImageInfo];
      v9 = [v11 iconLayerViewWithInfo:traitCollection traitCollection:17 options:-1 priority:?];
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
  _sbWindowScene = [(UIView *)self _sbWindowScene];
  iconController = [_sbWindowScene iconController];

  if ([(SBSwitcherAppSuggestionBannerView *)self _isSingleLine])
  {
    [iconController notificationIconImageCache];
  }

  else
  {
    [iconController tableUIIconImageCache];
  }
  v5 = ;

  return v5;
}

- (void)_createIconViewForSuggestion:(id)suggestion
{
  v15[2] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  if (([suggestionCopy isSiriSuggestion] & 1) != 0 || (objc_msgSend(suggestionCopy, "bundleIdentifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "length"), v5, v6))
  {
    [(SBSwitcherAppSuggestionBannerView *)self _isSingleLine];
    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    iconContainerView = self->_iconContainerView;
    self->_iconContainerView = v7;

    [(UIView *)self->_iconContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    customContentView = [(PLPlatterView *)self customContentView];
    [customContentView addSubview:self->_iconContainerView];

    heightAnchor = [(UIView *)self->_iconContainerView heightAnchor];
    v11 = [heightAnchor constraintEqualToConstant:24.0];
    v15[0] = v11;
    widthAnchor = [(UIView *)self->_iconContainerView widthAnchor];
    v13 = [widthAnchor constraintEqualToConstant:24.0];
    v15[1] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

    [MEMORY[0x277CCAAD0] activateConstraints:v14];
    [(SBSwitcherAppSuggestionBannerView *)self _updateIconViewImageForSuggestion:suggestionCopy];
  }
}

- (void)_updateIconViewImageForSuggestion:(id)suggestion
{
  v25[4] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  _iconImageCache = [(SBSwitcherAppSuggestionBannerView *)self _iconImageCache];
  bundleIdentifier = [suggestionCopy bundleIdentifier];

  v7 = [(SBSwitcherAppSuggestionBannerView *)self _iconImageViewFromAppWithBundleIdentifier:bundleIdentifier withIconImageCache:_iconImageCache];

  if (v7)
  {
    [_iconImageCache iconImageInfo];
    [v7 _setContinuousCornerRadius:v8];
    layer = [v7 layer];
    [layer setMasksToBounds:1];

    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_iconView removeFromSuperview];
    objc_storeStrong(&self->_iconView, v7);
    v24 = _iconImageCache;
    [(UIView *)self->_iconContainerView addSubview:self->_iconView];
    v19 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v7 leadingAnchor];
    leadingAnchor2 = [(UIView *)self->_iconContainerView leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v25[0] = v21;
    trailingAnchor = [v7 trailingAnchor];
    trailingAnchor2 = [(UIView *)self->_iconContainerView trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v25[1] = v11;
    topAnchor = [v7 topAnchor];
    topAnchor2 = [(UIView *)self->_iconContainerView topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[2] = v14;
    bottomAnchor = [v7 bottomAnchor];
    bottomAnchor2 = [(UIView *)self->_iconContainerView bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[3] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
    [v19 activateConstraints:v18];

    _iconImageCache = v24;
  }
}

- (void)_updateIconViewCornerRadius
{
  _iconImageCache = [(SBSwitcherAppSuggestionBannerView *)self _iconImageCache];
  [_iconImageCache iconImageInfo];
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