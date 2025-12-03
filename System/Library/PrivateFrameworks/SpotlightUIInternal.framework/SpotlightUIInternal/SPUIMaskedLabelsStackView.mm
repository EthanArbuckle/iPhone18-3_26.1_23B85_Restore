@interface SPUIMaskedLabelsStackView
- (BOOL)isRTL;
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame;
- (NSDirectionalEdgeInsets)additionalPadding;
- (SPUIMaskedLabelsStackView)init;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
- (void)resetStringOffset;
- (void)setFont:(id)font;
- (void)setTypedString:(id)string;
@end

@implementation SPUIMaskedLabelsStackView

- (SPUIMaskedLabelsStackView)init
{
  v36[4] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = SPUIMaskedLabelsStackView;
  v2 = [(SPUIMaskedLabelsStackView *)&v35 init];
  v3 = v2;
  if (v2)
  {
    [(SPUIMaskedLabelsStackView *)v2 setDelegate:v2];
    [(NUIContainerStackView *)v3 setSpacing:0.0];
    v4 = objc_opt_new();
    completionLabel = v3->_completionLabel;
    v3->_completionLabel = v4;

    [(UILabel *)v3->_completionLabel setLineBreakMode:2];
    tertiaryLabel = [MEMORY[0x277D6F1B0] tertiaryLabel];
    bridgeLabel = v3->_bridgeLabel;
    v3->_bridgeLabel = tertiaryLabel;

    [(UILabel *)v3->_completionLabel setLineBreakMode:2];
    tertiaryLabel2 = [MEMORY[0x277D6F1B0] tertiaryLabel];
    [tertiaryLabel2 setSupportsColorGlyphs:1];
    [tertiaryLabel2 setLineBreakMode:2];
    objc_storeStrong(&v3->_extensionLabel, tertiaryLabel2);
    bridgeLabel = [(SPUIMaskedLabelsStackView *)v3 bridgeLabel];
    LODWORD(v10) = 1148846080;
    [bridgeLabel setContentHuggingPriority:0 forAxis:v10];

    completionLabel = [(SPUIMaskedLabelsStackView *)v3 completionLabel];
    LODWORD(v12) = 1148829696;
    [completionLabel setContentHuggingPriority:0 forAxis:v12];

    completionLabel2 = [(SPUIMaskedLabelsStackView *)v3 completionLabel];
    LODWORD(v14) = 1148846080;
    [completionLabel2 setContentCompressionResistancePriority:0 forAxis:v14];

    extensionLabel = [(SPUIMaskedLabelsStackView *)v3 extensionLabel];
    LODWORD(v16) = 1148829696;
    [extensionLabel setContentHuggingPriority:0 forAxis:v16];

    extensionLabel2 = [(SPUIMaskedLabelsStackView *)v3 extensionLabel];
    LODWORD(v18) = 1132068864;
    [extensionLabel2 setContentCompressionResistancePriority:0 forAxis:v18];

    v19 = [objc_alloc(MEMORY[0x277D6F1C0]) initWithProminence:3];
    enableFloatingWindow = [MEMORY[0x277D65D28] enableFloatingWindow];
    v21 = 8.0;
    if (enableFloatingWindow)
    {
      v22 = _UISolariumEnabled();
      v21 = 4.0;
      if (v22)
      {
        v21 = 8.0;
      }
    }

    [v19 _setContinuousCornerRadius:v21];
    [(SPUIMaskedLabelsStackView *)v3 setExtensionLabelProminenceView:v19];
    extensionLabelProminenceView = [(SPUIMaskedLabelsStackView *)v3 extensionLabelProminenceView];
    [(SPUIMaskedLabelsStackView *)v3 addSubview:extensionLabelProminenceView];

    [(NUIContainerStackView *)v3 setSpacing:0.0];
    v24 = objc_opt_new();
    [(SPUIMaskedLabelsStackView *)v3 setGradientView:v24];

    v25 = objc_opt_new();
    [(SPUIMaskedLabelsStackView *)v3 setFillerView:v25];

    fillerView = [(SPUIMaskedLabelsStackView *)v3 fillerView];
    [fillerView setContentCompressionResistancePriority:0 forAxis:0.0];

    completionLabel3 = [(SPUIMaskedLabelsStackView *)v3 completionLabel];
    v36[0] = completionLabel3;
    bridgeLabel2 = [(SPUIMaskedLabelsStackView *)v3 bridgeLabel];
    v36[1] = bridgeLabel2;
    extensionLabel3 = [(SPUIMaskedLabelsStackView *)v3 extensionLabel];
    v36[2] = extensionLabel3;
    fillerView2 = [(SPUIMaskedLabelsStackView *)v3 fillerView];
    v36[3] = fillerView2;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
    [(SPUIMaskedLabelsStackView *)v3 setArrangedSubviews:v31];

    if ([MEMORY[0x277D65D28] enableFloatingWindow])
    {
      completionLabel4 = [(SPUIMaskedLabelsStackView *)v3 completionLabel];
      [(NUIContainerStackView *)v3 setCustomSpacing:completionLabel4 afterView:2.0];
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)resetStringOffset
{
  v10[1] = *MEMORY[0x277D85DE8];
  typedString = [(SPUIMaskedLabelsStackView *)self typedString];

  if (typedString)
  {
    typedString2 = [(SPUIMaskedLabelsStackView *)self typedString];
    v9 = *MEMORY[0x277D740A8];
    completionLabel = [(SPUIMaskedLabelsStackView *)self completionLabel];
    font = [completionLabel font];
    v10[0] = font;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [typedString2 sizeWithAttributes:v7];
    [(SPUIMaskedLabelsStackView *)self setCompletionStringOffset:?];

    [(SPUIMaskedLabelsStackView *)self setNeedsLayout];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isRTL
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v3 = [mEMORY[0x277D75128] userInterfaceLayoutDirection] == 1;

  return v3;
}

- (NSDirectionalEdgeInsets)additionalPadding
{
  if ([MEMORY[0x277D4C898] isIpad])
  {
    v2 = 0.0;
    v3 = 4.0;
    v4 = 1.0;
    v5 = 1.0;
  }

  else
  {
    v3 = *MEMORY[0x277D75060];
    v4 = *(MEMORY[0x277D75060] + 8);
    v5 = *(MEMORY[0x277D75060] + 16);
    v2 = *(MEMORY[0x277D75060] + 24);
  }

  result.trailing = v2;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (fontCopy)
  {
    v16 = fontCopy;
    if (([(UIFont *)self->_font isEqual:?]& 1) == 0)
    {
      objc_storeStrong(&self->_font, font);
      completionLabel = [(SPUIMaskedLabelsStackView *)self completionLabel];
      [completionLabel setFont:v16];

      v7 = MEMORY[0x277D74300];
      enableFloatingWindow = [MEMORY[0x277D65D28] enableFloatingWindow];
      v9 = 20.0;
      if ((enableFloatingWindow & 1) == 0)
      {
        [v16 pointSize];
        v9 = v10 + -2.0;
      }

      v11 = [v7 systemFontOfSize:v9];
      extensionLabel = [(SPUIMaskedLabelsStackView *)self extensionLabel];
      [extensionLabel setFont:v11];

      extensionLabel2 = [(SPUIMaskedLabelsStackView *)self extensionLabel];
      font = [extensionLabel2 font];
      bridgeLabel = [(SPUIMaskedLabelsStackView *)self bridgeLabel];
      [bridgeLabel setFont:font];

      [(SPUIMaskedLabelsStackView *)self resetStringOffset];
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)setTypedString:(id)string
{
  stringCopy = string;
  if (stringCopy && ([stringCopy isEqualToString:self->_typedString] & 1) == 0)
  {
    objc_storeStrong(&self->_typedString, string);
    [(SPUIMaskedLabelsStackView *)self resetStringOffset];
  }

  MEMORY[0x2821F96F8]();
}

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  subviewCopy = subview;
  completionLabel = [(SPUIMaskedLabelsStackView *)self completionLabel];

  if (completionLabel != subviewCopy && [MEMORY[0x277D4C898] isIpad])
  {
    y = y + 2.0;
  }

  if ([MEMORY[0x277D4C898] isIpad])
  {
    [MEMORY[0x277D6F1D8] pixelWidthForView:self];
    y = y + v12;
  }

  v13 = x;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__SPUIMaskedLabelsStackView_containerViewDidLayoutArrangedSubviews___block_invoke;
  v3[3] = &unk_279D06C78;
  v3[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v3];
}

void __68__SPUIMaskedLabelsStackView_containerViewDidLayoutArrangedSubviews___block_invoke(uint64_t a1)
{
  [*(a1 + 32) bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [*(a1 + 32) gradientView];
  [v10 setFrame:{v3, v5, v7, v9}];

  [*(a1 + 32) additionalPadding];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [*(a1 + 32) extensionLabel];
  v20 = [v19 font];
  [v20 ascender];
  v22 = v21;
  v23 = [*(a1 + 32) extensionLabel];
  v24 = [v23 font];
  [v24 descender];
  v26 = v22 - v25;

  v27 = MEMORY[0x277D6F1B8];
  v28 = [*(a1 + 32) completionLabel];
  v29 = [v28 font];
  [v29 ascender];
  v31 = v30;
  v32 = [*(a1 + 32) completionLabel];
  v33 = [v32 font];
  [v33 descender];
  [v27 deviceScaledRoundedValue:*(a1 + 32) forView:v31 - v34];
  v36 = v16 + v12 + v35;

  v37 = MEMORY[0x277D6F1B8];
  v38 = [*(a1 + 32) extensionLabel];
  v39 = [v38 font];
  [v39 descender];
  [v37 deviceScaledRoundedValue:*(a1 + 32) forView:(v36 - v26) * 0.5 - v40];
  v42 = v18 + v41;

  v43 = [*(a1 + 32) fillerView];
  [v43 frame];
  v44 = *(a1 + 32);
  if (v45 >= v42)
  {
    [v44 setMaskView:0];
  }

  else
  {
    v46 = [v44 gradientView];
    [*(a1 + 32) setMaskView:v46];
  }

  v47 = [*(a1 + 32) completionLabel];
  [v47 alpha];
  v49 = v48;

  v50 = *(a1 + 32);
  if (v49 == 0.0)
  {
    v68 = [v50 bridgeLabel];
    v69 = [v68 isHidden];

    if (v69)
    {
      v71 = *MEMORY[0x277CBF3A0];
      v70 = *(MEMORY[0x277CBF3A0] + 8);
      v72 = *(MEMORY[0x277CBF3A0] + 16);
      v36 = *(MEMORY[0x277CBF3A0] + 24);
    }

    else
    {
      v74 = [*(a1 + 32) extensionLabel];
      [v74 frame];
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v83 = [*(a1 + 32) bridgeLabel];
      [v83 frame];
      v98.origin.x = v84;
      v98.origin.y = v85;
      v98.size.width = v86;
      v98.size.height = v87;
      v95.origin.x = v76;
      v95.origin.y = v78;
      v95.size.width = v80;
      v95.size.height = v82;
      v96 = CGRectUnion(v95, v98);
      x = v96.origin.x;
      y = v96.origin.y;
      width = v96.size.width;

      v72 = v14 + v42 + width;
      if ([*(a1 + 32) isRTL])
      {
        v71 = x - v42;
      }

      else
      {
        v71 = x;
      }

      v70 = y - v14 - v12;
    }
  }

  else
  {
    v51 = [v50 completionLabel];
    [v51 frame];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v60 = [*(a1 + 32) extensionLabel];
    v61 = [v60 isHidden];

    if ((v61 & 1) == 0)
    {
      v62 = [*(a1 + 32) extensionLabel];
      [v62 frame];
      v97.origin.x = v63;
      v97.origin.y = v64;
      v97.size.width = v65;
      v97.size.height = v66;
      v93.origin.x = v53;
      v93.origin.y = v55;
      v93.size.width = v57;
      v93.size.height = v59;
      v94 = CGRectUnion(v93, v97);
      v53 = v94.origin.x;
      v55 = v94.origin.y;
      v57 = v94.size.width;
    }

    if ([*(a1 + 32) isRTL])
    {
      v67 = -v42;
    }

    else
    {
      [*(a1 + 32) completionStringOffset];
    }

    v71 = v53 + v67 - v14;
    [*(a1 + 32) completionStringOffset];
    v72 = v14 + v42 + v57 - v73;
    v70 = v55 + v12 * -0.5;
  }

  v91 = [*(a1 + 32) extensionLabelProminenceView];
  [v91 setFrame:{v71, v70, v72, v36}];
}

@end