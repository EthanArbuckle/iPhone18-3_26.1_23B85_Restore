@interface TLKTextAreaView
+ (id)footNoteLabelFont;
- (TLKTextAreaViewDelegate)buttonDelegate;
- (id)detailsStrings;
- (id)footnoteLabelString;
- (id)secondaryTitleLabelString;
- (id)setupContentView;
- (id)titleLabelString;
- (id)viewForFirstBaselineLayout;
- (id)viewForLastBaselineLayout;
- (void)insertDetailsStackViewIfNeeded;
- (void)internalTextFieldsInBatchUpdate:(BOOL)a3;
- (void)performBatchUpdates:(id)a3;
- (void)propertiesDidChange;
- (void)setAccessoryView:(id)a3;
- (void)setBannerText:(id)a3;
- (void)setDetailTexts:(id)a3;
- (void)setFootnote:(id)a3;
- (void)setFootnoteButtonText:(id)a3;
- (void)setSecondaryTitle:(id)a3;
- (void)setSecondaryTitleImage:(id)a3;
- (void)setSecondaryTitleIsDetached:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTopText:(id)a3;
- (void)setTruncateTitleMiddle:(BOOL)a3;
- (void)setUseCompactMode:(BOOL)a3;
- (void)updateBannerBadge;
- (void)updateDetailFieldStackViewVisibility;
- (void)updateDetails;
- (void)updateFootnote;
@end

@implementation TLKTextAreaView

- (id)setupContentView
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(TLKTextAreaView *)self setTitleContainer:v3];

  v4 = [(TLKTextAreaView *)self titleContainer];
  [TLKLayoutUtilities requireIntrinsicSizeForView:v4];

  v5 = objc_opt_new();
  [(TLKTextAreaView *)self setDetailFieldAndFootnoteStackView:v5];

  v6 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  [v6 setAxis:1];

  v7 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  [v7 setArrangedSubviewRemovalPolicy:1];

  v8 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  [v8 setArrangedSubviewAdditionPolicy:1];

  v9 = objc_alloc(MEMORY[0x1E698B730]);
  v10 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  v21[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v12 = [v9 initWithArrangedSubviews:v11];

  [v12 setSpacing:10.0];
  [TLKView makeContainerShadowCompatible:v12];
  [(TLKTextAreaView *)self setDetailFieldFootnoteAndAccessoryStackView:v12];
  v13 = [TLKStackView alloc];
  v14 = [(TLKTextAreaView *)self titleContainer];
  v20[0] = v14;
  v20[1] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v16 = [(NUIContainerStackView *)v13 initWithArrangedSubviews:v15];

  [(TLKStackView *)v16 setDelegate:self];
  [(TLKStackView *)v16 setAlignment:0 forView:v12 inAxis:0];
  [TLKView makeContainerShadowCompatible:v16];
  v17 = objc_opt_new();
  [(TLKTextAreaView *)self setDetailsFields:v17];

  v18 = objc_opt_new();
  [(TLKTextAreaView *)self setBulletFields:v18];

  return v16;
}

