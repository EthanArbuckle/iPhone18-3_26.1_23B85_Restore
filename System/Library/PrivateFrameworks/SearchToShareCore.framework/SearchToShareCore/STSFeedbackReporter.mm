@interface STSFeedbackReporter
+ (STSFeedbackReporter)sharedInstance;
- (id)didStartNetworkRequest:(id)request query:(id)query queryId:(unint64_t)id;
- (void)didClearRecents;
- (void)didClearSearchBarInput;
- (void)didEndNetworkRequest:(id)request infoDict:(id)dict;
- (void)didEngageCategoryResult:(id)result suggestion:(id)suggestion;
- (void)didEngageProviderLogo;
- (void)didEngageResult:(id)result;
- (void)didGoToSearch:(id)search;
- (void)didLoadCategoryResults:(id)results recents:(id)recents queryId:(unint64_t)id;
- (void)didLoadResults:(id)results indexPaths:(id)paths queryId:(unint64_t)id;
- (void)didPreviewResult:(id)result peek:(BOOL)peek;
- (void)didPreviewResultLongPress:(id)press;
- (void)didReportConcern:(id)concern punchout:(id)punchout;
- (void)didSearchWithCustomQuery:(id)query;
- (void)didSearchWithSuggestedQuery:(id)query;
- (void)didShowProactiveCategories:(id)categories conversationId:(id)id;
- (void)didShowProactiveSuggestions:(id)suggestions conversationId:(id)id;
- (void)didShowQuerySuggestions:(id)suggestions queryId:(unint64_t)id;
- (void)didShowResults:(id)results scrolling:(BOOL)scrolling;
- (void)didShowResults:(id)results trigger:(unint64_t)trigger;
- (void)searchBarDidCancel;
- (void)searchViewDidAppearWithEvent:(unint64_t)event;
- (void)searchViewDidDisappear;
@end

@implementation STSFeedbackReporter

+ (STSFeedbackReporter)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[STSFeedbackReporter sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __37__STSFeedbackReporter_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)searchViewDidAppearWithEvent:(unint64_t)event
{
  v4 = [objc_alloc(MEMORY[0x277D4C5E0]) initWithEvent:event];
  [(PARSession *)self->_parsecSession reportFeedback:v4 queryId:+[STSSearchModel clientQueryId]];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Seassion started", v5, 2u);
  }
}

- (void)didLoadCategoryResults:(id)results recents:(id)recents queryId:(unint64_t)id
{
  resultsCopy = results;
  recentsCopy = recents;
  v8 = [recentsCopy sts_map:&__block_literal_global_6];
  v9 = [resultsCopy sts_map:&__block_literal_global_9];
  if ([recentsCopy count])
  {
    v10 = objc_alloc_init(MEMORY[0x277D4C588]);
    [v10 setBundleIdentifier:@"com.apple.hashtagimages.categorylist.recents"];
    [v10 setResults:recentsCopy];
  }

  else
  {
    v10 = 0;
  }

  if ([resultsCopy count])
  {
    v11 = objc_alloc_init(MEMORY[0x277D4C588]);
    [v11 setBundleIdentifier:@"com.apple.hashtagimages.categorylist.categories"];
    [v11 setResults:resultsCopy];
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v8 count])
  {
    v13 = [objc_alloc(MEMORY[0x277D4C608]) initWithResults:v8 section:v10 localSectionPosition:objc_msgSend(v12 personalizationScore:{"count"), 0.0}];
    [v12 addObject:v13];
  }

  if ([v9 count])
  {
    v14 = [objc_alloc(MEMORY[0x277D4C608]) initWithResults:v9 section:v11 localSectionPosition:objc_msgSend(v12 personalizationScore:{"count"), 0.0}];
    [v12 addObject:v14];
  }

  if ([v12 count])
  {
    v15 = [objc_alloc(MEMORY[0x277D4C568]) initWithSections:v12 blendingDuration:0.0];
    [(PARSession *)self->_parsecSession reportFeedback:v15 queryId:+[STSSearchModel clientQueryId]];
  }
}

id __62__STSFeedbackReporter_didLoadCategoryResults_recents_queryId___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D4C580];
  v5 = a2;
  v6 = [[v4 alloc] initWithResult:v5 hiddenResults:0 duplicateResults:0 localResultPosition:a3];

  return v6;
}

id __62__STSFeedbackReporter_didLoadCategoryResults_recents_queryId___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D4C580];
  v5 = a2;
  v6 = [[v4 alloc] initWithResult:v5 hiddenResults:0 duplicateResults:0 localResultPosition:a3];

  return v6;
}

