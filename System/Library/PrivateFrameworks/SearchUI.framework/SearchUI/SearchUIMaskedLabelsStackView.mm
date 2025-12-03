@interface SearchUIMaskedLabelsStackView
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame;
- (SearchUIMaskedLabelsStackView)init;
- (void)containerViewDidLayoutArrangedSubviews:(id)subviews;
- (void)layoutMasksAndLabels;
- (void)resetStringOffset;
- (void)setFont:(id)font;
- (void)setTypedString:(id)string;
@end

@implementation SearchUIMaskedLabelsStackView

- (SearchUIMaskedLabelsStackView)init
{
  v40[4] = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = SearchUIMaskedLabelsStackView;
  v2 = [(SearchUIMaskedLabelsStackView *)&v39 init];
  v3 = v2;
  if (v2)
  {
    [(SearchUIMaskedLabelsStackView *)v2 setDelegate:v2];
    [(NUIContainerStackView *)v3 setSpacing:0.0];
    primaryLabel = [MEMORY[0x1E69D91A0] primaryLabel];
    completionLabel = v3->_completionLabel;
    v3->_completionLabel = primaryLabel;

    [(TLKLabel *)v3->_completionLabel setLineBreakMode:2];
    [(TLKLabel *)v3->_completionLabel setSupportsColorGlyphs:1];
    tertiaryLabel = [MEMORY[0x1E69D91A0] tertiaryLabel];
    bridgeLabel = v3->_bridgeLabel;
    v3->_bridgeLabel = tertiaryLabel;

    [(TLKLabel *)v3->_bridgeLabel setLineBreakMode:2];
    tertiaryLabel2 = [MEMORY[0x1E69D91A0] tertiaryLabel];
    extensionLabel = v3->_extensionLabel;
    v3->_extensionLabel = tertiaryLabel2;

    [(TLKLabel *)v3->_extensionLabel setLineBreakMode:2];
    bridgeLabel = [(SearchUIMaskedLabelsStackView *)v3 bridgeLabel];
    LODWORD(v11) = 1148846080;
    [bridgeLabel setContentHuggingPriority:0 forAxis:v11];

    completionLabel = [(SearchUIMaskedLabelsStackView *)v3 completionLabel];
    LODWORD(v13) = 1148829696;
    [completionLabel setContentHuggingPriority:0 forAxis:v13];

    completionLabel2 = [(SearchUIMaskedLabelsStackView *)v3 completionLabel];
    LODWORD(v15) = 1148846080;
    [completionLabel2 setContentCompressionResistancePriority:0 forAxis:v15];

    extensionLabel = [(SearchUIMaskedLabelsStackView *)v3 extensionLabel];
    LODWORD(v17) = 1148829696;
    [extensionLabel setContentHuggingPriority:0 forAxis:v17];

    extensionLabel2 = [(SearchUIMaskedLabelsStackView *)v3 extensionLabel];
    LODWORD(v19) = 1132068864;
    [extensionLabel2 setContentCompressionResistancePriority:0 forAxis:v19];

    v20 = [objc_alloc(MEMORY[0x1E69D91C8]) initWithProminence:3];
    extensionLabelBackgroundView = v3->_extensionLabelBackgroundView;
    v3->_extensionLabelBackgroundView = v20;
    v22 = v20;

    extensionLabelBackgroundView = [(SearchUIMaskedLabelsStackView *)v3 extensionLabelBackgroundView];
    v24 = TLKSpotlightPlusUIEnabled();
    v25 = 2.0;
    if (v24)
    {
      v25 = 10.0;
    }

    [extensionLabelBackgroundView tlks_setCornerRadius:*MEMORY[0x1E69796E8] withStyle:v25];

    extensionLabelBackgroundView2 = [(SearchUIMaskedLabelsStackView *)v3 extensionLabelBackgroundView];
    [(SearchUIMaskedLabelsStackView *)v3 addSubview:extensionLabelBackgroundView2];

    [(NUIContainerStackView *)v3 setSpacing:0.0];
    v27 = objc_opt_new();
    [(SearchUIMaskedLabelsStackView *)v3 setGradientView:v27];

    [(SearchUIMaskedLabelsStackView *)v3 setClipsToBounds:1];
    v28 = objc_opt_new();
    [(SearchUIMaskedLabelsStackView *)v3 setFillerView:v28];

    fillerView = [(SearchUIMaskedLabelsStackView *)v3 fillerView];
    LODWORD(v30) = 1.0;
    [fillerView setContentCompressionResistancePriority:0 forAxis:v30];

    completionLabel3 = [(SearchUIMaskedLabelsStackView *)v3 completionLabel];
    v40[0] = completionLabel3;
    bridgeLabel2 = [(SearchUIMaskedLabelsStackView *)v3 bridgeLabel];
    v40[1] = bridgeLabel2;
    extensionLabel3 = [(SearchUIMaskedLabelsStackView *)v3 extensionLabel];
    v40[2] = extensionLabel3;
    fillerView2 = [(SearchUIMaskedLabelsStackView *)v3 fillerView];
    v40[3] = fillerView2;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];

    [(SearchUIMaskedLabelsStackView *)v3 setArrangedSubviews:v35];
    bridgeLabel3 = [(SearchUIMaskedLabelsStackView *)v3 bridgeLabel];
    [(SearchUIMaskedLabelsStackView *)v3 setAlignment:3 forView:bridgeLabel3 inAxis:1];

    extensionLabel4 = [(SearchUIMaskedLabelsStackView *)v3 extensionLabel];
    [(SearchUIMaskedLabelsStackView *)v3 setAlignment:3 forView:extensionLabel4 inAxis:1];
  }

  return v3;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if (fontCopy)
  {
    v17 = fontCopy;
    if (([(UIFont *)self->_font isEqual:?]& 1) == 0)
    {
      objc_storeStrong(&self->_font, font);
      completionLabel = [(SearchUIMaskedLabelsStackView *)self completionLabel];
      [completionLabel setFont:v17];

      v7 = MEMORY[0x1E69DB878];
      v8 = 15.0;
      if (!+[SearchUIUtilities isIpad](SearchUIUtilities, "isIpad") && !+[SearchUIUtilities isLargeIpad])
      {
        [v17 pointSize];
        v8 = v9 + -2.0;
      }

      v10 = [v7 systemFontOfSize:v8];
      extensionLabel = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      [extensionLabel setFont:v10];

      extensionLabel2 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      font = [extensionLabel2 font];
      bridgeLabel = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];
      [bridgeLabel setFont:font];

      [(SearchUIMaskedLabelsStackView *)self resetStringOffset];
      extensionLabel3 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      extensionLabel4 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      [extensionLabel4 intrinsicContentSize];
      [extensionLabel3 setMaximumLayoutSize:3.40282347e38];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)setTypedString:(id)string
{
  stringCopy = string;
  if (stringCopy && ([stringCopy isEqualToAttributedString:self->_typedString] & 1) == 0)
  {
    objc_storeStrong(&self->_typedString, string);
    [(SearchUIMaskedLabelsStackView *)self resetStringOffset];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)resetStringOffset
{
  typedString = [(SearchUIMaskedLabelsStackView *)self typedString];

  if (typedString)
  {
    typedString2 = [(SearchUIMaskedLabelsStackView *)self typedString];
    [typedString2 size];
    [(SearchUIMaskedLabelsStackView *)self setCompletionStringOffset:?];

    [(SearchUIMaskedLabelsStackView *)self setNeedsLayout];

    [(SearchUIMaskedLabelsStackView *)self layoutMasksAndLabels];
  }
}

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  subviewCopy = subview;
  extensionLabel = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
  v12 = extensionLabel;
  if (extensionLabel == subviewCopy)
  {
  }

  else
  {
    bridgeLabel = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];

    if (bridgeLabel != subviewCopy)
    {
      goto LABEL_7;
    }
  }

  [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:self forView:2.0];
  y = y + v14;
  bridgeLabel2 = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];

  if (bridgeLabel2 == subviewCopy)
  {
    x = x + [MEMORY[0x1E69D91A8] isLTR];
  }

