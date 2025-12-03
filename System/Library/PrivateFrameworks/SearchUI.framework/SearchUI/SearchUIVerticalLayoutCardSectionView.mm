@interface SearchUIVerticalLayoutCardSectionView
+ (id)dragTitleForCardSection:(id)section;
- (CGRect)highlightFrame;
- (id)highlightReferenceView;
- (id)setupContentView;
- (void)buildThumbnailOverlayContainerIfNecessary;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
- (void)didMoveToWindow;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron;
- (void)updateThumbnailOverlayContainerWithText:(id)text;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIVerticalLayoutCardSectionView

- (id)setupContentView
{
  v19[3] = *MEMORY[0x1E69E9840];
  [(SearchUIVerticalLayoutCardSectionView *)self setUseAppIconMetrics:0];
  v3 = objc_opt_new();
  [(SearchUIVerticalLayoutCardSectionView *)self setThumbnailView:v3];

  thumbnailView = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
  [thumbnailView setMinimumLayoutSize:{60.0, 60.0}];

  v5 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD80] isShort:0 isBold:0];
  v6 = objc_opt_new();
  [(SearchUIVerticalLayoutCardSectionView *)self setTitleLabel:v6];

  titleLabel = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
  [titleLabel setFont:v5];

  titleLabel2 = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
  [titleLabel2 setSupportsColorGlyphs:1];

  v9 = +[(TLKLabel *)SearchUILabel];
  [(SearchUIVerticalLayoutCardSectionView *)self setFootnoteLabel:v9];

  footnoteLabel = [(SearchUIVerticalLayoutCardSectionView *)self footnoteLabel];
  [footnoteLabel setFont:v5];

  footnoteLabel2 = [(SearchUIVerticalLayoutCardSectionView *)self footnoteLabel];
  [footnoteLabel2 setSupportsColorGlyphs:1];

  v12 = objc_alloc(MEMORY[0x1E698B730]);
  thumbnailView2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
  titleLabel3 = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
  v19[1] = titleLabel3;
  footnoteLabel3 = [(SearchUIVerticalLayoutCardSectionView *)self footnoteLabel];
  v19[2] = footnoteLabel3;
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
  thumbnailView = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
  [thumbnailView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  thumbnailView2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
  superview = [thumbnailView2 superview];
  [(SearchUIVerticalLayoutCardSectionView *)self convertRect:superview fromView:v5, v7, v9, v11];
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
  thumbnailView = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
  highlightReferenceView = [thumbnailView highlightReferenceView];

  return highlightReferenceView;
}

- (void)updateWithRowModel:(id)model
{
  v12.receiver = self;
  v12.super_class = SearchUIVerticalLayoutCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v12 updateWithRowModel:modelCopy];
  cardSection = [modelCopy cardSection];
  -[SearchUIVerticalLayoutCardSectionView setUseAppIconMetrics:](self, "setUseAppIconMetrics:", [cardSection useAppIconMetrics]);
  identifyingResult = [modelCopy identifyingResult];

  sectionBundleIdentifier = [identifyingResult sectionBundleIdentifier];
  -[SearchUIVerticalLayoutCardSectionView setUseToolTips:](self, "setUseToolTips:", [sectionBundleIdentifier hasPrefix:@"com.apple.spotlight.zkw"]);

  contentView = [(SearchUICardSectionView *)self contentView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__SearchUIVerticalLayoutCardSectionView_updateWithRowModel___block_invoke;
  v10[3] = &unk_1E85B2540;
  v10[4] = self;
  v11 = cardSection;
  v9 = cardSection;
  [contentView performBatchUpdates:v10];
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUIVerticalLayoutCardSectionView;
  [(SearchUIVerticalLayoutCardSectionView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUIVerticalLayoutCardSectionView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUIVerticalLayoutCardSectionView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUIVerticalLayoutCardSectionView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
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

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v27.receiver = self;
  v27.super_class = SearchUIVerticalLayoutCardSectionView;
  [(SearchUIVerticalLayoutCardSectionView *)&v27 tlk_updateForAppearance:appearanceCopy];
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];

  if (cardSection)
  {
    thumbnail = [cardSection thumbnail];
    if ([(SearchUIVerticalLayoutCardSectionView *)self useAppIconMetrics])
    {
      thumbnailView = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
      [thumbnailView minimumLayoutSize];
      v10 = v9;
      v12 = v11;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [(SearchUIImage *)SearchUISymbolImage imageWithSFImage:thumbnail];
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
        if ([appearanceCopy isDark])
        {
          [appearanceCopy quaternaryColor];
        }

        else
        {
          [appearanceCopy quinaryColor];
        }
        v20 = ;
        [v14 setCustomBackgroundColor:v20];

        isDark = [appearanceCopy isDark];
        primaryColor = [appearanceCopy primaryColor];
        v23 = primaryColor;
        if (isDark)
        {
          [v14 setCustomForegroundColor:primaryColor];
        }

        else
        {
          v24 = [primaryColor colorWithAlphaComponent:0.75];
          [v14 setCustomForegroundColor:v24];
        }

        [v14 setSize:{v10, v12}];
      }

      else
      {
        v14 = thumbnail;
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
        photoIdentifier = [thumbnail photoIdentifier];
        v18 = [v16 stringWithFormat:@"photoIdentifier: %@", photoIdentifier];
        [(SearchUIVerticalLayoutCardSectionView *)self setAccessibilityIdentifier:v18];
      }

      else
      {
        [(SearchUIVerticalLayoutCardSectionView *)self setAccessibilityIdentifier:0];
      }

      v19 = 2;
      v14 = thumbnail;
    }

    thumbnailView2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
    [thumbnailView2 setAlignment:v19];

    thumbnailView3 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
    [thumbnailView3 updateWithImage:v14];
  }
}

