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
- (UIOffset)topLevelNavigationBarButtonTitlePositionAdjustmentforBarMetrics:(int64_t)a3;
- (id)_fontDescriptorWithTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4;
- (id)_themeImageWithBaseName:(id)a3;
- (id)photoCollectionCloudQuotaBannerBackgroundColorHighlighted:(BOOL)a3;
- (id)photoCollectionCloudQuotaBannerFont;
- (id)photoCollectionCloudQuotaBannerLinkTextColorHighlighted:(BOOL)a3;
- (id)photoCollectionCloudQuotaBannerLinkTextFont;
- (id)photoCollectionCloudQuotaBannerTextColorHighlighted:(BOOL)a3;
- (id)photoEditingDepthBadgeDisabledColor;
- (id)photoEditingDepthBadgeDisabledTextColor;
- (id)photoEditingDepthBadgeEnabledTextColor;
- (id)searchDefaultAttributes;
- (id)searchDimmedAttributes;
- (id)searchItalicTitleAttributes;
- (id)searchTitleLabelHighlightedFont;
- (int)photoCollectionViewBackgroundColorValue;
- (void)configureAlbumListSectionTitleLabel:(id)a3;
- (void)configureAlbumListStackViewPhonePhotoDecoration:(id)a3;
- (void)configureAlbumListSubtitleLabel:(id)a3 asOpaque:(BOOL)a4;
- (void)configureAlbumListTitleLabel:(id)a3 asOpaque:(BOOL)a4;
- (void)configureAlbumListTitleTextField:(id)a3 asOpaque:(BOOL)a4;
- (void)configureBannerLabel:(id)a3;
- (void)configureBannerStackView:(id)a3;
- (void)configureCompactProgressIndicatorMessageLabel:(id)a3;
- (void)configureEditPluginListCellLabel:(id)a3;
- (void)configureEditPluginNavigationController:(id)a3;
- (void)configureEditPluginUserDefaultsCell:(id)a3 withIcon:(id)a4 title:(id)a5;
- (void)configureEditPluginUserDefaultsTableView:(id)a3;
- (void)configureMapViewAnnotationCountLabel:(id)a3;
- (void)configureProgressIndicatorMessageLabel:(id)a3;
- (void)configureSearchResultCountLabel:(id)a3;
- (void)configureSearchSubtitleLabel:(id)a3;
- (void)configureSearchTitleLabel:(id)a3;
@end

@implementation PUFlatWhiteInterfaceTheme

- (id)searchDimmedAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69DB648];
  v3 = [(PUFlatWhiteInterfaceTheme *)self searchTitleLabelFont];
  v8[0] = v3;
  v7[1] = *MEMORY[0x1E69DB650];
  v4 = [(PUFlatWhiteInterfaceTheme *)self searchTitleDimmedTextColor];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)searchItalicTitleAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69DB648];
  v3 = [(PUFlatWhiteInterfaceTheme *)self searchItalicTitleLabelFont];
  v8[0] = v3;
  v7[1] = *MEMORY[0x1E69DB650];
  v4 = [(PUFlatWhiteInterfaceTheme *)self searchTitleTextColor];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (id)searchDefaultAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = *MEMORY[0x1E69DB648];
  v3 = [(PUFlatWhiteInterfaceTheme *)self searchTitleLabelFont];
  v8[0] = v3;
  v7[1] = *MEMORY[0x1E69DB650];
  v4 = [(PUFlatWhiteInterfaceTheme *)self searchTitleTextColor];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)configureSearchResultCountLabel:(id)a3
{
  v9 = a3;
  v4 = [(PUFlatWhiteInterfaceTheme *)self searchResultCountLabelFont];
  [v9 setFont:v4];

  [v9 _setTextColorFollowsTintColor:1];
  v5 = [(PUFlatWhiteInterfaceTheme *)self searchResultCountTextColor];
  [v9 setTintColor:v5];

  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v7))
  {
    [v9 setNumberOfLines:0];
    LODWORD(v8) = 1.0;
    [v9 _setHyphenationFactor:v8];
  }
}

- (UIFont)searchResultCountLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDCF8] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (void)configureSearchSubtitleLabel:(id)a3
{
  v9 = a3;
  v4 = [(PUFlatWhiteInterfaceTheme *)self searchSubtitleLabelFont];
  [v9 setFont:v4];

  [v9 _setTextColorFollowsTintColor:1];
  v5 = [(PUFlatWhiteInterfaceTheme *)self searchSubtitleTextColor];
  [v9 setTintColor:v5];

  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v7))
  {
    [v9 setNumberOfLines:0];
    LODWORD(v8) = 1.0;
    [v9 _setHyphenationFactor:v8];
  }
}

