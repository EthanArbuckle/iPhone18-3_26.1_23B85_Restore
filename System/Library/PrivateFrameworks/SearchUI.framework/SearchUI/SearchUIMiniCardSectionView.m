@interface SearchUIMiniCardSectionView
+ (id)dragTitleForCardSection:(id)a3;
- (id)setupContentView;
- (void)updateImplicitVisibilityForWatchNowCardSection:(id)a3 animated:(BOOL)a4;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIMiniCardSectionView

- (id)setupContentView
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(SearchUIMiniCardSectionView *)self setImageView:v3];

  v4 = [(SearchUIMiniCardSectionView *)self imageView];
  LODWORD(v5) = 1148846080;
  [v4 setLayoutSize:45.0 withContentPriority:{45.0, v5}];

  v6 = [(SearchUIMiniCardSectionView *)self imageView];
  [SearchUIAutoLayout requireIntrinsicSizeForView:v6];

  v7 = objc_opt_new();
  [(SearchUIMiniCardSectionView *)self setTitleLabel:v7];

  v8 = *MEMORY[0x1E69DDD80];
  v9 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD80] isShort:0 isBold:0];
  v10 = [(SearchUIMiniCardSectionView *)self titleLabel];
  [v10 setFont:v9];

  v11 = [(SearchUIMiniCardSectionView *)self titleLabel];
  [v11 customAlignmentRectInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [(SearchUIMiniCardSectionView *)self titleLabel];
  [v18 setCustomAlignmentRectInsets:{-1.0, v13, v15, v17}];

  v19 = +[(TLKLabel *)SearchUILabel];
  [(SearchUIMiniCardSectionView *)self setSubtitleLabel:v19];

  v20 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:v8 isShort:0 isBold:0];
  v21 = [(SearchUIMiniCardSectionView *)self subtitleLabel];
  [v21 setFont:v20];

  v22 = objc_alloc(MEMORY[0x1E698B730]);
  v23 = [(SearchUIMiniCardSectionView *)self titleLabel];
  v33[0] = v23;
  v24 = [(SearchUIMiniCardSectionView *)self subtitleLabel];
  v33[1] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v26 = [v22 initWithArrangedSubviews:v25];

  [v26 setAxis:1];
  [v26 setSpacing:2.0];
  v27 = objc_alloc(MEMORY[0x1E698B730]);
  v28 = [(SearchUIMiniCardSectionView *)self imageView];
  v32[0] = v28;
  v32[1] = v26;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v30 = [v27 initWithArrangedSubviews:v29];

  [v30 setAlignment:1];
  [v30 setSpacing:10.0];
  [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v30];

  return v30;
}

- (void)updateWithRowModel:(id)a3
{
  v13.receiver = self;
  v13.super_class = SearchUIMiniCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v13 updateWithRowModel:v4];
  v5 = [v4 cardSection];

  v6 = [v5 title];
  [v6 setMaxLines:1];

  v7 = [v5 title];
  v8 = [(SearchUIMiniCardSectionView *)self titleLabel];
  [v8 setSfText:v7];

  v9 = [v5 subtitle];
  v10 = [(SearchUIMiniCardSectionView *)self subtitleLabel];
  [v10 setSfText:v9];

  v11 = [(SearchUIMiniCardSectionView *)self imageView];
  v12 = [v5 image];
  [v11 updateWithImage:v12];
}

- (void)updateImplicitVisibilityForWatchNowCardSection:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = 0.0;
  [(SearchUIMiniCardSectionView *)self setAlpha:0.0];
  v8 = [v6 isPlaceholder];

  if (!v8)
  {
    v7 = 1.0;
  }

  [(SearchUIMiniCardSectionView *)self alpha];
  if (v7 != v9)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __87__SearchUIMiniCardSectionView_updateImplicitVisibilityForWatchNowCardSection_animated___block_invoke;
    v10[3] = &unk_1E85B3438;
    v10[4] = self;
    *&v10[5] = v7;
    [SearchUIUtilities performAnimatableChanges:v10 animated:v4];
  }
}

+ (id)dragTitleForCardSection:(id)a3
{
  v3 = [a3 title];
  v4 = [SearchUIUtilities stringForSFRichText:v3];

  return v4;
}

@end