- (void)propertiesDidChange
{
  if (+[TLKUtilities isMacOS])
  {
    v3 = [(TLKTextAreaView *)self useCompactMode]^ 1;
  }

  else
  {
    v3 = 1;
  }

  v4 = [(TLKView *)self contentView];
  [v4 setAxis:v3];

  v5 = [(TLKView *)self contentView];
  if ([v5 axis])
  {
    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  v7 = [(TLKView *)self contentView];
  [v7 setAlignment:v6];

  v8 = [(TLKView *)self contentView];
  if ([v8 axis])
  {
    v9 = 1;
  }

  else
  {
    v9 = 5;
  }

  v10 = [(TLKView *)self contentView];
  [v10 setAlignment:v9];

  v40 = [(TLKTextAreaView *)self topTextField];
  v11 = [(TLKTextAreaView *)self topText];

  if (v11 && !v40)
  {
    v40 = objc_opt_new();
    [v40 setProminence:1];
    v12 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDD10] isShort:0 isBold:1];
    [v40 setFont:v12];

    [v40 setScaleIconsToFont:1];
    v13 = [(TLKView *)self contentView];
    [v13 insertArrangedSubview:v40 atIndex:0];

    v14 = [(TLKView *)self contentView];
    [TLKLayoutUtilities deviceScaledRoundedValue:self forView:2.5];
    [v14 setCustomSpacing:v40 afterView:?];

    [(TLKTextAreaView *)self setTopTextField:v40];
  }

  v15 = [(TLKTextAreaView *)self topText];
  [v40 setRichText:v15];

  v16 = [(TLKTextAreaView *)self topText];
  [v40 setHidden:v16 == 0];

  v17 = [(TLKTextAreaView *)self titleContainer];
  v18 = [(TLKTextAreaView *)self title];
  v19 = [(TLKTextAreaView *)self secondaryTitle];
  v20 = [(TLKTextAreaView *)self secondaryTitleImage];
  [v17 updateResultWithTitle:v18 secondaryTitle:v19 image:v20 detached:-[TLKTextAreaView secondaryTitleIsDetached](self useCompactMode:"secondaryTitleIsDetached") truncateMiddle:{-[TLKTextAreaView useCompactMode](self, "useCompactMode"), -[TLKTextAreaView truncateTitleMiddle](self, "truncateTitleMiddle")}];

  v21 = [(TLKView *)self contentView];
  v22 = [(TLKTextAreaView *)self secondaryTitle];
  v23 = [(TLKTextAreaView *)self titleContainer];
  [v21 setAlignment:v22 == 0 forView:v23 inAxis:0];

  [(TLKTextAreaView *)self updateBannerBadge];
  [(TLKTextAreaView *)self updateDetails];
  [(TLKTextAreaView *)self updateFootnote];
  v24 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
  v25 = [v24 arrangedSubviews];

  v26 = 0;
  if ([v25 count] >= 2)
  {
    v26 = [v25 lastObject];
  }

  v27 = [(TLKTextAreaView *)self accessoryView];
  if (v26 != v27)
  {
    if (v26)
    {
      v28 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
      [v28 removeArrangedSubview:v26];
    }

    if (v27)
    {
      [v27 setCustomAlignmentRectInsets:{-2.0, 0.0, 0.0, 0.0}];
      [(TLKTextAreaView *)self insertDetailsStackViewIfNeeded];
      v29 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
      [v29 addArrangedSubview:v27];
    }
  }

  v30 = [(TLKTextAreaView *)self detailsFields];
  v31 = [v30 firstObject];

  v32 = 3.0;
  if (!+[TLKUtilities isMacOS])
  {
    v32 = 1.0;
    if (TLKBiggerSuggestionsLayoutEnabled())
    {
      [TLKLayoutUtilities deviceScaledRoundedValue:self forView:1.5];
      v32 = v33;
    }
  }

  if (+[TLKUtilities isMacOS])
  {
    if (TLKSpotlightPlusUIEnabled())
    {
      v34 = 0.5;
    }

    else
    {
      v34 = 2.0;
    }
  }

  else
  {
    v34 = 1.7;
  }

  v35 = [(TLKView *)self contentView];
  if (![(TLKTextAreaView *)self useCompactMode])
  {
    v32 = 5.0;
    if (![TLKUtilities isHiddenView:v31])
    {
      [TLKLayoutUtilities deviceScaledRoundedValue:self forView:v34];
      v32 = v36;
    }
  }

  v37 = [(TLKTextAreaView *)self titleContainer];
  [v35 setCustomSpacing:v37 afterView:v32];

  [(TLKTextAreaView *)self updateDetailFieldStackViewVisibility];
  if ([(TLKTextAreaView *)self isAccessoryViewBottomAligned])
  {
    v38 = 4;
  }

  else
  {
    v38 = 1;
  }

  v39 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
  [v39 setAlignment:v38];
}

