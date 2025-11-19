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
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v4 = objc_opt_new();
  v5 = [(SearchUICommandEnvironment *)self feedbackDelegate];
  [v4 setFeedbackDelegate:v5];

  v6 = [(SearchUICommandEnvironment *)self commandDelegate];
  [v4 setCommandDelegate:v6];

  v7 = [(SearchUICommandEnvironment *)self cardViewDelegate];
  [v4 setCardViewDelegate:v7];

  v8 = [(SearchUICommandEnvironment *)self watchListDelegate];
  [v4 setWatchListDelegate:v8];

  [v4 setShouldUseInsetRoundedSections:{-[SearchUICommandEnvironment shouldUseInsetRoundedSections](self, "shouldUseInsetRoundedSections")}];
  [v4 setShouldUseStandardSectionInsets:{-[SearchUICommandEnvironment shouldUseStandardSectionInsets](self, "shouldUseStandardSectionInsets")}];
  [v4 setThreeDTouchEnabled:{-[SearchUICommandEnvironment threeDTouchEnabled](self, "threeDTouchEnabled")}];
  [v4 setSelectableGridPunchoutIndex:{-[SearchUICommandEnvironment selectableGridPunchoutIndex](self, "selectableGridPunchoutIndex")}];
  v9 = [(SearchUICommandEnvironment *)self searchString];
  [v4 setSearchString:v9];

  v10 = [(SearchUICommandEnvironment *)self sectionTitle];
  [v4 setSectionTitle:v10];

  v11 = [(SearchUICommandEnvironment *)self presentingViewController];
  [v4 setPresentingViewController:v11];

  v12 = [(SearchUICommandEnvironment *)self sourceView];
  [v4 setSourceView:v12];

  v13 = [(SearchUICommandEnvironment *)self rowModelViewDelegate];
  [v4 setRowModelViewDelegate:v13];

  [v4 setQueryId:{-[SearchUICommandEnvironment queryId](self, "queryId")}];
  v14 = [(SearchUICommandEnvironment *)self section];
  [v4 setSection:v14];

  v15 = [(SearchUICommandEnvironment *)self resultsViewDelegate];
  [v4 setResultsViewDelegate:v15];

  v16 = [(SearchUICommandEnvironment *)self lastEngagedSection];
  [v4 setLastEngagedSection:v16];

  [v4 setModifierFlags:{-[SearchUICommandEnvironment modifierFlags](self, "modifierFlags")}];
  return v4;
}

- (SearchUICommandDelegate)commandDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_commandDelegate);
  if (!WeakRetained)
  {
    v4 = [(SearchUICommandEnvironment *)self feedbackDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [(SearchUICommandEnvironment *)self feedbackDelegate];
      WeakRetained = [v6 commandDelegate];
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