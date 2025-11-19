@interface PSILocationSuggestionPair
+ (id)searchSuggestionWithNextTokenPairingForPrimarySuggestion:(id)a3 nextTokenSuggestion:(id)a4;
- (BOOL)containsSuggestion:(id)a3;
- (PSILocationSuggestionPair)initWithSuggestion:(id)a3 otherSuggestion:(id)a4 score:(unint64_t)a5;
- (id)description;
- (id)pairedSuggestions;
- (id)searchSuggestionWithNextTokenPairing;
@end

@implementation PSILocationSuggestionPair

- (id)description
{
  v3 = [(PSILocationSuggestionPair *)self pairedSuggestions];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v3 objectAtIndexedSubscript:0];
    v7 = [v6 contentString];
    v8 = [v4 objectAtIndexedSubscript:1];
    v9 = [v8 contentString];
    v10 = [v5 stringWithFormat:@"%@, %@: %tu", v7, v9, -[PSILocationSuggestionPair score](self, "score")];
  }

  else
  {
    v10 = @"empty";
  }

  return v10;
}

- (id)searchSuggestionWithNextTokenPairing
{
  v2 = [(PSILocationSuggestionPair *)self pairedSuggestions];
  if ([v2 count])
  {
    v3 = [v2 objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = 0;
  }

  if ([v2 count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = [v2 objectAtIndexedSubscript:1];
    v5 = v4;
    if (v3 && v4)
    {
      v6 = [objc_opt_class() searchSuggestionWithNextTokenPairingForPrimarySuggestion:v3 nextTokenSuggestion:v4];
    }
  }

  return 0;
}

- (BOOL)containsSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(PSILocationSuggestionPair *)self pairedSuggestions];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)pairedSuggestions
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = [(PSILocationSuggestionPair *)self suggestion];
  v4 = [v3 suggestionComponents];
  v5 = [v4 firstObject];
  v6 = [v5 indexCategory];

  v7 = [(PSILocationSuggestionPair *)self otherSuggestion];
  v8 = [v7 suggestionComponents];
  v9 = [v8 firstObject];
  v10 = [v9 indexCategory];

  if ([(PSILocationSuggestionPair *)self score]&& [PSISuggestionQueryUtilities suggestionCategoriesPairingIsValid:v6 otherCategory:v10])
  {
    if (v6 <= v10)
    {
      v11 = [(PSILocationSuggestionPair *)self suggestion];
      v16[0] = v11;
      v12 = [(PSILocationSuggestionPair *)self otherSuggestion];
      v16[1] = v12;
      v13 = v16;
    }

    else
    {
      v11 = [(PSILocationSuggestionPair *)self otherSuggestion];
      v17[0] = v11;
      v12 = [(PSILocationSuggestionPair *)self suggestion];
      v17[1] = v12;
      v13 = v17;
    }

    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (PSILocationSuggestionPair)initWithSuggestion:(id)a3 otherSuggestion:(id)a4 score:(unint64_t)a5
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PSILocationSuggestionPair.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"suggestion"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"PSILocationSuggestionPair.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"otherSuggestion"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PSILocationSuggestionPair;
  v13 = [(PSILocationSuggestionPair *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_suggestion, a3);
    objc_storeStrong(&v14->_otherSuggestion, a4);
    v14->_score = a5;
  }

  return v14;
}

+ (id)searchSuggestionWithNextTokenPairingForPrimarySuggestion:(id)a3 nextTokenSuggestion:(id)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:a1 file:@"PSILocationSuggestionPair.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"suggestion"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v31 = [MEMORY[0x1E696AAA8] currentHandler];
  [v31 handleFailureInMethod:a2 object:a1 file:@"PSILocationSuggestionPair.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"nextTokenSuggestion"}];

LABEL_3:
  v34 = [PLSearchSuggestion alloc];
  v10 = [v9 contentString];
  v11 = [v9 categoriesType];
  v12 = [v9 matchedAssetsCount];
  v13 = [v9 matchedCollectionsCount];
  v14 = [v9 matchedText];
  v15 = [v9 matchRangeOfSearchText];
  v17 = v16;
  v18 = [v9 suggestionComponents];
  v32 = [(PLSearchSuggestion *)v34 initWithContentString:v10 categoriesType:v11 suggestionType:2 matchedAssetsCount:v12 matchedCollectionsCount:v13 matchedText:v14 matchRangeOfSearchText:v15 suggestionComponents:v17 nextTokenSuggestions:v18, 0];

  v35 = [PLSearchSuggestion alloc];
  v19 = [v7 contentString];
  v33 = [v7 categoriesType];
  v20 = [v7 matchedAssetsCount];
  v21 = [v7 matchedCollectionsCount];
  v22 = [v7 matchedText];
  v23 = [v7 matchRangeOfSearchText];
  v25 = v24;
  v26 = [v7 suggestionComponents];
  v36[0] = v32;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v28 = [(PLSearchSuggestion *)v35 initWithContentString:v19 categoriesType:v33 suggestionType:1 matchedAssetsCount:v20 matchedCollectionsCount:v21 matchedText:v22 matchRangeOfSearchText:v23 suggestionComponents:v25 nextTokenSuggestions:v26, v27];

  return v28;
}

@end