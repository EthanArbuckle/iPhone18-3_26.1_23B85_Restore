@interface SearchUIHeroTitleCardSectionView
- (id)setupContentView;
- (void)updateWithRowModel:(id)model;
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
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  v14 = 3.0;
  if (isMacOS)
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

- (void)updateWithRowModel:(id)model
{
  v21.receiver = self;
  v21.super_class = SearchUIHeroTitleCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v21 updateWithRowModel:modelCopy];
  v5 = [(SearchUICardSectionView *)self section:v21.receiver];
  title = [v5 title];
  icons = [title icons];
  firstObject = [icons firstObject];

  titleImageView = [(SearchUIHeroTitleCardSectionView *)self titleImageView];
  [titleImageView updateWithImage:firstObject];

  titleImageView2 = [(SearchUIHeroTitleCardSectionView *)self titleImageView];
  [titleImageView2 setHidden:firstObject == 0];

  titleImageView3 = [(SearchUIHeroTitleCardSectionView *)self titleImageView];
  [titleImageView3 setCustomAlignmentRectInsets:{-2.0, 0.0, -8.0, 0.0}];

  if (firstObject)
  {
    title2 = 0;
  }

  else
  {
    title2 = [v5 title];
  }

  titleLabel = [(SearchUIHeroTitleCardSectionView *)self titleLabel];
  [titleLabel setSfText:title2];

  if (!firstObject)
  {
  }

  subtitle = [v5 subtitle];
  subtitleLabel = [(SearchUIHeroTitleCardSectionView *)self subtitleLabel];
  [subtitleLabel setSfText:subtitle];

  buttonItemStackView = [(SearchUIHeroTitleCardSectionView *)self buttonItemStackView];
  buttonItems = [v5 buttonItems];
  maxVisibleButtonItems = [v5 maxVisibleButtonItems];
  if (maxVisibleButtonItems)
  {
    v19 = maxVisibleButtonItems;
  }

  else
  {
    v19 = 2;
  }

  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  [buttonItemStackView updateWithButtonItems:buttonItems maxButtonItems:v19 buttonItemViewType:1 rowModel:modelCopy feedbackDelegate:feedbackDelegate];
}

@end