@interface SearchUICombinedCollectionViewCell
- (id)presentingViewController;
- (void)createStyledButtons:(id)buttons buttonFont:(id)font isCompact:(BOOL)compact :(id)a6;
- (void)emitInstrumentationEvent:(id)event;
- (void)performSFCommand:(id)command;
- (void)reportSFFeedback:(id)feedback;
- (void)setDelegate:(id)delegate;
- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUICombinedCollectionViewCell

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = SearchUICombinedCollectionViewCell;
  [(SearchUICollectionViewCell *)&v14 updateWithRowModel:modelCopy];
  snippetUICardSections = [modelCopy snippetUICardSections];
  v6 = [snippetUICardSections count];

  if (v6)
  {
    [(SearchUICollectionViewCell *)self setUseSystemSizing:1];
    snippetUICardSections2 = [modelCopy snippetUICardSections];
    [SearchUIContentConfigurator applyConfigurationTo:self rowModel:modelCopy cardSections:snippetUICardSections2 interactionDelegate:self];
  }

  else
  {
    cardSectionView = [(SearchUICombinedCollectionViewCell *)self cardSectionView];

    if (cardSectionView)
    {
      snippetUICardSections2 = [(SearchUICombinedCollectionViewCell *)self cardSectionView];
      [snippetUICardSections2 setRowModel:modelCopy];
    }

    else
    {
      v9 = [SearchUICombinedCardSectionsView alloc];
      delegate = [(SearchUICollectionViewCell *)self delegate];
      v11 = [(SearchUICombinedCardSectionsView *)v9 initWithRowModel:modelCopy feedbackDelegate:delegate];
      [(SearchUICombinedCollectionViewCell *)self setCardSectionView:v11];

      contentView = [(SearchUICombinedCollectionViewCell *)self contentView];
      cardSectionView2 = [(SearchUICombinedCollectionViewCell *)self cardSectionView];
      [contentView addSubview:cardSectionView2];

      snippetUICardSections2 = [(SearchUICombinedCollectionViewCell *)self cardSectionView];
      [snippetUICardSections2 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
    }
  }
}

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SearchUICombinedCollectionViewCell;
  delegateCopy = delegate;
  [(SearchUICollectionViewCell *)&v6 setDelegate:delegateCopy];
  v5 = [(SearchUICombinedCollectionViewCell *)self cardSectionView:v6.receiver];
  [v5 setFeedbackDelegate:delegateCopy];
}

- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron
{
  chevronCopy = chevron;
  visibleCopy = visible;
  cardSectionView = [(SearchUICombinedCollectionViewCell *)self cardSectionView];
  visibleArrangedSubviews = [cardSectionView visibleArrangedSubviews];

  v7 = [visibleArrangedSubviews count] == 2;
  v8 = visibleArrangedSubviews;
  if (v7)
  {
    lastObject = [visibleArrangedSubviews lastObject];
    v10 = [visibleArrangedSubviews objectAtIndexedSubscript:{objc_msgSend(visibleArrangedSubviews, "count") - 2}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 updateChevronVisible:visibleCopy leaveSpaceForChevron:chevronCopy];
      }
    }

    v8 = visibleArrangedSubviews;
  }
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

@end