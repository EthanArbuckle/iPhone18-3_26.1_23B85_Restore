@interface SUISpotlightController
- (SFFeedbackListener)feedbackDelegate;
- (SUISpotlightController)init;
- (SUISpotlightControllerResultsViewDelegate)resultsViewDelegate;
- (SUISpotlightControllerSearchAppDelegate)appDelegate;
- (SUISpotlightControllerSearchFieldDelegate)searchFieldDelegate;
- (void)startQueryTaskWithSearchString:(id)string queryOptions:(int64_t)options sourceResult:(id)result triggerEvent:(unint64_t)event languages:(id)languages currentKeyboardLanguage:(id)language queryId:(unint64_t)id;
- (void)updateWithCommand:(id)command triggerEvent:(unint64_t)event;
- (void)updateWithSuggestionResult:(id)result triggerEvent:(unint64_t)event languages:(id)languages currentKeyboardLanguage:(id)language queryId:(unint64_t)id;
@end

@implementation SUISpotlightController

- (SUISpotlightController)init
{
  v5.receiver = self;
  v5.super_class = SUISpotlightController;
  v2 = [(SUISpotlightController *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SUISpotlightController *)v2 setClientSession:v3];
  }

  return v2;
}

- (void)updateWithCommand:(id)command triggerEvent:(unint64_t)event
{
  commandCopy = command;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }
  }
}

- (void)updateWithSuggestionResult:(id)result triggerEvent:(unint64_t)event languages:(id)languages currentKeyboardLanguage:(id)language queryId:(unint64_t)id
{
  resultCopy = result;
  languageCopy = language;
  languagesCopy = languages;
  completion = [resultCopy completion];
  v15 = completion;
  if (completion)
  {
    v17Suggestion = completion;
  }

  else
  {
    suggestion = [resultCopy suggestion];
    v17Suggestion = [suggestion suggestion];
  }

  v18 = &stru_287C62298;
  if (v17Suggestion)
  {
    v18 = v17Suggestion;
  }

  v19 = v18;

  searchFieldDelegate = [(SUISpotlightController *)self searchFieldDelegate];
  [searchFieldDelegate updateSearchString:v19];

  [(SUISpotlightController *)self startQueryTaskWithSearchString:v19 queryOptions:0 sourceResult:resultCopy triggerEvent:event languages:languagesCopy currentKeyboardLanguage:languageCopy queryId:id];
  [(SUISpotlightController *)self setCurrentSearchString:v19];
}

- (void)startQueryTaskWithSearchString:(id)string queryOptions:(int64_t)options sourceResult:(id)result triggerEvent:(unint64_t)event languages:(id)languages currentKeyboardLanguage:(id)language queryId:(unint64_t)id
{
  stringCopy = string;
  resultCopy = result;
  languageCopy = language;
  v16 = &stru_287C62298;
  if (stringCopy)
  {
    v16 = stringCopy;
  }

  v17 = v16;
  currentSearchString = [(SUISpotlightController *)self currentSearchString];
  v19 = [currentSearchString isEqualToString:v17];

  if ((v19 & 1) == 0)
  {
    v20 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.keystroke" timeInterval:0 queryId:id];
    feedbackDelegate = [(SUISpotlightController *)self feedbackDelegate];
    [feedbackDelegate reportFeedback:v20 queryId:id];

    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v23 = [(__CFString *)v17 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    searchFieldDelegate = [(SUISpotlightController *)self searchFieldDelegate];
    if ([v23 length])
    {
      v32 = v20;
      v25 = [objc_alloc(MEMORY[0x277D65898]) initWithSearchString:v17];
      [v25 setQueryIdent:id];
      [v25 setKeyboardLanguage:languageCopy];
      [v25 setAllowInternet:1];
      [v25 setWhyQuery:event];
      if (event == 8)
      {
        v26 = 8;
      }

      else
      {
        v26 = 2;
      }

      [v25 setQueryKind:{v26, v32}];
      clientSession = [(SUISpotlightController *)self clientSession];
      v28 = [clientSession queryTaskWithContext:v25];

      [searchFieldDelegate willRunQueryTask:v28];
      if (startQueryTaskWithSearchString_queryOptions_sourceResult_triggerEvent_languages_currentKeyboardLanguage_queryId__onceToken != -1)
      {
        [SUISpotlightController startQueryTaskWithSearchString:queryOptions:sourceResult:triggerEvent:languages:currentKeyboardLanguage:queryId:];
      }

      v29 = startQueryTaskWithSearchString_queryOptions_sourceResult_triggerEvent_languages_currentKeyboardLanguage_queryId__dispatchQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __138__SUISpotlightController_startQueryTaskWithSearchString_queryOptions_sourceResult_triggerEvent_languages_currentKeyboardLanguage_queryId___block_invoke_2;
      block[3] = &unk_279D10308;
      v35 = v28;
      v30 = v28;
      v31 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INTERACTIVE, 0, block);
      dispatch_async(v29, v31);

      v20 = v33;
    }

    else
    {
      [searchFieldDelegate updateSearchString:0];
      [searchFieldDelegate updateTokenWithString:0 symbol:0];
      [searchFieldDelegate updateCompletionString:0 targetString:0];
    }
  }
}

uint64_t __138__SUISpotlightController_startQueryTaskWithSearchString_queryOptions_sourceResult_triggerEvent_languages_currentKeyboardLanguage_queryId___block_invoke()
{
  startQueryTaskWithSearchString_queryOptions_sourceResult_triggerEvent_languages_currentKeyboardLanguage_queryId__dispatchQueue = dispatch_queue_create("SUIQueryTaskDispatchQueue", 0);

  return MEMORY[0x2821F96F8]();
}

- (SUISpotlightControllerSearchFieldDelegate)searchFieldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchFieldDelegate);

  return WeakRetained;
}

- (SUISpotlightControllerResultsViewDelegate)resultsViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_resultsViewDelegate);

  return WeakRetained;
}

- (SUISpotlightControllerSearchAppDelegate)appDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appDelegate);

  return WeakRetained;
}

- (SFFeedbackListener)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

@end