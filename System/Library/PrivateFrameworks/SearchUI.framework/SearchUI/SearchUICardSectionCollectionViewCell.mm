@interface SearchUICardSectionCollectionViewCell
- (BOOL)highlightFrameMatchesHighlightView;
- (BOOL)needsInternalFocus;
- (BOOL)setupManualFocus;
- (CGRect)highlightFrame;
- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)a3;
- (double)highlightFrameCornerRadius;
- (id)embeddedViewController;
- (id)highlightReferenceView;
- (id)leadingTextView;
- (id)leadingView;
- (id)presentingViewController;
- (id)rowModelForCustomHighlightBehavior;
- (id)sizingView;
- (id)viewForForcedFocus;
- (void)createStyledButtons:(id)a3 buttonFont:(id)a4 isCompact:(BOOL)a5 :(id)a6;
- (void)emitInstrumentationEvent:(id)a3;
- (void)performSFCommand:(id)a3;
- (void)removeManualFocus;
- (void)reportSFFeedback:(id)a3;
- (void)returnKeyPressed;
- (void)setCustomViewProvider:(id)a3;
- (void)setDelegate:(id)a3;
- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUICardSectionCollectionViewCell

- (id)leadingView
{
  v2 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  v3 = [v2 leadingView];

  return v3;
}

- (id)leadingTextView
{
  v2 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  v3 = [v2 leadingTextView];

  return v3;
}

- (id)embeddedViewController
{
  v2 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  v3 = [v2 embeddedViewController];

  return v3;
}

- (BOOL)needsInternalFocus
{
  v2 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  v3 = [v2 needsInternalFocus];

  return v3;
}

- (id)highlightReferenceView
{
  v2 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  v3 = [v2 highlightReferenceView];

  return v3;
}

- (id)sizingView
{
  v3 = [(SearchUICardSectionCollectionViewCell *)self boxView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(SearchUICardSectionCollectionViewCell *)self contentView];
  }

  v6 = v5;

  return v6;
}

- (void)updateWithRowModel:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = SearchUICardSectionCollectionViewCell;
  [(SearchUICollectionViewCell *)&v29 updateWithRowModel:v4];
  if (![SearchUIContentConfigurator supportsConfigurationFor:v4])
  {
    [(SearchUICollectionViewCell *)self setUseSystemSizing:0];
    v6 = [(SearchUICardSectionCollectionViewCell *)self contentView];
    [v6 setClipsToBounds:0];

    v7 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];

    if (v7)
    {
      v8 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
      [v8 updateWithRowModel:v4];
    }

    else
    {
      v9 = [(SearchUICollectionViewCell *)self delegate];
      v10 = [SearchUICardSectionCreator cardSectionViewForModel:v4 feedbackDelegate:v9];
      [(SearchUICardSectionCollectionViewCell *)self setCardSectionView:v10];

      v11 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];

      if (!v11)
      {
LABEL_10:
        [v4 minimumLayoutSize];
        v25 = v24;
        v27 = v26;
        v28 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
        [v28 setMinimumLayoutSize:{v25, v27}];

        goto LABEL_11;
      }

      v12 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v14 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
        v15 = [(SearchUICollectionViewCell *)self customViewProvider];
        [v14 setViewProvider:v15];
      }

      v16 = objc_alloc(MEMORY[0x1E698B718]);
      v17 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
      v30[0] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      v19 = [v16 initWithArrangedSubviews:v18];
      [(SearchUICardSectionCollectionViewCell *)self setBoxView:v19];

      v20 = [(SearchUICardSectionCollectionViewCell *)self boxView];
      [v20 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

      v21 = [(SearchUICardSectionCollectionViewCell *)self boxView];
      [v21 setVerticalAlignment:1];

      v22 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
      [v22 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];

      v8 = [(SearchUICardSectionCollectionViewCell *)self contentView];
      v23 = [(SearchUICardSectionCollectionViewCell *)self boxView];
      [v8 addSubview:v23];
    }

    goto LABEL_10;
  }

  [SearchUIContentConfigurator applyConfigurationTo:self rowModel:v4 interactionDelegate:self];
  v5 = [(SearchUICardSectionCollectionViewCell *)self contentView];
  [v5 setClipsToBounds:1];

  [(SearchUICollectionViewCell *)self setUseSystemSizing:1];
LABEL_11:
}

- (void)setDelegate:(id)a3
{
  v6.receiver = self;
  v6.super_class = SearchUICardSectionCollectionViewCell;
  v4 = a3;
  [(SearchUICollectionViewCell *)&v6 setDelegate:v4];
  v5 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView:v6.receiver];
  [v5 setFeedbackDelegate:v4];
}

- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  [v6 updateChevronVisible:v5 leaveSpaceForChevron:v4];
}

- (BOOL)setupManualFocus
{
  v2 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  v3 = [v2 setupManualFocus];

  return v3;
}

- (void)removeManualFocus
{
  v2 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  [v2 removeManualFocus];
}

- (id)rowModelForCustomHighlightBehavior
{
  v3 = [(SearchUICollectionViewCell *)self rowModel];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SearchUICollectionViewCell *)self rowModel];
    if ([v5 supportsCustomHighlightBehavior])
    {
      goto LABEL_5;
    }
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (CGRect)highlightFrame
{
  v3 = [(SearchUICardSectionCollectionViewCell *)self rowModelForCustomHighlightBehavior];
  if (v3)
  {
    v4 = [(SearchUICardSectionCollectionViewCell *)self contentView];
    [v4 frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v3 intrinsicContentInset];
    [SearchUIAutoLayout rect:[(SearchUICardSectionCollectionViewCell *)self effectiveUserInterfaceLayoutDirection]== 0 insettedBy:v6 isLTR:v8, v10, v12, v13, v14, v15, v16];
  }

  else
  {
    v4 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
    [v4 highlightFrame];
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
  v3 = [(SearchUICardSectionCollectionViewCell *)self rowModelForCustomHighlightBehavior];
  v4 = v3;
  if (v3)
  {
    [v3 highlightReferenceFrameCornerRadius];
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
  v3 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  if ([v3 highlightFrameMatchesHighlightView])
  {
    v4 = [(SearchUICardSectionCollectionViewCell *)self rowModelForCustomHighlightBehavior];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)returnKeyPressed
{
  v2 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  [v2 returnKeyPressed];
}

- (id)viewForForcedFocus
{
  v2 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  v3 = [v2 viewForForcedFocus];

  return v3;
}

- (NSDirectionalEdgeInsets)_preferredSeparatorInsetsForProposedInsets:(NSDirectionalEdgeInsets)a3
{
  leading = a3.leading;
  v20.receiver = self;
  v20.super_class = SearchUICardSectionCollectionViewCell;
  [(SearchUICollectionViewCell *)&v20 _preferredSeparatorInsetsForProposedInsets:a3.top, a3.leading, a3.bottom, a3.trailing];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SearchUICollectionViewCell *)self rowModel];
  v14 = [v13 cardSection];
  if ([SnippetUIUtilities supportsConfigurationForCardSection:v14])
  {
    v15 = [(SearchUICollectionViewCell *)self sfSeparatorStyle];

    if (v15 == 3)
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

- (void)createStyledButtons:(id)a3 buttonFont:(id)a4 isCompact:(BOOL)a5 :(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v14 = [(SearchUICollectionViewCell *)self rowModel];
  v13 = [(SearchUICollectionViewCell *)self delegate];
  [SnippetUIUtilities createViewControllersForButtons:v12 buttonFont:v11 isCompact:v6 sourceView:self rowModel:v14 delegate:v13 completionHandler:v10];
}

- (void)performSFCommand:(id)a3
{
  v4 = a3;
  v6 = [(SearchUICollectionViewCell *)self rowModel];
  v5 = [(SearchUICollectionViewCell *)self delegate];
  [SnippetUIUtilities performSFCommand:v4 rowModel:v6 delegate:v5];
}

- (void)emitInstrumentationEvent:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICollectionViewCell *)self delegate];
  [SnippetUIUtilities emitInstrumentationEvent:v4 delegate:v5];
}

- (void)reportSFFeedback:(id)a3
{
  v4 = a3;
  v7 = [(SearchUICollectionViewCell *)self rowModel];
  v5 = [v7 queryId];
  v6 = [(SearchUICollectionViewCell *)self delegate];
  [SnippetUIUtilities reportFeedback:v4 queryId:v5 delegate:v6];
}

- (id)presentingViewController
{
  v3 = [(SearchUICollectionViewCell *)self delegate];
  v4 = [SnippetUIUtilities presentingViewController:self delegate:v3];

  return v4;
}

- (void)setCustomViewProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SearchUICardSectionCollectionViewCell;
  [(SearchUICollectionViewCell *)&v8 setCustomViewProvider:v4];
  v5 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(SearchUICardSectionCollectionViewCell *)self cardSectionView];
    [v7 setViewProvider:v4];
  }
}

@end