- (void)buildThumbnailOverlayContainerIfNecessary
{
  v32[3] = *MEMORY[0x1E69E9840];
  thumbnailOverlayContainer = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];

  if (!thumbnailOverlayContainer)
  {
    v4 = objc_opt_new();
    [(SearchUIVerticalLayoutCardSectionView *)self setGradientImageView:v4];

    gradientImageView = [(SearchUIVerticalLayoutCardSectionView *)self gradientImageView];
    [gradientImageView setAlpha:0.4];

    v6 = MEMORY[0x1E69DCAB8];
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v8 = [v6 imageNamed:@"PXBadgeGradientRight" inBundle:v7 compatibleWithTraitCollection:0];
    gradientImageView2 = [(SearchUIVerticalLayoutCardSectionView *)self gradientImageView];
    [gradientImageView2 setImage:v8];

    v10 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:12.0];
    v11 = objc_opt_new();
    [(SearchUIVerticalLayoutCardSectionView *)self setThumbnailOverlayLabel:v11];

    thumbnailOverlayLabel = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
    [thumbnailOverlayLabel setFont:v10];

    if ([MEMORY[0x1E69D91A8] isLTR])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    thumbnailOverlayLabel2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
    [thumbnailOverlayLabel2 setTextAlignment:v13];

    v15 = objc_opt_new();
    [(SearchUIVerticalLayoutCardSectionView *)self setThumbnailOverlayImageView:v15];

    thumbnailOverlayImageView = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
    [thumbnailOverlayImageView setSymbolFont:v10];

    thumbnailOverlayImageView2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
    [thumbnailOverlayImageView2 setProminence:0];

    v18 = objc_alloc(MEMORY[0x1E698B718]);
    gradientImageView3 = [(SearchUIVerticalLayoutCardSectionView *)self gradientImageView];
    thumbnailOverlayLabel3 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
    v32[1] = thumbnailOverlayLabel3;
    thumbnailOverlayImageView3 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
    v32[2] = thumbnailOverlayImageView3;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:3];
    v23 = [v18 initWithArrangedSubviews:v22];
    [(SearchUIVerticalLayoutCardSectionView *)self setThumbnailOverlayContainer:v23];

    thumbnailOverlayContainer2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
    [thumbnailOverlayContainer2 setHorizontalAlignment:4];

    thumbnailOverlayContainer3 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
    [thumbnailOverlayContainer3 setVerticalAlignment:4];

    v26 = [MEMORY[0x1E69D9108] appearanceWithStyle:1];
    thumbnailOverlayContainer4 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
    [v26 overrideAppearanceForView:thumbnailOverlayContainer4];

    thumbnailView = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
    imageView = [thumbnailView imageView];
    thumbnailOverlayContainer5 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
    [imageView addSubview:thumbnailOverlayContainer5];

    thumbnailOverlayContainer6 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
    [SearchUIAutoLayout fillContainerWithView:thumbnailOverlayContainer6];
  }
}

- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron
{
  v4.receiver = self;
  v4.super_class = SearchUIVerticalLayoutCardSectionView;
  [(SearchUICardSectionView *)&v4 updateChevronVisible:0 leaveSpaceForChevron:0];
}

