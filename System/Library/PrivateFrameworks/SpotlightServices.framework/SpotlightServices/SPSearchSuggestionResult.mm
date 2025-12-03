@interface SPSearchSuggestionResult
+ (id)searchSuggestionRankingResultWithResult:(id)result query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id;
+ (id)searchSuggestionRankingResultWithSpotlightSuggestion:(id)suggestion query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id;
+ (id)searchSuggestionRankingResultWithSuggestion:(id)suggestion query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id;
+ (void)updateRankingItemForSuggestionResult:(id)result;
- (SPSearchSuggestionResult)initWithCoder:(id)coder;
- (SPSearchSuggestionResult)initWithSearchResult:(id)result query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id;
- (SPSearchSuggestionResult)initWithSearchSuggestion:(id)suggestion query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id;
- (SPSearchSuggestionResult)initWithSpotlightSuggestion:(id)suggestion query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id;
- (id)localSuggestionFeatures;
- (int64_t)compareByRank:(id)rank;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPSearchSuggestionResult

+ (void)updateRankingItemForSuggestionResult:(id)result
{
  v20[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  if ([resultCopy type] == 32 || objc_msgSend(resultCopy, "type") == 38)
  {
    v4 = objc_alloc_init(PRSRankingItem);
    suggestionsFeedbackData = [resultCopy suggestionsFeedbackData];
    [(PRSRankingItem *)v4 setLocalSuggestionsData:suggestionsFeedbackData];

    [resultCopy rankingScore];
    [(PRSRankingItem *)v4 setSuggestionScore:?];
    v19 = @"suggestion score";
    v6 = MEMORY[0x1E696AD98];
    [(PRSRankingItem *)v4 suggestionScore];
    v7 = [v6 numberWithDouble:?];
    v20[0] = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = v20;
    v10 = &v19;
  }

  else
  {
    IsLocalSuggestion = SSResultTypeIsLocalSuggestion([resultCopy type]);
    v4 = objc_alloc_init(PRSRankingItem);
    suggestionsFeedbackData2 = [resultCopy suggestionsFeedbackData];
    if (!IsLocalSuggestion)
    {
      [(PRSRankingItem *)v4 setServerSuggestionsData:suggestionsFeedbackData2];

      [resultCopy rankingScore];
      [(PRSRankingItem *)v4 setSuggestionScore:?];
      goto LABEL_5;
    }

    [(PRSRankingItem *)v4 setLocalSuggestionsData:suggestionsFeedbackData2];

    [resultCopy rankingScore];
    [(PRSRankingItem *)v4 setSuggestionScore:?];
    v17 = @"suggestion score";
    v16 = MEMORY[0x1E696AD98];
    [(PRSRankingItem *)v4 suggestionScore];
    v7 = [v16 numberWithDouble:?];
    v18 = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v18;
    v10 = &v17;
  }

  v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
  [resultCopy setLocalFeatures:v11];

LABEL_5:
  [(PRSRankingItem *)v4 setSuggestionBundleIDType];
  sectionBundleIdentifier = [resultCopy sectionBundleIdentifier];
  [(PRSRankingItem *)v4 setSectionBundleIdentifier:sectionBundleIdentifier];

  [resultCopy setRankingItem:v4];
  v13 = *MEMORY[0x1E69E9840];
}

+ (id)searchSuggestionRankingResultWithResult:(id)result query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id
{
  identifierCopy = identifier;
  queryCopy = query;
  resultCopy = result;
  v12 = [[SPSearchSuggestionResult alloc] initWithSearchResult:resultCopy query:queryCopy sectionBundleIdentifier:identifierCopy queryId:id];

  [objc_opt_class() updateRankingItemForSuggestionResult:v12];

  return v12;
}

+ (id)searchSuggestionRankingResultWithSuggestion:(id)suggestion query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id
{
  identifierCopy = identifier;
  queryCopy = query;
  suggestionCopy = suggestion;
  v12 = [[SPSearchSuggestionResult alloc] initWithSearchSuggestion:suggestionCopy query:queryCopy sectionBundleIdentifier:identifierCopy queryId:id];

  [objc_opt_class() updateRankingItemForSuggestionResult:v12];

  return v12;
}

- (SPSearchSuggestionResult)initWithSearchResult:(id)result query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id
{
  v85[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  obj = query;
  queryCopy = query;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = resultCopy;
  v80.receiver = self;
  v80.super_class = SPSearchSuggestionResult;
  v13 = [(SFSearchResult_SpotlightExtras *)&v80 initWithResult:v12 groupId:0];
  v14 = v13;
  if (v13)
  {
    resultBundleId = [(SPSearchSuggestionResult *)v13 resultBundleId];
    if (resultBundleId)
    {
      [(SPSearchSuggestionResult *)v14 setResultBundleId:resultBundleId];
    }

    else
    {
      applicationBundleIdentifier = [(SPSearchSuggestionResult *)v14 applicationBundleIdentifier];
      if (applicationBundleIdentifier)
      {
        [(SPSearchSuggestionResult *)v14 setResultBundleId:applicationBundleIdentifier];
      }

      else
      {
        sectionBundleIdentifier = [(SPSearchSuggestionResult *)v14 sectionBundleIdentifier];
        [(SPSearchSuggestionResult *)v14 setResultBundleId:sectionBundleIdentifier];
      }
    }

    [v12 rankingScore];
    [(SFSearchResult_SpotlightExtras *)v14 setScore:v18];
    if (isKindOfClass)
    {
      personQueryIdentifier = [v12 personQueryIdentifier];
      [(SFSearchResult_SpotlightExtras *)v14 setPersonQueryIdentifier:personQueryIdentifier];

      personIdentifier = [v12 personIdentifier];
      [(SFSearchResult_SpotlightExtras *)v14 setPersonIdentifier:personIdentifier];
    }

    else
    {
      [(SFSearchResult_SpotlightExtras *)v14 setPersonQueryIdentifier:0];
      [(SFSearchResult_SpotlightExtras *)v14 setPersonIdentifier:0];
    }

    if ([(SPSearchSuggestionResult *)v14 type]== 38 || [(SPSearchSuggestionResult *)v14 type]== 37)
    {
      personIdentifier2 = [(SFSearchResult_SpotlightExtras *)v14 personIdentifier];
      if (personIdentifier2)
      {
      }

      else
      {
        contactIdentifier = [(SPSearchSuggestionResult *)v14 contactIdentifier];

        if (contactIdentifier)
        {
          identifier = [(SPSearchSuggestionResult *)v14 identifier];
          [(SFSearchResult_SpotlightExtras *)v14 setPersonIdentifier:identifier];

          contactIdentifier2 = [(SPSearchSuggestionResult *)v14 contactIdentifier];
          [(SFSearchResult_SpotlightExtras *)v14 setPersonQueryIdentifier:contactIdentifier2];

          [(SPSearchSuggestionResult *)v14 setContactIdentifier:0];
        }
      }
    }

    [(SFSearchResult_SpotlightExtras *)v14 setProtectionClass:&stru_1F556FE60];
    personQueryIdentifier2 = [(SFSearchResult_SpotlightExtras *)v14 personQueryIdentifier];

    if (personQueryIdentifier2)
    {
      title = [(SPSearchSuggestionResult *)v14 title];
      text = [title text];
      [(SPSearchSuggestionResult *)v14 setCompletion:text];

      personQueryIdentifier3 = [(SFSearchResult_SpotlightExtras *)v14 personQueryIdentifier];
      contactIdentifier3 = [(SPSearchSuggestionResult *)v14 contactIdentifier];

      if (contactIdentifier3)
      {
        contactIdentifier4 = [(SPSearchSuggestionResult *)v14 contactIdentifier];
        v31 = [SPSearchContactEntity updatePersonQueryIdentifier:personQueryIdentifier3 withContactIdentifier:contactIdentifier4];

        personQueryIdentifier3 = v31;
      }

      personIdentifier3 = [(SFSearchResult_SpotlightExtras *)v14 personIdentifier];

      if (personIdentifier3)
      {
        personIdentifier4 = [(SFSearchResult_SpotlightExtras *)v14 personIdentifier];
        v34 = [SPSearchContactEntity updatePersonQueryIdentifier:personQueryIdentifier3 withPersonIdentifier:personIdentifier4];

        personQueryIdentifier3 = v34;
      }

      v35 = [SPSearchEntity searchEntityWithPersonQueryIdentifier:personQueryIdentifier3 personName:0 fromSuggestion:1];
      completion = v35;
      if (v35)
      {
        contactIdentifier5 = [v35 contactIdentifier];
        [(SPSearchSuggestionResult *)v14 setContactIdentifier:contactIdentifier5];

        personIdentifier5 = [completion personIdentifier];
        [(SFSearchResult_SpotlightExtras *)v14 setPersonIdentifier:personIdentifier5];

        personQueryIdentifier4 = [completion personQueryIdentifier];
        [(SFSearchResult_SpotlightExtras *)v14 setPersonQueryIdentifier:personQueryIdentifier4];

        v85[0] = completion;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
        personIdentifier6 = [(SFSearchResult_SpotlightExtras *)v14 personIdentifier];
        if (personIdentifier6)
        {
          [(SPSearchSuggestionResult *)v14 setIdentifier:personIdentifier6];
        }

        else
        {
          [(SPSearchSuggestionResult *)v14 contactIdentifier];
          v46 = v45 = queryCopy;
          [(SPSearchSuggestionResult *)v14 setIdentifier:v46];

          queryCopy = v45;
        }
      }

      else
      {
        v40 = 0;
      }

      [(SPSearchSuggestionResult *)v14 setType:38];
      [(SPSearchSuggestionResult *)v14 setResultBundleId:@"com.apple.spotlight.suggestionlist.contact.people"];
      goto LABEL_32;
    }

    contactIdentifier6 = [(SPSearchSuggestionResult *)v14 contactIdentifier];

    if (contactIdentifier6)
    {
      title2 = [(SPSearchSuggestionResult *)v14 title];
      text2 = [title2 text];
      [(SPSearchSuggestionResult *)v14 setCompletion:text2];

      contactIdentifier7 = [(SPSearchSuggestionResult *)v14 contactIdentifier];
      personQueryIdentifier3 = [SPSearchEntity searchEntityWithContactIdentifier:contactIdentifier7 fromSuggestion:1];

      if (personQueryIdentifier3)
      {
        v84 = personQueryIdentifier3;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
      }

      else
      {
        v40 = 0;
      }

      [(SPSearchSuggestionResult *)v14 setType:32];
      [(SPSearchSuggestionResult *)v14 setResultBundleId:@"com.apple.spotlight.suggestionlist.contact.contact"];
      goto LABEL_39;
    }

    inlineCard = [v12 inlineCard];
    cardSections = [inlineCard cardSections];
    personIdentifier6 = [cardSections firstObject];
    personQueryIdentifier3 = [personIdentifier6 command];

    resultBundleId2 = [v12 resultBundleId];
    LODWORD(cardSections) = [resultBundleId2 isEqualToString:@"com.apple.spotlight.suggestionlist.parsec.entity"];

    if (cardSections)
    {
      if (personQueryIdentifier3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v50 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithCommand:personQueryIdentifier3 fromSuggestion:1];
          v83 = v50;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];

          searchString = [personQueryIdentifier3 searchString];
          goto LABEL_70;
        }
      }

LABEL_72:
      v40 = 0;
LABEL_73:
      completion = [(SPSearchSuggestionResult *)v14 completion];
      [(SPSearchSuggestionResult *)v14 setCompletion:completion];
LABEL_32:

LABEL_39:
      searchString = 0;
      goto LABEL_40;
    }

    if (personQueryIdentifier3)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        searchString2 = [personQueryIdentifier3 searchString];
LABEL_66:
        searchString = searchString2;
        goto LABEL_69;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        searchString2 = [personQueryIdentifier3 utteranceText];
        goto LABEL_66;
      }
    }

    title3 = [v12 title];
    text3 = [title3 text];

    if (!text3)
    {
      goto LABEL_72;
    }

    title4 = [v12 title];
    searchString = [title4 text];

