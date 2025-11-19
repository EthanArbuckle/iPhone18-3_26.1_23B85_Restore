@interface SPSearchSuggestionResult
+ (id)searchSuggestionRankingResultWithResult:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6;
+ (id)searchSuggestionRankingResultWithSpotlightSuggestion:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6;
+ (id)searchSuggestionRankingResultWithSuggestion:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6;
+ (void)updateRankingItemForSuggestionResult:(id)a3;
- (SPSearchSuggestionResult)initWithCoder:(id)a3;
- (SPSearchSuggestionResult)initWithSearchResult:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6;
- (SPSearchSuggestionResult)initWithSearchSuggestion:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6;
- (SPSearchSuggestionResult)initWithSpotlightSuggestion:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6;
- (id)localSuggestionFeatures;
- (int64_t)compareByRank:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPSearchSuggestionResult

+ (void)updateRankingItemForSuggestionResult:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 type] == 32 || objc_msgSend(v3, "type") == 38)
  {
    v4 = objc_alloc_init(PRSRankingItem);
    v5 = [v3 suggestionsFeedbackData];
    [(PRSRankingItem *)v4 setLocalSuggestionsData:v5];

    [v3 rankingScore];
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
    IsLocalSuggestion = SSResultTypeIsLocalSuggestion([v3 type]);
    v4 = objc_alloc_init(PRSRankingItem);
    v15 = [v3 suggestionsFeedbackData];
    if (!IsLocalSuggestion)
    {
      [(PRSRankingItem *)v4 setServerSuggestionsData:v15];

      [v3 rankingScore];
      [(PRSRankingItem *)v4 setSuggestionScore:?];
      goto LABEL_5;
    }

    [(PRSRankingItem *)v4 setLocalSuggestionsData:v15];

    [v3 rankingScore];
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
  [v3 setLocalFeatures:v11];

LABEL_5:
  [(PRSRankingItem *)v4 setSuggestionBundleIDType];
  v12 = [v3 sectionBundleIdentifier];
  [(PRSRankingItem *)v4 setSectionBundleIdentifier:v12];

  [v3 setRankingItem:v4];
  v13 = *MEMORY[0x1E69E9840];
}

+ (id)searchSuggestionRankingResultWithResult:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[SPSearchSuggestionResult alloc] initWithSearchResult:v11 query:v10 sectionBundleIdentifier:v9 queryId:a6];

  [objc_opt_class() updateRankingItemForSuggestionResult:v12];

  return v12;
}

+ (id)searchSuggestionRankingResultWithSuggestion:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[SPSearchSuggestionResult alloc] initWithSearchSuggestion:v11 query:v10 sectionBundleIdentifier:v9 queryId:a6];

  [objc_opt_class() updateRankingItemForSuggestionResult:v12];

  return v12;
}

