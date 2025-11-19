@interface SearchUIDetailedView
+ (id)bannerBadgeForRowModel:(id)a3;
+ (void)addViewIfNecessary:(id)a3 toStackView:(id)a4 removeFromStackViews:(id)a5;
- (BOOL)arrangedViewMustCenter:(id)a3;
- (BOOL)configureMenuForFootnoteButton:(id)a3;
- (BOOL)hasSecondLine;
- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5;
- (SearchUIDetailedView)initWithFeedbackDelegate:(id)a3;
- (SearchUIDetailedViewDelegate)buttonDelegate;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (UIView)leadingView;
- (double)trailingMarginForAccessoryViewController:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)didMoveToWindow;
- (void)footnoteButtonPressed;
- (void)setFeedbackDelegate:(id)a3;
- (void)setIsVerticalAlignment:(BOOL)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLayoutMargins;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIDetailedView

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

- (UIView)leadingView
{
  v2 = [(SearchUIDetailedView *)self innerContainer];
  v3 = [v2 visibleArrangedSubviews];
  v4 = [v3 firstObject];

  return v4;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SearchUIDetailedView;
  [(SearchUIDetailedView *)&v3 didMoveToWindow];
  [(SearchUIDetailedView *)self tlk_updateWithCurrentAppearance];
}

- (void)updateLayoutMargins
{
  v3 = [(SearchUIDetailedView *)self rowModel];
  v4 = [v3 useCompactVersionOfUI];

  if (v4)
  {
    if ([MEMORY[0x1E69D9240] isMacOS])
    {
      +[SearchUIUtilities standardTableCellContentInset];
      v6 = v5;
      v7 = 5.0;
      v8 = v5;
      v9 = 5.0;
    }

    else
    {
      v16 = [(SearchUIDetailedView *)self hasSecondLine];
      v17 = TLKBiggerSuggestionsLayoutEnabled();
      v18 = 11.8;
      if (v16)
      {
        v18 = 8.3;
      }

      v19 = 8.67;
      if (v16)
      {
        v19 = 6.84;
      }

      if (v17)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      v21 = [(SearchUIDetailedView *)self currentAccessoryViewController];
      [(SearchUIDetailedView *)self trailingMarginForAccessoryViewController:v21];
      v6 = v22;

      v8 = v6;
      if ([MEMORY[0x1E69D91A8] isLTR])
      {
        +[SearchUIUtilities standardCompactHorizontalMargin];
        v8 = v23;
      }

      if (([MEMORY[0x1E69D91A8] isLTR] & 1) == 0)
      {
        +[SearchUIUtilities standardCompactHorizontalMargin];
        v6 = v24;
      }

      v25 = TLKBiggerSuggestionsLayoutEnabled();
      v26 = 0.3;
      if (!v25)
      {
        v26 = 0.0;
      }

      v9 = v20 - v26;
      v27 = TLKBiggerSuggestionsLayoutEnabled();
      v28 = 0.5;
      if (v27)
      {
        v28 = 0.0;
      }

      v7 = v20 - v28;
    }
  }

  else
  {
    [MEMORY[0x1E69D9248] defaultLayoutMargins];
    v9 = v10;
    v8 = v11;
    v7 = v12;
    v6 = v13;
    v14 = [(SearchUIDetailedView *)self rowModel];
    v15 = [v14 sectionType];

    if (v15 == 2)
    {
      v7 = 10.0;
      v6 = 0.0;
      v8 = 0.0;
      v9 = 10.0;
    }

    else if ([MEMORY[0x1E69D9240] isMacOS])
    {
      v29 = TLKSpotlightPlusUIEnabled();
      if (v29)
      {
        v6 = 16.0;
        v7 = 9.5;
      }

      else
      {
        v7 = 12.0;
      }

      if (v29)
      {
        v8 = 16.0;
        v9 = 10.5;
      }

      else
      {
        v9 = 12.0;
      }
    }
  }

  [MEMORY[0x1E69D91A8] deviceScaledRoundedInsets:self forView:{v9, v8, v7, v6}];

  [(SearchUIDetailedView *)self setLayoutMargins:?];
}

- (BOOL)hasSecondLine
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(SearchUIDetailedView *)self detailsView];
  v4 = [v3 details];

  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v14 + 1) + 8 * i) hasContent])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = [(SearchUIDetailedView *)self detailsView];
  v11 = [v10 footnote];
  v12 = [v11 hasContent];

  return v9 | v12;
}