LABEL_69:
    v40 = 0;
LABEL_70:
    if (searchString)
    {
      [(SPSearchSuggestionResult *)v14 setCompletion:searchString];
LABEL_40:

      completion2 = [(SPSearchSuggestionResult *)v14 completion];

      if (completion2)
      {
        if (v40)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (searchString)
        {
          v53 = searchString;
        }

        else
        {
          v53 = queryCopy;
        }

        [(SPSearchSuggestionResult *)v14 setCompletion:v53];
        if (v40)
        {
LABEL_50:
          contactIdentifier8 = [(SPSearchSuggestionResult *)v14 contactIdentifier];
          if (contactIdentifier8 || ([(SFSearchResult_SpotlightExtras *)v14 personIdentifier], (personIdentifier6 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            resultBundleId3 = [(SPSearchSuggestionResult *)v14 resultBundleId];
            [(SPSearchSuggestionResult *)v14 setIdentifier:resultBundleId3];

            if (contactIdentifier8)
            {
LABEL_59:

              suggestionsFeedbackData = [(SPSearchSuggestionResult *)v14 suggestionsFeedbackData];
              [(SFSearchResult_SpotlightExtras *)v14 setSuggestionsFeedbackData:suggestionsFeedbackData];

              searchEntities = v14->_searchEntities;
              v14->_searchEntities = v40;
              v71 = v40;

              suggestion = v14->_suggestion;
              v14->_suggestion = 0;

              objc_storeStrong(&v14->_query, obj);
              goto LABEL_60;
            }
          }

          else
          {
            resultBundleId4 = [(SPSearchSuggestionResult *)v14 resultBundleId];
            v81[0] = resultBundleId4;
            completion3 = [(SPSearchSuggestionResult *)v14 completion];
            v64 = completion3;
            if (completion3)
            {
              v65 = completion3;
            }

            else
            {
              v65 = &stru_1F556FE60;
            }

            v81[1] = v65;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
            v67 = v66 = queryCopy;
            v68 = [v67 componentsJoinedByString:@":"];
            [(SPSearchSuggestionResult *)v14 setIdentifier:v68];

            queryCopy = v66;
            personIdentifier6 = 0;
          }

          goto LABEL_59;
        }
      }

      completion4 = [(SPSearchSuggestionResult *)v14 completion];

      if (completion4)
      {
        completion5 = [(SPSearchSuggestionResult *)v14 completion];
        v56 = SSEscapedStringForSearchQuery(completion5);

        personIdentifier6 = [(SPSearchSuggestionResult *)v14 completion];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"**=%@cwd || _kMDItemLaunchString=%@cwd", v56, v56, obj];
        v58 = v57 = queryCopy;
        v59 = [SPSearchEntity searchEntityWithSearchString:personIdentifier6 spotlightQueryString:v58 preferredBundleIDs:0];
        v82 = v59;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];

        queryCopy = v57;
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_50;
    }

    goto LABEL_73;
  }

