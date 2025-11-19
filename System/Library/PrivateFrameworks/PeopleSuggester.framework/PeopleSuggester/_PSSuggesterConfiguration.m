@interface _PSSuggesterConfiguration
+ (_PSSuggesterConfiguration)defaultConfiguration;
- (id)description;
@end

@implementation _PSSuggesterConfiguration

+ (_PSSuggesterConfiguration)defaultConfiguration
{
  v2 = objc_alloc_init(_PSSuggesterConfiguration);
  [(_PSSuggesterConfiguration *)v2 setMaximumNumberOfSuggestions:8];
  [(_PSSuggesterConfiguration *)v2 setExcludeBackfillSuggestions:0];
  v3 = objc_alloc_init(_PSEnsembleModel);
  [(_PSSuggesterConfiguration *)v2 setSuggestionModel:v3];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_PSSuggesterConfiguration maximumNumberOfSuggestions](self, "maximumNumberOfSuggestions")}];
  v6 = [(_PSSuggesterConfiguration *)self suggestionModel];
  v7 = [v3 stringWithFormat:@"<%@ %p> maximumNumberOfSuggestions: %@ suggestionModel: %@", v4, self, v5, v6];

  return v7;
}

@end