@interface SFSuggestionEngagementFeedback(VisualIntelligence)
- (id)VI_searchSuggestionForSuggestionType:()VisualIntelligence;
- (void)setVI_searchSuggestionFactory:()VisualIntelligence;
@end

@implementation SFSuggestionEngagementFeedback(VisualIntelligence)

- (void)setVI_searchSuggestionFactory:()VisualIntelligence
{
  v4 = SearchSuggestionFactoryKey;
  v5 = _Block_copy(aBlock);
  objc_setAssociatedObject(self, v4, v5, 3);
}

- (id)VI_searchSuggestionForSuggestionType:()VisualIntelligence
{
  v4 = a3;
  vI_searchSuggestionFactory = [self VI_searchSuggestionFactory];
  if (vI_searchSuggestionFactory)
  {
    vI_searchSuggestionFactory2 = [self VI_searchSuggestionFactory];
    v7 = (vI_searchSuggestionFactory2)[2](vI_searchSuggestionFactory2, v4);
  }

  else
  {
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v8 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v10 = 0;
        _os_log_impl(&dword_1D9962000, v8, OS_LOG_TYPE_ERROR, "searchSuggestionFactory was not set on SFSuggestionEngagementFeedback instance", v10, 2u);
      }
    }

    v7 = [self copy];
    [v7 setSuggestion:v4];
  }

  return v7;
}

@end