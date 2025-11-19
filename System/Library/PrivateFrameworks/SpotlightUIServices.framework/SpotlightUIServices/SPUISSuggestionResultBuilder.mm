@interface SPUISSuggestionResultBuilder
+ (id)buildResultWithResult:(id)a3 queryContext:(id)a4;
+ (id)buildResultWithSpotlightSuggestion:(id)a3 queryContext:(id)a4;
+ (id)buildResultWithSuggestion:(id)a3 queryContext:(id)a4;
+ (id)buildResultsWithCompletionsData:(id)a3 queryContext:(id)a4;
+ (id)buildResultsWithSuggestionsData:(id)a3 queryContext:(id)a4;
- (SPUISSuggestionResultBuilder)initWithResult:(id)a3 queryContext:(id)a4;
- (SPUISSuggestionResultBuilder)initWithSpotlightSuggestion:(id)a3 queryContext:(id)a4;
- (SPUISSuggestionResultBuilder)initWithSuggestion:(id)a3 queryContext:(id)a4;
- (id)buildCommand;
- (id)buildHighlightedTextForSuggestion;
- (id)buildInlineCardSections;
- (id)buildPhotoTextAndGlyphForSuggestion:(id)a3;
- (id)buildResult;
- (id)buildSymbolImage;
@end

@implementation SPUISSuggestionResultBuilder

+ (id)buildResultWithResult:(id)a3 queryContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SPUISSuggestionResultBuilder alloc] initWithResult:v6 queryContext:v5];

  v8 = [(SPUISSuggestionResultBuilder *)v7 buildResult];
  [v8 clearBackendData];

  return v8;
}