LABEL_60:

  v73 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (id)searchSuggestionRankingResultWithSpotlightSuggestion:(id)suggestion query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id
{
  identifierCopy = identifier;
  queryCopy = query;
  suggestionCopy = suggestion;
  v12 = [[SPSearchSuggestionResult alloc] initWithSpotlightSuggestion:suggestionCopy query:queryCopy sectionBundleIdentifier:identifierCopy queryId:id];

  [objc_opt_class() updateRankingItemForSuggestionResult:v12];

  return v12;
}

- (SPSearchSuggestionResult)initWithSpotlightSuggestion:(id)suggestion query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id
{
  v46[2] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  queryCopy = query;
  identifierCopy = identifier;
  v44.receiver = self;
  v44.super_class = SPSearchSuggestionResult;
  v14 = [(SFSearchResult_SpotlightExtras *)&v44 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_38;
  }

  idCopy = id;
  objc_storeStrong(&v14->_spotlightSuggestion, suggestion);
  localSuggestionFeatures = [(SPSearchSuggestionResult *)v15 localSuggestionFeatures];
  [(SPSearchSuggestionResult *)v15 setLocalFeatures:localSuggestionFeatures];

  suggestionsFeedbackData = [(SPSearchSuggestionResult *)v15 suggestionsFeedbackData];
  [(SFSearchResult_SpotlightExtras *)v15 setSuggestionsFeedbackData:suggestionsFeedbackData];

  localizedAttributedSuggestion = [suggestionCopy localizedAttributedSuggestion];
  string = [localizedAttributedSuggestion string];

  v20 = @"com.apple.spotlight.suggestionlist.local";
  localFeatures = [(SPSearchSuggestionResult *)v15 localFeatures];
  v42 = identifierCopy;
  v43 = queryCopy;
  v41 = localFeatures;
  if (localFeatures)
  {
    v22 = [localFeatures objectForKeyedSubscript:@"completionType"];
    if (v22)
    {
      v23 = v22;
      intValue = [v22 intValue];
      if (intValue > 20)
      {
        if (intValue == 21)
        {
          v31 = SSResultBundleIdSuggestionLocalTopic;
        }

        else
        {
          if (intValue != 22)
          {
LABEL_19:
            v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:suggestionCopy symbolName:@"magnifyingglass" fromSuggestion:1];

            goto LABEL_20;
          }

          v31 = SSResultBundleIdSuggestionLocalCategory;
        }

        v25 = *v31;

        v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:suggestionCopy symbolName:@"magnifyingglass" fromSuggestion:1];

        v27 = 39;
        goto LABEL_25;
      }

      if (intValue != 5)
      {
        if (intValue == 6)
        {
          v25 = @"com.apple.spotlight.suggestionlist.photo";

          v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:suggestionCopy symbolName:@"magnifyingglass" fromSuggestion:1];

          v27 = 35;
LABEL_25:
          v20 = v25;
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:suggestionCopy symbolName:@"magnifyingglass" fromSuggestion:1];

LABEL_22:
      v27 = 34;
      goto LABEL_26;
    }
  }

  currentToken = [suggestionCopy currentToken];
  tokenKind = [currentToken tokenKind];

  switch(tokenKind)
  {
    case 5:
      v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:suggestionCopy symbolName:@"magnifyingglass" fromSuggestion:1];
      goto LABEL_22;
    case 17:
      v30 = @"com.apple.spotlight.suggestionlist.photo";

      v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:suggestionCopy symbolName:@"magnifyingglass" fromSuggestion:1];
      v27 = 35;
      break;
    case 45:
      v30 = @"com.apple.spotlight.suggestionlist.local.topic";

      v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:suggestionCopy symbolName:@"magnifyingglass" fromSuggestion:1];
      v27 = 39;
      break;
    default:
      v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:suggestionCopy symbolName:@"magnifyingglass" fromSuggestion:1];
