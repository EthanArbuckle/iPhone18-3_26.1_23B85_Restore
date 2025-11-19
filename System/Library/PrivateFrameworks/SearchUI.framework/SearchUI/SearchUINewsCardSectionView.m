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
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLayoutForCardSection:(id)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUINewsCardSectionView

- (double)minThumbnailBottomSpacing
{
  v3 = MEMORY[0x1E69D91A8];
  v4 = [MEMORY[0x1E69D9240] isMacOS];
  v5 = 8.0;
  if (v4)
  {
    v5 = 6.0;
  }

  [v3 deviceScaledRoundedValue:self forView:v5];
  return result;
}

- (double)stackViewVerticalSpacing
{
  v2 = [MEMORY[0x1E69D9240] isMacOS];
  result = 2.0;
  if (v2)
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
  v3 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  v13 = [v12 superview];
  [(SearchUINewsCardSectionView *)self convertRect:v13 fromView:v5, v7, v9, v11];
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
  v2 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  v3 = [v2 highlightReferenceView];

  return v3;
}

- (id)setupContentView
{
  v63[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(SearchUINewsCardSectionView *)self setThumbnailImageView:v3];

  v4 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  [(SearchUINewsCardSectionView *)self smallThumbnailSize];
  [v4 setLayoutSize:? withContentPriority:?];

  v5 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  [v5 setAlignment:2];

  v6 = objc_opt_new();
  [(SearchUINewsCardSectionView *)self setProviderImageView:v6];

  v7 = [(SearchUINewsCardSectionView *)self providerImageView];
  [v7 setProminence:1];

  v8 = [(SearchUINewsCardSectionView *)self providerImageView];
  [v8 setAlignment:4];

  v9 = +[(TLKLabel *)SearchUILabel];
  v55 = v9;
  [(SearchUINewsCardSectionView *)self setTitleLabel:v9];
  v10 = +[(TLKLabel *)SearchUILabel];
  v11 = MEMORY[0x1E69D9138];
  v12 = [MEMORY[0x1E69D9240] isMacOS];
  v13 = *MEMORY[0x1E69DDD80];
  if (v12)
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
  v24 = [(SearchUINewsCardSectionView *)self providerImageView];
  v59[0] = v24;
  v25 = [(SearchUINewsCardSectionView *)self providerLabel];
  v59[1] = v25;
  v26 = [(SearchUINewsCardSectionView *)self titleLabel];
  v59[2] = v26;
  v27 = [(SearchUINewsCardSectionView *)self subtitleLabel];
  v59[3] = v27;
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
  v32 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  v58[0] = v32;
  v58[1] = v29;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  v34 = [v31 initWithArrangedSubviews:v33];

  [v34 setAxis:1];
  [v34 setAlignment:0];
  v35 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  [v34 setAlignment:0 forView:v35 inAxis:0];

  [(SearchUINewsCardSectionView *)self stackViewVerticalSpacing];
  [v34 setSpacing:?];
  [(SearchUINewsCardSectionView *)self stackViewVerticalSpacing];
  v37 = v36;
  [v16 effectiveBaselineOffsetFromContentBottom];
  v39 = v37 + v38;
  [(SearchUINewsCardSectionView *)self providerImageVerticalOffset];
  v41 = v39 + v40;
  v42 = [(SearchUINewsCardSectionView *)self providerImageView];
  [v29 setCustomSpacing:v42 afterView:v41];

  [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v34];
  v43 = [(SearchUINewsCardSectionView *)self providerImageView];
  v44 = *MEMORY[0x1E698B6F8];
  v45 = [(SearchUINewsCardSectionView *)self providerLabel];
  [v45 intrinsicContentSize];
  v47 = v46;
  [(SearchUINewsCardSectionView *)self providerImageVerticalSizeDelta];
  LODWORD(v49) = 1148846080;
  [v43 setLayoutSize:v44 withContentPriority:{v47 + v48, v49}];

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

- (void)updateWithRowModel:(id)a3
{
  v37.receiver = self;
  v37.super_class = SearchUINewsCardSectionView;
  v4 = a3;
  [(SearchUICardSectionView *)&v37 updateWithRowModel:v4];
  v5 = [v4 cardSection];

  [(SearchUINewsCardSectionView *)self updateLayoutForCardSection:v5];
  v6 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
  v7 = [v5 thumbnail];
  [v6 updateWithImage:v7];

  v8 = [(SearchUINewsCardSectionView *)self providerImageView];
  v9 = [v5 providerImage];
  [v8 updateWithImage:v9];

  v10 = [v5 title];
  v11 = [(SearchUINewsCardSectionView *)self titleLabel];
  [v11 setSfText:v10];

  v12 = [v5 title];
  v13 = [(SearchUINewsCardSectionView *)self titleLabel];
  [v13 setHidden:v12 == 0];

  v14 = [v5 subtitle];
  v15 = [(SearchUINewsCardSectionView *)self subtitleLabel];
  [v15 setSfText:v14];

  v16 = [v5 subtitle];
  v17 = [(SearchUINewsCardSectionView *)self subtitleLabel];
  [v17 setHidden:v16 == 0];

  v18 = [v5 providerTitle];
  v19 = [(SearchUINewsCardSectionView *)self providerLabel];
  [v19 setSfText:v18];

  v20 = [v5 providerImage];
  v21 = v20 == 0;
  v22 = v20 != 0;

  v23 = [(SearchUINewsCardSectionView *)self providerLabel];
  [v23 setHidden:v22];

  v24 = [(SearchUINewsCardSectionView *)self providerImageView];
  [v24 setHidden:v21];

  if (![(SearchUINewsCardSectionView *)self overlaysTextInImage])
  {
    v25 = [v5 providerImage];

    [(SearchUINewsCardSectionView *)self providerImageVerticalSizeDelta];
    if (v25)
    {
      v27 = fmax(-v26, 0.0);
    }

    else
    {
      v28 = fmax(v26, 0.0);
      v29 = [(SearchUINewsCardSectionView *)self providerLabel];
      [v29 effectiveBaselineOffsetFromContentBottom];
      v31 = v28 + v30;
      [(SearchUINewsCardSectionView *)self providerImageVerticalOffset];
      v27 = v31 + v32;
    }

    v33 = [(SearchUICardSectionView *)self contentView];
    [(SearchUINewsCardSectionView *)self minThumbnailBottomSpacing];
    v35 = v27 + v34;
    v36 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
    [v33 setCustomSpacing:v36 afterView:v35];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUINewsCardSectionView;
  [(SearchUINewsCardSectionView *)&v9 traitCollectionDidChange:v4];
  v5 = [(SearchUINewsCardSectionView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SearchUINewsCardSectionView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SearchUINewsCardSectionView *)self traitCollection];
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
  v3.super_class = SearchUINewsCardSectionView;
  [(SearchUINewsCardSectionView *)&v3 didMoveToWindow];
  [(SearchUINewsCardSectionView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SearchUINewsCardSectionView;
  [(SearchUINewsCardSectionView *)&v10 tlk_updateForAppearance:v4];
  v5 = [(SearchUICardSectionView *)self rowModel];
  v6 = [v5 cardSection];

  if ([v6 overlayTextInImage])
  {
    v7 = [MEMORY[0x1E69D9108] appearanceWithStyle:3];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;
  v9 = [(SearchUINewsCardSectionView *)self textContentStackView];
  [v8 overrideAppearanceForView:v9];
}

- (void)updateLayoutForCardSection:(id)a3
{
  v43 = a3;
  v4 = [v43 overlayTextInImage];
  v5 = v4 == [(SearchUINewsCardSectionView *)self overlaysTextInImage];
  v6 = v43;
  if (!v5)
  {
    -[SearchUINewsCardSectionView setOverlaysTextInImage:](self, "setOverlaysTextInImage:", [v43 overlayTextInImage]);
    v7 = [(SearchUINewsCardSectionView *)self textContentStackView];
    [v7 removeFromSuperview];

    v8 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
    [v8 removeFromSuperview];

    v9 = [(SearchUINewsCardSectionView *)self textContentBoxView];
    [v9 removeFromSuperview];

    v10 = [(SearchUINewsCardSectionView *)self baseBoxView];
    [v10 removeFromSuperview];

    v11 = [(SearchUINewsCardSectionView *)self gradientView];
    [v11 removeFromSuperview];

    if ([v43 overlayTextInImage])
    {
      [(SearchUINewsCardSectionView *)self textContentInset];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v20 = [(SearchUINewsCardSectionView *)self textContentStackView];
      [v20 setCustomAlignmentRectInsets:{v13, v15, v17, v19}];

      v21 = [(SearchUINewsCardSectionView *)self textContentBoxView];
      v22 = [(SearchUINewsCardSectionView *)self textContentStackView];
      [v21 addArrangedSubview:v22];

      v23 = [(SearchUINewsCardSectionView *)self baseBoxView];
      v24 = [(SearchUINewsCardSectionView *)self gradientView];
      [v23 addArrangedSubview:v24];

      v25 = [(SearchUINewsCardSectionView *)self baseBoxView];
      v26 = [(SearchUINewsCardSectionView *)self textContentBoxView];
      [v25 addArrangedSubview:v26];

      v27 = [(SearchUICardSectionView *)self contentView];
      v28 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
      [v27 addArrangedSubview:v28];

      v29 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
      v30 = [v29 imageView];
      v31 = [(SearchUINewsCardSectionView *)self baseBoxView];
      [v30 addSubview:v31];

      v32 = [(SearchUINewsCardSectionView *)self baseBoxView];
      [SearchUIAutoLayout fillContainerWithView:v32];

      v33 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
      [(SearchUINewsCardSectionView *)self largeThumbnailSize];
      [v33 setLayoutSize:? withHorizontalContentPriority:? verticalContentPriority:?];
    }

    else
    {
      v34 = *MEMORY[0x1E69DDCE0];
      v35 = *(MEMORY[0x1E69DDCE0] + 8);
      v36 = *(MEMORY[0x1E69DDCE0] + 16);
      v37 = *(MEMORY[0x1E69DDCE0] + 24);
      v38 = [(SearchUINewsCardSectionView *)self textContentStackView];
      [v38 setCustomAlignmentRectInsets:{v34, v35, v36, v37}];

      v39 = [(SearchUICardSectionView *)self contentView];
      v40 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
      [v39 addArrangedSubview:v40];

      v41 = [(SearchUICardSectionView *)self contentView];
      v42 = [(SearchUINewsCardSectionView *)self textContentStackView];
      [v41 addArrangedSubview:v42];

      v33 = [(SearchUINewsCardSectionView *)self thumbnailImageView];
      [(SearchUINewsCardSectionView *)self smallThumbnailSize];
      [v33 setLayoutSize:? withContentPriority:?];
    }

    v6 = v43;
  }
}

@end