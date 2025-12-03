@interface SearchUIHeroCardSectionView
+ (BOOL)fillsBackgroundWithContentForRowModel:(id)model;
+ (BOOL)showsBackgroundImageViewForRowModel:(id)model;
- (BOOL)hasBackground;
- (BOOL)showBackgroundImageView;
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (SearchUIHeroCardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate;
- (id)highlightReferenceView;
- (id)setupContentView;
- (void)buttonPressed:(id)pressed;
- (void)didUpdateWithImage:(id)image;
- (void)showGradientAnimated:(BOOL)animated;
- (void)updateButtonsForCardSection:(id)section;
- (void)updatePunchoutIconForRowModel:(id)model;
- (void)updatePunchoutImageWithBundleIdentifier:(id)identifier;
- (void)updateWithButtonViews:(id)views visible:(BOOL)visible addBackground:(BOOL)background animate:(BOOL)animate;
- (void)updateWithPunchoutImage:(id)image;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIHeroCardSectionView

+ (BOOL)fillsBackgroundWithContentForRowModel:(id)model
{
  modelCopy = model;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___SearchUIHeroCardSectionView;
  if (objc_msgSendSuper2(&v7, sel_fillsBackgroundWithContentForRowModel_, modelCopy))
  {
    v5 = 1;
  }

  else
  {
    v5 = [self showsBackgroundImageViewForRowModel:modelCopy];
  }

  return v5;
}

+ (BOOL)showsBackgroundImageViewForRowModel:(id)model
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  image = [cardSection image];
  if (image && [cardSection imageAlign] == 4)
  {
    backgroundColor = [modelCopy backgroundColor];
    v7 = backgroundColor == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SearchUIHeroCardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = SearchUIHeroCardSectionView;
  v4 = [(SearchUICardSectionView *)&v7 initWithRowModel:model feedbackDelegate:delegate];
  if (v4)
  {
    if (initWithRowModel_feedbackDelegate__onceToken != -1)
    {
      [SearchUIHeroCardSectionView initWithRowModel:feedbackDelegate:];
    }

    layer = [(SearchUIHeroCardSectionView *)v4 layer];
    [layer setShadowPathIsBounds:1];
  }

  return v4;
}

- (id)setupContentView
{
  v52[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 setDelegate:self];
  v48 = objc_opt_new();
  [v48 setAlignment:3];
  [v48 setDelegate:self];
  [v48 setDisableCornerRounding:1];
  [(SearchUIHeroCardSectionView *)self setBackgroundImageView:v48];
  [v3 addArrangedSubview:v48];
  [v3 setAlignment:0 forView:v48 inAxis:0];
  [v3 setAlignment:0 forView:v48 inAxis:1];
  v47 = objc_opt_new();
  [v47 setProminence:0];
  v4 = [MEMORY[0x1E69DB878] systemFontOfSize:14.0];
  [v47 setSymbolFont:v4];

  [v47 setSymbolWeight:7];
  [(SearchUIHeroCardSectionView *)self setPunchoutIndicatorImageView:v47];
  v5 = objc_opt_new();
  layer = [v5 layer];
  [layer setMasksToBounds:1];

  [MEMORY[0x1E69D9240] appIconCornerRadiusRatio];
  v8 = v7 * 24.0;
  layer2 = [v5 layer];
  [layer2 setCornerRadius:v8];

  v10 = *MEMORY[0x1E69796E8];
  layer3 = [v5 layer];
  [layer3 setCornerCurve:v10];

  LODWORD(v12) = 1148846080;
  [v5 setLayoutSize:24.0 withContentPriority:{24.0, v12}];
  v46 = v3;
  [v3 addArrangedSubview:v5];
  isSiri = [MEMORY[0x1E69D9240] isSiri];
  if (isSiri)
  {
    v14 = 4;
  }

  else
  {
    v14 = 1;
  }

  if (isSiri)
  {
    v15 = 1;
  }

  else
  {
    v15 = 4;
  }

  [v3 setAlignment:v15 forView:v5 inAxis:0];
  [v3 setAlignment:v14 forView:v5 inAxis:1];
  v16 = objc_alloc(MEMORY[0x1E698B718]);
  punchoutIndicatorImageView = [(SearchUIHeroCardSectionView *)self punchoutIndicatorImageView];
  v52[0] = punchoutIndicatorImageView;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  v19 = [v16 initWithArrangedSubviews:v18];

  [v19 setHorizontalAlignment:3];
  v45 = v19;
  [v19 setVerticalAlignment:3];
  contentView = [v5 contentView];
  [contentView addSubview:v19];

  [SearchUIAutoLayout fillContainerWithView:v19];
  [(SearchUIHeroCardSectionView *)self setPunchoutIndicatorBackgroundBlurView:v5];
  v21 = objc_opt_new();
  LODWORD(v22) = 1148846080;
  [v21 setContentHuggingPriority:0 forAxis:v22];
  LODWORD(v23) = 1148846080;
  [v21 setContentCompressionResistancePriority:0 forAxis:v23];
  [(SearchUIHeroCardSectionView *)self setThumbnailImageView:v21];
  v44 = objc_opt_new();
  [(SearchUIHeroCardSectionView *)self setTitleLabel:?];
  v24 = objc_opt_new();
  v25 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD00] isShort:0 isBold:0];
  [v24 setFont:v25];

  [v24 setProminence:1];
  v43 = v24;
  [(SearchUIHeroCardSectionView *)self setSubtitleLabel:v24];
  v26 = objc_opt_new();
  [(SearchUIHeroCardSectionView *)self setButtonStackView:v26];

  buttonStackView = [(SearchUIHeroCardSectionView *)self buttonStackView];
  [buttonStackView setDistribution:1];

  buttonStackView2 = [(SearchUIHeroCardSectionView *)self buttonStackView];
  [buttonStackView2 setSpacing:8.0];

  buttonStackView3 = [(SearchUIHeroCardSectionView *)self buttonStackView];
  [SearchUIAutoLayout requireIntrinsicSizeForView:buttonStackView3];

  v30 = objc_alloc(MEMORY[0x1E698B730]);
  v51[0] = v44;
  v51[1] = v24;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v32 = [v30 initWithArrangedSubviews:v31];

  [v32 setAxis:1];
  [v32 setSpacing:2.0];
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];
  [(SearchUIHeroCardSectionView *)self setLabelsStackView:v32];
  v50[0] = v21;
  v50[1] = v32;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v35 = objc_opt_new();
  [v35 setShouldReverseButtonOrder:1];
  [(SearchUIHeroCardSectionView *)self setButtonItemStackView:v35];
  v36 = [v34 arrayByAddingObject:v35];

  v37 = [objc_alloc(MEMORY[0x1E698B730]) initWithArrangedSubviews:v36];
  [v37 setAlignment:1 forView:v21 inAxis:1];
  [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v37];
  [(SearchUIHeroCardSectionView *)self setThumbnailAndLabelsStackView:v37];
  v38 = objc_alloc(MEMORY[0x1E698B730]);
  v49[0] = v37;
  buttonStackView4 = [(SearchUIHeroCardSectionView *)self buttonStackView];
  v49[1] = buttonStackView4;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v41 = [v38 initWithArrangedSubviews:v40];

  [v41 setLayoutMarginsRelativeArrangement:1];
  [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v41];
  [(SearchUIHeroCardSectionView *)self setContainerStackView:v41];
  [v46 addArrangedSubview:v41];

  return v46;
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  width = size.width;
  subviewCopy = subview;
  contentView = [(SearchUICardSectionView *)self contentView];

  if (contentView != subviewCopy)
  {

LABEL_5:
    width = *MEMORY[0x1E698B708];
    v10 = *(MEMORY[0x1E698B708] + 8);
    goto LABEL_6;
  }

  hasBackground = [(SearchUIHeroCardSectionView *)self hasBackground];

  if (!hasBackground)
  {
    goto LABEL_5;
  }

  v10 = width * 10.0 * 0.0625;
