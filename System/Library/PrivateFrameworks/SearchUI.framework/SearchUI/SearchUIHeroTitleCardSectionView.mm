@interface SearchUIHeroTitleCardSectionView
- (id)setupContentView;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIHeroTitleCardSectionView

- (id)setupContentView
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = +[(TLKLabel *)SearchUILabel];
  v4 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDDC0] isShort:0 isBold:1 isMacStyle:{objc_msgSend(MEMORY[0x1E69D9240], "isMacOS")}];
  [v3 setFont:v4];

  [v3 setAutoHideIfNoContent:1];
  [(SearchUIHeroTitleCardSectionView *)self setTitleLabel:v3];
  v5 = objc_opt_new();
  [(SearchUIHeroTitleCardSectionView *)self setTitleImageView:v5];
  v6 = objc_opt_new();
  v27[0] = v3;
  v27[1] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  [v6 setArrangedSubviews:v7];

  [v6 setAlignment:1];
  v8 = +[(TLKLabel *)SearchUILabel];
  [v8 setAutoHideIfNoContent:1];
  if ([MEMORY[0x1E69D9240] isIpad])
  {
    v9 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD80] isShort:0 isBold:0];
    [v8 setFont:v9];
  }

  [(SearchUIHeroTitleCardSectionView *)self setSubtitleLabel:v8];
  v10 = objc_opt_new();
  [v10 setShouldReverseButtonOrder:1];
  [(SearchUIHeroTitleCardSectionView *)self setButtonItemStackView:v10];
  v11 = objc_opt_new();
  [v11 setAxis:1];
  v26[0] = v6;
  v26[1] = v8;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  [v11 setArrangedSubviews:v12];

  [v11 setAlignment:1];
  v13 = [MEMORY[0x1E69D9240] isMacOS];
  v14 = 3.0;
  if (v13)
  {
    v14 = 2.0;
  }

  [v11 setSpacing:v14];
  [MEMORY[0x1E69D9248] defaultLayoutMargins];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = objc_alloc(MEMORY[0x1E69D9200]);
  v25[0] = v11;
  v25[1] = v10;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v23 = [v21 initWithArrangedSubviews:v22];

  [v23 setAlignment:3];
  [v23 setFlipsToVerticalAxisForAccessibilityContentSizes:1];
  [v23 setSpacing:8.0];
  [v23 setLayoutMarginsRelativeArrangement:1];
  [v23 setLayoutMargins:{v16, v18, 12.0, v20}];

  return v23;
}

- (void)updateWithRowModel:(id)a3
{
  v21.receiver = self;
  v21.super_class = SearchUIHeroTitleCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v21 updateWithRowModel:v4];
  v5 = [(SearchUICardSectionView *)self section:v21.receiver];
  v6 = [v5 title];
  v7 = [v6 icons];
  v8 = [v7 firstObject];

  v9 = [(SearchUIHeroTitleCardSectionView *)self titleImageView];
  [v9 updateWithImage:v8];

  v10 = [(SearchUIHeroTitleCardSectionView *)self titleImageView];
  [v10 setHidden:v8 == 0];

  v11 = [(SearchUIHeroTitleCardSectionView *)self titleImageView];
  [v11 setCustomAlignmentRectInsets:{-2.0, 0.0, -8.0, 0.0}];

  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v5 title];
  }

  v13 = [(SearchUIHeroTitleCardSectionView *)self titleLabel];
  [v13 setSfText:v12];

  if (!v8)
  {
  }

  v14 = [v5 subtitle];
  v15 = [(SearchUIHeroTitleCardSectionView *)self subtitleLabel];
  [v15 setSfText:v14];

  v16 = [(SearchUIHeroTitleCardSectionView *)self buttonItemStackView];
  v17 = [v5 buttonItems];
  v18 = [v5 maxVisibleButtonItems];
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = 2;
  }

  v20 = [(SearchUICardSectionView *)self feedbackDelegate];
  [v16 updateWithButtonItems:v17 maxButtonItems:v19 buttonItemViewType:1 rowModel:v4 feedbackDelegate:v20];
}

@end