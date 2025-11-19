@interface WBSCompletionListRankingObserver
- (SFRankingFeedback)rankingFeedback;
- (WBSCompletionListRankingObserverDelegate)delegate;
- (id)_createFeedbackGenerator;
- (unint64_t)completionListRankingObserverFeedbackGenerator:(id)a3 frequentlyVisitedSitesIndexOfItem:(id)a4 hidingItem:(id)a5;
- (void)didBeginRanking;
- (void)didBeginSectionWithBundleIdentifier:(id)a3;
- (void)didEndRanking;
@end

@implementation WBSCompletionListRankingObserver

- (void)didBeginRanking
{
  v3 = [(WBSCompletionListRankingObserver *)self _createFeedbackGenerator];
  feedbackGenerator = self->_feedbackGenerator;
  self->_feedbackGenerator = v3;

  if (objc_opt_respondsToSelector())
  {
    v5 = self->_feedbackGenerator;

    [(_CompletionListRankingObserverFeedbackGenerator *)v5 didBeginRanking];
  }
}

- (void)didEndRanking
{
  if (objc_opt_respondsToSelector())
  {
    feedbackGenerator = self->_feedbackGenerator;

    [(_CompletionListRankingObserverFeedbackGenerator *)feedbackGenerator didEndRanking];
  }
}

- (void)didBeginSectionWithBundleIdentifier:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(_CompletionListRankingObserverFeedbackGenerator *)self->_feedbackGenerator didBeginSectionWithBundleIdentifier:v4];
  }
}

- (SFRankingFeedback)rankingFeedback
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(_CompletionListRankingObserverFeedbackGenerator *)self->_feedbackGenerator rankingFeedback];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_createFeedbackGenerator
{
  v3 = objc_alloc_init(_WBSSearchFoundationFeedbackGenerator);
  if (objc_opt_respondsToSelector())
  {
    [(_WBSSearchFoundationFeedbackGenerator *)v3 setDelegate:self];
  }

  return v3;
}

- (unint64_t)completionListRankingObserverFeedbackGenerator:(id)a3 frequentlyVisitedSitesIndexOfItem:(id)a4 hidingItem:(id)a5
{
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = [WeakRetained completionListRankingObserver:self frequentlyVisitedSitesIndexOfItem:v7 hidingItem:v8];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (WBSCompletionListRankingObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end