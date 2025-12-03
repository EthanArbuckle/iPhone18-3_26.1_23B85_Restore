@interface SearchUISettingToggleLeadingViewController
+ (BOOL)supportsRowModel:(id)model;
- (CGSize)thumbnailSize;
- (double)symbolFontSize;
- (id)imageForRowModel:(id)model appearance:(id)appearance;
- (id)setupView;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUISettingToggleLeadingViewController

+ (BOOL)supportsRowModel:(id)model
{
  modelCopy = model;
  v4 = [SearchUIShortcutsUtilities commandForSettingTogglesFromRowModel:modelCopy];
  cardSection = [modelCopy cardSection];

  if (v4 && ([cardSection thumbnail], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    thumbnail = [cardSection thumbnail];
    biomeStreamIdentifier = [v4 biomeStreamIdentifier];
    if ([biomeStreamIdentifier length])
    {
      symbolName = [thumbnail symbolName];
      v11 = symbolName != 0;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)setupView
{
  v8.receiver = self;
  v8.super_class = SearchUISettingToggleLeadingViewController;
  setupView = [(SearchUIThumbnailViewController *)&v8 setupView];
  v4 = [MEMORY[0x1E69AE158] staticMaterialViewWithRecipe:8];
  [(SearchUISettingToggleLeadingViewController *)self setBackgroundView:v4];

  backgroundView = [(SearchUISettingToggleLeadingViewController *)self backgroundView];
  [setupView insertSubview:backgroundView atIndex:0];

  backgroundView2 = [(SearchUISettingToggleLeadingViewController *)self backgroundView];
  [backgroundView2 setAutoresizingMask:18];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [setupView setProminence:0];
  }

  return setupView;
}

- (double)symbolFontSize
{
  [(SearchUISettingToggleLeadingViewController *)self thumbnailSize];
  if (v2 >= v3)
  {
    v2 = v3;
  }

  return v2 * 0.415;
}

- (CGSize)thumbnailSize
{
  [MEMORY[0x1E69D91A8] maxThumbnailSizeIsCompactWidth:{-[SearchUILeadingViewController usesCompactWidth](self, "usesCompactWidth")}];
  v4 = v3;
  rowModel = [(SearchUILeadingViewController *)self rowModel];
  if ([rowModel useCompactVersionOfUI])
  {
    +[SearchUISuggestionImageUtilities maximumSize];
    v4 = v6;
    v8 = v7;
  }

  else
  {
    v8 = v4;
  }

  v9 = v4;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)updateWithRowModel:(id)model
{
  v19.receiver = self;
  v19.super_class = SearchUISettingToggleLeadingViewController;
  [(SearchUIThumbnailViewController *)&v19 updateWithRowModel:model];
  view = [(SearchUILeadingViewController *)self view];
  [view maximumLayoutSize];
  v6 = v5;

  view2 = [(SearchUILeadingViewController *)self view];
  [view2 maximumLayoutSize];
  v9 = v8;

  if (v6 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 * 0.5;
  view3 = [(SearchUILeadingViewController *)self view];
  layer = [view3 layer];
  [layer setCornerRadius:v11];

  view4 = [(SearchUILeadingViewController *)self view];
  [view4 setClipsToBounds:1];

  view5 = [(SearchUILeadingViewController *)self view];
  [view5 _cornerRadius];
  v17 = v16;
  backgroundView = [(SearchUISettingToggleLeadingViewController *)self backgroundView];
  [backgroundView _setCornerRadius:v17];
}

- (id)imageForRowModel:(id)model appearance:(id)appearance
{
  cardSection = [model cardSection];
  thumbnail = [cardSection thumbnail];
  v7 = [[SearchUISymbolImage alloc] initWithSFImage:thumbnail];
  [(SearchUISettingToggleLeadingViewController *)self symbolFontSize];
  [(SearchUISymbolImage *)v7 setPreferredSymbolFontSize:?];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(SearchUISymbolImage *)v7 setCustomBackgroundColor:clearColor];

  systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
  [(SearchUISymbolImage *)v7 setCustomForegroundColor:systemWhiteColor];

  [(SearchUISettingToggleLeadingViewController *)self thumbnailSize];
  [(SearchUISymbolImage *)v7 setSize:?];

  return v7;
}

@end