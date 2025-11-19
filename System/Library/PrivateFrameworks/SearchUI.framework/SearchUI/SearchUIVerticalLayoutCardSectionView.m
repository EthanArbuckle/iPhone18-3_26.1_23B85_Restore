@interface SearchUIVerticalLayoutCardSectionView
+ (id)dragTitleForCardSection:(id)a3;
- (CGRect)highlightFrame;
- (id)highlightReferenceView;
- (id)setupContentView;
- (void)buildThumbnailOverlayContainerIfNecessary;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)didMoveToWindow;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4;
- (void)updateThumbnailOverlayContainerWithText:(id)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIVerticalLayoutCardSectionView

- (id)setupContentView
{
  v19[3] = *MEMORY[0x1E69E9840];
  [(SearchUIVerticalLayoutCardSectionView *)self setUseAppIconMetrics:0];
  v3 = objc_opt_new();
  [(SearchUIVerticalLayoutCardSectionView *)self setThumbnailView:v3];

  v4 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
  [v4 setMinimumLayoutSize:{60.0, 60.0}];

  v5 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD80] isShort:0 isBold:0];
  v6 = objc_opt_new();
  [(SearchUIVerticalLayoutCardSectionView *)self setTitleLabel:v6];

  v7 = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
  [v7 setFont:v5];

  v8 = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
  [v8 setSupportsColorGlyphs:1];

  v9 = +[(TLKLabel *)SearchUILabel];
  [(SearchUIVerticalLayoutCardSectionView *)self setFootnoteLabel:v9];

  v10 = [(SearchUIVerticalLayoutCardSectionView *)self footnoteLabel];
  [v10 setFont:v5];

  v11 = [(SearchUIVerticalLayoutCardSectionView *)self footnoteLabel];
  [v11 setSupportsColorGlyphs:1];

  v12 = objc_alloc(MEMORY[0x1E698B730]);
  v13 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
  v14 = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
  v19[1] = v14;
  v15 = [(SearchUIVerticalLayoutCardSectionView *)self footnoteLabel];
  v19[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v17 = [v12 initWithArrangedSubviews:v16];

  [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:self forView:5.5];
  [v17 setSpacing:?];
  [v17 setAxis:1];
  [v17 setDelegate:self];
  [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v17];

  return v17;
}

- (CGRect)highlightFrame
{
  v3 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
  v13 = [v12 superview];
  [(SearchUIVerticalLayoutCardSectionView *)self convertRect:v13 fromView:v5, v7, v9, v11];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)highlightReferenceView
{
  v2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
  v3 = [v2 highlightReferenceView];

  return v3;
}

- (void)updateWithRowModel:(id)a3
{
  v12.receiver = self;
  v12.super_class = SearchUIVerticalLayoutCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v12 updateWithRowModel:v4];
  v5 = [v4 cardSection];
  -[SearchUIVerticalLayoutCardSectionView setUseAppIconMetrics:](self, "setUseAppIconMetrics:", [v5 useAppIconMetrics]);
  v6 = [v4 identifyingResult];

  v7 = [v6 sectionBundleIdentifier];
  -[SearchUIVerticalLayoutCardSectionView setUseToolTips:](self, "setUseToolTips:", [v7 hasPrefix:@"com.apple.spotlight.zkw"]);

  v8 = [(SearchUICardSectionView *)self contentView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__SearchUIVerticalLayoutCardSectionView_updateWithRowModel___block_invoke;
  v10[3] = &unk_1E85B2540;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  [v8 performBatchUpdates:v10];
}

