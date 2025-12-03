@interface _PSSiriNLLogger
- (void)logPeopleSuggesterDataWithSessionId:(id)id;
@end

@implementation _PSSiriNLLogger

- (void)logPeopleSuggesterDataWithSessionId:(id)id
{
  idCopy = id;
  v3 = +[_PSSuggester suggesterWithDaemon];
  v4 = objc_alloc_init(_PSPredictionContext);
  if (idCopy)
  {
    v5 = idCopy;
  }

  else
  {
    v5 = &stru_1F2D6CE98;
  }

  v6 = [v3 rankedSiriNLContactSuggestionsFromContext:v4 maxSuggestions:&unk_1F2D8B868 interactionId:v5];
}

@end