LABEL_6:
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  v83.receiver = self;
  v83.super_class = SearchUIHeroCardSectionView;
  [(SearchUICardSectionView *)&v83 updateWithRowModel:modelCopy];
  [MEMORY[0x1E69D9248] enableShadow:0 forView:self];
  cardSection = [modelCopy cardSection];
  image = [cardSection image];
  hasBackground = [(SearchUIHeroCardSectionView *)self hasBackground];
  if (hasBackground)
  {
    title = [cardSection title];
    [title setMaxLines:1];

    subtitle = [cardSection subtitle];
    [subtitle setMaxLines:1];
  }

  v9 = MEMORY[0x1E69D9138];
  if (image && [cardSection imageAlign] != 1)
  {
    v10 = MEMORY[0x1E69DDDC0];
  }

  else
  {
    v10 = MEMORY[0x1E69DDDB8];
  }

  v11 = [v9 cachedFontForTextStyle:*v10 isShort:0 isBold:1];
  titleLabel = [(SearchUIHeroCardSectionView *)self titleLabel];
  [titleLabel setFont:v11];

  title2 = [cardSection title];
  titleLabel2 = [(SearchUIHeroCardSectionView *)self titleLabel];
  [titleLabel2 setSfText:title2];

  titleLabel3 = [(SearchUIHeroCardSectionView *)self titleLabel];
  richText = [titleLabel3 richText];
  hasContent = [richText hasContent];
  titleLabel4 = [(SearchUIHeroCardSectionView *)self titleLabel];
  [titleLabel4 setHidden:hasContent ^ 1u];

  subtitle2 = [cardSection subtitle];
  subtitleLabel = [(SearchUIHeroCardSectionView *)self subtitleLabel];
  [subtitleLabel setSfText:subtitle2];

  subtitleLabel2 = [(SearchUIHeroCardSectionView *)self subtitleLabel];
  richText2 = [subtitleLabel2 richText];
  hasContent2 = [richText2 hasContent];
  subtitleLabel3 = [(SearchUIHeroCardSectionView *)self subtitleLabel];
  [subtitleLabel3 setHidden:hasContent2 ^ 1];

  titleLabel5 = [(SearchUIHeroCardSectionView *)self titleLabel];
  isHidden = [titleLabel5 isHidden];
  if (isHidden)
  {
    hasContent2 = [(SearchUIHeroCardSectionView *)self subtitleLabel];
    isHidden2 = [hasContent2 isHidden];
  }

  else
  {
    isHidden2 = 0;
  }

  labelsStackView = [(SearchUIHeroCardSectionView *)self labelsStackView];
  [labelsStackView setHidden:isHidden2];

  if (isHidden)
  {
  }

  v29 = MEMORY[0x1E69D9108];
  containerStackView = [(SearchUIHeroCardSectionView *)self containerStackView];
  [v29 disableAppearanceOverrideForView:containerStackView];

  v31 = MEMORY[0x1E69D9108];
  punchoutIndicatorImageView = [(SearchUIHeroCardSectionView *)self punchoutIndicatorImageView];
  [v31 disableAppearanceOverrideForView:punchoutIndicatorImageView];

  v33 = MEMORY[0x1E69D9108];
  punchoutIndicatorBackgroundBlurView = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  [v33 disableAppearanceOverrideForView:punchoutIndicatorBackgroundBlurView];

  imageAlign = [cardSection imageAlign];
  showBackgroundImageView = [(SearchUIHeroCardSectionView *)self showBackgroundImageView];
  v37 = showBackgroundImageView;
  if (image)
  {
    v38 = imageAlign == 0;
  }

  else
  {
    v38 = 0;
  }

  v39 = !v38;
  v40 = !showBackgroundImageView;
  v41 = imageAlign == 1 || imageAlign == 4 && !showBackgroundImageView;
  if (image)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  if (showBackgroundImageView)
  {
    backgroundImageView = [(SearchUIHeroCardSectionView *)self backgroundImageView];
    [backgroundImageView updateWithImage:image];

    backgroundImageView2 = [(SearchUIHeroCardSectionView *)self backgroundImageView];
    imageView = [backgroundImageView2 imageView];
    image2 = [imageView image];

    if (image2)
    {
      [(SearchUIHeroCardSectionView *)self showGradientAnimated:0];
    }
  }

  contentView = [(SearchUICardSectionView *)self contentView];
  layer = [contentView layer];
  [layer setMasksToBounds:hasBackground];

  backgroundImageView3 = [(SearchUIHeroCardSectionView *)self backgroundImageView];
  [backgroundImageView3 setHidden:v40];

  if (v42 & 1 | ((v39 & 1) == 0))
  {
    thumbnailImageView = [(SearchUIHeroCardSectionView *)self thumbnailImageView];
    [thumbnailImageView updateWithImage:image];
  }

  thumbnailImageView2 = [(SearchUIHeroCardSectionView *)self thumbnailImageView];
  [thumbnailImageView2 setHidden:v39 & (v42 ^ 1)];

  backgroundColor = [v81 backgroundColor];

  if (backgroundColor)
  {
    [(SearchUIHeroCardSectionView *)self showGradientAnimated:0];
  }

  [(SearchUIHeroCardSectionView *)self updateButtonsForCardSection:cardSection];
  [(SearchUIHeroCardSectionView *)self updatePunchoutIconForRowModel:v81];
  thumbnailAndLabelsStackView = [(SearchUIHeroCardSectionView *)self thumbnailAndLabelsStackView];
  [thumbnailAndLabelsStackView setAxis:v42];

  if (v42)
  {
    v54 = 0;
  }

  else
  {
    v54 = 3;
  }

  thumbnailAndLabelsStackView2 = [(SearchUIHeroCardSectionView *)self thumbnailAndLabelsStackView];
  [thumbnailAndLabelsStackView2 setAlignment:v54];

  if (v42 & !hasBackground)
  {
    v56 = 1;
  }

  else
  {
    v56 = 4;
  }

  titleLabel6 = [(SearchUIHeroCardSectionView *)self titleLabel];
  [titleLabel6 setTextAlignment:v56];

  subtitleLabel4 = [(SearchUIHeroCardSectionView *)self subtitleLabel];
  [subtitleLabel4 setTextAlignment:v56];

  v59 = 4.0;
  if (hasBackground)
  {
    v59 = 16.0;
  }

  if (v39)
  {
    v60 = v59;
  }

  else
  {
    v60 = 12.0;
  }

  thumbnailAndLabelsStackView3 = [(SearchUIHeroCardSectionView *)self thumbnailAndLabelsStackView];
  [thumbnailAndLabelsStackView3 setSpacing:v60];

  contentView2 = [(SearchUICardSectionView *)self contentView];
  if (v37)
  {
    v63 = 4;
  }

  else
  {
    v63 = 3;
  }

  containerStackView2 = [(SearchUIHeroCardSectionView *)self containerStackView];
  [contentView2 setAlignment:v63 forView:containerStackView2 inAxis:1];

  rowModel = [(SearchUICardSectionView *)self rowModel];
  shouldFillAvailableSpace = [rowModel shouldFillAvailableSpace];

  v68 = *MEMORY[0x1E69DDCE0];
  v67 = *(MEMORY[0x1E69DDCE0] + 8);
  v69 = *(MEMORY[0x1E69DDCE0] + 24);
  if (shouldFillAvailableSpace)
  {
    v70 = *(MEMORY[0x1E69DDCE0] + 16);
  }

  else if (-[SearchUIHeroCardSectionView hasBackground](self, "hasBackground") && (-[SearchUICardSectionView rowModel](self, "rowModel"), v71 = objc_claimAutoreleasedReturnValue(), [v71 backgroundColor], v72 = objc_claimAutoreleasedReturnValue(), v72, v71, !v72))
  {
    v70 = 0.0;
    v69 = -11.0;
    v67 = -11.0;
    v68 = 0.0;
  }

  else
  {
    v70 = -12.0;
  }

  contentView3 = [(SearchUICardSectionView *)self contentView];
  [contentView3 setCustomAlignmentRectInsets:{v68, v67, v70, v69}];

  if ([MEMORY[0x1E69D9240] isSiri])
  {
    v74 = 28.0 - 12.0;
  }

  else
  {
    if (shouldFillAvailableSpace)
    {
      v75 = &SearchUIHeroCardSectionViewCornerRadiusForLeadingTrailingView;
    }

    else
    {
      v75 = &SearchUIHeroCardSectionViewCornerRadius;
    }

    v74 = *v75;
  }

  contentView4 = [(SearchUICardSectionView *)self contentView];
  [contentView4 tlks_setCornerRadius:*MEMORY[0x1E69796E8] withStyle:v74];

  if (v74 + -12.0 >= 7.0)
  {
    v77 = -(v74 + -12.0);
  }

  else
  {
    v77 = -7.0;
  }

  isSiri = [MEMORY[0x1E69D9240] isSiri];
  if (isSiri)
  {
    v79 = v77;
  }

  else
  {
    v79 = 0.0;
  }

  if (isSiri)
  {
    v77 = 0.0;
  }

  punchoutIndicatorBackgroundBlurView2 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  [punchoutIndicatorBackgroundBlurView2 setCustomAlignmentRectInsets:{v77, v79, v79, v77}];
}