- (SearchUIDetailedView)initWithFeedbackDelegate:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SearchUIDetailedView;
  v5 = [(SearchUIDetailedView *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUIDetailedView *)v5 setFeedbackDelegate:v4];
    [(NUIContainerStackView *)v6 setSpacing:*MEMORY[0x1E69D9268]];
    [(SearchUIDetailedView *)v6 setLayoutMarginsRelativeArrangement:1];
    v7 = objc_opt_new();
    [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v7];
    [v7 setDelegate:v6];
    [(SearchUIDetailedView *)v6 addArrangedSubview:v7];
    [(SearchUIDetailedView *)v6 setInnerContainer:v7];
    v8 = objc_opt_new();
    [v8 setAxis:1];
    [v8 setSpacing:11.0];
    [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v8];
    [(SearchUIDetailedView *)v6 setButtonAndDetailViewStackView:v8];
    v9 = [(SearchUIDetailedView *)v6 innerContainer];
    v10 = [(SearchUIDetailedView *)v6 buttonAndDetailViewStackView];
    [v9 addArrangedSubview:v10];

    v11 = objc_opt_new();
    [v11 setDelegate:v6];
    [v11 setLayoutMargins:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v11];
    [(SearchUIDetailedView *)v6 setDetailsView:v11];
    v12 = [(SearchUIDetailedView *)v6 buttonAndDetailViewStackView];
    [v12 addArrangedSubview:v11];

    v13 = objc_opt_new();
    [(SearchUIDetailedView *)v6 setLeadingViewControllers:v13];

    v14 = objc_opt_new();
    [(SearchUIDetailedView *)v6 setAccessoryViewControllers:v14];

    [(SearchUIDetailedView *)v6 setIsVerticalAlignment:0];
  }

  return v6;
}

