@interface SearchUILargeTitleDetailedRowCardSectionView
- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5;
- (UIEdgeInsets)layoutMargins;
- (id)setupContentView;
- (void)didSelectSubtitleItem;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUILargeTitleDetailedRowCardSectionView

- (id)setupContentView
{
  v25[2] = *MEMORY[0x1E69E9840];
  v3 = +[(TLKLabel *)SearchUILabel];
  v4 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDDC0]];
  [v3 setFont:v4];

  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    v5 = 0.0;
    v6 = 2.0;
    v7 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v5 = *(MEMORY[0x1E69DDCE0] + 8);
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    v8 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  [v3 setCustomAlignmentRectInsets:{v6, v5, v7, v8}];
  [v3 setAdjustsFontSizeToFitWidth:1];
  [v3 setMinimumScaleFactor:0.6];
  [(SearchUILargeTitleDetailedRowCardSectionView *)self setTitleLabel:v3];
  v9 = objc_opt_new();
  v10 = MEMORY[0x1E69D9138];
  v11 = [MEMORY[0x1E69D9240] isMacOS];
  v12 = MEMORY[0x1E69DDD00];
  if (!v11)
  {
    v12 = MEMORY[0x1E69DDD28];
  }

  v13 = [v10 cachedFontForTextStyle:*v12];
  [v9 setFont:v13];

  [v9 setProminence:2];
  v14 = [v9 titleLabel];
  [v14 setNumberOfLines:2];

  v15 = [v9 titleLabel];
  [v15 setLineBreakMode:4];

  [(SearchUILargeTitleDetailedRowCardSectionView *)self setSubtitleButton:v9];
  v16 = objc_alloc(MEMORY[0x1E698B730]);
  v25[0] = v3;
  v25[1] = v9;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v18 = [v16 initWithArrangedSubviews:v17];

  [v18 setAxis:1];
  [v18 setAlignment:1];
  [v18 setDistribution:0];
  [v18 setSpacing:4.0];
  [v18 setDelegate:self];
  v19 = objc_opt_new();
  [(SearchUILargeTitleDetailedRowCardSectionView *)self setButtonStackView:v19];
  v20 = objc_alloc(MEMORY[0x1E69D9200]);
  v24[0] = v18;
  v24[1] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v22 = [v20 initWithArrangedSubviews:v21];

  [v22 setAlignment:3];
  [v22 setDistribution:3];
  [v22 setFlipsToVerticalAxisForAccessibilityContentSizes:1];
  [v22 setSpacing:*MEMORY[0x1E69D9260]];

  return v22;
}

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SearchUILargeTitleDetailedRowCardSectionView;
  [(SearchUICardSectionView *)&v37 updateWithRowModel:v4];
  v5 = [v4 cardSection];
  v6 = [v5 title];
  v7 = [(SearchUILargeTitleDetailedRowCardSectionView *)self titleLabel];
  [v7 setSfText:v6];

  v8 = [v5 subtitleButtonItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = [v5 subtitleButtonItem];
    v11 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [v11 setHidden:0];

    v12 = [v10 title];
    v13 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [v13 setTitle:v12];

    v14 = [v10 command];
    v15 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [v15 setShowsMenuAsPrimaryAction:v14 == 0];

    v16 = [(SearchUICardSectionView *)self feedbackDelegate];
    v17 = [SearchUIUtilities environmentForDelegate:v16];

    v18 = [SearchUICommandHandler handlerForRowModel:v4 environment:v17];
    v19 = [v5 subtitleButtonItem];
    v20 = [v18 menuForRowModel:v4 buttonItem:v19 commandEnvironment:v17];
    v21 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [v21 setMenu:v20];

    v22 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [v22 addTarget:self action:sel_didSelectSubtitleItem];
  }

  else
  {
    v10 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    [v10 setHidden:1];
  }

  v23 = [v5 trailingButtonItems];
  if ([v23 count] != 1)
  {
    v31 = 0;
    goto LABEL_8;
  }

  v24 = [v5 trailingButtonItems];
  v25 = [v24 objectAtIndexedSubscript:0];
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();

  if (v26)
  {
    v27 = [v5 trailingButtonItems];
    v23 = [v27 objectAtIndexedSubscript:0];

    v28 = [v23 person];
    v29 = [v28 emailAddresses];
    v30 = [v29 firstObject];
    v31 = [v30 length] != 0;

LABEL_8:
    goto LABEL_10;
  }

  v31 = 0;
LABEL_10:
  v32 = [(SearchUILargeTitleDetailedRowCardSectionView *)self buttonStackView];
  [v32 setShouldReverseButtonOrder:v31];

  v33 = [(SearchUILargeTitleDetailedRowCardSectionView *)self buttonStackView];
  v34 = [v5 trailingButtonItems];
  if (v31)
  {
    v35 = 2;
  }

  else
  {
    v35 = 3;
  }

  v36 = [(SearchUICardSectionView *)self feedbackDelegate];
  [v33 updateWithButtonItems:v34 maxButtonItems:v35 buttonItemViewType:1 rowModel:v4 feedbackDelegate:v36];
}

- (void)didSelectSubtitleItem
{
  v3 = [(SearchUICardSectionView *)self rowModel];
  v14 = [v3 cardSection];

  v4 = [v14 subtitleButtonItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = v14;
  if (isKindOfClass)
  {
    v7 = [v14 subtitleButtonItem];
    v8 = [(SearchUICardSectionView *)self feedbackDelegate];
    v9 = [SearchUIUtilities environmentForDelegate:v8];

    v10 = [v7 command];

    if (v10)
    {
      v11 = [(SearchUICardSectionView *)self rowModel];
      v12 = [SearchUICommandHandler handlerForButton:v7 rowModel:v11 environment:v9];

      v13 = [v7 command];
      [v12 performCommand:v13 triggerEvent:3 environment:v9];
    }

    v6 = v14;
  }
}

- (UIEdgeInsets)layoutMargins
{
  if ([MEMORY[0x1E69D9240] isMacOS])
  {
    if (TLKSpotlightPlusUIEnabled())
    {
      v3 = [(SearchUICardSectionView *)self rowModel];
      v4 = [v3 fillsBackgroundWithContent];
      if (v4)
      {
        v5 = 16.0;
      }

      else
      {
        v5 = 22.0;
      }

      v6 = 12.0;
      if (v4)
      {
        v7 = 12.0;
      }

      else
      {
        v7 = 22.0;
      }
    }

    else
    {
      v5 = 16.0;
      v6 = 12.0;
      v7 = 12.0;
    }

    v8 = 12.0;
  }

  else
  {
    v7 = 18.0;
    v6 = 16.0;
    v8 = 18.0;
    v5 = 18.0;
  }

  v9 = v6;
  v10 = v7;
  v11 = v5;
  result.right = v11;
  result.bottom = v8;
  result.left = v10;
  result.top = v9;
  return result;
}

- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a5;
  v9 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];

  if (v9 == v8)
  {
    v12 = [(SearchUILargeTitleDetailedRowCardSectionView *)self subtitleButton];
    v13 = [v12 titleLabel];
    [v13 effectiveLayoutSizeFittingSize:{width, height}];
    v10 = v14;
    v11 = v15;
  }

  else
  {
    v10 = *MEMORY[0x1E698B708];
    v11 = *(MEMORY[0x1E698B708] + 8);
  }

  v16 = v10;
  v17 = v11;
  result.height = v17;
  result.width = v16;
  return result;
}

@end