@interface SearchUICombinedCardSectionTableCell
- (id)presentingViewController;
- (void)createStyledButtons:(id)a3 buttonFont:(id)a4 isCompact:(BOOL)a5 :(id)a6;
- (void)performSFCommand:(id)a3;
- (void)reportSFFeedback:(id)a3;
- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUICombinedCardSectionTableCell

- (void)updateWithRowModel:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SearchUICombinedCardSectionTableCell;
  [(SearchUITableViewCell *)&v14 updateWithRowModel:v4];
  v5 = [v4 snippetUICardSections];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [v4 snippetUICardSections];
    [SearchUIContentConfigurator applyConfigurationTo:self rowModel:v4 cardSections:v7 interactionDelegate:self];
  }

  else
  {
    v8 = [(SearchUITableViewCell *)self sizingContainer];

    if (!v8)
    {
      v9 = objc_opt_new();
      [(SearchUITableViewCell *)self setSizingContainer:v9];

      v10 = [(SearchUICombinedCardSectionTableCell *)self contentView];
      v11 = [(SearchUITableViewCell *)self sizingContainer];
      [v10 addSubview:v11];

      v12 = [(SearchUITableViewCell *)self delegate];
      v13 = [(SearchUITableViewCell *)self sizingContainer];
      [v13 setFeedbackDelegate:v12];
    }

    v7 = [(SearchUITableViewCell *)self sizingContainer];
    [v7 setRowModel:v4];
  }
}

- (void)updateChevronVisible:(BOOL)a3 leaveSpaceForChevron:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [(SearchUITableViewCell *)self sizingContainer];
  v11 = [v6 visibleArrangedSubviews];

  v7 = [v11 count] == 2;
  v8 = v11;
  if (v7)
  {
    v9 = [v11 lastObject];
    v10 = [v11 objectAtIndexedSubscript:{objc_msgSend(v11, "count") - 2}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v10 updateChevronVisible:v5 leaveSpaceForChevron:v4];
      }
    }

    v8 = v11;
  }
}

- (void)createStyledButtons:(id)a3 buttonFont:(id)a4 isCompact:(BOOL)a5 :(id)a6
{
  v6 = a5;
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v14 = [(SearchUITableViewCell *)self rowModel];
  v13 = [(SearchUITableViewCell *)self delegate];
  [SnippetUIUtilities createViewControllersForButtons:v12 buttonFont:v11 isCompact:v6 sourceView:self rowModel:v14 delegate:v13 completionHandler:v10];
}

- (void)performSFCommand:(id)a3
{
  v4 = a3;
  v6 = [(SearchUITableViewCell *)self rowModel];
  v5 = [(SearchUITableViewCell *)self delegate];
  [SnippetUIUtilities performSFCommand:v4 rowModel:v6 delegate:v5];
}

- (void)reportSFFeedback:(id)a3
{
  v4 = a3;
  v7 = [(SearchUITableViewCell *)self rowModel];
  v5 = [v7 queryId];
  v6 = [(SearchUITableViewCell *)self delegate];
  [SnippetUIUtilities reportFeedback:v4 queryId:v5 delegate:v6];
}

- (id)presentingViewController
{
  v3 = [(SearchUITableViewCell *)self delegate];
  v4 = [SnippetUIUtilities presentingViewController:self delegate:v3];

  return v4;
}

@end