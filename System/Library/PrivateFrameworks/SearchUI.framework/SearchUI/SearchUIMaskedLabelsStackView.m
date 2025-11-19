@interface SearchUIMaskedLabelsStackView
- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5;
- (SearchUIMaskedLabelsStackView)init;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)layoutMasksAndLabels;
- (void)resetStringOffset;
- (void)setFont:(id)a3;
- (void)setTypedString:(id)a3;
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
    v4 = [MEMORY[0x1E69D91A0] primaryLabel];
    completionLabel = v3->_completionLabel;
    v3->_completionLabel = v4;

    [(TLKLabel *)v3->_completionLabel setLineBreakMode:2];
    [(TLKLabel *)v3->_completionLabel setSupportsColorGlyphs:1];
    v6 = [MEMORY[0x1E69D91A0] tertiaryLabel];
    bridgeLabel = v3->_bridgeLabel;
    v3->_bridgeLabel = v6;

    [(TLKLabel *)v3->_bridgeLabel setLineBreakMode:2];
    v8 = [MEMORY[0x1E69D91A0] tertiaryLabel];
    extensionLabel = v3->_extensionLabel;
    v3->_extensionLabel = v8;

    [(TLKLabel *)v3->_extensionLabel setLineBreakMode:2];
    v10 = [(SearchUIMaskedLabelsStackView *)v3 bridgeLabel];
    LODWORD(v11) = 1148846080;
    [v10 setContentHuggingPriority:0 forAxis:v11];

    v12 = [(SearchUIMaskedLabelsStackView *)v3 completionLabel];
    LODWORD(v13) = 1148829696;
    [v12 setContentHuggingPriority:0 forAxis:v13];

    v14 = [(SearchUIMaskedLabelsStackView *)v3 completionLabel];
    LODWORD(v15) = 1148846080;
    [v14 setContentCompressionResistancePriority:0 forAxis:v15];

    v16 = [(SearchUIMaskedLabelsStackView *)v3 extensionLabel];
    LODWORD(v17) = 1148829696;
    [v16 setContentHuggingPriority:0 forAxis:v17];

    v18 = [(SearchUIMaskedLabelsStackView *)v3 extensionLabel];
    LODWORD(v19) = 1132068864;
    [v18 setContentCompressionResistancePriority:0 forAxis:v19];

    v20 = [objc_alloc(MEMORY[0x1E69D91C8]) initWithProminence:3];
    extensionLabelBackgroundView = v3->_extensionLabelBackgroundView;
    v3->_extensionLabelBackgroundView = v20;
    v22 = v20;

    v23 = [(SearchUIMaskedLabelsStackView *)v3 extensionLabelBackgroundView];
    v24 = TLKSpotlightPlusUIEnabled();
    v25 = 2.0;
    if (v24)
    {
      v25 = 10.0;
    }

    [v23 tlks_setCornerRadius:*MEMORY[0x1E69796E8] withStyle:v25];

    v26 = [(SearchUIMaskedLabelsStackView *)v3 extensionLabelBackgroundView];
    [(SearchUIMaskedLabelsStackView *)v3 addSubview:v26];

    [(NUIContainerStackView *)v3 setSpacing:0.0];
    v27 = objc_opt_new();
    [(SearchUIMaskedLabelsStackView *)v3 setGradientView:v27];

    [(SearchUIMaskedLabelsStackView *)v3 setClipsToBounds:1];
    v28 = objc_opt_new();
    [(SearchUIMaskedLabelsStackView *)v3 setFillerView:v28];

    v29 = [(SearchUIMaskedLabelsStackView *)v3 fillerView];
    LODWORD(v30) = 1.0;
    [v29 setContentCompressionResistancePriority:0 forAxis:v30];

    v31 = [(SearchUIMaskedLabelsStackView *)v3 completionLabel];
    v40[0] = v31;
    v32 = [(SearchUIMaskedLabelsStackView *)v3 bridgeLabel];
    v40[1] = v32;
    v33 = [(SearchUIMaskedLabelsStackView *)v3 extensionLabel];
    v40[2] = v33;
    v34 = [(SearchUIMaskedLabelsStackView *)v3 fillerView];
    v40[3] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];

    [(SearchUIMaskedLabelsStackView *)v3 setArrangedSubviews:v35];
    v36 = [(SearchUIMaskedLabelsStackView *)v3 bridgeLabel];
    [(SearchUIMaskedLabelsStackView *)v3 setAlignment:3 forView:v36 inAxis:1];

    v37 = [(SearchUIMaskedLabelsStackView *)v3 extensionLabel];
    [(SearchUIMaskedLabelsStackView *)v3 setAlignment:3 forView:v37 inAxis:1];
  }

  return v3;
}

