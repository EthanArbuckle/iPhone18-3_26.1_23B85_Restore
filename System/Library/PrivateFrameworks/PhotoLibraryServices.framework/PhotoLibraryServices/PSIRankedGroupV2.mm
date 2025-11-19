@interface PSIRankedGroupV2
- (BOOL)isEqual:(id)a3;
- (PSIRankedGroupV2)initWithGroup:(id)a3 displayString:(id)a4 isMePerson:(BOOL)a5;
- (float)rankingScore;
- (id)description;
- (id)jsonDictionary;
- (int64_t)assetCount;
- (unint64_t)hash;
- (unint64_t)searchIndexingCategory;
@end

@implementation PSIRankedGroupV2

- (id)jsonDictionary
{
  v28[9] = *MEMORY[0x1E69E9840];
  v3 = [(PSIRankedGroupV2 *)self isMePerson];
  v21 = objc_alloc(MEMORY[0x1E695DF90]);
  v27[0] = @"content_string";
  v26 = [(PSIRankedGroupV2 *)self group];
  v25 = [v26 contentString];
  v28[0] = v25;
  v27[1] = @"display_string";
  v24 = [(PSIRankedGroupV2 *)self displayString];
  v28[1] = v24;
  v27[2] = @"group_id";
  v4 = MEMORY[0x1E696AD98];
  v23 = [(PSIRankedGroupV2 *)self group];
  v22 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v23, "groupId")}];
  v28[2] = v22;
  v27[3] = @"index_category";
  v5 = MEMORY[0x1E696AD98];
  v20 = [(PSIRankedGroupV2 *)self group];
  v6 = [v5 numberWithShort:{objc_msgSend(v20, "category")}];
  v28[3] = v6;
  v27[4] = @"graph_ranking_score";
  v7 = MEMORY[0x1E696AD98];
  [(PSIRankedGroupV2 *)self graphRankingScore];
  v8 = [v7 numberWithFloat:?];
  v28[4] = v8;
  v27[5] = @"is_me_person";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
  v28[5] = v9;
  v27[6] = @"asset_count";
  v10 = [MEMORY[0x1E696AD98] numberWithLong:{-[PSIRankedGroupV2 assetCount](self, "assetCount")}];
  v28[6] = v10;
  v27[7] = @"overall_ranking_score";
  v11 = MEMORY[0x1E696AD98];
  [(PSIRankedGroupV2 *)self rankingScore];
  v12 = [v11 numberWithFloat:?];
  v28[7] = v12;
  v27[8] = @"lookup_identifier";
  v13 = [(PSIRankedGroupV2 *)self group];
  v14 = [v13 lookupIdentifier];
  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v28[8] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:9];
  v17 = [v21 initWithDictionary:v16];

  if (!v14)
  {
  }

  v18 = [v17 copy];

  return v18;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = PSIRankedGroupV2;
  v3 = [(PSIRankedGroupV2 *)&v9 description];
  v4 = [(PSIRankedGroupV2 *)self group];
  v5 = [(PSIRankedGroupV2 *)self displayString];
  [(PSIRankedGroupV2 *)self rankingScore];
  v7 = [v3 stringByAppendingFormat:@"group: %@, display string: %@, ranking score: %f, nAssetIds: %tu", v4, v5, v6, -[PSIRankedGroupV2 assetCount](self, "assetCount")];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(PSIRankedGroupV2 *)self isMePerson];
  v4 = [(PSIRankedGroupV2 *)self assetCount];
  v5 = [(PSIRankedGroupV2 *)self group];
  v6 = v4 ^ [v5 groupId];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PSIRankedGroupV2 *)self group];
      v7 = [v6 groupId];
      v8 = [(PSIRankedGroupV2 *)v5 group];
      v9 = [v8 groupId];

      if (v7 == v9 && (v10 = [(PSIRankedGroupV2 *)self assetCount], v10 == [(PSIRankedGroupV2 *)v5 assetCount]))
      {
        v11 = [(PSIRankedGroupV2 *)self suggestionComponent];
        v12 = [(PSIRankedGroupV2 *)v5 suggestionComponent];
        v13 = [v11 isEqual:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (float)rankingScore
{
  result = self->_rankingScore;
  if (result == 9.2234e18)
  {
    if ([(PSIRankedGroupV2 *)self assetCount])
    {
      v4 = [(PSIRankedGroupV2 *)self group];
      +[PSISuggestionRanker initialSuggestionScoreForIndexCategory:](PSISuggestionRanker, "initialSuggestionScoreForIndexCategory:", [v4 category]);
      v6 = v5;

      [(PSIRankedGroupV2 *)self graphRankingScore];
      result = v6 + v7;
    }

    else
    {
      result = 0.0;
    }

    self->_rankingScore = result;
  }

  return result;
}

- (unint64_t)searchIndexingCategory
{
  v2 = [(PSIRankedGroupV2 *)self group];
  v3 = [v2 category];

  return v3;
}

- (int64_t)assetCount
{
  v3 = [(PSIRankedGroupV2 *)self group];
  if ([v3 assetIds])
  {
    v4 = [(PSIRankedGroupV2 *)self group];
    Count = CFArrayGetCount([v4 assetIds]);
  }

  else
  {
    Count = 0;
  }

  return Count;
}

- (PSIRankedGroupV2)initWithGroup:(id)a3 displayString:(id)a4 isMePerson:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  v27.receiver = self;
  v27.super_class = PSIRankedGroupV2;
  v11 = [(PSIRankedGroupV2 *)&v27 init];
  if (!v11)
  {
LABEL_13:
    v15 = v11;
    goto LABEL_14;
  }

  v12 = [v9 contentString];
  v13 = [v12 length];

  if (v13)
  {
    if (v5)
    {
      v14 = PLServicesLocalizedFrameworkString();
    }

    else if ([v10 length])
    {
      v14 = [v10 copy];
    }

    else
    {
      v14 = [v9 contentString];
    }

    displayString = v11->_displayString;
    v11->_displayString = v14;

    objc_storeStrong(&v11->_group, a3);
    v11->_isMePerson = v5;
    v11->_rankingScore = 9.2234e18;
    v17 = [PLSearchSuggestionComponent alloc];
    v18 = [v9 contentString];
    v19 = [v9 groupId];
    v20 = [v9 owningGroupId];
    if ([v9 assetIds])
    {
      Count = CFArrayGetCount([v9 assetIds]);
    }

    else
    {
      Count = 0;
    }

    v22 = [v9 category];
    v23 = [v9 lookupIdentifier];
    [(PSIRankedGroupV2 *)v11 rankingScore];
    v24 = [(PLSearchSuggestionComponent *)v17 initWithContentString:v18 groupId:v19 owningGroupId:v20 matchedAssetsCount:Count matchedCollectionsCount:0 indexCategory:v22 lookupIdentifier:v23 score:4 suggestionType:0 completionSuggestionDateComponents:0 matchedText:0x7FFFFFFFFFFFFFFFLL matchRangeOfSearchText:0 matchType:0];
    suggestionComponent = v11->_suggestionComponent;
    v11->_suggestionComponent = v24;

    goto LABEL_13;
  }

  v15 = 0;
LABEL_14:

  return v15;
}

@end