- (void)didLoadResults:(id)results indexPaths:(id)paths queryId:(unint64_t)id
{
  v20[1] = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__STSFeedbackReporter_didLoadResults_indexPaths_queryId___block_invoke;
  v18[3] = &unk_279B8B938;
  v19 = pathsCopy;
  v8 = pathsCopy;
  resultsCopy = results;
  v10 = [resultsCopy sts_map:v18];
  v11 = objc_alloc_init(MEMORY[0x277D4C588]);
  firstObject = [resultsCopy firstObject];
  sectionBundleIdentifier = [firstObject sectionBundleIdentifier];
  [v11 setBundleIdentifier:sectionBundleIdentifier];

  [v11 setResults:resultsCopy];
  v14 = [objc_alloc(MEMORY[0x277D4C608]) initWithResults:v10 section:v11 localSectionPosition:0 personalizationScore:0.0];
  v15 = objc_alloc(MEMORY[0x277D4C568]);
  v20[0] = v14;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v17 = [v15 initWithSections:v16 blendingDuration:0.0];

  [(PARSession *)self->_parsecSession reportFeedback:v17 queryId:+[STSSearchModel clientQueryId]];
}

id __57__STSFeedbackReporter_didLoadResults_indexPaths_queryId___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D4C580];
  v6 = a2;
  v7 = [v5 alloc];
  v8 = [*(a1 + 32) objectAtIndex:a3];
  v9 = [v7 initWithResult:v6 hiddenResults:0 duplicateResults:0 localResultPosition:{objc_msgSend(v8, "row")}];

  return v9;
}

- (void)didShowResults:(id)results scrolling:(BOOL)scrolling
{
  if (scrolling)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = MEMORY[0x277D4C6F0];
  resultsCopy = results;
  v8 = [[v6 alloc] initWithResults:resultsCopy triggerEvent:v5];

  [(PARSession *)self->_parsecSession reportFeedback:v8 queryId:+[STSSearchModel clientQueryId]];
}

- (void)didShowResults:(id)results trigger:(unint64_t)trigger
{
  v6 = MEMORY[0x277D4C6F0];
  resultsCopy = results;
  v8 = [[v6 alloc] initWithResults:resultsCopy triggerEvent:trigger];

  [(PARSession *)self->_parsecSession reportFeedback:v8 queryId:+[STSSearchModel clientQueryId]];
}

- (void)didPreviewResult:(id)result peek:(BOOL)peek
{
  peekCopy = peek;
  v6 = MEMORY[0x277D4C578];
  resultCopy = result;
  v8 = [v6 alloc];
  if (peekCopy)
  {
    v9 = 5;
  }

  else
  {
    v9 = 6;
  }

  v10 = [v8 initWithResult:resultCopy triggerEvent:v9 destination:3];

  [(PARSession *)self->_parsecSession reportFeedback:v10 queryId:+[STSSearchModel clientQueryId]];
}

- (void)didPreviewResultLongPress:(id)press
{
  v4 = MEMORY[0x277D4C578];
  pressCopy = press;
  v6 = [[v4 alloc] initWithResult:pressCopy triggerEvent:7 destination:3];

  [(PARSession *)self->_parsecSession reportFeedback:v6 queryId:+[STSSearchModel clientQueryId]];
}

- (void)didShowProactiveSuggestions:(id)suggestions conversationId:(id)id
{
  v21[3] = *MEMORY[0x277D85DE8];
  idCopy = id;
  suggestionsCopy = suggestions;
  [(STSFeedbackReporter *)self didShowQuerySuggestions:suggestionsCopy queryId:0];
  v8 = &stru_2876AE098;
  if (idCopy)
  {
    v8 = idCopy;
  }

  v9 = v8;

  v10 = [suggestionsCopy sts_map:&__block_literal_global_28];

  v20[0] = @"name";
  v20[1] = @"predictions";
  v11 = MEMORY[0x277CBEBF8];
  if (v10)
  {
    v11 = v10;
  }

  v21[0] = @"com.apple.suggestd.predictionsshowed";
  v21[1] = v11;
  v20[2] = @"conversationId";
  v21[2] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v13 = [objc_alloc(MEMORY[0x277D4C310]) initWithType:0 jsonFeedback:v12];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [(__CFString *)v9 UTF8String];
    v15 = [v10 componentsJoinedByString:{@", "}];
    v16 = 136315394;
    v17 = uTF8String;
    v18 = 2080;
    uTF8String2 = [v15 UTF8String];
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Showed predictions(%s): %s", &v16, 0x16u);
  }
}

