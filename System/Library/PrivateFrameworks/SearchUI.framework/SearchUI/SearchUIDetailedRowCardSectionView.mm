@interface SearchUIDetailedRowCardSectionView
- (id)findDescendentOfView:(id)view matchingClass:(Class)class;
- (id)leadingTextView;
- (id)leadingView;
- (id)setupContentView;
- (id)viewForQuickLookZoomTransitionSource;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)setFeedbackDelegate:(id)delegate;
- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIDetailedRowCardSectionView

- (id)setupContentView
{
  v3 = [SearchUIDetailedView alloc];
  feedbackDelegate = [(SearchUICardSectionView *)self feedbackDelegate];
  v5 = [(SearchUIDetailedView *)v3 initWithFeedbackDelegate:feedbackDelegate];

  [(SearchUIDetailedView *)v5 setButtonDelegate:self];

  return v5;
}

- (id)leadingView
{
  contentView = [(SearchUICardSectionView *)self contentView];
  leadingView = [contentView leadingView];

  return leadingView;
}

- (id)leadingTextView
{
  contentView = [(SearchUICardSectionView *)self contentView];
  leadingTextView = [contentView leadingTextView];

  return leadingTextView;
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  v8.receiver = self;
  v8.super_class = SearchUIDetailedRowCardSectionView;
  [(SearchUICardSectionView *)&v8 containerView:view willMeasureArrangedSubviewsFittingSize:reason forReason:size.width, size.height];
  isCompactWidth = [(SearchUICardSectionView *)self isCompactWidth];
  contentView = [(SearchUICardSectionView *)self contentView];
  [contentView setIsCompactWidth:isCompactWidth];
}

- (void)updateWithRowModel:(id)model
{
  v8.receiver = self;
  v8.super_class = SearchUIDetailedRowCardSectionView;
  modelCopy = model;
  [(SearchUICardSectionView *)&v8 updateWithRowModel:modelCopy];
  v5 = [(SearchUICardSectionView *)self contentView:v8.receiver];
  [v5 updateWithRowModel:modelCopy];

  LODWORD(v5) = [modelCopy useCompactVersionOfUI];
  if (v5)
  {
    if ([MEMORY[0x1E69D9240] isMacOS])
    {
      [MEMORY[0x1E69D9248] makeContainerShadowCompatible:self];
      v6 = MEMORY[0x1E69D9248];
      contentView = [(SearchUICardSectionView *)self contentView];
      [v6 makeContainerShadowCompatible:contentView];
    }
  }
}

- (void)setFeedbackDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SearchUIDetailedRowCardSectionView;
  delegateCopy = delegate;
  [(SearchUICardSectionView *)&v6 setFeedbackDelegate:delegateCopy];
  v5 = [(SearchUICardSectionView *)self contentView:v6.receiver];
  [v5 setFeedbackDelegate:delegateCopy];
}

- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron
{
  chevronCopy = chevron;
  visibleCopy = visible;
  contentView = [(SearchUICardSectionView *)self contentView];
  currentAccessoryViewController = [contentView currentAccessoryViewController];

  if (!currentAccessoryViewController)
  {
    isHidden = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    rowModel = [(SearchUICardSectionView *)self rowModel];
    if (![rowModel useCompactVersionOfUI])
    {
      isHidden = 1;
      goto LABEL_8;
    }
  }

  view = [currentAccessoryViewController view];
  isHidden = [view isHidden];

  if (isKindOfClass)
  {
LABEL_8:
  }

LABEL_9:
  rowModel2 = [(SearchUICardSectionView *)self rowModel];
  buttonItems = [rowModel2 buttonItems];
  if ([buttonItems count])
  {
    rowModel3 = [(SearchUICardSectionView *)self rowModel];
    v16 = [rowModel3 buttonItemsAreTrailing] ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v17.receiver = self;
  v17.super_class = SearchUIDetailedRowCardSectionView;
  [(SearchUICardSectionView *)&v17 updateChevronVisible:visibleCopy & isHidden & v16 leaveSpaceForChevron:chevronCopy];
}

- (id)viewForQuickLookZoomTransitionSource
{
  leadingView = [(SearchUIDetailedRowCardSectionView *)self leadingView];
  v4 = [(SearchUIDetailedRowCardSectionView *)self findDescendentOfView:leadingView matchingClass:objc_opt_class()];
  v5 = v4;
  if (v4)
  {
    viewForQuickLookZoomTransitionSource = v4;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SearchUIDetailedRowCardSectionView;
    viewForQuickLookZoomTransitionSource = [(SearchUICardSectionView *)&v9 viewForQuickLookZoomTransitionSource];
  }

  v7 = viewForQuickLookZoomTransitionSource;

  return v7;
}

- (id)findDescendentOfView:(id)view matchingClass:(Class)class
{
  v20 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subviews = [viewCopy subviews];
    v9 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(subviews);
          }

          v13 = [(SearchUIDetailedRowCardSectionView *)self findDescendentOfView:*(*(&v15 + 1) + 8 * i) matchingClass:class];
          if (v13)
          {
            v7 = v13;

            goto LABEL_13;
          }
        }

        v10 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

LABEL_13:

  return v7;
}

@end