- (void)updateThumbnailOverlayContainerWithText:(id)text
{
  textCopy = text;
  thumbnailOverlayContainer = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayContainer];
  [thumbnailOverlayContainer setHidden:textCopy == 0];

  section = [(SearchUICardSectionView *)self section];
  thumbnailOverlayText = [section thumbnailOverlayText];
  icons = [thumbnailOverlayText icons];
  firstObject = [icons firstObject];

  thumbnailOverlayImageView = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
  [thumbnailOverlayImageView updateWithImage:firstObject];

  thumbnailOverlayImageView2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
  [thumbnailOverlayImageView2 setHidden:firstObject == 0];

  thumbnailOverlayLabel = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
  [thumbnailOverlayLabel setSfText:textCopy];

  if (firstObject)
  {
    v12 = 0;
    v13 = 1;
  }

  else
  {
    thumbnailOverlayLabel = [textCopy formattedTextPieces];
    if (thumbnailOverlayLabel)
    {
      v12 = 0;
      v13 = 0;
    }

    else
    {
      thumbnailOverlayImageView2 = [textCopy text];
      v13 = thumbnailOverlayImageView2 == 0;
      v12 = 1;
    }
  }

  thumbnailOverlayLabel2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
  [thumbnailOverlayLabel2 setHidden:v13];

  if (v12)
  {
  }

  if (!firstObject)
  {
  }
}

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  if (![MEMORY[0x1E69D9240] isMacOS] || !-[SearchUIVerticalLayoutCardSectionView useAppIconMetrics](self, "useAppIconMetrics"))
  {
    contentView = [(SearchUICardSectionView *)self contentView];
    if (contentView != subviewsCopy)
    {
LABEL_4:

      goto LABEL_6;
    }

    thumbnailView = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
    currentImage = [thumbnailView currentImage];
    section = [(SearchUICardSectionView *)self section];
    thumbnail = [section thumbnail];

    if (currentImage == thumbnail)
    {
      thumbnailOverlayLabel = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
      contentView = [thumbnailOverlayLabel font];

      thumbnailOverlayImageView = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
      thumbnailView2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailView];
      [thumbnailView2 bounds];
      [thumbnailOverlayImageView cornerRadiusForSize:1 roundingStyle:{v12, v13}];
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
      [contentView descender];
      [v20 deviceScaledRoundedValue:self forView:v21 * 0.5];
      v23 = v18 - v22;
      thumbnailOverlayLabel2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayLabel];
      [thumbnailOverlayLabel2 setCustomAlignmentRectInsets:{0.0, 0.0, v23, v19}];

      thumbnailOverlayImageView2 = [(SearchUIVerticalLayoutCardSectionView *)self thumbnailOverlayImageView];
      [thumbnailOverlayImageView2 setCustomAlignmentRectInsets:{0.0, 0.0, v18, v19}];

      goto LABEL_4;
    }
  }

LABEL_6:
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  if (viewCopy == self && !reason && [(SearchUIVerticalLayoutCardSectionView *)self useAppIconMetrics])
  {
    titleLabel = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
    richText = [titleLabel richText];
    if (([richText hasContent] & 1) == 0)
    {

      goto LABEL_8;
    }

    footnoteLabel = [(SearchUIVerticalLayoutCardSectionView *)self footnoteLabel];
    richText2 = [footnoteLabel richText];
    hasContent = [richText2 hasContent];

    if (hasContent)
    {
      titleLabel2 = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
      [titleLabel2 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, width + -16.0, 1.79769313e308}];
      v17 = v16;

      titleLabel3 = [(SearchUIVerticalLayoutCardSectionView *)self titleLabel];
      [titleLabel3 textRectForBounds:0 limitedToNumberOfLines:{0.0, 0.0, width + -16.0, 1.79769313e308}];
      v20 = v19;

      titleLabel = [(SearchUIVerticalLayoutCardSectionView *)self footnoteLabel];
      [titleLabel setHidden:v20 > ceil(v17)];
LABEL_8:
    }
  }

  v21.receiver = self;
  v21.super_class = SearchUIVerticalLayoutCardSectionView;
  [(SearchUICardSectionView *)&v21 containerView:viewCopy willMeasureArrangedSubviewsFittingSize:reason forReason:width, height];
}

+ (id)dragTitleForCardSection:(id)section
{
  title = [section title];
  v4 = [SearchUIUtilities stringForSFRichText:title];

  return v4;
}

@end