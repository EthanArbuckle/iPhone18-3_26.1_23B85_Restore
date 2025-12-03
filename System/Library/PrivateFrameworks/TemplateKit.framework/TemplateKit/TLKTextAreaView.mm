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
- (void)internalTextFieldsInBatchUpdate:(BOOL)update;
- (void)performBatchUpdates:(id)updates;
- (void)propertiesDidChange;
- (void)setAccessoryView:(id)view;
- (void)setBannerText:(id)text;
- (void)setDetailTexts:(id)texts;
- (void)setFootnote:(id)footnote;
- (void)setFootnoteButtonText:(id)text;
- (void)setSecondaryTitle:(id)title;
- (void)setSecondaryTitleImage:(id)image;
- (void)setSecondaryTitleIsDetached:(BOOL)detached;
- (void)setTitle:(id)title;
- (void)setTopText:(id)text;
- (void)setTruncateTitleMiddle:(BOOL)middle;
- (void)setUseCompactMode:(BOOL)mode;
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

  titleContainer = [(TLKTextAreaView *)self titleContainer];
  [TLKLayoutUtilities requireIntrinsicSizeForView:titleContainer];

  v5 = objc_opt_new();
  [(TLKTextAreaView *)self setDetailFieldAndFootnoteStackView:v5];

  detailFieldAndFootnoteStackView = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  [detailFieldAndFootnoteStackView setAxis:1];

  detailFieldAndFootnoteStackView2 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  [detailFieldAndFootnoteStackView2 setArrangedSubviewRemovalPolicy:1];

  detailFieldAndFootnoteStackView3 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  [detailFieldAndFootnoteStackView3 setArrangedSubviewAdditionPolicy:1];

  v9 = objc_alloc(MEMORY[0x1E698B730]);
  detailFieldAndFootnoteStackView4 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  v21[0] = detailFieldAndFootnoteStackView4;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v12 = [v9 initWithArrangedSubviews:v11];

  [v12 setSpacing:10.0];
  [TLKView makeContainerShadowCompatible:v12];
  [(TLKTextAreaView *)self setDetailFieldFootnoteAndAccessoryStackView:v12];
  v13 = [TLKStackView alloc];
  titleContainer2 = [(TLKTextAreaView *)self titleContainer];
  v20[0] = titleContainer2;
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

  contentView = [(TLKView *)self contentView];
  [contentView setAxis:v3];

  contentView2 = [(TLKView *)self contentView];
  if ([contentView2 axis])
  {
    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  contentView3 = [(TLKView *)self contentView];
  [contentView3 setAlignment:v6];

  contentView4 = [(TLKView *)self contentView];
  if ([contentView4 axis])
  {
    v9 = 1;
  }

  else
  {
    v9 = 5;
  }

  contentView5 = [(TLKView *)self contentView];
  [contentView5 setAlignment:v9];

  topTextField = [(TLKTextAreaView *)self topTextField];
  topText = [(TLKTextAreaView *)self topText];

  if (topText && !topTextField)
  {
    topTextField = objc_opt_new();
    [topTextField setProminence:1];
    v12 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDD10] isShort:0 isBold:1];
    [topTextField setFont:v12];

    [topTextField setScaleIconsToFont:1];
    contentView6 = [(TLKView *)self contentView];
    [contentView6 insertArrangedSubview:topTextField atIndex:0];

    contentView7 = [(TLKView *)self contentView];
    [TLKLayoutUtilities deviceScaledRoundedValue:self forView:2.5];
    [contentView7 setCustomSpacing:topTextField afterView:?];

    [(TLKTextAreaView *)self setTopTextField:topTextField];
  }

  topText2 = [(TLKTextAreaView *)self topText];
  [topTextField setRichText:topText2];

  topText3 = [(TLKTextAreaView *)self topText];
  [topTextField setHidden:topText3 == 0];

  titleContainer = [(TLKTextAreaView *)self titleContainer];
  title = [(TLKTextAreaView *)self title];
  secondaryTitle = [(TLKTextAreaView *)self secondaryTitle];
  secondaryTitleImage = [(TLKTextAreaView *)self secondaryTitleImage];
  [titleContainer updateResultWithTitle:title secondaryTitle:secondaryTitle image:secondaryTitleImage detached:-[TLKTextAreaView secondaryTitleIsDetached](self useCompactMode:"secondaryTitleIsDetached") truncateMiddle:{-[TLKTextAreaView useCompactMode](self, "useCompactMode"), -[TLKTextAreaView truncateTitleMiddle](self, "truncateTitleMiddle")}];

  contentView8 = [(TLKView *)self contentView];
  secondaryTitle2 = [(TLKTextAreaView *)self secondaryTitle];
  titleContainer2 = [(TLKTextAreaView *)self titleContainer];
  [contentView8 setAlignment:secondaryTitle2 == 0 forView:titleContainer2 inAxis:0];

  [(TLKTextAreaView *)self updateBannerBadge];
  [(TLKTextAreaView *)self updateDetails];
  [(TLKTextAreaView *)self updateFootnote];
  detailFieldFootnoteAndAccessoryStackView = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
  arrangedSubviews = [detailFieldFootnoteAndAccessoryStackView arrangedSubviews];

  lastObject = 0;
  if ([arrangedSubviews count] >= 2)
  {
    lastObject = [arrangedSubviews lastObject];
  }

  accessoryView = [(TLKTextAreaView *)self accessoryView];
  if (lastObject != accessoryView)
  {
    if (lastObject)
    {
      detailFieldFootnoteAndAccessoryStackView2 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
      [detailFieldFootnoteAndAccessoryStackView2 removeArrangedSubview:lastObject];
    }

    if (accessoryView)
    {
      [accessoryView setCustomAlignmentRectInsets:{-2.0, 0.0, 0.0, 0.0}];
      [(TLKTextAreaView *)self insertDetailsStackViewIfNeeded];
      detailFieldFootnoteAndAccessoryStackView3 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
      [detailFieldFootnoteAndAccessoryStackView3 addArrangedSubview:accessoryView];
    }
  }

  detailsFields = [(TLKTextAreaView *)self detailsFields];
  firstObject = [detailsFields firstObject];

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

  contentView9 = [(TLKView *)self contentView];
  if (![(TLKTextAreaView *)self useCompactMode])
  {
    v32 = 5.0;
    if (![TLKUtilities isHiddenView:firstObject])
    {
      [TLKLayoutUtilities deviceScaledRoundedValue:self forView:v34];
      v32 = v36;
    }
  }

  titleContainer3 = [(TLKTextAreaView *)self titleContainer];
  [contentView9 setCustomSpacing:titleContainer3 afterView:v32];

  [(TLKTextAreaView *)self updateDetailFieldStackViewVisibility];
  if ([(TLKTextAreaView *)self isAccessoryViewBottomAligned])
  {
    v38 = 4;
  }

  else
  {
    v38 = 1;
  }

  detailFieldFootnoteAndAccessoryStackView4 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
  [detailFieldFootnoteAndAccessoryStackView4 setAlignment:v38];
}