- (SPSearchSuggestionResult)initWithSearchResult:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6
{
  v85[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  obj = a4;
  v10 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v12 = v9;
  v80.receiver = self;
  v80.super_class = SPSearchSuggestionResult;
  v13 = [(SFSearchResult_SpotlightExtras *)&v80 initWithResult:v12 groupId:0];
  v14 = v13;
  if (v13)
  {
    v15 = [(SPSearchSuggestionResult *)v13 resultBundleId];
    if (v15)
    {
      [(SPSearchSuggestionResult *)v14 setResultBundleId:v15];
    }

    else
    {
      v16 = [(SPSearchSuggestionResult *)v14 applicationBundleIdentifier];
      if (v16)
      {
        [(SPSearchSuggestionResult *)v14 setResultBundleId:v16];
      }

      else
      {
        v17 = [(SPSearchSuggestionResult *)v14 sectionBundleIdentifier];
        [(SPSearchSuggestionResult *)v14 setResultBundleId:v17];
      }
    }

    [v12 rankingScore];
    [(SFSearchResult_SpotlightExtras *)v14 setScore:v18];
    if (isKindOfClass)
    {
      v19 = [v12 personQueryIdentifier];
      [(SFSearchResult_SpotlightExtras *)v14 setPersonQueryIdentifier:v19];

      v20 = [v12 personIdentifier];
      [(SFSearchResult_SpotlightExtras *)v14 setPersonIdentifier:v20];
    }

    else
    {
      [(SFSearchResult_SpotlightExtras *)v14 setPersonQueryIdentifier:0];
      [(SFSearchResult_SpotlightExtras *)v14 setPersonIdentifier:0];
    }

    if ([(SPSearchSuggestionResult *)v14 type]== 38 || [(SPSearchSuggestionResult *)v14 type]== 37)
    {
      v21 = [(SFSearchResult_SpotlightExtras *)v14 personIdentifier];
      if (v21)
      {
      }

      else
      {
        v22 = [(SPSearchSuggestionResult *)v14 contactIdentifier];

        if (v22)
        {
          v23 = [(SPSearchSuggestionResult *)v14 identifier];
          [(SFSearchResult_SpotlightExtras *)v14 setPersonIdentifier:v23];

          v24 = [(SPSearchSuggestionResult *)v14 contactIdentifier];
          [(SFSearchResult_SpotlightExtras *)v14 setPersonQueryIdentifier:v24];

          [(SPSearchSuggestionResult *)v14 setContactIdentifier:0];
        }
      }
    }

    [(SFSearchResult_SpotlightExtras *)v14 setProtectionClass:&stru_1F556FE60];
    v25 = [(SFSearchResult_SpotlightExtras *)v14 personQueryIdentifier];

    if (v25)
    {
      v26 = [(SPSearchSuggestionResult *)v14 title];
      v27 = [v26 text];
      [(SPSearchSuggestionResult *)v14 setCompletion:v27];

      v28 = [(SFSearchResult_SpotlightExtras *)v14 personQueryIdentifier];
      v29 = [(SPSearchSuggestionResult *)v14 contactIdentifier];

      if (v29)
      {
        v30 = [(SPSearchSuggestionResult *)v14 contactIdentifier];
        v31 = [SPSearchContactEntity updatePersonQueryIdentifier:v28 withContactIdentifier:v30];

        v28 = v31;
      }

      v32 = [(SFSearchResult_SpotlightExtras *)v14 personIdentifier];

      if (v32)
      {
        v33 = [(SFSearchResult_SpotlightExtras *)v14 personIdentifier];
        v34 = [SPSearchContactEntity updatePersonQueryIdentifier:v28 withPersonIdentifier:v33];

        v28 = v34;
      }

      v35 = [SPSearchEntity searchEntityWithPersonQueryIdentifier:v28 personName:0 fromSuggestion:1];
      v36 = v35;
      if (v35)
      {
        v37 = [v35 contactIdentifier];
        [(SPSearchSuggestionResult *)v14 setContactIdentifier:v37];

        v38 = [v36 personIdentifier];
        [(SFSearchResult_SpotlightExtras *)v14 setPersonIdentifier:v38];

        v39 = [v36 personQueryIdentifier];
        [(SFSearchResult_SpotlightExtras *)v14 setPersonQueryIdentifier:v39];

        v85[0] = v36;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
        v6 = [(SFSearchResult_SpotlightExtras *)v14 personIdentifier];
        if (v6)
        {
          [(SPSearchSuggestionResult *)v14 setIdentifier:v6];
        }

        else
        {
          [(SPSearchSuggestionResult *)v14 contactIdentifier];
          v46 = v45 = v10;
          [(SPSearchSuggestionResult *)v14 setIdentifier:v46];

          v10 = v45;
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

    v41 = [(SPSearchSuggestionResult *)v14 contactIdentifier];

    if (v41)
    {
      v42 = [(SPSearchSuggestionResult *)v14 title];
      v43 = [v42 text];
      [(SPSearchSuggestionResult *)v14 setCompletion:v43];

      v44 = [(SPSearchSuggestionResult *)v14 contactIdentifier];
      v28 = [SPSearchEntity searchEntityWithContactIdentifier:v44 fromSuggestion:1];

      if (v28)
      {
        v84 = v28;
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

    v47 = [v12 inlineCard];
    v48 = [v47 cardSections];
    v6 = [v48 firstObject];
    v28 = [v6 command];

    v49 = [v12 resultBundleId];
    LODWORD(v48) = [v49 isEqualToString:@"com.apple.spotlight.suggestionlist.parsec.entity"];

    if (v48)
    {
      if (v28)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v50 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithCommand:v28 fromSuggestion:1];
          v83 = v50;
          v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1];

          v51 = [v28 searchString];
          goto LABEL_70;
        }
      }

LABEL_72:
      v40 = 0;
LABEL_73:
      v36 = [(SPSearchSuggestionResult *)v14 completion];
      [(SPSearchSuggestionResult *)v14 setCompletion:v36];
LABEL_32:

LABEL_39:
      v51 = 0;
      goto LABEL_40;
    }

    if (v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = [v28 searchString];
LABEL_66:
        v51 = v75;
        goto LABEL_69;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v75 = [v28 utteranceText];
        goto LABEL_66;
      }
    }

    v76 = [v12 title];
    v77 = [v76 text];

    if (!v77)
    {
      goto LABEL_72;
    }

    v78 = [v12 title];
    v51 = [v78 text];

LABEL_69:
    v40 = 0;
LABEL_70:
    if (v51)
    {
      [(SPSearchSuggestionResult *)v14 setCompletion:v51];
LABEL_40:

      v52 = [(SPSearchSuggestionResult *)v14 completion];

      if (v52)
      {
        if (v40)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v51)
        {
          v53 = v51;
        }

        else
        {
          v53 = v10;
        }

        [(SPSearchSuggestionResult *)v14 setCompletion:v53];
        if (v40)
        {
LABEL_50:
          v60 = [(SPSearchSuggestionResult *)v14 contactIdentifier];
          if (v60 || ([(SFSearchResult_SpotlightExtras *)v14 personIdentifier], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v61 = [(SPSearchSuggestionResult *)v14 resultBundleId];
            [(SPSearchSuggestionResult *)v14 setIdentifier:v61];

            if (v60)
            {
LABEL_59:

              v69 = [(SPSearchSuggestionResult *)v14 suggestionsFeedbackData];
              [(SFSearchResult_SpotlightExtras *)v14 setSuggestionsFeedbackData:v69];

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
            v62 = [(SPSearchSuggestionResult *)v14 resultBundleId];
            v81[0] = v62;
            v63 = [(SPSearchSuggestionResult *)v14 completion];
            v64 = v63;
            if (v63)
            {
              v65 = v63;
            }

            else
            {
              v65 = &stru_1F556FE60;
            }

            v81[1] = v65;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
            v67 = v66 = v10;
            v68 = [v67 componentsJoinedByString:@":"];
            [(SPSearchSuggestionResult *)v14 setIdentifier:v68];

            v10 = v66;
            v6 = 0;
          }

          goto LABEL_59;
        }
      }

      v54 = [(SPSearchSuggestionResult *)v14 completion];

      if (v54)
      {
        v55 = [(SPSearchSuggestionResult *)v14 completion];
        v56 = SSEscapedStringForSearchQuery(v55);

        v6 = [(SPSearchSuggestionResult *)v14 completion];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"**=%@cwd || _kMDItemLaunchString=%@cwd", v56, v56, obj];
        v58 = v57 = v10;
        v59 = [SPSearchEntity searchEntityWithSearchString:v6 spotlightQueryString:v58 preferredBundleIDs:0];
        v82 = v59;
        v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];

        v10 = v57;
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

+ (id)searchSuggestionRankingResultWithSpotlightSuggestion:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[SPSearchSuggestionResult alloc] initWithSpotlightSuggestion:v11 query:v10 sectionBundleIdentifier:v9 queryId:a6];

  [objc_opt_class() updateRankingItemForSuggestionResult:v12];

  return v12;
}

- (SPSearchSuggestionResult)initWithSpotlightSuggestion:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6
{
  v46[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v44.receiver = self;
  v44.super_class = SPSearchSuggestionResult;
  v14 = [(SFSearchResult_SpotlightExtras *)&v44 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_38;
  }

  v40 = a6;
  objc_storeStrong(&v14->_spotlightSuggestion, a3);
  v16 = [(SPSearchSuggestionResult *)v15 localSuggestionFeatures];
  [(SPSearchSuggestionResult *)v15 setLocalFeatures:v16];

  v17 = [(SPSearchSuggestionResult *)v15 suggestionsFeedbackData];
  [(SFSearchResult_SpotlightExtras *)v15 setSuggestionsFeedbackData:v17];

  v18 = [v11 localizedAttributedSuggestion];
  v19 = [v18 string];

  v20 = @"com.apple.spotlight.suggestionlist.local";
  v21 = [(SPSearchSuggestionResult *)v15 localFeatures];
  v42 = v13;
  v43 = v12;
  v41 = v21;
  if (v21)
  {
    v22 = [v21 objectForKeyedSubscript:@"completionType"];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 intValue];
      if (v24 > 20)
      {
        if (v24 == 21)
        {
          v31 = SSResultBundleIdSuggestionLocalTopic;
        }

        else
        {
          if (v24 != 22)
          {
LABEL_19:
            v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:v11 symbolName:@"magnifyingglass" fromSuggestion:1];

            goto LABEL_20;
          }

          v31 = SSResultBundleIdSuggestionLocalCategory;
        }

        v25 = *v31;

        v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:v11 symbolName:@"magnifyingglass" fromSuggestion:1];

        v27 = 39;
        goto LABEL_25;
      }

      if (v24 != 5)
      {
        if (v24 == 6)
        {
          v25 = @"com.apple.spotlight.suggestionlist.photo";

          v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:v11 symbolName:@"magnifyingglass" fromSuggestion:1];

          v27 = 35;
LABEL_25:
          v20 = v25;
          goto LABEL_26;
        }

        goto LABEL_19;
      }

      v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:v11 symbolName:@"magnifyingglass" fromSuggestion:1];

