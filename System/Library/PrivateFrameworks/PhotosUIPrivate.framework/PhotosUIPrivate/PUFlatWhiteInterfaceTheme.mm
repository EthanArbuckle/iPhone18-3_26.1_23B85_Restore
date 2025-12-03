@interface PUFlatWhiteInterfaceTheme
- (NSDirectionalEdgeInsets)photoCollectionCloudQuotaBannerTextMargins;
- (UIColor)photoEditingAdjustmentsBarBackgroundColor;
- (UIColor)photoEditingAdjustmentsBarDisabledColor;
- (UIColor)photoEditingBadgeViewFillColor;
- (UIColor)photoEditingCircularIndicatorBackgroundStrokeColor;
- (UIColor)photoEditingCropInnerLineColor;
- (UIColor)photoEditingEffectCellHighlightBackgroundColor;
- (UIColor)photoEditingFeedbackPlatterColor;
- (UIColor)photoEditingNotchButtonBackgroundColor;
- (UIColor)photoEditingSolidBackgroundViewColor;
- (UIColor)photoEditingTimecodeBackgroundColor;
- (UIColor)photoEditingToolbarDarkGradientEndColor;
- (UIColor)photoEditingToolbarDarkGradientStartColor;
- (UIColor)photoEditingToolbarLightGradientEndColor;
- (UIColor)photoEditingToolbarLightGradientStartColor;
- (UIColor)photoEditingToolbarUltralightGradientEndColor;
- (UIColor)photoEditingToolbarUltralightGradientStartColor;
- (UIColor)photoEditingToolbarUnderlineColor;
- (UIColor)playbackTimeLabelBackgroundColor;
- (UIFont)albumListSectionTitleLabelFont;
- (UIFont)albumListSubtitleLabelFont;
- (UIFont)albumListTitleLabelFont;
- (UIFont)playbackTimeLabelFont;
- (UIFont)searchItalicTitleLabelFont;
- (UIFont)searchRecentLabelFont;
- (UIFont)searchResultCountLabelFont;
- (UIFont)searchSubtitleLabelFont;
- (UIFont)searchTitleLabelFont;
- (UIFont)topToolbarToolButtonFont;
- (UIFont)topToolbarToolLabelFont;
- (UIImage)airPlayVideoPlaceholderIcon;
- (UIImage)compactLoadErrorIcon;
- (UIImage)regularLoadErrorIcon;
- (UIOffset)topLevelNavigationBarButtonTitlePositionAdjustmentforBarMetrics:(int64_t)metrics;
- (id)_fontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits;
- (id)_themeImageWithBaseName:(id)name;
- (id)photoCollectionCloudQuotaBannerBackgroundColorHighlighted:(BOOL)highlighted;
- (id)photoCollectionCloudQuotaBannerFont;
- (id)photoCollectionCloudQuotaBannerLinkTextColorHighlighted:(BOOL)highlighted;
- (id)photoCollectionCloudQuotaBannerLinkTextFont;
- (id)photoCollectionCloudQuotaBannerTextColorHighlighted:(BOOL)highlighted;
- (id)photoEditingDepthBadgeDisabledColor;
- (id)photoEditingDepthBadgeDisabledTextColor;
- (id)photoEditingDepthBadgeEnabledTextColor;
- (id)searchDefaultAttributes;
- (id)searchDimmedAttributes;
- (id)searchItalicTitleAttributes;
- (id)searchTitleLabelHighlightedFont;
- (int)photoCollectionViewBackgroundColorValue;
- (void)configureAlbumListSectionTitleLabel:(id)label;
- (void)configureAlbumListStackViewPhonePhotoDecoration:(id)decoration;
- (void)configureAlbumListSubtitleLabel:(id)label asOpaque:(BOOL)opaque;
- (void)configureAlbumListTitleLabel:(id)label asOpaque:(BOOL)opaque;
- (void)configureAlbumListTitleTextField:(id)field asOpaque:(BOOL)opaque;
- (void)configureBannerLabel:(id)label;
- (void)configureBannerStackView:(id)view;
- (void)configureCompactProgressIndicatorMessageLabel:(id)label;
- (void)configureEditPluginListCellLabel:(id)label;
- (void)configureEditPluginNavigationController:(id)controller;
- (void)configureEditPluginUserDefaultsCell:(id)cell withIcon:(id)icon title:(id)title;
- (void)configureEditPluginUserDefaultsTableView:(id)view;
- (void)configureMapViewAnnotationCountLabel:(id)label;
- (void)configureProgressIndicatorMessageLabel:(id)label;
- (void)configureSearchResultCountLabel:(id)label;
- (void)configureSearchSubtitleLabel:(id)label;
- (void)configureSearchTitleLabel:(id)label;
@end

