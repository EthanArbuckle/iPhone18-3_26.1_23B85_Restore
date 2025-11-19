@interface SUISpotlightController
- (SFFeedbackListener)feedbackDelegate;
- (SUISpotlightController)init;
- (SUISpotlightControllerResultsViewDelegate)resultsViewDelegate;
- (SUISpotlightControllerSearchAppDelegate)appDelegate;
- (SUISpotlightControllerSearchFieldDelegate)searchFieldDelegate;
- (void)startQueryTaskWithSearchString:(id)a3 queryOptions:(int64_t)a4 sourceResult:(id)a5 triggerEvent:(unint64_t)a6 languages:(id)a7 currentKeyboardLanguage:(id)a8 queryId:(unint64_t)a9;
- (void)updateWithCommand:(id)a3 triggerEvent:(unint64_t)a4;
- (void)updateWithSuggestionResult:(id)a3 triggerEvent:(unint64_t)a4 languages:(id)a5 currentKeyboardLanguage:(id)a6 queryId:(unint64_t)a7;
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

- (void)updateWithCommand:(id)a3 triggerEvent:(unint64_t)a4
{
  v4 = a3;
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

- (void)updateWithSuggestionResult:(id)a3 triggerEvent:(unint64_t)a4 languages:(id)a5 currentKeyboardLanguage:(id)a6 queryId:(unint64_t)a7
{
  v21 = a3;
  v12 = a6;
  v13 = a5;
  v14 = [v21 completion];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [v21 suggestion];
    v16 = [v17 suggestion];
  }

  v18 = &stru_287C62298;
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = [(SUISpotlightController *)self searchFieldDelegate];
  [v20 updateSearchString:v19];

  [(SUISpotlightController *)self startQueryTaskWithSearchString:v19 queryOptions:0 sourceResult:v21 triggerEvent:a4 languages:v13 currentKeyboardLanguage:v12 queryId:a7];
  [(SUISpotlightController *)self setCurrentSearchString:v19];
}

- (void)startQueryTaskWithSearchString:(id)a3 queryOptions:(int64_t)a4 sourceResult:(id)a5 triggerEvent:(unint64_t)a6 languages:(id)a7 currentKeyboardLanguage:(id)a8 queryId:(unint64_t)a9
{
  v13 = a3;
  v14 = a5;
  v15 = a8;
  v16 = &stru_287C62298;
  if (v13)
  {
    v16 = v13;
  }

  v17 = v16;
  v18 = [(SUISpotlightController *)self currentSearchString];
  v19 = [v18 isEqualToString:v17];

  if ((v19 & 1) == 0)
  {
    v20 = [objc_alloc(MEMORY[0x277D4C270]) initWithEvent:@"com.apple.spotlight.keystroke" timeInterval:0 queryId:a9];
    v21 = [(SUISpotlightController *)self feedbackDelegate];
    [v21 reportFeedback:v20 queryId:a9];

    v22 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v23 = [(__CFString *)v17 stringByTrimmingCharactersInSet:v22];

    v24 = [(SUISpotlightController *)self searchFieldDelegate];
    if ([v23 length])
    {
      v32 = v20;
      v25 = [objc_alloc(MEMORY[0x277D65898]) initWithSearchString:v17];
      [v25 setQueryIdent:a9];
      [v25 setKeyboardLanguage:v15];
      [v25 setAllowInternet:1];
      [v25 setWhyQuery:a6];
      if (a6 == 8)
      {
        v26 = 8;
      }

      else
      {
        v26 = 2;
      }

      [v25 setQueryKind:{v26, v32}];
      v27 = [(SUISpotlightController *)self clientSession];
      v28 = [v27 queryTaskWithContext:v25];

      [v24 willRunQueryTask:v28];
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
      [v24 updateSearchString:0];
      [v24 updateTokenWithString:0 symbol:0];
      [v24 updateCompletionString:0 targetString:0];
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