- (void)setIsVerticalAlignment:(BOOL)a3
{
  v3 = a3;
  self->_isVerticalAlignment = a3;
  v5 = [(SearchUIDetailedView *)self innerContainer];
  v6 = v5;
  if (v3)
  {
    [v5 setAxis:1];

    [(NUIContainerStackView *)self setAxis:1];
    [(NUIContainerStackView *)self setAlignment:1];
    [(NUIContainerStackView *)self setBaselineRelativeArrangement:1];
    v7 = [(SearchUIDetailedView *)self detailsView];
    v15 = [v7 viewForFirstBaselineLayout];

    v8 = objc_opt_respondsToSelector();
    if (v8)
    {
      v9 = MEMORY[0x1E69D91A8];
      v3 = [v15 font];
      [v9 scaledValueForValue:v3 withFont:self view:22.0];
      v11 = v10;
    }

    else
    {
      v11 = *MEMORY[0x1E69D9268];
    }

    v13 = [(SearchUIDetailedView *)self innerContainer];
    [v13 setSpacing:v11];

    if (v8)
    {
    }

    v14 = [(SearchUIDetailedView *)self innerContainer];
    [v14 setBaselineRelativeArrangement:1];
  }

  else
  {
    [v5 setFlipsToVerticalAxisForAccessibilityContentSizes:1];

    v12 = [(SearchUIDetailedView *)self innerContainer];
    [v12 setBaselineRelativeArrangement:0];

    [(NUIContainerStackView *)self setAxis:0];
    [(NUIContainerStackView *)self setAlignment:3];

    [(NUIContainerStackView *)self setBaselineRelativeArrangement:0];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SearchUIDetailedView;
  [(SearchUIDetailedView *)&v9 traitCollectionDidChange:v4];
  v5 = [(SearchUIDetailedView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(SearchUIDetailedView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(SearchUIDetailedView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)a3
{
  v7.receiver = self;
  v7.super_class = SearchUIDetailedView;
  v4 = a3;
  [(SearchUIDetailedView *)&v7 tlk_updateForAppearance:v4];
  v5 = [(SearchUIDetailedView *)self currentAccessoryViewController:v7.receiver];
  [v5 tlk_updateForAppearance:v4];

  v6 = [(SearchUIDetailedView *)self currentLeadingViewController];
  [v6 tlk_updateForAppearance:v4];
}

- (void)setFeedbackDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_feedbackDelegate, v4);
  v5 = [(SearchUIDetailedView *)self currentLeadingViewController];
  [v5 setFeedbackDelegate:v4];

  v6 = [(SearchUIDetailedView *)self currentAccessoryViewController];
  [v6 setFeedbackDelegate:v4];
}

- (void)updateWithRowModel:(id)a3
{
  v230 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(SearchUIDetailedView *)self setRowModel:v4];
  v5 = [(SearchUIDetailedView *)self currentLeadingViewController];
  [v5 hide];

  v6 = [(SearchUIDetailedView *)self currentAccessoryViewController];
  [v6 hide];

  v7 = [SearchUILeadingViewController leadingViewClassForRowModel:v4];
  if (!v7)
  {
    v12 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v9 = [(SearchUIDetailedView *)self leadingViewControllers];
  v10 = [v9 countByEnumeratingWithState:&v216 objects:v229 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v217;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v217 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v216 + 1) + 8 * i);
        if (objc_opt_class() == v8)
        {
          v16 = v15;

          v12 = v16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v216 objects:v229 count:16];
    }

    while (v11);

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v12 = objc_opt_new();
  v17 = [v12 view];
  [SearchUIAutoLayout requireIntrinsicSizeForView:v17];

  v18 = [(SearchUIDetailedView *)self innerContainer];
  v19 = [v12 view];
  [v18 insertArrangedSubview:v19 atIndex:0];

  v20 = [(SearchUIDetailedView *)self leadingViewControllers];
  [v20 addObject:v12];

LABEL_16:
  [v12 updateWithRowModel:v4];
  v21 = [v12 view];
  [v21 setHidden:0];

  v22 = [v12 view];
  [v22 setAlpha:1.0];

  v23 = [(SearchUIDetailedView *)self feedbackDelegate];
  [v12 setFeedbackDelegate:v23];

LABEL_17:
  [(SearchUIDetailedView *)self setCurrentLeadingViewController:v12];
  v193 = [(SearchUIDetailedView *)self detailsView];
  v24 = [v4 title];
  v197 = [MEMORY[0x1E69D9240] isMacOS];
  v199 = self;
  if (([v4 isLocalApplicationResult] & 1) != 0 || (objc_msgSend(v4, "identifyingResult"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "contentType"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", @"com.apple.application-bundle"), v26, v25, v27))
  {
    v28 = [v4 applicationBundleIdentifier];
    v29 = [SearchUIUtilities bundleIdentifierIsBlockedForScreenTimeExpiration:v28];

    if (v29)
    {
      v30 = v24;
      v31 = objc_opt_new();
      v32 = +[SearchUIUtilities imageForBlockedApp];
      [v31 setGlyph:v32];

      v33 = [v4 title];
      v34 = [v33 text];
      v35 = v34;
      if (v197)
      {
        v36 = [v34 stringByAppendingString:@"  "];

        v37 = [MEMORY[0x1E69CA0F0] textWithString:v36];
        v228[0] = v37;
        v228[1] = v31;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v228 count:2];

        v39 = [v12 view];
        [v39 setAlpha:0.25];
      }

      else
      {
        v36 = [@"  " stringByAppendingString:v34];

        v227[0] = v31;
        v39 = [MEMORY[0x1E69CA0F0] textWithString:v36];
        v227[1] = v39;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v227 count:2];
      }

      v24 = objc_opt_new();
      [v24 setFormattedTextPieces:v38];
      [v24 setMaxLines:1];
    }
  }

  v40 = [(SearchUIDetailedView *)self rowModel];
  v41 = [v40 sectionType];

  if (v41 == 2)
  {
    [v24 setMaxLines:1];
  }

  v190 = v24;
  v42 = [SearchUIAccessoryViewController accessoryViewClassForRowModel:v4];
  v188 = [(objc_class *)v42 isEqual:objc_opt_class()];
  v187 = [(objc_class *)v42 isEqual:objc_opt_class()];
  if ([v4 buttonItemsAreTrailing])
  {
    v43 = 0;
  }

  else
  {
    v43 = [v4 buttonItems];
  }

  if ([v43 count])
  {
    v44 = [(SearchUIDetailedView *)self buttonItemStackView];

    if (!v44)
    {
      v45 = objc_opt_new();
      [(SearchUIDetailedView *)self setButtonItemStackView:v45];

      v46 = [(SearchUIDetailedView *)self buttonItemStackView];
      [v46 setIsCompact:1];

      v47 = [(SearchUIDetailedView *)self buttonItemStackView];
      [v47 setFlipsToVerticalAxisForAccessibilityContentSizes:1];

      v48 = [(SearchUIDetailedView *)self buttonAndDetailViewStackView];
      v49 = [(SearchUIDetailedView *)self buttonItemStackView];
      [v48 addArrangedSubview:v49];

      v50 = [(SearchUIDetailedView *)self buttonAndDetailViewStackView];
      v51 = [(SearchUIDetailedView *)self buttonItemStackView];
      [v50 setAlignment:1 forView:v51 inAxis:0];
    }

    v42 = 0;
  }

  v52 = [(SearchUIDetailedView *)self buttonItemStackView];
  v53 = [(SearchUIDetailedView *)self feedbackDelegate];
  v54 = 3;
  [v52 updateWithButtonItems:v43 maxButtonItems:3 buttonItemViewType:3 rowModel:v4 feedbackDelegate:v53];

  v55 = [(SearchUIDetailedView *)self buttonItemStackView];
  if (v55)
  {
    v53 = [(SearchUIDetailedView *)self buttonItemStackView];
    if ([v53 isHidden])
    {
      v54 = 3;
    }

    else
    {
      v54 = 1;
    }
  }

  v56 = [(SearchUIDetailedView *)self innerContainer];
  [v56 setAlignment:v54];

  if (v55)
  {
  }

  v195 = v43;
  v196 = v12;
  if (!v42)
  {
    v66 = 0;
    v67 = v190;
    v59 = v193;
    goto LABEL_75;
  }

  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  v57 = [(SearchUIDetailedView *)self accessoryViewControllers];
  v58 = [v57 countByEnumeratingWithState:&v212 objects:v226 count:16];
  v59 = v193;
  if (!v58)
  {

LABEL_54:
    v61 = objc_opt_new();
    v68 = [(SearchUIDetailedView *)self accessoryViewControllers];
    [v68 addObject:v61];

    v69 = [v61 view];
    [SearchUIAutoLayout requireIntrinsicSizeForView:v69];

    goto LABEL_55;
  }

  v60 = v58;
  v61 = 0;
  v62 = *v213;
  do
  {
    for (j = 0; j != v60; ++j)
    {
      if (*v213 != v62)
      {
        objc_enumerationMutation(v57);
      }

      v64 = *(*(&v212 + 1) + 8 * j);
      if (objc_opt_class() == v42)
      {
        v65 = v64;

        v61 = v65;
      }
    }

    v60 = [v57 countByEnumeratingWithState:&v212 objects:v226 count:16];
  }

  while (v60);

  if (!v61)
  {
    goto LABEL_54;
  }

LABEL_55:
  [v61 setDelegate:self];
  v70 = [(SearchUIDetailedView *)self feedbackDelegate];
  [v61 setFeedbackDelegate:v70];

  v71 = [v61 view];
  [v71 setHidden:0];

  v72 = v61;
  [v61 updateWithRowModel:v4];
  v73 = [(SearchUIDetailedView *)self rowModel];
  v74 = [v73 secondaryTitle];
  v67 = v190;
  if (v74)
  {
    v75 = [(SearchUIDetailedView *)self rowModel];
    v76 = [v75 secondaryTitleIsDetached];
  }

  else
  {
    v76 = 0;
  }

  v77 = [v72 view];
  v78 = [(SearchUIDetailedView *)self innerContainer];
  if ([v78 axis] != 1)
  {

    goto LABEL_63;
  }

  v79 = [(SearchUIDetailedView *)self isVerticalAlignment];

  if (v79)
  {
LABEL_63:
    v86 = [(SearchUIDetailedView *)self isVerticalAlignment];
    v81 = objc_opt_class();
    v87 = [(SearchUIDetailedView *)self innerContainer];
    v83 = v87;
    if (v86)
    {
      v223 = v87;
      v84 = MEMORY[0x1E695DEC8];
      v85 = &v223;
      goto LABEL_65;
    }

    v222 = self;
    v92 = MEMORY[0x1E695DEC8];
    v93 = &v222;
LABEL_68:
    v88 = [v92 arrayWithObjects:v93 count:1];
    v89 = v81;
    v90 = v77;
    v91 = v83;
    goto LABEL_69;
  }

  v80 = [v72 shouldTopAlignForAccessibilityContentSizes];
  v81 = objc_opt_class();
  v82 = [(SearchUIDetailedView *)self innerContainer];
  v83 = v82;
  if (!v80)
  {
    v224 = self;
    v92 = MEMORY[0x1E695DEC8];
    v93 = &v224;
    goto LABEL_68;
  }

  v225 = v82;
  v84 = MEMORY[0x1E695DEC8];
  v85 = &v225;
LABEL_65:
  v88 = [v84 arrayWithObjects:v85 count:1];
  v89 = v81;
  v90 = v77;
  v91 = self;
LABEL_69:
  [v89 addViewIfNecessary:v90 toStackView:v91 removeFromStackViews:v88];

  if (v76)
  {
    v94 = v77;
  }

  else
  {
    v94 = 0;
  }

  [v193 setAccessoryView:v94];
  if (v76)
  {
    v95 = objc_opt_class();
    v221[0] = self;
    v96 = [(SearchUIDetailedView *)self innerContainer];
    v221[1] = v96;
    v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v221 count:2];
    [v95 addViewIfNecessary:v77 toStackView:0 removeFromStackViews:v97];
  }

  v66 = v72;
LABEL_75:
  v194 = v66;
  [(SearchUIDetailedView *)self setCurrentAccessoryViewController:?];
  v98 = [(SearchUIDetailedView *)self currentLeadingViewController];
  v99 = [v98 shouldCenterAlignToTitle];

  if ([(SearchUIDetailedView *)self isVerticalAlignment])
  {
    goto LABEL_102;
  }

  v100 = [v4 isHorizontalInLayout];
  v101 = 8.0;
  v102 = TLKBiggerSuggestionsLayoutEnabled();
  v103 = 8.0;
  if ((v99 & 1) == 0)
  {
    v104 = 10.0;
    v105 = 14.0;
    if (v102)
    {
      v104 = 14.0;
    }

    if (v197)
    {
      v105 = 12.0;
      v103 = 8.0;
    }

    else
    {
      v103 = v104;
    }

    if (v100)
    {
      v106 = 8.0;
    }

    else
    {
      v106 = v105;
    }

    if (![v4 useCompactVersionOfUI])
    {
      v103 = v106;
    }
  }

  v107 = [(SearchUIDetailedView *)self innerContainer];
  [v107 setSpacing:v103];

  v108 = [v4 useCompactVersionOfUI];
  v109 = 14.0;
  if (v197)
  {
    v109 = 15.0;
  }

  if (v108)
  {
    v110 = *MEMORY[0x1E698B6F8];
  }

  else
  {
    v110 = v109;
  }

  v111 = [(SearchUIDetailedView *)self innerContainer];
  v112 = [v111 axis];

  if (v112 != 1)
  {
    goto LABEL_101;
  }

  v113 = [v59 viewForFirstBaselineLayout];
  v110 = 8.0;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_96;
  }

  v114 = [v59 viewForFirstBaselineLayout];
  v115 = [v114 font];

  if (v115)
  {
    [MEMORY[0x1E69D91A8] scaledValueForValue:v115 withFont:self view:8.0];
    v110 = v116;
    v113 = v115;
LABEL_96:
  }

  v117 = [v59 viewForLastBaselineLayout];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_100:

    goto LABEL_101;
  }

  v118 = [v59 viewForLastBaselineLayout];
  v119 = [v118 font];

  if (v119)
  {
    [MEMORY[0x1E69D91A8] scaledValueForValue:v119 withFont:self view:8.0];
    v101 = v120;
    v117 = v119;
    goto LABEL_100;
  }

