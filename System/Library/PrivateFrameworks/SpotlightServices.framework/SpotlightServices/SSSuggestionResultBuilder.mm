@interface SSSuggestionResultBuilder
+ (id)buildResultWithResult:(id)a3 queryContext:(id)a4;
+ (id)buildResultWithSpotlightSuggestion:(id)a3 queryContext:(id)a4;
+ (id)buildResultWithSuggestion:(id)a3 queryContext:(id)a4;
+ (id)buildResultsWithCompletionsData:(id)a3 queryContext:(id)a4;
+ (id)buildResultsWithSuggestionsData:(id)a3 queryContext:(id)a4;
- (SSSuggestionResultBuilder)initWithResult:(id)a3 queryContext:(id)a4;
- (SSSuggestionResultBuilder)initWithSpotlightSuggestion:(id)a3 queryContext:(id)a4;
- (SSSuggestionResultBuilder)initWithSuggestion:(id)a3 queryContext:(id)a4;
- (id)buildCommand;
- (id)buildHighlightedTextForSuggestion;
- (id)buildInlineCardSections;
- (id)buildPhotoTextAndGlyphForSuggestion:(id)a3;
- (id)buildResult;
- (id)buildSymbolImage;
@end

@implementation SSSuggestionResultBuilder

+ (id)buildResultWithResult:(id)a3 queryContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SSSuggestionResultBuilder alloc] initWithResult:v6 queryContext:v5];

  v8 = [(SSSuggestionResultBuilder *)v7 buildResult];
  [v8 clearBackendData];

  return v8;
}

- (SSSuggestionResultBuilder)initWithResult:(id)a3 queryContext:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = SSSuggestionResultBuilder;
  v8 = [(SSSuggestionResultBuilder *)&v23 init];
  v9 = v8;
  if (v8)
  {
    [(SSResultBuilder *)v8 setQueryContext:v7];
    v10 = [v7 searchString];
    v11 = +[SPSearchSuggestionResult searchSuggestionRankingResultWithResult:query:sectionBundleIdentifier:queryId:](SPSearchSuggestionResult, "searchSuggestionRankingResultWithResult:query:sectionBundleIdentifier:queryId:", v6, v10, @"com.apple.searchd.suggestions", [v7 queryIdent]);
    [(SSResultBuilder *)v9 setResult:v11];

    v12 = [(SSResultBuilder *)v9 result];
    v13 = [v12 searchEntities];
    v14 = [v13 lastObject];
    [(SSSuggestionResultBuilder *)v9 setEntity:v14];

    v15 = [(SSResultBuilder *)v9 result];
    v16 = [v15 completion];

    if (v16)
    {
      v17 = [(SSResultBuilder *)v9 result];
      v18 = [v17 completion];
      [(SSSuggestionResultBuilder *)v9 setSuggestionString:v18];

      v19 = [(SSSuggestionResultBuilder *)v9 suggestionString];
      v24[0] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [(SSResultBuilder *)v9 setMatchedStrings:v20];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)buildResultWithSuggestion:(id)a3 queryContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SSSuggestionResultBuilder alloc] initWithSuggestion:v6 queryContext:v5];

  v8 = [(SSSuggestionResultBuilder *)v7 buildResult];
  [v8 clearBackendData];

  return v8;
}