- (void)updateBannerBadge
{
  bannerText = [(TLKTextAreaView *)self bannerText];
  if (bannerText)
  {
    bannerBadgeView = [(TLKTextAreaView *)self bannerBadgeView];

    if (!bannerBadgeView)
    {
      v4 = objc_opt_new();
      [(TLKTextAreaView *)self setBannerBadgeView:v4];

      contentView = [(TLKView *)self contentView];
      bannerBadgeView2 = [(TLKTextAreaView *)self bannerBadgeView];
      [contentView insertArrangedSubview:bannerBadgeView2 atIndex:0];

      contentView2 = [(TLKView *)self contentView];
      bannerBadgeView3 = [(TLKTextAreaView *)self bannerBadgeView];
      [contentView2 setCustomSpacing:bannerBadgeView3 afterView:4.0];

      bannerBadgeView4 = [(TLKTextAreaView *)self bannerBadgeView];
      [TLKLayoutUtilities requireIntrinsicSizeForView:bannerBadgeView4];
    }
  }

  bannerBadgeView5 = [(TLKTextAreaView *)self bannerBadgeView];
  v11 = [TLKFontUtilities cachedFontForTextStyle:*MEMORY[0x1E69DDD10] isShort:0 isBold:1];
  [bannerBadgeView5 setText:bannerText font:v11 customInsetSize:1 badge:{4.0, 2.0}];

  bannerBadgeView6 = [(TLKTextAreaView *)self bannerBadgeView];
  [bannerBadgeView6 setHidden:bannerText == 0];
}

