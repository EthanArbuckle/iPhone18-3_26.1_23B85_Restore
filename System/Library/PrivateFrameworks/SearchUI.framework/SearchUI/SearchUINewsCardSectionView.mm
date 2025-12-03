@interface SearchUINewsCardSectionView
- (CGRect)highlightFrame;
- (CGSize)largeThumbnailSize;
- (CGSize)smallThumbnailSize;
- (UIEdgeInsets)textContentInset;
- (double)minThumbnailBottomSpacing;
- (double)stackViewVerticalSpacing;
- (id)highlightReferenceView;
- (id)setupContentView;
- (void)didMoveToWindow;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLayoutForCardSection:(id)section;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUINewsCardSectionView

- (double)minThumbnailBottomSpacing
{
  v3 = MEMORY[0x1E69D91A8];
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  v5 = 8.0;
  if (isMacOS)
  {
    v5 = 6.0;
  }

  [v3 deviceScaledRoundedValue:self forView:v5];
  return result;
}

- (double)stackViewVerticalSpacing
{
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  result = 2.0;
  if (isMacOS)
  {
    return 1.0;
  }

  return result;
}

- (UIEdgeInsets)textContentInset
{
  v2 = -8.0;
  v3 = -8.0;
  v4 = -8.0;
  v5 = -8.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)smallThumbnailSize
{
  v2 = 155.0;
  v3 = 114.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)largeThumbnailSize
{
  [(SearchUINewsCardSectionView *)self smallThumbnailSize];
  v4 = v3;
  [(SearchUINewsCardSectionView *)self smallThumbnailSize];
  v6 = v5 * 1.8;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (CGRect)highlightFrame
{
  thumbnailImageView = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  [thumbnailImageView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  thumbnailImageView2 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  superview = [thumbnailImageView2 superview];
  [(SearchUINewsCardSectionView *)self convertRect:superview fromView:v5, v7, v9, v11];
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
  thumbnailImageView = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  highlightReferenceView = [thumbnailImageView highlightReferenceView];

  return highlightReferenceView;
}

- (id)setupContentView
{
  v63[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(SearchUINewsCardSectionView *)self setThumbnailImageView:v3];

  thumbnailImageView = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  [(SearchUINewsCardSectionView *)self smallThumbnailSize];
  [thumbnailImageView setLayoutSize:? withContentPriority:?];

  thumbnailImageView2 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  [thumbnailImageView2 setAlignment:2];

  v6 = objc_opt_new();
  [(SearchUINewsCardSectionView *)self setProviderImageView:v6];

  providerImageView = [(SearchUINewsCardSectionView *)self providerImageView];
  [providerImageView setProminence:1];

  providerImageView2 = [(SearchUINewsCardSectionView *)self providerImageView];
  [providerImageView2 setAlignment:4];

  v9 = +[(TLKLabel *)SearchUILabel];
  v55 = v9;
  [(SearchUINewsCardSectionView *)self setTitleLabel:v9];
  v10 = +[(TLKLabel *)SearchUILabel];
  v11 = MEMORY[0x1E69D9138];
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  v13 = *MEMORY[0x1E69DDD80];
  if (isMacOS)
  {
    v14 = *MEMORY[0x1E69DDD80];
  }

  else
  {
    v14 = *MEMORY[0x1E69DDD28];
  }

  v15 = [v11 cachedFontForTextStyle:v14 isBold:0 isMacStyle:{objc_msgSend(MEMORY[0x1E69D9240], "isMacOS")}];
  v57 = v10;
  [v10 setFont:v15];

  [(SearchUINewsCardSectionView *)self setSubtitleLabel:v10];
  v16 = +[(TLKLabel *)SearchUILabel];
  v17 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD10] isBold:1 isMacStyle:{objc_msgSend(MEMORY[0x1E69D9240], "isMacOS")}];
  [v16 setFont:v17];

  [(SearchUINewsCardSectionView *)self setProviderLabel:v16];
  v18 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v13 addingSymbolicTraits:32834 options:0];
  v19 = *MEMORY[0x1E69DB9A8] + 0.1;
  v62 = *MEMORY[0x1E69DB8F0];
  v60 = *MEMORY[0x1E69DB9C0];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  v61 = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v63[0] = v21;
  v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];

  v54 = [v18 fontDescriptorByAddingAttributes:v56];

  v22 = [MEMORY[0x1E69DB878] fontWithDescriptor:v54 size:0.0];
  [v9 setFont:v22];

  v23 = objc_alloc(MEMORY[0x1E698B730]);
  providerImageView3 = [(SearchUINewsCardSectionView *)self providerImageView];
  v59[0] = providerImageView3;
  providerLabel = [(SearchUINewsCardSectionView *)self providerLabel];
  v59[1] = providerLabel;
  titleLabel = [(SearchUINewsCardSectionView *)self titleLabel];
  v59[2] = titleLabel;
  subtitleLabel = [(SearchUINewsCardSectionView *)self subtitleLabel];
  v59[3] = subtitleLabel;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:4];
  v29 = [v23 initWithArrangedSubviews:v28];

  [v29 setAxis:1];
  [v29 setAlignment:1];
  [v29 setDistribution:2];
  [(SearchUINewsCardSectionView *)self stackViewVerticalSpacing];
  [v29 setSpacing:?];
  LODWORD(v30) = 1144750080;
  [v29 setContentCompressionResistancePriority:1 forAxis:v30];
  [(SearchUINewsCardSectionView *)self setTextContentStackView:v29];
  v31 = objc_alloc(MEMORY[0x1E698B730]);
  thumbnailImageView3 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  v58[0] = thumbnailImageView3;
  v58[1] = v29;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  v34 = [v31 initWithArrangedSubviews:v33];

  [v34 setAxis:1];
  [v34 setAlignment:0];
  thumbnailImageView4 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  [v34 setAlignment:0 forView:thumbnailImageView4 inAxis:0];

  [(SearchUINewsCardSectionView *)self stackViewVerticalSpacing];
  [v34 setSpacing:?];
  [(SearchUINewsCardSectionView *)self stackViewVerticalSpacing];
  v37 = v36;
  [v16 effectiveBaselineOffsetFromContentBottom];
  v39 = v37 + v38;
  [(SearchUINewsCardSectionView *)self providerImageVerticalOffset];
  v41 = v39 + v40;
  providerImageView4 = [(SearchUINewsCardSectionView *)self providerImageView];
  [v29 setCustomSpacing:providerImageView4 afterView:v41];

  [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v34];
  providerImageView5 = [(SearchUINewsCardSectionView *)self providerImageView];
  v44 = *MEMORY[0x1E698B6F8];
  providerLabel2 = [(SearchUINewsCardSectionView *)self providerLabel];
  [providerLabel2 intrinsicContentSize];
  v47 = v46;
  [(SearchUINewsCardSectionView *)self providerImageVerticalSizeDelta];
  LODWORD(v49) = 1148846080;
  [providerImageView5 setLayoutSize:v44 withContentPriority:{v47 + v48, v49}];

  v50 = objc_opt_new();
  [v50 setVerticalAlignment:0];
  [v50 setHorizontalAlignment:0];
  [(SearchUINewsCardSectionView *)self setBaseBoxView:v50];
  v51 = objc_opt_new();
  [v51 setVerticalAlignment:4];
  [v51 setHorizontalAlignment:0];
  [(SearchUINewsCardSectionView *)self setTextContentBoxView:v51];
  v52 = objc_opt_new();
  [(SearchUINewsCardSectionView *)self setGradientView:v52];

  return v34;
}