@implementation PUFlatWhiteInterfaceTheme

- (id)searchDimmedAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69DB648];
  searchTitleLabelFont = [(PUFlatWhiteInterfaceTheme *)self searchTitleLabelFont];
  v8[0] = searchTitleLabelFont;
  v7[1] = *MEMORY[0x1E69DB650];
  searchTitleDimmedTextColor = [(PUFlatWhiteInterfaceTheme *)self searchTitleDimmedTextColor];
  v8[1] = searchTitleDimmedTextColor;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)searchItalicTitleAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69DB648];
  searchItalicTitleLabelFont = [(PUFlatWhiteInterfaceTheme *)self searchItalicTitleLabelFont];
  v8[0] = searchItalicTitleLabelFont;
  v7[1] = *MEMORY[0x1E69DB650];
  searchTitleTextColor = [(PUFlatWhiteInterfaceTheme *)self searchTitleTextColor];
  v8[1] = searchTitleTextColor;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)searchDefaultAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69DB648];
  searchTitleLabelFont = [(PUFlatWhiteInterfaceTheme *)self searchTitleLabelFont];
  v8[0] = searchTitleLabelFont;
  v7[1] = *MEMORY[0x1E69DB650];
  searchTitleTextColor = [(PUFlatWhiteInterfaceTheme *)self searchTitleTextColor];
  v8[1] = searchTitleTextColor;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)configureSearchResultCountLabel:(id)label
{
  labelCopy = label;
  searchResultCountLabelFont = [(PUFlatWhiteInterfaceTheme *)self searchResultCountLabelFont];
  [labelCopy setFont:searchResultCountLabelFont];

  [labelCopy _setTextColorFollowsTintColor:1];
  searchResultCountTextColor = [(PUFlatWhiteInterfaceTheme *)self searchResultCountTextColor];
  [labelCopy setTintColor:searchResultCountTextColor];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    [labelCopy setNumberOfLines:0];
    LODWORD(v8) = 1.0;
    [labelCopy _setHyphenationFactor:v8];
  }
}

- (UIFont)searchResultCountLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (void)configureSearchSubtitleLabel:(id)label
{
  labelCopy = label;
  searchSubtitleLabelFont = [(PUFlatWhiteInterfaceTheme *)self searchSubtitleLabelFont];
  [labelCopy setFont:searchSubtitleLabelFont];

  [labelCopy _setTextColorFollowsTintColor:1];
  searchSubtitleTextColor = [(PUFlatWhiteInterfaceTheme *)self searchSubtitleTextColor];
  [labelCopy setTintColor:searchSubtitleTextColor];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    [labelCopy setNumberOfLines:0];
    LODWORD(v8) = 1.0;
    [labelCopy _setHyphenationFactor:v8];
  }
}

- (UIFont)searchSubtitleLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (void)configureSearchTitleLabel:(id)label
{
  labelCopy = label;
  searchTitleLabelFont = [(PUFlatWhiteInterfaceTheme *)self searchTitleLabelFont];
  [labelCopy setFont:searchTitleLabelFont];

  [labelCopy _setTextColorFollowsTintColor:1];
  searchTitleTextColor = [(PUFlatWhiteInterfaceTheme *)self searchTitleTextColor];
  [labelCopy setTintColor:searchTitleTextColor];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x1E69DC668] preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    [labelCopy setNumberOfLines:0];
    LODWORD(v8) = 1.0;
    [labelCopy _setHyphenationFactor:v8];
  }
}

- (id)searchTitleLabelHighlightedFont
{
  searchTitleLabelFont = [(PUFlatWhiteInterfaceTheme *)self searchTitleLabelFont];
  fontDescriptor = [searchTitleLabelFont fontDescriptor];
  v4 = MEMORY[0x1E69DB878];
  v5 = [fontDescriptor fontDescriptorWithSymbolicTraits:32770];
  [searchTitleLabelFont pointSize];
  v6 = [v4 fontWithDescriptor:v5 size:?];

  return v6;
}