- (void)didShowQuerySuggestions:(id)suggestions queryId:(unint64_t)id
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = [suggestions sts_map:&__block_literal_global_48];
  v7 = [v6 sts_map:&__block_literal_global_66];
  v8 = objc_alloc_init(MEMORY[0x277D4C588]);
  [v8 setBundleIdentifier:@"com.apple.hashtagimages.querysuggestions"];
  [v8 setResults:v6];
  v9 = [objc_alloc(MEMORY[0x277D4C608]) initWithResults:v7 section:v8 localSectionPosition:0 personalizationScore:0.0];
  v10 = objc_alloc(MEMORY[0x277D4C568]);
  v14[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [v10 initWithSections:v11 blendingDuration:0.0];

  [(PARSession *)self->_parsecSession reportFeedback:v12 queryId:id];
  v13 = [objc_alloc(MEMORY[0x277D4C6F0]) initWithResults:v6 triggerEvent:1];
  [(PARSession *)self->_parsecSession reportFeedback:v13 queryId:+[STSSearchModel clientQueryId]];
}

id __55__STSFeedbackReporter_didShowQuerySuggestions_queryId___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 suggestion];
  v4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v5 = [v3 componentsSeparatedByCharactersInSet:v4];

  v6 = [v5 componentsJoinedByString:@"_"];
  v7 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  v8 = MEMORY[0x277D4C690];
  v9 = [v2 suggestion];
  v10 = [v8 textWithString:v9];
  [v7 setTitle:v10];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"msgs-sug:%@", v6];
  [v7 setIdentifier:v11];

  v12 = [v2 fbr];

  [v7 setFbr:v12];
  [v7 setSectionBundleIdentifier:@"com.apple.hashtagimages.querysuggestions"];
  [v7 setResultBundleId:@"com.apple.hashtagimages.querysuggestions.suggestion"];
  [v7 setType:1];

  return v7;
}

id __55__STSFeedbackReporter_didShowQuerySuggestions_queryId___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D4C580];
  v5 = a2;
  v6 = [[v4 alloc] initWithResult:v5 hiddenResults:0 duplicateResults:0 localResultPosition:a3];

  return v6;
}

- (void)didShowProactiveCategories:(id)categories conversationId:(id)id
{
  v19[3] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = [categories sts_map:&__block_literal_global_68];
  v7 = v6;
  v18[0] = @"name";
  v18[1] = @"categories";
  v8 = MEMORY[0x277CBEBF8];
  if (v6)
  {
    v8 = v6;
  }

  v19[0] = @"com.apple.suggestd.categoriesshowed";
  v19[1] = v8;
  v18[2] = @"conversationId";
  if (idCopy)
  {
    v9 = idCopy;
  }

  else
  {
    v9 = &stru_2876AE098;
  }

  v19[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v11 = [objc_alloc(MEMORY[0x277D4C310]) initWithType:0 jsonFeedback:v10];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [(__CFString *)idCopy UTF8String];
    v13 = [v7 componentsJoinedByString:{@", "}];
    v14 = 136315394;
    v15 = uTF8String;
    v16 = 2080;
    uTF8String2 = [v13 UTF8String];
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Showed categories(%s): %s", &v14, 0x16u);
  }
}

__CFString *__65__STSFeedbackReporter_didShowProactiveCategories_conversationId___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 prediction];
  v3 = [v2 identifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = v5;

  return v5;
}

- (void)didSearchWithCustomQuery:(id)query
{
  v7 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    uTF8String = [queryCopy UTF8String];
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Search custom query: %s", &v5, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x277D4C668]) initWithInput:queryCopy triggerEvent:2];
  ADClientAddValueForScalarKey();
}

- (void)didSearchWithSuggestedQuery:(id)query
{
  v20 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v5 = [objc_alloc(MEMORY[0x277D4C680]) initWithSuggestion:queryCopy];
  suggestion = [queryCopy suggestion];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v8 = [suggestion componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  v9 = [v8 componentsJoinedByString:@"_"];
  v10 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  v11 = MEMORY[0x277D4C690];
  suggestion2 = [queryCopy suggestion];
  v13 = [v11 textWithString:suggestion2];
  [v10 setTitle:v13];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"msgs-sug:%@", v9];
  [v10 setIdentifier:v14];

  v15 = [queryCopy fbr];
  [v10 setFbr:v15];

  [v10 setSectionBundleIdentifier:@"com.apple.hashtagimages.querysuggestions"];
  [v10 setResultBundleId:@"com.apple.hashtagimages.querysuggestions.suggestion"];
  [v10 setType:1];
  v16 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:v10 triggerEvent:2 destination:0];
  [v16 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v16];
  ADClientAddValueForScalarKey();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    suggestion3 = [queryCopy suggestion];
    *buf = 136315138;
    uTF8String = [suggestion3 UTF8String];
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Search suggestion %s", buf, 0xCu);
  }
}

