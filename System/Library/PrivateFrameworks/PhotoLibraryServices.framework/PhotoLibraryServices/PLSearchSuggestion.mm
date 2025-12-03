@interface PLSearchSuggestion
- (BOOL)isEqual:(id)equal;
- (PLSearchSuggestion)initWithContentString:(id)string categoriesType:(unint64_t)type suggestionType:(unint64_t)suggestionType matchedAssetsCount:(unint64_t)count matchedCollectionsCount:(unint64_t)collectionsCount matchedText:(id)text matchRangeOfSearchText:(_NSRange)searchText suggestionComponents:(id)self0 nextTokenSuggestions:(id)self1;
- (_NSRange)matchRangeOfSearchText;
- (float)score;
- (id)description;
- (unint64_t)hash;
@end

@implementation PLSearchSuggestion

- (_NSRange)matchRangeOfSearchText
{
  length = self->_matchRangeOfSearchText.length;
  location = self->_matchRangeOfSearchText.location;
  result.length = length;
  result.location = location;
  return result;
}

- (id)description
{
  categoriesType = [(PLSearchSuggestion *)self categoriesType];
  if (categoriesType > 0x2C)
  {
    v4 = @"undefined";
  }

  else
  {
    v4 = off_1E75702D8[categoriesType];
  }

  v5 = v4;
  suggestionType = [(PLSearchSuggestion *)self suggestionType];
  if (suggestionType - 1 > 3)
  {
    v7 = @"PLSearchSuggestionTypeNone";
  }

  else
  {
    v7 = off_1E756C590[suggestionType - 1];
  }

  v8 = v7;
  v22.location = [(PLSearchSuggestion *)self matchRangeOfSearchText];
  v9 = NSStringFromRange(v22);
  v10 = MEMORY[0x1E696AEC0];
  contentString = [(PLSearchSuggestion *)self contentString];
  matchedAssetsCount = [(PLSearchSuggestion *)self matchedAssetsCount];
  matchedCollectionsCount = [(PLSearchSuggestion *)self matchedCollectionsCount];
  matchedText = [(PLSearchSuggestion *)self matchedText];
  [(PLSearchSuggestion *)self score];
  v16 = v15;
  suggestionComponents = [(PLSearchSuggestion *)self suggestionComponents];
  nextTokenSuggestions = [(PLSearchSuggestion *)self nextTokenSuggestions];
  v19 = [v10 stringWithFormat:@"content string: %@, categories type: %@, suggestion type: %@, matched assets count: %tu, matched collections count: %tu, match text: %@, match range of search text: %@, score: %f, suggestion components: %@, next token suggestions: %@", contentString, v5, v8, matchedAssetsCount, matchedCollectionsCount, matchedText, v9, *&v16, suggestionComponents, nextTokenSuggestions];

  return v19;
}

