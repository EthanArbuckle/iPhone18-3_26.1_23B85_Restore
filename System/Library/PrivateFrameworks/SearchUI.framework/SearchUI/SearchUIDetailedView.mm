@interface SearchUIDetailedView
+ (id)bannerBadgeForRowModel:(id)model;
+ (void)addViewIfNecessary:(id)necessary toStackView:(id)view removeFromStackViews:(id)views;
- (BOOL)arrangedViewMustCenter:(id)center;
- (BOOL)configureMenuForFootnoteButton:(id)button;
- (BOOL)hasSecondLine;
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame;
- (SearchUIDetailedView)initWithFeedbackDelegate:(id)delegate;
- (SearchUIDetailedViewDelegate)buttonDelegate;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (UIView)leadingView;
- (double)trailingMarginForAccessoryViewController:(id)controller;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)didMoveToWindow;
- (void)footnoteButtonPressed;
- (void)setFeedbackDelegate:(id)delegate;
- (void)setIsVerticalAlignment:(BOOL)alignment;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLayoutMargins;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIDetailedView

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

- (UIView)leadingView
{
  innerContainer = [(SearchUIDetailedView *)self innerContainer];
  visibleArrangedSubviews = [innerContainer visibleArrangedSubviews];
  firstObject = [visibleArrangedSubviews firstObject];

  return firstObject;
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
  rowModel = [(SearchUIDetailedView *)self rowModel];
  useCompactVersionOfUI = [rowModel useCompactVersionOfUI];

  if (useCompactVersionOfUI)
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
      hasSecondLine = [(SearchUIDetailedView *)self hasSecondLine];
      v17 = TLKBiggerSuggestionsLayoutEnabled();
      v18 = 11.8;
      if (hasSecondLine)
      {
        v18 = 8.3;
      }

      v19 = 8.67;
      if (hasSecondLine)
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

      currentAccessoryViewController = [(SearchUIDetailedView *)self currentAccessoryViewController];
      [(SearchUIDetailedView *)self trailingMarginForAccessoryViewController:currentAccessoryViewController];
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
    rowModel2 = [(SearchUIDetailedView *)self rowModel];
    sectionType = [rowModel2 sectionType];

    if (sectionType == 2)
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
  detailsView = [(SearchUIDetailedView *)self detailsView];
  details = [detailsView details];

  v5 = [details countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(details);
        }

        if ([*(*(&v14 + 1) + 8 * i) hasContent])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [details countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  detailsView2 = [(SearchUIDetailedView *)self detailsView];
  footnote = [detailsView2 footnote];
  hasContent = [footnote hasContent];

  return v9 | hasContent;
}

- (SearchUIDetailedView)initWithFeedbackDelegate:(id)delegate
{
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = SearchUIDetailedView;
  v5 = [(SearchUIDetailedView *)&v16 init];
  v6 = v5;
  if (v5)
  {
    [(SearchUIDetailedView *)v5 setFeedbackDelegate:delegateCopy];
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
    innerContainer = [(SearchUIDetailedView *)v6 innerContainer];
    buttonAndDetailViewStackView = [(SearchUIDetailedView *)v6 buttonAndDetailViewStackView];
    [innerContainer addArrangedSubview:buttonAndDetailViewStackView];

    v11 = objc_opt_new();
    [v11 setDelegate:v6];
    [v11 setLayoutMargins:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    [MEMORY[0x1E69D9248] makeContainerShadowCompatible:v11];
    [(SearchUIDetailedView *)v6 setDetailsView:v11];
    buttonAndDetailViewStackView2 = [(SearchUIDetailedView *)v6 buttonAndDetailViewStackView];
    [buttonAndDetailViewStackView2 addArrangedSubview:v11];

    v13 = objc_opt_new();
    [(SearchUIDetailedView *)v6 setLeadingViewControllers:v13];

    v14 = objc_opt_new();
    [(SearchUIDetailedView *)v6 setAccessoryViewControllers:v14];

    [(SearchUIDetailedView *)v6 setIsVerticalAlignment:0];
  }

  return v6;
}

- (void)setIsVerticalAlignment:(BOOL)alignment
{
  alignmentCopy = alignment;
  self->_isVerticalAlignment = alignment;
  innerContainer = [(SearchUIDetailedView *)self innerContainer];
  v6 = innerContainer;
  if (alignmentCopy)
  {
    [innerContainer setAxis:1];

    [(NUIContainerStackView *)self setAxis:1];
    [(NUIContainerStackView *)self setAlignment:1];
    [(NUIContainerStackView *)self setBaselineRelativeArrangement:1];
    detailsView = [(SearchUIDetailedView *)self detailsView];
    viewForFirstBaselineLayout = [detailsView viewForFirstBaselineLayout];

    v8 = objc_opt_respondsToSelector();
    if (v8)
    {
      v9 = MEMORY[0x1E69D91A8];
      alignmentCopy = [viewForFirstBaselineLayout font];
      [v9 scaledValueForValue:alignmentCopy withFont:self view:22.0];
      v11 = v10;
    }

    else
    {
      v11 = *MEMORY[0x1E69D9268];
    }

    innerContainer2 = [(SearchUIDetailedView *)self innerContainer];
    [innerContainer2 setSpacing:v11];

    if (v8)
    {
    }

    innerContainer3 = [(SearchUIDetailedView *)self innerContainer];
    [innerContainer3 setBaselineRelativeArrangement:1];
  }

  else
  {
    [innerContainer setFlipsToVerticalAxisForAccessibilityContentSizes:1];

    innerContainer4 = [(SearchUIDetailedView *)self innerContainer];
    [innerContainer4 setBaselineRelativeArrangement:0];

    [(NUIContainerStackView *)self setAxis:0];
    [(NUIContainerStackView *)self setAlignment:3];

    [(NUIContainerStackView *)self setBaselineRelativeArrangement:0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = SearchUIDetailedView;
  [(SearchUIDetailedView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(SearchUIDetailedView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(SearchUIDetailedView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(SearchUIDetailedView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)tlk_updateForAppearance:(id)appearance
{
  v7.receiver = self;
  v7.super_class = SearchUIDetailedView;
  appearanceCopy = appearance;
  [(SearchUIDetailedView *)&v7 tlk_updateForAppearance:appearanceCopy];
  v5 = [(SearchUIDetailedView *)self currentAccessoryViewController:v7.receiver];
  [v5 tlk_updateForAppearance:appearanceCopy];

  currentLeadingViewController = [(SearchUIDetailedView *)self currentLeadingViewController];
  [currentLeadingViewController tlk_updateForAppearance:appearanceCopy];
}

- (void)setFeedbackDelegate:(id)delegate
{
  delegateCopy = delegate;
  objc_storeWeak(&self->_feedbackDelegate, delegateCopy);
  currentLeadingViewController = [(SearchUIDetailedView *)self currentLeadingViewController];
  [currentLeadingViewController setFeedbackDelegate:delegateCopy];

  currentAccessoryViewController = [(SearchUIDetailedView *)self currentAccessoryViewController];
  [currentAccessoryViewController setFeedbackDelegate:delegateCopy];
}

- (void)updateWithRowModel:(id)model
{
  v230 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  [(SearchUIDetailedView *)self setRowModel:modelCopy];
  currentLeadingViewController = [(SearchUIDetailedView *)self currentLeadingViewController];
  [currentLeadingViewController hide];

  currentAccessoryViewController = [(SearchUIDetailedView *)self currentAccessoryViewController];
  [currentAccessoryViewController hide];

  v7 = [SearchUILeadingViewController leadingViewClassForRowModel:modelCopy];
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
  leadingViewControllers = [(SearchUIDetailedView *)self leadingViewControllers];
  v10 = [leadingViewControllers countByEnumeratingWithState:&v216 objects:v229 count:16];
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
          objc_enumerationMutation(leadingViewControllers);
        }

        v15 = *(*(&v216 + 1) + 8 * i);
        if (objc_opt_class() == v8)
        {
          v16 = v15;

          v12 = v16;
        }
      }

      v11 = [leadingViewControllers countByEnumeratingWithState:&v216 objects:v229 count:16];
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
  view = [v12 view];
  [SearchUIAutoLayout requireIntrinsicSizeForView:view];

  innerContainer = [(SearchUIDetailedView *)self innerContainer];
  view2 = [v12 view];
  [innerContainer insertArrangedSubview:view2 atIndex:0];

  leadingViewControllers2 = [(SearchUIDetailedView *)self leadingViewControllers];
  [leadingViewControllers2 addObject:v12];

LABEL_16:
  [v12 updateWithRowModel:modelCopy];
  view3 = [v12 view];
  [view3 setHidden:0];

  view4 = [v12 view];
  [view4 setAlpha:1.0];

  feedbackDelegate = [(SearchUIDetailedView *)self feedbackDelegate];
  [v12 setFeedbackDelegate:feedbackDelegate];

LABEL_17:
  [(SearchUIDetailedView *)self setCurrentLeadingViewController:v12];
  detailsView = [(SearchUIDetailedView *)self detailsView];
  title = [modelCopy title];
  isMacOS = [MEMORY[0x1E69D9240] isMacOS];
  selfCopy = self;
  if (([modelCopy isLocalApplicationResult] & 1) != 0 || (objc_msgSend(modelCopy, "identifyingResult"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "contentType"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", @"com.apple.application-bundle"), v26, v25, v27))
  {
    applicationBundleIdentifier = [modelCopy applicationBundleIdentifier];
    v29 = [SearchUIUtilities bundleIdentifierIsBlockedForScreenTimeExpiration:applicationBundleIdentifier];

    if (v29)
    {
      v30 = title;
      v31 = objc_opt_new();
      v32 = +[SearchUIUtilities imageForBlockedApp];
      [v31 setGlyph:v32];

      title2 = [modelCopy title];
      text = [title2 text];
      v35 = text;
      if (isMacOS)
      {
        v36 = [text stringByAppendingString:@"  "];

        v37 = [MEMORY[0x1E69CA0F0] textWithString:v36];
        v228[0] = v37;
        v228[1] = v31;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v228 count:2];

        view5 = [v12 view];
        [view5 setAlpha:0.25];
      }

      else
      {
        v36 = [@"  " stringByAppendingString:text];

        v227[0] = v31;
        view5 = [MEMORY[0x1E69CA0F0] textWithString:v36];
        v227[1] = view5;
        v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v227 count:2];
      }

      title = objc_opt_new();
      [title setFormattedTextPieces:v38];
      [title setMaxLines:1];
    }
  }

  rowModel = [(SearchUIDetailedView *)self rowModel];
  sectionType = [rowModel sectionType];

  if (sectionType == 2)
  {
    [title setMaxLines:1];
  }

  v190 = title;
  v42 = [SearchUIAccessoryViewController accessoryViewClassForRowModel:modelCopy];
  v188 = [(objc_class *)v42 isEqual:objc_opt_class()];
  v187 = [(objc_class *)v42 isEqual:objc_opt_class()];
  if ([modelCopy buttonItemsAreTrailing])
  {
    buttonItems = 0;
  }

  else
  {
    buttonItems = [modelCopy buttonItems];
  }

  if ([buttonItems count])
  {
    buttonItemStackView = [(SearchUIDetailedView *)self buttonItemStackView];

    if (!buttonItemStackView)
    {
      v45 = objc_opt_new();
      [(SearchUIDetailedView *)self setButtonItemStackView:v45];

      buttonItemStackView2 = [(SearchUIDetailedView *)self buttonItemStackView];
      [buttonItemStackView2 setIsCompact:1];

      buttonItemStackView3 = [(SearchUIDetailedView *)self buttonItemStackView];
      [buttonItemStackView3 setFlipsToVerticalAxisForAccessibilityContentSizes:1];

      buttonAndDetailViewStackView = [(SearchUIDetailedView *)self buttonAndDetailViewStackView];
      buttonItemStackView4 = [(SearchUIDetailedView *)self buttonItemStackView];
      [buttonAndDetailViewStackView addArrangedSubview:buttonItemStackView4];

      buttonAndDetailViewStackView2 = [(SearchUIDetailedView *)self buttonAndDetailViewStackView];
      buttonItemStackView5 = [(SearchUIDetailedView *)self buttonItemStackView];
      [buttonAndDetailViewStackView2 setAlignment:1 forView:buttonItemStackView5 inAxis:0];
    }

    v42 = 0;
  }

  buttonItemStackView6 = [(SearchUIDetailedView *)self buttonItemStackView];
  feedbackDelegate2 = [(SearchUIDetailedView *)self feedbackDelegate];
  v54 = 3;
  [buttonItemStackView6 updateWithButtonItems:buttonItems maxButtonItems:3 buttonItemViewType:3 rowModel:modelCopy feedbackDelegate:feedbackDelegate2];

  buttonItemStackView7 = [(SearchUIDetailedView *)self buttonItemStackView];
  if (buttonItemStackView7)
  {
    feedbackDelegate2 = [(SearchUIDetailedView *)self buttonItemStackView];
    if ([feedbackDelegate2 isHidden])
    {
      v54 = 3;
    }

    else
    {
      v54 = 1;
    }
  }

  innerContainer2 = [(SearchUIDetailedView *)self innerContainer];
  [innerContainer2 setAlignment:v54];

  if (buttonItemStackView7)
  {
  }

  v195 = buttonItems;
  v196 = v12;
  if (!v42)
  {
    v66 = 0;
    v67 = v190;
    v59 = detailsView;
    goto LABEL_75;
  }

  v214 = 0u;
  v215 = 0u;
  v212 = 0u;
  v213 = 0u;
  accessoryViewControllers = [(SearchUIDetailedView *)self accessoryViewControllers];
  v58 = [accessoryViewControllers countByEnumeratingWithState:&v212 objects:v226 count:16];
  v59 = detailsView;
  if (!v58)
  {

LABEL_54:
    v61 = objc_opt_new();
    accessoryViewControllers2 = [(SearchUIDetailedView *)self accessoryViewControllers];
    [accessoryViewControllers2 addObject:v61];

    view6 = [v61 view];
    [SearchUIAutoLayout requireIntrinsicSizeForView:view6];

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
        objc_enumerationMutation(accessoryViewControllers);
      }

      v64 = *(*(&v212 + 1) + 8 * j);
      if (objc_opt_class() == v42)
      {
        v65 = v64;

        v61 = v65;
      }
    }

    v60 = [accessoryViewControllers countByEnumeratingWithState:&v212 objects:v226 count:16];
  }

  while (v60);

  if (!v61)
  {
    goto LABEL_54;
  }

LABEL_55:
  [v61 setDelegate:self];
  feedbackDelegate3 = [(SearchUIDetailedView *)self feedbackDelegate];
  [v61 setFeedbackDelegate:feedbackDelegate3];

  view7 = [v61 view];
  [view7 setHidden:0];

  v72 = v61;
  [v61 updateWithRowModel:modelCopy];
  rowModel2 = [(SearchUIDetailedView *)self rowModel];
  secondaryTitle = [rowModel2 secondaryTitle];
  v67 = v190;
  if (secondaryTitle)
  {
    rowModel3 = [(SearchUIDetailedView *)self rowModel];
    secondaryTitleIsDetached = [rowModel3 secondaryTitleIsDetached];
  }

  else
  {
    secondaryTitleIsDetached = 0;
  }

  view8 = [v72 view];
  innerContainer3 = [(SearchUIDetailedView *)self innerContainer];
  if ([innerContainer3 axis] != 1)
  {

    goto LABEL_63;
  }

  isVerticalAlignment = [(SearchUIDetailedView *)self isVerticalAlignment];

  if (isVerticalAlignment)
  {
LABEL_63:
    isVerticalAlignment2 = [(SearchUIDetailedView *)self isVerticalAlignment];
    v81 = objc_opt_class();
    innerContainer4 = [(SearchUIDetailedView *)self innerContainer];
    v83 = innerContainer4;
    if (isVerticalAlignment2)
    {
      v223 = innerContainer4;
      v84 = MEMORY[0x1E695DEC8];
      v85 = &v223;
      goto LABEL_65;
    }

    selfCopy2 = self;
    v92 = MEMORY[0x1E695DEC8];
    v93 = &selfCopy2;
LABEL_68:
    v88 = [v92 arrayWithObjects:v93 count:1];
    v89 = v81;
    v90 = view8;
    selfCopy4 = v83;
    goto LABEL_69;
  }

  shouldTopAlignForAccessibilityContentSizes = [v72 shouldTopAlignForAccessibilityContentSizes];
  v81 = objc_opt_class();
  innerContainer5 = [(SearchUIDetailedView *)self innerContainer];
  v83 = innerContainer5;
  if (!shouldTopAlignForAccessibilityContentSizes)
  {
    selfCopy3 = self;
    v92 = MEMORY[0x1E695DEC8];
    v93 = &selfCopy3;
    goto LABEL_68;
  }

  v225 = innerContainer5;
  v84 = MEMORY[0x1E695DEC8];
  v85 = &v225;
LABEL_65:
  v88 = [v84 arrayWithObjects:v85 count:1];
  v89 = v81;
  v90 = view8;
  selfCopy4 = self;
LABEL_69:
  [v89 addViewIfNecessary:v90 toStackView:selfCopy4 removeFromStackViews:v88];

  if (secondaryTitleIsDetached)
  {
    v94 = view8;
  }

  else
  {
    v94 = 0;
  }

  [detailsView setAccessoryView:v94];
  if (secondaryTitleIsDetached)
  {
    v95 = objc_opt_class();
    v221[0] = self;
    innerContainer6 = [(SearchUIDetailedView *)self innerContainer];
    v221[1] = innerContainer6;
    v97 = [MEMORY[0x1E695DEC8] arrayWithObjects:v221 count:2];
    [v95 addViewIfNecessary:view8 toStackView:0 removeFromStackViews:v97];
  }

  v66 = v72;
LABEL_75:
  v194 = v66;
  [(SearchUIDetailedView *)self setCurrentAccessoryViewController:?];
  currentLeadingViewController2 = [(SearchUIDetailedView *)self currentLeadingViewController];
  shouldCenterAlignToTitle = [currentLeadingViewController2 shouldCenterAlignToTitle];

  if ([(SearchUIDetailedView *)self isVerticalAlignment])
  {
    goto LABEL_102;
  }

  isHorizontalInLayout = [modelCopy isHorizontalInLayout];
  v101 = 8.0;
  v102 = TLKBiggerSuggestionsLayoutEnabled();
  v103 = 8.0;
  if ((shouldCenterAlignToTitle & 1) == 0)
  {
    v104 = 10.0;
    v105 = 14.0;
    if (v102)
    {
      v104 = 14.0;
    }

    if (isMacOS)
    {
      v105 = 12.0;
      v103 = 8.0;
    }

    else
    {
      v103 = v104;
    }

    if (isHorizontalInLayout)
    {
      v106 = 8.0;
    }

    else
    {
      v106 = v105;
    }

    if (![modelCopy useCompactVersionOfUI])
    {
      v103 = v106;
    }
  }

  innerContainer7 = [(SearchUIDetailedView *)self innerContainer];
  [innerContainer7 setSpacing:v103];

  useCompactVersionOfUI = [modelCopy useCompactVersionOfUI];
  v109 = 14.0;
  if (isMacOS)
  {
    v109 = 15.0;
  }

  if (useCompactVersionOfUI)
  {
    v110 = *MEMORY[0x1E698B6F8];
  }

  else
  {
    v110 = v109;
  }

  innerContainer8 = [(SearchUIDetailedView *)self innerContainer];
  axis = [innerContainer8 axis];

  if (axis != 1)
  {
    goto LABEL_101;
  }

  viewForFirstBaselineLayout = [v59 viewForFirstBaselineLayout];
  v110 = 8.0;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_96;
  }

  viewForFirstBaselineLayout2 = [v59 viewForFirstBaselineLayout];
  font = [viewForFirstBaselineLayout2 font];

  if (font)
  {
    [MEMORY[0x1E69D91A8] scaledValueForValue:font withFont:self view:8.0];
    v110 = v116;
    viewForFirstBaselineLayout = font;
LABEL_96:
  }

  viewForLastBaselineLayout = [v59 viewForLastBaselineLayout];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_100:

    goto LABEL_101;
  }

  viewForLastBaselineLayout2 = [v59 viewForLastBaselineLayout];
  font2 = [viewForLastBaselineLayout2 font];

  if (font2)
  {
    [MEMORY[0x1E69D91A8] scaledValueForValue:font2 withFont:self view:8.0];
    v101 = v120;
    viewForLastBaselineLayout = font2;
    goto LABEL_100;
  }

LABEL_101:
  innerContainer9 = [(SearchUIDetailedView *)self innerContainer];
  currentLeadingViewController3 = [(SearchUIDetailedView *)self currentLeadingViewController];
  view9 = [currentLeadingViewController3 view];
  [innerContainer9 setCustomSpacing:view9 afterView:v110];

  innerContainer10 = [(SearchUIDetailedView *)self innerContainer];
  buttonAndDetailViewStackView3 = [(SearchUIDetailedView *)self buttonAndDetailViewStackView];
  [innerContainer10 setCustomSpacing:buttonAndDetailViewStackView3 afterView:v101];

LABEL_102:
  isSuperLargeAccessibilitySize = [MEMORY[0x1E69D91A8] isSuperLargeAccessibilitySize];
  v204[0] = MEMORY[0x1E69E9820];
  v204[1] = 3221225472;
  v204[2] = __43__SearchUIDetailedView_updateWithRowModel___block_invoke;
  v204[3] = &unk_1E85B4830;
  v127 = v59;
  v205 = v127;
  selfCopy5 = self;
  v186 = modelCopy;
  v207 = v186;
  v185 = v67;
  v208 = v185;
  v198 = isSuperLargeAccessibilitySize;
  v209 = isSuperLargeAccessibilitySize;
  v210 = v188;
  v211 = v187;
  [v127 performBatchUpdates:v204];
  detailsView2 = [(SearchUIDetailedView *)self detailsView];
  viewForFirstBaselineLayout3 = [detailsView2 viewForFirstBaselineLayout];

  rowModel4 = [(SearchUIDetailedView *)self rowModel];
  useCompactVersionOfUI2 = [rowModel4 useCompactVersionOfUI];

  v132 = 0.0;
  v133 = 0.0;
  v134 = 0.0;
  if ((useCompactVersionOfUI2 & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      font3 = [viewForFirstBaselineLayout3 font];
    }

    else
    {
      font3 = 0;
    }

    v136 = MEMORY[0x1E69D91A8];
    [font3 ascender];
    v138 = v137;
    [font3 capHeight];
    [v136 deviceScaledRoundedValue:self forView:v138 - v139];
    v134 = v140;
    v141 = MEMORY[0x1E69D91A8];
    viewForLastBaselineLayout3 = [v127 viewForLastBaselineLayout];
    [viewForLastBaselineLayout3 effectiveBaselineOffsetFromContentBottom];
    [v141 deviceScaledRoundedValue:self forView:?];
    v133 = v143;
  }

  rowModel5 = [(SearchUIDetailedView *)self rowModel];
  isHorizontalInLayout2 = [rowModel5 isHorizontalInLayout];

  v146 = v134;
  v147 = 0.0;
  if (isHorizontalInLayout2)
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
    rowModel6 = [(SearchUIDetailedView *)self rowModel];
    if ([rowModel6 useCompactVersionOfUI])
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

  if (!(isHorizontalInLayout2 & 1 | ((shouldCenterAlignToTitle & 1) == 0)))
  {
    [viewForFirstBaselineLayout3 intrinsicContentSize];
    v154 = v153;
    currentLeadingViewController4 = [(SearchUIDetailedView *)self currentLeadingViewController];
    view10 = [currentLeadingViewController4 view];
    [view10 intrinsicContentSize];
    v149 = v134 + (v154 - v157) * -0.5;

    v151 = 0.0;
    v150 = 0.0;
    v152 = 0.0;
  }

  v189 = viewForFirstBaselineLayout3;
  [MEMORY[0x1E69D91A8] deviceScaledRoundedInsets:self forView:{v149, v152, v150, v151}];
  v159 = v158;
  v161 = v160;
  v163 = v162;
  v165 = v164;
  currentLeadingViewController5 = [(SearchUIDetailedView *)self currentLeadingViewController];
  view11 = [currentLeadingViewController5 view];
  [view11 setCustomAlignmentRectInsets:{v159, v161, v163, v165}];

  accessoryView = [v127 accessoryView];

  if (!accessoryView)
  {
    currentAccessoryViewController2 = [(SearchUIDetailedView *)self currentAccessoryViewController];
    if ([currentAccessoryViewController2 type] == 1)
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

    currentAccessoryViewController3 = [(SearchUIDetailedView *)self currentAccessoryViewController];
    view12 = [currentAccessoryViewController3 view];
    [view12 setCustomAlignmentRectInsets:{v146, v170, v133, v147}];
  }

  v192 = v127;
  innerContainer11 = [(SearchUIDetailedView *)self innerContainer];
  v174 = [innerContainer11 axis] == 0;

  v202 = 0u;
  v203 = 0u;
  v200 = 0u;
  v201 = 0u;
  innerContainer12 = [(SearchUIDetailedView *)self innerContainer];
  arrangedSubviews = [innerContainer12 arrangedSubviews];

  v177 = [arrangedSubviews countByEnumeratingWithState:&v200 objects:v220 count:16];
  if (v177)
  {
    v178 = v177;
    v179 = *v201;
    if (shouldCenterAlignToTitle)
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
          objc_enumerationMutation(arrangedSubviews);
        }

        v182 = *(*(&v200 + 1) + 8 * k);
        innerContainer13 = [(SearchUIDetailedView *)selfCopy innerContainer];
        if (v198 & 1 | ![(SearchUIDetailedView *)selfCopy arrangedViewMustCenter:v182])
        {
          v184 = v180;
        }

        else
        {
          v184 = 3;
        }

        [innerContainer13 setAlignment:v184 forView:v182 inAxis:v174];
      }

      v178 = [arrangedSubviews countByEnumeratingWithState:&v200 objects:v220 count:16];
    }

    while (v178);
  }

  [(SearchUIDetailedView *)selfCopy updateLayoutMargins];
  [(SearchUIDetailedView *)selfCopy tlk_updateWithCurrentAppearance];
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

- (double)trailingMarginForAccessoryViewController:(id)controller
{
  controllerCopy = controller;
  v5 = 0.0;
  if ([controllerCopy containsSymbolImage])
  {
    view = [controllerCopy view];
    [view intrinsicContentSize];
    v8 = v7;

    +[SearchUIUtilities imageAccessoryAdditionalCompactHorizontalMargin];
    v5 = v9 + v8 * -0.5;
  }

  rowModel = [(SearchUIDetailedView *)self rowModel];
  if (![rowModel useCompactVersionOfUI])
  {

    goto LABEL_7;
  }

  isMacOS = [MEMORY[0x1E69D9240] isMacOS];

  if (isMacOS)
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

+ (id)bannerBadgeForRowModel:(id)model
{
  v20[2] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  nearbyBusinessesString = [modelCopy nearbyBusinessesString];
  v5 = [nearbyBusinessesString length];

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
    nearbyBusinessesString2 = [modelCopy nearbyBusinessesString];
    localizedUppercaseString = [nearbyBusinessesString2 localizedUppercaseString];
    v15 = [v12 stringWithFormat:@" %@", localizedUppercaseString];
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

- (BOOL)arrangedViewMustCenter:(id)center
{
  centerCopy = center;
  currentLeadingViewController = [(SearchUIDetailedView *)self currentLeadingViewController];
  view = [currentLeadingViewController view];

  if (view == centerCopy)
  {
    currentLeadingViewController2 = [(SearchUIDetailedView *)self currentLeadingViewController];
LABEL_7:
    v12 = currentLeadingViewController2;
    shouldVerticallyCenter = [currentLeadingViewController2 shouldVerticallyCenter];

    goto LABEL_8;
  }

  buttonAndDetailViewStackView = [(SearchUIDetailedView *)self buttonAndDetailViewStackView];

  if (buttonAndDetailViewStackView != centerCopy)
  {
    currentAccessoryViewController = [(SearchUIDetailedView *)self currentAccessoryViewController];
    view2 = [currentAccessoryViewController view];

    if (view2 == centerCopy)
    {
      currentLeadingViewController2 = [(SearchUIDetailedView *)self currentAccessoryViewController];
      goto LABEL_7;
    }
  }

  shouldVerticallyCenter = 1;
LABEL_8:

  return shouldVerticallyCenter;
}

+ (void)addViewIfNecessary:(id)necessary toStackView:(id)view removeFromStackViews:(id)views
{
  v24 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  viewCopy = view;
  viewsCopy = views;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [viewsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(viewsCopy);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        arrangedSubviews = [v14 arrangedSubviews];
        v16 = [arrangedSubviews containsObject:necessaryCopy];

        if (v16)
        {
          [v14 removeArrangedSubview:necessaryCopy];
        }
      }

      v11 = [viewsCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  arrangedSubviews2 = [viewCopy arrangedSubviews];
  v18 = [arrangedSubviews2 containsObject:necessaryCopy];

  if ((v18 & 1) == 0)
  {
    [viewCopy addArrangedSubview:necessaryCopy];
  }
}

- (void)footnoteButtonPressed
{
  buttonDelegate = [(SearchUIDetailedView *)self buttonDelegate];
  [buttonDelegate footnoteButtonPressed];
}

- (BOOL)configureMenuForFootnoteButton:(id)button
{
  buttonCopy = button;
  buttonDelegate = [(SearchUIDetailedView *)self buttonDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    buttonDelegate2 = [(SearchUIDetailedView *)self buttonDelegate];
    v8 = [buttonDelegate2 configureMenuForFootnoteButton:buttonCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  subviewCopy = subview;
  detailsView = [(SearchUIDetailedView *)self detailsView];

  if (detailsView == subviewCopy)
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

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  viewCopy = view;
  innerContainer = [(SearchUIDetailedView *)self innerContainer];

  if (innerContainer == viewCopy)
  {
    isCompactWidth = [(SearchUIDetailedView *)self isCompactWidth];
    currentLeadingViewController = [(SearchUIDetailedView *)self currentLeadingViewController];
    [currentLeadingViewController setUsesCompactWidth:isCompactWidth];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = SearchUIDetailedView;
  v8 = [(SearchUIDetailedView *)&v15 hitTest:eventCopy withEvent:x, y];
  if ([v8 isDescendantOfView:self] && (-[SearchUIDetailedView currentLeadingViewController](self, "currentLeadingViewController"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "type"), v9, v10 == 2))
  {
    currentLeadingViewController = [(SearchUIDetailedView *)self currentLeadingViewController];
    view = [currentLeadingViewController view];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = SearchUIDetailedView;
    view = [(SearchUIDetailedView *)&v14 hitTest:eventCopy withEvent:x, y];
  }

  return view;
}

- (SearchUIDetailedViewDelegate)buttonDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonDelegate);

  return WeakRetained;
}

@end