LABEL_22:
      v27 = 34;
      goto LABEL_26;
    }
  }

  v28 = [v11 currentToken];
  v29 = [v28 tokenKind];

  switch(v29)
  {
    case 5:
      v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:v11 symbolName:@"magnifyingglass" fromSuggestion:1];
      goto LABEL_22;
    case 17:
      v30 = @"com.apple.spotlight.suggestionlist.photo";

      v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:v11 symbolName:@"magnifyingglass" fromSuggestion:1];
      v27 = 35;
      break;
    case 45:
      v30 = @"com.apple.spotlight.suggestionlist.local.topic";

      v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:v11 symbolName:@"magnifyingglass" fromSuggestion:1];
      v27 = 39;
      break;
    default:
      v26 = [(SPSearchEntity *)SPSearchCommandEntity searchEntityWithSpotlightSuggestion:v11 symbolName:@"magnifyingglass" fromSuggestion:1];
LABEL_20:
      v27 = 31;
      goto LABEL_26;
  }

  v20 = v30;
LABEL_26:
  [(SPSearchSuggestionResult *)v15 setQueryId:v40];
  if (v20)
  {
    v32 = v20;
  }

  else
  {
    v32 = &stru_1F556FE60;
  }

  if (v19)
  {
    v33 = v19;
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

  v36 = [MEMORY[0x1E69CA4F0] textWithString:v19];
  [(SPSearchSuggestionResult *)v15 setTitle:v36];

  v13 = v42;
  [(SPSearchSuggestionResult *)v15 setSectionBundleIdentifier:v42];
  [(SPSearchSuggestionResult *)v15 setType:v27];
  [(SPSearchSuggestionResult *)v15 setCompletion:v19];
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

  v12 = v43;
  objc_storeStrong(&v15->_searchEntities, v37);
  if (v26)
  {
  }

  objc_storeStrong(&v15->_query, a4);

LABEL_38:
  v38 = *MEMORY[0x1E69E9840];
  return v15;
}