- (UIFont)searchItalicTitleLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:32769 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (UIFont)searchTitleLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (UIFont)searchRecentLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD40] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (void)configureEditPluginUserDefaultsCell:(id)cell withIcon:(id)icon title:(id)title
{
  v21[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  iconCopy = icon;
  cellCopy = cell;
  imageView = [cellCopy imageView];
  [imageView setImage:iconCopy];

  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (titleCopy)
  {
    v12 = titleCopy;
  }

  else
  {
    v12 = &stru_1F2AC6818;
  }

  v20 = *MEMORY[0x1E69DB650];
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  v21[0] = blackColor;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v15 = [v11 initWithString:v12 attributes:v14];

  textLabel = [cellCopy textLabel];
  [textLabel setAttributedText:v15];

  textLabel2 = [cellCopy textLabel];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [textLabel2 setBackgroundColor:clearColor];

  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [cellCopy setBackgroundColor:clearColor2];
}

- (void)configureEditPluginUserDefaultsTableView:(id)view
{
  v3 = MEMORY[0x1E69DD250];
  viewCopy = view;
  v5 = objc_alloc_init(v3);
  [viewCopy setTableFooterView:v5];
}

- (void)configureEditPluginListCellLabel:(id)label
{
  v3 = MEMORY[0x1E69DC888];
  labelCopy = label;
  blackColor = [v3 blackColor];
  [labelCopy setTextColor:blackColor];

  v6 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [labelCopy setFont:v6];
}

- (void)configureEditPluginNavigationController:(id)controller
{
  navigationBar = [controller navigationBar];
  [navigationBar setBarStyle:1];
}

- (UIFont)topToolbarToolButtonFont
{
  v2 = MEMORY[0x1E69DB878];
  [MEMORY[0x1E69DB878] systemFontSize];
  v4 = [v2 systemFontOfSize:v3 + 1.0];
  if (MEMORY[0x1B8C6D660]())
  {
    v5 = CEKFontOfSizeAndStyle();

    v4 = v5;
  }

  return v4;
}

- (UIFont)topToolbarToolLabelFont
{
  [MEMORY[0x1E69DB878] systemFontSize];
  v2 = [MEMORY[0x1E69DB878] systemFontOfSize:? weight:?];
  if (MEMORY[0x1B8C6D660]())
  {
    v3 = CEKFontOfSizeAndStyle();

    v2 = v3;
  }

  return v2;
}

- (UIColor)photoEditingNotchButtonBackgroundColor
{
  if (photoEditingNotchButtonBackgroundColor_onceToken != -1)
  {
    dispatch_once(&photoEditingNotchButtonBackgroundColor_onceToken, &__block_literal_global_217);
  }

  v3 = photoEditingNotchButtonBackgroundColor_color;

  return v3;
}

uint64_t __67__PUFlatWhiteInterfaceTheme_photoEditingNotchButtonBackgroundColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_219_26987];
  v1 = photoEditingNotchButtonBackgroundColor_color;
  photoEditingNotchButtonBackgroundColor_color = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __67__PUFlatWhiteInterfaceTheme_photoEditingNotchButtonBackgroundColor__block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] separatorColor];
  }
  v2 = ;

  return v2;
}

- (UIColor)photoEditingFeedbackPlatterColor
{
  if (photoEditingFeedbackPlatterColor_onceToken != -1)
  {
    dispatch_once(&photoEditingFeedbackPlatterColor_onceToken, &__block_literal_global_213);
  }

  v3 = photoEditingFeedbackPlatterColor_color;

  return v3;
}

uint64_t __61__PUFlatWhiteInterfaceTheme_photoEditingFeedbackPlatterColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_215];
  v1 = photoEditingFeedbackPlatterColor_color;
  photoEditingFeedbackPlatterColor_color = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __61__PUFlatWhiteInterfaceTheme_photoEditingFeedbackPlatterColor__block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] secondarySystemFillColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

- (UIColor)photoEditingCropInnerLineColor
{
  if (photoEditingCropInnerLineColor_onceToken != -1)
  {
    dispatch_once(&photoEditingCropInnerLineColor_onceToken, &__block_literal_global_208);
  }

  v3 = photoEditingCropInnerLineColor_color;

  return v3;
}

