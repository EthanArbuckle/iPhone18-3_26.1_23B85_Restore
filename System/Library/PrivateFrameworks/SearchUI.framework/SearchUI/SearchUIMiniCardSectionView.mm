@interface SearchUIMiniCardSectionView
+ (id)dragTitleForCardSection:(id)section;
- (id)setupContentView;
- (void)updateImplicitVisibilityForWatchNowCardSection:(id)section animated:(BOOL)animated;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIMiniCardSectionView

- (id)setupContentView
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(SearchUIMiniCardSectionView *)self setImageView:v3];

  imageView = [(SearchUIMiniCardSectionView *)self imageView];
  LODWORD(v5) = 1148846080;
  [imageView setLayoutSize:45.0 withContentPriority:{45.0, v5}];

  imageView2 = [(SearchUIMiniCardSectionView *)self imageView];
  [SearchUIAutoLayout requireIntrinsicSizeForView:imageView2];

  v7 = objc_opt_new();
  [(SearchUIMiniCardSectionView *)self setTitleLabel:v7];

  v8 = *MEMORY[0x1E69DDD80];
  v9 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD80] isShort:0 isBold:0];
  titleLabel = [(SearchUIMiniCardSectionView *)self titleLabel];
  [titleLabel setFont:v9];

  titleLabel2 = [(SearchUIMiniCardSectionView *)self titleLabel];
  [titleLabel2 customAlignmentRectInsets];
  v13 = v12;
  v15 = v14;
  v17 = v16;

  titleLabel3 = [(SearchUIMiniCardSectionView *)self titleLabel];
  [titleLabel3 setCustomAlignmentRectInsets:{-1.0, v13, v15, v17}];

  v19 = +[(TLKLabel *)SearchUILabel];
  [(SearchUIMiniCardSectionView *)self setSubtitleLabel:v19];

  v20 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:v8 isShort:0 isBold:0];
  subtitleLabel = [(SearchUIMiniCardSectionView *)self subtitleLabel];
  [subtitleLabel setFont:v20];

  v22 = objc_alloc(MEMORY[0x1E698B730]);
  titleLabel4 = [(SearchUIMiniCardSectionView *)self titleLabel];
  v33[0] = titleLabel4;
  subtitleLabel2 = [(SearchUIMiniCardSectionView *)self subtitleLabel];
  v33[1] = subtitleLabel2;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v26 = [v22 initWithArrangedSubviews:v25];

  [v26 setAxis:1];
  [v26 setSpacing:2.0];
  v27 = objc_alloc(MEMORY[0x1E698B730]);
  imageView3 = [(SearchUIMiniCardSectionView *)self imageView];
  v32[0] = imageView3;
  v32[1] = v26;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v30 = [v27 initWithArrangedSubviews:v29];

  [v30 setAlignment:1];
  [v30 setSpacing:10.0];
  [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v30];

  return v30;
}

- (void)updateWithRowModel:(id)model
{
  v13.receiver = self;
  v13.super_class = SearchUIMiniCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v13 updateWithRowModel:modelCopy];
  cardSection = [modelCopy cardSection];

  title = [cardSection title];
  [title setMaxLines:1];

  title2 = [cardSection title];
  titleLabel = [(SearchUIMiniCardSectionView *)self titleLabel];
  [titleLabel setSfText:title2];

  subtitle = [cardSection subtitle];
  subtitleLabel = [(SearchUIMiniCardSectionView *)self subtitleLabel];
  [subtitleLabel setSfText:subtitle];

  imageView = [(SearchUIMiniCardSectionView *)self imageView];
  image = [cardSection image];
  [imageView updateWithImage:image];
}

- (void)updateImplicitVisibilityForWatchNowCardSection:(id)section animated:(BOOL)animated
{
  animatedCopy = animated;
  sectionCopy = section;
  v7 = 0.0;
  [(SearchUIMiniCardSectionView *)self setAlpha:0.0];
  isPlaceholder = [sectionCopy isPlaceholder];

  if (!isPlaceholder)
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
    [SearchUIUtilities performAnimatableChanges:v10 animated:animatedCopy];
  }
}

+ (id)dragTitleForCardSection:(id)section
{
  title = [section title];
  v4 = [SearchUIUtilities stringForSFRichText:title];

  return v4;
}

@end