@interface SearchUIThumbnailViewController
+ (BOOL)rowModelHasSuggestionThumbnail:(id)a3;
+ (BOOL)supportsRowModel:(id)a3;
+ (id)compactSymbolFont;
+ (int64_t)compactSymbolScale;
+ (void)applyImageConstraintsToImageView:(id)a3 isCompact:(BOOL)a4 preventThumbnailScaling:(BOOL)a5 usesCompactWidth:(BOOL)a6;
- (BOOL)shouldVerticallyCenter;
- (id)imageForRowModel:(id)a3 appearance:(id)a4;
- (id)setupView;
- (void)setUsesCompactWidth:(BOOL)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIThumbnailViewController

+ (id)compactSymbolFont
{
  v2 = [MEMORY[0x1E69D9240] isMacOS];
  v3 = MEMORY[0x1E69D9138];
  if (v2)
  {
    v4 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDDC0] isShort:0 isBold:1 isMacStyle:1];
  }

  else
  {
    v5 = TLKBiggerSuggestionsLayoutEnabled();
    v6 = MEMORY[0x1E69DDDB8];
    if (!v5)
    {
      v6 = MEMORY[0x1E69DDDC8];
    }

    v4 = [v3 cachedFontForTextStyle:*v6];
  }

  return v4;
}

+ (int64_t)compactSymbolScale
{
  if ([MEMORY[0x1E69D91A8] isSuperLargeAccessibilitySize] & 1) != 0 || (TLKBiggerSuggestionsLayoutEnabled())
  {
    return 1;
  }

  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    return 1;
  }

  return 3;
}

- (id)setupView
{
  v2 = objc_opt_new();
  [v2 setIgnoreImageAlignmentRectInsets:1];

  return v2;
}

- (BOOL)shouldVerticallyCenter
{
  [SearchUIAppIconImage sizeForVariant:2];
  v4 = v3;
  v6 = v5;
  v7 = [(SearchUILeadingViewController *)self view];
  [v7 intrinsicContentSize];
  v9 = v8;
  v11 = v10;

  if (v9 <= v4 && v11 <= v6)
  {
    return 1;
  }

  v13 = [(SearchUILeadingViewController *)self rowModel];
  v14 = [v13 useCompactVersionOfUI];

  return v14;
}

+ (BOOL)supportsRowModel:(id)a3
{
  v3 = a3;
  v4 = [v3 leadingImage];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 fallbackImage];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v5 = [SearchUIThumbnailViewController rowModelHasSuggestionThumbnail:v3];
    }
  }

  return v5;
}

+ (BOOL)rowModelHasSuggestionThumbnail:(id)a3
{
  v3 = [a3 cardSection];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (void)applyImageConstraintsToImageView:(id)a3 isCompact:(BOOL)a4 preventThumbnailScaling:(BOOL)a5 usesCompactWidth:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = v9;
  if (v8)
  {
    +[SearchUISuggestionImageUtilities maximumSize];
    [v10 setMaximumLayoutSize:?];
    +[SearchUISuggestionImageUtilities maximumSize];
    [v10 setMinimumLayoutSize:?];
  }

  else if (v7)
  {
    [MEMORY[0x1E69D91A8] maxThumbnailSizeIsCompactWidth:v6];
    [v10 setMinimumLayoutSize:?];
    [v10 setMaximumLayoutSize:{*MEMORY[0x1E698B700], *(MEMORY[0x1E698B700] + 8)}];
  }

  else
  {
    [MEMORY[0x1E69D91A8] applyRowBoundedSizingToImageView:v9 isCompactWidth:v6];
  }
}

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SearchUIThumbnailViewController;
  [(SearchUILeadingViewController *)&v14 updateWithRowModel:v4];
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    [MEMORY[0x1E69D9138] cachedFontForMacTextStyle:*MEMORY[0x1E69DDDC0]];
  }

  else
  {
    [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD58]];
  }
  v5 = ;
  v6 = [v4 useCompactVersionOfUI];
  v7 = v5;
  if (v6)
  {
    v7 = [objc_opt_class() compactSymbolFont];
  }

  v8 = [(SearchUILeadingViewController *)self view];
  [v8 setSymbolFont:v7];

  if (v6)
  {
  }

  if ([v4 useCompactVersionOfUI])
  {
    v9 = [objc_opt_class() compactSymbolScale];
  }

  else
  {
    v9 = 2;
  }

  v10 = [(SearchUILeadingViewController *)self view];
  [v10 setSymbolScale:v9];

  v11 = MEMORY[0x1E69D9108];
  v12 = [(SearchUILeadingViewController *)self view];
  v13 = [v11 bestAppearanceForView:v12];
  [(SearchUIThumbnailViewController *)self tlk_updateForAppearance:v13];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SearchUIThumbnailViewController;
  [(SearchUILeadingViewController *)&v12 tlk_updateForAppearance:v4];
  v5 = [(SearchUILeadingViewController *)self rowModel];
  v6 = [(SearchUILeadingViewController *)self view];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__SearchUIThumbnailViewController_tlk_updateForAppearance___block_invoke;
  v9[3] = &unk_1E85B26A8;
  v9[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 performBatchUpdates:v9];
}

