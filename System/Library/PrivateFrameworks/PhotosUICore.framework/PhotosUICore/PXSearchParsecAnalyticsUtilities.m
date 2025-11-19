@interface PXSearchParsecAnalyticsUtilities
+ (id)SFSearchResultForInitialSuggestionWithQueryId:(int64_t)a3;
+ (id)SFSearchResultFromAssetUUID:(id)a3 isTopResult:(BOOL)a4 retrievalType:(unint64_t)a5 queryId:(int64_t)a6;
+ (id)SFSearchResultFromCollectionIdentifier:(id)a3 type:(unint64_t)a4 queryId:(int64_t)a5;
+ (id)SFSearchResultFromSearchSuggestion:(id)a3 queryId:(int64_t)a4;
+ (id)_baseSFSearchResultForQueryId:(int64_t)a3;
+ (id)_descriptionForSearchToken:(unint64_t)a3;
+ (id)_identifierForSearchSuggestion:(id)a3;
+ (id)_resultRankingFeedbacksFromSFSearchResults:(id)a3;
+ (id)_resultSectionForInitialSuggestions:(id)a3 queryId:(int64_t)a4;
+ (id)_searchResultDescriptionForSearchResultType:(unint64_t)a3;
+ (id)_sectionRankingFeedbackWithResultSection:(id)a3 localSectionPosition:(unint64_t)a4;
+ (id)_tokenCategoryTypesForSearchTokens:(id)a3;
+ (id)commandFeedbackFromSFSearchResult:(id)a3;
+ (id)descriptionForSearchString:(id)a3 searchTokens:(id)a4;
+ (id)sectionRankingFeedbackWithInitialSuggestions:(id)a3 queryId:(int64_t)a4;
+ (unint64_t)_wordCountForSearchString:(id)a3;
@end

@implementation PXSearchParsecAnalyticsUtilities

+ (id)_identifierForSearchSuggestion:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v3, "hash")];
  if (![v4 length])
  {
    v5 = PLSearchUIParsecAnalyticsGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Error constructing identifier for search suggestion: %@", buf, 0xCu);
    }
  }

  return v4;
}

+ (unint64_t)_wordCountForSearchString:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if ([v3 length])
  {
    v4 = *MEMORY[0x1E69779F0];
    v15[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v6 = [objc_alloc(MEMORY[0x1E6977A80]) initWithTagSchemes:v5];
    [v6 setString:v3];
    v7 = [v3 length];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__PXSearchParsecAnalyticsUtilities__wordCountForSearchString___block_invoke;
    v10[3] = &unk_1E77397A8;
    v10[4] = &v11;
    [v6 enumerateTagsInRange:0 unit:v7 scheme:0 options:v4 usingBlock:{6, v10}];
    v8 = v12[3];
  }

  else
  {
    v8 = v12[3];
  }

  _Block_object_dispose(&v11, 8);

  return v8;
}

uint64_t __62__PXSearchParsecAnalyticsUtilities__wordCountForSearchString___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 isEqualToString:*MEMORY[0x1E6977A18]];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

+ (id)_descriptionForSearchToken:(unint64_t)a3
{
  if (a3 > 0x2C)
  {
    return 0;
  }

  else
  {
    return off_1E7739800[a3];
  }
}

+ (id)_searchResultDescriptionForSearchResultType:(unint64_t)a3
{
  if (a3 > 6)
  {
    return 0;
  }

  else
  {
    return off_1E77397C8[a3];
  }
}

+ (id)_tokenCategoryTypesForSearchTokens:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [a1 _descriptionForSearchToken:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "categoriesType", v14)}];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

+ (id)_resultSectionForInitialSuggestions:(id)a3 queryId:(int64_t)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v8 = [PXSearchParsecAnalyticsUtilities SFSearchResultForInitialSuggestionWithQueryId:a4];
      [v6 addObject:v8];

      ++v7;
    }

    while ([v5 count] > v7);
  }

  v9 = objc_alloc_init(MEMORY[0x1E69CA390]);
  [v9 setResults:v6];
  [v9 setIsInitiallyHidden:0];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.photos", @"GenericInitialSuggestion"];
  [v9 setIdentifier:v10];

  [v9 setBundleIdentifier:@"com.apple.photos"];

  return v9;
}

+ (id)_baseSFSearchResultForQueryId:(int64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E69CA3E8]);
  [v4 setUserInput:@"photos"];
  [v4 setApplicationBundleIdentifier:@"com.apple.photos"];
  [v4 setQueryId:a3];

  return v4;
}