- (void)updateDetails
{
  selfCopy = self;
  v118 = *MEMORY[0x1E69E9840];
  detailTexts = [(TLKTextAreaView *)self detailTexts];
  v4 = 0x1E7FD8000uLL;
  if (![detailTexts count])
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
    [(TLKTextAreaView *)selfCopy insertDetailsStackViewIfNeeded];
    detailsFields = [(TLKTextAreaView *)selfCopy detailsFields];
    v9 = [detailsFields count];

    if (v5 >= v9)
    {
      v11 = objc_opt_new();
      detailsFields2 = [(TLKTextAreaView *)selfCopy detailsFields];
      [detailsFields2 addObject:v11];
    }

    else
    {
      detailsFields2 = [(TLKTextAreaView *)selfCopy detailsFields];
      v11 = [detailsFields2 objectAtIndexedSubscript:v5];
    }

    [v11 setUseCompactMode:{-[TLKTextAreaView useCompactMode](selfCopy, "useCompactMode")}];
    v12 = [detailTexts objectAtIndexedSubscript:v5];
    if ([(TLKTextAreaView *)selfCopy useCompactMode])
    {
      [v12 setMaxLines:1];
    }

    [v11 setRichText:v12];
    if ([(TLKTextAreaView *)selfCopy useCompactMode])
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
        titleContainer = [(TLKTextAreaView *)selfCopy titleContainer];
        titleFont = [titleContainer titleFont];

        v4 = 0x1E7FD8000;
      }

      else
      {
        titleFont = [TLKFontUtilities cachedFontForTextStyle:v14 isShort:0 isBold:0];
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

      titleFont = v18;
    }

    [v11 setFont:titleFont];
    if ([(TLKTextAreaView *)selfCopy useCompactMode])
    {
      stars = [v12 stars];
      if (stars)
      {
        text2 = stars;
      }

      else
      {
        text = [v12 text];
        v22 = [text length];

        v23 = v22 >= v101;
        v4 = 0x1E7FD8000uLL;
        if (!v23)
        {
          goto LABEL_30;
        }

        text2 = [v12 text];
        v101 = [text2 length];
        v95 = v5;
      }

LABEL_30:
      stars2 = [v12 stars];
      if (stars2)
      {
        *&v25 = 1000.0;
      }

      else
      {
        *&v25 = 750.0;
      }

      [v11 setContentCompressionResistancePriority:0 forAxis:v25];

      v26 = [detailTexts count];
      LODWORD(v27) = 1132068864;
      if (v5 != v26 - 1)
      {
        *&v27 = 1000.0;
      }

      [v11 setContentHuggingPriority:0 forAxis:v27];
    }

    ++v5;
  }

  while (v5 < [detailTexts count]);
  if (v95 > 0)
  {
    detailsFields3 = [(TLKTextAreaView *)selfCopy detailsFields];
    v29 = [detailsFields3 objectAtIndexedSubscript:v95];
    LODWORD(v30) = 1132068864;
    [v29 setContentCompressionResistancePriority:0 forAxis:v30];
  }

