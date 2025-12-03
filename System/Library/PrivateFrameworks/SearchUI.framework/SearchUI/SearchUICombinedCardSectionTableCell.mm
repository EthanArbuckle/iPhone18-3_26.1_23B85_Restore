@interface SearchUICombinedCardSectionTableCell
- (id)presentingViewController;
- (void)createStyledButtons:(id)buttons buttonFont:(id)font isCompact:(BOOL)compact :(id)a6;
- (void)performSFCommand:(id)command;
- (void)reportSFFeedback:(id)feedback;
- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUICombinedCardSectionTableCell

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = SearchUICombinedCardSectionTableCell;
  [(SearchUITableViewCell *)&v14 updateWithRowModel:modelCopy];
  snippetUICardSections = [modelCopy snippetUICardSections];
  v6 = [snippetUICardSections count];

  if (v6)
  {
    snippetUICardSections2 = [modelCopy snippetUICardSections];
    [SearchUIContentConfigurator applyConfigurationTo:self rowModel:modelCopy cardSections:snippetUICardSections2 interactionDelegate:self];
  }

  else
  {
    sizingContainer = [(SearchUITableViewCell *)self sizingContainer];

    if (!sizingContainer)
    {
      v9 = objc_opt_new();
      [(SearchUITableViewCell *)self setSizingContainer:v9];

      contentView = [(SearchUICombinedCardSectionTableCell *)self contentView];
      sizingContainer2 = [(SearchUITableViewCell *)self sizingContainer];
      [contentView addSubview:sizingContainer2];

      delegate = [(SearchUITableViewCell *)self delegate];
      sizingContainer3 = [(SearchUITableViewCell *)self sizingContainer];
      [sizingContainer3 setFeedbackDelegate:delegate];
    }

    snippetUICardSections2 = [(SearchUITableViewCell *)self sizingContainer];
    [snippetUICardSections2 setRowModel:modelCopy];
  }
}

- (void)updateChevronVisible:(BOOL)visible leaveSpaceForChevron:(BOOL)chevron
{
  chevronCopy = chevron;
  visibleCopy = visible;
  sizingContainer = [(SearchUITableViewCell *)self sizingContainer];
  visibleArrangedSubviews = [sizingContainer visibleArrangedSubviews];

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