@interface PREResponsesExperimentSuggestionsResponse
- (BOOL)isEqual:(id)equal;
- (PREResponsesExperimentSuggestionsResponse)initWithCoder:(id)coder;
- (PREResponsesExperimentSuggestionsResponse)initWithSuggestions:(id)suggestions;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PREResponsesExperimentSuggestionsResponse

- (unint64_t)hash
{
  suggestions = [(PREResponsesExperimentSuggestionsResponse *)self suggestions];
  v3 = [suggestions hash];

  return v3 + 31;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  suggestions = selfCopy->_suggestions;

  return [(PREResponsesExperimentSuggestionsResponse *)selfCopy initWithSuggestions:suggestions];
}

- (PREResponsesExperimentSuggestionsResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PREResponsesExperimentSuggestionsResponse *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"suggestions"];
    suggestions = v5->_suggestions;
    v5->_suggestions = v6;
  }

  return v5;
}

- (PREResponsesExperimentSuggestionsResponse)initWithSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v9.receiver = self;
  v9.super_class = PREResponsesExperimentSuggestionsResponse;
  v5 = [(PREResponsesExperimentSuggestionsResponse *)&v9 init];
  if (v5)
  {
    v6 = [suggestionsCopy copy];
    suggestions = v5->_suggestions;
    v5->_suggestions = v6;
  }

  return v5;
}

@end