LABEL_20:
      v27 = 31;
      goto LABEL_26;
  }

  v20 = v30;
LABEL_26:
  [(SPSearchSuggestionResult *)v15 setQueryId:idCopy];
  if (v20)
  {
    v32 = v20;
  }

  else
  {
    v32 = &stru_1F556FE60;
  }

  if (string)
  {
    v33 = string;
  }

  else
  {
    v33 = &stru_1F556FE60;
  }

  v46[0] = v32;
  v46[1] = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:2];
  v35 = [v34 componentsJoinedByString:@": "];
  [(SPSearchSuggestionResult *)v15 setIdentifier:v35];

  v36 = [MEMORY[0x1E69CA4F0] textWithString:string];
  [(SPSearchSuggestionResult *)v15 setTitle:v36];

  identifierCopy = v42;
  [(SPSearchSuggestionResult *)v15 setSectionBundleIdentifier:v42];
  [(SPSearchSuggestionResult *)v15 setType:v27];
  [(SPSearchSuggestionResult *)v15 setCompletion:string];
  [(SPSearchSuggestionResult *)v15 setResultBundleId:v20];
  [(SFSearchResult_SpotlightExtras *)v15 setProtectionClass:&stru_1F556FE60];
  if (v26)
  {
    v45 = v26;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
  }

  else
  {
    v37 = 0;
  }

  queryCopy = v43;
  objc_storeStrong(&v15->_searchEntities, v37);
  if (v26)
  {
  }

  objc_storeStrong(&v15->_query, query);