uint64_t __59__PUFlatWhiteInterfaceTheme_photoEditingCropInnerLineColor__block_invoke()
{
  v0 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_211];
  v1 = photoEditingCropInnerLineColor_color;
  photoEditingCropInnerLineColor_color = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id __59__PUFlatWhiteInterfaceTheme_photoEditingCropInnerLineColor__block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 2)
  {
    [MEMORY[0x1E69DC888] clearColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v2 = ;

  return v2;
}

- (UIColor)photoEditingTimecodeBackgroundColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.2];

  return v3;
}

- (UIColor)photoEditingEffectCellHighlightBackgroundColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.25];

  return v3;
}

- (UIColor)photoEditingCircularIndicatorBackgroundStrokeColor
{
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v3 = [labelColor colorWithAlphaComponent:0.3];

  return v3;
}

- (UIColor)photoEditingBadgeViewFillColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  [v3 adjustmentLabelPlatterAlpha];
  v4 = [systemBackgroundColor colorWithAlphaComponent:?];

  return v4;
}

- (UIColor)photoEditingToolbarUnderlineColor
{
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v3 = [labelColor colorWithAlphaComponent:0.200000003];

  return v3;
}

- (UIColor)photoEditingToolbarDarkGradientEndColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.0];

  return v3;
}

- (UIColor)photoEditingToolbarDarkGradientStartColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.600000024];

  return v3;
}

- (UIColor)photoEditingToolbarUltralightGradientEndColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.0];

  return v3;
}

- (UIColor)photoEditingToolbarUltralightGradientStartColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.200000003];

  return v3;
}

- (UIColor)photoEditingToolbarLightGradientEndColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.0];

  return v3;
}

- (UIColor)photoEditingToolbarLightGradientStartColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.400000006];

  return v3;
}

- (id)photoEditingDepthBadgeDisabledTextColor
{
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v3 = [labelColor colorWithAlphaComponent:0.5];

  return v3;
}

- (id)photoEditingDepthBadgeEnabledTextColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.600000024];

  return v3;
}

- (id)photoEditingDepthBadgeDisabledColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.5];

  return v3;
}

- (UIColor)photoEditingAdjustmentsBarDisabledColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.800000012];

  return v3;
}

- (UIColor)photoEditingAdjustmentsBarBackgroundColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.899999976];

  return v3;
}

- (UIColor)photoEditingSolidBackgroundViewColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.8];

  return v3;
}

- (UIImage)airPlayVideoPlaceholderIcon
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:3 weight:100.0];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"tv" withConfiguration:v2];

  return v3;
}

- (UIImage)regularLoadErrorIcon
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PUFlatWhiteInterfaceTheme_regularLoadErrorIcon__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  if (regularLoadErrorIcon_onceToken != -1)
  {
    dispatch_once(&regularLoadErrorIcon_onceToken, block);
  }

  return regularLoadErrorIcon_icon;
}

void __49__PUFlatWhiteInterfaceTheme_regularLoadErrorIcon__block_invoke()
{
  v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:28.0];
  v0 = MEMORY[0x1E69DCAB8];
  v1 = [objc_opt_class() errorIconSymbolName];
  v2 = [v0 systemImageNamed:v1 withConfiguration:v6];
  v3 = [objc_opt_class() errorIconSymbolColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  v5 = regularLoadErrorIcon_icon;
  regularLoadErrorIcon_icon = v4;
}

- (UIImage)compactLoadErrorIcon
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__PUFlatWhiteInterfaceTheme_compactLoadErrorIcon__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  if (compactLoadErrorIcon_onceToken != -1)
  {
    dispatch_once(&compactLoadErrorIcon_onceToken, block);
  }

  return compactLoadErrorIcon_icon;
}

void __49__PUFlatWhiteInterfaceTheme_compactLoadErrorIcon__block_invoke()
{
  v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:18.6];
  v0 = MEMORY[0x1E69DCAB8];
  v1 = [objc_opt_class() errorIconSymbolName];
  v2 = [v0 systemImageNamed:v1 withConfiguration:v6];
  v3 = [objc_opt_class() errorIconSymbolColor];
  v4 = [v2 imageWithTintColor:v3 renderingMode:1];
  v5 = compactLoadErrorIcon_icon;
  compactLoadErrorIcon_icon = v4;
}