LABEL_101:
  v121 = [(SearchUIDetailedView *)self innerContainer];
  v122 = [(SearchUIDetailedView *)self currentLeadingViewController];
  v123 = [v122 view];
  [v121 setCustomSpacing:v123 afterView:v110];

  v124 = [(SearchUIDetailedView *)self innerContainer];
  v125 = [(SearchUIDetailedView *)self buttonAndDetailViewStackView];
  [v124 setCustomSpacing:v125 afterView:v101];

LABEL_102:
  v126 = [MEMORY[0x1E69D91A8] isSuperLargeAccessibilitySize];
  v204[0] = MEMORY[0x1E69E9820];
  v204[1] = 3221225472;
  v204[2] = __43__SearchUIDetailedView_updateWithRowModel___block_invoke;
  v204[3] = &unk_1E85B4830;
  v127 = v59;
  v205 = v127;
  v206 = self;
  v186 = v4;
  v207 = v186;
  v185 = v67;
  v208 = v185;
  v198 = v126;
  v209 = v126;
  v210 = v188;
  v211 = v187;
  [v127 performBatchUpdates:v204];
  v128 = [(SearchUIDetailedView *)self detailsView];
  v129 = [v128 viewForFirstBaselineLayout];

  v130 = [(SearchUIDetailedView *)self rowModel];
  v131 = [v130 useCompactVersionOfUI];

  v132 = 0.0;
  v133 = 0.0;
  v134 = 0.0;
  if ((v131 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v135 = [v129 font];
    }

    else
    {
      v135 = 0;
    }

    v136 = MEMORY[0x1E69D91A8];
    [v135 ascender];
    v138 = v137;
    [v135 capHeight];
    [v136 deviceScaledRoundedValue:self forView:v138 - v139];
    v134 = v140;
    v141 = MEMORY[0x1E69D91A8];
    v142 = [v127 viewForLastBaselineLayout];
    [v142 effectiveBaselineOffsetFromContentBottom];
    [v141 deviceScaledRoundedValue:self forView:?];
    v133 = v143;
  }

  v144 = [(SearchUIDetailedView *)self rowModel];
  v145 = [v144 isHorizontalInLayout];

  v146 = v134;
  v147 = 0.0;
  if (v145)
  {
    v146 = *MEMORY[0x1E69DDCE0];
    v132 = *(MEMORY[0x1E69DDCE0] + 8);
    v133 = *(MEMORY[0x1E69DDCE0] + 16);
    v147 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  [v127 setCustomAlignmentRectInsets:{v146, v132, v133, v147}];
  v191 = v132;
  if (TLKBiggerSuggestionsLayoutEnabled())
  {
    v148 = [(SearchUIDetailedView *)self rowModel];
    if ([v148 useCompactVersionOfUI])
    {
      v149 = -3.0;
      v150 = -4.0;
      v151 = 0.0;
      v152 = 0.0;
    }

    else
    {
      v149 = *MEMORY[0x1E69DDCE0];
      v152 = *(MEMORY[0x1E69DDCE0] + 8);
      v150 = *(MEMORY[0x1E69DDCE0] + 16);
      v151 = *(MEMORY[0x1E69DDCE0] + 24);
    }
  }

  else
  {
    v149 = *MEMORY[0x1E69DDCE0];
    v152 = *(MEMORY[0x1E69DDCE0] + 8);
    v150 = *(MEMORY[0x1E69DDCE0] + 16);
    v151 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  if (!(v145 & 1 | ((v99 & 1) == 0)))
  {
    [v129 intrinsicContentSize];
    v154 = v153;
    v155 = [(SearchUIDetailedView *)self currentLeadingViewController];
    v156 = [v155 view];
    [v156 intrinsicContentSize];
    v149 = v134 + (v154 - v157) * -0.5;

    v151 = 0.0;
    v150 = 0.0;
    v152 = 0.0;
  }

  v189 = v129;
  [MEMORY[0x1E69D91A8] deviceScaledRoundedInsets:self forView:{v149, v152, v150, v151}];
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v165 = v164;
  v166 = [(SearchUIDetailedView *)self currentLeadingViewController];
  v167 = [v166 view];
  [v167 setCustomAlignmentRectInsets:{v159, v161, v163, v165}];

  v168 = [v127 accessoryView];

  if (!v168)
  {
    v169 = [(SearchUIDetailedView *)self currentAccessoryViewController];
    if ([v169 type] == 1)
    {
      v170 = v191;
    }

    else
    {
      v146 = *MEMORY[0x1E69DDCE0];
      v170 = *(MEMORY[0x1E69DDCE0] + 8);
      v133 = *(MEMORY[0x1E69DDCE0] + 16);
      v147 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v171 = [(SearchUIDetailedView *)self currentAccessoryViewController];
    v172 = [v171 view];
    [v172 setCustomAlignmentRectInsets:{v146, v170, v133, v147}];
  }

  v192 = v127;
  v173 = [(SearchUIDetailedView *)self innerContainer];
  v174 = [v173 axis] == 0;

  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  v175 = [(SearchUIDetailedView *)self innerContainer];
  v176 = [v175 arrangedSubviews];

  v177 = [v176 countByEnumeratingWithState:&v200 objects:v220 count:16];
  if (v177)
  {
    v178 = v177;
    v179 = *v201;
    if (v99)
    {
      v180 = 2;
    }

    else
    {
      v180 = -1;
    }

    do
    {
      for (k = 0; k != v178; ++k)
      {
        if (*v201 != v179)
        {
          objc_enumerationMutation(v176);
        }

        v182 = *(*(&v200 + 1) + 8 * k);
        v183 = [(SearchUIDetailedView *)v199 innerContainer];
        if (v198 & 1 | ![(SearchUIDetailedView *)v199 arrangedViewMustCenter:v182])
        {
          v184 = v180;
        }

        else
        {
          v184 = 3;
        }

        [v183 setAlignment:v184 forView:v182 inAxis:v174];
      }

      v178 = [v176 countByEnumeratingWithState:&v200 objects:v220 count:16];
    }

    while (v178);
  }

  [(SearchUIDetailedView *)v199 updateLayoutMargins];
  [(SearchUIDetailedView *)v199 tlk_updateWithCurrentAppearance];
}

void __43__SearchUIDetailedView_updateWithRowModel___block_invoke(uint64_t a1)
{
  v64[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() bannerBadgeForRowModel:*(a1 + 48)];
  [*(a1 + 32) setBannerBadge:v2];

  v3 = [*(a1 + 48) topText];
  v4 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v3];
  [*(a1 + 32) setTopText:v4];

  v5 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:*(a1 + 56)];
  [*(a1 + 32) setTitle:v5];

  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) title];
  [v7 setMaxLines:{objc_msgSend(v7, "maxLines") << v6}];

  [*(a1 + 32) setTruncateTitleMiddle:{objc_msgSend(*(a1 + 48), "truncateTitleMiddle")}];
  v8 = [*(a1 + 48) secondaryTitle];
  v9 = [SearchUITLKMultilineTextConverter formattedTextForSearchUIText:v8];

  v10 = objc_opt_new();
  v48 = v9;
  v64[0] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:1];
  [v10 setFormattedTextItems:v11];

  v47 = v10;
  [*(a1 + 32) setSecondaryTitle:v10];
  v12 = [*(a1 + 48) secondaryTitleImage];
  v13 = [SearchUIImage imageWithSFImage:v12 variantForAppIcon:0];
  v14 = [SearchUITLKImageConverter imageForSFImage:v13];
  [*(a1 + 32) setSecondaryTitleImage:v14];

  v15 = [*(a1 + 32) secondaryTitleImage];
  [v15 setIsTemplate:1];

  [*(a1 + 32) setSecondaryTitleIsDetached:{objc_msgSend(*(a1 + 48), "secondaryTitleIsDetached")}];
  v16 = objc_opt_new();
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v17 = [*(a1 + 48) details];
  v18 = [v17 countByEnumeratingWithState:&v57 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v58;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v58 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v57 + 1) + 8 * i);
        v23 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v22 withCompletionHandler:0];
        v24 = v23;
        if (v23 && (([v23 hasContent] & 1) != 0 || +[SearchUITLKMultilineTextConverter richTextOverridesAsyncLoader:](SearchUITLKMultilineTextConverter, "richTextOverridesAsyncLoader:", v22)))
        {
          [v24 setMaxLines:{objc_msgSend(v24, "maxLines") << v6}];
          [v16 addObject:v24];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v57 objects:v63 count:16];
    }

    while (v19);
  }

  [*(a1 + 32) setDetails:v16];
  v25 = [*(a1 + 48) footnote];
  v26 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v25];
  [*(a1 + 32) setFootnote:v26];

  v27 = [*(a1 + 48) footnoteButtonText];
  [*(a1 + 32) setFootnoteButtonText:v27];

  [*(a1 + 32) setUseCompactMode:{objc_msgSend(*(a1 + 48), "useCompactVersionOfUI")}];
  if (*(a1 + 65))
  {
    v28 = 1;
  }

  else
  {
    v28 = *(a1 + 66);
  }

  [*(a1 + 32) setIsAccessoryViewBottomAligned:v28 & 1];
  if ([*(a1 + 48) buttonItemsAreTrailing])
  {
    v29 = [*(a1 + 48) buttonItems];
  }

  else
  {
    v29 = 0;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v30 = v29;
  v31 = [v30 countByEnumeratingWithState:&v53 objects:v62 count:16];
  v32 = v30;
  if (v31)
  {
    v33 = v31;
    v34 = *v54;
LABEL_20:
    v35 = 0;
    while (1)
    {
      if (*v54 != v34)
      {
        objc_enumerationMutation(v30);
      }

      if ([objc_msgSend(*(*(&v53 + 1) + 8 * v35) "_searchUIButtonItemGeneratorClass")])
      {
        break;
      }

      if (v33 == ++v35)
      {
        v33 = [v30 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v33)
        {
          goto LABEL_20;
        }

        v32 = v30;
        goto LABEL_43;
      }
    }

    if ((*(a1 + 64) & 1) != 0 || ![*(a1 + 40) hasSecondLine])
    {
      goto LABEL_44;
    }

    v36 = objc_opt_new();
    v37 = [*(a1 + 32) title];

    if (v37)
    {
      v38 = [*(a1 + 32) title];
      [v36 addObject:v38];
    }

    v39 = [*(a1 + 32) details];

    if (v39)
    {
      v40 = [*(a1 + 32) details];
      [v36 addObjectsFromArray:v40];
    }

    v41 = [*(a1 + 32) footnote];

    if (v41)
    {
      v42 = [*(a1 + 32) footnote];
      [v36 addObject:v42];
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v32 = v36;
    v43 = [v32 countByEnumeratingWithState:&v49 objects:v61 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v50;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v50 != v45)
          {
            objc_enumerationMutation(v32);
          }

          [*(*(&v49 + 1) + 8 * j) setMaxLines:1];
        }

        v44 = [v32 countByEnumeratingWithState:&v49 objects:v61 count:16];
      }

      while (v44);
    }
  }