- (BOOL)hasBackground
{
  v3 = objc_opt_class();
  rowModel = [(SearchUICardSectionView *)self rowModel];
  LOBYTE(v3) = [v3 fillsBackgroundWithContentForRowModel:rowModel];

  return v3;
}

- (BOOL)showBackgroundImageView
{
  v3 = objc_opt_class();
  rowModel = [(SearchUICardSectionView *)self rowModel];
  LOBYTE(v3) = [v3 showsBackgroundImageViewForRowModel:rowModel];

  return v3;
}

- (void)updatePunchoutIconForRowModel:(id)model
{
  modelCopy = model;
  cardSection = [modelCopy cardSection];
  punchoutIndicatorBackgroundBlurView = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  [punchoutIndicatorBackgroundBlurView setAlpha:0.0];

  punchoutIndicatorBackgroundBlurView2 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  [punchoutIndicatorBackgroundBlurView2 setEffect:0];

  command = [cardSection command];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = command;
    mediaMetadata = [v9 mediaMetadata];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __61__SearchUIHeroCardSectionView_updatePunchoutIconForRowModel___block_invoke;
    v24[3] = &unk_1E85B32F8;
    v25 = cardSection;
    selfCopy = self;
    v27 = mediaMetadata;
    v28 = v9;
    v11 = v9;
    firstObject = mediaMetadata;
    [SearchUIMediaUtilities predictionForMediaMetadata:firstObject completion:v24];

LABEL_15:
    goto LABEL_16;
  }

  punchouts = [modelCopy punchouts];
  firstObject = [punchouts firstObject];

  if (firstObject)
  {
LABEL_4:
    bundleIdentifier = [firstObject bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [firstObject bundleIdentifier];
      [(SearchUIHeroCardSectionView *)self updatePunchoutImageWithBundleIdentifier:bundleIdentifier2];
    }

    else
    {
      preferredOpenableURL = [firstObject preferredOpenableURL];
      bundleIdentifier2 = preferredOpenableURL;
      if (preferredOpenableURL)
      {
        scheme = [preferredOpenableURL scheme];
        lowercaseString = [scheme lowercaseString];

        if (([lowercaseString isEqualToString:@"http"] & 1) == 0 && (objc_msgSend(lowercaseString, "isEqualToString:", @"https") & 1) == 0)
        {
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __61__SearchUIHeroCardSectionView_updatePunchoutIconForRowModel___block_invoke_3;
          v20[3] = &unk_1E85B26A8;
          v21 = bundleIdentifier2;
          v22 = cardSection;
          selfCopy2 = self;
          [SearchUIUtilities dispatchAsyncIfNecessary:v20];
        }
      }
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    punchout = [command punchout];
    if (punchout)
    {
      firstObject = punchout;
      goto LABEL_4;
    }
  }

LABEL_16:
}