LABEL_39:
  v31 = objc_opt_new();
  if ([*(v4 + 1824) isMacOS])
  {
    if ([(TLKTextAreaView *)selfCopy useCompactMode])
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
    detailTexts2 = [(TLKTextAreaView *)selfCopy detailTexts];
    if (![detailTexts2 count])
    {
      goto LABEL_52;
    }

    useCompactMode = [(TLKTextAreaView *)selfCopy useCompactMode];

    v31 = v98;
    if (useCompactMode)
    {
      hyphenField = [(TLKTextAreaView *)selfCopy hyphenField];

      if (!hyphenField)
      {
        v36 = [[TLKLabel alloc] initWithProminence:v32];
        [(TLKTextAreaView *)selfCopy setHyphenField:v36];

        hyphenField2 = [(TLKTextAreaView *)selfCopy hyphenField];
        [hyphenField2 setText:@"—"];
      }

      hyphenField3 = [(TLKTextAreaView *)selfCopy hyphenField];
      [v98 addObject:hyphenField3];

      detailTexts2 = [(TLKTextAreaView *)selfCopy hyphenField];
      [TLKLayoutUtilities requireIntrinsicSizeForView:detailTexts2];
LABEL_52:

      v31 = v98;
    }
  }

  v100 = objc_opt_new();
  detailsFields4 = [(TLKTextAreaView *)selfCopy detailsFields];
  v40 = [detailsFields4 count];

  if (v40)
  {
    v41 = 0;
    do
    {
      v42 = [detailTexts count];
      detailsFields5 = [(TLKTextAreaView *)selfCopy detailsFields];
      v44 = [detailsFields5 objectAtIndexedSubscript:v41];

      [v44 setHidden:v41 >= v42];
      if (v41 < v42)
      {
        [v44 setProminence:v32];
        [v100 addObject:v44];
        [v31 addObject:v44];
        if ([(TLKTextAreaView *)selfCopy useCompactMode])
        {
          if (v41 != [detailTexts count] - 1)
          {
            bulletFields = [(TLKTextAreaView *)selfCopy bulletFields];
            v46 = [bulletFields count];

            if (v41 >= v46)
            {
              v48 = [[TLKLabel alloc] initWithProminence:v32];
              font = [v44 font];
              [(TLKLabel *)v48 setFont:font];

              [(TLKLabel *)v48 setText:@"·"];
              [TLKLayoutUtilities requireIntrinsicSizeForView:v48];
              bulletFields2 = [(TLKTextAreaView *)selfCopy bulletFields];
              [bulletFields2 addObject:v48];
            }

            else
            {
              [0 setProminence:v32];
              bulletFields2 = [(TLKTextAreaView *)selfCopy bulletFields];
              v48 = [bulletFields2 objectAtIndexedSubscript:v41];
            }

            [v31 addObject:v48];
          }
        }
      }

      ++v41;
      detailsFields6 = [(TLKTextAreaView *)selfCopy detailsFields];
      v51 = [detailsFields6 count];
    }

    while (v41 < v51);
  }

  detailFieldStackView = [(TLKTextAreaView *)selfCopy detailFieldStackView];
  [detailFieldStackView setArrangedSubviews:v31];

  [(TLKTextAreaView *)selfCopy updateDetailFieldStackViewVisibility];
  v53 = [(TLKTextAreaView *)selfCopy useCompactMode]^ 1;
  detailFieldStackView2 = [(TLKTextAreaView *)selfCopy detailFieldStackView];
  [detailFieldStackView2 setAxis:v53];

  if ([(TLKTextAreaView *)selfCopy useCompactMode])
  {
    v55 = 5;
  }

  else
  {
    v55 = 1;
  }

  detailFieldStackView3 = [(TLKTextAreaView *)selfCopy detailFieldStackView];
  [detailFieldStackView3 setAlignment:v55];

  if (+[TLKUtilities isMacOS])
  {
    v57 = 0.0;
  }

  else
  {
    v57 = 2.0;
  }

  if ([(TLKTextAreaView *)selfCopy useCompactMode])
  {
    v58 = 3.0;
  }

  else
  {
    v58 = v57;
  }

  detailFieldStackView4 = [(TLKTextAreaView *)selfCopy detailFieldStackView];
  [detailFieldStackView4 setSpacing:v58];

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
          detailFieldStackView5 = [(TLKTextAreaView *)selfCopy detailFieldStackView];
          [detailFieldStackView5 setCustomSpacing:v66 afterView:v64];
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
              v78 = selfCopy;
              v79 = v68;
              v81 = v80 = v73;
              icons = [v81 icons];
              v83 = [icons count];

              v73 = v80;
              v68 = v79;
              selfCopy = v78;
              v72 = v77;
              v70 = v102;
              if (v83 == 1)
              {
                detailFieldStackView6 = [(TLKTextAreaView *)selfCopy detailFieldStackView];
                [detailFieldStackView6 setCustomSpacing:v75 afterView:v57];

                detailFieldStackView7 = [(TLKTextAreaView *)selfCopy detailFieldStackView];
                [detailFieldStackView7 setCustomSpacing:v76 afterView:3.0];
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
        if ([(TLKTextAreaView *)selfCopy useCompactMode])
        {
          viewForLastBaselineLayout = [v91 viewForLastBaselineLayout];
          alignment = [v91 alignmentForView:viewForLastBaselineLayout inAxis:1];

          if (alignment == -1)
          {
            alignment = [v91 alignment];
          }
        }

        else
        {
          alignment = -1;
        }

        detailFieldStackView8 = [(TLKTextAreaView *)selfCopy detailFieldStackView];
        [detailFieldStackView8 setAlignment:alignment forView:v91 inAxis:1];
      }

      v88 = [v86 countByEnumeratingWithState:&v103 objects:v115 count:16];
    }

    while (v88);
  }
}

