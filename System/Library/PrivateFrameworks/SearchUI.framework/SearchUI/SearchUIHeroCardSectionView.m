@interface SearchUIHeroCardSectionView
+ (BOOL)fillsBackgroundWithContentForRowModel:(id)a3;
+ (BOOL)showsBackgroundImageViewForRowModel:(id)a3;
- (BOOL)hasBackground;
- (BOOL)showBackgroundImageView;
- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5;
- (SearchUIHeroCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4;
- (id)highlightReferenceView;
- (id)setupContentView;
- (void)buttonPressed:(id)a3;
- (void)didUpdateWithImage:(id)a3;
- (void)showGradientAnimated:(BOOL)a3;
- (void)updateButtonsForCardSection:(id)a3;
- (void)updatePunchoutIconForRowModel:(id)a3;
- (void)updatePunchoutImageWithBundleIdentifier:(id)a3;
- (void)updateWithButtonViews:(id)a3 visible:(BOOL)a4 addBackground:(BOOL)a5 animate:(BOOL)a6;
- (void)updateWithPunchoutImage:(id)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIHeroCardSectionView

+ (BOOL)fillsBackgroundWithContentForRowModel:(id)a3
{
  v4 = a3;
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___SearchUIHeroCardSectionView;
  if (objc_msgSendSuper2(&v7, sel_fillsBackgroundWithContentForRowModel_, v4))
  {
    v5 = 1;
  }

  else
  {
    v5 = [a1 showsBackgroundImageViewForRowModel:v4];
  }

  return v5;
}

+ (BOOL)showsBackgroundImageViewForRowModel:(id)a3
{
  v3 = a3;
  v4 = [v3 cardSection];
  v5 = [v4 image];
  if (v5 && [v4 imageAlign] == 4)
  {
    v6 = [v3 backgroundColor];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SearchUIHeroCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v7.receiver = self;
  v7.super_class = SearchUIHeroCardSectionView;
  v4 = [(SearchUICardSectionView *)&v7 initWithRowModel:a3 feedbackDelegate:a4];
  if (v4)
  {
    if (initWithRowModel_feedbackDelegate__onceToken != -1)
    {
      [SearchUIHeroCardSectionView initWithRowModel:feedbackDelegate:];
    }

    v5 = [(SearchUIHeroCardSectionView *)v4 layer];
    [v5 setShadowPathIsBounds:1];
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
  v6 = [v5 layer];
  [v6 setMasksToBounds:1];

  [MEMORY[0x1E69D9240] appIconCornerRadiusRatio];
  v8 = v7 * 24.0;
  v9 = [v5 layer];
  [v9 setCornerRadius:v8];

  v10 = *MEMORY[0x1E69796E8];
  v11 = [v5 layer];
  [v11 setCornerCurve:v10];

  LODWORD(v12) = 1148846080;
  [v5 setLayoutSize:24.0 withContentPriority:{24.0, v12}];
  v46 = v3;
  [v3 addArrangedSubview:v5];
  v13 = [MEMORY[0x1E69D9240] isSiri];
  if (v13)
  {
    v14 = 4;
  }

  else
  {
    v14 = 1;
  }

  if (v13)
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
  v17 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorImageView];
  v52[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  v19 = [v16 initWithArrangedSubviews:v18];

  [v19 setHorizontalAlignment:3];
  v45 = v19;
  [v19 setVerticalAlignment:3];
  v20 = [v5 contentView];
  [v20 addSubview:v19];

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

  v27 = [(SearchUIHeroCardSectionView *)self buttonStackView];
  [v27 setDistribution:1];

  v28 = [(SearchUIHeroCardSectionView *)self buttonStackView];
  [v28 setSpacing:8.0];

  v29 = [(SearchUIHeroCardSectionView *)self buttonStackView];
  [SearchUIAutoLayout requireIntrinsicSizeForView:v29];

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
  v39 = [(SearchUIHeroCardSectionView *)self buttonStackView];
  v49[1] = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v41 = [v38 initWithArrangedSubviews:v40];

  [v41 setLayoutMarginsRelativeArrangement:1];
  [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v41];
  [(SearchUIHeroCardSectionView *)self setContainerStackView:v41];
  [v46 addArrangedSubview:v41];

  return v46;
}

- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5
{
  width = a4.width;
  v7 = a5;
  v8 = [(SearchUICardSectionView *)self contentView];

  if (v8 != v7)
  {

LABEL_5:
    width = *MEMORY[0x1E698B708];
    v10 = *(MEMORY[0x1E698B708] + 8);
    goto LABEL_6;
  }

  v9 = [(SearchUIHeroCardSectionView *)self hasBackground];

  if (!v9)
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

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v83.receiver = self;
  v83.super_class = SearchUIHeroCardSectionView;
  [(SearchUICardSectionView *)&v83 updateWithRowModel:v4];
  [MEMORY[0x1E69D9248] enableShadow:0 forView:self];
  v5 = [v4 cardSection];
  v82 = [v5 image];
  v6 = [(SearchUIHeroCardSectionView *)self hasBackground];
  if (v6)
  {
    v7 = [v5 title];
    [v7 setMaxLines:1];

    v8 = [v5 subtitle];
    [v8 setMaxLines:1];
  }

  v9 = MEMORY[0x1E69D9138];
  if (v82 && [v5 imageAlign] != 1)
  {
    v10 = MEMORY[0x1E69DDDC0];
  }

  else
  {
    v10 = MEMORY[0x1E69DDDB8];
  }

  v11 = [v9 cachedFontForTextStyle:*v10 isShort:0 isBold:1];
  v12 = [(SearchUIHeroCardSectionView *)self titleLabel];
  [v12 setFont:v11];

  v13 = [v5 title];
  v14 = [(SearchUIHeroCardSectionView *)self titleLabel];
  [v14 setSfText:v13];

  v15 = [(SearchUIHeroCardSectionView *)self titleLabel];
  v16 = [v15 richText];
  v17 = [v16 hasContent];
  v18 = [(SearchUIHeroCardSectionView *)self titleLabel];
  [v18 setHidden:v17 ^ 1u];

  v19 = [v5 subtitle];
  v20 = [(SearchUIHeroCardSectionView *)self subtitleLabel];
  [v20 setSfText:v19];

  v21 = [(SearchUIHeroCardSectionView *)self subtitleLabel];
  v22 = [v21 richText];
  v23 = [v22 hasContent];
  v24 = [(SearchUIHeroCardSectionView *)self subtitleLabel];
  [v24 setHidden:v23 ^ 1];

  v25 = [(SearchUIHeroCardSectionView *)self titleLabel];
  v26 = [v25 isHidden];
  if (v26)
  {
    v23 = [(SearchUIHeroCardSectionView *)self subtitleLabel];
    v27 = [v23 isHidden];
  }

  else
  {
    v27 = 0;
  }

  v28 = [(SearchUIHeroCardSectionView *)self labelsStackView];
  [v28 setHidden:v27];

  if (v26)
  {
  }

  v29 = MEMORY[0x1E69D9108];
  v30 = [(SearchUIHeroCardSectionView *)self containerStackView];
  [v29 disableAppearanceOverrideForView:v30];

  v31 = MEMORY[0x1E69D9108];
  v32 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorImageView];
  [v31 disableAppearanceOverrideForView:v32];

  v33 = MEMORY[0x1E69D9108];
  v34 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  [v33 disableAppearanceOverrideForView:v34];

  v35 = [v5 imageAlign];
  v36 = [(SearchUIHeroCardSectionView *)self showBackgroundImageView];
  v37 = v36;
  if (v82)
  {
    v38 = v35 == 0;
  }

  else
  {
    v38 = 0;
  }

  v39 = !v38;
  v40 = !v36;
  v41 = v35 == 1 || v35 == 4 && !v36;
  if (v82)
  {
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  if (v36)
  {
    v43 = [(SearchUIHeroCardSectionView *)self backgroundImageView];
    [v43 updateWithImage:v82];

    v44 = [(SearchUIHeroCardSectionView *)self backgroundImageView];
    v45 = [v44 imageView];
    v46 = [v45 image];

    if (v46)
    {
      [(SearchUIHeroCardSectionView *)self showGradientAnimated:0];
    }
  }

  v47 = [(SearchUICardSectionView *)self contentView];
  v48 = [v47 layer];
  [v48 setMasksToBounds:v6];

  v49 = [(SearchUIHeroCardSectionView *)self backgroundImageView];
  [v49 setHidden:v40];

  if (v42 & 1 | ((v39 & 1) == 0))
  {
    v50 = [(SearchUIHeroCardSectionView *)self thumbnailImageView];
    [v50 updateWithImage:v82];
  }

  v51 = [(SearchUIHeroCardSectionView *)self thumbnailImageView];
  [v51 setHidden:v39 & (v42 ^ 1)];

  v52 = [v81 backgroundColor];

  if (v52)
  {
    [(SearchUIHeroCardSectionView *)self showGradientAnimated:0];
  }

  [(SearchUIHeroCardSectionView *)self updateButtonsForCardSection:v5];
  [(SearchUIHeroCardSectionView *)self updatePunchoutIconForRowModel:v81];
  v53 = [(SearchUIHeroCardSectionView *)self thumbnailAndLabelsStackView];
  [v53 setAxis:v42];

  if (v42)
  {
    v54 = 0;
  }

  else
  {
    v54 = 3;
  }

  v55 = [(SearchUIHeroCardSectionView *)self thumbnailAndLabelsStackView];
  [v55 setAlignment:v54];

  if (v42 & !v6)
  {
    v56 = 1;
  }

  else
  {
    v56 = 4;
  }

  v57 = [(SearchUIHeroCardSectionView *)self titleLabel];
  [v57 setTextAlignment:v56];

  v58 = [(SearchUIHeroCardSectionView *)self subtitleLabel];
  [v58 setTextAlignment:v56];

  v59 = 4.0;
  if (v6)
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

  v61 = [(SearchUIHeroCardSectionView *)self thumbnailAndLabelsStackView];
  [v61 setSpacing:v60];

  v62 = [(SearchUICardSectionView *)self contentView];
  if (v37)
  {
    v63 = 4;
  }

  else
  {
    v63 = 3;
  }

  v64 = [(SearchUIHeroCardSectionView *)self containerStackView];
  [v62 setAlignment:v63 forView:v64 inAxis:1];

  v65 = [(SearchUICardSectionView *)self rowModel];
  v66 = [v65 shouldFillAvailableSpace];

  v68 = *MEMORY[0x1E69DDCE0];
  v67 = *(MEMORY[0x1E69DDCE0] + 8);
  v69 = *(MEMORY[0x1E69DDCE0] + 24);
  if (v66)
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

  v73 = [(SearchUICardSectionView *)self contentView];
  [v73 setCustomAlignmentRectInsets:{v68, v67, v70, v69}];

  if ([MEMORY[0x1E69D9240] isSiri])
  {
    v74 = 28.0 - 12.0;
  }

  else
  {
    if (v66)
    {
      v75 = &SearchUIHeroCardSectionViewCornerRadiusForLeadingTrailingView;
    }

    else
    {
      v75 = &SearchUIHeroCardSectionViewCornerRadius;
    }

    v74 = *v75;
  }

  v76 = [(SearchUICardSectionView *)self contentView];
  [v76 tlks_setCornerRadius:*MEMORY[0x1E69796E8] withStyle:v74];

  if (v74 + -12.0 >= 7.0)
  {
    v77 = -(v74 + -12.0);
  }

  else
  {
    v77 = -7.0;
  }

  v78 = [MEMORY[0x1E69D9240] isSiri];
  if (v78)
  {
    v79 = v77;
  }

  else
  {
    v79 = 0.0;
  }

  if (v78)
  {
    v77 = 0.0;
  }

  v80 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  [v80 setCustomAlignmentRectInsets:{v77, v79, v79, v77}];
}

- (BOOL)hasBackground
{
  v3 = objc_opt_class();
  v4 = [(SearchUICardSectionView *)self rowModel];
  LOBYTE(v3) = [v3 fillsBackgroundWithContentForRowModel:v4];

  return v3;
}

- (BOOL)showBackgroundImageView
{
  v3 = objc_opt_class();
  v4 = [(SearchUICardSectionView *)self rowModel];
  LOBYTE(v3) = [v3 showsBackgroundImageViewForRowModel:v4];

  return v3;
}

- (void)updatePunchoutIconForRowModel:(id)a3
{
  v4 = a3;
  v5 = [v4 cardSection];
  v6 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  [v6 setAlpha:0.0];

  v7 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  [v7 setEffect:0];

  v8 = [v5 command];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
    v10 = [v9 mediaMetadata];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __61__SearchUIHeroCardSectionView_updatePunchoutIconForRowModel___block_invoke;
    v24[3] = &unk_1E85B32F8;
    v25 = v5;
    v26 = self;
    v27 = v10;
    v28 = v9;
    v11 = v9;
    v12 = v10;
    [SearchUIMediaUtilities predictionForMediaMetadata:v12 completion:v24];

LABEL_15:
    goto LABEL_16;
  }

  v13 = [v4 punchouts];
  v12 = [v13 firstObject];

  if (v12)
  {
LABEL_4:
    v14 = [v12 bundleIdentifier];

    if (v14)
    {
      v15 = [v12 bundleIdentifier];
      [(SearchUIHeroCardSectionView *)self updatePunchoutImageWithBundleIdentifier:v15];
    }

    else
    {
      v17 = [v12 preferredOpenableURL];
      v15 = v17;
      if (v17)
      {
        v18 = [v17 scheme];
        v19 = [v18 lowercaseString];

        if (([v19 isEqualToString:@"http"] & 1) == 0 && (objc_msgSend(v19, "isEqualToString:", @"https") & 1) == 0)
        {
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __61__SearchUIHeroCardSectionView_updatePunchoutIconForRowModel___block_invoke_3;
          v20[3] = &unk_1E85B26A8;
          v21 = v15;
          v22 = v5;
          v23 = self;
          [SearchUIUtilities dispatchAsyncIfNecessary:v20];
        }
      }
    }

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v8 punchout];
    if (v16)
    {
      v12 = v16;
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

- (void)updatePunchoutImageWithBundleIdentifier:(id)a3
{
  v4 = [SearchUIAppIconImage appIconForBundleIdentifier:a3 variant:5];
  [(SearchUIHeroCardSectionView *)self updateWithPunchoutImage:v4];
}

- (void)updateWithPunchoutImage:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICardSectionView *)self section];
  v6 = [v5 image];
  v7 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorImageView];
  [v7 setHidden:v6 == 0];

  v8 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorImageView];
  LOBYTE(v6) = [v8 isHidden];

  if ((v6 & 1) == 0)
  {
    v9 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorImageView];
    [v9 updateWithImage:v4];
  }

  v10 = [(SearchUICardSectionView *)self section];
  v11 = [v10 image];
  v12 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  [v12 setHidden:v11 == 0];

  v13 = [(SearchUIHeroCardSectionView *)self punchoutIndicatorBackgroundBlurView];
  LOBYTE(v11) = [v13 isHidden];

  if ((v11 & 1) == 0)
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

