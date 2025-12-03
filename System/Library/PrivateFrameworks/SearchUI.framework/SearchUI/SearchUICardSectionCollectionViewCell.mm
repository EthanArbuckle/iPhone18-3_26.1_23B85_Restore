@interface SearchUICardSectionCollectionViewCell
- (BOOL)highlightFrameMatchesHighlightView;
- (BOOL)needsInternalFocus;
- (BOOL)setupManualFocus;
- (CGRect)highlightFrame;
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)insets;
- (double)highlightFrameCornerRadius;
- (id)embeddedViewController;
- (id)highlightReferenceView;
- (id)leadingTextView;
- (id)leadingView;
- (id)presentingViewController;
- (id)rowModelForCustomHighlightBehavior;
- (id)sizingView;
- (id)viewForForcedFocus;
- (void)createStyledButtons:(id)buttons buttonFont:(id)font isCompact:(BOOL)compact :(id)a6;
- (void)emitInstrumentationEvent:(id)event;
- (void)performSFCommand:(id)command;
- (void)removeManualFocus;
- (void)reportSFFeedback:(id)feedback;
- (void)returnKeyPressed;
- (void)setCustomViewProvider:(id)provider;
- (void)setDelegate:(id)delegate;
- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUICardSectionCollectionViewCell

- (id)leadingView
{
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  leadingView = [cardSectionView leadingView];

  return leadingView;
}

- (id)leadingTextView
{
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  leadingTextView = [cardSectionView leadingTextView];

  return leadingTextView;
}

- (id)embeddedViewController
{
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  embeddedViewController = [cardSectionView embeddedViewController];

  return embeddedViewController;
}

- (BOOL)needsInternalFocus
{
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  needsInternalFocus = [cardSectionView needsInternalFocus];

  return needsInternalFocus;
}

- (id)highlightReferenceView
{
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  highlightReferenceView = [cardSectionView highlightReferenceView];

  return highlightReferenceView;
}

- (id)sizingView
{
  boxView = [(SearchUICardSectionCollectionViewCell *)self boxView];
  v4 = boxView;
  if (boxView)
  {
    contentView = boxView;
  }

  else
  {
    contentView = [(SearchUICardSectionCollectionViewCell *)self contentView];
  }

  v6 = contentView;

  return v6;
}

- (void)updateWithRowModel:(id)model
{
  v30[1] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v29.receiver = self;
  v29.super_class = SearchUICardSectionCollectionViewCell;
  [(SearchUICollectionViewCell *)&v29 updateWithRowModel:modelCopy];
  if (![SearchUIContentConfigurator supportsConfigurationFor:modelCopy])
  {
    [(SearchUICollectionViewCell *)self setUseSystemSizing:0];
    contentView = [(SearchUICardSectionCollectionViewCell *)self contentView];
    [contentView setClipsToBounds:0];

    cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];

    if (cardSectionView)
    {
      cardSectionView2 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
      [cardSectionView2 updateWithRowModel:modelCopy];
    }

    else
    {
      delegate = [(SearchUICollectionViewCell *)self delegate];
      v10 = [SearchUICardSectionCreator cardSectionViewForModel:modelCopy feedbackDelegate:delegate];
      [(SearchUICardSectionCollectionViewCell *)self setCardSectionView:v10];

      cardSectionView3 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];

      if (!cardSectionView3)
      {
LABEL_10:
        [modelCopy minimumLayoutSize];
        v25 = v24;
        v27 = v26;
        cardSectionView4 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
        [cardSectionView4 setMinimumLayoutSize:{v25, v27}];

        goto LABEL_11;
      }

      cardSectionView5 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        cardSectionView6 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
        customViewProvider = [(SearchUICollectionViewCell *)self customViewProvider];
        [cardSectionView6 setViewProvider:customViewProvider];
      }

      v16 = objc_alloc(MEMORY[0x1E698B718]);
      cardSectionView7 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
      v30[0] = cardSectionView7;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v19 = [v16 initWithArrangedSubviews:v18];
      [(SearchUICardSectionCollectionViewCell *)self setBoxView:v19];

      boxView = [(SearchUICardSectionCollectionViewCell *)self boxView];
      [boxView setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

      boxView2 = [(SearchUICardSectionCollectionViewCell *)self boxView];
      [boxView2 setVerticalAlignment:1];

      cardSectionView8 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
      [cardSectionView8 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

      cardSectionView2 = [(SearchUICardSectionCollectionViewCell *)self contentView];
      boxView3 = [(SearchUICardSectionCollectionViewCell *)self boxView];
      [cardSectionView2 addSubview:boxView3];
    }

    goto LABEL_10;
  }

  [SearchUIContentConfigurator applyConfigurationTo:self rowModel:modelCopy interactionDelegate:self];
  contentView2 = [(SearchUICardSectionCollectionViewCell *)self contentView];
  [contentView2 setClipsToBounds:1];

  [(SearchUICollectionViewCell *)self setUseSystemSizing:1];
LABEL_11:
}

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SearchUICardSectionCollectionViewCell;
  delegateCopy = delegate;
  [(SearchUICollectionViewCell *)&v6 setDelegate:delegateCopy];
  v5 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView:v6.receiver];
  [v5 setFeedbackDelegate:delegateCopy];
}

- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron
{
  chevronCopy = chevron;
  visibleCopy = visible;
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  [cardSectionView updateChevronVisible:visibleCopy leaveSpaceForChevron:chevronCopy];
}