LABEL_43:

LABEL_44:
}

- (double)trailingMarginForAccessoryViewController:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if ([v4 containsSymbolImage])
  {
    v6 = [v4 view];
    [v6 intrinsicContentSize];
    v8 = v7;

    +[SearchUIUtilities imageAccessoryAdditionalCompactHorizontalMargin];
    v5 = v9 + v8 * -0.5;
  }

  v10 = [(SearchUIDetailedView *)self rowModel];
  if (![v10 useCompactVersionOfUI])
  {

    goto LABEL_7;
  }

  v11 = [MEMORY[0x1E69D9240] isMacOS];

  if (v11)
  {
LABEL_7:
    [MEMORY[0x1E69D9248] defaultLayoutMargins];
    v13 = v14;
    goto LABEL_8;
  }

  +[SearchUIUtilities standardCompactHorizontalMargin];
  v13 = v5 + v12;
LABEL_8:

  return v13;
}

+ (id)bannerBadgeForRowModel:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 nearbyBusinessesString];
  v5 = [v4 length];

  if (v5)
  {
    v6 = objc_opt_new();
    v7 = [SearchUISymbolImage alloc];
    v8 = [MEMORY[0x1E69D9138] cachedFontForTextStyle:*MEMORY[0x1E69DDD10] isShort:0 isBold:0];
    v9 = [(SearchUISymbolImage *)v7 initWithSymbolName:@"location.fill" font:v8 scale:1];
    [v6 setGlyph:v9];

    v10 = objc_opt_new();
    v20[0] = v6;
    v11 = MEMORY[0x1E69CA0F0];
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v3 nearbyBusinessesString];
    v14 = [v13 localizedUppercaseString];
    v15 = [v12 stringWithFormat:@" %@", v14];
    v16 = [v11 textWithString:v15];
    v20[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    [v10 setFormattedTextPieces:v17];

    v18 = [SearchUITLKMultilineTextConverter richTextForSearchUIText:v10];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)arrangedViewMustCenter:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIDetailedView *)self currentLeadingViewController];
  v6 = [v5 view];

  if (v6 == v4)
  {
    v11 = [(SearchUIDetailedView *)self currentLeadingViewController];
LABEL_7:
    v12 = v11;
    v10 = [v11 shouldVerticallyCenter];

    goto LABEL_8;
  }

  v7 = [(SearchUIDetailedView *)self buttonAndDetailViewStackView];

  if (v7 != v4)
  {
    v8 = [(SearchUIDetailedView *)self currentAccessoryViewController];
    v9 = [v8 view];

    if (v9 == v4)
    {
      v11 = [(SearchUIDetailedView *)self currentAccessoryViewController];
      goto LABEL_7;
    }
  }

  v10 = 1;