- (SSSuggestionResultBuilder)initWithSuggestion:(id)a3 queryContext:(id)a4
{
  v25[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = SSSuggestionResultBuilder;
  v8 = [(SSSuggestionResultBuilder *)&v24 init];
  v9 = v8;
  if (v8)
  {
    [(SSResultBuilder *)v8 setQueryContext:v7];
    v10 = [v6 suggestion];
    if (v10)
    {
      [(SSSuggestionResultBuilder *)v9 setSuggestionString:v10];
    }

    else
    {
      v11 = [v7 searchString];
      [(SSSuggestionResultBuilder *)v9 setSuggestionString:v11];
    }

    v12 = [v7 searchString];
    v13 = +[SPSearchSuggestionResult searchSuggestionRankingResultWithSuggestion:query:sectionBundleIdentifier:queryId:](SPSearchSuggestionResult, "searchSuggestionRankingResultWithSuggestion:query:sectionBundleIdentifier:queryId:", v6, v12, @"com.apple.searchd.suggestions", [v7 queryIdent]);
    [(SSResultBuilder *)v9 setResult:v13];

    v14 = [(SSResultBuilder *)v9 result];
    v15 = [v14 searchEntities];
    v16 = [v15 lastObject];
    [(SSSuggestionResultBuilder *)v9 setEntity:v16];

    v17 = [(SSSuggestionResultBuilder *)v9 entity];

    if (!v17)
    {
      v18 = [v6 suggestion];
      v19 = [SPSearchEntity searchEntityWithSearchString:v18 spotlightQueryString:0 preferredBundleIDs:0];
      [(SSSuggestionResultBuilder *)v9 setEntity:v19];
    }

    [(SSSuggestionResultBuilder *)v9 setSuggestion:v6];
    v20 = [(SSSuggestionResultBuilder *)v9 suggestionString];
    v25[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(SSResultBuilder *)v9 setMatchedStrings:v21];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)buildResultWithSpotlightSuggestion:(id)a3 queryContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 suggestionKind] == 2)
  {
    v7 = [[SSSuggestionResultBuilder alloc] initWithSpotlightSuggestion:v5 queryContext:v6];
    v8 = [(SSSuggestionResultBuilder *)v7 buildResult];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)buildResultsWithCompletionsData:(id)a3 queryContext:(id)a4
{
  v35[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    if (isMacOS())
    {
      v7 = 0;
    }

    else
    {
      v7 = SSBundlesDonatingPhotos();
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9 = [MEMORY[0x1E6964EA8] emptySuggestion];
    v10 = MEMORY[0x1E6964EA8];
    v11 = [v6 searchString];
    v12 = [v10 updatedSuggestionWithCurrentSuggestion:v9 userString:v11 tokens:MEMORY[0x1E695E0F0]];

    v13 = MEMORY[0x1E6964EA8];
    v14 = [v6 searchString];
    v34 = @"photosBundleIDs";
    v35[0] = v7;
    v28 = v7;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v27 = v12;
    v16 = [v13 suggestionsWithCurrentSuggestion:v12 userQueryString:v14 completionData:v5 options:v15];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = v16;
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          if ([v22 suggestionKind] == 2)
          {
            v23 = [[SSSuggestionResultBuilder alloc] initWithSpotlightSuggestion:v22 queryContext:v6];
            v24 = [(SSSuggestionResultBuilder *)v23 buildResult];
            if (v24)
            {
              [v8 addObject:v24];
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)buildResultsWithSuggestionsData:(id)a3 queryContext:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = MEMORY[0x1E6964EA8];
    v9 = [MEMORY[0x1E6964EA8] emptySuggestion];
    v10 = [v6 searchString];
    v11 = [v8 updatedSuggestionWithCurrentSuggestion:v9 userString:v10 tokens:MEMORY[0x1E695E0F0]];

    v12 = MEMORY[0x1E6964EA8];
    v13 = [v6 searchString];
    v25 = v11;
    v14 = [v12 suggestionsWithCurrentSuggestion:v11 userQueryString:v13 suggestionData:v5 options:MEMORY[0x1E695E0F8]];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v26 + 1) + 8 * i);
          if ([v20 suggestionKind] == 2)
          {
            v21 = [[SSSuggestionResultBuilder alloc] initWithSpotlightSuggestion:v20 queryContext:v6];
            v22 = [(SSSuggestionResultBuilder *)v21 buildResult];
            if (v22)
            {
              [v7 addObject:v22];
            }
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v7;
}

- (SSSuggestionResultBuilder)initWithSpotlightSuggestion:(id)a3 queryContext:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21.receiver = self;
  v21.super_class = SSSuggestionResultBuilder;
  v8 = [(SSSuggestionResultBuilder *)&v21 init];
  v9 = v8;
  if (v8)
  {
    [(SSResultBuilder *)v8 setQueryContext:v7];
    v10 = [v7 searchString];
    [(SSSuggestionResultBuilder *)v9 setSuggestionString:v10];

    v11 = [v7 searchString];
    v12 = +[SPSearchSuggestionResult searchSuggestionRankingResultWithSpotlightSuggestion:query:sectionBundleIdentifier:queryId:](SPSearchSuggestionResult, "searchSuggestionRankingResultWithSpotlightSuggestion:query:sectionBundleIdentifier:queryId:", v6, v11, @"com.apple.searchd.suggestions", [v7 queryIdent]);
    [(SSResultBuilder *)v9 setResult:v12];

    v13 = [(SSResultBuilder *)v9 result];
    v14 = [v13 searchEntities];
    v15 = [v14 lastObject];
    [(SSSuggestionResultBuilder *)v9 setEntity:v15];

    [(SSSuggestionResultBuilder *)v9 setSpotlightSuggestion:v6];
    v16 = [(SSResultBuilder *)v9 result];
    v17 = [v16 completion];
    v22[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [(SSResultBuilder *)v9 setMatchedStrings:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)buildResult
{
  v5 = [(SSSuggestionResultBuilder *)self suggestion];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(SSSuggestionResultBuilder *)self spotlightSuggestion];
    if (v7)
    {
      v2 = v7;
      v6 = 0;
    }

    else
    {
      v3 = [(SSResultBuilder *)self result];
      if (SSResultTypeIsServer([v3 type]))
      {

        goto LABEL_10;
      }

      v2 = 0;
      v6 = 1;
    }
  }

  v8 = [(SSResultBuilder *)self result];
  v9 = [v8 inlineCard];

  if (v6)
  {
  }

  if (!v5)
  {
  }

  if (!v9)
  {
    v18 = [(SSResultBuilder *)self buildCompactCard];
    v19 = [(SSResultBuilder *)self result];
    [v19 setCompactCard:v18];

    v20 = [(SSResultBuilder *)self buildInlineCard];
    v21 = [(SSResultBuilder *)self result];
    [v21 setInlineCard:v20];

    v22 = [(SSResultBuilder *)self buildPreviewButtonItems];
    v23 = [(SSResultBuilder *)self result];
    v24 = [v23 inlineCard];
    v25 = [v24 cardSections];
    v26 = [v25 firstObject];
    [v26 setPreviewButtonItems:v22];

    goto LABEL_16;
  }

LABEL_10:
  v10 = [(SSResultBuilder *)self result];
  v11 = [v10 inlineCard];
  if (v11)
  {
    v12 = v11;
    v13 = [(SSResultBuilder *)self result];
    v14 = [v13 inlineCard];
    v15 = [v14 cardSections];
    v16 = [v15 firstObject];
    v17 = [v16 command];

    if (v17)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v22 = [(SSResultBuilder *)self buildInlineCard];
  v23 = [(SSResultBuilder *)self result];
  [v23 setInlineCard:v22];
LABEL_16:

LABEL_17:

  return [(SSResultBuilder *)self result];
}

- (id)buildInlineCardSections
{
  v67[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSResultBuilder *)self result];
  if ([v3 type] == 32)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SSResultBuilder *)self result];
    v4 = [v5 type] == 38;
  }

  v6 = [(SSSuggestionResultBuilder *)self spotlightSuggestion];

  if (!v6)
  {
    v16 = [(SSSuggestionResultBuilder *)self suggestion];

    if (v16)
    {
      v7 = [(SSSuggestionResultBuilder *)self suggestion];
      v17 = [v7 type];
      v18 = [(SSSuggestionResultBuilder *)self entity];
      v19 = [v18 isContactEntitySearch];

      if ((v17 & 0xFFFFFFFD) == 0xC)
      {
        v20 = 4;
      }

      else
      {
        v20 = 3;
      }

      if (v17 > 0xE || ((1 << v17) & 0x5800) == 0)
      {
        v21 = [(SSSuggestionResultBuilder *)self entity];
        v22 = [v21 isAppEntitySearch];

        if (v22)
        {
          v20 = 2;
        }

        else
        {
          v20 = v19;
        }
      }

      v9 = objc_opt_new();
      v23 = [v7 bundleIdentifier];
      [v9 setBundleIdentifier:v23];

      v24 = objc_opt_new();
      v25 = [(SSSuggestionResultBuilder *)self buildHighlightedTextForSuggestion];
      [(SSContactResultBuilder *)v24 setSuggestionText:v25];

      v26 = [(SSContactResultBuilder *)v24 suggestionText];
      [v26 setMaxLines:1];

      [(SSContactResultBuilder *)v24 setSuggestionType:v20];
      v27 = MEMORY[0x1E69CA3A0];
      v28 = [v7 detailText];
      v29 = [v27 textWithString:v28];
      [(SSContactResultBuilder *)v24 setDetailText:v29];

      v66 = v9;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
      [(SSContactResultBuilder *)v24 setPunchoutOptions:v30];

      v31 = [(SSSuggestionResultBuilder *)self buildSymbolImage];
      [(SSContactResultBuilder *)v24 setThumbnail:v31];

      v32 = [(SSSuggestionResultBuilder *)self buildCommand];
      [(SSContactResultBuilder *)v24 setCommand:v32];

      v65 = v24;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
      goto LABEL_18;
    }

    if (v4)
    {
      v34 = [(SSSuggestionResultBuilder *)self entity];
      v35 = [v34 isContactEntitySearch];

      if (v35)
      {
        v7 = [(SSSuggestionResultBuilder *)self entity];
      }

      else
      {
        v7 = 0;
      }

      v9 = objc_opt_new();
      v55 = [(SSResultBuilder *)self result];
      v56 = [v55 resultBundleId];
      [v9 setBundleIdentifier:v56];

      v57 = [SSContactResultBuilder alloc];
      v58 = [(SSResultBuilder *)self result];
      v59 = [v7 contact];
      v24 = [(SSContactResultBuilder *)v57 initWithResult:v58 contactEntity:v7 contact:v59];

      v48 = [(SSResultBuilder *)v24 buildCompactCardSection];
      v64 = v48;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
LABEL_31:

      goto LABEL_32;
    }

    v36 = [(SSResultBuilder *)self result];
    v37 = [v36 inlineCard];
    v38 = [v37 cardSections];
    v7 = [v38 firstObject];

    if (v7 && ([v7 command], v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
    {
      v62 = [(SSSuggestionResultBuilder *)self buildCommand];
      [v7 setCommand:v62];
    }

    else
    {
      v40 = [(SSResultBuilder *)self result];
      IsServer = SSResultTypeIsServer([v40 type]);

      if ((IsServer & 1) == 0)
      {
        v9 = objc_opt_new();
        v42 = [(SSSuggestionResultBuilder *)self entity];
        v43 = [v42 symbolName];
        v44 = v43;
        if (v43)
        {
          v45 = v43;
        }

        else
        {
          v45 = @"magnifyingglass";
        }

        [v9 setSymbolName:v45];

        [v9 setIsTemplate:1];
        v24 = objc_opt_new();
        v46 = [(SSResultBuilder *)self result];
        v47 = [v46 resultBundleId];
        [(SSContactResultBuilder *)v24 setBundleIdentifier:v47];

        v48 = objc_opt_new();
        [v48 setThumbnail:v9];
        [v48 setShouldUseCompactDisplay:1];
        v49 = MEMORY[0x1E69CA3A0];
        v50 = [(SSSuggestionResultBuilder *)self suggestionString];
        v51 = [v49 textWithString:v50];
        [v48 setTitle:v51];

        v52 = [v48 title];
        [v52 setMaxLines:1];

        v53 = objc_opt_new();
        v54 = [(SSSuggestionResultBuilder *)self suggestionString];
        [v53 setSearchString:v54];

        [v53 setQuerySource:1];
        [v48 setCommand:v53];
        v63 = v48;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];

        goto LABEL_31;
      }
    }

    v9 = [(SSResultBuilder *)self result];
    v24 = [v9 inlineCard];
    v33 = [(SSContactResultBuilder *)v24 cardSections];
LABEL_18:
    v15 = v33;
LABEL_32:

    goto LABEL_33;
  }

  v7 = objc_opt_new();
  v8 = [(SSSuggestionResultBuilder *)self buildSymbolImage];
  [v7 setThumbnail:v8];

  [v7 setShouldUseCompactDisplay:1];
  v9 = [(SSSuggestionResultBuilder *)self buildHighlightedTextForSuggestion];
  v10 = [(SSSuggestionResultBuilder *)self entity];
  v11 = [v10 isPhotosEntitySearch];

  if (v11)
  {
    v12 = [(SSSuggestionResultBuilder *)self buildPhotoTextAndGlyphForSuggestion:v9];

    v9 = v12;
  }

  [v7 setTitle:v9];
  v13 = [v7 title];
  [v13 setMaxLines:1];

  v14 = [(SSSuggestionResultBuilder *)self buildCommand];
  [v7 setCommand:v14];

  v67[0] = v7;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
LABEL_33:

  v60 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)buildSymbolImage
{
  v3 = [(SSSuggestionResultBuilder *)self entity];
  v4 = v3;
  if (!v3)
  {
    v6 = [(SSSuggestionResultBuilder *)self suggestion];
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = v6;
    v8 = [(SSResultBuilder *)self result];
    IsLocalSuggestion = SSResultTypeIsLocalSuggestion([v8 type]);

    if ((IsLocalSuggestion & 1) == 0)
    {
      goto LABEL_8;
    }

    v5 = @"magnifyingglass";
LABEL_7:
    v10 = objc_opt_new();
    [v10 setSymbolName:v5];
    [v10 setIsTemplate:1];

    goto LABEL_9;
  }

  v5 = [v3 symbolName];
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_8:
  v10 = 0;
LABEL_9:

  return v10;
}