void __61__SearchUIHeroCardSectionView_updatePunchoutIconForRowModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61__SearchUIHeroCardSectionView_updatePunchoutIconForRowModel___block_invoke_2;
  v8[3] = &unk_1E85B32D0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v12 = v6;
  v13 = *(a1 + 56);
  v7 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v8];
}

void __61__SearchUIHeroCardSectionView_updatePunchoutIconForRowModel___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) rowModel];
  v4 = [v3 cardSection];

  if (v2 == v4)
  {
    v10 = [*(a1 + 48) selectedBundleIdentifier];
    if (v10 && ([*(a1 + 56) bundleIdentifiersToExclude], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", v10), v5, (v6 & 1) == 0))
    {
      [*(a1 + 64) setClientSelectedBundleIdentifier:v10];
      [*(a1 + 40) updatePunchoutImageWithBundleIdentifier:v10];
    }

    else
    {
      v7 = [[SearchUISymbolImage alloc] initWithSymbolName:@"arrow.up.forward"];
      v8 = [MEMORY[0x1E69DC730] effectWithStyle:4];
      v9 = [*(a1 + 40) punchoutIndicatorBackgroundBlurView];
      [v9 setEffect:v8];

      [*(a1 + 40) updateWithPunchoutImage:v7];
    }
  }
}

void __61__SearchUIHeroCardSectionView_updatePunchoutIconForRowModel___block_invoke_3(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E6963630]) initWithURL:*(a1 + 32) error:0];
  v3 = [v2 bundleRecord];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__SearchUIHeroCardSectionView_updatePunchoutIconForRowModel___block_invoke_4;
    v7[3] = &unk_1E85B26A8;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = v5;
    v9 = v6;
    v10 = v4;
    [SearchUIUtilities dispatchMainIfNecessary:v7];
  }
}