LABEL_8:

  return v10;
}

+ (void)addViewIfNecessary:(id)a3 toStackView:(id)a4 removeFromStackViews:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v15 = [v14 arrangedSubviews];
        v16 = [v15 containsObject:v7];

        if (v16)
        {
          [v14 removeArrangedSubview:v7];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = [v8 arrangedSubviews];
  v18 = [v17 containsObject:v7];

  if ((v18 & 1) == 0)
  {
    [v8 addArrangedSubview:v7];
  }
}

- (void)footnoteButtonPressed
{
  v2 = [(SearchUIDetailedView *)self buttonDelegate];
  [v2 footnoteButtonPressed];
}

- (BOOL)configureMenuForFootnoteButton:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIDetailedView *)self buttonDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(SearchUIDetailedView *)self buttonDelegate];
    v8 = [v7 configureMenuForFootnoteButton:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = [(SearchUIDetailedView *)self detailsView];

  if (v11 == v10)
  {
    [MEMORY[0x1E69D91A8] deviceScaledRoundedValue:self forView:0.5];
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

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  v6 = a3;
  v7 = [(SearchUIDetailedView *)self innerContainer];

  if (v7 == v6)
  {
    v8 = [(SearchUIDetailedView *)self isCompactWidth];
    v9 = [(SearchUIDetailedView *)self currentLeadingViewController];
    [v9 setUsesCompactWidth:v8];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = SearchUIDetailedView;
  v8 = [(SearchUIDetailedView *)&v15 hitTest:v7 withEvent:x, y];
  if ([v8 isDescendantOfView:self] && (-[SearchUIDetailedView currentLeadingViewController](self, "currentLeadingViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v10 == 2))
  {
    v11 = [(SearchUIDetailedView *)self currentLeadingViewController];
    v12 = [v11 view];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SearchUIDetailedView;
    v12 = [(SearchUIDetailedView *)&v14 hitTest:v7 withEvent:x, y];
  }

  return v12;
}

- (SearchUIDetailedViewDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

@end