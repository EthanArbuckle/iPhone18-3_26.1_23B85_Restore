@interface WBSCompletionListRankingObserver
- (SFRankingFeedback)rankingFeedback;
- (WBSCompletionListRankingObserverDelegate)delegate;
- (id)_createFeedbackGenerator;
- (unint64_t)completionListRankingObserverFeedbackGenerator:(id)generator frequentlyVisitedSitesIndexOfItem:(id)item hidingItem:(id)hidingItem;
- (void)didBeginRanking;
- (void)didBeginSectionWithBundleIdentifier:(id)identifier;
- (void)didEndRanking;
@end

@implementation WBSCompletionListRankingObserver

- (void)didBeginRanking
{
  _createFeedbackGenerator = [(WBSCompletionListRankingObserver *)self _createFeedbackGenerator];
  feedbackGenerator = self->_feedbackGenerator;
  self->_feedbackGenerator = _createFeedbackGenerator;

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

- (void)didBeginSectionWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (objc_opt_respondsToSelector())
  {
    [(_CompletionListRankingObserverFeedbackGenerator *)self->_feedbackGenerator didBeginSectionWithBundleIdentifier:identifierCopy];
  }
}

- (SFRankingFeedback)rankingFeedback
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rankingFeedback = [(_CompletionListRankingObserverFeedbackGenerator *)self->_feedbackGenerator rankingFeedback];
  }

  else
  {
    rankingFeedback = 0;
  }

  return rankingFeedback;
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

- (unint64_t)completionListRankingObserverFeedbackGenerator:(id)generator frequentlyVisitedSitesIndexOfItem:(id)item hidingItem:(id)hidingItem
{
  itemCopy = item;
  hidingItemCopy = hidingItem;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = [WeakRetained completionListRankingObserver:self frequentlyVisitedSitesIndexOfItem:itemCopy hidingItem:hidingItemCopy];
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