- (void)updateWithRowModel:(id)model
{
  v37.receiver = self;
  v37.super_class = SearchUINewsCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v37 updateWithRowModel:modelCopy];
  cardSection = [modelCopy cardSection];

  [(SearchUINewsCardSectionView *)self updateLayoutForCardSection:cardSection];
  thumbnailImageView = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  thumbnail = [cardSection thumbnail];
  [thumbnailImageView updateWithImage:thumbnail];

  providerImageView = [(SearchUINewsCardSectionView *)self providerImageView];
  providerImage = [cardSection providerImage];
  [providerImageView updateWithImage:providerImage];

  title = [cardSection title];
  titleLabel = [(SearchUINewsCardSectionView *)self titleLabel];
  [titleLabel setSfText:title];

  title2 = [cardSection title];
  titleLabel2 = [(SearchUINewsCardSectionView *)self titleLabel];
  [titleLabel2 setHidden:title2 == 0];

  subtitle = [cardSection subtitle];
  subtitleLabel = [(SearchUINewsCardSectionView *)self subtitleLabel];
  [subtitleLabel setSfText:subtitle];

  subtitle2 = [cardSection subtitle];
  subtitleLabel2 = [(SearchUINewsCardSectionView *)self subtitleLabel];
  [subtitleLabel2 setHidden:subtitle2 == 0];

  providerTitle = [cardSection providerTitle];
  providerLabel = [(SearchUINewsCardSectionView *)self providerLabel];
  [providerLabel setSfText:providerTitle];

  providerImage2 = [cardSection providerImage];
  v21 = providerImage2 == 0;
  v22 = providerImage2 != 0;

  providerLabel2 = [(SearchUINewsCardSectionView *)self providerLabel];
  [providerLabel2 setHidden:v22];

  providerImageView2 = [(SearchUINewsCardSectionView *)self providerImageView];
  [providerImageView2 setHidden:v21];

  if (![(SearchUINewsCardSectionView *)self overlaysTextInImage])
  {
    providerImage3 = [cardSection providerImage];

    [(SearchUINewsCardSectionView *)self providerImageVerticalSizeDelta];
    if (providerImage3)
    {
      v27 = fmax(-v26, 0.0);
    }

    else
    {
      v28 = fmax(v26, 0.0);
      providerLabel3 = [(SearchUINewsCardSectionView *)self providerLabel];
      [providerLabel3 effectiveBaselineOffsetFromContentBottom];
      v31 = v28 + v30;
      [(SearchUINewsCardSectionView *)self providerImageVerticalOffset];
      v27 = v31 + v32;
    }

    contentView = [(SearchUICardSectionView *)self contentView];
    [(SearchUINewsCardSectionView *)self minThumbnailBottomSpacing];
    v35 = v27 + v34;
    thumbnailImageView2 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
    [contentView setCustomSpacing:thumbnailImageView2 afterView:v35];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUINewsCardSectionView;
  [(SearchUINewsCardSectionView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUINewsCardSectionView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUINewsCardSectionView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUINewsCardSectionView *)self traitCollection];
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
  v3.super_class = SearchUINewsCardSectionView;
  [(SearchUINewsCardSectionView *)&v3 didMoveToWindow];
  [(SearchUINewsCardSectionView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v10.receiver = self;
  v10.super_class = SearchUINewsCardSectionView;
  [(SearchUINewsCardSectionView *)&v10 tlk_updateForAppearance:appearanceCopy];
  rowModel = [(SearchUICardSectionView *)self rowModel];
  cardSection = [rowModel cardSection];

  if ([cardSection overlayTextInImage])
  {
    v7 = [MEMORY[0x1E69D9108] appearanceWithStyle:3];
  }

  else
  {
    v7 = appearanceCopy;
  }

  v8 = v7;
  textContentStackView = [(SearchUINewsCardSectionView *)self textContentStackView];
  [v8 overrideAppearanceForView:textContentStackView];
}

- (void)updateLayoutForCardSection:(id)section
{
  sectionCopy = section;
  overlayTextInImage = [sectionCopy overlayTextInImage];
  v5 = overlayTextInImage == [(SearchUINewsCardSectionView *)self overlaysTextInImage];
  v6 = sectionCopy;
  if (!v5)
  {
    -[SearchUINewsCardSectionView setOverlaysTextInImage:](self, "setOverlaysTextInImage:", [sectionCopy overlayTextInImage]);
    textContentStackView = [(SearchUINewsCardSectionView *)self textContentStackView];
    [textContentStackView removeFromSuperview];

    thumbnailImageView = [(SearchUINewsCardSectionView *)self thumbnailImageView];
    [thumbnailImageView removeFromSuperview];

    textContentBoxView = [(SearchUINewsCardSectionView *)self textContentBoxView];
    [textContentBoxView removeFromSuperview];

    baseBoxView = [(SearchUINewsCardSectionView *)self baseBoxView];
    [baseBoxView removeFromSuperview];

    gradientView = [(SearchUINewsCardSectionView *)self gradientView];
    [gradientView removeFromSuperview];

    if ([sectionCopy overlayTextInImage])
    {
      [(SearchUINewsCardSectionView *)self textContentInset];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      textContentStackView2 = [(SearchUINewsCardSectionView *)self textContentStackView];
      [textContentStackView2 setCustomAlignmentRectInsets:{v13, v15, v17, v19}];

      textContentBoxView2 = [(SearchUINewsCardSectionView *)self textContentBoxView];
      textContentStackView3 = [(SearchUINewsCardSectionView *)self textContentStackView];
      [textContentBoxView2 addArrangedSubview:textContentStackView3];

      baseBoxView2 = [(SearchUINewsCardSectionView *)self baseBoxView];
      gradientView2 = [(SearchUINewsCardSectionView *)self gradientView];
      [baseBoxView2 addArrangedSubview:gradientView2];

      baseBoxView3 = [(SearchUINewsCardSectionView *)self baseBoxView];
      textContentBoxView3 = [(SearchUINewsCardSectionView *)self textContentBoxView];
      [baseBoxView3 addArrangedSubview:textContentBoxView3];

      contentView = [(SearchUICardSectionView *)self contentView];
      thumbnailImageView2 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
      [contentView addArrangedSubview:thumbnailImageView2];

      thumbnailImageView3 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
      imageView = [thumbnailImageView3 imageView];
      baseBoxView4 = [(SearchUINewsCardSectionView *)self baseBoxView];
      [imageView addSubview:baseBoxView4];

      baseBoxView5 = [(SearchUINewsCardSectionView *)self baseBoxView];
      [SearchUIAutoLayout fillContainerWithView:baseBoxView5];

      thumbnailImageView4 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
      [(SearchUINewsCardSectionView *)self largeThumbnailSize];
      [thumbnailImageView4 setLayoutSize:? withHorizontalContentPriority:? verticalContentPriority:?];
    }

    else
    {
      v34 = *MEMORY[0x1E69DDCE0];
      v35 = *(MEMORY[0x1E69DDCE0] + 8);
      v36 = *(MEMORY[0x1E69DDCE0] + 16);
      v37 = *(MEMORY[0x1E69DDCE0] + 24);
      textContentStackView4 = [(SearchUINewsCardSectionView *)self textContentStackView];
      [textContentStackView4 setCustomAlignmentRectInsets:{v34, v35, v36, v37}];

      contentView2 = [(SearchUICardSectionView *)self contentView];
      thumbnailImageView5 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
      [contentView2 addArrangedSubview:thumbnailImageView5];

      contentView3 = [(SearchUICardSectionView *)self contentView];
      textContentStackView5 = [(SearchUINewsCardSectionView *)self textContentStackView];
      [contentView3 addArrangedSubview:textContentStackView5];

      thumbnailImageView4 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
      [(SearchUINewsCardSectionView *)self smallThumbnailSize];
      [thumbnailImageView4 setLayoutSize:? withContentPriority:?];
    }

    v6 = sectionCopy;
  }
}

@end