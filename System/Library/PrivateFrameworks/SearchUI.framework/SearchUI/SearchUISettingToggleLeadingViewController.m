@interface SearchUISettingToggleLeadingViewController
+ (BOOL)supportsRowModel:(id)a3;
- (CGSize)thumbnailSize;
- (double)symbolFontSize;
- (id)imageForRowModel:(id)a3 appearance:(id)a4;
- (id)setupView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUISettingToggleLeadingViewController

+ (BOOL)supportsRowModel:(id)a3
{
  v3 = a3;
  v4 = [SearchUIShortcutsUtilities commandForSettingTogglesFromRowModel:v3];
  v5 = [v3 cardSection];

  if (v4 && ([v5 thumbnail], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    v8 = [v5 thumbnail];
    v9 = [v4 biomeStreamIdentifier];
    if ([v9 length])
    {
      v10 = [v8 symbolName];
      v11 = v10 != 0;
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
  v3 = [(SearchUIThumbnailViewController *)&v8 setupView];
  v4 = [MEMORY[0x1E69AE158] staticMaterialViewWithRecipe:8];
  [(SearchUISettingToggleLeadingViewController *)self setBackgroundView:v4];

  v5 = [(SearchUISettingToggleLeadingViewController *)self backgroundView];
  [v3 insertSubview:v5 atIndex:0];

  v6 = [(SearchUISettingToggleLeadingViewController *)self backgroundView];
  [v6 setAutoresizingMask:18];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setProminence:0];
  }

  return v3;
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
  v5 = [(SearchUILeadingViewController *)self rowModel];
  if ([v5 useCompactVersionOfUI])
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

- (void)updateWithRowModel:(id)a3
{
  v19.receiver = self;
  v19.super_class = SearchUISettingToggleLeadingViewController;
  [(SearchUIThumbnailViewController *)&v19 updateWithRowModel:a3];
  v4 = [(SearchUILeadingViewController *)self view];
  [v4 maximumLayoutSize];
  v6 = v5;

  v7 = [(SearchUILeadingViewController *)self view];
  [v7 maximumLayoutSize];
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
  v12 = [(SearchUILeadingViewController *)self view];
  v13 = [v12 layer];
  [v13 setCornerRadius:v11];

  v14 = [(SearchUILeadingViewController *)self view];
  [v14 setClipsToBounds:1];

  v15 = [(SearchUILeadingViewController *)self view];
  [v15 _cornerRadius];
  v17 = v16;
  v18 = [(SearchUISettingToggleLeadingViewController *)self backgroundView];
  [v18 _setCornerRadius:v17];
}

- (id)imageForRowModel:(id)a3 appearance:(id)a4
{
  v5 = [a3 cardSection];
  v6 = [v5 thumbnail];
  v7 = [[SearchUISymbolImage alloc] initWithSFImage:v6];
  [(SearchUISettingToggleLeadingViewController *)self symbolFontSize];
  [(SearchUISymbolImage *)v7 setPreferredSymbolFontSize:?];
  v8 = [MEMORY[0x1E69DC888] clearColor];
  [(SearchUISymbolImage *)v7 setCustomBackgroundColor:v8];

  v9 = [MEMORY[0x1E69DC888] systemWhiteColor];
  [(SearchUISymbolImage *)v7 setCustomForegroundColor:v9];

  [(SearchUISettingToggleLeadingViewController *)self thumbnailSize];
  [(SearchUISymbolImage *)v7 setSize:?];

  return v7;
}

@end