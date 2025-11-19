@interface _PSSiriNLLogger
- (void)logPeopleSuggesterDataWithSessionId:(id)a3;
@end

@implementation _PSSiriNLLogger

- (void)logPeopleSuggesterDataWithSessionId:(id)a3
{
  v7 = a3;
  v3 = +[_PSSuggester suggesterWithDaemon];
  v4 = objc_alloc_init(_PSPredictionContext);
  if (v7)
  {
    v5 = v7;
  }

  else
  {
    v5 = &stru_1F2D6CE98;
  }

  v6 = [v3 rankedSiriNLContactSuggestionsFromContext:v4 maxSuggestions:&unk_1F2D8B868 interactionId:v5];
}

@end