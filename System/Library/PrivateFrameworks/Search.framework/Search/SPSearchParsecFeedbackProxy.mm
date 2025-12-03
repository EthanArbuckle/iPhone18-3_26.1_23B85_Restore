@interface SPSearchParsecFeedbackProxy
- (SPCoreParsecInterface)interface;
- (void)cardViewDidAppear:(id)appear;
- (void)cardViewDidDisappear:(id)disappear;
- (void)didAppendLateSections:(id)sections;
- (void)didClearInput:(id)input;
- (void)didEndSearch:(id)search;
- (void)didEngageCardSection:(id)section;
- (void)didEngageResult:(id)result;
- (void)didEngageSection:(id)section;
- (void)didEngageSuggestion:(id)suggestion;
- (void)didErrorOccur:(id)occur;
- (void)didGradeResultRelevancy:(id)relevancy;
- (void)didPerformCommand:(id)command;
- (void)didRankSections:(id)sections;
- (void)didReceiveResultsAfterTimeout:(id)timeout;
- (void)didReportUserResponseFeedback:(id)feedback;
- (void)didStartSearch:(id)search;
- (void)reportFeedback:(id)feedback queryId:(int64_t)id;
- (void)resultsDidBecomeVisible:(id)visible;
- (void)searchViewDidAppear:(id)appear;
- (void)searchViewDidDisappear:(id)disappear;
- (void)sectionHeaderDidBecomeVisible:(id)visible;
- (void)sendCustomFeedback:(id)feedback;
- (void)suggestionsDidBecomeVisible:(id)visible;
@end

@implementation SPSearchParsecFeedbackProxy

- (void)searchViewDidAppear:(id)appear
{
  appearCopy = appear;
  listener = self->_listener;
  v7 = appearCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    appearCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener searchViewDidAppear:appearCopy];
}

- (void)searchViewDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  listener = self->_listener;
  v7 = disappearCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    disappearCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener searchViewDidDisappear:disappearCopy];
}

- (void)cardViewDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  listener = self->_listener;
  v7 = disappearCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    disappearCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener cardViewDidDisappear:disappearCopy];
}

- (void)didStartSearch:(id)search
{
  searchCopy = search;
  listener = self->_listener;
  v7 = searchCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    searchCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didStartSearch:searchCopy];
}

- (void)didEndSearch:(id)search
{
  searchCopy = search;
  listener = self->_listener;
  v7 = searchCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    searchCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didEndSearch:searchCopy];
}

- (void)didRankSections:(id)sections
{
  sectionsCopy = sections;
  listener = self->_listener;
  v7 = sectionsCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    sectionsCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didRankSections:sectionsCopy];
}

- (void)didEngageResult:(id)result
{
  resultCopy = result;
  listener = self->_listener;
  v7 = resultCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    resultCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didEngageResult:resultCopy];
}

- (void)didEngageSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  listener = self->_listener;
  v7 = suggestionCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    suggestionCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didEngageSuggestion:suggestionCopy];
}

- (void)didEngageCardSection:(id)section
{
  sectionCopy = section;
  listener = self->_listener;
  v7 = sectionCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    sectionCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didEngageCardSection:sectionCopy];
}

- (void)didErrorOccur:(id)occur
{
  occurCopy = occur;
  listener = self->_listener;
  v7 = occurCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    occurCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didErrorOccur:occurCopy];
}

- (void)sendCustomFeedback:(id)feedback
{
  feedbackCopy = feedback;
  listener = self->_listener;
  v7 = feedbackCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    feedbackCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener sendCustomFeedback:feedbackCopy];
}

- (void)resultsDidBecomeVisible:(id)visible
{
  visibleCopy = visible;
  listener = self->_listener;
  v7 = visibleCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    visibleCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener resultsDidBecomeVisible:visibleCopy];
}

- (void)suggestionsDidBecomeVisible:(id)visible
{
  visibleCopy = visible;
  listener = self->_listener;
  v9 = visibleCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    visibleCopy = v9;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener suggestionsDidBecomeVisible:visibleCopy];
  v7 = xpc_BOOL_create(self->_listener != 0);
  v8 = one_member_dict("suggestionsDidBecomeVisible", v7);
  analytics_send_event();
}

- (void)didReceiveResultsAfterTimeout:(id)timeout
{
  timeoutCopy = timeout;
  listener = self->_listener;
  v7 = timeoutCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    timeoutCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didReceiveResultsAfterTimeout:timeoutCopy];
}

- (void)didAppendLateSections:(id)sections
{
  sectionsCopy = sections;
  listener = self->_listener;
  v9 = sectionsCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    sectionsCopy = v9;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didAppendLateSections:sectionsCopy];
  v7 = xpc_BOOL_create(self->_listener != 0);
  v8 = one_member_dict("didAppendLateSections", v7);
  analytics_send_event();
}

- (void)didClearInput:(id)input
{
  inputCopy = input;
  listener = self->_listener;
  v7 = inputCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    inputCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didClearInput:inputCopy];
}

- (void)sectionHeaderDidBecomeVisible:(id)visible
{
  visibleCopy = visible;
  listener = self->_listener;
  v7 = visibleCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    visibleCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener sectionHeaderDidBecomeVisible:visibleCopy];
}

- (void)cardViewDidAppear:(id)appear
{
  appearCopy = appear;
  listener = self->_listener;
  v7 = appearCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    appearCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener cardViewDidAppear:appearCopy];
}

- (void)didPerformCommand:(id)command
{
  commandCopy = command;
  listener = self->_listener;
  v7 = commandCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    commandCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didPerformCommand:commandCopy];
}

- (void)reportFeedback:(id)feedback queryId:(int64_t)id
{
  feedbackCopy = feedback;
  listener = self->_listener;
  v9 = feedbackCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    feedbackCopy = v9;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener reportFeedback:feedbackCopy queryId:id];
}

- (void)didGradeResultRelevancy:(id)relevancy
{
  relevancyCopy = relevancy;
  listener = self->_listener;
  v7 = relevancyCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    relevancyCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didGradeResultRelevancy:relevancyCopy];
}

- (void)didEngageSection:(id)section
{
  sectionCopy = section;
  listener = self->_listener;
  v7 = sectionCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    sectionCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didEngageSection:sectionCopy];
}

- (void)didReportUserResponseFeedback:(id)feedback
{
  feedbackCopy = feedback;
  listener = self->_listener;
  v7 = feedbackCopy;
  if (!listener)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interface);
    [WeakRetained setupSearchSession];

    feedbackCopy = v7;
    listener = self->_listener;
  }

  [(SFFeedbackListener *)listener didReportUserResponseFeedback:feedbackCopy];
}

- (SPCoreParsecInterface)interface
{
  WeakRetained = objc_loadWeakRetained(&self->_interface);

  return WeakRetained;
}

@end