- (UIFont)playbackTimeLabelFont
{
  v2 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD10]];
  pu_fontWithMonospacedNumbers = [v2 pu_fontWithMonospacedNumbers];

  return pu_fontWithMonospacedNumbers;
}

- (UIColor)playbackTimeLabelBackgroundColor
{
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [systemBackgroundColor colorWithAlphaComponent:0.8];

  return v3;
}

- (void)configureCompactProgressIndicatorMessageLabel:(id)label
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DB980];
  labelCopy = label;
  v7 = [v3 systemFontOfSize:15.0 weight:v4];
  [labelCopy setFont:v7];
  [labelCopy _setTextColorFollowsTintColor:1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [labelCopy setTintColor:secondaryLabelColor];
}

- (void)configureProgressIndicatorMessageLabel:(id)label
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDD80];
  labelCopy = label;
  v6 = [v3 px_defaultFontForTextStyle:v4 withSymbolicTraits:2];
  [labelCopy setFont:v6];

  [labelCopy _setTextColorFollowsTintColor:1];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  v7 = [labelColor colorWithAlphaComponent:0.5];
  [labelCopy setTintColor:v7];
}

- (void)configureMapViewAnnotationCountLabel:(id)label
{
  v3 = MEMORY[0x1E69DB878];
  labelCopy = label;
  v5 = [v3 systemFontOfSize:16.0];
  [labelCopy setFont:v5];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [labelCopy setTextColor:whiteColor];

  [labelCopy setTextAlignment:1];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [labelCopy setBackgroundColor:clearColor];
}

- (void)configureBannerLabel:(id)label
{
  v3 = MEMORY[0x1E69DC888];
  labelCopy = label;
  clearColor = [v3 clearColor];
  [labelCopy setBackgroundColor:clearColor];

  v6 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD48]];
  [labelCopy setFont:v6];
}

- (void)configureBannerStackView:(id)view
{
  viewCopy = view;
  [viewCopy setStyle:2];
  [viewCopy setStackSize:{48.0, 48.0}];
  [viewCopy setStackOffset:{0.0, -1.0}];
  [viewCopy setStackPerspectiveInsets:{2.0, 2.0, 2.0, 2.0}];
  [viewCopy setStackPerspectiveOffset:{0.0, -4.0}];
}

- (void)configureAlbumListStackViewPhonePhotoDecoration:(id)decoration
{
  v3 = MEMORY[0x1E69DC888];
  decorationCopy = decoration;
  whiteColor = [v3 whiteColor];
  [decorationCopy setBorderColor:whiteColor];

  PLPhysicalScreenScale();
  [decorationCopy setBorderWidth:1.0 / v6];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [decorationCopy setForegroundColor:v7];
}

- (void)configureAlbumListSectionTitleLabel:(id)label
{
  labelCopy = label;
  [labelCopy setNumberOfLines:0];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [labelCopy setBackgroundColor:clearColor];
}

- (UIFont)albumListSectionTitleLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD40] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (void)configureAlbumListSubtitleLabel:(id)label asOpaque:(BOOL)opaque
{
  labelCopy = label;
  [labelCopy _setTextColorFollowsTintColor:1];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [labelCopy setTintColor:secondaryLabelColor];
}

- (UIFont)albumListSubtitleLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD78] addingSymbolicTraits:0x8000 options:2];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (void)configureAlbumListTitleTextField:(id)field asOpaque:(BOOL)opaque
{
  fieldCopy = field;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [fieldCopy setTextColor:labelColor];

  if (opaque)
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v6 = ;
  [fieldCopy setBackgroundColor:v6];

  [fieldCopy setReturnKeyType:9];
}

- (void)configureAlbumListTitleLabel:(id)label asOpaque:(BOOL)opaque
{
  v4 = MEMORY[0x1E69DC888];
  labelCopy = label;
  labelColor = [v4 labelColor];
  [labelCopy setTextColor:labelColor];
}

- (UIFont)albumListTitleLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD78] addingSymbolicTraits:0x8000 options:2];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (id)photoCollectionCloudQuotaBannerLinkTextColorHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBlueColor];
  }
  v3 = ;

  return v3;
}