void __59__SearchUIThumbnailViewController_tlk_updateForAppearance___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageForRowModel:*(a1 + 40) appearance:*(a1 + 48)];
  v3 = MEMORY[0x1E69D9108];
  v4 = [*(a1 + 32) view];
  [v3 disableAppearanceOverrideForView:v4];

  v5 = [*(a1 + 32) rowModel];
  v6 = [v5 backgroundColor];

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 backgroundColor])
    {
      v7 = [v2 copy];
      [v7 setBackgroundColor:0];
      [v7 setCornerRoundingStyle:0];
      [v7 setPrimaryColor:7];
      [v7 setSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];

      v2 = v7;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__3;
    v28 = __Block_byref_object_dispose__3;
    v29 = objc_opt_new();
    v8 = [*(a1 + 32) rowModel];
    v9 = [v8 backgroundColor];
    [v25[5] setSfColor:v9];

    [v25[5] setAppearance:*(a1 + 48)];
    objc_initWeak(&location, *(a1 + 32));
    v10 = v25[5];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__SearchUIThumbnailViewController_tlk_updateForAppearance___block_invoke_17;
    v21[3] = &unk_1E85B4048;
    v21[4] = &v24;
    objc_copyWeak(&v22, &location);
    [SearchUIBackgroundColorUtilities resolvedColoringForColorRequest:v10 completionHandler:v21];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
    _Block_object_dispose(&v24, 8);
  }

  if ([*(a1 + 40) useCompactVersionOfUI])
  {
    +[SearchUISuggestionImageUtilities maximumSize];
    v11 = [SearchUIAppIconImage bestVariantForSize:?];
  }

  else
  {
    v11 = 4;
  }

  v12 = [SearchUIImage imageWithSFImage:v2 variantForAppIcon:v11];
  v13 = [*(a1 + 32) view];
  v14 = [*(a1 + 40) fallbackImage];
  v15 = [*(a1 + 40) action];
  [v13 updateWithImage:v12 fallbackImage:v14 needsOverlayButton:{objc_msgSend(v15, "isOverlay")}];

  v16 = objc_opt_class();
  v17 = [*(a1 + 32) view];
  v18 = [*(a1 + 32) rowModel];
  v19 = [v18 useCompactVersionOfUI];
  v20 = [*(a1 + 32) rowModel];
  [v16 applyImageConstraintsToImageView:v17 isCompact:v19 preventThumbnailScaling:objc_msgSend(v20 usesCompactWidth:{"preventThumbnailImageScaling"), objc_msgSend(*(a1 + 32), "usesCompactWidth")}];
}

void __59__SearchUIThumbnailViewController_tlk_updateForAppearance___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 preferKeylineForShadowBasedViews])
  {
    v4 = [*(*(*(a1 + 32) + 8) + 40) sfColor];
    v5 = [v3 colorRequest];
    v6 = [v5 sfColor];
    v7 = [v4 isEqual:v6];

    if (v7)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __59__SearchUIThumbnailViewController_tlk_updateForAppearance___block_invoke_2;
      v8[3] = &unk_1E85B4020;
      v10 = *(a1 + 32);
      v9 = v3;
      objc_copyWeak(&v11, (a1 + 40));
      [SearchUIUtilities dispatchMainIfNecessary:v8];
      objc_destroyWeak(&v11);
    }
  }
}

void __59__SearchUIThumbnailViewController_tlk_updateForAppearance___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) sfColor];
  v3 = [*(a1 + 32) colorRequest];
  v4 = [v3 sfColor];
  v5 = [v2 isEqual:v4];

  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v6 = [MEMORY[0x1E69D9108] appearanceWithStyle:1];
    v7 = [WeakRetained view];
    [v6 overrideAppearanceForView:v7];
  }
}

- (id)imageForRowModel:(id)a3 appearance:(id)a4
{
  v4 = a3;
  v5 = [v4 leadingImage];
  if (v5 || ![SearchUIThumbnailViewController rowModelHasSuggestionThumbnail:v4])
  {
    v7 = v5;
  }

  else
  {
    v6 = [v4 cardSection];
    v7 = [SearchUISuggestionImageUtilities imageForSuggestionCardSection:v6];
  }

  return v7;
}

- (void)setUsesCompactWidth:(BOOL)a3
{
  v3 = a3;
  if ([(SearchUILeadingViewController *)self usesCompactWidth]!= a3)
  {
    v10.receiver = self;
    v10.super_class = SearchUIThumbnailViewController;
    [(SearchUILeadingViewController *)&v10 setUsesCompactWidth:v3];
    v5 = objc_opt_class();
    v6 = [(SearchUILeadingViewController *)self view];
    v7 = [(SearchUILeadingViewController *)self rowModel];
    v8 = [v7 useCompactVersionOfUI];
    v9 = [(SearchUILeadingViewController *)self rowModel];
    [v5 applyImageConstraintsToImageView:v6 isCompact:v8 preventThumbnailScaling:objc_msgSend(v9 usesCompactWidth:{"preventThumbnailImageScaling"), -[SearchUILeadingViewController usesCompactWidth](self, "usesCompactWidth")}];
  }
}

@end