- (SPUISSuggestionResultBuilder)initWithResult:(id)a3 queryContext:(id)a4
{
  v25[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = SPUISSuggestionResultBuilder;
  v8 = [(SPUISSuggestionResultBuilder *)&v24 init];
  v9 = v8;
  if (v8)
  {
    [(SPUISResultBuilder *)v8 setQueryContext:v7];
    v10 = MEMORY[0x277D658A8];
    v11 = [v7 searchString];
    v12 = [v10 searchSuggestionRankingResultWithResult:v6 query:v11 sectionBundleIdentifier:@"com.apple.searchd.suggestions" queryId:{objc_msgSend(v7, "queryIdent")}];
    [(SPUISResultBuilder *)v9 setResult:v12];

    v13 = [(SPUISResultBuilder *)v9 result];
    v14 = [v13 searchEntities];
    v15 = [v14 lastObject];
    [(SPUISSuggestionResultBuilder *)v9 setEntity:v15];

    v16 = [(SPUISResultBuilder *)v9 result];
    v17 = [v16 completion];

    if (v17)
    {
      v18 = [(SPUISResultBuilder *)v9 result];
      v19 = [v18 completion];
      [(SPUISSuggestionResultBuilder *)v9 setSuggestionString:v19];

      v20 = [(SPUISSuggestionResultBuilder *)v9 suggestionString];
      v25[0] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      [(SPUISResultBuilder *)v9 setMatchedStrings:v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)buildResultWithSuggestion:(id)a3 queryContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SPUISSuggestionResultBuilder alloc] initWithSuggestion:v6 queryContext:v5];

  v8 = [(SPUISSuggestionResultBuilder *)v7 buildResult];
  [v8 clearBackendData];

  return v8;
}

- (SPUISSuggestionResultBuilder)initWithSuggestion:(id)a3 queryContext:(id)a4
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = SPUISSuggestionResultBuilder;
  v8 = [(SPUISSuggestionResultBuilder *)&v26 init];
  v9 = v8;
  if (v8)
  {
    [(SPUISResultBuilder *)v8 setQueryContext:v7];
    v10 = [v6 suggestion];
    if (v10)
    {
      [(SPUISSuggestionResultBuilder *)v9 setSuggestionString:v10];
    }

    else
    {
      v11 = [v7 searchString];
      [(SPUISSuggestionResultBuilder *)v9 setSuggestionString:v11];
    }

    v12 = MEMORY[0x277D658A8];
    v13 = [v7 searchString];
    v14 = [v12 searchSuggestionRankingResultWithSuggestion:v6 query:v13 sectionBundleIdentifier:@"com.apple.searchd.suggestions" queryId:{objc_msgSend(v7, "queryIdent")}];
    [(SPUISResultBuilder *)v9 setResult:v14];

    v15 = [(SPUISResultBuilder *)v9 result];
    v16 = [v15 searchEntities];
    v17 = [v16 lastObject];
    [(SPUISSuggestionResultBuilder *)v9 setEntity:v17];

    v18 = [(SPUISSuggestionResultBuilder *)v9 entity];

    if (!v18)
    {
      v19 = MEMORY[0x277D65890];
      v20 = [v6 suggestion];
      v21 = [v19 searchEntityWithSearchString:v20 spotlightQueryString:0 preferredBundleIDs:0];
      [(SPUISSuggestionResultBuilder *)v9 setEntity:v21];
    }

    [(SPUISSuggestionResultBuilder *)v9 setSuggestion:v6];
    v22 = [(SPUISSuggestionResultBuilder *)v9 suggestionString];
    v27[0] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [(SPUISResultBuilder *)v9 setMatchedStrings:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)buildResultWithSpotlightSuggestion:(id)a3 queryContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 suggestionKind] == 2)
  {
    v7 = [[SPUISSuggestionResultBuilder alloc] initWithSpotlightSuggestion:v5 queryContext:v6];
    v8 = [(SPUISSuggestionResultBuilder *)v7 buildResult];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)buildResultsWithCompletionsData:(id)a3 queryContext:(id)a4
{
  v35[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    if (+[SPUISUtilities isMacOS])
    {
      v7 = 0;
    }

    else
    {
      v7 = SSBundlesDonatingPhotos();
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = [MEMORY[0x277CC34D8] emptySuggestion];
    v10 = MEMORY[0x277CC34D8];
    v11 = [v6 searchString];
    v12 = [v10 updatedSuggestionWithCurrentSuggestion:v9 userString:v11 tokens:MEMORY[0x277CBEBF8]];

    v13 = MEMORY[0x277CC34D8];
    v14 = [v6 searchString];
    v34 = @"photosBundleIDs";
    v35[0] = v7;
    v28 = v7;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
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
            v23 = [[SPUISSuggestionResultBuilder alloc] initWithSpotlightSuggestion:v22 queryContext:v6];
            v24 = [(SPUISSuggestionResultBuilder *)v23 buildResult];
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
    v8 = MEMORY[0x277CBEBF8];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)buildResultsWithSuggestionsData:(id)a3 queryContext:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = MEMORY[0x277CC34D8];
    v9 = [MEMORY[0x277CC34D8] emptySuggestion];
    v10 = [v6 searchString];
    v11 = [v8 updatedSuggestionWithCurrentSuggestion:v9 userString:v10 tokens:MEMORY[0x277CBEBF8]];

    v12 = MEMORY[0x277CC34D8];
    v13 = [v6 searchString];
    v25 = v11;
    v14 = [v12 suggestionsWithCurrentSuggestion:v11 userQueryString:v13 suggestionData:v5 options:MEMORY[0x277CBEC10]];

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
            v21 = [[SPUISSuggestionResultBuilder alloc] initWithSpotlightSuggestion:v20 queryContext:v6];
            v22 = [(SPUISSuggestionResultBuilder *)v21 buildResult];
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
    v7 = MEMORY[0x277CBEBF8];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (SPUISSuggestionResultBuilder)initWithSpotlightSuggestion:(id)a3 queryContext:(id)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = SPUISSuggestionResultBuilder;
  v8 = [(SPUISSuggestionResultBuilder *)&v22 init];
  v9 = v8;
  if (v8)
  {
    [(SPUISResultBuilder *)v8 setQueryContext:v7];
    v10 = [v7 searchString];
    [(SPUISSuggestionResultBuilder *)v9 setSuggestionString:v10];

    v11 = MEMORY[0x277D658A8];
    v12 = [v7 searchString];
    v13 = [v11 searchSuggestionRankingResultWithSpotlightSuggestion:v6 query:v12 sectionBundleIdentifier:@"com.apple.searchd.suggestions" queryId:{objc_msgSend(v7, "queryIdent")}];
    [(SPUISResultBuilder *)v9 setResult:v13];

    v14 = [(SPUISResultBuilder *)v9 result];
    v15 = [v14 searchEntities];
    v16 = [v15 lastObject];
    [(SPUISSuggestionResultBuilder *)v9 setEntity:v16];

    [(SPUISSuggestionResultBuilder *)v9 setSpotlightSuggestion:v6];
    v17 = [(SPUISResultBuilder *)v9 result];
    v18 = [v17 completion];
    v23[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [(SPUISResultBuilder *)v9 setMatchedStrings:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)buildResult
{
  v5 = [(SPUISSuggestionResultBuilder *)self suggestion];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(SPUISSuggestionResultBuilder *)self spotlightSuggestion];
    if (v7)
    {
      v2 = v7;
      v6 = 0;
    }

    else
    {
      v3 = [(SPUISResultBuilder *)self result];
      [v3 type];
      if (SSResultTypeIsServer())
      {

        goto LABEL_10;
      }

      v2 = 0;
      v6 = 1;
    }
  }

  v8 = [(SPUISResultBuilder *)self result];
  v9 = [v8 inlineCard];

  if (v6)
  {
  }

  if (!v5)
  {
  }

  if (!v9)
  {
    v18 = [(SPUISResultBuilder *)self buildCompactCard];
    v19 = [(SPUISResultBuilder *)self result];
    [v19 setCompactCard:v18];

    v20 = [(SPUISResultBuilder *)self buildInlineCard];
    v21 = [(SPUISResultBuilder *)self result];
    [v21 setInlineCard:v20];

    v22 = [(SPUISResultBuilder *)self buildPreviewButtonItems];
    v23 = [(SPUISResultBuilder *)self result];
    v24 = [v23 inlineCard];
    v25 = [v24 cardSections];
    v26 = [v25 firstObject];
    [v26 setPreviewButtonItems:v22];

    goto LABEL_16;
  }

LABEL_10:
  v10 = [(SPUISResultBuilder *)self result];
  v11 = [v10 inlineCard];
  if (v11)
  {
    v12 = v11;
    v13 = [(SPUISResultBuilder *)self result];
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

  v22 = [(SPUISResultBuilder *)self buildInlineCard];
  v23 = [(SPUISResultBuilder *)self result];
  [v23 setInlineCard:v22];
LABEL_16:

LABEL_17:

  return [(SPUISResultBuilder *)self result];
}

- (id)buildInlineCardSections
{
  v67[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISResultBuilder *)self result];
  if ([v3 type] == 32)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(SPUISResultBuilder *)self result];
    v4 = [v5 type] == 38;
  }

  v6 = [(SPUISSuggestionResultBuilder *)self spotlightSuggestion];

  if (!v6)
  {
    v16 = [(SPUISSuggestionResultBuilder *)self suggestion];

    if (v16)
    {
      v7 = [(SPUISSuggestionResultBuilder *)self suggestion];
      v17 = [v7 type];
      v18 = [(SPUISSuggestionResultBuilder *)self entity];
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
        v21 = [(SPUISSuggestionResultBuilder *)self entity];
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
      v25 = [(SPUISSuggestionResultBuilder *)self buildHighlightedTextForSuggestion];
      [(SPUISContactResultBuilder *)v24 setSuggestionText:v25];

      v26 = [(SPUISContactResultBuilder *)v24 suggestionText];
      [v26 setMaxLines:1];

      [(SPUISContactResultBuilder *)v24 setSuggestionType:v20];
      v27 = MEMORY[0x277D4C598];
      v28 = [v7 detailText];
      v29 = [v27 textWithString:v28];
      [(SPUISContactResultBuilder *)v24 setDetailText:v29];

      v66 = v9;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
      [(SPUISContactResultBuilder *)v24 setPunchoutOptions:v30];

      v31 = [(SPUISSuggestionResultBuilder *)self buildSymbolImage];
      [(SPUISContactResultBuilder *)v24 setThumbnail:v31];

      v32 = [(SPUISSuggestionResultBuilder *)self buildCommand];
      [(SPUISContactResultBuilder *)v24 setCommand:v32];

      v65 = v24;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
      goto LABEL_18;
    }

    if (v4)
    {
      v34 = [(SPUISSuggestionResultBuilder *)self entity];
      v35 = [v34 isContactEntitySearch];

      if (v35)
      {
        v7 = [(SPUISSuggestionResultBuilder *)self entity];
      }

      else
      {
        v7 = 0;
      }

      v9 = objc_opt_new();
      v55 = [(SPUISResultBuilder *)self result];
      v56 = [v55 resultBundleId];
      [v9 setBundleIdentifier:v56];

      v57 = [SPUISContactResultBuilder alloc];
      v58 = [(SPUISResultBuilder *)self result];
      v59 = [v7 contact];
      v24 = [(SPUISContactResultBuilder *)v57 initWithResult:v58 contactEntity:v7 contact:v59];

      v48 = [(SPUISResultBuilder *)v24 buildCompactCardSection];
      v64 = v48;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
LABEL_31:

      goto LABEL_32;
    }

    v36 = [(SPUISResultBuilder *)self result];
    v37 = [v36 inlineCard];
    v38 = [v37 cardSections];
    v7 = [v38 firstObject];

    if (v7 && ([v7 command], v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
    {
      v62 = [(SPUISSuggestionResultBuilder *)self buildCommand];
      [v7 setCommand:v62];
    }

    else
    {
      v40 = [(SPUISResultBuilder *)self result];
      [v40 type];
      IsServer = SSResultTypeIsServer();

      if ((IsServer & 1) == 0)
      {
        v9 = objc_opt_new();
        v42 = [(SPUISSuggestionResultBuilder *)self entity];
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
        v46 = [(SPUISResultBuilder *)self result];
        v47 = [v46 resultBundleId];
        [(SPUISContactResultBuilder *)v24 setBundleIdentifier:v47];

        v48 = objc_opt_new();
        [v48 setThumbnail:v9];
        [v48 setShouldUseCompactDisplay:1];
        v49 = MEMORY[0x277D4C598];
        v50 = [(SPUISSuggestionResultBuilder *)self suggestionString];
        v51 = [v49 textWithString:v50];
        [v48 setTitle:v51];

        v52 = [v48 title];
        [v52 setMaxLines:1];

        v53 = objc_opt_new();
        v54 = [(SPUISSuggestionResultBuilder *)self suggestionString];
        [v53 setSearchString:v54];

        [v53 setQuerySource:1];
        [v48 setCommand:v53];
        v63 = v48;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];

        goto LABEL_31;
      }
    }

    v9 = [(SPUISResultBuilder *)self result];
    v24 = [v9 inlineCard];
    v33 = [(SPUISContactResultBuilder *)v24 cardSections];
LABEL_18:
    v15 = v33;
LABEL_32:

    goto LABEL_33;
  }

  v7 = objc_opt_new();
  v8 = [(SPUISSuggestionResultBuilder *)self buildSymbolImage];
  [v7 setThumbnail:v8];

  [v7 setShouldUseCompactDisplay:1];
  v9 = [(SPUISSuggestionResultBuilder *)self buildHighlightedTextForSuggestion];
  v10 = [(SPUISSuggestionResultBuilder *)self entity];
  v11 = [v10 isPhotosEntitySearch];

  if (v11)
  {
    v12 = [(SPUISSuggestionResultBuilder *)self buildPhotoTextAndGlyphForSuggestion:v9];

    v9 = v12;
  }

  [v7 setTitle:v9];
  v13 = [v7 title];
  [v13 setMaxLines:1];

  v14 = [(SPUISSuggestionResultBuilder *)self buildCommand];
  [v7 setCommand:v14];

  v67[0] = v7;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
LABEL_33:

  v60 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)buildSymbolImage
{
  v3 = [(SPUISSuggestionResultBuilder *)self entity];
  v4 = v3;
  if (!v3)
  {
    v6 = [(SPUISSuggestionResultBuilder *)self suggestion];
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = v6;
    v8 = [(SPUISResultBuilder *)self result];
    [v8 type];
    IsLocalSuggestion = SSResultTypeIsLocalSuggestion();

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
  v3 = [(SPUISSuggestionResultBuilder *)self spotlightSuggestion];
  if (v3)
  {
    v4 = v3;
    v5 = [(SPUISSuggestionResultBuilder *)self entity];

    if (v5)
    {
      v6 = [(SPUISSuggestionResultBuilder *)self entity];
      v7 = [v6 command];

      goto LABEL_25;
    }
  }

  v8 = [(SPUISSuggestionResultBuilder *)self suggestion];

  if (v8)
  {
    v9 = [(SPUISSuggestionResultBuilder *)self suggestion];
    if ([v9 type] != 12 && objc_msgSend(v9, "type") != 14)
    {
      v34 = [(SPUISResultBuilder *)self result];
      [v34 type];
      IsLocalSuggestion = SSResultTypeIsLocalSuggestion();

      if (IsLocalSuggestion)
      {
        v7 = objc_opt_new();
        v36 = [(SPUISSuggestionResultBuilder *)self entity];
        v37 = [v36 searchString];
        [v7 setSearchString:v37];

        [v7 setQuerySource:1];
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_24;
    }

    v7 = objc_opt_new();
    v10 = [(SPUISResultBuilder *)self result];
    v11 = [(__CFString *)v10 title];
    v12 = [v11 text];
    if (v12)
    {
      [v7 setSearchString:v12];
    }

    else
    {
      v32 = [(SPUISSuggestionResultBuilder *)self suggestionString];
      [v7 setSearchString:v32];
    }
  }

  else
  {
    v13 = [(SPUISSuggestionResultBuilder *)self entity];
    v14 = [v13 isContactEntitySearch];

    if (v14)
    {
      v9 = [(SPUISSuggestionResultBuilder *)self entity];
      v7 = objc_opt_new();
      v15 = [v9 tokenText];
      [v7 setTokenString:v15];

      v16 = [v9 personQueryIdentifier];
      v17 = v16;
      v18 = &stru_287C50EE8;
      if (v16)
      {
        v18 = v16;
      }

      v10 = v18;

      v19 = [v9 contactIdentifier];

      if (v19)
      {
        v20 = MEMORY[0x277D65888];
        v21 = [v9 contactIdentifier];
        v22 = [v20 updatePersonQueryIdentifier:v10 withContactIdentifier:v21];

        v10 = v22;
      }

      v23 = [v9 personIdentifier];

      if (v23)
      {
        v24 = MEMORY[0x277D65888];
        v25 = [v9 personIdentifier];
        v26 = [v24 updatePersonQueryIdentifier:v10 withPersonIdentifier:v25];

        v10 = v26;
      }

      [v7 setEntityIdentifier:v10];
      [v7 setEntityType:2];
      v27 = [(SPUISSuggestionResultBuilder *)self buildSymbolImage];
      [v7 setSymbolImage:v27];

      v28 = [v7 symbolImage];
      [v7 setTokenImage:v28];

      goto LABEL_23;
    }

    v29 = [(SPUISResultBuilder *)self result];
    v30 = [v29 resultBundleId];
    v31 = [v30 isEqual:@"com.apple.spotlight.related_search_as_typed.web"];

    if (!v31)
    {
      v7 = objc_opt_new();
      v38 = [(SPUISResultBuilder *)self result];
      v39 = [v38 title];
      v40 = [v39 text];
      if (v40)
      {
        [v7 setSearchString:v40];
      }

      else
      {
        v42 = [(SPUISSuggestionResultBuilder *)self suggestionString];
        [v7 setSearchString:v42];
      }

      [v7 setQuerySource:2];
      goto LABEL_25;
    }

    v7 = objc_opt_new();
    v9 = [(SPUISResultBuilder *)self result];
    v10 = [v9 title];
    v11 = [(__CFString *)v10 text];
    if (v11)
    {
      [v7 setSearchString:v11];
    }

    else
    {
      v41 = [(SPUISSuggestionResultBuilder *)self suggestionString];
      [v7 setSearchString:v41];
    }
  }

LABEL_23:
LABEL_24:

LABEL_25:

  return v7;
}

- (id)buildHighlightedTextForSuggestion
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = [(SPUISResultBuilder *)self matchedStrings];
  v4 = [v3 firstObject];

  v5 = [(SPUISResultBuilder *)self queryContext];
  v6 = [v5 searchEntities];
  v7 = [v6 count];
  v8 = [(SPUISResultBuilder *)self queryContext];
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
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v15 = objc_opt_new();
  [v15 setFormattedTextPieces:v14];
  if (([v4 isEqual:v12] & 1) == 0)
  {
    v16 = [(SPUISResultBuilder *)self buildHighlightedMatchedTextWithTitle:0 headTruncation:0];
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

  if (SSDefaultsGetState())
  {
    v20 = [(SPUISSuggestionResultBuilder *)self spotlightSuggestion];

    if (v20)
    {
      v21 = [(SPUISResultBuilder *)self result];
      v22 = [v21 type];

      if (v22 == 31)
      {
        v23 = @" L";
      }

      else
      {
        v24 = [(SPUISResultBuilder *)self result];
        v25 = [v24 type];

        if (v25 == 34)
        {
          v23 = @" N";
        }

        else
        {
          v26 = [(SPUISResultBuilder *)self result];
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

  v31 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)buildPhotoTextAndGlyphForSuggestion:(id)a3
{
  v3 = a3;
  v37 = [v3 formattedTextPieces];
  v4 = objc_opt_new();
  [v4 setSymbolName:@"photo.on.rectangle"];
  [v4 setIsTemplate:1];
  v5 = objc_alloc_init(MEMORY[0x277D4C3A0]);
  v35 = v4;
  [v5 setGlyph:v4];
  v6 = [SPUISUtilities localizedStringForKey:@"TEMPLATE_PHOTOS_LOCATION_SEARCH"];
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v34 = v6;
  v8 = [v6 componentsSeparatedByString:@"<query>"];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  if ([v8 count])
  {
    v10 = 0;
    do
    {
      v11 = [v8 objectAtIndexedSubscript:v10];
      v12 = [v11 isEqualToString:&stru_287C50EE8];

      if ((v12 & 1) == 0)
      {
        v13 = [v8 objectAtIndexedSubscript:v10];
        [v9 addObject:v13];
      }

      if (v10 < [v8 count] - 1)
      {
        [v9 addObjectsFromArray:v37];
      }

      ++v10;
    }

    while (v10 < [v8 count]);
  }

  v36 = v3;
  if ([v9 count])
  {
    v14 = 0;
    while (1)
    {
      v15 = [v9 objectAtIndexedSubscript:v14];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v17 = [v9 objectAtIndexedSubscript:v14];
      v18 = v17;
      if ((isKindOfClass & 1) == 0)
      {
        break;
      }

      v19 = [v17 rangeOfString:@"<photo-icon>"];

      v20 = [v9 objectAtIndexedSubscript:v14];
      v21 = v20;
      if (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = [v20 componentsSeparatedByString:@"<photo-icon>"];

        if ([v18 count])
        {
          v25 = 0;
          do
          {
            v26 = [v18 objectAtIndexedSubscript:v25];
            v27 = [v26 isEqualToString:&stru_287C50EE8];

            if ((v27 & 1) == 0)
            {
              v28 = MEMORY[0x277D4C3A0];
              v29 = [v18 objectAtIndexedSubscript:v25];
              v30 = [v28 textWithString:v29];
              [v7 addObject:v30];
            }

            if (v25 < [v18 count] - 1)
            {
              [v7 addObject:v5];
            }

            ++v25;
          }

          while (v25 < [v18 count]);
        }

        goto LABEL_22;
      }

      v22 = [v20 isEqualToString:&stru_287C50EE8];

      if ((v22 & 1) == 0)
      {
        v23 = MEMORY[0x277D4C3A0];
        v18 = [v9 objectAtIndexedSubscript:v14];
        v24 = [v23 textWithString:v18];
        [v7 addObject:v24];

LABEL_22:
      }

      if (++v14 >= [v9 count])
      {
        goto LABEL_24;
      }
    }

    [v7 addObject:v17];
    goto LABEL_22;
  }

LABEL_24:
  if ([v7 count])
  {
    v31 = objc_opt_new();
    [v31 setFormattedTextPieces:v7];
    v32 = v36;
  }

  else
  {
    v32 = v36;
    v31 = v36;
  }

  return v31;
}

@end