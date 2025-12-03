@interface PSIRankedGroupV2
- (BOOL)isEqual:(id)equal;
- (PSIRankedGroupV2)initWithGroup:(id)group displayString:(id)string isMePerson:(BOOL)person;
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
  isMePerson = [(PSIRankedGroupV2 *)self isMePerson];
  v21 = objc_alloc(MEMORY[0x1E695DF90]);
  v27[0] = @"content_string";
  group = [(PSIRankedGroupV2 *)self group];
  contentString = [group contentString];
  v28[0] = contentString;
  v27[1] = @"display_string";
  displayString = [(PSIRankedGroupV2 *)self displayString];
  v28[1] = displayString;
  v27[2] = @"group_id";
  v4 = MEMORY[0x1E696AD98];
  group2 = [(PSIRankedGroupV2 *)self group];
  v22 = [v4 numberWithUnsignedLongLong:{objc_msgSend(group2, "groupId")}];
  v28[2] = v22;
  v27[3] = @"index_category";
  v5 = MEMORY[0x1E696AD98];
  group3 = [(PSIRankedGroupV2 *)self group];
  v6 = [v5 numberWithShort:{objc_msgSend(group3, "category")}];
  v28[3] = v6;
  v27[4] = @"graph_ranking_score";
  v7 = MEMORY[0x1E696AD98];
  [(PSIRankedGroupV2 *)self graphRankingScore];
  v8 = [v7 numberWithFloat:?];
  v28[4] = v8;
  v27[5] = @"is_me_person";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:isMePerson];
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
  group4 = [(PSIRankedGroupV2 *)self group];
  lookupIdentifier = [group4 lookupIdentifier];
  null = lookupIdentifier;
  if (!lookupIdentifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v28[8] = null;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:9];
  v17 = [v21 initWithDictionary:v16];

  if (!lookupIdentifier)
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
  group = [(PSIRankedGroupV2 *)self group];
  displayString = [(PSIRankedGroupV2 *)self displayString];
  [(PSIRankedGroupV2 *)self rankingScore];
  v7 = [v3 stringByAppendingFormat:@"group: %@, display string: %@, ranking score: %f, nAssetIds: %tu", group, displayString, v6, -[PSIRankedGroupV2 assetCount](self, "assetCount")];

  return v7;
}

- (unint64_t)hash
{
  isMePerson = [(PSIRankedGroupV2 *)self isMePerson];
  assetCount = [(PSIRankedGroupV2 *)self assetCount];
  group = [(PSIRankedGroupV2 *)self group];
  v6 = assetCount ^ [group groupId];

  return v6 ^ isMePerson;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      group = [(PSIRankedGroupV2 *)self group];
      groupId = [group groupId];
      group2 = [(PSIRankedGroupV2 *)v5 group];
      groupId2 = [group2 groupId];

      if (groupId == groupId2 && (v10 = [(PSIRankedGroupV2 *)self assetCount], v10 == [(PSIRankedGroupV2 *)v5 assetCount]))
      {
        suggestionComponent = [(PSIRankedGroupV2 *)self suggestionComponent];
        suggestionComponent2 = [(PSIRankedGroupV2 *)v5 suggestionComponent];
        v13 = [suggestionComponent isEqual:suggestionComponent2];
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
      group = [(PSIRankedGroupV2 *)self group];
      +[PSISuggestionRanker initialSuggestionScoreForIndexCategory:](PSISuggestionRanker, "initialSuggestionScoreForIndexCategory:", [group category]);
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
  group = [(PSIRankedGroupV2 *)self group];
  category = [group category];

  return category;
}

- (int64_t)assetCount
{
  group = [(PSIRankedGroupV2 *)self group];
  if ([group assetIds])
  {
    group2 = [(PSIRankedGroupV2 *)self group];
    Count = CFArrayGetCount([group2 assetIds]);
  }

  else
  {
    Count = 0;
  }

  return Count;
}

- (PSIRankedGroupV2)initWithGroup:(id)group displayString:(id)string isMePerson:(BOOL)person
{
  personCopy = person;
  groupCopy = group;
  stringCopy = string;
  v27.receiver = self;
  v27.super_class = PSIRankedGroupV2;
  v11 = [(PSIRankedGroupV2 *)&v27 init];
  if (!v11)
  {
LABEL_13:
    v15 = v11;
    goto LABEL_14;
  }

  contentString = [groupCopy contentString];
  v13 = [contentString length];

  if (v13)
  {
    if (personCopy)
    {
      contentString2 = PLServicesLocalizedFrameworkString();
    }

    else if ([stringCopy length])
    {
      contentString2 = [stringCopy copy];
    }

    else
    {
      contentString2 = [groupCopy contentString];
    }

    displayString = v11->_displayString;
    v11->_displayString = contentString2;

    objc_storeStrong(&v11->_group, group);
    v11->_isMePerson = personCopy;
    v11->_rankingScore = 9.2234e18;
    v17 = [PLSearchSuggestionComponent alloc];
    contentString3 = [groupCopy contentString];
    groupId = [groupCopy groupId];
    owningGroupId = [groupCopy owningGroupId];
    if ([groupCopy assetIds])
    {
      Count = CFArrayGetCount([groupCopy assetIds]);
    }

    else
    {
      Count = 0;
    }

    category = [groupCopy category];
    lookupIdentifier = [groupCopy lookupIdentifier];
    [(PSIRankedGroupV2 *)v11 rankingScore];
    v24 = [(PLSearchSuggestionComponent *)v17 initWithContentString:contentString3 groupId:groupId owningGroupId:owningGroupId matchedAssetsCount:Count matchedCollectionsCount:0 indexCategory:category lookupIdentifier:lookupIdentifier score:4 suggestionType:0 completionSuggestionDateComponents:0 matchedText:0x7FFFFFFFFFFFFFFFLL matchRangeOfSearchText:0 matchType:0];
    suggestionComponent = v11->_suggestionComponent;
    v11->_suggestionComponent = v24;

    goto LABEL_13;
  }

  v15 = 0;
LABEL_14:

  return v15;
}

@end