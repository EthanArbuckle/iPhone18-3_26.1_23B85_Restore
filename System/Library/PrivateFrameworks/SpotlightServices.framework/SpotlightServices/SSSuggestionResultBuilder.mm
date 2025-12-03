@interface SSSuggestionResultBuilder
+ (id)buildResultWithResult:(id)result queryContext:(id)context;
+ (id)buildResultWithSpotlightSuggestion:(id)suggestion queryContext:(id)context;
+ (id)buildResultWithSuggestion:(id)suggestion queryContext:(id)context;
+ (id)buildResultsWithCompletionsData:(id)data queryContext:(id)context;
+ (id)buildResultsWithSuggestionsData:(id)data queryContext:(id)context;
- (SSSuggestionResultBuilder)initWithResult:(id)result queryContext:(id)context;
- (SSSuggestionResultBuilder)initWithSpotlightSuggestion:(id)suggestion queryContext:(id)context;
- (SSSuggestionResultBuilder)initWithSuggestion:(id)suggestion queryContext:(id)context;
- (id)buildCommand;
- (id)buildHighlightedTextForSuggestion;
- (id)buildInlineCardSections;
- (id)buildPhotoTextAndGlyphForSuggestion:(id)suggestion;
- (id)buildResult;
- (id)buildSymbolImage;
@end

@implementation SSSuggestionResultBuilder

+ (id)buildResultWithResult:(id)result queryContext:(id)context
{
  contextCopy = context;
  resultCopy = result;
  v7 = [[SSSuggestionResultBuilder alloc] initWithResult:resultCopy queryContext:contextCopy];

  buildResult = [(SSSuggestionResultBuilder *)v7 buildResult];
  [buildResult clearBackendData];

  return buildResult;
}