- (UIFont)searchSubtitleLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD28] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (void)configureSearchTitleLabel:(id)a3
{
  v9 = a3;
  v4 = [(PUFlatWhiteInterfaceTheme *)self searchTitleLabelFont];
  [v9 setFont:v4];

  [v9 _setTextColorFollowsTintColor:1];
  v5 = [(PUFlatWhiteInterfaceTheme *)self searchTitleTextColor];
  [v9 setTintColor:v5];

  v6 = [MEMORY[0x1E69DC668] sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  if (UIContentSizeCategoryIsAccessibilityCategory(v7))
  {
    [v9 setNumberOfLines:0];
    LODWORD(v8) = 1.0;
    [v9 _setHyphenationFactor:v8];
  }
}

- (id)searchTitleLabelHighlightedFont
{
  v2 = [(PUFlatWhiteInterfaceTheme *)self searchTitleLabelFont];
  v3 = [v2 fontDescriptor];
  v4 = MEMORY[0x1E69DB878];
  v5 = [v3 fontDescriptorWithSymbolicTraits:32770];
  [v2 pointSize];
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

- (void)configureEditPluginUserDefaultsCell:(id)a3 withIcon:(id)a4 title:(id)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 imageView];
  [v10 setImage:v8];

  v11 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = &stru_1F2AC6818;
  }

  v20 = *MEMORY[0x1E69DB650];
  v13 = [MEMORY[0x1E69DC888] blackColor];
  v21[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v15 = [v11 initWithString:v12 attributes:v14];

  v16 = [v9 textLabel];
  [v16 setAttributedText:v15];

  v17 = [v9 textLabel];
  v18 = [MEMORY[0x1E69DC888] clearColor];
  [v17 setBackgroundColor:v18];

  v19 = [MEMORY[0x1E69DC888] clearColor];
  [v9 setBackgroundColor:v19];
}

- (void)configureEditPluginUserDefaultsTableView:(id)a3
{
  v3 = MEMORY[0x1E69DD250];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v4 setTableFooterView:v5];
}

- (void)configureEditPluginListCellLabel:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 blackColor];
  [v4 setTextColor:v5];

  v6 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD08]];
  [v4 setFont:v6];
}

- (void)configureEditPluginNavigationController:(id)a3
{
  v3 = [a3 navigationBar];
  [v3 setBarStyle:1];
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
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  return v3;
}

- (UIColor)photoEditingEffectCellHighlightBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.25];

  return v3;
}

- (UIColor)photoEditingCircularIndicatorBackgroundStrokeColor
{
  v2 = [MEMORY[0x1E69DC888] labelColor];
  v3 = [v2 colorWithAlphaComponent:0.3];

  return v3;
}

- (UIColor)photoEditingBadgeViewFillColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = +[PUPhotoEditProtoSettings sharedInstance];
  [v3 adjustmentLabelPlatterAlpha];
  v4 = [v2 colorWithAlphaComponent:?];

  return v4;
}

- (UIColor)photoEditingToolbarUnderlineColor
{
  v2 = [MEMORY[0x1E69DC888] labelColor];
  v3 = [v2 colorWithAlphaComponent:0.200000003];

  return v3;
}

- (UIColor)photoEditingToolbarDarkGradientEndColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  return v3;
}

- (UIColor)photoEditingToolbarDarkGradientStartColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.600000024];

  return v3;
}

- (UIColor)photoEditingToolbarUltralightGradientEndColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  return v3;
}

- (UIColor)photoEditingToolbarUltralightGradientStartColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.200000003];

  return v3;
}

- (UIColor)photoEditingToolbarLightGradientEndColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.0];

  return v3;
}

- (UIColor)photoEditingToolbarLightGradientStartColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.400000006];

  return v3;
}

- (id)photoEditingDepthBadgeDisabledTextColor
{
  v2 = [MEMORY[0x1E69DC888] labelColor];
  v3 = [v2 colorWithAlphaComponent:0.5];

  return v3;
}

- (id)photoEditingDepthBadgeEnabledTextColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.600000024];

  return v3;
}

- (id)photoEditingDepthBadgeDisabledColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.5];

  return v3;
}

- (UIColor)photoEditingAdjustmentsBarDisabledColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.800000012];

  return v3;
}

- (UIColor)photoEditingAdjustmentsBarBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.899999976];

  return v3;
}

- (UIColor)photoEditingSolidBackgroundViewColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.8];

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
  v3 = [v2 pu_fontWithMonospacedNumbers];

  return v3;
}

- (UIColor)playbackTimeLabelBackgroundColor
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  v3 = [v2 colorWithAlphaComponent:0.8];

  return v3;
}

- (void)configureCompactProgressIndicatorMessageLabel:(id)a3
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DB980];
  v5 = a3;
  v7 = [v3 systemFontOfSize:15.0 weight:v4];
  [v5 setFont:v7];
  [v5 _setTextColorFollowsTintColor:1];
  v6 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v5 setTintColor:v6];
}

- (void)configureProgressIndicatorMessageLabel:(id)a3
{
  v3 = MEMORY[0x1E69DB878];
  v4 = *MEMORY[0x1E69DDD80];
  v5 = a3;
  v6 = [v3 px_defaultFontForTextStyle:v4 withSymbolicTraits:2];
  [v5 setFont:v6];

  [v5 _setTextColorFollowsTintColor:1];
  v8 = [MEMORY[0x1E69DC888] labelColor];
  v7 = [v8 colorWithAlphaComponent:0.5];
  [v5 setTintColor:v7];
}