- (void)updateBannerBadge
{
  v13 = [(TLKTextAreaView *)self bannerText];
  if (v13)
  {
    v3 = [(TLKTextAreaView *)self bannerBadgeView];

    if (!v3)
    {
      v4 = objc_opt_new();
      [(TLKTextAreaView *)self setBannerBadgeView:v4];

      v5 = [(TLKView *)self contentView];
      v6 = [(TLKTextAreaView *)self bannerBadgeView];
      [v5 insertArrangedSubview:v6 atIndex:0];

      v7 = [(TLKView *)self contentView];
      v8 = [(TLKTextAreaView *)self bannerBadgeView];
      [v7 setCustomSpacing:v8 afterView:4.0];

      v9 = [(TLKTextAreaView *)self bannerBadgeView];
      [TLKLayoutUtilities requireIntrinsicSizeForView:v9];
    }
  }

  v10 = [(TLKTextAreaView *)self bannerBadgeView];
  v11 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDD10] isShort:0 isBold:1];
  [v10 setText:v13 font:v11 customInsetSize:1 badge:{4.0, 2.0}];

  v12 = [(TLKTextAreaView *)self bannerBadgeView];
  [v12 setHidden:v13 == 0];
}

- (void)updateDetails
{
  v2 = self;
  v118 = *MEMORY[0x1E69E9840];
  v3 = [(TLKTextAreaView *)self detailTexts];
  v4 = 0x1E7FD8000uLL;
  if (![v3 count])
  {
    goto LABEL_39;
  }

  v101 = 0;
  v5 = 0;
  v6 = *MEMORY[0x1E69DDD80];
  v97 = *MEMORY[0x1E69DDDC8];
  v99 = *MEMORY[0x1E69DDD00];
  v7 = *MEMORY[0x1E69DDD10];
  v95 = -1;
  do
  {
    [(TLKTextAreaView *)v2 insertDetailsStackViewIfNeeded];
    v8 = [(TLKTextAreaView *)v2 detailsFields];
    v9 = [v8 count];

    if (v5 >= v9)
    {
      v11 = objc_opt_new();
      v10 = [(TLKTextAreaView *)v2 detailsFields];
      [v10 addObject:v11];
    }

    else
    {
      v10 = [(TLKTextAreaView *)v2 detailsFields];
      v11 = [v10 objectAtIndexedSubscript:v5];
    }

    [v11 setUseCompactMode:{-[TLKTextAreaView useCompactMode](v2, "useCompactMode")}];
    v12 = [v3 objectAtIndexedSubscript:v5];
    if ([(TLKTextAreaView *)v2 useCompactMode])
    {
      [v12 setMaxLines:1];
    }

    [v11 setRichText:v12];
    if ([(TLKTextAreaView *)v2 useCompactMode])
    {
      if (TLKBiggerSuggestionsLayoutEnabled())
      {
        v13 = v6;
      }

      else
      {
        v13 = v7;
      }

      v14 = v13;
      if ([*(v4 + 1824) isMacOS])
      {
        v15 = [(TLKTextAreaView *)v2 titleContainer];
        v16 = [v15 titleFont];

        v4 = 0x1E7FD8000;
      }

      else
      {
        v16 = [TLKFontUtilities cachedFontForTextStyle:v14 isShort:0 isBold:0];
      }
    }

    else
    {
      if ([*(v4 + 1824) isMacOS])
      {
        if (TLKSpotlightPlusUIEnabled())
        {
          v17 = v97;
        }

        else
        {
          v17 = v99;
        }

        v18 = [TLKFontUtilities cachedFontForMacTextStyle:v17];
      }

      else
      {
        v18 = [TLKFontUtilities cachedFontForTextStyle:v6];
      }

      v16 = v18;
    }

    [v11 setFont:v16];
    if ([(TLKTextAreaView *)v2 useCompactMode])
    {
      v19 = [v12 stars];
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v21 = [v12 text];
        v22 = [v21 length];

        v23 = v22 >= v101;
        v4 = 0x1E7FD8000uLL;
        if (!v23)
        {
          goto LABEL_30;
        }

        v20 = [v12 text];
        v101 = [v20 length];
        v95 = v5;
      }

LABEL_30:
      v24 = [v12 stars];
      if (v24)
      {
        *&v25 = 1000.0;
      }

      else
      {
        *&v25 = 750.0;
      }

      [v11 setContentCompressionResistancePriority:0 forAxis:v25];

      v26 = [v3 count];
      LODWORD(v27) = 1132068864;
      if (v5 != v26 - 1)
      {
        *&v27 = 1000.0;
      }

      [v11 setContentHuggingPriority:0 forAxis:v27];
    }

    ++v5;
  }

  while (v5 < [v3 count]);
  if (v95 > 0)
  {
    v28 = [(TLKTextAreaView *)v2 detailsFields];
    v29 = [v28 objectAtIndexedSubscript:v95];
    LODWORD(v30) = 1132068864;
    [v29 setContentCompressionResistancePriority:0 forAxis:v30];
  }