- (void)setFont:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v17 = v5;
    if (([(UIFont *)self->_font isEqual:?]& 1) == 0)
    {
      objc_storeStrong(&self->_font, a3);
      v6 = [(SearchUIMaskedLabelsStackView *)self completionLabel];
      [v6 setFont:v17];

      v7 = MEMORY[0x1E69DB878];
      v8 = 15.0;
      if (!+[SearchUIUtilities isIpad](SearchUIUtilities, "isIpad") && !+[SearchUIUtilities isLargeIpad])
      {
        [v17 pointSize];
        v8 = v9 + -2.0;
      }

      v10 = [v7 systemFontOfSize:v8];
      v11 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      [v11 setFont:v10];

      v12 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      v13 = [v12 font];
      v14 = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];
      [v14 setFont:v13];

      [(SearchUIMaskedLabelsStackView *)self resetStringOffset];
      v15 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      v16 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      [v16 intrinsicContentSize];
      [v15 setMaximumLayoutSize:3.40282347e38];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)setTypedString:(id)a3
{
  v5 = a3;
  if (v5 && ([v5 isEqualToAttributedString:self->_typedString] & 1) == 0)
  {
    objc_storeStrong(&self->_typedString, a3);
    [(SearchUIMaskedLabelsStackView *)self resetStringOffset];
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)resetStringOffset
{
  v3 = [(SearchUIMaskedLabelsStackView *)self typedString];

  if (v3)
  {
    v4 = [(SearchUIMaskedLabelsStackView *)self typedString];
    [v4 size];
    [(SearchUIMaskedLabelsStackView *)self setCompletionStringOffset:?];

    [(SearchUIMaskedLabelsStackView *)self setNeedsLayout];

    [(SearchUIMaskedLabelsStackView *)self layoutMasksAndLabels];
  }
}

- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
  v12 = v11;
  if (v11 == v10)
  {
  }

  else
  {
    v13 = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];

    if (v13 != v10)
    {
      goto LABEL_7;
    }
  }

  [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:self forView:2.0];
  y = y + v14;
  v15 = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];

  if (v15 == v10)
  {
    x = x + [MEMORY[0x1E69D91A8] isLTR];
  }