- (id)photoCollectionCloudQuotaBannerLinkTextFont
{
  v2 = [(PUFlatWhiteInterfaceTheme *)self _fontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:2];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (NSDirectionalEdgeInsets)photoCollectionCloudQuotaBannerTextMargins
{
  v2 = 0.0;
  v3 = 8.0;
  v4 = 0.0;
  v5 = 8.0;
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (id)photoCollectionCloudQuotaBannerTextColorHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v3 = ;

  return v3;
}

- (id)photoCollectionCloudQuotaBannerBackgroundColorHighlighted:(BOOL)highlighted
{
  if (highlighted)
  {
    [MEMORY[0x1E69DC888] colorWithRed:0.674509823 green:0.674509823 blue:0.674509823 alpha:1.0];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v3 = ;

  return v3;
}

- (id)photoCollectionCloudQuotaBannerFont
{
  v2 = [(PUFlatWhiteInterfaceTheme *)self _fontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0x8000];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (int)photoCollectionViewBackgroundColorValue
{
  v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!v3)
  {
    return 255;
  }

  v4 = v3;
  RenderingIntent = CGColorSpaceGetRenderingIntent();
  photoCollectionViewBackgroundColor = [(PUFlatWhiteInterfaceTheme *)self photoCollectionViewBackgroundColor];
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v4, RenderingIntent, [photoCollectionViewBackgroundColor CGColor], 0);

  CGColorSpaceRelease(v4);
  if (!CopyByMatchingToColorSpace)
  {
    return 255;
  }

  if (CGColorGetNumberOfComponents(CopyByMatchingToColorSpace) <= 2)
  {
    CGColorRelease(CopyByMatchingToColorSpace);
    return 255;
  }

  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  CGColorRelease(CopyByMatchingToColorSpace);
  __asm { FMOV            V1.2D, #31.0 }

  v15 = vshl_u32(vmovn_s64(vcvtq_s64_f64(vmulq_f64(*Components, _Q1))), 0x50000000ALL);
  return vadd_s32(vdup_lane_s32(v15, 1), v15).u32[0] + (Components[1].f64[0] * 31.0);
}

- (UIOffset)topLevelNavigationBarButtonTitlePositionAdjustmentforBarMetrics:(int64_t)metrics
{
  v3 = *MEMORY[0x1E69DE258];
  v4 = *(MEMORY[0x1E69DE258] + 8);
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (id)_fontDescriptorWithTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits
{
  v4 = *&traits;
  styleCopy = style;
  v6 = MEMORY[0x1E69DDA98];
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    preferredContentSizeCategory2 = [*v6 preferredContentSizeCategory];
    v10 = *MEMORY[0x1E69DDC38];
    if (([v10 isEqualToString:*MEMORY[0x1E69DDC90]] & 1) == 0 && UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory2, v10) == NSOrderedDescending)
    {
      v11 = v10;

      preferredContentSizeCategory2 = v11;
    }

    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:preferredContentSizeCategory2];
    v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:styleCopy compatibleWithTraitCollection:v12];
    v14 = v13;
    if (v4)
    {
      v15 = [v13 fontDescriptorWithSymbolicTraits:{objc_msgSend(v13, "symbolicTraits") | v4}];

      v14 = v15;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:styleCopy addingSymbolicTraits:v4 options:2];
  }

  return v14;
}

- (id)_themeImageWithBaseName:(id)name
{
  nameCopy = name;
  if (_themeImageWithBaseName__onceToken != -1)
  {
    dispatch_once(&_themeImageWithBaseName__onceToken, &__block_literal_global_26997);
  }

  themeImagePrefix = [(PUFlatWhiteInterfaceTheme *)self themeImagePrefix];
  v6 = [themeImagePrefix stringByAppendingString:nameCopy];

  if ([_themeImageWithBaseName__nonExistentImages containsObject:v6])
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E69DCAB8] pu_PhotosUIImageNamed:v6];
    if (!v7)
    {
      [_themeImageWithBaseName__nonExistentImages addObject:v6];
    }
  }

  return v7;
}

uint64_t __53__PUFlatWhiteInterfaceTheme__themeImageWithBaseName___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:10];
  v1 = _themeImageWithBaseName__nonExistentImages;
  _themeImageWithBaseName__nonExistentImages = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end