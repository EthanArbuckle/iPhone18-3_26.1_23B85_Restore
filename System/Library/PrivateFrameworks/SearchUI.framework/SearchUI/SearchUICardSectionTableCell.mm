@interface SearchUICardSectionTableCell
- (id)leadingTextView;
- (id)leadingView;
- (id)presentingViewController;
- (void)createStyledButtons:(id)buttons buttonFont:(id)font isCompact:(BOOL)compact :(id)a6;
- (void)performSFCommand:(id)command;
- (void)reportSFFeedback:(id)feedback;
- (void)setDelegate:(id)delegate;
- (void)tabKeyPressed;
- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUICardSectionTableCell

- (void)setDelegate:(id)delegate
{
  v6.receiver = self;
  v6.super_class = SearchUICardSectionTableCell;
  delegateCopy = delegate;
  [(SearchUITableViewCell *)&v6 setDelegate:delegateCopy];
  v5 = [(SearchUITableViewCell *)self sizingContainer:v6.receiver];
  [v5 setFeedbackDelegate:delegateCopy];
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = SearchUICardSectionTableCell;
  [(SearchUITableViewCell *)&v11 updateWithRowModel:modelCopy];
  if ([SearchUIContentConfigurator supportsConfigurationFor:modelCopy])
  {
    [SearchUIContentConfigurator applyConfigurationTo:self rowModel:modelCopy interactionDelegate:self];
    contentView = [(SearchUICardSectionTableCell *)self contentView];
    [contentView setClipsToBounds:1];
  }

  else
  {
    sizingContainer = [(SearchUITableViewCell *)self sizingContainer];

    if (!sizingContainer)
    {
      delegate = [(SearchUITableViewCell *)self delegate];
      v8 = [SearchUICardSectionCreator cardSectionViewForModel:modelCopy feedbackDelegate:delegate];
      [(SearchUITableViewCell *)self setSizingContainer:v8];

      contentView2 = [(SearchUICardSectionTableCell *)self contentView];
      sizingContainer2 = [(SearchUITableViewCell *)self sizingContainer];
      [contentView2 addSubview:sizingContainer2];
    }

    contentView = [(SearchUITableViewCell *)self sizingContainer];
    [contentView updateWithRowModel:modelCopy];
  }
}

- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron
{
  chevronCopy = chevron;
  visibleCopy = visible;
  sizingContainer = [(SearchUITableViewCell *)self sizingContainer];
  [sizingContainer updateChevronVisible:visibleCopy leaveSpaceForChevron:chevronCopy];
}

- (void)tabKeyPressed
{
  sizingContainer = [(SearchUITableViewCell *)self sizingContainer];
  [sizingContainer tabKeyPressed];
}

- (id)leadingView
{
  cardSectionView = [(SearchUICardSectionTableCell *)self cardSectionView];
  leadingView = [cardSectionView leadingView];

  return leadingView;
}

- (id)leadingTextView
{
  cardSectionView = [(SearchUICardSectionTableCell *)self cardSectionView];
  leadingTextView = [cardSectionView leadingTextView];

  return leadingTextView;
}

- (void)createStyledButtons:(id)buttons buttonFont:(id)font isCompact:(BOOL)compact :(id)a6
{
  compactCopy = compact;
  v10 = a6;
  fontCopy = font;
  buttonsCopy = buttons;
  rowModel = [(SearchUITableViewCell *)self rowModel];
  delegate = [(SearchUITableViewCell *)self delegate];
  [SnippetUIUtilities createViewControllersForButtons:buttonsCopy buttonFont:fontCopy isCompact:compactCopy sourceView:self rowModel:rowModel delegate:delegate completionHandler:v10];
}

- (void)performSFCommand:(id)command
{
  commandCopy = command;
  rowModel = [(SearchUITableViewCell *)self rowModel];
  delegate = [(SearchUITableViewCell *)self delegate];
  [SnippetUIUtilities performSFCommand:commandCopy rowModel:rowModel delegate:delegate];
}

- (void)reportSFFeedback:(id)feedback
{
  feedbackCopy = feedback;
  rowModel = [(SearchUITableViewCell *)self rowModel];
  queryId = [rowModel queryId];
  delegate = [(SearchUITableViewCell *)self delegate];
  [SnippetUIUtilities reportFeedback:feedbackCopy queryId:queryId delegate:delegate];
}

- (id)presentingViewController
{
  delegate = [(SearchUITableViewCell *)self delegate];
  v4 = [SnippetUIUtilities presentingViewController:self delegate:delegate];

  return v4;
}

@end