LABEL_38:
  v38 = *MEMORY[0x1E69E9840];
  return v15;
}

- (SPSearchSuggestionResult)initWithSearchSuggestion:(id)suggestion query:(id)query sectionBundleIdentifier:(id)identifier queryId:(unint64_t)id
{
  v50[2] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  queryCopy = query;
  identifierCopy = identifier;
  v49.receiver = self;
  v49.super_class = SPSearchSuggestionResult;
  v14 = [(SFSearchResult_SpotlightExtras *)&v49 init];
  if (!v14)
  {
    goto LABEL_46;
  }

  idCopy = id;
  if (suggestionCopy)
  {
    suggestion = [suggestionCopy suggestion];
    if (objc_opt_respondsToSelector())
    {
      searchEntities = [suggestionCopy searchEntities];
      goto LABEL_7;
    }
  }

  else
  {
    suggestion = queryCopy;
  }

  searchEntities = 0;
LABEL_7:
  lastObject = [(NSArray *)searchEntities lastObject];
  v18 = @"com.apple.spotlight.suggestionlist.local";
  [suggestionCopy score];
  v20 = v19;
  type = [suggestionCopy type];
  v47 = identifierCopy;
  v48 = queryCopy;
  v45 = lastObject;
  obj = query;
  if (type <= 6)
  {
    if (type > 4)
    {
      if (type == 5)
      {
        v23 = @"com.apple.spotlight.suggestionlist.contact.contact";

        v22 = 32;
      }

      else
      {
        v23 = @"com.apple.spotlight.suggestionlist.usertypedstring";

        v22 = 30;
      }

      goto LABEL_38;
    }

    if (type == 1)
    {
      v23 = @"com.apple.spotlight.suggestionlist.parsec";

      v22 = 17;
      goto LABEL_38;
    }

    if (type == 2)
    {
      v23 = @"com.apple.spotlight.suggestionlist.proactive";

      [suggestionCopy score];
      v20 = v24 * 128.0 * 1024.0 * 1024.0;
      v22 = 15;
LABEL_38:
      v18 = v23;
      goto LABEL_39;
    }

LABEL_29:
    if (lastObject && [lastObject isAppEntitySearch] || (objc_msgSend(suggestionCopy, "bundleIdentifier"), v27 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v27, "isEqualToString:", @"com.apple.application"), v27, v43))
    {
      v23 = @"com.apple.application";

      v22 = 33;
    }

    else
    {
      if (![identifierCopy isEqualToString:@"com.apple.searchd.searchThroughSuggestions"])
      {
        v22 = 16;
        goto LABEL_39;
      }

      bundleIdentifier = [suggestionCopy bundleIdentifier];
      v29 = [bundleIdentifier componentsSeparatedByString:@"."];
      lastObject2 = [v29 lastObject];

      v23 = [@"com.apple.other:search_" stringByAppendingString:lastObject2];

      v22 = 16;
    }

    goto LABEL_38;
  }

  if (type <= 11)
  {
    if (type == 7)
    {
      if (lastObject && [lastObject isPhotosEntitySearch])
      {
        v25 = @"com.apple.spotlight.suggestionlist.photo";

        v22 = 35;
        v18 = v25;
      }

      else
      {
        v22 = 31;
      }

      [suggestionCopy score];
      v20 = v26 * 128.0 * 1024.0 * 1024.0;
      goto LABEL_39;
    }

    if (type == 11)
    {
      v23 = @"com.apple.spotlight.suggestionlist.siri";

      v22 = 27;
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (type == 12)
  {
    v23 = @"com.apple.spotlight.websuggestionlist.parsec";

    v22 = 28;
    goto LABEL_38;
  }

  if (type == 14)
  {
    v23 = @"com.apple.spotlight.websuggestionlist.usertypedstring";

    v22 = 29;
    goto LABEL_38;
  }

  if (type != 15)
  {
    goto LABEL_29;
  }

  v22 = 34;
LABEL_39:
  [(SPSearchSuggestionResult *)v14 setQueryId:idCopy];
  [(SFSearchResult_SpotlightExtras *)v14 setScore:v20];
  [suggestionCopy score];
  [(SPSearchSuggestionResult *)v14 setRankingScore:?];
  if (v18)
  {
    v31 = v18;
  }

  else
  {
    v31 = &stru_1F556FE60;
  }

  if (suggestion)
  {
    v32 = suggestion;
  }

  else
  {
    v32 = &stru_1F556FE60;
  }

  v50[0] = v31;
  v50[1] = v32;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v34 = [v33 componentsJoinedByString:@": "];
  [(SPSearchSuggestionResult *)v14 setIdentifier:v34];

  v35 = [MEMORY[0x1E69CA4F0] textWithString:suggestion];
  [(SPSearchSuggestionResult *)v14 setTitle:v35];

  v36 = [suggestionCopy fbr];
  [(SPSearchSuggestionResult *)v14 setFbr:v36];

  identifierCopy = v47;
  [(SPSearchSuggestionResult *)v14 setSectionBundleIdentifier:v47];
  [(SPSearchSuggestionResult *)v14 setType:v22];
  [(SPSearchSuggestionResult *)v14 setCompletion:suggestion];
  [(SPSearchSuggestionResult *)v14 setResultBundleId:v18];
  serverFeatures = [suggestionCopy serverFeatures];
  [(SPSearchSuggestionResult *)v14 setServerFeatures:serverFeatures];

  suggestionsFeedbackData = [(SPSearchSuggestionResult *)v14 suggestionsFeedbackData];
  [(SFSearchResult_SpotlightExtras *)v14 setSuggestionsFeedbackData:suggestionsFeedbackData];

  [(SFSearchResult_SpotlightExtras *)v14 setProtectionClass:&stru_1F556FE60];
  searchEntities = v14->_searchEntities;
  v14->_searchEntities = searchEntities;
  v40 = searchEntities;

  objc_storeStrong(&v14->_suggestion, suggestion);
  objc_storeStrong(&v14->_query, obj);

  queryCopy = v48;
LABEL_46:

  v41 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SPSearchSuggestionResult;
  coderCopy = coder;
  [(SFSearchResult_SpotlightExtras *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_query forKey:{@"query", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_suggestion forKey:@"suggestion"];
  [coderCopy encodeObject:self->_spotlightSuggestion forKey:@"spotlightSuggestion"];
  [coderCopy encodeObject:self->_searchEntities forKey:@"searchEntities"];
}

- (SPSearchSuggestionResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SPSearchSuggestionResult;
  v5 = [(SFSearchResult_SpotlightExtras *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"query"];
    query = v5->_query;
    v5->_query = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suggestion"];
    suggestion = v5->_suggestion;
    v5->_suggestion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"spotlightSuggestion"];
    spotlightSuggestion = v5->_spotlightSuggestion;
    v5->_spotlightSuggestion = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"searchEntities"];
    searchEntities = v5->_searchEntities;
    v5->_searchEntities = v15;
  }

  return v5;
}

- (int64_t)compareByRank:(id)rank
{
  rankCopy = rank;
  spotlightSuggestion = [(SPSearchSuggestionResult *)self spotlightSuggestion];
  if (spotlightSuggestion)
  {
    v6 = spotlightSuggestion;
    suggestion = [rankCopy suggestion];

    if (suggestion)
    {
      v8 = -1;
      goto LABEL_25;
    }
  }

  suggestion2 = [(SPSearchSuggestionResult *)self suggestion];
  if (suggestion2)
  {
    v10 = suggestion2;
    spotlightSuggestion2 = [rankCopy spotlightSuggestion];

    if (spotlightSuggestion2)
    {
      v8 = 1;
      goto LABEL_25;
    }
  }

  suggestion3 = [(SPSearchSuggestionResult *)self suggestion];
  if (suggestion3)
  {
    v13 = suggestion3;
    suggestion4 = [(SPSearchSuggestionResult *)self suggestion];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([rankCopy suggestion], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      suggestion5 = [rankCopy suggestion];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        suggestion6 = [(SPSearchSuggestionResult *)self suggestion];
        suggestion7 = [rankCopy suggestion];
        v21 = [suggestion6 compare:suggestion7];
LABEL_21:
        v8 = v21;

        goto LABEL_25;
      }
    }

    else
    {
    }
  }

  suggestion8 = [(SPSearchSuggestionResult *)self suggestion];
  if (suggestion8 && (v23 = suggestion8, [rankCopy suggestion], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v24))
  {
    [(SPSearchSuggestionResult *)self rankingScore];
    v26 = v25;
    [rankCopy rankingScore];
    if (v26 <= v27)
    {
      v8 = 1;
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    spotlightSuggestion3 = [(SPSearchSuggestionResult *)self spotlightSuggestion];
    if (spotlightSuggestion3)
    {
      v29 = spotlightSuggestion3;
      spotlightSuggestion4 = [rankCopy spotlightSuggestion];

      if (spotlightSuggestion4)
      {
        suggestion6 = [(SPSearchSuggestionResult *)self spotlightSuggestion];
        suggestion7 = [rankCopy spotlightSuggestion];
        v21 = [suggestion6 compareByRank:suggestion7];
        goto LABEL_21;
      }
    }

    score = [(SFSearchResult_SpotlightExtras *)self score];
    v33 = v32;
    score2 = [rankCopy score];
    if (__PAIR128__(v35, score2) < __PAIR128__(v33, score))
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

LABEL_25:

  return v8;
}

- (id)localSuggestionFeatures
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  spotlightSuggestion = [(SPSearchSuggestionResult *)self spotlightSuggestion];

  if (spotlightSuggestion)
  {
    spotlightSuggestion2 = [(SPSearchSuggestionResult *)self spotlightSuggestion];
    features = [spotlightSuggestion2 features];

    if (localSuggestionFeatures_onceToken == -1)
    {
      if (features)
      {
LABEL_4:
        v64 = 0;
        v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:localSuggestionFeatures_sFeatureClasses fromData:features error:&v64];
        v8 = v64;
        if (!v8 && v7)
        {
          [dictionary addEntriesFromDictionary:v7];
          v9 = [dictionary objectForKeyedSubscript:@"score"];
          [v9 doubleValue];
          [(SPSearchSuggestionResult *)self setRankingScore:?];

          v8 = 0;
        }

        goto LABEL_26;
      }
    }

    else
    {
      [SPSearchSuggestionResult localSuggestionFeatures];
      if (features)
      {
        goto LABEL_4;
      }
    }

    v8 = 0;
    v7 = 0;
LABEL_26:

    goto LABEL_27;
  }

  suggestion = [(SPSearchSuggestionResult *)self suggestion];

  if (suggestion)
  {
    v11 = MEMORY[0x1E696AD98];
    suggestion2 = [(SPSearchSuggestionResult *)self suggestion];
    v13 = [v11 numberWithInt:{objc_msgSend(suggestion2, "type")}];
    [dictionary setValue:v13 forKey:@"stype"];

    v14 = MEMORY[0x1E696AD98];
    suggestion3 = [(SPSearchSuggestionResult *)self suggestion];
    v15Suggestion = [suggestion3 suggestion];
    v17 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15Suggestion, "length")}];
    [dictionary setValue:v17 forKey:@"sslen"];

    v18 = MEMORY[0x1E696AD98];
    suggestion4 = [(SPSearchSuggestionResult *)self suggestion];
    [suggestion4 score];
    v20 = [v18 numberWithDouble:?];
    [dictionary setValue:v20 forKey:@"sscore"];

    v21 = MEMORY[0x1E696AD98];
    suggestion5 = [(SPSearchSuggestionResult *)self suggestion];
    [suggestion5 score];
    v23 = [v21 numberWithDouble:?];
    [dictionary setValue:v23 forKey:@"score"];

    v24 = [dictionary objectForKeyedSubscript:@"score"];
    [v24 doubleValue];
    [(SPSearchSuggestionResult *)self setRankingScore:?];

    suggestion6 = [(SPSearchSuggestionResult *)self suggestion];
    objc_opt_class();
    LOBYTE(suggestion5) = objc_opt_isKindOfClass();

    if (suggestion5)
    {
      suggestion7 = [(SPSearchSuggestionResult *)self suggestion];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(suggestion7, "queryLen")}];
      [dictionary setValue:v27 forKey:@"queryLen"];

      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(suggestion7, "queryFragmentCount")}];
      [dictionary setValue:v28 forKey:@"queryFragmentCount"];

      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(suggestion7, "queryCompletionCount")}];
      [dictionary setValue:v29 forKey:@"queryCompletionCount"];

      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(suggestion7, "fragments")}];
      [dictionary setValue:v30 forKey:@"fragments"];

      v31 = MEMORY[0x1E696AD98];
      [suggestion7 age];
      v32 = [v31 numberWithDouble:?];
      [dictionary setValue:v32 forKey:@"age"];

      v33 = MEMORY[0x1E696AD98];
      [suggestion7 prob];
      v34 = [v33 numberWithDouble:?];
      [dictionary setValue:v34 forKey:@"prob"];

      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(suggestion7, "maxscore")}];
      [dictionary setValue:v35 forKey:@"maxscore"];

      v36 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(suggestion7, "weight")}];
      [dictionary setValue:v36 forKey:@"weight"];

      v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(suggestion7, "parentWeight")}];
      [dictionary setValue:v37 forKey:@"parentWeight"];

      v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(suggestion7, "rootWeight")}];
      [dictionary setValue:v38 forKey:@"rootWeight"];

      v39 = MEMORY[0x1E696AD98];
      [suggestion7 phraseScore];
      v40 = [v39 numberWithDouble:?];
      [dictionary setValue:v40 forKey:@"phraseScore"];

      v41 = MEMORY[0x1E696AD98];
      [suggestion7 punishment];
      v42 = [v41 numberWithDouble:?];
      [dictionary setValue:v42 forKey:@"punishment"];

      v43 = MEMORY[0x1E696AD98];
      [suggestion7 compositeScore];
      v45 = v44 == 1.79769313e308;
      v46 = 0.0;
      if (!v45)
      {
        [suggestion7 compositeScore];
      }

      v47 = [v43 numberWithDouble:v46];
      [dictionary setValue:v47 forKey:@"compositeScore"];

      v48 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(suggestion7, "completionType")}];
      [dictionary setValue:v48 forKey:@"completionType"];

      v49 = MEMORY[0x1E696AD98];
      [suggestion7 fieldWeight];
      v50 = [v49 numberWithFloat:?];
      [dictionary setValue:v50 forKey:@"fieldWeight"];

      v51 = MEMORY[0x1E696AD98];
      if ([suggestion7 isSingleThread])
      {
        v52 = 1.0;
      }

      else
      {
        v52 = 0.0;
      }

      v53 = [v51 numberWithDouble:v52];
      [dictionary setValue:v53 forKey:@"isSingleThread"];

      v54 = MEMORY[0x1E696AD98];
      if ([suggestion7 hasUsedDate])
      {
        v55 = 1.0;
      }

      else
      {
        v55 = 0.0;
      }

      v56 = [v54 numberWithDouble:v55];
      [dictionary setValue:v56 forKey:@"hasUsedDate"];

      v57 = MEMORY[0x1E696AD98];
      if ([suggestion7 isShortcut])
      {
        v58 = 1.0;
      }

      else
      {
        v58 = 0.0;
      }

      v59 = [v57 numberWithDouble:v58];
      [dictionary setValue:v59 forKey:@"isShortcut"];

      v60 = MEMORY[0x1E696AD98];
      if ([suggestion7 hasMultipleResults])
      {
        v61 = 1.0;
      }

      else
      {
        v61 = 0.0;
      }

      v62 = [v60 numberWithDouble:v61];
      [dictionary setValue:v62 forKey:@"hasMultipleResults"];
    }
  }

LABEL_27:

  return dictionary;
}

void __51__SPSearchSuggestionResult_localSuggestionFeatures__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:3];
  v2 = [v0 setWithArray:{v1, v5, v6}];
  v3 = localSuggestionFeatures_sFeatureClasses;
  localSuggestionFeatures_sFeatureClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end