- (SSSuggestionResultBuilder)initWithResult:(id)result queryContext:(id)context
{
  v24[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = SSSuggestionResultBuilder;
  v8 = [(SSSuggestionResultBuilder *)&v23 init];
  v9 = v8;
  if (v8)
  {
    [(SSResultBuilder *)v8 setQueryContext:contextCopy];
    searchString = [contextCopy searchString];
    v11 = +[SPSearchSuggestionResult searchSuggestionRankingResultWithResult:query:sectionBundleIdentifier:queryId:](SPSearchSuggestionResult, "searchSuggestionRankingResultWithResult:query:sectionBundleIdentifier:queryId:", resultCopy, searchString, @"com.apple.searchd.suggestions", [contextCopy queryIdent]);
    [(SSResultBuilder *)v9 setResult:v11];

    result = [(SSResultBuilder *)v9 result];
    searchEntities = [result searchEntities];
    lastObject = [searchEntities lastObject];
    [(SSSuggestionResultBuilder *)v9 setEntity:lastObject];

    result2 = [(SSResultBuilder *)v9 result];
    completion = [result2 completion];

    if (completion)
    {
      result3 = [(SSResultBuilder *)v9 result];
      completion2 = [result3 completion];
      [(SSSuggestionResultBuilder *)v9 setSuggestionString:completion2];

      suggestionString = [(SSSuggestionResultBuilder *)v9 suggestionString];
      v24[0] = suggestionString;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
      [(SSResultBuilder *)v9 setMatchedStrings:v20];
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)buildResultWithSuggestion:(id)suggestion queryContext:(id)context
{
  contextCopy = context;
  suggestionCopy = suggestion;
  v7 = [[SSSuggestionResultBuilder alloc] initWithSuggestion:suggestionCopy queryContext:contextCopy];

  buildResult = [(SSSuggestionResultBuilder *)v7 buildResult];
  [buildResult clearBackendData];

  return buildResult;
}

- (SSSuggestionResultBuilder)initWithSuggestion:(id)suggestion queryContext:(id)context
{
  v25[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = SSSuggestionResultBuilder;
  v8 = [(SSSuggestionResultBuilder *)&v24 init];
  v9 = v8;
  if (v8)
  {
    [(SSResultBuilder *)v8 setQueryContext:contextCopy];
    suggestion = [suggestionCopy suggestion];
    if (suggestion)
    {
      [(SSSuggestionResultBuilder *)v9 setSuggestionString:suggestion];
    }

    else
    {
      searchString = [contextCopy searchString];
      [(SSSuggestionResultBuilder *)v9 setSuggestionString:searchString];
    }

    searchString2 = [contextCopy searchString];
    v13 = +[SPSearchSuggestionResult searchSuggestionRankingResultWithSuggestion:query:sectionBundleIdentifier:queryId:](SPSearchSuggestionResult, "searchSuggestionRankingResultWithSuggestion:query:sectionBundleIdentifier:queryId:", suggestionCopy, searchString2, @"com.apple.searchd.suggestions", [contextCopy queryIdent]);
    [(SSResultBuilder *)v9 setResult:v13];

    result = [(SSResultBuilder *)v9 result];
    searchEntities = [result searchEntities];
    lastObject = [searchEntities lastObject];
    [(SSSuggestionResultBuilder *)v9 setEntity:lastObject];

    entity = [(SSSuggestionResultBuilder *)v9 entity];

    if (!entity)
    {
      suggestion2 = [suggestionCopy suggestion];
      v19 = [SPSearchEntity searchEntityWithSearchString:suggestion2 spotlightQueryString:0 preferredBundleIDs:0];
      [(SSSuggestionResultBuilder *)v9 setEntity:v19];
    }

    [(SSSuggestionResultBuilder *)v9 setSuggestion:suggestionCopy];
    suggestionString = [(SSSuggestionResultBuilder *)v9 suggestionString];
    v25[0] = suggestionString;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    [(SSResultBuilder *)v9 setMatchedStrings:v21];
  }

  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)buildResultWithSpotlightSuggestion:(id)suggestion queryContext:(id)context
{
  suggestionCopy = suggestion;
  contextCopy = context;
  if ([suggestionCopy suggestionKind] == 2)
  {
    v7 = [[SSSuggestionResultBuilder alloc] initWithSpotlightSuggestion:suggestionCopy queryContext:contextCopy];
    buildResult = [(SSSuggestionResultBuilder *)v7 buildResult];
  }

  else
  {
    buildResult = 0;
  }

  return buildResult;
}

+ (id)buildResultsWithCompletionsData:(id)data queryContext:(id)context
{
  v35[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  contextCopy = context;
  if (dataCopy)
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
    emptySuggestion = [MEMORY[0x1E6964EA8] emptySuggestion];
    v10 = MEMORY[0x1E6964EA8];
    searchString = [contextCopy searchString];
    v12 = [v10 updatedSuggestionWithCurrentSuggestion:emptySuggestion userString:searchString tokens:MEMORY[0x1E695E0F0]];

    v13 = MEMORY[0x1E6964EA8];
    searchString2 = [contextCopy searchString];
    v34 = @"photosBundleIDs";
    v35[0] = v7;
    v28 = v7;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
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
            v23 = [[SSSuggestionResultBuilder alloc] initWithSpotlightSuggestion:v22 queryContext:contextCopy];
            buildResult = [(SSSuggestionResultBuilder *)v23 buildResult];
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
    v8 = MEMORY[0x1E695E0F0];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)buildResultsWithSuggestionsData:(id)data queryContext:(id)context
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  contextCopy = context;
  if ([dataCopy count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = MEMORY[0x1E6964EA8];
    emptySuggestion = [MEMORY[0x1E6964EA8] emptySuggestion];
    searchString = [contextCopy searchString];
    v11 = [v8 updatedSuggestionWithCurrentSuggestion:emptySuggestion userString:searchString tokens:MEMORY[0x1E695E0F0]];

    v12 = MEMORY[0x1E6964EA8];
    searchString2 = [contextCopy searchString];
    v25 = v11;
    v14 = [v12 suggestionsWithCurrentSuggestion:v11 userQueryString:searchString2 suggestionData:dataCopy options:MEMORY[0x1E695E0F8]];

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
            v21 = [[SSSuggestionResultBuilder alloc] initWithSpotlightSuggestion:v20 queryContext:contextCopy];
            buildResult = [(SSSuggestionResultBuilder *)v21 buildResult];
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
    v7 = MEMORY[0x1E695E0F0];
  }

  v23 = *MEMORY[0x1E69E9840];

  return v7;
}

- (SSSuggestionResultBuilder)initWithSpotlightSuggestion:(id)suggestion queryContext:(id)context
{
  v22[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  contextCopy = context;
  v21.receiver = self;
  v21.super_class = SSSuggestionResultBuilder;
  v8 = [(SSSuggestionResultBuilder *)&v21 init];
  v9 = v8;
  if (v8)
  {
    [(SSResultBuilder *)v8 setQueryContext:contextCopy];
    searchString = [contextCopy searchString];
    [(SSSuggestionResultBuilder *)v9 setSuggestionString:searchString];

    searchString2 = [contextCopy searchString];
    v12 = +[SPSearchSuggestionResult searchSuggestionRankingResultWithSpotlightSuggestion:query:sectionBundleIdentifier:queryId:](SPSearchSuggestionResult, "searchSuggestionRankingResultWithSpotlightSuggestion:query:sectionBundleIdentifier:queryId:", suggestionCopy, searchString2, @"com.apple.searchd.suggestions", [contextCopy queryIdent]);
    [(SSResultBuilder *)v9 setResult:v12];

    result = [(SSResultBuilder *)v9 result];
    searchEntities = [result searchEntities];
    lastObject = [searchEntities lastObject];
    [(SSSuggestionResultBuilder *)v9 setEntity:lastObject];

    [(SSSuggestionResultBuilder *)v9 setSpotlightSuggestion:suggestionCopy];
    result2 = [(SSResultBuilder *)v9 result];
    completion = [result2 completion];
    v22[0] = completion;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    [(SSResultBuilder *)v9 setMatchedStrings:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)buildResult
{
  suggestion = [(SSSuggestionResultBuilder *)self suggestion];
  if (suggestion)
  {
    v6 = 0;
  }

  else
  {
    spotlightSuggestion = [(SSSuggestionResultBuilder *)self spotlightSuggestion];
    if (spotlightSuggestion)
    {
      v2 = spotlightSuggestion;
      v6 = 0;
    }

    else
    {
      result = [(SSResultBuilder *)self result];
      if (SSResultTypeIsServer([result type]))
      {

        goto LABEL_10;
      }

      v2 = 0;
      v6 = 1;
    }
  }

  result2 = [(SSResultBuilder *)self result];
  inlineCard = [result2 inlineCard];

  if (v6)
  {
  }

  if (!suggestion)
  {
  }

  if (!inlineCard)
  {
    buildCompactCard = [(SSResultBuilder *)self buildCompactCard];
    result3 = [(SSResultBuilder *)self result];
    [result3 setCompactCard:buildCompactCard];

    buildInlineCard = [(SSResultBuilder *)self buildInlineCard];
    result4 = [(SSResultBuilder *)self result];
    [result4 setInlineCard:buildInlineCard];

    buildPreviewButtonItems = [(SSResultBuilder *)self buildPreviewButtonItems];
    result5 = [(SSResultBuilder *)self result];
    inlineCard2 = [result5 inlineCard];
    cardSections = [inlineCard2 cardSections];
    firstObject = [cardSections firstObject];
    [firstObject setPreviewButtonItems:buildPreviewButtonItems];

    goto LABEL_16;
  }

LABEL_10:
  result6 = [(SSResultBuilder *)self result];
  inlineCard3 = [result6 inlineCard];
  if (inlineCard3)
  {
    v12 = inlineCard3;
    result7 = [(SSResultBuilder *)self result];
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

  buildPreviewButtonItems = [(SSResultBuilder *)self buildInlineCard];
  result5 = [(SSResultBuilder *)self result];
  [result5 setInlineCard:buildPreviewButtonItems];
LABEL_16:

LABEL_17:

  return [(SSResultBuilder *)self result];
}

- (id)buildInlineCardSections
{
  v67[1] = *MEMORY[0x1E69E9840];
  result = [(SSResultBuilder *)self result];
  if ([result type] == 32)
  {
    v4 = 1;
  }

  else
  {
    result2 = [(SSResultBuilder *)self result];
    v4 = [result2 type] == 38;
  }

  spotlightSuggestion = [(SSSuggestionResultBuilder *)self spotlightSuggestion];

  if (!spotlightSuggestion)
  {
    suggestion = [(SSSuggestionResultBuilder *)self suggestion];

    if (suggestion)
    {
      suggestion2 = [(SSSuggestionResultBuilder *)self suggestion];
      type = [suggestion2 type];
      entity = [(SSSuggestionResultBuilder *)self entity];
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
        entity2 = [(SSSuggestionResultBuilder *)self entity];
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
      buildHighlightedTextForSuggestion = [(SSSuggestionResultBuilder *)self buildHighlightedTextForSuggestion];
      [(SSContactResultBuilder *)inlineCard2 setSuggestionText:buildHighlightedTextForSuggestion];

      suggestionText = [(SSContactResultBuilder *)inlineCard2 suggestionText];
      [suggestionText setMaxLines:1];

      [(SSContactResultBuilder *)inlineCard2 setSuggestionType:v20];
      v27 = MEMORY[0x1E69CA3A0];
      detailText = [suggestion2 detailText];
      v29 = [v27 textWithString:detailText];
      [(SSContactResultBuilder *)inlineCard2 setDetailText:v29];

      v66 = result8;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
      [(SSContactResultBuilder *)inlineCard2 setPunchoutOptions:v30];

      buildSymbolImage = [(SSSuggestionResultBuilder *)self buildSymbolImage];
      [(SSContactResultBuilder *)inlineCard2 setThumbnail:buildSymbolImage];

      buildCommand = [(SSSuggestionResultBuilder *)self buildCommand];
      [(SSContactResultBuilder *)inlineCard2 setCommand:buildCommand];

      v65 = inlineCard2;
      cardSections2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
      goto LABEL_18;
    }

    if (v4)
    {
      entity3 = [(SSSuggestionResultBuilder *)self entity];
      isContactEntitySearch2 = [entity3 isContactEntitySearch];

      if (isContactEntitySearch2)
      {
        suggestion2 = [(SSSuggestionResultBuilder *)self entity];
      }

      else
      {
        suggestion2 = 0;
      }

      result8 = objc_opt_new();
      result3 = [(SSResultBuilder *)self result];
      resultBundleId = [result3 resultBundleId];
      [result8 setBundleIdentifier:resultBundleId];

      v57 = [SSContactResultBuilder alloc];
      result4 = [(SSResultBuilder *)self result];
      contact = [suggestion2 contact];
      inlineCard2 = [(SSContactResultBuilder *)v57 initWithResult:result4 contactEntity:suggestion2 contact:contact];

      buildCompactCardSection = [(SSResultBuilder *)inlineCard2 buildCompactCardSection];
      v64 = buildCompactCardSection;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
LABEL_31:

      goto LABEL_32;
    }

    result5 = [(SSResultBuilder *)self result];
    inlineCard = [result5 inlineCard];
    cardSections = [inlineCard cardSections];
    suggestion2 = [cardSections firstObject];

    if (suggestion2 && ([suggestion2 command], v39 = objc_claimAutoreleasedReturnValue(), v39, !v39))
    {
      buildCommand2 = [(SSSuggestionResultBuilder *)self buildCommand];
      [suggestion2 setCommand:buildCommand2];
    }

    else
    {
      result6 = [(SSResultBuilder *)self result];
      IsServer = SSResultTypeIsServer([result6 type]);

      if ((IsServer & 1) == 0)
      {
        result8 = objc_opt_new();
        entity4 = [(SSSuggestionResultBuilder *)self entity];
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
        result7 = [(SSResultBuilder *)self result];
        resultBundleId2 = [result7 resultBundleId];
        [(SSContactResultBuilder *)inlineCard2 setBundleIdentifier:resultBundleId2];

        buildCompactCardSection = objc_opt_new();
        [buildCompactCardSection setThumbnail:result8];
        [buildCompactCardSection setShouldUseCompactDisplay:1];
        v49 = MEMORY[0x1E69CA3A0];
        suggestionString = [(SSSuggestionResultBuilder *)self suggestionString];
        v51 = [v49 textWithString:suggestionString];
        [buildCompactCardSection setTitle:v51];

        title = [buildCompactCardSection title];
        [title setMaxLines:1];

        v53 = objc_opt_new();
        suggestionString2 = [(SSSuggestionResultBuilder *)self suggestionString];
        [v53 setSearchString:suggestionString2];

        [v53 setQuerySource:1];
        [buildCompactCardSection setCommand:v53];
        v63 = buildCompactCardSection;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];

        goto LABEL_31;
      }
    }

    result8 = [(SSResultBuilder *)self result];
    inlineCard2 = [result8 inlineCard];
    cardSections2 = [(SSContactResultBuilder *)inlineCard2 cardSections];
LABEL_18:
    v15 = cardSections2;
LABEL_32:

    goto LABEL_33;
  }

  suggestion2 = objc_opt_new();
  buildSymbolImage2 = [(SSSuggestionResultBuilder *)self buildSymbolImage];
  [suggestion2 setThumbnail:buildSymbolImage2];

  [suggestion2 setShouldUseCompactDisplay:1];
  result8 = [(SSSuggestionResultBuilder *)self buildHighlightedTextForSuggestion];
  entity5 = [(SSSuggestionResultBuilder *)self entity];
  isPhotosEntitySearch = [entity5 isPhotosEntitySearch];

  if (isPhotosEntitySearch)
  {
    v12 = [(SSSuggestionResultBuilder *)self buildPhotoTextAndGlyphForSuggestion:result8];

    result8 = v12;
  }

  [suggestion2 setTitle:result8];
  title2 = [suggestion2 title];
  [title2 setMaxLines:1];

  buildCommand3 = [(SSSuggestionResultBuilder *)self buildCommand];
  [suggestion2 setCommand:buildCommand3];

  v67[0] = suggestion2;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
LABEL_33:

  v60 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)buildSymbolImage
{
  entity = [(SSSuggestionResultBuilder *)self entity];
  v4 = entity;
  if (!entity)
  {
    suggestion = [(SSSuggestionResultBuilder *)self suggestion];
    if (!suggestion)
    {
      goto LABEL_8;
    }

    v7 = suggestion;
    result = [(SSResultBuilder *)self result];
    IsLocalSuggestion = SSResultTypeIsLocalSuggestion([result type]);

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
  spotlightSuggestion = [(SSSuggestionResultBuilder *)self spotlightSuggestion];
  if (spotlightSuggestion)
  {
    v4 = spotlightSuggestion;
    entity = [(SSSuggestionResultBuilder *)self entity];

    if (entity)
    {
      entity2 = [(SSSuggestionResultBuilder *)self entity];
      command = [entity2 command];

      goto LABEL_25;
    }
  }

  suggestion = [(SSSuggestionResultBuilder *)self suggestion];

  if (suggestion)
  {
    suggestion2 = [(SSSuggestionResultBuilder *)self suggestion];
    if ([suggestion2 type] != 12 && objc_msgSend(suggestion2, "type") != 14)
    {
      result = [(SSResultBuilder *)self result];
      IsLocalSuggestion = SSResultTypeIsLocalSuggestion([result type]);

      if (IsLocalSuggestion)
      {
        command = objc_opt_new();
        entity3 = [(SSSuggestionResultBuilder *)self entity];
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
    result2 = [(SSResultBuilder *)self result];
    title = [(__CFString *)result2 title];
    text = [title text];
    if (text)
    {
      [command setSearchString:text];
    }

    else
    {
      suggestionString = [(SSSuggestionResultBuilder *)self suggestionString];
      [command setSearchString:suggestionString];
    }
  }

  else
  {
    entity4 = [(SSSuggestionResultBuilder *)self entity];
    isContactEntitySearch = [entity4 isContactEntitySearch];

    if (isContactEntitySearch)
    {
      suggestion2 = [(SSSuggestionResultBuilder *)self entity];
      command = objc_opt_new();
      tokenText = [suggestion2 tokenText];
      [command setTokenString:tokenText];

      personQueryIdentifier = [suggestion2 personQueryIdentifier];
      v17 = personQueryIdentifier;
      v18 = &stru_1F556FE60;
      if (personQueryIdentifier)
      {
        v18 = personQueryIdentifier;
      }

      result2 = v18;

      contactIdentifier = [suggestion2 contactIdentifier];

      if (contactIdentifier)
      {
        contactIdentifier2 = [suggestion2 contactIdentifier];
        v21 = [SPSearchContactEntity updatePersonQueryIdentifier:result2 withContactIdentifier:contactIdentifier2];

        result2 = v21;
      }

      personIdentifier = [suggestion2 personIdentifier];

      if (personIdentifier)
      {
        personIdentifier2 = [suggestion2 personIdentifier];
        v24 = [SPSearchContactEntity updatePersonQueryIdentifier:result2 withPersonIdentifier:personIdentifier2];

        result2 = v24;
      }

      [command setEntityIdentifier:result2];
      [command setEntityType:2];
      buildSymbolImage = [(SSSuggestionResultBuilder *)self buildSymbolImage];
      [command setSymbolImage:buildSymbolImage];

      symbolImage = [command symbolImage];
      [command setTokenImage:symbolImage];

      goto LABEL_23;
    }

    result3 = [(SSResultBuilder *)self result];
    resultBundleId = [result3 resultBundleId];
    v29 = [resultBundleId isEqual:@"com.apple.spotlight.related_search_as_typed.web"];

    if (!v29)
    {
      command = objc_opt_new();
      result4 = [(SSResultBuilder *)self result];
      title2 = [result4 title];
      text2 = [title2 text];
      if (text2)
      {
        [command setSearchString:text2];
      }

      else
      {
        suggestionString2 = [(SSSuggestionResultBuilder *)self suggestionString];
        [command setSearchString:suggestionString2];
      }

      [command setQuerySource:2];
      goto LABEL_25;
    }

    command = objc_opt_new();
    suggestion2 = [(SSResultBuilder *)self result];
    result2 = [suggestion2 title];
    title = [(__CFString *)result2 text];
    if (title)
    {
      [command setSearchString:title];
    }

    else
    {
      suggestionString3 = [(SSSuggestionResultBuilder *)self suggestionString];
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
  v33[1] = *MEMORY[0x1E69E9840];
  matchedStrings = [(SSResultBuilder *)self matchedStrings];
  firstObject = [matchedStrings firstObject];

  queryContext = [(SSResultBuilder *)self queryContext];
  searchEntities = [queryContext searchEntities];
  v7 = [searchEntities count];
  queryContext2 = [(SSResultBuilder *)self queryContext];
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
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  v15 = objc_opt_new();
  [v15 setFormattedTextPieces:v14];
  if (([firstObject isEqual:displayString] & 1) == 0)
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
    spotlightSuggestion = [(SSSuggestionResultBuilder *)self spotlightSuggestion];

    if (spotlightSuggestion)
    {
      result = [(SSResultBuilder *)self result];
      type = [result type];

      if (type == 31)
      {
        v23 = @" L";
      }

      else
      {
        result2 = [(SSResultBuilder *)self result];
        type2 = [result2 type];

        if (type2 == 34)
        {
          v23 = @" N";
        }

        else
        {
          result3 = [(SSResultBuilder *)self result];
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

  v31 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)buildPhotoTextAndGlyphForSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  formattedTextPieces = [suggestionCopy formattedTextPieces];
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
        [v10 addObjectsFromArray:formattedTextPieces];
      }

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  v37 = suggestionCopy;
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