- (void)updateButtonsForCardSection:(id)a3
{
  v78[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v62 = self;
  v5 = [(SearchUIHeroCardSectionView *)self buttonStackView];
  v6 = 1;
  [v5 setHidden:1];

  v7 = [v4 buttonItems];
  v8 = [v4 image];
  if (v8)
  {
    v6 = [v4 imageAlign] == 0;
  }

  v9 = [(SearchUIHeroCardSectionView *)v62 buttonItemStackView];
  if (v6)
  {
    v10 = [v4 buttonItems];
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = [(SearchUICardSectionView *)v62 rowModel];
  v12 = [(SearchUICardSectionView *)v62 feedbackDelegate];
  [v9 updateWithButtonItems:v10 maxButtonItems:2 buttonItemViewType:1 rowModel:v11 feedbackDelegate:v12];

  if (v6)
  {

LABEL_10:
    v20 = 0;
    goto LABEL_35;
  }

  v13 = [v7 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = objc_opt_new();
    v78[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:1];
    [(SearchUIHeroCardSectionView *)v62 updateWithButtonViews:v16 visible:0 addBackground:1 animate:0];

    v17 = [v7 firstObject];
    v9 = [v17 watchListItem];

    v18 = +[SearchUIWatchListUtilities watchListTypeForType:isMediaContainer:](SearchUIWatchListUtilities, "watchListTypeForType:isMediaContainer:", [v9 type], objc_msgSend(v9, "isMediaContainer"));
    v19 = [v9 watchListIdentifier];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __59__SearchUIHeroCardSectionView_updateButtonsForCardSection___block_invoke;
    v72[3] = &unk_1E85B3348;
    v73 = v4;
    v74 = v62;
    v75 = v7;
    [SearchUIWatchListUtilities fetchWatchListStateForWatchListIdentifier:v19 type:v18 completion:v72];

    goto LABEL_10;
  }

  v60 = v4;
  v21 = objc_opt_new();
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v59 = v7;
  v22 = v7;
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
          v29 = [v28 title];

          v30 = [v29 length];
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
          v37 = [*(*(&v64 + 1) + 8 * j) image];
          v38 = [SearchUIImage imageWithSFImage:v37];
          [(SearchUIHeroCardSectionView *)v62 effectiveScreenScale];
          v40 = v39;
          v41 = [MEMORY[0x1E69D9108] bestAppearanceForView:v62];
          v42 = [v38 loadImageWithScale:objc_msgSend(v41 isDarkStyle:{"isDark"), v40}];

          v43 = [SearchUIHeroButton alloc];
          v44 = [v36 title];
          v45 = [v36 command];
          v46 = [(SearchUIHeroButton *)v43 initWithTitle:v44 image:v42 command:v45];
        }

        else
        {
          v46 = objc_opt_new();
          v47 = [v36 image];
          v42 = [SearchUITLKImageConverter imageForSFImage:v47];

          [(SearchUIHeroButton *)v46 setTlkImage:v42];
          v44 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:v61];
          v45 = [(SearchUIHeroButton *)v46 tlkImageView];
          [v45 setSymbolFont:v44];
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
    [(SearchUIHeroCardSectionView *)v62 updateWithButtonViews:v31 visible:1 addBackground:0 animate:0];
  }

  v7 = v59;
  v4 = v60;
LABEL_35:
  +[SearchUIUtilities standardTableCellContentInset];
  if ([(SearchUIHeroCardSectionView *)v62 hasBackground])
  {
    v48 = 12.0;
  }

  else
  {
    +[SearchUIUtilities standardTableCellContentInset];
    v48 = v49;
  }

  if ([(SearchUIHeroCardSectionView *)v62 hasBackground])
  {
    v50 = v48;
  }

  else
  {
    v50 = 0.0;
  }

  v51 = [(SearchUIHeroCardSectionView *)v62 containerStackView];
  [v51 setLayoutMargins:{v48, v48, v50, v48}];

  v52 = [(SearchUIHeroCardSectionView *)v62 containerStackView];
  [v52 setAxis:v20 & 1];

  v53 = *MEMORY[0x1E69D9260];
  v54 = [(SearchUIHeroCardSectionView *)v62 containerStackView];
  v55 = v54;
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

  [v54 setSpacing:v56];

  v58 = [(SearchUIHeroCardSectionView *)v62 containerStackView];
  [v58 setAlignment:v57];
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

- (void)updateWithButtonViews:(id)a3 visible:(BOOL)a4 addBackground:(BOOL)a5 animate:(BOOL)a6
{
  v28 = a6;
  v6 = a5;
  v38 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(SearchUIHeroCardSectionView *)self buttonStackView];
  [v9 setHidden:0];

  v10 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v8;
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
        if (v6)
        {
          v17 = objc_opt_new();
          [v17 _setCornerRadius:18.0];
          v18 = v13;
          v19 = v6;
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
          v6 = v19;
          v13 = v18;
        }

        [v10 addObject:v16];
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  v26 = [(SearchUIHeroCardSectionView *)self buttonStackView];
  [v26 setArrangedSubviews:v10];

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __83__SearchUIHeroCardSectionView_updateWithButtonViews_visible_addBackground_animate___block_invoke;
  v30[3] = &unk_1E85B25B8;
  v30[4] = self;
  v31 = a4;
  [SearchUIUtilities performAnimatableChanges:v30 animated:v28];
}