- (id)buildCommand
{
  v3 = [(SSSuggestionResultBuilder *)self spotlightSuggestion];
  if (v3)
  {
    v4 = v3;
    v5 = [(SSSuggestionResultBuilder *)self entity];

    if (v5)
    {
      v6 = [(SSSuggestionResultBuilder *)self entity];
      v7 = [v6 command];

      goto LABEL_25;
    }
  }

  v8 = [(SSSuggestionResultBuilder *)self suggestion];

  if (v8)
  {
    v9 = [(SSSuggestionResultBuilder *)self suggestion];
    if ([v9 type] != 12 && objc_msgSend(v9, "type") != 14)
    {
      v32 = [(SSResultBuilder *)self result];
      IsLocalSuggestion = SSResultTypeIsLocalSuggestion([v32 type]);

      if (IsLocalSuggestion)
      {
        v7 = objc_opt_new();
        v34 = [(SSSuggestionResultBuilder *)self entity];
        v35 = [v34 searchString];
        [v7 setSearchString:v35];

        [v7 setQuerySource:1];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_24;
    }

    v7 = objc_opt_new();
    v10 = [(SSResultBuilder *)self result];
    v11 = [(__CFString *)v10 title];
    v12 = [v11 text];
    if (v12)
    {
      [v7 setSearchString:v12];
    }

    else
    {
      v30 = [(SSSuggestionResultBuilder *)self suggestionString];
      [v7 setSearchString:v30];
    }
  }

  else
  {
    v13 = [(SSSuggestionResultBuilder *)self entity];
    v14 = [v13 isContactEntitySearch];

    if (v14)
    {
      v9 = [(SSSuggestionResultBuilder *)self entity];
      v7 = objc_opt_new();
      v15 = [v9 tokenText];
      [v7 setTokenString:v15];

      v16 = [v9 personQueryIdentifier];
      v17 = v16;
      v18 = &stru_1F556FE60;
      if (v16)
      {
        v18 = v16;
      }

      v10 = v18;

      v19 = [v9 contactIdentifier];

      if (v19)
      {
        v20 = [v9 contactIdentifier];
        v21 = [SPSearchContactEntity updatePersonQueryIdentifier:v10 withContactIdentifier:v20];

        v10 = v21;
      }

      v22 = [v9 personIdentifier];

      if (v22)
      {
        v23 = [v9 personIdentifier];
        v24 = [SPSearchContactEntity updatePersonQueryIdentifier:v10 withPersonIdentifier:v23];

        v10 = v24;
      }

      [v7 setEntityIdentifier:v10];
      [v7 setEntityType:2];
      v25 = [(SSSuggestionResultBuilder *)self buildSymbolImage];
      [v7 setSymbolImage:v25];

      v26 = [v7 symbolImage];
      [v7 setTokenImage:v26];

      goto LABEL_23;
    }

    v27 = [(SSResultBuilder *)self result];
    v28 = [v27 resultBundleId];
    v29 = [v28 isEqual:@"com.apple.spotlight.related_search_as_typed.web"];

    if (!v29)
    {
      v7 = objc_opt_new();
      v36 = [(SSResultBuilder *)self result];
      v37 = [v36 title];
      v38 = [v37 text];
      if (v38)
      {
        [v7 setSearchString:v38];
      }

      else
      {
        v40 = [(SSSuggestionResultBuilder *)self suggestionString];
        [v7 setSearchString:v40];
      }

      [v7 setQuerySource:2];
      goto LABEL_25;
    }

    v7 = objc_opt_new();
    v9 = [(SSResultBuilder *)self result];
    v10 = [v9 title];
    v11 = [(__CFString *)v10 text];
    if (v11)
    {
      [v7 setSearchString:v11];
    }

    else
    {
      v39 = [(SSSuggestionResultBuilder *)self suggestionString];
      [v7 setSearchString:v39];
    }
  }

LABEL_23:
LABEL_24:

LABEL_25:

  return v7;
}

- (id)buildHighlightedTextForSuggestion
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = [(SSResultBuilder *)self matchedStrings];
  v4 = [v3 firstObject];

  v5 = [(SSResultBuilder *)self queryContext];
  v6 = [v5 searchEntities];
  v7 = [v6 count];
  v8 = [(SSResultBuilder *)self queryContext];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 searchEntities];
    v11 = [v10 firstObject];
    v12 = [v11 displayString];
  }

  else
  {
    v12 = [v8 searchString];
  }

  v13 = objc_opt_new();
  [v13 setText:v4];
  [v13 setIsEmphasized:1];
  v33[0] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v15 = objc_opt_new();
  [v15 setFormattedTextPieces:v14];
  if (([v4 isEqual:v12] & 1) == 0)
  {
    v16 = [(SSResultBuilder *)self buildHighlightedMatchedTextWithTitle:0 headTruncation:0];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v15;
    }

    v19 = v18;

    v15 = v19;
  }

  if (SSDefaultsGetState(6uLL))
  {
    v20 = [(SSSuggestionResultBuilder *)self spotlightSuggestion];

    if (v20)
    {
      v21 = [(SSResultBuilder *)self result];
      v22 = [v21 type];

      if (v22 == 31)
      {
        v23 = @" L";
      }

      else
      {
        v24 = [(SSResultBuilder *)self result];
        v25 = [v24 type];

        if (v25 == 34)
        {
          v23 = @" N";
        }

        else
        {
          v26 = [(SSResultBuilder *)self result];
          v27 = [v26 type];

          if (v27 != 39)
          {
            goto LABEL_18;
          }

          v23 = @" T";
        }
      }

      v28 = objc_opt_new();
      [v28 setText:v23];
      [v28 setTextColor:3];
      v29 = [v15 formattedTextPieces];
      v30 = [v29 arrayByAddingObject:v28];
      [v15 setFormattedTextPieces:v30];
    }
  }

