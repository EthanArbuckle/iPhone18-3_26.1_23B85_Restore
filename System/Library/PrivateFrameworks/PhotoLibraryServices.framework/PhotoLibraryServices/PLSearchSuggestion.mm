@interface PLSearchSuggestion
- (BOOL)isEqual:(id)a3;
- (PLSearchSuggestion)initWithContentString:(id)a3 categoriesType:(unint64_t)a4 suggestionType:(unint64_t)a5 matchedAssetsCount:(unint64_t)a6 matchedCollectionsCount:(unint64_t)a7 matchedText:(id)a8 matchRangeOfSearchText:(_NSRange)a9 suggestionComponents:(id)a10 nextTokenSuggestions:(id)a11;
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
  v3 = [(PLSearchSuggestion *)self categoriesType];
  if (v3 > 0x2C)
  {
    v4 = @"undefined";
  }

  else
  {
    v4 = off_1E75702D8[v3];
  }

  v5 = v4;
  v6 = [(PLSearchSuggestion *)self suggestionType];
  if (v6 - 1 > 3)
  {
    v7 = @"PLSearchSuggestionTypeNone";
  }

  else
  {
    v7 = off_1E756C590[v6 - 1];
  }

  v8 = v7;
  v22.location = [(PLSearchSuggestion *)self matchRangeOfSearchText];
  v9 = NSStringFromRange(v22);
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(PLSearchSuggestion *)self contentString];
  v12 = [(PLSearchSuggestion *)self matchedAssetsCount];
  v13 = [(PLSearchSuggestion *)self matchedCollectionsCount];
  v14 = [(PLSearchSuggestion *)self matchedText];
  [(PLSearchSuggestion *)self score];
  v16 = v15;
  v17 = [(PLSearchSuggestion *)self suggestionComponents];
  v18 = [(PLSearchSuggestion *)self nextTokenSuggestions];
  v19 = [v10 stringWithFormat:@"content string: %@, categories type: %@, suggestion type: %@, matched assets count: %tu, matched collections count: %tu, match text: %@, match range of search text: %@, score: %f, suggestion components: %@, next token suggestions: %@", v11, v5, v8, v12, v13, v14, v9, *&v16, v17, v18];

  return v19;
}

- (unint64_t)hash
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [(PLSearchSuggestion *)self contentString];
  v4 = [v3 hash];
  v5 = [(PLSearchSuggestion *)self categoriesType];
  v6 = v5 ^ [(PLSearchSuggestion *)self suggestionType]^ v4;
  v7 = [(PLSearchSuggestion *)self matchedAssetsCount];
  v8 = v7 ^ [(PLSearchSuggestion *)self matchedCollectionsCount];
  v9 = [(PLSearchSuggestion *)self matchedText];
  v10 = v6 ^ v8 ^ [v9 hash];
  [(PLSearchSuggestion *)self matchRangeOfSearchText];
  v12 = v10 ^ v11 ^ [(PLSearchSuggestion *)self matchRangeOfSearchText];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [(PLSearchSuggestion *)self suggestionComponents];
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v13);
        }

        v12 ^= [*(*(&v28 + 1) + 8 * v17++) hash];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v15);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = [(PLSearchSuggestion *)self nextTokenSuggestions];
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(v18);
        }

        v12 ^= [*(*(&v24 + 1) + 8 * v22++) hash];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v20);
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(PLSearchSuggestion *)self contentString];
    v7 = [v5 contentString];
    v8 = [v6 isEqualToString:v7];

    v9 = [(PLSearchSuggestion *)self categoriesType];
    v10 = [v5 categoriesType];
    v46 = [(PLSearchSuggestion *)self suggestionType];
    v45 = [v5 suggestionType];
    v44 = [(PLSearchSuggestion *)self matchedAssetsCount];
    v43 = [v5 matchedAssetsCount];
    v42 = [(PLSearchSuggestion *)self matchedCollectionsCount];
    v41 = [v5 matchedCollectionsCount];
    v11 = [(PLSearchSuggestion *)self matchedText];
    v12 = [v5 matchedText];
    v40 = [v11 isEqualToString:v12];

    v39 = [(PLSearchSuggestion *)self matchRangeOfSearchText];
    v14 = v13;
    v37 = [v5 matchRangeOfSearchText];
    v38 = v15;
    [(PLSearchSuggestion *)self score];
    v17 = v16;
    [v5 score];
    v19 = v18;
    v20 = [(PLSearchSuggestion *)self suggestionComponents];
    v21 = [v5 suggestionComponents];
    v36 = [v20 isEqualToArray:v21];

    v22 = [(PLSearchSuggestion *)self nextTokenSuggestions];
    if (v22 && ([v5 nextTokenSuggestions], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v24 = v23;
      v25 = [(PLSearchSuggestion *)self nextTokenSuggestions];
      [v5 nextTokenSuggestions];
      v35 = v14;
      v26 = v10;
      v27 = v9;
      v29 = v28 = v8;
      v30 = [v25 isEqualToArray:v29];

      v8 = v28;
      v9 = v27;
      v10 = v26;
      v14 = v35;
    }

    else
    {
      v24 = [(PLSearchSuggestion *)self nextTokenSuggestions];
      v25 = [v5 nextTokenSuggestions];
      v30 = v24 == v25;
    }

    if (v9 == v10)
    {
      v32 = v8;
    }

    else
    {
      v32 = 0;
    }

    if (v46 != v45)
    {
      v32 = 0;
    }

    if (v44 != v43)
    {
      v32 = 0;
    }

    if (v42 != v41)
    {
      v32 = 0;
    }

    v33 = v32 & v40;
    if (v39 != v37)
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
  v3 = [(PLSearchSuggestion *)self suggestionComponents];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v13 + 1) + 8 * i) score];
        v7 = v7 + v9;
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v10 = [(PLSearchSuggestion *)self suggestionComponents];
  v11 = [v10 count];

  return v7 / v11;
}

- (PLSearchSuggestion)initWithContentString:(id)a3 categoriesType:(unint64_t)a4 suggestionType:(unint64_t)a5 matchedAssetsCount:(unint64_t)a6 matchedCollectionsCount:(unint64_t)a7 matchedText:(id)a8 matchRangeOfSearchText:(_NSRange)a9 suggestionComponents:(id)a10 nextTokenSuggestions:(id)a11
{
  v18 = a3;
  v19 = a8;
  v20 = a10;
  v21 = a11;
  if (![v18 length])
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestion.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"contentString.length > 0"}];
  }

  if (![v20 count])
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PLSearchSuggestion.m" lineNumber:16 description:{@"Invalid parameter not satisfying: %@", @"suggestionComponents.count > 0"}];
  }

  v34.receiver = self;
  v34.super_class = PLSearchSuggestion;
  v22 = [(PLSearchSuggestion *)&v34 init];
  if (v22)
  {
    v23 = [v18 copy];
    contentString = v22->_contentString;
    v22->_contentString = v23;

    v22->_categoriesType = a4;
    v22->_suggestionType = a5;
    v22->_matchedAssetsCount = a6;
    v22->_matchedCollectionsCount = a7;
    v25 = [v19 copy];
    matchedText = v22->_matchedText;
    v22->_matchedText = v25;

    v22->_matchRangeOfSearchText = a9;
    v27 = [v20 copy];
    suggestionComponents = v22->_suggestionComponents;
    v22->_suggestionComponents = v27;

    v29 = [v21 copy];
    nextTokenSuggestions = v22->_nextTokenSuggestions;
    v22->_nextTokenSuggestions = v29;
  }

  return v22;
}

@end