void __61__SearchUIHeroCardSectionView_updatePunchoutIconForRowModel___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) rowModel];
  v4 = [v3 cardSection];

  if (v2 == v4)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    [v5 updatePunchoutImageWithBundleIdentifier:v6];
  }
}

- (void)updatePunchoutImageWithBundleIdentifier:(id)identifier
{
  v4 = [SearchUIAppIconImage appIconForBundleIdentifier:identifier variant:5];
  [(SearchUIHeroCardSectionView *)self updateWithPunchoutImage:v4];
}

- (void)updateWithPunchoutImage:(id)image
{
  imageCopy = image;
  section = [(SearchUICardSectionView *)self section];
  image = [section image];
  punchoutIndicatorImageView = [(SearchUIHeroCardSectionView *)self punchoutIndicatorImageView];
  [punchoutIndicatorImageView setHidden:image == 0];

  punchoutIndicatorImageView2 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorImageView];
  LOBYTE(image) = [punchoutIndicatorImageView2 isHidden];

  if ((image & 1) == 0)
  {
    punchoutIndicatorImageView3 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorImageView];
    [punchoutIndicatorImageView3 updateWithImage:imageCopy];
  }

  section2 = [(SearchUICardSectionView *)self section];
  image2 = [section2 image];
  punchoutIndicatorBackgroundBlurView = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  [punchoutIndicatorBackgroundBlurView setHidden:image2 == 0];

  punchoutIndicatorBackgroundBlurView2 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  LOBYTE(image2) = [punchoutIndicatorBackgroundBlurView2 isHidden];

  if ((image2 & 1) == 0)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__SearchUIHeroCardSectionView_updateWithPunchoutImage___block_invoke;
    v14[3] = &unk_1E85B24C8;
    v14[4] = self;
    [SearchUIUtilities performAnimatableChanges:v14];
  }
}