- (void)configureMapViewAnnotationCountLabel:(id)a3
{
  v3 = MEMORY[0x1E69DB878];
  v4 = a3;
  v5 = [v3 systemFontOfSize:16.0];
  [v4 setFont:v5];

  v6 = [MEMORY[0x1E69DC888] whiteColor];
  [v4 setTextColor:v6];

  [v4 setTextAlignment:1];
  v7 = [MEMORY[0x1E69DC888] clearColor];
  [v4 setBackgroundColor:v7];
}

- (void)configureBannerLabel:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 clearColor];
  [v4 setBackgroundColor:v5];

  v6 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD48]];
  [v4 setFont:v6];
}

- (void)configureBannerStackView:(id)a3
{
  v3 = a3;
  [v3 setStyle:2];
  [v3 setStackSize:{48.0, 48.0}];
  [v3 setStackOffset:{0.0, -1.0}];
  [v3 setStackPerspectiveInsets:{2.0, 2.0, 2.0, 2.0}];
  [v3 setStackPerspectiveOffset:{0.0, -4.0}];
}

- (void)configureAlbumListStackViewPhonePhotoDecoration:(id)a3
{
  v3 = MEMORY[0x1E69DC888];
  v4 = a3;
  v5 = [v3 whiteColor];
  [v4 setBorderColor:v5];

  PLPhysicalScreenScale();
  [v4 setBorderWidth:1.0 / v6];
  v7 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
  [v4 setForegroundColor:v7];
}

- (void)configureAlbumListSectionTitleLabel:(id)a3
{
  v3 = a3;
  [v3 setNumberOfLines:0];
  v4 = [MEMORY[0x1E69DC888] clearColor];
  [v3 setBackgroundColor:v4];
}

- (UIFont)albumListSectionTitleLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD40] addingSymbolicTraits:0x8000 options:0];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (void)configureAlbumListSubtitleLabel:(id)a3 asOpaque:(BOOL)a4
{
  v4 = a3;
  [v4 _setTextColorFollowsTintColor:1];
  v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v4 setTintColor:v5];
}

- (UIFont)albumListSubtitleLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD78] addingSymbolicTraits:0x8000 options:2];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (void)configureAlbumListTitleTextField:(id)a3 asOpaque:(BOOL)a4
{
  v7 = a3;
  v5 = [MEMORY[0x1E69DC888] labelColor];
  [v7 setTextColor:v5];

  if (a4)
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] clearColor];
  }
  v6 = ;
  [v7 setBackgroundColor:v6];

  [v7 setReturnKeyType:9];
}

- (void)configureAlbumListTitleLabel:(id)a3 asOpaque:(BOOL)a4
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 labelColor];
  [v5 setTextColor:v6];
}

- (UIFont)albumListTitleLabelFont
{
  v2 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD78] addingSymbolicTraits:0x8000 options:2];
  v3 = [MEMORY[0x1E69DB878] fontWithDescriptor:v2 size:0.0];

  return v3;
}

- (id)photoCollectionCloudQuotaBannerLinkTextColorHighlighted:(BOOL)a3
{
  if (a3)
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

- (id)photoCollectionCloudQuotaBannerTextColorHighlighted:(BOOL)a3
{
  if (a3)
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

- (id)photoCollectionCloudQuotaBannerBackgroundColorHighlighted:(BOOL)a3
{
  if (a3)
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
  v6 = [(PUFlatWhiteInterfaceTheme *)self photoCollectionViewBackgroundColor];
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v4, RenderingIntent, [v6 CGColor], 0);

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

- (UIOffset)topLevelNavigationBarButtonTitlePositionAdjustmentforBarMetrics:(int64_t)a3
{
  v3 = *MEMORY[0x1E69DE258];
  v4 = *(MEMORY[0x1E69DE258] + 8);
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (id)_fontDescriptorWithTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = MEMORY[0x1E69DDA98];
  v7 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  if (IsAccessibilityCategory)
  {
    v9 = [*v6 preferredContentSizeCategory];
    v10 = *MEMORY[0x1E69DDC38];
    if (([v10 isEqualToString:*MEMORY[0x1E69DDC90]] & 1) == 0 && UIContentSizeCategoryCompareToCategory(v9, v10) == NSOrderedDescending)
    {
      v11 = v10;

      v9 = v11;
    }

    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v9];
    v13 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v5 compatibleWithTraitCollection:v12];
    v14 = v13;
    if (v4)
    {
      v15 = [v13 fontDescriptorWithSymbolicTraits:{objc_msgSend(v13, "symbolicTraits") | v4}];

      v14 = v15;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v5 addingSymbolicTraits:v4 options:2];
  }

  return v14;
}

- (id)_themeImageWithBaseName:(id)a3
{
  v4 = a3;
  if (_themeImageWithBaseName__onceToken != -1)
  {
    dispatch_once(&_themeImageWithBaseName__onceToken, &__block_literal_global_26997);
  }

  v5 = [(PUFlatWhiteInterfaceTheme *)self themeImagePrefix];
  v6 = [v5 stringByAppendingString:v4];

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