- (void)updateDetailFieldStackViewVisibility
{
  detailFieldStackView = [(TLKTextAreaView *)self detailFieldStackView];
  visibleArrangedSubviews = [detailFieldStackView visibleArrangedSubviews];
  if ([visibleArrangedSubviews count])
  {
    if ([(TLKTextAreaView *)self useCompactMode])
    {
      isHorizontallyCompressed = [(TLKTextAreaView *)self isHorizontallyCompressed];
    }

    else
    {
      isHorizontallyCompressed = 0;
    }
  }

  else
  {
    isHorizontallyCompressed = 1;
  }

  detailFieldStackView2 = [(TLKTextAreaView *)self detailFieldStackView];
  [detailFieldStackView2 setHidden:isHorizontallyCompressed];

  detailFieldAndFootnoteStackView = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  visibleArrangedSubviews2 = [detailFieldAndFootnoteStackView visibleArrangedSubviews];
  v9 = [visibleArrangedSubviews2 count] == 0;
  detailFieldAndFootnoteStackView2 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
  [detailFieldAndFootnoteStackView2 setHidden:v9];

  detailFieldFootnoteAndAccessoryStackView = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
  visibleArrangedSubviews3 = [detailFieldFootnoteAndAccessoryStackView visibleArrangedSubviews];
  v12 = [visibleArrangedSubviews3 count] == 0;
  detailFieldFootnoteAndAccessoryStackView2 = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];
  [detailFieldFootnoteAndAccessoryStackView2 setHidden:v12];
}