- (void)didEngageResult:(id)result
{
  v10 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:resultCopy triggerEvent:2 destination:4];
  [v5 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    title = [resultCopy title];
    text = [title text];
    v8 = 136315138;
    uTF8String = [text UTF8String];
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Engaged result %s", &v8, 0xCu);
  }
}

- (void)didEngageCategoryResult:(id)result suggestion:(id)suggestion
{
  v15 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  suggestionCopy = suggestion;
  v8 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:resultCopy triggerEvent:2 destination:0];
  [v8 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v8];
  prediction = [suggestionCopy prediction];

  if (prediction)
  {
    prediction2 = [suggestionCopy prediction];

    suggestionCopy = prediction2;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    title = [resultCopy title];
    text = [title text];
    v13 = 136315138;
    uTF8String = [text UTF8String];
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Engaged category %s", &v13, 0xCu);
  }
}

- (void)didEngageProviderLogo
{
  v3 = objc_alloc_init(MEMORY[0x277D4C550]);
  [v3 setLabel:@"non_parsec_result"];
  v4 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  [v4 setIdentifier:@"com.apple.other:search_web"];
  [v4 setPunchout:v3];
  v5 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:v4 triggerEvent:2 destination:2];
  [v5 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Engaged provider logo", v6, 2u);
  }
}

- (void)searchBarDidCancel
{
  v3 = [objc_alloc(MEMORY[0x277D4C5E8]) initWithEvent:4];
  [v3 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession searchViewDidDisappear:v3];
}

- (void)searchViewDidDisappear
{
  v3 = [objc_alloc(MEMORY[0x277D4C5E8]) initWithEvent:11];
  [v3 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession searchViewDidDisappear:v3];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Session ended", v4, 2u);
  }
}

- (id)didStartNetworkRequest:(id)request query:(id)query queryId:(unint64_t)id
{
  v7 = MEMORY[0x277D4C660];
  queryCopy = query;
  requestCopy = request;
  v10 = [v7 alloc];
  absoluteString = [requestCopy absoluteString];

  v12 = [v10 initWithInput:queryCopy url:absoluteString headers:MEMORY[0x277CBEC10] triggerEvent:15 endpoint:7];
  [v12 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession didStartSearch:v12];

  return v12;
}

- (void)didEndNetworkRequest:(id)request infoDict:(id)dict
{
  dictCopy = dict;
  parsecSession = self->_parsecSession;
  requestCopy = request;
  v8 = [(PARSession *)parsecSession bag];
  if ([v8 imageTimingFeedbackEnabled])
  {
    v9 = [dictCopy objectForKey:@"STSImageDownloadOperationTimingData"];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc(MEMORY[0x277D4C350]);
  v11 = [dictCopy objectForKey:@"STSImageDownloadOperationSize"];
  intValue = [v11 intValue];
  v13 = [dictCopy objectForKey:@"STSImageDownloadOperationStatusCode"];
  v14 = [v10 initWithStartSearch:requestCopy responseSize:intValue statusCode:objc_msgSend(v13 networkTimingData:{"intValue"), v9}];

  [v14 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession didEndSearch:v14];
}

- (void)didClearRecents
{
  v4 = objc_alloc_init(MEMORY[0x277D4C588]);
  v3 = [objc_alloc(MEMORY[0x277D4C5F8]) initWithSection:v4 triggerEvent:4];
  [v3 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v3];
}

- (void)didClearSearchBarInput
{
  v3 = [objc_alloc(MEMORY[0x277D4C260]) initWithEvent:1];
  [v3 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v3];
}

- (void)didGoToSearch:(id)search
{
  v4 = MEMORY[0x277D4C330];
  searchCopy = search;
  v6 = [[v4 alloc] initWithInput:searchCopy endpoint:6];

  [v6 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v6];
}

- (void)didReportConcern:(id)concern punchout:(id)punchout
{
  v6 = MEMORY[0x277D4C6D8];
  punchoutCopy = punchout;
  concernCopy = concern;
  v9 = [[v6 alloc] initWithSelection:punchoutCopy result:concernCopy cardSection:0 resultSections:0 uploadedDataIdentifier:0 userReportRequestType:2];

  [v9 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v9];
}

@end