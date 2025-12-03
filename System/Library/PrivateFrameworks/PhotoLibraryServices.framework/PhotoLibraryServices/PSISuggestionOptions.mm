@interface PSISuggestionOptions
- (PSISuggestionOptions)initWithSuggestionType:(unint64_t)type suggestionLimit:(unint64_t)limit;
- (id)_minMatchPercentByCategoriesTypeDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)minMatchPercentForCategoriesType:(unint64_t)type;
- (void)setMinMatchPercent:(unint64_t)percent forCategoriesType:(unint64_t)type;
@end

@implementation PSISuggestionOptions

- (id)_minMatchPercentByCategoriesTypeDescription
{
  minMatchPercentByCategoriesType = [(PSISuggestionOptions *)self minMatchPercentByCategoriesType];
  v4 = [minMatchPercentByCategoriesType count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
    minMatchPercentByCategoriesType2 = [(PSISuggestionOptions *)self minMatchPercentByCategoriesType];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__PSISuggestionOptions__minMatchPercentByCategoriesTypeDescription__block_invoke;
    v9[3] = &unk_1E7568710;
    v7 = v5;
    v10 = v7;
    [minMatchPercentByCategoriesType2 enumerateKeysAndObjectsUsingBlock:v9];
  }

  else
  {
    v7 = @"none";
  }

  return v7;
}

void __67__PSISuggestionOptions__minMatchPercentByCategoriesTypeDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 unsignedIntegerValue])
  {
    v6 = [v10 unsignedIntegerValue];
    v7 = *(a1 + 32);
    if (v6 > 0x2C)
    {
      v8 = @"undefined";
    }

    else
    {
      v8 = off_1E75702D8[v6];
    }

    v9 = v8;
    [v7 appendFormat:@"%@: %tu, ", v9, objc_msgSend(v5, "unsignedIntegerValue")];
  }
}

- (id)description
{
  suggestionResultTypes = [(PSISuggestionOptions *)self suggestionResultTypes];
  suggestionResultTypes2 = [(PSISuggestionOptions *)self suggestionResultTypes];
  v29 = MEMORY[0x1E696AEC0];
  v5 = self->_searchSuggestionType - 1;
  if (v5 > 3)
  {
    v6 = @"PLSearchSuggestionTypeNone";
  }

  else
  {
    v6 = off_1E756C590[v5];
  }

  v7 = @"collections";
  if ((suggestionResultTypes2 & 2) == 0)
  {
    v7 = 0;
  }

  if ((suggestionResultTypes & ((suggestionResultTypes2 & 2) >> 1)) != 0)
  {
    v8 = @"assets & collections";
  }

  else
  {
    v8 = @"assets";
  }

  if (suggestionResultTypes)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = v6;
  searchSuggestionLimit = self->_searchSuggestionLimit;
  suggestionCategories = [(PSISuggestionOptions *)self suggestionCategories];
  v11 = PLDebugStringsForPLSearchSuggestionCategoriesTypes(suggestionCategories);
  v12 = @"NO";
  if (self->_limitSuggestionsToExactTextMatches)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_wantsUnscopedSuggestions)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_enableNextTokenSuggestions)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (self->_wantsPairedSuggestions)
  {
    v12 = @"YES";
  }

  v16 = v12;
  v17 = v15;
  v18 = v14;
  v19 = v13;
  _minMatchPercentByCategoriesTypeDescription = [(PSISuggestionOptions *)self _minMatchPercentByCategoriesTypeDescription];
  substringMatchedCategories = [(PSISuggestionOptions *)self substringMatchedCategories];
  v22 = PLDebugStringsForPLSearchSuggestionCategoriesTypes(substringMatchedCategories);
  v26 = v9;
  v23 = v10;
  v24 = [v29 stringWithFormat:@"Suggestion type: %@, \nsuggestion limit: %tu, \nsuggestion result types: %@, \nsuggestion categories:%@, \nlimit suggestions to exact matches only: %@, \nwants unscoped suggestions:%@, \nenable next token suggestions: %@, \nwantsPairedSuggestions: %@, \nmin match percent by categories type: %@, \nsubstring matched suggestion categories: %@", v10, searchSuggestionLimit, v26, v11, v19, v18, v17, v16, _minMatchPercentByCategoriesTypeDescription, v22];

  return v24;
}

- (unint64_t)minMatchPercentForCategoriesType:(unint64_t)type
{
  minMatchPercentByCategoriesType = [(PSISuggestionOptions *)self minMatchPercentByCategoriesType];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v6 = [minMatchPercentByCategoriesType objectForKeyedSubscript:v5];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setMinMatchPercent:(unint64_t)percent forCategoriesType:(unint64_t)type
{
  minMatchPercentByCategoriesType = [(PSISuggestionOptions *)self minMatchPercentByCategoriesType];

  if (!minMatchPercentByCategoriesType)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(PSISuggestionOptions *)self setMinMatchPercentByCategoriesType:v8];
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:percent];
  minMatchPercentByCategoriesType2 = [(PSISuggestionOptions *)self minMatchPercentByCategoriesType];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  [minMatchPercentByCategoriesType2 setObject:v11 forKeyedSubscript:v10];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PSISuggestionOptions alloc] initWithSuggestionType:self->_searchSuggestionType suggestionLimit:self->_searchSuggestionLimit];
  [(PSISuggestionOptions *)v4 setSuggestionResultTypes:self->_suggestionResultTypes];
  [(PSISuggestionOptions *)v4 setLimitSuggestionsToExactTextMatches:self->_limitSuggestionsToExactTextMatches];
  [(PSISuggestionOptions *)v4 setWantsUnscopedSuggestions:self->_wantsUnscopedSuggestions];
  [(PSISuggestionOptions *)v4 setMinNumberOfResultsForNextTokenGeneration:self->_minNumberOfResultsForNextTokenGeneration];
  [(PSISuggestionOptions *)v4 setEnableNextTokenSuggestions:self->_enableNextTokenSuggestions];
  [(PSISuggestionOptions *)v4 setSuggestionCategories:self->_suggestionCategories];
  [(PSISuggestionOptions *)v4 setWantsPairedSuggestions:self->_wantsPairedSuggestions];
  [(PSISuggestionOptions *)v4 setSubstringMatchedCategories:self->_substringMatchedCategories];
  [(PSISuggestionOptions *)v4 setMinMatchPercentByCategoriesType:self->_minMatchPercentByCategoriesType];
  return v4;
}

- (PSISuggestionOptions)initWithSuggestionType:(unint64_t)type suggestionLimit:(unint64_t)limit
{
  if (limit)
  {
    if (type)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PSISuggestionOptions.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"suggestionLimit != 0"}];

    if (type)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PSISuggestionOptions.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"suggestionType != PLSearchSuggestionTypeNone"}];

LABEL_3:
  v11.receiver = self;
  v11.super_class = PSISuggestionOptions;
  result = [(PSISuggestionOptions *)&v11 init];
  if (result)
  {
    result->_searchSuggestionType = type;
    result->_searchSuggestionLimit = limit;
    result->_locationInQueryStringForSuggestionGeneration = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

@end