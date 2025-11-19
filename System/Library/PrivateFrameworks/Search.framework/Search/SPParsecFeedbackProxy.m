@interface SPParsecFeedbackProxy
- (SPParsecDatastore)datastore;
- (void)cardViewDidAppear:(id)a3;
- (void)cardViewDidDisappear:(id)a3;
- (void)didAppendLateSections:(id)a3;
- (void)didClearInput:(id)a3;
- (void)didEndSearch:(id)a3;
- (void)didEngageCardSection:(id)a3;
- (void)didEngageResult:(id)a3;
- (void)didEngageSection:(id)a3;
- (void)didEngageSuggestion:(id)a3;
- (void)didErrorOccur:(id)a3;
- (void)didGradeResultRelevancy:(id)a3;
- (void)didPerformCommand:(id)a3;
- (void)didRankSections:(id)a3;
- (void)didReceiveResultsAfterTimeout:(id)a3;
- (void)didReportUserResponseFeedback:(id)a3;
- (void)didStartSearch:(id)a3;
- (void)reportFeedback:(id)a3 queryId:(int64_t)a4;
- (void)resultsDidBecomeVisible:(id)a3;
- (void)searchViewDidAppear:(id)a3;
- (void)searchViewDidDisappear:(id)a3;
- (void)sectionHeaderDidBecomeVisible:(id)a3;
- (void)sendCustomFeedback:(id)a3;
- (void)suggestionsDidBecomeVisible:(id)a3;
@end

@implementation SPParsecFeedbackProxy

- (void)searchViewDidAppear:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener searchViewDidAppear:v4];
}

- (void)searchViewDidDisappear:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (listener || (WeakRetained = objc_loadWeakRetained(&self->_datastore), [WeakRetained setupSearchSession], WeakRetained, (listener = self->_listener) != 0))
  {
    [(SFFeedbackListener *)listener searchViewDidDisappear:v7];
  }

  _objc_release_x1();
}

- (void)cardViewDidDisappear:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (listener || (WeakRetained = objc_loadWeakRetained(&self->_datastore), [WeakRetained setupSearchSession], WeakRetained, (listener = self->_listener) != 0))
  {
    [(SFFeedbackListener *)listener cardViewDidDisappear:v7];
  }

  _objc_release_x1();
}

- (void)didStartSearch:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didStartSearch:v4];
}

- (void)didEndSearch:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didEndSearch:v4];
}

- (void)didRankSections:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didRankSections:v4];
}

- (void)didEngageResult:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didEngageResult:v4];
}

- (void)didEngageSuggestion:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didEngageSuggestion:v4];
}

- (void)didEngageCardSection:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didEngageCardSection:v4];
}

- (void)didErrorOccur:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didErrorOccur:v4];
}

- (void)sendCustomFeedback:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener sendCustomFeedback:v4];
}

- (void)resultsDidBecomeVisible:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener resultsDidBecomeVisible:v4];
}

- (void)suggestionsDidBecomeVisible:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v9 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v9;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener suggestionsDidBecomeVisible:v4];
  v7 = xpc_BOOL_create(self->_listener != 0);
  v8 = sub_100060020("suggestionsDidBecomeVisible", v7);
  analytics_send_event();
}

- (void)didReceiveResultsAfterTimeout:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didReceiveResultsAfterTimeout:v4];
}

- (void)didAppendLateSections:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v9 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v9;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didAppendLateSections:v4];
  v7 = xpc_BOOL_create(self->_listener != 0);
  v8 = sub_100060020("didAppendLateSections", v7);
  analytics_send_event();
}

- (void)didClearInput:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didClearInput:v4];
}

- (void)sectionHeaderDidBecomeVisible:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener sectionHeaderDidBecomeVisible:v4];
}

- (void)cardViewDidAppear:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener cardViewDidAppear:v4];
}

- (void)didPerformCommand:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didPerformCommand:v4];
}

- (void)reportFeedback:(id)a3 queryId:(int64_t)a4
{
  v6 = a3;
  listener = self->_listener;
  v9 = v6;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v6 = v9;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener reportFeedback:v6 queryId:a4];
}

- (void)didGradeResultRelevancy:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didGradeResultRelevancy:v4];
}

- (void)didEngageSection:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didEngageSection:v4];
}

- (void)didReportUserResponseFeedback:(id)a3
{
  v4 = a3;
  listener = self->_listener;
  v7 = v4;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_datastore);
    [WeakRetained setupSearchSession];

    v4 = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didReportUserResponseFeedback:v4];
}

- (SPParsecDatastore)datastore
{
  WeakRetained = objc_loadWeakRetained(&self->_datastore);

  return WeakRetained;
}

@end