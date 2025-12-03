@interface SearchUICommandEnvironment
- (SearchUICardViewDelegate)cardViewDelegate;
- (SearchUICommandDelegate)commandDelegate;
- (SearchUICommandEnvironment)init;
- (SearchUIFeedbackDelegate)feedbackDelegate;
- (SearchUIResultsViewDelegate)resultsViewDelegate;
- (SearchUIRowModelViewDelegate)rowModelViewDelegate;
- (SearchUISectionModel)lastEngagedSection;
- (SearchUIWatchListDelegate)watchListDelegate;
- (UIView)sourceView;
- (UIViewController)presentingViewController;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SearchUICommandEnvironment

- (SearchUICommandEnvironment)init
{
  v5.receiver = self;
  v5.super_class = SearchUICommandEnvironment;
  v2 = [(SearchUICommandEnvironment *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SearchUICommandEnvironment *)v2 setSelectableGridPunchoutIndex:-1];
  }

  return v3;
}

- (SearchUIFeedbackDelegate)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  feedbackDelegate = [(SearchUICommandEnvironment *)self feedbackDelegate];
  [v4 setFeedbackDelegate:feedbackDelegate];

  commandDelegate = [(SearchUICommandEnvironment *)self commandDelegate];
  [v4 setCommandDelegate:commandDelegate];

  cardViewDelegate = [(SearchUICommandEnvironment *)self cardViewDelegate];
  [v4 setCardViewDelegate:cardViewDelegate];

  watchListDelegate = [(SearchUICommandEnvironment *)self watchListDelegate];
  [v4 setWatchListDelegate:watchListDelegate];

  [v4 setShouldUseInsetRoundedSections:{-[SearchUICommandEnvironment shouldUseInsetRoundedSections](self, "shouldUseInsetRoundedSections")}];
  [v4 setShouldUseStandardSectionInsets:{-[SearchUICommandEnvironment shouldUseStandardSectionInsets](self, "shouldUseStandardSectionInsets")}];
  [v4 setThreeDTouchEnabled:{-[SearchUICommandEnvironment threeDTouchEnabled](self, "threeDTouchEnabled")}];
  [v4 setSelectableGridPunchoutIndex:{-[SearchUICommandEnvironment selectableGridPunchoutIndex](self, "selectableGridPunchoutIndex")}];
  searchString = [(SearchUICommandEnvironment *)self searchString];
  [v4 setSearchString:searchString];

  sectionTitle = [(SearchUICommandEnvironment *)self sectionTitle];
  [v4 setSectionTitle:sectionTitle];

  presentingViewController = [(SearchUICommandEnvironment *)self presentingViewController];
  [v4 setPresentingViewController:presentingViewController];

  sourceView = [(SearchUICommandEnvironment *)self sourceView];
  [v4 setSourceView:sourceView];

  rowModelViewDelegate = [(SearchUICommandEnvironment *)self rowModelViewDelegate];
  [v4 setRowModelViewDelegate:rowModelViewDelegate];

  [v4 setQueryId:{-[SearchUICommandEnvironment queryId](self, "queryId")}];
  section = [(SearchUICommandEnvironment *)self section];
  [v4 setSection:section];

  resultsViewDelegate = [(SearchUICommandEnvironment *)self resultsViewDelegate];
  [v4 setResultsViewDelegate:resultsViewDelegate];

  lastEngagedSection = [(SearchUICommandEnvironment *)self lastEngagedSection];
  [v4 setLastEngagedSection:lastEngagedSection];

  [v4 setModifierFlags:{-[SearchUICommandEnvironment modifierFlags](self, "modifierFlags")}];
  return v4;
}

- (SearchUICommandDelegate)commandDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_commandDelegate);
  if (!WeakRetained)
  {
    feedbackDelegate = [(SearchUICommandEnvironment *)self feedbackDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      feedbackDelegate2 = [(SearchUICommandEnvironment *)self feedbackDelegate];
      WeakRetained = [feedbackDelegate2 commandDelegate];
    }

    else
    {
      WeakRetained = 0;
    }
  }

  return WeakRetained;
}

- (SearchUIRowModelViewDelegate)rowModelViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_rowModelViewDelegate);

  return WeakRetained;
}

- (SearchUICardViewDelegate)cardViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_cardViewDelegate);

  return WeakRetained;
}

- (SearchUIWatchListDelegate)watchListDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_watchListDelegate);

  return WeakRetained;
}

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (SearchUIResultsViewDelegate)resultsViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsViewDelegate);

  return WeakRetained;
}

- (SearchUISectionModel)lastEngagedSection
{
  WeakRetained = objc_loadWeakRetained(&self->_lastEngagedSection);

  return WeakRetained;
}

@end