uint64_t __60__SearchUIVerticalLayoutCardSectionView_updateWithRowModel___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) useAppIconMetrics])
  {
    v2 = objc_alloc(MEMORY[0x1E69D4080]);
    v3 = [v2 initWithScreenType:{objc_msgSend(MEMORY[0x1E69D4080], "currentDeviceScreenType")}];
    v4 = [v3 layoutForIconLocation:*MEMORY[0x1E69D4158]];

    if (+[SearchUIUtilities isIpad])
    {
      v5 = 4;
    }

    else
    {
      v5 = 5;
    }

    [SearchUIAppIconImage sizeForVariant:v5];
    v7 = v6;
    v9 = v8;
    v10 = [*(a1 + 40) thumbnail];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = 0.0;
    }

    else
    {
      v11 = 4.0;
    }

    v12 = v7 - v11;
    v13 = v9 - v11;
    v14 = [*(a1 + 32) thumbnailView];
    [v14 setProminence:0];

    v15 = [*(a1 + 32) traitCollection];
    v16 = [v15 preferredContentSizeCategory];
    v17 = [v4 labelVisualConfigurationForContentSizeCategory:v16 options:0];

    v18 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD08] isShort:0 fontWeight:*MEMORY[0x1E69DB970]];
    [v17 fontSize];
    v19 = [v18 fontWithSize:?];

    v20 = [*(a1 + 32) titleLabel];
    [v20 setFont:v19];

    v21 = [*(a1 + 32) footnoteLabel];
    [v21 setFont:v19];

    v22 = [*(a1 + 32) titleLabel];
    [v22 setProminence:1];

    v23 = [*(a1 + 32) titleLabel];
    [v23 setTextAlignment:1];

    v24 = [*(a1 + 32) footnoteLabel];
    [v24 setProminence:2];

    v25 = [*(a1 + 32) footnoteLabel];
    [v25 setTextAlignment:1];

    v26 = [*(a1 + 32) contentView];
    [v26 setAlignment:3];

    v27 = [*(a1 + 32) thumbnailView];
    [v27 setMinimumLayoutSize:{v12, v13}];

    v28 = [*(a1 + 32) thumbnailView];
    [v28 setMaximumLayoutSize:{v12, v13}];

    +[SearchUIAppIconUtilities distanceToTopOfAppIconsForMultiResultCell];
    v29 = v11 * 0.5;
    v31 = v29 + v30;
    +[SearchUIAppIconUtilities distanceToBottomOfAppIconsForMultiResultCell];
    v33 = v32 + -6.0;
    v34 = [*(a1 + 32) contentView];
    [v34 setLayoutMarginsRelativeArrangement:1];

    v35 = [*(a1 + 32) contentView];
    [v35 setDirectionalLayoutMargins:{v31, 4.0, v33, 4.0}];

    v36 = [*(a1 + 32) contentView];
    [v17 baselineOffsetFromImage];
    v38 = v29 + v37;
    v39 = [*(a1 + 32) titleLabel];
    [v39 effectiveFirstBaselineOffsetFromTop];
    v41 = v38 - v40;
    v42 = [*(a1 + 32) thumbnailView];
    [v36 setCustomSpacing:v42 afterView:v41];

    v43 = [*(a1 + 32) contentView];
    v44 = [*(a1 + 32) titleLabel];
    [v43 setCustomSpacing:v44 afterView:0.0];
  }

  else
  {
    v45 = [*(a1 + 32) thumbnailView];
    [v45 setProminence:1];

    v4 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD80]];
    v46 = [*(a1 + 32) titleLabel];
    [v46 setFont:v4];

    v47 = [*(a1 + 32) footnoteLabel];
    [v47 setFont:v4];

    v48 = [*(a1 + 32) titleLabel];
    [v48 setProminence:0];

    if ([*(a1 + 40) contentsLeading])
    {
      v49 = 4;
    }

    else
    {
      v49 = 1;
    }

    v50 = [*(a1 + 32) titleLabel];
    [v50 setTextAlignment:v49];

    v51 = [*(a1 + 32) footnoteLabel];
    [v51 setProminence:1];

    if ([*(a1 + 40) contentsLeading])
    {
      v52 = 4;
    }

    else
    {
      v52 = 1;
    }

    v53 = [*(a1 + 32) footnoteLabel];
    [v53 setTextAlignment:v52];

    v54 = [*(a1 + 40) thumbnailOverlayText];

    if (v54)
    {
      [*(a1 + 32) buildThumbnailOverlayContainerIfNecessary];
    }

    if ([*(a1 + 40) contentsLeading])
    {
      v55 = 1;
    }

    else
    {
      v55 = 3;
    }

    v56 = [*(a1 + 32) contentView];
    [v56 setAlignment:v55];

    if ([MEMORY[0x1E69D9240] isMacOS] && objc_msgSend(*(a1 + 32), "useAppIconMetrics") && ((objc_msgSend(*(a1 + 40), "thumbnail"), v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "size"), v59 = v58, v61 = v60, v62 = MEMORY[0x1E695F060], v63 = *MEMORY[0x1E695F060], v57, v59 != v63) || v61 != *(v62 + 8)))
    {
      v88 = [*(a1 + 40) thumbnail];
      [v88 size];
      v90 = v89;
      v92 = v91;
      v93 = [*(a1 + 32) thumbnailView];
      [v93 setMinimumLayoutSize:{v90, v92}];

      v65 = [*(a1 + 40) thumbnail];
      [v65 size];
      v95 = v94;
      v97 = v96;
      v98 = [*(a1 + 32) thumbnailView];
      [v98 setMaximumLayoutSize:{v95, v97}];
    }

    else
    {
      v64 = [*(a1 + 32) thumbnailView];
      [v64 setMinimumLayoutSize:{60.0, 60.0}];

      v65 = [*(a1 + 32) thumbnailView];
      [v65 setMaximumLayoutSize:{1.79769313e308, 1.79769313e308}];
    }

    v66 = [*(a1 + 32) contentView];
    v67 = 8.0;
    if ([*(a1 + 32) useAppIconMetrics])
    {
      if ([MEMORY[0x1E69D9240] isMacOS])
      {
        v67 = 1.0;
      }

      else
      {
        v67 = 8.0;
      }
    }

    v68 = [*(a1 + 32) thumbnailView];
    [v66 setCustomSpacing:v68 afterView:v67];

    v69 = [*(a1 + 32) contentView];
    v70 = [*(a1 + 32) titleLabel];
    [v69 setCustomSpacing:v70 afterView:2.0];

    v71 = [*(a1 + 32) contentView];
    [v71 setLayoutMarginsRelativeArrangement:0];

    v17 = [*(a1 + 32) contentView];
    [v17 setDirectionalLayoutMargins:{0.0, 0.0, 0.0, 0.0}];
  }

  v72 = *(a1 + 32);
  v73 = [*(a1 + 40) thumbnailOverlayText];
  [v72 updateThumbnailOverlayContainerWithText:v73];

  v74 = [*(a1 + 40) title];
  v75 = [*(a1 + 32) titleLabel];
  [v75 setSfText:v74];

  v76 = [*(a1 + 32) titleLabel];
  v77 = [v76 richText];
  v78 = [v77 hasContent];
  v79 = [*(a1 + 32) titleLabel];
  [v79 setHidden:v78 ^ 1u];

  v80 = [*(a1 + 40) footnote];
  v81 = [*(a1 + 32) footnoteLabel];
  [v81 setSfText:v80];

  v82 = [*(a1 + 32) footnoteLabel];
  v83 = [v82 richText];
  v84 = [v83 hasContent];
  v85 = [*(a1 + 32) footnoteLabel];
  [v85 setHidden:v84 ^ 1u];

  v86 = *(a1 + 32);

  return [v86 tlk_updateWithCurrentAppearance];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUIVerticalLayoutCardSectionView;
  [(SearchUIVerticalLayoutCardSectionView *)&v9 traitCollectionDidChange:v4];
  v5 = [(SearchUIVerticalLayoutCardSectionView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SearchUIVerticalLayoutCardSectionView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SearchUIVerticalLayoutCardSectionView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SearchUIVerticalLayoutCardSectionView;
  [(SearchUIVerticalLayoutCardSectionView *)&v3 didMoveToWindow];
  [(SearchUIVerticalLayoutCardSectionView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = SearchUIVerticalLayoutCardSectionView;
  [(SearchUIVerticalLayoutCardSectionView *)&v27 tlk_updateForAppearance:v4];
  v5 = [(SearchUICardSectionView *)self rowModel];
  v6 = [v5 cardSection];

  if (v6)
  {
    v7 = [v6 thumbnail];
    if ([(SearchUIVerticalLayoutCardSectionView *)self useAppIconMetrics])
    {
      v8 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
      [v8 minimumLayoutSize];
      v10 = v9;
      v12 = v11;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [(SearchUIImage *)SearchUISymbolImage imageWithSFImage:v7];
        v14 = v13;
        if (v10 >= v12)
        {
          v15 = v12;
        }

        else
        {
          v15 = v10;
        }

        [v13 setPreferredSymbolFontSize:v15 * 0.5];
        if ([v4 isDark])
        {
          [v4 quaternaryColor];
        }

        else
        {
          [v4 quinaryColor];
        }
        v20 = ;
        [v14 setCustomBackgroundColor:v20];

        v21 = [v4 isDark];
        v22 = [v4 primaryColor];
        v23 = v22;
        if (v21)
        {
          [v14 setCustomForegroundColor:v22];
        }

        else
        {
          v24 = [v22 colorWithAlphaComponent:0.75];
          [v14 setCustomForegroundColor:v24];
        }

        [v14 setSize:{v10, v12}];
      }

      else
      {
        v14 = v7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = 0;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = 0;
        }

        else
        {
          v19 = 2;
        }
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = MEMORY[0x1E696AEC0];
        v17 = [v7 photoIdentifier];
        v18 = [v16 stringWithFormat:@"photoIdentifier: %@", v17];
        [(SearchUIVerticalLayoutCardSectionView *)self setAccessibilityIdentifier:v18];
      }

      else
      {
        [(SearchUIVerticalLayoutCardSectionView *)self setAccessibilityIdentifier:0];
      }

      v19 = 2;
      v14 = v7;
    }

    v25 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
    [v25 setAlignment:v19];

    v26 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
    [v26 updateWithImage:v14];
  }
}

- (void)buildThumbnailOverlayContainerIfNecessary
{
  v32[3] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(SearchUIVerticalLayoutCardSectionView *)self setGradientImageView:v4];

    v5 = [(SearchUIVerticalLayoutCardSectionView *)self gradientImageView];
    [v5 setAlpha:0.4];

    v6 = MEMORY[0x1E69DCAB8];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v6 imageNamed:@"PXBadgeGradientRight" inBundle:v7 compatibleWithTraitCollection:0];
    v9 = [(SearchUIVerticalLayoutCardSectionView *)self gradientImageView];
    [v9 setImage:v8];

    v10 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
    v11 = objc_opt_new();
    [(SearchUIVerticalLayoutCardSectionView *)self setThumbnailOverlayLabel:v11];

    v12 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
    [v12 setFont:v10];

    if ([MEMORY[0x1E69D91A8] isLTR])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    v14 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
    [v14 setTextAlignment:v13];

    v15 = objc_opt_new();
    [(SearchUIVerticalLayoutCardSectionView *)self setThumbnailOverlayImageView:v15];

    v16 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
    [v16 setSymbolFont:v10];

    v17 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
    [v17 setProminence:0];

    v18 = objc_alloc(MEMORY[0x1E698B718]);
    v19 = [(SearchUIVerticalLayoutCardSectionView *)self gradientImageView];
    v20 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
    v32[1] = v20;
    v21 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
    v32[2] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
    v23 = [v18 initWithArrangedSubviews:v22];
    [(SearchUIVerticalLayoutCardSectionView *)self setThumbnailOverlayContainer:v23];

    v24 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
    [v24 setHorizontalAlignment:4];

    v25 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
    [v25 setVerticalAlignment:4];

    v26 = [MEMORY[0x1E69D9108] appearanceWithStyle:1];
    v27 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
    [v26 overrideAppearanceForView:v27];

    v28 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
    v29 = [v28 imageView];
    v30 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
    [v29 addSubview:v30];

    v31 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
    [SearchUIAutoLayout fillContainerWithView:v31];
  }
}

- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = SearchUIVerticalLayoutCardSectionView;
  [(SearchUICardSectionView *)&v4 updateChevronVisible:0 leaveSpaceForChevron:0];
}

- (void)updateThumbnailOverlayContainerWithText:(id)a3
{
  v15 = a3;
  v4 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
  [v4 setHidden:v15 == 0];

  v5 = [(SearchUICardSectionView *)self section];
  v6 = [v5 thumbnailOverlayText];
  v7 = [v6 icons];
  v8 = [v7 firstObject];

  v9 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
  [v9 updateWithImage:v8];

  v10 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
  [v10 setHidden:v8 == 0];

  v11 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
  [v11 setSfText:v15];

  if (v8)
  {
    v12 = 0;
    v13 = 1;
  }

  else
  {
    v11 = [v15 formattedTextPieces];
    if (v11)
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v10 = [v15 text];
      v13 = v10 == 0;
      v12 = 1;
    }
  }

  v14 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
  [v14 setHidden:v13];

  if (v12)
  {
  }

  if (!v8)
  {
  }
}

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v26 = a3;
  if (![MEMORY[0x1E69D9240] isMacOS] || !-[SearchUIVerticalLayoutCardSectionView useAppIconMetrics](self, "useAppIconMetrics"))
  {
    v4 = [(SearchUICardSectionView *)self contentView];
    if (v4 != v26)
    {
LABEL_4:

      goto LABEL_6;
    }

    v5 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
    v6 = [v5 currentImage];
    v7 = [(SearchUICardSectionView *)self section];
    v8 = [v7 thumbnail];

    if (v6 == v8)
    {
      v9 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
      v4 = [v9 font];

      v10 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
      v11 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
      [v11 bounds];
      [v10 cornerRadiusForSize:1 roundingStyle:{v12, v13}];
      v15 = v14;

      v16 = v15 * 1.74 + -18.0;
      if (v16 < 3.0)
      {
        v16 = 3.0;
      }

      [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:self forView:v16];
      v18 = -v17;
      v19 = -1.0 - v17;
      v20 = MEMORY[0x1E69D91A8];
      [v4 descender];
      [v20 deviceScaledRoundedValue:self forView:v21 * 0.5];
      v23 = v18 - v22;
      v24 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
      [v24 setCustomAlignmentRectInsets:{0.0, 0.0, v23, v19}];

      v25 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
      [v25 setCustomAlignmentRectInsets:{0.0, 0.0, v18, v19}];

      goto LABEL_4;
    }
  }