- (void)updateFootnote
{
  footnote = [(TLKTextAreaView *)self footnote];
  footnoteButtonText = [(TLKTextAreaView *)self footnoteButtonText];
  if (footnote | footnoteButtonText)
  {
    footnoteContainer = [(TLKTextAreaView *)self footnoteContainer];

    if (!footnoteContainer)
    {
      v7 = objc_opt_new();
      [(TLKTextAreaView *)self setFootnoteContainer:v7];

      footnoteContainer2 = [(TLKTextAreaView *)self footnoteContainer];
      [footnoteContainer2 setAlignment:5];

      v9 = objc_opt_new();
      [(TLKTextAreaView *)self setFootnoteLabel:v9];
      footnoteContainer3 = [(TLKTextAreaView *)self footnoteContainer];
      [footnoteContainer3 addArrangedSubview:v9];

      detailFieldAndFootnoteStackView = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
      footnoteContainer4 = [(TLKTextAreaView *)self footnoteContainer];
      [detailFieldAndFootnoteStackView addArrangedSubview:footnoteContainer4];
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
    footnoteLabel = [(TLKTextAreaView *)self footnoteLabel];
    [footnoteLabel setFont:v16];

    if (footnoteButtonText)
    {
      footnoteButton = [(TLKTextAreaView *)self footnoteButton];

      if (!footnoteButton)
      {
        v19 = objc_opt_new();
        buttonDelegate = [(TLKTextAreaView *)self buttonDelegate];
        [v19 addTarget:buttonDelegate action:sel_footnoteButtonPressed];

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

        titleLabel = [v19 titleLabel];
        [titleLabel setTextAlignment:v21];

        [TLKLayoutUtilities requireIntrinsicSizeForView:v19];
        [(TLKTextAreaView *)self setFootnoteButton:v19];
        footnoteContainer5 = [(TLKTextAreaView *)self footnoteContainer];
        footnoteButton2 = [(TLKTextAreaView *)self footnoteButton];
        [footnoteContainer5 addArrangedSubview:footnoteButton2];
      }
    }

    footnoteButton3 = [(TLKTextAreaView *)self footnoteButton];
    [footnoteButton3 setFont:v16];

    footnoteButton4 = [(TLKTextAreaView *)self footnoteButton];

    if (footnoteButton4)
    {
      v26 = v15;
      if (footnoteButtonText)
      {
        footnoteButton4 = [(TLKTextAreaView *)self buttonDelegate];
        if (objc_opt_respondsToSelector())
        {
          buttonDelegate2 = [(TLKTextAreaView *)self buttonDelegate];
          footnoteButton2 = [(TLKTextAreaView *)self footnoteButton];
          v48 = buttonDelegate2;
          v28 = [buttonDelegate2 configureMenuForFootnoteButton:footnoteButton2];
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

      footnoteButton5 = [(TLKTextAreaView *)self footnoteButton];
      [footnoteButton5 setShowsMenuAsPrimaryAction:v28];

      if (v29)
      {
      }

      v15 = v26;
      if (footnoteButtonText)
      {
      }
    }

    footnoteButton6 = [(TLKTextAreaView *)self footnoteButton];
    [footnoteButton6 setTitle:footnoteButtonText];

    footnoteLabel2 = [(TLKTextAreaView *)self footnoteLabel];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __33__TLKTextAreaView_updateFootnote__block_invoke;
    v49[3] = &unk_1E7FD8DA8;
    v49[4] = self;
    v50 = footnote;
    [footnoteLabel2 performBatchUpdates:v49];

    detailFieldAndFootnoteStackView2 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
    footnoteContainer6 = [(TLKTextAreaView *)self footnoteContainer];
    [detailFieldAndFootnoteStackView2 setAlignment:footnoteButtonText == 0 forView:footnoteContainer6 inAxis:0];

    if ([(TLKTextAreaView *)self useCompactMode])
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    footnoteLabel3 = [(TLKTextAreaView *)self footnoteLabel];
    [footnoteLabel3 setProminence:v35];

    if ([(TLKTextAreaView *)self useCompactMode])
    {
      v37 = 1.0;
    }

    else
    {
      v37 = 3.0;
    }

    detailFieldAndFootnoteStackView3 = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
    detailFieldStackView = [(TLKTextAreaView *)self detailFieldStackView];
    [detailFieldAndFootnoteStackView3 setCustomSpacing:detailFieldStackView afterView:v37];
  }

  hasContent = [footnote hasContent];
  footnoteLabel4 = [(TLKTextAreaView *)self footnoteLabel];
  [footnoteLabel4 setHidden:hasContent ^ 1u];

  v42 = [footnoteButtonText length] == 0;
  footnoteButton7 = [(TLKTextAreaView *)self footnoteButton];
  [footnoteButton7 setHidden:v42];

  footnoteContainer7 = [(TLKTextAreaView *)self footnoteContainer];
  visibleArrangedSubviews = [footnoteContainer7 visibleArrangedSubviews];
  v46 = [visibleArrangedSubviews count] == 0;
  footnoteContainer8 = [(TLKTextAreaView *)self footnoteContainer];
  [footnoteContainer8 setHidden:v46];
}

- (id)viewForFirstBaselineLayout
{
  contentView = [(TLKView *)self contentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    while (1)
    {
      viewForFirstBaselineLayout = [contentView viewForFirstBaselineLayout];

      if (viewForFirstBaselineLayout == contentView)
      {
        break;
      }

      viewForFirstBaselineLayout2 = [contentView viewForFirstBaselineLayout];

      detailFieldFootnoteAndAccessoryStackView = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];

      if (viewForFirstBaselineLayout2 == detailFieldFootnoteAndAccessoryStackView)
      {
        detailFieldAndFootnoteStackView = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];

        viewForFirstBaselineLayout2 = detailFieldAndFootnoteStackView;
      }

      objc_opt_class();
      contentView = viewForFirstBaselineLayout2;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  viewForFirstBaselineLayout2 = contentView;
LABEL_8:

  return viewForFirstBaselineLayout2;
}

- (void)setBannerText:(id)text
{
  textCopy = text;
  if (self->_bannerText != textCopy)
  {
    objc_storeStrong(&self->_bannerText, text);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setTopText:(id)text
{
  textCopy = text;
  if (self->_topText != textCopy)
  {
    objc_storeStrong(&self->_topText, text);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    objc_storeStrong(&self->_title, title);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setTruncateTitleMiddle:(BOOL)middle
{
  if (self->_truncateTitleMiddle != middle)
  {
    self->_truncateTitleMiddle = middle;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setSecondaryTitle:(id)title
{
  titleCopy = title;
  if (self->_secondaryTitle != titleCopy)
  {
    objc_storeStrong(&self->_secondaryTitle, title);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setSecondaryTitleImage:(id)image
{
  imageCopy = image;
  if (self->_secondaryTitleImage != imageCopy)
  {
    objc_storeStrong(&self->_secondaryTitleImage, image);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setSecondaryTitleIsDetached:(BOOL)detached
{
  if (self->_secondaryTitleIsDetached != detached)
  {
    self->_secondaryTitleIsDetached = detached;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setDetailTexts:(id)texts
{
  textsCopy = texts;
  if (self->_detailTexts != textsCopy)
  {
    objc_storeStrong(&self->_detailTexts, texts);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setFootnote:(id)footnote
{
  footnoteCopy = footnote;
  if (self->_footnote != footnoteCopy)
  {
    objc_storeStrong(&self->_footnote, footnote);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setFootnoteButtonText:(id)text
{
  textCopy = text;
  if (self->_footnoteButtonText != textCopy)
  {
    objc_storeStrong(&self->_footnoteButtonText, text);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setUseCompactMode:(BOOL)mode
{
  if (self->_useCompactMode != mode)
  {
    self->_useCompactMode = mode;
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v5 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_accessoryView != viewCopy)
  {
    objc_storeStrong(&self->_accessoryView, view);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)insertDetailsStackViewIfNeeded
{
  detailFieldStackView = [(TLKTextAreaView *)self detailFieldStackView];

  if (!detailFieldStackView)
  {
    v4 = objc_opt_new();
    [(TLKTextAreaView *)self setDetailFieldStackView:v4];

    detailFieldStackView2 = [(TLKTextAreaView *)self detailFieldStackView];
    [detailFieldStackView2 setArrangedSubviewRemovalPolicy:1];

    detailFieldStackView3 = [(TLKTextAreaView *)self detailFieldStackView];
    [detailFieldStackView3 setArrangedSubviewAdditionPolicy:1];

    detailFieldAndFootnoteStackView = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];
    detailFieldStackView4 = [(TLKTextAreaView *)self detailFieldStackView];
    [detailFieldAndFootnoteStackView insertArrangedSubview:detailFieldStackView4 atIndex:0];
  }
}

- (void)performBatchUpdates:(id)updates
{
  updatesCopy = updates;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__TLKTextAreaView_performBatchUpdates___block_invoke;
  v7[3] = &unk_1E7FD8DD0;
  v7[4] = self;
  v8 = updatesCopy;
  v6.receiver = self;
  v6.super_class = TLKTextAreaView;
  v5 = updatesCopy;
  [(TLKView *)&v6 performBatchUpdates:v7];
}

uint64_t __39__TLKTextAreaView_performBatchUpdates___block_invoke(uint64_t a1)
{
  [*(a1 + 32) internalTextFieldsInBatchUpdate:1];
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 internalTextFieldsInBatchUpdate:0];
}

- (void)internalTextFieldsInBatchUpdate:(BOOL)update
{
  updateCopy = update;
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  detailsFields = [(TLKTextAreaView *)self detailsFields];
  v5 = [detailsFields countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    if (updateCopy)
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
          objc_enumerationMutation(detailsFields);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        observer = [v10 observer];
        batchUpdateCount = [observer batchUpdateCount];
        observer2 = [v10 observer];
        [observer2 setBatchUpdateCount:batchUpdateCount + v8];
      }

      v6 = [detailsFields countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  contentView = [(TLKView *)self contentView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    while (1)
    {
      viewForLastBaselineLayout = [contentView viewForLastBaselineLayout];

      if (viewForLastBaselineLayout == contentView)
      {
        break;
      }

      viewForLastBaselineLayout2 = [contentView viewForLastBaselineLayout];

      detailFieldFootnoteAndAccessoryStackView = [(TLKTextAreaView *)self detailFieldFootnoteAndAccessoryStackView];

      if (viewForLastBaselineLayout2 == detailFieldFootnoteAndAccessoryStackView)
      {
        detailFieldAndFootnoteStackView = [(TLKTextAreaView *)self detailFieldAndFootnoteStackView];

        viewForLastBaselineLayout2 = detailFieldAndFootnoteStackView;
      }

      objc_opt_class();
      contentView = viewForLastBaselineLayout2;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  viewForLastBaselineLayout2 = contentView;
LABEL_8:

  return viewForLastBaselineLayout2;
}

- (id)detailsStrings
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  detailsFields = [(TLKTextAreaView *)self detailsFields];
  v5 = [detailsFields countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(detailsFields);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isHidden] & 1) == 0)
        {
          attributedString = [v9 attributedString];
          [v3 addObject:attributedString];
        }
      }

      v6 = [detailsFields countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)titleLabelString
{
  titleContainer = [(TLKTextAreaView *)self titleContainer];
  titleLabelString = [titleContainer titleLabelString];

  return titleLabelString;
}

- (id)secondaryTitleLabelString
{
  titleContainer = [(TLKTextAreaView *)self titleContainer];
  secondaryTitleLabelString = [titleContainer secondaryTitleLabelString];

  return secondaryTitleLabelString;
}

- (id)footnoteLabelString
{
  footnoteLabel = [(TLKTextAreaView *)self footnoteLabel];
  isHidden = [footnoteLabel isHidden];

  if (isHidden)
  {
    string = 0;
  }

  else
  {
    footnoteLabel2 = [(TLKTextAreaView *)self footnoteLabel];
    attributedString = [footnoteLabel2 attributedString];
    string = [attributedString string];
  }

  return string;
}

- (TLKTextAreaViewDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

@end