void __55__SearchUIHeroCardSectionView_updateWithPunchoutImage___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) punchoutIndicatorBackgroundBlurView];
  [v1 setAlpha:1.0];
}

- (void)updateButtonsForCardSection:(id)section
{
  v78[1] = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  selfCopy = self;
  buttonStackView = [(SearchUIHeroCardSectionView *)self buttonStackView];
  v6 = 1;
  [buttonStackView setHidden:1];

  buttonItems = [sectionCopy buttonItems];
  image = [sectionCopy image];
  if (image)
  {
    v6 = [sectionCopy imageAlign] == 0;
  }

  buttonItemStackView = [(SearchUIHeroCardSectionView *)selfCopy buttonItemStackView];
  if (v6)
  {
    buttonItems2 = [sectionCopy buttonItems];
  }

  else
  {
    buttonItems2 = MEMORY[0x1E695E0F0];
  }

  rowModel = [(SearchUICardSectionView *)selfCopy rowModel];
  feedbackDelegate = [(SearchUICardSectionView *)selfCopy feedbackDelegate];
  [buttonItemStackView updateWithButtonItems:buttonItems2 maxButtonItems:2 buttonItemViewType:1 rowModel:rowModel feedbackDelegate:feedbackDelegate];

  if (v6)
  {

LABEL_10:
    v20 = 0;
    goto LABEL_35;
  }

  firstObject = [buttonItems firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = objc_opt_new();
    v78[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:1];
    [(SearchUIHeroCardSectionView *)selfCopy updateWithButtonViews:v16 visible:0 addBackground:1 animate:0];

    firstObject2 = [buttonItems firstObject];
    buttonItemStackView = [firstObject2 watchListItem];

    v18 = +[SearchUIWatchListUtilities watchListTypeForType:isMediaContainer:](SearchUIWatchListUtilities, "watchListTypeForType:isMediaContainer:", [buttonItemStackView type], objc_msgSend(buttonItemStackView, "isMediaContainer"));
    watchListIdentifier = [buttonItemStackView watchListIdentifier];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __59__SearchUIHeroCardSectionView_updateButtonsForCardSection___block_invoke;
    v72[3] = &unk_1E85B3348;
    v73 = sectionCopy;
    v74 = selfCopy;
    v75 = buttonItems;
    [SearchUIWatchListUtilities fetchWatchListStateForWatchListIdentifier:watchListIdentifier type:v18 completion:v72];

    goto LABEL_10;
  }

  v60 = sectionCopy;
  v21 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v59 = buttonItems;
  v22 = buttonItems;
  v23 = [v22 countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v23)
  {
    v24 = v23;
    v20 = 0;
    v25 = *v69;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v69 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v68 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v28 = v27;
          [v21 addObject:v28];
          title = [v28 title];

          v30 = [title length];
          v20 |= v30 != 0;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v24);
  }

  else
  {
    v20 = 0;
  }

  v31 = objc_opt_new();
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v21;
  v32 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v65;
    v61 = *MEMORY[0x1E69DDD58];
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v65 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v64 + 1) + 8 * j);
        if (v20)
        {
          image2 = [*(*(&v64 + 1) + 8 * j) image];
          v38 = [SearchUIImage imageWithSFImage:image2];
          [(SearchUIHeroCardSectionView *)selfCopy effectiveScreenScale];
          v40 = v39;
          v41 = [MEMORY[0x1E69D9108] bestAppearanceForView:selfCopy];
          v42 = [v38 loadImageWithScale:objc_msgSend(v41 isDarkStyle:{"isDark"), v40}];

          v43 = [SearchUIHeroButton alloc];
          title2 = [v36 title];
          command = [v36 command];
          v46 = [(SearchUIHeroButton *)v43 initWithTitle:title2 image:v42 command:command];
        }

        else
        {
          v46 = objc_opt_new();
          image3 = [v36 image];
          v42 = [SearchUITLKImageConverter imageForSFImage:image3];

          [(SearchUIHeroButton *)v46 setTlkImage:v42];
          title2 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:v61];
          command = [(SearchUIHeroButton *)v46 tlkImageView];
          [command setSymbolFont:title2];
        }

        [(SearchUIHeroButton *)v46 setButtonItem:v36];
        [v31 addObject:v46];
      }

      v33 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v33);
  }

  if ([v31 count])
  {
    [(SearchUIHeroCardSectionView *)selfCopy updateWithButtonViews:v31 visible:1 addBackground:0 animate:0];
  }

  buttonItems = v59;
  sectionCopy = v60;