- (BOOL)setupManualFocus
{
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  setupManualFocus = [cardSectionView setupManualFocus];

  return setupManualFocus;
}

- (void)removeManualFocus
{
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  [cardSectionView removeManualFocus];
}

- (id)rowModelForCustomHighlightBehavior
{
  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    rowModel2 = [(SearchUICollectionViewCell *)self rowModel];
    if ([rowModel2 supportsCustomHighlightBehavior])
    {
      goto LABEL_5;
    }
  }

  rowModel2 = 0;
LABEL_5:

  return rowModel2;
}

- (CGRect)highlightFrame
{
  rowModelForCustomHighlightBehavior = [(SearchUICardSectionCollectionViewCell *)self rowModelForCustomHighlightBehavior];
  if (rowModelForCustomHighlightBehavior)
  {
    contentView = [(SearchUICardSectionCollectionViewCell *)self contentView];
    [contentView frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [rowModelForCustomHighlightBehavior intrinsicContentInset];
    [SearchUIAutoLayout rect:[(SearchUICardSectionCollectionViewCell *)self effectiveUserInterfaceLayoutDirection]== 0 insettedBy:v6 isLTR:v8, v10, v12, v13, v14, v15, v16];
  }

  else
  {
    contentView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
    [contentView highlightFrame];
  }

  v21 = v17;
  v22 = v18;
  v23 = v19;
  v24 = v20;

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (double)highlightFrameCornerRadius
{
  rowModelForCustomHighlightBehavior = [(SearchUICardSectionCollectionViewCell *)self rowModelForCustomHighlightBehavior];
  v4 = rowModelForCustomHighlightBehavior;
  if (rowModelForCustomHighlightBehavior)
  {
    [rowModelForCustomHighlightBehavior highlightReferenceFrameCornerRadius];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SearchUICardSectionCollectionViewCell;
    [(SearchUICollectionViewCell *)&v8 highlightFrameCornerRadius];
  }

  v6 = v5;

  return v6;
}

- (BOOL)highlightFrameMatchesHighlightView
{
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  if ([cardSectionView highlightFrameMatchesHighlightView])
  {
    rowModelForCustomHighlightBehavior = [(SearchUICardSectionCollectionViewCell *)self rowModelForCustomHighlightBehavior];
    v5 = rowModelForCustomHighlightBehavior == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)returnKeyPressed
{
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  [cardSectionView returnKeyPressed];
}

- (id)viewForForcedFocus
{
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  viewForForcedFocus = [cardSectionView viewForForcedFocus];

  return viewForForcedFocus;
}

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)insets
{
  leading = insets.leading;
  v20.receiver = self;
  v20.super_class = SearchUICardSectionCollectionViewCell;
  [(SearchUICollectionViewCell *)&v20 _preferredSeparatorInsetsForProposedInsets:insets.top, insets.leading, insets.bottom, insets.trailing];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  cardSection = [rowModel cardSection];
  if ([SnippetUIUtilities supportsConfigurationForCardSection:cardSection])
  {
    sfSeparatorStyle = [(SearchUICollectionViewCell *)self sfSeparatorStyle];

    if (sfSeparatorStyle == 3)
    {
      v8 = leading;
    }
  }

  else
  {
  }

  v16 = v6;
  v17 = v8;
  v18 = v10;
  v19 = v12;
  result.trailing = v19;
  result.bottom = v18;
  result.leading = v17;
  result.top = v16;
  return result;
}

- (void)createStyledButtons:(id)buttons buttonFont:(id)font isCompact:(BOOL)compact :(id)a6
{
  compactCopy = compact;
  v10 = a6;
  fontCopy = font;
  buttonsCopy = buttons;
  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  delegate = [(SearchUICollectionViewCell *)self delegate];
  [SnippetUIUtilities createViewControllersForButtons:buttonsCopy buttonFont:fontCopy isCompact:compactCopy sourceView:self rowModel:rowModel delegate:delegate completionHandler:v10];
}

- (void)performSFCommand:(id)command
{
  commandCopy = command;
  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  delegate = [(SearchUICollectionViewCell *)self delegate];
  [SnippetUIUtilities performSFCommand:commandCopy rowModel:rowModel delegate:delegate];
}

- (void)emitInstrumentationEvent:(id)event
{
  eventCopy = event;
  delegate = [(SearchUICollectionViewCell *)self delegate];
  [SnippetUIUtilities emitInstrumentationEvent:eventCopy delegate:delegate];
}

- (void)reportSFFeedback:(id)feedback
{
  feedbackCopy = feedback;
  rowModel = [(SearchUICollectionViewCell *)self rowModel];
  queryId = [rowModel queryId];
  delegate = [(SearchUICollectionViewCell *)self delegate];
  [SnippetUIUtilities reportFeedback:feedbackCopy queryId:queryId delegate:delegate];
}

- (id)presentingViewController
{
  delegate = [(SearchUICollectionViewCell *)self delegate];
  v4 = [SnippetUIUtilities presentingViewController:self delegate:delegate];

  return v4;
}

- (void)setCustomViewProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = SearchUICardSectionCollectionViewCell;
  [(SearchUICollectionViewCell *)&v8 setCustomViewProvider:providerCopy];
  cardSectionView = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    cardSectionView2 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
    [cardSectionView2 setViewProvider:providerCopy];
  }
}

@end