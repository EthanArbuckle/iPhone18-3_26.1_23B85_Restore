@interface SPUISSuggestionResultBuilder
+ (id)buildResultWithResult:(id)result queryContext:(id)context;
+ (id)buildResultWithSpotlightSuggestion:(id)suggestion queryContext:(id)context;
+ (id)buildResultWithSuggestion:(id)suggestion queryContext:(id)context;
+ (id)buildResultsWithCompletionsData:(id)data queryContext:(id)context;
+ (id)buildResultsWithSuggestionsData:(id)data queryContext:(id)context;
- (SPUISSuggestionResultBuilder)initWithResult:(id)result queryContext:(id)context;
- (SPUISSuggestionResultBuilder)initWithSpotlightSuggestion:(id)suggestion queryContext:(id)context;
- (SPUISSuggestionResultBuilder)initWithSuggestion:(id)suggestion queryContext:(id)context;
- (id)buildCommand;
- (id)buildHighlightedTextForSuggestion;
- (id)buildInlineCardSections;
- (id)buildPhotoTextAndGlyphForSuggestion:(id)suggestion;
- (id)buildResult;
- (id)buildSymbolImage;
@end

@implementation SPUISSuggestionResultBuilder

+ (id)buildResultWithResult:(id)result queryContext:(id)context
{
  contextCopy = context;
  resultCopy = result;
  v7 = [[SPUISSuggestionResultBuilder alloc] initWithResult:resultCopy queryContext:contextCopy];

  buildResult = [(SPUISSuggestionResultBuilder *)v7 buildResult];
  [buildResult clearBackendData];

  return buildResult;
}