LABEL_7:
  completionLabel = [(SearchUIMaskedLabelsStackView *)self completionLabel];

  if (completionLabel == subviewCopy)
  {
    width = 2000.0;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)containerViewDidLayoutArrangedSubviews:(id)subviews
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __72__SearchUIMaskedLabelsStackView_containerViewDidLayoutArrangedSubviews___block_invoke;
  v3[3] = &unk_1E85B24C8;
  v3[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v3];
}

- (void)layoutMasksAndLabels
{
  [(SearchUIMaskedLabelsStackView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  gradientView = [(SearchUIMaskedLabelsStackView *)self gradientView];
  [gradientView setFrame:{v4, v6, v8, v10}];

  extensionLabel = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
  font = [extensionLabel font];
  [font ascender];
  v15 = v14;
  extensionLabel2 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
  font2 = [extensionLabel2 font];
  [font2 descender];
  v19 = v15 - v18;

  v20 = MEMORY[0x1E69D91A8];
  completionLabel = [(SearchUIMaskedLabelsStackView *)self completionLabel];
  font3 = [completionLabel font];
  [font3 ascender];
  v24 = v23;
  completionLabel2 = [(SearchUIMaskedLabelsStackView *)self completionLabel];
  font4 = [completionLabel2 font];
  [font4 descender];
  [v20 deviceScaledRoundedValue:self forView:v24 - v27];
  v29 = v28;

  v30 = MEMORY[0x1E69D91A8];
  extensionLabel3 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
  font5 = [extensionLabel3 font];
  [font5 descender];
  [v30 deviceScaledRoundedValue:self forView:(v29 - v19) * 0.5 - v33];
  v35 = v34;

  v36 = MEMORY[0x1E69D91A8];
  [(SearchUIMaskedLabelsStackView *)self completionStringOffset];
  [v36 deviceScaledRoundedValue:self forView:?];
  v38 = v37;
  fillerView = [(SearchUIMaskedLabelsStackView *)self fillerView];
  [fillerView frame];
  if (v40 >= v35)
  {
    [(SearchUIMaskedLabelsStackView *)self setMaskView:0];
  }

  else
  {
    gradientView2 = [(SearchUIMaskedLabelsStackView *)self gradientView];
    [(SearchUIMaskedLabelsStackView *)self setMaskView:gradientView2];
  }

  completionLabel3 = [(SearchUIMaskedLabelsStackView *)self completionLabel];
  [completionLabel3 alpha];
  v44 = v43;

  if (v44 == 0.0)
  {
    bridgeLabel = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];
    isHidden = [bridgeLabel isHidden];

    if (isHidden)
    {
LABEL_41:
      v100 = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      v99 = *(MEMORY[0x1E695F058] + 16);
      v29 = *(MEMORY[0x1E695F058] + 24);
      goto LABEL_42;
    }

    extensionLabel4 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
    [extensionLabel4 frame];
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    bridgeLabel2 = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];
    [bridgeLabel2 frame];
    v131.origin.x = v93;
    v131.origin.y = v94;
    v131.size.width = v95;
    v131.size.height = v96;
    v125.origin.x = v85;
    v125.origin.y = v87;
    v125.size.width = v89;
    v125.size.height = v91;
    v126 = CGRectUnion(v125, v131);
    x = v126.origin.x;
    y = v126.origin.y;
    width = v126.size.width;

    v99 = v35 + width;
    if ([MEMORY[0x1E69D91A8] isLTR])
    {
      v100 = x;
    }

    else
    {
      v100 = x - v35;
    }

    extensionLabelBackgroundView = [(SearchUIMaskedLabelsStackView *)self extensionLabelBackgroundView];
    layer = [extensionLabelBackgroundView layer];
    [layer cornerRadius];
    v104 = v103 + v103;

    if (v99 < v104)
    {
      v99 = v104;
    }
  }

  else
  {
    v118 = v29;
    if ([MEMORY[0x1E69D9240] isMacOS])
    {
      v45 = 2.0;
    }

    else
    {
      v45 = 0.0;
    }

    completionLabel4 = [(SearchUIMaskedLabelsStackView *)self completionLabel];
    [completionLabel4 frame];
    v48 = v47;
    y = v49;
    v52 = v51;
    v54 = v53;

    completionLabel5 = [(SearchUIMaskedLabelsStackView *)self completionLabel];
    [completionLabel5 intrinsicContentSize];
    v57 = v56;

    if (![MEMORY[0x1E69D91A8] isLTR])
    {
      v48 = v48 + v52 - v57;
    }

    extensionLabel5 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
    isHidden2 = [extensionLabel5 isHidden];

    if ((isHidden2 & 1) == 0)
    {
      extensionLabel6 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      [extensionLabel6 frame];
      v130.origin.x = v61;
      v130.origin.y = v62;
      v130.size.width = v63;
      v130.size.height = v64;
      v121.origin.x = v48;
      v121.origin.y = y;
      v121.size.width = v57;
      v121.size.height = v54;
      v122 = CGRectUnion(v121, v130);
      v65 = v122.origin.x;
      v66 = v122.origin.y;
      v67 = v122.size.width;
      height = v122.size.height;

      v123.origin.x = v65;
      v123.origin.y = v66;
      v123.size.width = v67;
      v123.size.height = height;
      v124 = CGRectInset(v123, v45, 0.0);
      v48 = v124.origin.x;
      y = v124.origin.y;
      v57 = v124.size.width;
    }

    v69 = v38;
    if (([MEMORY[0x1E69D91A8] isLTR] & 1) == 0)
    {
      extensionLabel7 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      if ([extensionLabel7 isHidden])
      {
        v69 = 0.0;
      }

      else
      {
        v69 = -v35;
      }
    }

    v71 = v57 - v38;
    extensionLabel8 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
    if ([extensionLabel8 isHidden])
    {
      bridgeLabel3 = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];
      if ([bridgeLabel3 isHidden])
      {
        v35 = 0.0;
      }
    }

    v74 = v48 + v69;
    v75 = v71 + v35;

    extensionLabel9 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
    v29 = v118;
    if ([extensionLabel9 isHidden])
    {
      bridgeLabel4 = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];
      isHidden3 = [bridgeLabel4 isHidden];

      if (isHidden3)
      {
        v75 = v75 + 4.0;
        isLTR = [MEMORY[0x1E69D91A8] isLTR];
        v80 = 0.0;
        if (!isLTR)
        {
          v80 = 4.0;
        }

        v74 = v74 - v80;
      }
    }

    else
    {
    }

    extensionLabelBackgroundView2 = [(SearchUIMaskedLabelsStackView *)self extensionLabelBackgroundView];
    layer2 = [extensionLabelBackgroundView2 layer];
    [layer2 cornerRadius];
    v99 = v107 + v107;

    if (v75 >= v99)
    {
      v99 = v75;
    }

    isLTR2 = [MEMORY[0x1E69D91A8] isLTR];
    v109 = v75 - v99;
    if (isLTR2)
    {
      v109 = 0.0;
    }

    v100 = v74 + v109;
    [(SearchUIMaskedLabelsStackView *)self bounds];
    v132.origin.x = v110;
    v132.origin.y = v111;
    v132.size.width = v112;
    v132.size.height = v113;
    v127.origin.x = v100;
    v127.origin.y = y;
    v127.size.width = v99;
    v127.size.height = v118;
    if (CGRectIntersectsRect(v127, v132))
    {
      [(SearchUIMaskedLabelsStackView *)self bounds];
      v133.origin.x = v114;
      v133.origin.y = v115;
      v133.size.width = v116;
      v133.size.height = v117;
      v128.origin.x = v100;
      v128.origin.y = y;
      v128.size.width = v99;
      v128.size.height = v118;
      v129 = CGRectIntersection(v128, v133);
      v100 = v129.origin.x;
      y = v129.origin.y;
      v99 = v129.size.width;
      v29 = v129.size.height;
    }

    if (v99 <= v45)
    {
      goto LABEL_41;
    }
  }

LABEL_42:
  extensionLabelBackgroundView3 = [(SearchUIMaskedLabelsStackView *)self extensionLabelBackgroundView];
  [extensionLabelBackgroundView3 setFrame:{v100, y, v99, v29}];
}

@end