LABEL_35:
  +[SearchUIUtilities standardTableCellContentInset];
  if ([(SearchUIHeroCardSectionView *)selfCopy hasBackground])
  {
    v48 = 12.0;
  }

  else
  {
    +[SearchUIUtilities standardTableCellContentInset];
    v48 = v49;
  }

  if ([(SearchUIHeroCardSectionView *)selfCopy hasBackground])
  {
    v50 = v48;
  }

  else
  {
    v50 = 0.0;
  }

  containerStackView = [(SearchUIHeroCardSectionView *)selfCopy containerStackView];
  [containerStackView setLayoutMargins:{v48, v48, v50, v48}];

  containerStackView2 = [(SearchUIHeroCardSectionView *)selfCopy containerStackView];
  [containerStackView2 setAxis:v20 & 1];

  v53 = *MEMORY[0x1E69D9260];
  containerStackView3 = [(SearchUIHeroCardSectionView *)selfCopy containerStackView];
  v55 = containerStackView3;
  v56 = 16.0;
  if (v20)
  {
    v57 = 0;
  }

  else
  {
    v56 = v53;
    v57 = 4;
  }

  [containerStackView3 setSpacing:v56];

  containerStackView4 = [(SearchUIHeroCardSectionView *)selfCopy containerStackView];
  [containerStackView4 setAlignment:v57];
}

void __59__SearchUIHeroCardSectionView_updateButtonsForCardSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AF00] isMainThread] ^ 1;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__SearchUIHeroCardSectionView_updateButtonsForCardSection___block_invoke_2;
  v9[3] = &unk_1E85B3320;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  v12 = v3;
  v13 = v7;
  v14 = v4;
  v8 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v9];
}