LABEL_7:
  v16 = [(SearchUIMaskedLabelsStackView *)self completionLabel];

  if (v16 == v10)
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

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
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
  v11 = [(SearchUIMaskedLabelsStackView *)self gradientView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
  v13 = [v12 font];
  [v13 ascender];
  v15 = v14;
  v16 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
  v17 = [v16 font];
  [v17 descender];
  v19 = v15 - v18;

  v20 = MEMORY[0x1E69D91A8];
  v21 = [(SearchUIMaskedLabelsStackView *)self completionLabel];
  v22 = [v21 font];
  [v22 ascender];
  v24 = v23;
  v25 = [(SearchUIMaskedLabelsStackView *)self completionLabel];
  v26 = [v25 font];
  [v26 descender];
  [v20 deviceScaledRoundedValue:self forView:v24 - v27];
  v29 = v28;

  v30 = MEMORY[0x1E69D91A8];
  v31 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
  v32 = [v31 font];
  [v32 descender];
  [v30 deviceScaledRoundedValue:self forView:(v29 - v19) * 0.5 - v33];
  v35 = v34;

  v36 = MEMORY[0x1E69D91A8];
  [(SearchUIMaskedLabelsStackView *)self completionStringOffset];
  [v36 deviceScaledRoundedValue:self forView:?];
  v38 = v37;
  v39 = [(SearchUIMaskedLabelsStackView *)self fillerView];
  [v39 frame];
  if (v40 >= v35)
  {
    [(SearchUIMaskedLabelsStackView *)self setMaskView:0];
  }

  else
  {
    v41 = [(SearchUIMaskedLabelsStackView *)self gradientView];
    [(SearchUIMaskedLabelsStackView *)self setMaskView:v41];
  }

  v42 = [(SearchUIMaskedLabelsStackView *)self completionLabel];
  [v42 alpha];
  v44 = v43;

  if (v44 == 0.0)
  {
    v81 = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];
    v82 = [v81 isHidden];

    if (v82)
    {
LABEL_41:
      v100 = *MEMORY[0x1E695F058];
      y = *(MEMORY[0x1E695F058] + 8);
      v99 = *(MEMORY[0x1E695F058] + 16);
      v29 = *(MEMORY[0x1E695F058] + 24);
      goto LABEL_42;
    }

    v83 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
    [v83 frame];
    v85 = v84;
    v87 = v86;
    v89 = v88;
    v91 = v90;
    v92 = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];
    [v92 frame];
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

    v101 = [(SearchUIMaskedLabelsStackView *)self extensionLabelBackgroundView];
    v102 = [v101 layer];
    [v102 cornerRadius];
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

    v46 = [(SearchUIMaskedLabelsStackView *)self completionLabel];
    [v46 frame];
    v48 = v47;
    y = v49;
    v52 = v51;
    v54 = v53;

    v55 = [(SearchUIMaskedLabelsStackView *)self completionLabel];
    [v55 intrinsicContentSize];
    v57 = v56;

    if (![MEMORY[0x1E69D91A8] isLTR])
    {
      v48 = v48 + v52 - v57;
    }

    v58 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
    v59 = [v58 isHidden];

    if ((v59 & 1) == 0)
    {
      v60 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      [v60 frame];
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
      v70 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
      if ([v70 isHidden])
      {
        v69 = 0.0;
      }

      else
      {
        v69 = -v35;
      }
    }

    v71 = v57 - v38;
    v72 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
    if ([v72 isHidden])
    {
      v73 = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];
      if ([v73 isHidden])
      {
        v35 = 0.0;
      }
    }

    v74 = v48 + v69;
    v75 = v71 + v35;

    v76 = [(SearchUIMaskedLabelsStackView *)self extensionLabel];
    v29 = v118;
    if ([v76 isHidden])
    {
      v77 = [(SearchUIMaskedLabelsStackView *)self bridgeLabel];
      v78 = [v77 isHidden];

      if (v78)
      {
        v75 = v75 + 4.0;
        v79 = [MEMORY[0x1E69D91A8] isLTR];
        v80 = 0.0;
        if (!v79)
        {
          v80 = 4.0;
        }

        v74 = v74 - v80;
      }
    }

    else
    {
    }

    v105 = [(SearchUIMaskedLabelsStackView *)self extensionLabelBackgroundView];
    v106 = [v105 layer];
    [v106 cornerRadius];
    v99 = v107 + v107;

    if (v75 >= v99)
    {
      v99 = v75;
    }

    v108 = [MEMORY[0x1E69D91A8] isLTR];
    v109 = v75 - v99;
    if (v108)
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
  v119 = [(SearchUIMaskedLabelsStackView *)self extensionLabelBackgroundView];
  [v119 setFrame:{v100, y, v99, v29}];
}

@end