void __83__SearchUIHeroCardSectionView_updateWithButtonViews_visible_addBackground_animate___block_invoke(uint64_t a1, double a2)
{
  LOBYTE(a2) = *(a1 + 40);
  v2 = *&a2;
  v3 = [*(a1 + 32) buttonStackView];
  [v3 setAlpha:v2];
}

- (void)buttonPressed:(id)a3
{
  v9 = a3;
  v4 = [(SearchUICardSectionView *)self feedbackDelegate];
  v5 = [SearchUIUtilities environmentForDelegate:v4];

  if ([v9 conformsToProtocol:&unk_1F56338D8])
  {
    [v5 setWatchListDelegate:v9];
  }

  v6 = [v9 buttonItem];
  v7 = [(SearchUICardSectionView *)self rowModel];
  v8 = [SearchUICommandHandler handlerForButton:v6 rowModel:v7 environment:v5];
  [v8 executeWithTriggerEvent:2];
}

- (void)didUpdateWithImage:(id)a3
{
  if ([(SearchUIHeroCardSectionView *)self showBackgroundImageView])
  {

    [(SearchUIHeroCardSectionView *)self showGradientAnimated:1];
  }
}

- (void)showGradientAnimated:(BOOL)a3
{
  v3 = a3;
  [MEMORY[0x1E69D9248] enableShadow:1 forView:self];
  v5 = [(SearchUIHeroCardSectionView *)self layer];
  [v5 shadowOpacity];
  v7 = v6;

  v8 = [(SearchUIHeroCardSectionView *)self layer];
  [v8 setShadowOpacity:0.0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__SearchUIHeroCardSectionView_showGradientAnimated___block_invoke;
  v9[3] = &unk_1E85B2CC0;
  v9[4] = self;
  v10 = v7;
  [MEMORY[0x1E69D9240] performAnimatableChanges:v9 animated:v3];
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
    v3 = [(SearchUICardSectionView *)self contentView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end