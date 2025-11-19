@interface PREResponsesExperimentSuggestionsResponse
- (BOOL)isEqual:(id)a3;
- (PREResponsesExperimentSuggestionsResponse)initWithCoder:(id)a3;
- (PREResponsesExperimentSuggestionsResponse)initWithSuggestions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PREResponsesExperimentSuggestionsResponse

- (unint64_t)hash
{
  v2 = [(PREResponsesExperimentSuggestionsResponse *)self suggestions];
  v3 = [v2 hash];

  return v3 + 31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v8 = [(PREResponsesExperimentSuggestionsResponse *)self hash];
      v9 = [(PREResponsesExperimentSuggestionsResponse *)v7 hash];

      v6 = v8 == v9;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  suggestions = v3->_suggestions;

  return [(PREResponsesExperimentSuggestionsResponse *)v3 initWithSuggestions:suggestions];
}

- (PREResponsesExperimentSuggestionsResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PREResponsesExperimentSuggestionsResponse *)self init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"suggestions"];
    suggestions = v5->_suggestions;
    v5->_suggestions = v6;
  }

  return v5;
}

- (PREResponsesExperimentSuggestionsResponse)initWithSuggestions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PREResponsesExperimentSuggestionsResponse;
  v5 = [(PREResponsesExperimentSuggestionsResponse *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    suggestions = v5->_suggestions;
    v5->_suggestions = v6;
  }

  return v5;
}

@end