LABEL_6:
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  if (v9 == self && !a5 && [(SearchUIVerticalLayoutCardSectionView *)self useAppIconMetrics])
  {
    v10 = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
    v11 = [v10 richText];
    if (([v11 hasContent] & 1) == 0)
    {

      goto LABEL_8;
    }

    v12 = [(SearchUIVerticalLayoutCardSectionView *)self footnoteLabel];
    v13 = [v12 richText];
    v14 = [v13 hasContent];

    if (v14)
    {
      v15 = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
      [v15 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, width + -16.0, 1.79769313e308}];
      v17 = v16;

      v18 = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
      [v18 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0, width + -16.0, 1.79769313e308}];
      v20 = v19;

      v10 = [(SearchUIVerticalLayoutCardSectionView *)self footnoteLabel];
      [v10 setHidden:v20 > ceil(v17)];
LABEL_8:
    }
  }

  v21.receiver = self;
  v21.super_class = SearchUIVerticalLayoutCardSectionView;
  [(SearchUICardSectionView *)&v21 containerView:v9 willMeasureArrangedSubviewsFittingSize:a5 forReason:width, height];
}

+ (id)dragTitleForCardSection:(id)a3
{
  v3 = [a3 title];
  v4 = [SearchUIUtilities stringForSFRichText:v3];

  return v4;
}

@end