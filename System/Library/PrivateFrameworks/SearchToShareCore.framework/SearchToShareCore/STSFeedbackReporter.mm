@interface STSFeedbackReporter
+ (STSFeedbackReporter)sharedInstance;
- (id)didStartNetworkRequest:(id)a3 query:(id)a4 queryId:(unint64_t)a5;
- (void)didClearRecents;
- (void)didClearSearchBarInput;
- (void)didEndNetworkRequest:(id)a3 infoDict:(id)a4;
- (void)didEngageCategoryResult:(id)a3 suggestion:(id)a4;
- (void)didEngageProviderLogo;
- (void)didEngageResult:(id)a3;
- (void)didGoToSearch:(id)a3;
- (void)didLoadCategoryResults:(id)a3 recents:(id)a4 queryId:(unint64_t)a5;
- (void)didLoadResults:(id)a3 indexPaths:(id)a4 queryId:(unint64_t)a5;
- (void)didPreviewResult:(id)a3 peek:(BOOL)a4;
- (void)didPreviewResultLongPress:(id)a3;
- (void)didReportConcern:(id)a3 punchout:(id)a4;
- (void)didSearchWithCustomQuery:(id)a3;
- (void)didSearchWithSuggestedQuery:(id)a3;
- (void)didShowProactiveCategories:(id)a3 conversationId:(id)a4;
- (void)didShowProactiveSuggestions:(id)a3 conversationId:(id)a4;
- (void)didShowQuerySuggestions:(id)a3 queryId:(unint64_t)a4;
- (void)didShowResults:(id)a3 scrolling:(BOOL)a4;
- (void)didShowResults:(id)a3 trigger:(unint64_t)a4;
- (void)searchBarDidCancel;
- (void)searchViewDidAppearWithEvent:(unint64_t)a3;
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

- (void)searchViewDidAppearWithEvent:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277D4C5E0]) initWithEvent:a3];
  [(PARSession *)self->_parsecSession reportFeedback:v4 queryId:+[STSSearchModel clientQueryId]];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Seassion started", v5, 2u);
  }
}

- (void)didLoadCategoryResults:(id)a3 recents:(id)a4 queryId:(unint64_t)a5
{
  v16 = a3;
  v7 = a4;
  v8 = [v7 sts_map:&__block_literal_global_6];
  v9 = [v16 sts_map:&__block_literal_global_9];
  if ([v7 count])
  {
    v10 = objc_alloc_init(MEMORY[0x277D4C588]);
    [v10 setBundleIdentifier:@"com.apple.hashtagimages.categorylist.recents"];
    [v10 setResults:v7];
  }

  else
  {
    v10 = 0;
  }

  if ([v16 count])
  {
    v11 = objc_alloc_init(MEMORY[0x277D4C588]);
    [v11 setBundleIdentifier:@"com.apple.hashtagimages.categorylist.categories"];
    [v11 setResults:v16];
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

- (void)didLoadResults:(id)a3 indexPaths:(id)a4 queryId:(unint64_t)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__STSFeedbackReporter_didLoadResults_indexPaths_queryId___block_invoke;
  v18[3] = &unk_279B8B938;
  v19 = v7;
  v8 = v7;
  v9 = a3;
  v10 = [v9 sts_map:v18];
  v11 = objc_alloc_init(MEMORY[0x277D4C588]);
  v12 = [v9 firstObject];
  v13 = [v12 sectionBundleIdentifier];
  [v11 setBundleIdentifier:v13];

  [v11 setResults:v9];
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

- (void)didShowResults:(id)a3 scrolling:(BOOL)a4
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = MEMORY[0x277D4C6F0];
  v7 = a3;
  v8 = [[v6 alloc] initWithResults:v7 triggerEvent:v5];

  [(PARSession *)self->_parsecSession reportFeedback:v8 queryId:+[STSSearchModel clientQueryId]];
}

- (void)didShowResults:(id)a3 trigger:(unint64_t)a4
{
  v6 = MEMORY[0x277D4C6F0];
  v7 = a3;
  v8 = [[v6 alloc] initWithResults:v7 triggerEvent:a4];

  [(PARSession *)self->_parsecSession reportFeedback:v8 queryId:+[STSSearchModel clientQueryId]];
}

- (void)didPreviewResult:(id)a3 peek:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277D4C578];
  v7 = a3;
  v8 = [v6 alloc];
  if (v4)
  {
    v9 = 5;
  }

  else
  {
    v9 = 6;
  }

  v10 = [v8 initWithResult:v7 triggerEvent:v9 destination:3];

  [(PARSession *)self->_parsecSession reportFeedback:v10 queryId:+[STSSearchModel clientQueryId]];
}

- (void)didPreviewResultLongPress:(id)a3
{
  v4 = MEMORY[0x277D4C578];
  v5 = a3;
  v6 = [[v4 alloc] initWithResult:v5 triggerEvent:7 destination:3];

  [(PARSession *)self->_parsecSession reportFeedback:v6 queryId:+[STSSearchModel clientQueryId]];
}

- (void)didShowProactiveSuggestions:(id)a3 conversationId:(id)a4
{
  v21[3] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  [(STSFeedbackReporter *)self didShowQuerySuggestions:v7 queryId:0];
  v8 = &stru_2876AE098;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v7 sts_map:&__block_literal_global_28];

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
    v14 = [(__CFString *)v9 UTF8String];
    v15 = [v10 componentsJoinedByString:{@", "}];
    v16 = 136315394;
    v17 = v14;
    v18 = 2080;
    v19 = [v15 UTF8String];
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Showed predictions(%s): %s", &v16, 0x16u);
  }
}