- (SPSearchSuggestionResult)initWithSearchSuggestion:(id)a3 query:(id)a4 sectionBundleIdentifier:(id)a5 queryId:(unint64_t)a6
{
  v50[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v49.receiver = self;
  v49.super_class = SPSearchSuggestionResult;
  v14 = [(SFSearchResult_SpotlightExtras *)&v49 init];
  if (!v14)
  {
    goto LABEL_46;
  }

  v44 = a6;
  if (v11)
  {
    v15 = [v11 suggestion];
    if (objc_opt_respondsToSelector())
    {
      v16 = [v11 searchEntities];
      goto LABEL_7;
    }
  }

  else
  {
    v15 = v12;
  }

  v16 = 0;
LABEL_7:
  v17 = [(NSArray *)v16 lastObject];
  v18 = @"com.apple.spotlight.suggestionlist.local";
  [v11 score];
  v20 = v19;
  v21 = [v11 type];
  v47 = v13;
  v48 = v12;
  v45 = v17;
  obj = a4;
  if (v21 <= 6)
  {
    if (v21 > 4)
    {
      if (v21 == 5)
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

    if (v21 == 1)
    {
      v23 = @"com.apple.spotlight.suggestionlist.parsec";

      v22 = 17;
      goto LABEL_38;
    }

    if (v21 == 2)
    {
      v23 = @"com.apple.spotlight.suggestionlist.proactive";

      [v11 score];
      v20 = v24 * 128.0 * 1024.0 * 1024.0;
      v22 = 15;
LABEL_38:
      v18 = v23;
      goto LABEL_39;
    }

LABEL_29:
    if (v17 && [v17 isAppEntitySearch] || (objc_msgSend(v11, "bundleIdentifier"), v27 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v27, "isEqualToString:", @"com.apple.application"), v27, v43))
    {
      v23 = @"com.apple.application";

      v22 = 33;
    }

    else
    {
      if (![v13 isEqualToString:@"com.apple.searchd.searchThroughSuggestions"])
      {
        v22 = 16;
        goto LABEL_39;
      }

      v28 = [v11 bundleIdentifier];
      v29 = [v28 componentsSeparatedByString:@"."];
      v30 = [v29 lastObject];

      v23 = [@"com.apple.other:search_" stringByAppendingString:v30];

      v22 = 16;
    }

    goto LABEL_38;
  }

  if (v21 <= 11)
  {
    if (v21 == 7)
    {
      if (v17 && [v17 isPhotosEntitySearch])
      {
        v25 = @"com.apple.spotlight.suggestionlist.photo";

        v22 = 35;
        v18 = v25;
      }

      else
      {
        v22 = 31;
      }

      [v11 score];
      v20 = v26 * 128.0 * 1024.0 * 1024.0;
      goto LABEL_39;
    }

    if (v21 == 11)
    {
      v23 = @"com.apple.spotlight.suggestionlist.siri";

      v22 = 27;
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (v21 == 12)
  {
    v23 = @"com.apple.spotlight.websuggestionlist.parsec";

    v22 = 28;
    goto LABEL_38;
  }

  if (v21 == 14)
  {
    v23 = @"com.apple.spotlight.websuggestionlist.usertypedstring";

    v22 = 29;
    goto LABEL_38;
  }

  if (v21 != 15)
  {
    goto LABEL_29;
  }

  v22 = 34;
LABEL_39:
  [(SPSearchSuggestionResult *)v14 setQueryId:v44];
  [(SFSearchResult_SpotlightExtras *)v14 setScore:v20];
  [v11 score];
  [(SPSearchSuggestionResult *)v14 setRankingScore:?];
  if (v18)
  {
    v31 = v18;
  }

  else
  {
    v31 = &stru_1F556FE60;
  }

  if (v15)
  {
    v32 = v15;
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

  v35 = [MEMORY[0x1E69CA4F0] textWithString:v15];
  [(SPSearchSuggestionResult *)v14 setTitle:v35];

  v36 = [v11 fbr];
  [(SPSearchSuggestionResult *)v14 setFbr:v36];

  v13 = v47;
  [(SPSearchSuggestionResult *)v14 setSectionBundleIdentifier:v47];
  [(SPSearchSuggestionResult *)v14 setType:v22];
  [(SPSearchSuggestionResult *)v14 setCompletion:v15];
  [(SPSearchSuggestionResult *)v14 setResultBundleId:v18];
  v37 = [v11 serverFeatures];
  [(SPSearchSuggestionResult *)v14 setServerFeatures:v37];

  v38 = [(SPSearchSuggestionResult *)v14 suggestionsFeedbackData];
  [(SFSearchResult_SpotlightExtras *)v14 setSuggestionsFeedbackData:v38];

  [(SFSearchResult_SpotlightExtras *)v14 setProtectionClass:&stru_1F556FE60];
  searchEntities = v14->_searchEntities;
  v14->_searchEntities = v16;
  v40 = v16;

  objc_storeStrong(&v14->_suggestion, a3);
  objc_storeStrong(&v14->_query, obj);

  v12 = v48;
LABEL_46:

  v41 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = SPSearchSuggestionResult;
  v4 = a3;
  [(SFSearchResult_SpotlightExtras *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_query forKey:{@"query", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_suggestion forKey:@"suggestion"];
  [v4 encodeObject:self->_spotlightSuggestion forKey:@"spotlightSuggestion"];
  [v4 encodeObject:self->_searchEntities forKey:@"searchEntities"];
}

- (SPSearchSuggestionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SPSearchSuggestionResult;
  v5 = [(SFSearchResult_SpotlightExtras *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"query"];
    query = v5->_query;
    v5->_query = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suggestion"];
    suggestion = v5->_suggestion;
    v5->_suggestion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"spotlightSuggestion"];
    spotlightSuggestion = v5->_spotlightSuggestion;
    v5->_spotlightSuggestion = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"searchEntities"];
    searchEntities = v5->_searchEntities;
    v5->_searchEntities = v15;
  }

  return v5;
}

- (int64_t)compareByRank:(id)a3
{
  v4 = a3;
  v5 = [(SPSearchSuggestionResult *)self spotlightSuggestion];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 suggestion];

    if (v7)
    {
      v8 = -1;
      goto LABEL_25;
    }
  }

  v9 = [(SPSearchSuggestionResult *)self suggestion];
  if (v9)
  {
    v10 = v9;
    v11 = [v4 spotlightSuggestion];

    if (v11)
    {
      v8 = 1;
      goto LABEL_25;
    }
  }

  v12 = [(SPSearchSuggestionResult *)self suggestion];
  if (v12)
  {
    v13 = v12;
    v14 = [(SPSearchSuggestionResult *)self suggestion];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 suggestion], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = v15;
      v17 = [v4 suggestion];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v19 = [(SPSearchSuggestionResult *)self suggestion];
        v20 = [v4 suggestion];
        v21 = [v19 compare:v20];
LABEL_21:
        v8 = v21;

        goto LABEL_25;
      }
    }

    else
    {
    }
  }

  v22 = [(SPSearchSuggestionResult *)self suggestion];
  if (v22 && (v23 = v22, [v4 suggestion], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v24))
  {
    [(SPSearchSuggestionResult *)self rankingScore];
    v26 = v25;
    [v4 rankingScore];
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
    v28 = [(SPSearchSuggestionResult *)self spotlightSuggestion];
    if (v28)
    {
      v29 = v28;
      v30 = [v4 spotlightSuggestion];

      if (v30)
      {
        v19 = [(SPSearchSuggestionResult *)self spotlightSuggestion];
        v20 = [v4 spotlightSuggestion];
        v21 = [v19 compareByRank:v20];
        goto LABEL_21;
      }
    }

    v31 = [(SFSearchResult_SpotlightExtras *)self score];
    v33 = v32;
    v34 = [v4 score];
    if (__PAIR128__(v35, v34) < __PAIR128__(v33, v31))
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(SPSearchSuggestionResult *)self spotlightSuggestion];

  if (v4)
  {
    v5 = [(SPSearchSuggestionResult *)self spotlightSuggestion];
    v6 = [v5 features];

    if (localSuggestionFeatures_onceToken == -1)
    {
      if (v6)
      {
LABEL_4:
        v64 = 0;
        v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:localSuggestionFeatures_sFeatureClasses fromData:v6 error:&v64];
        v8 = v64;
        if (!v8 && v7)
        {
          [v3 addEntriesFromDictionary:v7];
          v9 = [v3 objectForKeyedSubscript:@"score"];
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
      if (v6)
      {
        goto LABEL_4;
      }
    }

    v8 = 0;
    v7 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v10 = [(SPSearchSuggestionResult *)self suggestion];

  if (v10)
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [(SPSearchSuggestionResult *)self suggestion];
    v13 = [v11 numberWithInt:{objc_msgSend(v12, "type")}];
    [v3 setValue:v13 forKey:@"stype"];

    v14 = MEMORY[0x1E696AD98];
    v15 = [(SPSearchSuggestionResult *)self suggestion];
    v16 = [v15 suggestion];
    v17 = [v14 numberWithUnsignedInteger:{objc_msgSend(v16, "length")}];
    [v3 setValue:v17 forKey:@"sslen"];

    v18 = MEMORY[0x1E696AD98];
    v19 = [(SPSearchSuggestionResult *)self suggestion];
    [v19 score];
    v20 = [v18 numberWithDouble:?];
    [v3 setValue:v20 forKey:@"sscore"];

    v21 = MEMORY[0x1E696AD98];
    v22 = [(SPSearchSuggestionResult *)self suggestion];
    [v22 score];
    v23 = [v21 numberWithDouble:?];
    [v3 setValue:v23 forKey:@"score"];

    v24 = [v3 objectForKeyedSubscript:@"score"];
    [v24 doubleValue];
    [(SPSearchSuggestionResult *)self setRankingScore:?];

    v25 = [(SPSearchSuggestionResult *)self suggestion];
    objc_opt_class();
    LOBYTE(v22) = objc_opt_isKindOfClass();

    if (v22)
    {
      v26 = [(SPSearchSuggestionResult *)self suggestion];
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v26, "queryLen")}];
      [v3 setValue:v27 forKey:@"queryLen"];

      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v26, "queryFragmentCount")}];
      [v3 setValue:v28 forKey:@"queryFragmentCount"];

      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v26, "queryCompletionCount")}];
      [v3 setValue:v29 forKey:@"queryCompletionCount"];

      v30 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(v26, "fragments")}];
      [v3 setValue:v30 forKey:@"fragments"];

      v31 = MEMORY[0x1E696AD98];
      [v26 age];
      v32 = [v31 numberWithDouble:?];
      [v3 setValue:v32 forKey:@"age"];

      v33 = MEMORY[0x1E696AD98];
      [v26 prob];
      v34 = [v33 numberWithDouble:?];
      [v3 setValue:v34 forKey:@"prob"];

      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v26, "maxscore")}];
      [v3 setValue:v35 forKey:@"maxscore"];

      v36 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v26, "weight")}];
      [v3 setValue:v36 forKey:@"weight"];

      v37 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v26, "parentWeight")}];
      [v3 setValue:v37 forKey:@"parentWeight"];

      v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v26, "rootWeight")}];
      [v3 setValue:v38 forKey:@"rootWeight"];

      v39 = MEMORY[0x1E696AD98];
      [v26 phraseScore];
      v40 = [v39 numberWithDouble:?];
      [v3 setValue:v40 forKey:@"phraseScore"];

      v41 = MEMORY[0x1E696AD98];
      [v26 punishment];
      v42 = [v41 numberWithDouble:?];
      [v3 setValue:v42 forKey:@"punishment"];

      v43 = MEMORY[0x1E696AD98];
      [v26 compositeScore];
      v45 = v44 == 1.79769313e308;
      v46 = 0.0;
      if (!v45)
      {
        [v26 compositeScore];
      }

      v47 = [v43 numberWithDouble:v46];
      [v3 setValue:v47 forKey:@"compositeScore"];

      v48 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v26, "completionType")}];
      [v3 setValue:v48 forKey:@"completionType"];

      v49 = MEMORY[0x1E696AD98];
      [v26 fieldWeight];
      v50 = [v49 numberWithFloat:?];
      [v3 setValue:v50 forKey:@"fieldWeight"];

      v51 = MEMORY[0x1E696AD98];
      if ([v26 isSingleThread])
      {
        v52 = 1.0;
      }

      else
      {
        v52 = 0.0;
      }

      v53 = [v51 numberWithDouble:v52];
      [v3 setValue:v53 forKey:@"isSingleThread"];

      v54 = MEMORY[0x1E696AD98];
      if ([v26 hasUsedDate])
      {
        v55 = 1.0;
      }

      else
      {
        v55 = 0.0;
      }

      v56 = [v54 numberWithDouble:v55];
      [v3 setValue:v56 forKey:@"hasUsedDate"];

      v57 = MEMORY[0x1E696AD98];
      if ([v26 isShortcut])
      {
        v58 = 1.0;
      }

      else
      {
        v58 = 0.0;
      }

      v59 = [v57 numberWithDouble:v58];
      [v3 setValue:v59 forKey:@"isShortcut"];

      v60 = MEMORY[0x1E696AD98];
      if ([v26 hasMultipleResults])
      {
        v61 = 1.0;
      }

      else
      {
        v61 = 0.0;
      }

      v62 = [v60 numberWithDouble:v61];
      [v3 setValue:v62 forKey:@"hasMultipleResults"];
    }
  }

LABEL_27:

  return v3;
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