void __59__SearchUIHeroCardSectionView_updateButtonsForCardSection___block_invoke_2(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v10 = [*(a1 + 40) rowModel];
  v3 = [v10 cardSection];
  if (v2 == v3)
  {
    v4 = *(a1 + 48);

    if (v4)
    {
      v5 = [[SearchUICommandButton alloc] initWithWatchListState:*(a1 + 48)];
      v6 = [*(a1 + 56) firstObject];
      [(SearchUICommandButton *)v5 setButtonItem:v6];

      v7 = *(a1 + 40);
      v11[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [v7 updateWithButtonViews:v8 visible:1 addBackground:1 animate:*(a1 + 64)];

      v9 = [*(a1 + 40) buttonStackView];
      [v9 layoutIfNeeded];
    }
  }

  else
  {
  }
}

- (void)updateWithButtonViews:(id)views visible:(BOOL)visible addBackground:(BOOL)background animate:(BOOL)animate
{
  animateCopy = animate;
  backgroundCopy = background;
  v38 = *MEMORY[0x1E69E9840];
  viewsCopy = views;
  buttonStackView = [(SearchUIHeroCardSectionView *)self buttonStackView];
  [buttonStackView setHidden:0];

  v10 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = viewsCopy;
  v11 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        [v15 addTarget:self action:sel_buttonPressed_];
        v16 = v15;
        if (backgroundCopy)
        {
          v17 = objc_opt_new();
          [v17 _setCornerRadius:18.0];
          v18 = v13;
          v19 = backgroundCopy;
          v20 = objc_alloc(MEMORY[0x1E698B718]);
          v36[0] = v17;
          v36[1] = v16;
          [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
          v21 = v10;
          v23 = v22 = self;
          v24 = [v20 initWithArrangedSubviews:v23];

          self = v22;
          v10 = v21;
          LODWORD(v25) = 1148846080;
          [v24 setLayoutSize:36.0 withContentPriority:{36.0, v25}];
          [v24 setAlignment:3 forView:v16 inAxis:0];
          [v24 setAlignment:3 forView:v16 inAxis:1];

          v16 = v24;
          backgroundCopy = v19;
          v13 = v18;
        }

        [v10 addObject:v16];
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  buttonStackView2 = [(SearchUIHeroCardSectionView *)self buttonStackView];
  [buttonStackView2 setArrangedSubviews:v10];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __83__SearchUIHeroCardSectionView_updateWithButtonViews_visible_addBackground_animate___block_invoke;
  v30[3] = &unk_1E85B25B8;
  v30[4] = self;
  visibleCopy = visible;
  [SearchUIUtilities performAnimatableChanges:v30 animated:animateCopy];
}

void __83__SearchUIHeroCardSectionView_updateWithButtonViews_visible_addBackground_animate___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) buttonStackView];
  [v3 setAlpha:v2];
}

- (void)buttonPressed:(id)pressed
{
  pressedCopy = pressed;
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v5 = [SearchUIUtilities environmentForDelegate:feedbackDelegate];

  if ([pressedCopy conformsToProtocol:&unk_1F56338D8])
  {
    [v5 setWatchListDelegate:pressedCopy];
  }

  buttonItem = [pressedCopy buttonItem];
  rowModel = [(SearchUICardSectionView *)self rowModel];
  v8 = [SearchUICommandHandler handlerForButton:buttonItem rowModel:rowModel environment:v5];
  [v8 executeWithTriggerEvent:2];
}

- (void)didUpdateWithImage:(id)image
{
  if ([(SearchUIHeroCardSectionView *)self showBackgroundImageView])
  {

    [(SearchUIHeroCardSectionView *)self showGradientAnimated:1];
  }
}

- (void)showGradientAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [MEMORY[0x1E69D9248] enableShadow:1 forView:self];
  layer = [(SearchUIHeroCardSectionView *)self layer];
  [layer shadowOpacity];
  v7 = v6;

  layer2 = [(SearchUIHeroCardSectionView *)self layer];
  [layer2 setShadowOpacity:0.0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__SearchUIHeroCardSectionView_showGradientAnimated___block_invoke;
  v9[3] = &unk_1E85B2CC0;
  v9[4] = self;
  v10 = v7;
  [MEMORY[0x1E69D9240] performAnimatableChanges:v9 animated:animatedCopy];
}

void __52__SearchUIHeroCardSectionView_showGradientAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) layer];
  LODWORD(v4) = v2;
  [v3 setShadowOpacity:v4];

  v9 = [MEMORY[0x1E69D9108] appearanceWithStyle:3];
  v5 = [*(a1 + 32) containerStackView];
  [v9 overrideAppearanceForView:v5];

  v6 = [*(a1 + 32) punchoutIndicatorImageView];
  [v9 overrideAppearanceForView:v6];

  v7 = [MEMORY[0x1E69D9108] appearanceWithStyle:2];
  v8 = [*(a1 + 32) punchoutIndicatorBackgroundBlurView];
  [v7 overrideAppearanceForView:v8];
}

- (id)highlightReferenceView
{
  if ([(SearchUIHeroCardSectionView *)self hasBackground])
  {
    contentView = [(SearchUICardSectionView *)self contentView];
  }

  else
  {
    contentView = 0;
  }

  return contentView;
}

@end