LABEL_18:

  v31 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)buildPhotoTextAndGlyphForSuggestion:(id)a3
{
  v3 = a3;
  v38 = [v3 formattedTextPieces];
  v4 = objc_opt_new();
  [v4 setSymbolName:@"photo.on.rectangle"];
  [v4 setIsTemplate:1];
  v5 = objc_alloc_init(MEMORY[0x1E69CA0F0]);
  v36 = v4;
  [v5 setGlyph:v4];
  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"TEMPLATE_PHOTOS_LOCATION_SEARCH" value:&stru_1F556FE60 table:@"SpotlightServices"];

  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v35 = v7;
  v9 = [v7 componentsSeparatedByString:@"<query>"];
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  if ([v9 count])
  {
    v11 = 0;
    do
    {
      v12 = [v9 objectAtIndexedSubscript:v11];
      v13 = [v12 isEqualToString:&stru_1F556FE60];

      if ((v13 & 1) == 0)
      {
        v14 = [v9 objectAtIndexedSubscript:v11];
        [v10 addObject:v14];
      }

      if (v11 < [v9 count] - 1)
      {
        [v10 addObjectsFromArray:v38];
      }

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  v37 = v3;
  if ([v10 count])
  {
    v15 = 0;
    while (1)
    {
      v16 = [v10 objectAtIndexedSubscript:v15];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v18 = [v10 objectAtIndexedSubscript:v15];
      v19 = v18;
      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v20 = [v18 rangeOfString:@"<photo-icon>"];

      v21 = [v10 objectAtIndexedSubscript:v15];
      v22 = v21;
      if (v20 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = [v21 componentsSeparatedByString:@"<photo-icon>"];

        if ([v19 count])
        {
          v26 = 0;
          do
          {
            v27 = [v19 objectAtIndexedSubscript:v26];
            v28 = [v27 isEqualToString:&stru_1F556FE60];

            if ((v28 & 1) == 0)
            {
              v29 = MEMORY[0x1E69CA0F0];
              v30 = [v19 objectAtIndexedSubscript:v26];
              v31 = [v29 textWithString:v30];
              [v8 addObject:v31];
            }

            if (v26 < [v19 count] - 1)
            {
              [v8 addObject:v5];
            }

            ++v26;
          }

          while (v26 < [v19 count]);
        }

        goto LABEL_22;
      }

      v23 = [v21 isEqualToString:&stru_1F556FE60];

      if ((v23 & 1) == 0)
      {
        v24 = MEMORY[0x1E69CA0F0];
        v19 = [v10 objectAtIndexedSubscript:v15];
        v25 = [v24 textWithString:v19];
        [v8 addObject:v25];

LABEL_22:
      }

      if (++v15 >= [v10 count])
      {
        goto LABEL_24;
      }
    }

    [v8 addObject:v18];
    goto LABEL_22;
  }

LABEL_24:
  if ([v8 count])
  {
    v32 = objc_opt_new();
    [v32 setFormattedTextPieces:v8];
    v33 = v37;
  }

  else
  {
    v33 = v37;
    v32 = v37;
  }

  return v32;
}

@end