- (SPUISSuggestionResultBuilder)initWithResult:(id)result queryContext:(id)context
{
  v25[1] = *MEMORY[0x277D85DE8];
  resultCopy = result;
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = SPUISSuggestionResultBuilder;
  v8 = [(SPUISSuggestionResultBuilder *)&v24 init];
  v9 = v8;
  if (v8)
  {
    [(SPUISResultBuilder *)v8 setQueryContext:contextCopy];
    v10 = MEMORY[0x277D658A8];
    searchString = [contextCopy searchString];
    v12 = [v10 searchSuggestionRankingResultWithResult:resultCopy query:searchString sectionBundleIdentifier:@"com.apple.searchd.suggestions" queryId:{objc_msgSend(contextCopy, "queryIdent")}];
    [(SPUISResultBuilder *)v9 setResult:v12];

    result = [(SPUISResultBuilder *)v9 result];
    searchEntities = [result searchEntities];
    lastObject = [searchEntities lastObject];
    [(SPUISSuggestionResultBuilder *)v9 setEntity:lastObject];

    result2 = [(SPUISResultBuilder *)v9 result];
    completion = [result2 completion];

    if (completion)
    {
      result3 = [(SPUISResultBuilder *)v9 result];
      completion2 = [result3 completion];
      [(SPUISSuggestionResultBuilder *)v9 setSuggestionString:completion2];

      suggestionString = [(SPUISSuggestionResultBuilder *)v9 suggestionString];
      v25[0] = suggestionString;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
      [(SPUISResultBuilder *)v9 setMatchedStrings:v21];
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)buildResultWithSuggestion:(id)suggestion queryContext:(id)context
{
  contextCopy = context;
  suggestionCopy = suggestion;
  v7 = [[SPUISSuggestionResultBuilder alloc] initWithSuggestion:suggestionCopy queryContext:contextCopy];

  buildResult = [(SPUISSuggestionResultBuilder *)v7 buildResult];
  [buildResult clearBackendData];

  return buildResult;
}

- (SPUISSuggestionResultBuilder)initWithSuggestion:(id)suggestion queryContext:(id)context
{
  v27[1] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  contextCopy = context;
  v26.receiver = self;
  v26.super_class = SPUISSuggestionResultBuilder;
  v8 = [(SPUISSuggestionResultBuilder *)&v26 init];
  v9 = v8;
  if (v8)
  {
    [(SPUISResultBuilder *)v8 setQueryContext:contextCopy];
    suggestion = [suggestionCopy suggestion];
    if (suggestion)
    {
      [(SPUISSuggestionResultBuilder *)v9 setSuggestionString:suggestion];
    }

    else
    {
      searchString = [contextCopy searchString];
      [(SPUISSuggestionResultBuilder *)v9 setSuggestionString:searchString];
    }

    v12 = MEMORY[0x277D658A8];
    searchString2 = [contextCopy searchString];
    v14 = [v12 searchSuggestionRankingResultWithSuggestion:suggestionCopy query:searchString2 sectionBundleIdentifier:@"com.apple.searchd.suggestions" queryId:{objc_msgSend(contextCopy, "queryIdent")}];
    [(SPUISResultBuilder *)v9 setResult:v14];

    result = [(SPUISResultBuilder *)v9 result];
    searchEntities = [result searchEntities];
    lastObject = [searchEntities lastObject];
    [(SPUISSuggestionResultBuilder *)v9 setEntity:lastObject];

    entity = [(SPUISSuggestionResultBuilder *)v9 entity];

    if (!entity)
    {
      v19 = MEMORY[0x277D65890];
      suggestion2 = [suggestionCopy suggestion];
      v21 = [v19 searchEntityWithSearchString:suggestion2 spotlightQueryString:0 preferredBundleIDs:0];
      [(SPUISSuggestionResultBuilder *)v9 setEntity:v21];
    }

    [(SPUISSuggestionResultBuilder *)v9 setSuggestion:suggestionCopy];
    suggestionString = [(SPUISSuggestionResultBuilder *)v9 suggestionString];
    v27[0] = suggestionString;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [(SPUISResultBuilder *)v9 setMatchedStrings:v23];
  }

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)buildResultWithSpotlightSuggestion:(id)suggestion queryContext:(id)context
{
  suggestionCopy = suggestion;
  contextCopy = context;
  if ([suggestionCopy suggestionKind] == 2)
  {
    v7 = [[SPUISSuggestionResultBuilder alloc] initWithSpotlightSuggestion:suggestionCopy queryContext:contextCopy];
    buildResult = [(SPUISSuggestionResultBuilder *)v7 buildResult];
  }

  else
  {
    buildResult = 0;
  }

  return buildResult;
}

+ (id)buildResultsWithCompletionsData:(id)data queryContext:(id)context
{
  v35[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  if (dataCopy)
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
    emptySuggestion = [MEMORY[0x277CC34D8] emptySuggestion];
    v10 = MEMORY[0x277CC34D8];
    searchString = [contextCopy searchString];
    v12 = [v10 updatedSuggestionWithCurrentSuggestion:emptySuggestion userString:searchString tokens:MEMORY[0x277CBEBF8]];

    v13 = MEMORY[0x277CC34D8];
    searchString2 = [contextCopy searchString];
    v34 = @"photosBundleIDs";
    v35[0] = v7;
    v28 = v7;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v27 = v12;
    v16 = [v13 suggestionsWithCurrentSuggestion:v12 userQueryString:searchString2 completionData:dataCopy options:v15];

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
            v23 = [[SPUISSuggestionResultBuilder alloc] initWithSpotlightSuggestion:v22 queryContext:contextCopy];
            buildResult = [(SPUISSuggestionResultBuilder *)v23 buildResult];
            if (buildResult)
            {
              [v8 addObject:buildResult];
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

+ (id)buildResultsWithSuggestionsData:(id)data queryContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  contextCopy = context;
  if ([dataCopy count])
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = MEMORY[0x277CC34D8];
    emptySuggestion = [MEMORY[0x277CC34D8] emptySuggestion];
    searchString = [contextCopy searchString];
    v11 = [v8 updatedSuggestionWithCurrentSuggestion:emptySuggestion userString:searchString tokens:MEMORY[0x277CBEBF8]];

    v12 = MEMORY[0x277CC34D8];
    searchString2 = [contextCopy searchString];
    v25 = v11;
    v14 = [v12 suggestionsWithCurrentSuggestion:v11 userQueryString:searchString2 suggestionData:dataCopy options:MEMORY[0x277CBEC10]];

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
            v21 = [[SPUISSuggestionResultBuilder alloc] initWithSpotlightSuggestion:v20 queryContext:contextCopy];
            buildResult = [(SPUISSuggestionResultBuilder *)v21 buildResult];
            if (buildResult)
            {
              [v7 addObject:buildResult];
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

- (SPUISSuggestionResultBuilder)initWithSpotlightSuggestion:(id)suggestion queryContext:(id)context
{
  v23[1] = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = SPUISSuggestionResultBuilder;
  v8 = [(SPUISSuggestionResultBuilder *)&v22 init];
  v9 = v8;
  if (v8)
  {
    [(SPUISResultBuilder *)v8 setQueryContext:contextCopy];
    searchString = [contextCopy searchString];
    [(SPUISSuggestionResultBuilder *)v9 setSuggestionString:searchString];

    v11 = MEMORY[0x277D658A8];
    searchString2 = [contextCopy searchString];
    v13 = [v11 searchSuggestionRankingResultWithSpotlightSuggestion:suggestionCopy query:searchString2 sectionBundleIdentifier:@"com.apple.searchd.suggestions" queryId:{objc_msgSend(contextCopy, "queryIdent")}];
    [(SPUISResultBuilder *)v9 setResult:v13];

    result = [(SPUISResultBuilder *)v9 result];
    searchEntities = [result searchEntities];
    lastObject = [searchEntities lastObject];
    [(SPUISSuggestionResultBuilder *)v9 setEntity:lastObject];

    [(SPUISSuggestionResultBuilder *)v9 setSpotlightSuggestion:suggestionCopy];
    result2 = [(SPUISResultBuilder *)v9 result];
    completion = [result2 completion];
    v23[0] = completion;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    [(SPUISResultBuilder *)v9 setMatchedStrings:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)buildResult
{
  suggestion = [(SPUISSuggestionResultBuilder *)self suggestion];
  if (suggestion)
  {
    v6 = 0;
  }

  else
  {
    spotlightSuggestion = [(SPUISSuggestionResultBuilder *)self spotlightSuggestion];
    if (spotlightSuggestion)
    {
      v2 = spotlightSuggestion;
      v6 = 0;
    }

    else
    {
      result = [(SPUISResultBuilder *)self result];
      [result type];
      if (SSResultTypeIsServer())
      {

        goto LABEL_10;
      }

      v2 = 0;
      v6 = 1;
    }
  }

  result2 = [(SPUISResultBuilder *)self result];
  inlineCard = [result2 inlineCard];

  if (v6)
  {
  }

  if (!suggestion)
  {
  }

  if (!inlineCard)
  {
    buildCompactCard = [(SPUISResultBuilder *)self buildCompactCard];
    result3 = [(SPUISResultBuilder *)self result];
    [result3 setCompactCard:buildCompactCard];

    buildInlineCard = [(SPUISResultBuilder *)self buildInlineCard];
    result4 = [(SPUISResultBuilder *)self result];
    [result4 setInlineCard:buildInlineCard];

    buildPreviewButtonItems = [(SPUISResultBuilder *)self buildPreviewButtonItems];
    result5 = [(SPUISResultBuilder *)self result];
    inlineCard2 = [result5 inlineCard];
    cardSections = [inlineCard2 cardSections];
    firstObject = [cardSections firstObject];
    [firstObject setPreviewButtonItems:buildPreviewButtonItems];

    goto LABEL_16;
  }

LABEL_10:
  result6 = [(SPUISResultBuilder *)self result];
  inlineCard3 = [result6 inlineCard];
  if (inlineCard3)
  {
    v12 = inlineCard3;
    result7 = [(SPUISResultBuilder *)self result];
    inlineCard4 = [result7 inlineCard];
    cardSections2 = [inlineCard4 cardSections];
    firstObject2 = [cardSections2 firstObject];
    command = [firstObject2 command];

    if (command)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  buildPreviewButtonItems = [(SPUISResultBuilder *)self buildInlineCard];
  result5 = [(SPUISResultBuilder *)self result];
  [result5 setInlineCard:buildPreviewButtonItems];
LABEL_16:

LABEL_17:

  return [(SPUISResultBuilder *)self result];
}

- (id)buildInlineCardSections
{
  v67[1] = *MEMORY[0x277D85DE8];
  result = [(SPUISResultBuilder *)self result];
  if ([result type] == 32)
  {
    v4 = 1;
  }

  else
  {
    result2 = [(SPUISResultBuilder *)self result];
    v4 = [result2 type] == 38;
  }

  spotlightSuggestion = [(SPUISSuggestionResultBuilder *)self spotlightSuggestion];

  if (!spotlightSuggestion)
  {
    suggestion = [(SPUISSuggestionResultBuilder *)self suggestion];

    if (suggestion)
    {
      suggestion2 = [(SPUISSuggestionResultBuilder *)self suggestion];
      type = [suggestion2 type];
      entity = [(SPUISSuggestionResultBuilder *)self entity];
      isContactEntitySearch = [entity isContactEntitySearch];

      if ((type & 0xFFFFFFFD) == 0xC)
      {
        v20 = 4;
      }

      else
      {
        v20 = 3;
      }

      if (type > 0xE || ((1 << type) & 0x5800) == 0)
      {
        entity2 = [(SPUISSuggestionResultBuilder *)self entity];
        isAppEntitySearch = [entity2 isAppEntitySearch];

        if (isAppEntitySearch)
        {
          v20 = 2;
        }

        else
        {
          v20 = isContactEntitySearch;
        }
      }

      result8 = objc_opt_new();
      bundleIdentifier = [suggestion2 bundleIdentifier];
      [result8 setBundleIdentifier:bundleIdentifier];

      inlineCard2 = objc_opt_new();
      buildHighlightedTextForSuggestion = [(SPUISSuggestionResultBuilder *)self buildHighlightedTextForSuggestion];
      [(SPUISContactResultBuilder *)inlineCard2 setSuggestionText:buildHighlightedTextForSuggestion];

      suggestionText = [(SPUISContactResultBuilder *)inlineCard2 suggestionText];
      [suggestionText setMaxLines:1];

      [(SPUISContactResultBuilder *)inlineCard2 setSuggestionType:v20];
      v27 = MEMORY[0x277D4C598];
      detailText = [suggestion2 detailText];
      v29 = [v27 textWithString:detailText];
      [(SPUISContactResultBuilder *)inlineCard2 setDetailText:v29];

      v66 = result8;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
      [(SPUISContactResultBuilder *)inlineCard2 setPunchoutOptions:v30];

      buildSymbolImage = [(SPUISSuggestionResultBuilder *)self buildSymbolImage];
      [(SPUISContactResultBuilder *)inlineCard2 setThumbnail:buildSymbolImage];

      buildCommand = [(SPUISSuggestionResultBuilder *)self buildCommand];
      [(SPUISContactResultBuilder *)inlineCard2 setCommand:buildCommand];

      v65 = inlineCard2;
      cardSections2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
      goto LABEL_18;
    }

    if (v4)
    {
      entity3 = [(SPUISSuggestionResultBuilder *)self entity];
      isContactEntitySearch2 = [entity3 isContactEntitySearch];

      if (isContactEntitySearch2)
      {
        suggestion2 = [(SPUISSuggestionResultBuilder *)self entity];
      }

      else
      {
        suggestion2 = 0;
      }

      result8 = objc_opt_new();
      result3 = [(SPUISResultBuilder *)self result];
      resultBundleId = [result3 resultBundleId];
      [result8 setBundleIdentifier:resultBundleId];

      v57 = [SPUISContactResultBuilder alloc];
      result4 = [(SPUISResultBuilder *)self result];
      contact = [suggestion2 contact];
      inlineCard2 = [(SPUISContactResultBuilder *)v57 initWithResult:result4 contactEntity:suggestion2 contact:contact];

      buildCompactCardSection = [(SPUISResultBuilder *)inlineCard2 buildCompactCardSection];
      v64 = buildCompactCardSection;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v64 count:1];
LABEL_31:

      goto LABEL_32;
    }

    result5 = [(SPUISResultBuilder *)self result];
    inlineCard = [result5 inlineCard];
    cardSections = [inlineCard cardSections];
    suggestion2 = [cardSections firstObject];

    if (suggestion2 && ([suggestion2 command], v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
    {
      buildCommand2 = [(SPUISSuggestionResultBuilder *)self buildCommand];
      [suggestion2 setCommand:buildCommand2];
    }

    else
    {
      result6 = [(SPUISResultBuilder *)self result];
      [result6 type];
      IsServer = SSResultTypeIsServer();

      if ((IsServer & 1) == 0)
      {
        result8 = objc_opt_new();
        entity4 = [(SPUISSuggestionResultBuilder *)self entity];
        symbolName = [entity4 symbolName];
        v44 = symbolName;
        if (symbolName)
        {
          v45 = symbolName;
        }

        else
        {
          v45 = @"magnifyingglass";
        }

        [result8 setSymbolName:v45];

        [result8 setIsTemplate:1];
        inlineCard2 = objc_opt_new();
        result7 = [(SPUISResultBuilder *)self result];
        resultBundleId2 = [result7 resultBundleId];
        [(SPUISContactResultBuilder *)inlineCard2 setBundleIdentifier:resultBundleId2];

        buildCompactCardSection = objc_opt_new();
        [buildCompactCardSection setThumbnail:result8];
        [buildCompactCardSection setShouldUseCompactDisplay:1];
        v49 = MEMORY[0x277D4C598];
        suggestionString = [(SPUISSuggestionResultBuilder *)self suggestionString];
        v51 = [v49 textWithString:suggestionString];
        [buildCompactCardSection setTitle:v51];

        title = [buildCompactCardSection title];
        [title setMaxLines:1];

        v53 = objc_opt_new();
        suggestionString2 = [(SPUISSuggestionResultBuilder *)self suggestionString];
        [v53 setSearchString:suggestionString2];

        [v53 setQuerySource:1];
        [buildCompactCardSection setCommand:v53];
        v63 = buildCompactCardSection;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v63 count:1];

        goto LABEL_31;
      }
    }

    result8 = [(SPUISResultBuilder *)self result];
    inlineCard2 = [result8 inlineCard];
    cardSections2 = [(SPUISContactResultBuilder *)inlineCard2 cardSections];
LABEL_18:
    v15 = cardSections2;
LABEL_32:

    goto LABEL_33;
  }

  suggestion2 = objc_opt_new();
  buildSymbolImage2 = [(SPUISSuggestionResultBuilder *)self buildSymbolImage];
  [suggestion2 setThumbnail:buildSymbolImage2];

  [suggestion2 setShouldUseCompactDisplay:1];
  result8 = [(SPUISSuggestionResultBuilder *)self buildHighlightedTextForSuggestion];
  entity5 = [(SPUISSuggestionResultBuilder *)self entity];
  isPhotosEntitySearch = [entity5 isPhotosEntitySearch];

  if (isPhotosEntitySearch)
  {
    v12 = [(SPUISSuggestionResultBuilder *)self buildPhotoTextAndGlyphForSuggestion:result8];

    result8 = v12;
  }

  [suggestion2 setTitle:result8];
  title2 = [suggestion2 title];
  [title2 setMaxLines:1];

  buildCommand3 = [(SPUISSuggestionResultBuilder *)self buildCommand];
  [suggestion2 setCommand:buildCommand3];

  v67[0] = suggestion2;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
LABEL_33:

  v60 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)buildSymbolImage
{
  entity = [(SPUISSuggestionResultBuilder *)self entity];
  v4 = entity;
  if (!entity)
  {
    suggestion = [(SPUISSuggestionResultBuilder *)self suggestion];
    if (!suggestion)
    {
      goto LABEL_8;
    }

    v7 = suggestion;
    result = [(SPUISResultBuilder *)self result];
    [result type];
    IsLocalSuggestion = SSResultTypeIsLocalSuggestion();

    if ((IsLocalSuggestion & 1) == 0)
    {
      goto LABEL_8;
    }

    symbolName = @"magnifyingglass";
LABEL_7:
    v10 = objc_opt_new();
    [v10 setSymbolName:symbolName];
    [v10 setIsTemplate:1];

    goto LABEL_9;
  }

  symbolName = [entity symbolName];
  if (symbolName)
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
  spotlightSuggestion = [(SPUISSuggestionResultBuilder *)self spotlightSuggestion];
  if (spotlightSuggestion)
  {
    v4 = spotlightSuggestion;
    entity = [(SPUISSuggestionResultBuilder *)self entity];

    if (entity)
    {
      entity2 = [(SPUISSuggestionResultBuilder *)self entity];
      command = [entity2 command];

      goto LABEL_25;
    }
  }

  suggestion = [(SPUISSuggestionResultBuilder *)self suggestion];

  if (suggestion)
  {
    suggestion2 = [(SPUISSuggestionResultBuilder *)self suggestion];
    if ([suggestion2 type] != 12 && objc_msgSend(suggestion2, "type") != 14)
    {
      result = [(SPUISResultBuilder *)self result];
      [result type];
      IsLocalSuggestion = SSResultTypeIsLocalSuggestion();

      if (IsLocalSuggestion)
      {
        command = objc_opt_new();
        entity3 = [(SPUISSuggestionResultBuilder *)self entity];
        searchString = [entity3 searchString];
        [command setSearchString:searchString];

        [command setQuerySource:1];
      }

      else
      {
        command = 0;
      }

      goto LABEL_24;
    }

    command = objc_opt_new();
    result2 = [(SPUISResultBuilder *)self result];
    title = [(__CFString *)result2 title];
    text = [title text];
    if (text)
    {
      [command setSearchString:text];
    }

    else
    {
      suggestionString = [(SPUISSuggestionResultBuilder *)self suggestionString];
      [command setSearchString:suggestionString];
    }
  }

  else
  {
    entity4 = [(SPUISSuggestionResultBuilder *)self entity];
    isContactEntitySearch = [entity4 isContactEntitySearch];

    if (isContactEntitySearch)
    {
      suggestion2 = [(SPUISSuggestionResultBuilder *)self entity];
      command = objc_opt_new();
      tokenText = [suggestion2 tokenText];
      [command setTokenString:tokenText];

      personQueryIdentifier = [suggestion2 personQueryIdentifier];
      v17 = personQueryIdentifier;
      v18 = &stru_287C50EE8;
      if (personQueryIdentifier)
      {
        v18 = personQueryIdentifier;
      }

      result2 = v18;

      contactIdentifier = [suggestion2 contactIdentifier];

      if (contactIdentifier)
      {
        v20 = MEMORY[0x277D65888];
        contactIdentifier2 = [suggestion2 contactIdentifier];
        v22 = [v20 updatePersonQueryIdentifier:result2 withContactIdentifier:contactIdentifier2];

        result2 = v22;
      }

      personIdentifier = [suggestion2 personIdentifier];

      if (personIdentifier)
      {
        v24 = MEMORY[0x277D65888];
        personIdentifier2 = [suggestion2 personIdentifier];
        v26 = [v24 updatePersonQueryIdentifier:result2 withPersonIdentifier:personIdentifier2];

        result2 = v26;
      }

      [command setEntityIdentifier:result2];
      [command setEntityType:2];
      buildSymbolImage = [(SPUISSuggestionResultBuilder *)self buildSymbolImage];
      [command setSymbolImage:buildSymbolImage];

      symbolImage = [command symbolImage];
      [command setTokenImage:symbolImage];

      goto LABEL_23;
    }

    result3 = [(SPUISResultBuilder *)self result];
    resultBundleId = [result3 resultBundleId];
    v31 = [resultBundleId isEqual:@"com.apple.spotlight.related_search_as_typed.web"];

    if (!v31)
    {
      command = objc_opt_new();
      result4 = [(SPUISResultBuilder *)self result];
      title2 = [result4 title];
      text2 = [title2 text];
      if (text2)
      {
        [command setSearchString:text2];
      }

      else
      {
        suggestionString2 = [(SPUISSuggestionResultBuilder *)self suggestionString];
        [command setSearchString:suggestionString2];
      }

      [command setQuerySource:2];
      goto LABEL_25;
    }

    command = objc_opt_new();
    suggestion2 = [(SPUISResultBuilder *)self result];
    result2 = [suggestion2 title];
    title = [(__CFString *)result2 text];
    if (title)
    {
      [command setSearchString:title];
    }

    else
    {
      suggestionString3 = [(SPUISSuggestionResultBuilder *)self suggestionString];
      [command setSearchString:suggestionString3];
    }
  }

LABEL_23:
LABEL_24:

LABEL_25:

  return command;
}

- (id)buildHighlightedTextForSuggestion
{
  v33[1] = *MEMORY[0x277D85DE8];
  matchedStrings = [(SPUISResultBuilder *)self matchedStrings];
  firstObject = [matchedStrings firstObject];

  queryContext = [(SPUISResultBuilder *)self queryContext];
  searchEntities = [queryContext searchEntities];
  v7 = [searchEntities count];
  queryContext2 = [(SPUISResultBuilder *)self queryContext];
  v9 = queryContext2;
  if (v7)
  {
    searchEntities2 = [queryContext2 searchEntities];
    firstObject2 = [searchEntities2 firstObject];
    displayString = [firstObject2 displayString];
  }

  else
  {
    displayString = [queryContext2 searchString];
  }

  v13 = objc_opt_new();
  [v13 setText:firstObject];
  [v13 setIsEmphasized:1];
  v33[0] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v15 = objc_opt_new();
  [v15 setFormattedTextPieces:v14];
  if (([firstObject isEqual:displayString] & 1) == 0)
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
    spotlightSuggestion = [(SPUISSuggestionResultBuilder *)self spotlightSuggestion];

    if (spotlightSuggestion)
    {
      result = [(SPUISResultBuilder *)self result];
      type = [result type];

      if (type == 31)
      {
        v23 = @" L";
      }

      else
      {
        result2 = [(SPUISResultBuilder *)self result];
        type2 = [result2 type];

        if (type2 == 34)
        {
          v23 = @" N";
        }

        else
        {
          result3 = [(SPUISResultBuilder *)self result];
          type3 = [result3 type];

          if (type3 != 39)
          {
            goto LABEL_18;
          }

          v23 = @" T";
        }
      }

      v28 = objc_opt_new();
      [v28 setText:v23];
      [v28 setTextColor:3];
      formattedTextPieces = [v15 formattedTextPieces];
      v30 = [formattedTextPieces arrayByAddingObject:v28];
      [v15 setFormattedTextPieces:v30];
    }
  }

LABEL_18:

  v31 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)buildPhotoTextAndGlyphForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  formattedTextPieces = [suggestionCopy formattedTextPieces];
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
        [v9 addObjectsFromArray:formattedTextPieces];
      }

      ++v10;
    }

    while (v10 < [v8 count]);
  }

  v36 = suggestionCopy;
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