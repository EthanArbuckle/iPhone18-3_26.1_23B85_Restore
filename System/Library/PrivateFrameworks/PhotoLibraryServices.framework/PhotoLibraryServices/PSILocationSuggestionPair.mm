@interface PSILocationSuggestionPair
+ (id)searchSuggestionWithNextTokenPairingForPrimarySuggestion:(id)suggestion nextTokenSuggestion:(id)tokenSuggestion;
- (BOOL)containsSuggestion:(id)suggestion;
- (PSILocationSuggestionPair)initWithSuggestion:(id)suggestion otherSuggestion:(id)otherSuggestion score:(unint64_t)score;
- (id)description;
- (id)pairedSuggestions;
- (id)searchSuggestionWithNextTokenPairing;
@end

@implementation PSILocationSuggestionPair

- (id)description
{
  pairedSuggestions = [(PSILocationSuggestionPair *)self pairedSuggestions];
  v4 = pairedSuggestions;
  if (pairedSuggestions)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [pairedSuggestions objectAtIndexedSubscript:0];
    contentString = [v6 contentString];
    v8 = [v4 objectAtIndexedSubscript:1];
    contentString2 = [v8 contentString];
    v10 = [v5 stringWithFormat:@"%@, %@: %tu", contentString, contentString2, -[PSILocationSuggestionPair score](self, "score")];
  }

  else
  {
    v10 = @"empty";
  }

  return v10;
}

- (id)searchSuggestionWithNextTokenPairing
{
  pairedSuggestions = [(PSILocationSuggestionPair *)self pairedSuggestions];
  if ([pairedSuggestions count])
  {
    v3 = [pairedSuggestions objectAtIndexedSubscript:0];
  }

  else
  {
    v3 = 0;
  }

  if ([pairedSuggestions count] < 2)
  {
    v5 = 0;
  }

  else
  {
    v4 = [pairedSuggestions objectAtIndexedSubscript:1];
    v5 = v4;
    if (v3 && v4)
    {
      v6 = [objc_opt_class() searchSuggestionWithNextTokenPairingForPrimarySuggestion:v3 nextTokenSuggestion:v4];
    }
  }

  return 0;
}

- (BOOL)containsSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  pairedSuggestions = [(PSILocationSuggestionPair *)self pairedSuggestions];
  v6 = [pairedSuggestions containsObject:suggestionCopy];

  return v6;
}

- (id)pairedSuggestions
{
  v17[2] = *MEMORY[0x1E69E9840];
  suggestion = [(PSILocationSuggestionPair *)self suggestion];
  suggestionComponents = [suggestion suggestionComponents];
  firstObject = [suggestionComponents firstObject];
  indexCategory = [firstObject indexCategory];

  otherSuggestion = [(PSILocationSuggestionPair *)self otherSuggestion];
  suggestionComponents2 = [otherSuggestion suggestionComponents];
  firstObject2 = [suggestionComponents2 firstObject];
  indexCategory2 = [firstObject2 indexCategory];

  if ([(PSILocationSuggestionPair *)self score]&& [PSISuggestionQueryUtilities suggestionCategoriesPairingIsValid:indexCategory otherCategory:indexCategory2])
  {
    if (indexCategory <= indexCategory2)
    {
      suggestion2 = [(PSILocationSuggestionPair *)self suggestion];
      v16[0] = suggestion2;
      otherSuggestion2 = [(PSILocationSuggestionPair *)self otherSuggestion];
      v16[1] = otherSuggestion2;
      v13 = v16;
    }

    else
    {
      suggestion2 = [(PSILocationSuggestionPair *)self otherSuggestion];
      v17[0] = suggestion2;
      otherSuggestion2 = [(PSILocationSuggestionPair *)self suggestion];
      v17[1] = otherSuggestion2;
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

- (PSILocationSuggestionPair)initWithSuggestion:(id)suggestion otherSuggestion:(id)otherSuggestion score:(unint64_t)score
{
  suggestionCopy = suggestion;
  otherSuggestionCopy = otherSuggestion;
  v12 = otherSuggestionCopy;
  if (suggestionCopy)
  {
    if (otherSuggestionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSILocationSuggestionPair.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"suggestion"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PSILocationSuggestionPair.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"otherSuggestion"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = PSILocationSuggestionPair;
  v13 = [(PSILocationSuggestionPair *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_suggestion, suggestion);
    objc_storeStrong(&v14->_otherSuggestion, otherSuggestion);
    v14->_score = score;
  }

  return v14;
}

+ (id)searchSuggestionWithNextTokenPairingForPrimarySuggestion:(id)suggestion nextTokenSuggestion:(id)tokenSuggestion
{
  v36[1] = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  tokenSuggestionCopy = tokenSuggestion;
  v9 = tokenSuggestionCopy;
  if (suggestionCopy)
  {
    if (tokenSuggestionCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSILocationSuggestionPair.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"suggestion"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PSILocationSuggestionPair.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"nextTokenSuggestion"}];

LABEL_3:
  v34 = [PLSearchSuggestion alloc];
  contentString = [v9 contentString];
  categoriesType = [v9 categoriesType];
  matchedAssetsCount = [v9 matchedAssetsCount];
  matchedCollectionsCount = [v9 matchedCollectionsCount];
  matchedText = [v9 matchedText];
  matchRangeOfSearchText = [v9 matchRangeOfSearchText];
  v17 = v16;
  suggestionComponents = [v9 suggestionComponents];
  v32 = [(PLSearchSuggestion *)v34 initWithContentString:contentString categoriesType:categoriesType suggestionType:2 matchedAssetsCount:matchedAssetsCount matchedCollectionsCount:matchedCollectionsCount matchedText:matchedText matchRangeOfSearchText:matchRangeOfSearchText suggestionComponents:v17 nextTokenSuggestions:suggestionComponents, 0];

  v35 = [PLSearchSuggestion alloc];
  contentString2 = [suggestionCopy contentString];
  categoriesType2 = [suggestionCopy categoriesType];
  matchedAssetsCount2 = [suggestionCopy matchedAssetsCount];
  matchedCollectionsCount2 = [suggestionCopy matchedCollectionsCount];
  matchedText2 = [suggestionCopy matchedText];
  matchRangeOfSearchText2 = [suggestionCopy matchRangeOfSearchText];
  v25 = v24;
  suggestionComponents2 = [suggestionCopy suggestionComponents];
  v36[0] = v32;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v28 = [(PLSearchSuggestion *)v35 initWithContentString:contentString2 categoriesType:categoriesType2 suggestionType:1 matchedAssetsCount:matchedAssetsCount2 matchedCollectionsCount:matchedCollectionsCount2 matchedText:matchedText2 matchRangeOfSearchText:matchRangeOfSearchText2 suggestionComponents:v25 nextTokenSuggestions:suggestionComponents2, v27];

  return v28;
}

@end