LABEL_39:
  v31 = objc_opt_new();
  if ([*(v4 + 1824) isMacOS])
  {
    if ([(TLKTextAreaView *)v2 useCompactMode])
    {
      v32 = 2;
    }

    else if (TLKSpotlightPlusUIEnabled())
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }
  }

  else
  {
    v32 = 1;
  }

  v98 = v31;
  if ([*(v4 + 1824) isMacOS])
  {
    v33 = [(TLKTextAreaView *)v2 detailTexts];
    if (![v33 count])
    {
      goto LABEL_52;
    }

    v34 = [(TLKTextAreaView *)v2 useCompactMode];

    v31 = v98;
    if (v34)
    {
      v35 = [(TLKTextAreaView *)v2 hyphenField];

      if (!v35)
      {
        v36 = [[TLKLabel alloc] initWithProminence:v32];
        [(TLKTextAreaView *)v2 setHyphenField:v36];

        v37 = [(TLKTextAreaView *)v2 hyphenField];
        [v37 setText:@"—"];
      }

      v38 = [(TLKTextAreaView *)v2 hyphenField];
      [v98 addObject:v38];

      v33 = [(TLKTextAreaView *)v2 hyphenField];
      [TLKLayoutUtilities requireIntrinsicSizeForView:v33];
LABEL_52:

      v31 = v98;
    }
  }

  v100 = objc_opt_new();
  v39 = [(TLKTextAreaView *)v2 detailsFields];
  v40 = [v39 count];

  if (v40)
  {
    v41 = 0;
    do
    {
      v42 = [v3 count];
      v43 = [(TLKTextAreaView *)v2 detailsFields];
      v44 = [v43 objectAtIndexedSubscript:v41];

      [v44 setHidden:v41 >= v42];
      if (v41 < v42)
      {
        [v44 setProminence:v32];
        [v100 addObject:v44];
        [v31 addObject:v44];
        if ([(TLKTextAreaView *)v2 useCompactMode])
        {
          if (v41 != [v3 count] - 1)
          {
            v45 = [(TLKTextAreaView *)v2 bulletFields];
            v46 = [v45 count];

            if (v41 >= v46)
            {
              v48 = [[TLKLabel alloc] initWithProminence:v32];
              v49 = [v44 font];
              [(TLKLabel *)v48 setFont:v49];

              [(TLKLabel *)v48 setText:@"·"];
              [TLKLayoutUtilities requireIntrinsicSizeForView:v48];
              v47 = [(TLKTextAreaView *)v2 bulletFields];
              [v47 addObject:v48];
            }

            else
            {
              [0 setProminence:v32];
              v47 = [(TLKTextAreaView *)v2 bulletFields];
              v48 = [v47 objectAtIndexedSubscript:v41];
            }

            [v31 addObject:v48];
          }
        }
      }

      ++v41;
      v50 = [(TLKTextAreaView *)v2 detailsFields];
      v51 = [v50 count];
    }

    while (v41 < v51);
  }

  v52 = [(TLKTextAreaView *)v2 detailFieldStackView];
  [v52 setArrangedSubviews:v31];

  [(TLKTextAreaView *)v2 updateDetailFieldStackViewVisibility];
  v53 = [(TLKTextAreaView *)v2 useCompactMode]^ 1;
  v54 = [(TLKTextAreaView *)v2 detailFieldStackView];
  [v54 setAxis:v53];

  if ([(TLKTextAreaView *)v2 useCompactMode])
  {
    v55 = 5;
  }

  else
  {
    v55 = 1;
  }

  v56 = [(TLKTextAreaView *)v2 detailFieldStackView];
  [v56 setAlignment:v55];

  if (+[TLKUtilities isMacOS])
  {
    v57 = 0.0;
  }

  else
  {
    v57 = 2.0;
  }

  if ([(TLKTextAreaView *)v2 useCompactMode])
  {
    v58 = 3.0;
  }

  else
  {
    v58 = v57;
  }

  v59 = [(TLKTextAreaView *)v2 detailFieldStackView];
  [v59 setSpacing:v58];

  if (+[TLKUtilities isMacOS])
  {
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v60 = v31;
    v61 = [v60 countByEnumeratingWithState:&v111 objects:v117 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v112;
      v64 = *MEMORY[0x1E698B6F8];
      do
      {
        for (i = 0; i != v62; ++i)
        {
          if (*v112 != v63)
          {
            objc_enumerationMutation(v60);
          }

          v66 = *(*(&v111 + 1) + 8 * i);
          v67 = [(TLKTextAreaView *)v2 detailFieldStackView];
          [v67 setCustomSpacing:v66 afterView:v64];
        }

        v62 = [v60 countByEnumeratingWithState:&v111 objects:v117 count:16];
      }

      while (v62);
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v68 = v60;
    v69 = [v68 countByEnumeratingWithState:&v107 objects:v116 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = 0;
      v72 = *v108;
      v73 = TLKProminenceView;
      do
      {
        v74 = 0;
        v102 = v70;
        do
        {
          v75 = v71;
          if (*v108 != v72)
          {
            objc_enumerationMutation(v68);
          }

          v76 = *(*(&v107 + 1) + 8 * v74);
          if (([v76 isHidden] & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v76 richText];
              v77 = v72;
              v78 = v2;
              v79 = v68;
              v81 = v80 = v73;
              v82 = [v81 icons];
              v83 = [v82 count];

              v73 = v80;
              v68 = v79;
              v2 = v78;
              v72 = v77;
              v70 = v102;
              if (v83 == 1)
              {
                v84 = [(TLKTextAreaView *)v2 detailFieldStackView];
                [v84 setCustomSpacing:v75 afterView:v57];

                v85 = [(TLKTextAreaView *)v2 detailFieldStackView];
                [v85 setCustomSpacing:v76 afterView:3.0];
              }
            }
          }

          v71 = v76;

          ++v74;
        }

        while (v70 != v74);
        v70 = [v68 countByEnumeratingWithState:&v107 objects:v116 count:16];
      }

      while (v70);
    }

    else
    {
      v71 = 0;
    }
  }

  else
  {
    v71 = 0;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v86 = v100;
  v87 = [v86 countByEnumeratingWithState:&v103 objects:v115 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v104;
    do
    {
      for (j = 0; j != v88; ++j)
      {
        if (*v104 != v89)
        {
          objc_enumerationMutation(v86);
        }

        v91 = *(*(&v103 + 1) + 8 * j);
        if ([(TLKTextAreaView *)v2 useCompactMode])
        {
          v92 = [v91 viewForLastBaselineLayout];
          v93 = [v91 alignmentForView:v92 inAxis:1];

          if (v93 == -1)
          {
            v93 = [v91 alignment];
          }
        }

        else
        {
          v93 = -1;
        }

        v94 = [(TLKTextAreaView *)v2 detailFieldStackView];
        [v94 setAlignment:v93 forView:v91 inAxis:1];
      }

      v88 = [v86 countByEnumeratingWithState:&v103 objects:v115 count:16];
    }

    while (v88);
  }
}