- (void)didShowQuerySuggestions:(id)a3 queryId:(unint64_t)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = [a3 sts_map:&__block_literal_global_48];
  v7 = [v6 sts_map:&__block_literal_global_66];
  v8 = objc_alloc_init(MEMORY[0x277D4C588]);
  [v8 setBundleIdentifier:@"com.apple.hashtagimages.querysuggestions"];
  [v8 setResults:v6];
  v9 = [objc_alloc(MEMORY[0x277D4C608]) initWithResults:v7 section:v8 localSectionPosition:0 personalizationScore:0.0];
  v10 = objc_alloc(MEMORY[0x277D4C568]);
  v14[0] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v12 = [v10 initWithSections:v11 blendingDuration:0.0];

  [(PARSession *)self->_parsecSession reportFeedback:v12 queryId:a4];
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

- (void)didShowProactiveCategories:(id)a3 conversationId:(id)a4
{
  v19[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [a3 sts_map:&__block_literal_global_68];
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
  if (v5)
  {
    v9 = v5;
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
    v12 = [(__CFString *)v5 UTF8String];
    v13 = [v7 componentsJoinedByString:{@", "}];
    v14 = 136315394;
    v15 = v12;
    v16 = 2080;
    v17 = [v13 UTF8String];
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

- (void)didSearchWithCustomQuery:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = [v3 UTF8String];
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Search custom query: %s", &v5, 0xCu);
  }

  v4 = [objc_alloc(MEMORY[0x277D4C668]) initWithInput:v3 triggerEvent:2];
  ADClientAddValueForScalarKey();
}

- (void)didSearchWithSuggestedQuery:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D4C680]) initWithSuggestion:v4];
  v6 = [v4 suggestion];
  v7 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v8 = [v6 componentsSeparatedByCharactersInSet:v7];

  v9 = [v8 componentsJoinedByString:@"_"];
  v10 = objc_alloc_init(MEMORY[0x277D4C5D0]);
  v11 = MEMORY[0x277D4C690];
  v12 = [v4 suggestion];
  v13 = [v11 textWithString:v12];
  [v10 setTitle:v13];

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"msgs-sug:%@", v9];
  [v10 setIdentifier:v14];

  v15 = [v4 fbr];
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
    v17 = [v4 suggestion];
    *buf = 136315138;
    v19 = [v17 UTF8String];
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Search suggestion %s", buf, 0xCu);
  }
}

- (void)didEngageResult:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:v4 triggerEvent:2 destination:4];
  [v5 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 title];
    v7 = [v6 text];
    v8 = 136315138;
    v9 = [v7 UTF8String];
    _os_log_impl(&dword_264E95000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Feedback: Engaged result %s", &v8, 0xCu);
  }
}

- (void)didEngageCategoryResult:(id)a3 suggestion:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277D4C578]) initWithResult:v6 triggerEvent:2 destination:0];
  [v8 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v8];
  v9 = [v7 prediction];

  if (v9)
  {
    v10 = [v7 prediction];

    v7 = v10;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v6 title];
    v12 = [v11 text];
    v13 = 136315138;
    v14 = [v12 UTF8String];
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

- (id)didStartNetworkRequest:(id)a3 query:(id)a4 queryId:(unint64_t)a5
{
  v7 = MEMORY[0x277D4C660];
  v8 = a4;
  v9 = a3;
  v10 = [v7 alloc];
  v11 = [v9 absoluteString];

  v12 = [v10 initWithInput:v8 url:v11 headers:MEMORY[0x277CBEC10] triggerEvent:15 endpoint:7];
  [v12 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession didStartSearch:v12];

  return v12;
}

- (void)didEndNetworkRequest:(id)a3 infoDict:(id)a4
{
  v15 = a4;
  parsecSession = self->_parsecSession;
  v7 = a3;
  v8 = [(PARSession *)parsecSession bag];
  if ([v8 imageTimingFeedbackEnabled])
  {
    v9 = [v15 objectForKey:@"STSImageDownloadOperationTimingData"];
  }

  else
  {
    v9 = 0;
  }

  v10 = objc_alloc(MEMORY[0x277D4C350]);
  v11 = [v15 objectForKey:@"STSImageDownloadOperationSize"];
  v12 = [v11 intValue];
  v13 = [v15 objectForKey:@"STSImageDownloadOperationStatusCode"];
  v14 = [v10 initWithStartSearch:v7 responseSize:v12 statusCode:objc_msgSend(v13 networkTimingData:{"intValue"), v9}];

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

- (void)didGoToSearch:(id)a3
{
  v4 = MEMORY[0x277D4C330];
  v5 = a3;
  v6 = [[v4 alloc] initWithInput:v5 endpoint:6];

  [v6 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v6];
}

- (void)didReportConcern:(id)a3 punchout:(id)a4
{
  v6 = MEMORY[0x277D4C6D8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithSelection:v7 result:v8 cardSection:0 resultSections:0 uploadedDataIdentifier:0 userReportRequestType:2];

  [v9 setQueryId:{+[STSSearchModel clientQueryId](STSSearchModel, "clientQueryId")}];
  [(PARSession *)self->_parsecSession reportEvent:v9];
}

@end