- (unint64_t)hash
{
  v34 = *MEMORY[0x1E69E9840];
  contentString = [(PLSearchSuggestion *)self contentString];
  v4 = [contentString hash];
  categoriesType = [(PLSearchSuggestion *)self categoriesType];
  v6 = categoriesType ^ [(PLSearchSuggestion *)self suggestionType]^ v4;
  matchedAssetsCount = [(PLSearchSuggestion *)self matchedAssetsCount];
  v8 = matchedAssetsCount ^ [(PLSearchSuggestion *)self matchedCollectionsCount];
  matchedText = [(PLSearchSuggestion *)self matchedText];
  v10 = v6 ^ v8 ^ [matchedText hash];
  [(PLSearchSuggestion *)self matchRangeOfSearchText];
  v12 = v10 ^ v11 ^ [(PLSearchSuggestion *)self matchRangeOfSearchText];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  suggestionComponents = [(PLSearchSuggestion *)self suggestionComponents];
  v14 = [suggestionComponents countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(suggestionComponents);
        }

        v12 ^= [*(*(&v28 + 1) + 8 * v17++) hash];
      }

      while (v15 != v17);
      v15 = [suggestionComponents countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v15);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  nextTokenSuggestions = [(PLSearchSuggestion *)self nextTokenSuggestions];
  v19 = [nextTokenSuggestions countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(nextTokenSuggestions);
        }

        v12 ^= [*(*(&v24 + 1) + 8 * v22++) hash];
      }

      while (v20 != v22);
      v20 = [nextTokenSuggestions countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v20);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    contentString = [(PLSearchSuggestion *)self contentString];
    contentString2 = [v5 contentString];
    v8 = [contentString isEqualToString:contentString2];

    categoriesType = [(PLSearchSuggestion *)self categoriesType];
    categoriesType2 = [v5 categoriesType];
    suggestionType = [(PLSearchSuggestion *)self suggestionType];
    suggestionType2 = [v5 suggestionType];
    matchedAssetsCount = [(PLSearchSuggestion *)self matchedAssetsCount];
    matchedAssetsCount2 = [v5 matchedAssetsCount];
    matchedCollectionsCount = [(PLSearchSuggestion *)self matchedCollectionsCount];
    matchedCollectionsCount2 = [v5 matchedCollectionsCount];
    matchedText = [(PLSearchSuggestion *)self matchedText];
    matchedText2 = [v5 matchedText];
    v40 = [matchedText isEqualToString:matchedText2];

    matchRangeOfSearchText = [(PLSearchSuggestion *)self matchRangeOfSearchText];
    v14 = v13;
    matchRangeOfSearchText2 = [v5 matchRangeOfSearchText];
    v38 = v15;
    [(PLSearchSuggestion *)self score];
    v17 = v16;
    [v5 score];
    v19 = v18;
    suggestionComponents = [(PLSearchSuggestion *)self suggestionComponents];
    suggestionComponents2 = [v5 suggestionComponents];
    v36 = [suggestionComponents isEqualToArray:suggestionComponents2];

    nextTokenSuggestions = [(PLSearchSuggestion *)self nextTokenSuggestions];
    if (nextTokenSuggestions && ([v5 nextTokenSuggestions], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      nextTokenSuggestions3 = v23;
      nextTokenSuggestions2 = [(PLSearchSuggestion *)self nextTokenSuggestions];
      [v5 nextTokenSuggestions];
      v35 = v14;
      v26 = categoriesType2;
      v27 = categoriesType;
      v29 = v28 = v8;
      v30 = [nextTokenSuggestions2 isEqualToArray:v29];

      v8 = v28;
      categoriesType = v27;
      categoriesType2 = v26;
      v14 = v35;
    }

    else
    {
      nextTokenSuggestions3 = [(PLSearchSuggestion *)self nextTokenSuggestions];
      nextTokenSuggestions2 = [v5 nextTokenSuggestions];
      v30 = nextTokenSuggestions3 == nextTokenSuggestions2;
    }

    if (categoriesType == categoriesType2)
    {
      v32 = v8;
    }

    else
    {
      v32 = 0;
    }

    if (suggestionType != suggestionType2)
    {
      v32 = 0;
    }

    if (matchedAssetsCount != matchedAssetsCount2)
    {
      v32 = 0;
    }

    if (matchedCollectionsCount != matchedCollectionsCount2)
    {
      v32 = 0;
    }

    v33 = v32 & v40;
    if (matchRangeOfSearchText != matchRangeOfSearchText2)
    {
      v33 = 0;
    }

    if (v14 != v38)
    {
      v33 = 0;
    }

    if (v17 != v19)
    {
      v33 = 0;
    }

    v31 = v33 & v36 & v30;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (float)score
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  suggestionComponents = [(PLSearchSuggestion *)self suggestionComponents];
  v4 = [suggestionComponents countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(suggestionComponents);
        }

        [*(*(&v13 + 1) + 8 * i) score];
        v7 = v7 + v9;
      }

      v5 = [suggestionComponents countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  suggestionComponents2 = [(PLSearchSuggestion *)self suggestionComponents];
  v11 = [suggestionComponents2 count];

  return v7 / v11;
}

- (PLSearchSuggestion)initWithContentString:(id)string categoriesType:(unint64_t)type suggestionType:(unint64_t)suggestionType matchedAssetsCount:(unint64_t)count matchedCollectionsCount:(unint64_t)collectionsCount matchedText:(id)text matchRangeOfSearchText:(_NSRange)searchText suggestionComponents:(id)self0 nextTokenSuggestions:(id)self1
{
  stringCopy = string;
  textCopy = text;
  componentsCopy = components;
  suggestionsCopy = suggestions;
  if (![stringCopy length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSearchSuggestion.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"contentString.length > 0"}];
  }

  if (![componentsCopy count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestion.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"suggestionComponents.count > 0"}];
  }

  v34.receiver = self;
  v34.super_class = PLSearchSuggestion;
  v22 = [(PLSearchSuggestion *)&v34 init];
  if (v22)
  {
    v23 = [stringCopy copy];
    contentString = v22->_contentString;
    v22->_contentString = v23;

    v22->_categoriesType = type;
    v22->_suggestionType = suggestionType;
    v22->_matchedAssetsCount = count;
    v22->_matchedCollectionsCount = collectionsCount;
    v25 = [textCopy copy];
    matchedText = v22->_matchedText;
    v22->_matchedText = v25;

    v22->_matchRangeOfSearchText = searchText;
    v27 = [componentsCopy copy];
    suggestionComponents = v22->_suggestionComponents;
    v22->_suggestionComponents = v27;

    v29 = [suggestionsCopy copy];
    nextTokenSuggestions = v22->_nextTokenSuggestions;
    v22->_nextTokenSuggestions = v29;
  }

  return v22;
}

@end