+ (id)descriptionForSearchString:(id)a3 searchTokens:(id)a4
{
  v29[4] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 length] || objc_msgSend(v7, "count"))
  {
    v8 = [a1 _wordCountForSearchString:v6];
    v9 = [a1 _tokenCategoryTypesForSearchTokens:v7];
    v28[0] = @"cc";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "length")}];
    v29[0] = v10;
    v28[1] = @"wc";
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
    v29[1] = v11;
    v28[2] = @"tc";
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
    v28[3] = @"tt";
    v29[2] = v12;
    v29[3] = v9;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];

    v21 = 0;
    v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v13 options:0 error:&v21];
    v15 = v21;
    if (v15)
    {
      v16 = PLSearchUIParsecAnalyticsGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v23 = v15;
        v24 = 2112;
        v25 = v6;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_ERROR, "Error serializing search characteristics: %@ for search string: %@, search tokens: %@", buf, 0x20u);
      }
    }

    if (v14)
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v14 encoding:4];
    }

    else
    {
      v17 = 0;
    }

    v18 = &stru_1F1741150;
    if (v17)
    {
      v18 = v17;
    }

    v19 = v18;
  }

  else
  {
    v19 = &stru_1F1741150;
  }

  return v19;
}

+ (id)_resultRankingFeedbacksFromSFSearchResults:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  if ([v3 count])
  {
    v5 = 0;
    v6 = MEMORY[0x1E695E0F0];
    do
    {
      v7 = objc_alloc(MEMORY[0x1E69CA388]);
      v8 = [v3 objectAtIndexedSubscript:v5];
      v9 = [v7 initWithResult:v8 hiddenResults:v6 duplicateResults:v6 localResultPosition:++v5];

      [v4 addObject:v9];
    }

    while (v5 < [v3 count]);
  }

  v10 = [v4 copy];

  return v10;
}

+ (id)_sectionRankingFeedbackWithResultSection:(id)a3 localSectionPosition:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 results];
  v8 = [a1 _resultRankingFeedbacksFromSFSearchResults:v7];

  v9 = [objc_alloc(MEMORY[0x1E69CA418]) initWithResults:v8 section:v6 localSectionPosition:a4 personalizationScore:0.0];

  return v9;
}

+ (id)sectionRankingFeedbackWithInitialSuggestions:(id)a3 queryId:(int64_t)a4
{
  v5 = [a1 _resultSectionForInitialSuggestions:a3 queryId:a4];
  v6 = [a1 _sectionRankingFeedbackWithResultSection:v5 localSectionPosition:1];

  return v6;
}

+ (id)commandFeedbackFromSFSearchResult:(id)a3
{
  v3 = MEMORY[0x1E69C9F88];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x1E69C9F08]);
  v7 = objc_alloc_init(MEMORY[0x1E69C9ED0]);
  v8 = [objc_alloc(MEMORY[0x1E69C9F98]) initWithCommand:v5 cardSection:v6 result:v4 button:v7];

  [v8 setTriggerEvent:2];

  return v8;
}

+ (id)SFSearchResultFromSearchSuggestion:(id)a3 queryId:(int64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PXSearchParsecAnalyticsUtilities.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"searchSuggestion"}];
  }

  v8 = [a1 _baseSFSearchResultForQueryId:a4];
  v9 = [a1 _descriptionForSearchToken:{objc_msgSend(v7, "categoriesType")}];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.photos.suggestions", v9];
  v11 = [a1 _identifierForSearchSuggestion:v7];
  [v8 setIdentifier:v11];

  [v8 setResultBundleId:v10];
  [v8 setSectionBundleIdentifier:@"com.apple.photos.suggestions"];
  [v8 setResultType:@"suggestion"];

  return v8;
}

+ (id)SFSearchResultForInitialSuggestionWithQueryId:(int64_t)a3
{
  v3 = [a1 _baseSFSearchResultForQueryId:a3];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.photos.zkw", @"Unknown"];
  [v3 setResultBundleId:v4];
  [v3 setSectionBundleIdentifier:v4];
  [v3 setIdentifier:@"Undefined"];

  return v3;
}

+ (id)SFSearchResultFromCollectionIdentifier:(id)a3 type:(unint64_t)a4 queryId:(int64_t)a5
{
  v8 = a3;
  v9 = [a1 _baseSFSearchResultForQueryId:a5];
  v10 = [a1 _searchResultDescriptionForSearchResultType:a4];
  v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.photos", v10];
  [v9 setResultBundleId:v11];
  [v9 setSectionBundleIdentifier:v11];
  [v9 setIdentifier:v8];

  return v9;
}

+ (id)SFSearchResultFromAssetUUID:(id)a3 isTopResult:(BOOL)a4 retrievalType:(unint64_t)a5 queryId:(int64_t)a6
{
  v8 = a4;
  v10 = a3;
  v11 = [a1 _baseSFSearchResultForQueryId:a6];
  v12 = @"AssetResult";
  if (v8)
  {
    v12 = @"TopAssetResult";
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"com.apple.photos", v12];
  [v11 setResultBundleId:v13];
  [v11 setSectionBundleIdentifier:v13];
  [v11 setIdentifier:v10];

  v14 = objc_alloc_init(MEMORY[0x1E69CA2E8]);
  [v14 setIsEmbeddingMatched:(a5 & 0xFFFFFFFFFFFFFFFELL) == 2];
  [v14 setIsMetadataMatched:(a5 & 0xFFFFFFFFFFFFFFFDLL) == 1];
  [v11 setPhotosAttributes:v14];

  return v11;
}

@end