- (void)updateDetailFieldStackViewVisibility
{
  v3 = [(TLKTextAreaView *)self detailFieldStackView];
  v4 = [v3 visibleArrangedSubviews];
  if ([v4 count])
  {
    if ([(TLKTextAreaView *)self useCompactMode])
    {
      v5 = [(TLKTextAreaView *)self isHorizontallyCompressed];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  v6 = [(TLKTextAreaView *)self detailFieldStackView];
  [v6 setHidden:v5];

  v7 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  v8 = [v7 visibleArrangedSubviews];
  v9 = [v8 count] == 0;
  v10 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  [v10 setHidden:v9];

  v14 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
  v11 = [v14 visibleArrangedSubviews];
  v12 = [v11 count] == 0;
  v13 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
  [v13 setHidden:v12];
}

- (void)updateFootnote
{
  v4 = [(TLKTextAreaView *)self footnote];
  v5 = [(TLKTextAreaView *)self footnoteButtonText];
  if (v4 | v5)
  {
    v6 = [(TLKTextAreaView *)self footnoteContainer];

    if (!v6)
    {
      v7 = objc_opt_new();
      [(TLKTextAreaView *)self setFootnoteContainer:v7];

      v8 = [(TLKTextAreaView *)self footnoteContainer];
      [v8 setAlignment:5];

      v9 = objc_opt_new();
      [(TLKTextAreaView *)self setFootnoteLabel:v9];
      v10 = [(TLKTextAreaView *)self footnoteContainer];
      [v10 addArrangedSubview:v9];

      v11 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
      v12 = [(TLKTextAreaView *)self footnoteContainer];
      [v11 addArrangedSubview:v12];
    }

    v13 = TLKBiggerSuggestionsLayoutEnabled();
    v14 = MEMORY[0x1E69DDD80];
    if (!v13)
    {
      v14 = MEMORY[0x1E69DDD10];
    }

    v15 = *v14;
    if ([(TLKTextAreaView *)self useCompactMode])
    {
      [TLKFontUtilities cachedFontForTextStyle:v15];
    }

    else
    {
      [objc_opt_class() footNoteLabelFont];
    }
    v16 = ;
    v17 = [(TLKTextAreaView *)self footnoteLabel];
    [v17 setFont:v16];

    if (v5)
    {
      v18 = [(TLKTextAreaView *)self footnoteButton];

      if (!v18)
      {
        v19 = objc_opt_new();
        v20 = [(TLKTextAreaView *)self buttonDelegate];
        [v19 addTarget:v20 action:sel_footnoteButtonPressed];

        [v19 setProminence:3];
        [v19 setMatchesHeightForAlignmentRectWithIntrinsicContentSize:1];
        if (+[TLKLayoutUtilities isLTR])
        {
          v21 = 2;
        }

        else
        {
          v21 = 0;
        }

        v22 = [v19 titleLabel];
        [v22 setTextAlignment:v21];

        [TLKLayoutUtilities requireIntrinsicSizeForView:v19];
        [(TLKTextAreaView *)self setFootnoteButton:v19];
        v23 = [(TLKTextAreaView *)self footnoteContainer];
        v2 = [(TLKTextAreaView *)self footnoteButton];
        [v23 addArrangedSubview:v2];
      }
    }

    v24 = [(TLKTextAreaView *)self footnoteButton];
    [v24 setFont:v16];

    v25 = [(TLKTextAreaView *)self footnoteButton];

    if (v25)
    {
      v26 = v15;
      if (v5)
      {
        v25 = [(TLKTextAreaView *)self buttonDelegate];
        if (objc_opt_respondsToSelector())
        {
          v27 = [(TLKTextAreaView *)self buttonDelegate];
          v2 = [(TLKTextAreaView *)self footnoteButton];
          v48 = v27;
          v28 = [v27 configureMenuForFootnoteButton:v2];
          v29 = 1;
        }

        else
        {
          v29 = 0;
          v28 = 0;
        }
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      v30 = [(TLKTextAreaView *)self footnoteButton];
      [v30 setShowsMenuAsPrimaryAction:v28];

      if (v29)
      {
      }

      v15 = v26;
      if (v5)
      {
      }
    }

    v31 = [(TLKTextAreaView *)self footnoteButton];
    [v31 setTitle:v5];

    v32 = [(TLKTextAreaView *)self footnoteLabel];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __33__TLKTextAreaView_updateFootnote__block_invoke;
    v49[3] = &unk_1E7FD8DA8;
    v49[4] = self;
    v50 = v4;
    [v32 performBatchUpdates:v49];

    v33 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
    v34 = [(TLKTextAreaView *)self footnoteContainer];
    [v33 setAlignment:v5 == 0 forView:v34 inAxis:0];

    if ([(TLKTextAreaView *)self useCompactMode])
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    v36 = [(TLKTextAreaView *)self footnoteLabel];
    [v36 setProminence:v35];

    if ([(TLKTextAreaView *)self useCompactMode])
    {
      v37 = 1.0;
    }

    else
    {
      v37 = 3.0;
    }

    v38 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
    v39 = [(TLKTextAreaView *)self detailFieldStackView];
    [v38 setCustomSpacing:v39 afterView:v37];
  }

  v40 = [v4 hasContent];
  v41 = [(TLKTextAreaView *)self footnoteLabel];
  [v41 setHidden:v40 ^ 1u];

  v42 = [v5 length] == 0;
  v43 = [(TLKTextAreaView *)self footnoteButton];
  [v43 setHidden:v42];

  v44 = [(TLKTextAreaView *)self footnoteContainer];
  v45 = [v44 visibleArrangedSubviews];
  v46 = [v45 count] == 0;
  v47 = [(TLKTextAreaView *)self footnoteContainer];
  [v47 setHidden:v46];
}

- (id)viewForFirstBaselineLayout
{
  v3 = [(TLKView *)self contentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    while (1)
    {
      v4 = [v3 viewForFirstBaselineLayout];

      if (v4 == v3)
      {
        break;
      }

      v5 = [v3 viewForFirstBaselineLayout];

      v6 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];

      if (v5 == v6)
      {
        v7 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];

        v5 = v7;
      }

      objc_opt_class();
      v3 = v5;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = v3;
LABEL_8:

  return v5;
}

- (void)setBannerText:(id)a3
{
  v10 = a3;
  if (self->_bannerText != v10)
  {
    objc_storeStrong(&self->_bannerText, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setTopText:(id)a3
{
  v10 = a3;
  if (self->_topText != v10)
  {
    objc_storeStrong(&self->_topText, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setTitle:(id)a3
{
  v10 = a3;
  if (self->_title != v10)
  {
    objc_storeStrong(&self->_title, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setTruncateTitleMiddle:(BOOL)a3
{
  if (self->_truncateTitleMiddle != a3)
  {
    self->_truncateTitleMiddle = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setSecondaryTitle:(id)a3
{
  v10 = a3;
  if (self->_secondaryTitle != v10)
  {
    objc_storeStrong(&self->_secondaryTitle, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setSecondaryTitleImage:(id)a3
{
  v10 = a3;
  if (self->_secondaryTitleImage != v10)
  {
    objc_storeStrong(&self->_secondaryTitleImage, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setSecondaryTitleIsDetached:(BOOL)a3
{
  if (self->_secondaryTitleIsDetached != a3)
  {
    self->_secondaryTitleIsDetached = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setDetailTexts:(id)a3
{
  v10 = a3;
  if (self->_detailTexts != v10)
  {
    objc_storeStrong(&self->_detailTexts, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setFootnote:(id)a3
{
  v10 = a3;
  if (self->_footnote != v10)
  {
    objc_storeStrong(&self->_footnote, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setFootnoteButtonText:(id)a3
{
  v10 = a3;
  if (self->_footnoteButtonText != v10)
  {
    objc_storeStrong(&self->_footnoteButtonText, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)setUseCompactMode:(BOOL)a3
{
  if (self->_useCompactMode != a3)
  {
    self->_useCompactMode = a3;
    v4 = [(TLKView *)self observer];
    if (v4)
    {
      v5 = v4;
      v6 = [(TLKView *)self observer];
      v7 = [v6 batchUpdateCount];

      if (!v7)
      {
        v8 = [(TLKView *)self observer];
        [v8 propertiesDidChange];
      }
    }
  }
}

- (void)setAccessoryView:(id)a3
{
  v10 = a3;
  if (self->_accessoryView != v10)
  {
    objc_storeStrong(&self->_accessoryView, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)insertDetailsStackViewIfNeeded
{
  v3 = [(TLKTextAreaView *)self detailFieldStackView];

  if (!v3)
  {
    v4 = objc_opt_new();
    [(TLKTextAreaView *)self setDetailFieldStackView:v4];

    v5 = [(TLKTextAreaView *)self detailFieldStackView];
    [v5 setArrangedSubviewRemovalPolicy:1];

    v6 = [(TLKTextAreaView *)self detailFieldStackView];
    [v6 setArrangedSubviewAdditionPolicy:1];

    v8 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
    v7 = [(TLKTextAreaView *)self detailFieldStackView];
    [v8 insertArrangedSubview:v7 atIndex:0];
  }
}

- (void)performBatchUpdates:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__TLKTextAreaView_performBatchUpdates___block_invoke;
  v7[3] = &unk_1E7FD8DD0;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = TLKTextAreaView;
  v5 = v4;
  [(TLKView *)&v6 performBatchUpdates:v7];
}

uint64_t __39__TLKTextAreaView_performBatchUpdates___block_invoke(uint64_t a1)
{
  [*(a1 + 32) internalTextFieldsInBatchUpdate:1];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 internalTextFieldsInBatchUpdate:0];
}

- (void)internalTextFieldsInBatchUpdate:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(TLKTextAreaView *)self detailsFields];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    if (v3)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }

    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 observer];
        v12 = [v11 batchUpdateCount];
        v13 = [v10 observer];
        [v13 setBatchUpdateCount:v12 + v8];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

void __33__TLKTextAreaView_updateFootnote__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) footnoteLabel];
  [v2 setRichText:v1];
}

+ (id)footNoteLabelFont
{
  if (+[TLKUtilities isMacOS])
  {
    if (TLKSpotlightPlusUIEnabled())
    {
      v2 = MEMORY[0x1E69DDDC8];
    }

    else
    {
      v2 = MEMORY[0x1E69DDD08];
    }

    v3 = [TLKFontUtilities cachedFontForMacTextStyle:*v2];
  }

  else
  {
    v3 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDD28]];
  }

  return v3;
}

- (id)viewForLastBaselineLayout
{
  v3 = [(TLKView *)self contentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    while (1)
    {
      v4 = [v3 viewForLastBaselineLayout];

      if (v4 == v3)
      {
        break;
      }

      v5 = [v3 viewForLastBaselineLayout];

      v6 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];

      if (v5 == v6)
      {
        v7 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];

        v5 = v7;
      }

      objc_opt_class();
      v3 = v5;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v5 = v3;
LABEL_8:

  return v5;
}

- (id)detailsStrings
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(TLKTextAreaView *)self detailsFields];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isHidden] & 1) == 0)
        {
          v10 = [v9 attributedString];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)titleLabelString
{
  v2 = [(TLKTextAreaView *)self titleContainer];
  v3 = [v2 titleLabelString];

  return v3;
}

- (id)secondaryTitleLabelString
{
  v2 = [(TLKTextAreaView *)self titleContainer];
  v3 = [v2 secondaryTitleLabelString];

  return v3;
}

- (id)footnoteLabelString
{
  v3 = [(TLKTextAreaView *)self footnoteLabel];
  v4 = [v3 isHidden];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [(TLKTextAreaView *)self footnoteLabel];
    v7 = [v6 attributedString];
    v5 = [v7 string];
  }

  return v5;
}

- (TLKTextAreaViewDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

@end