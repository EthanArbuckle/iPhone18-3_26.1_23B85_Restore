@interface ATXLayoutSelector
- (ATXLayoutSelector)initWithSuggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters;
@end

@implementation ATXLayoutSelector

- (ATXLayoutSelector)initWithSuggestionDeduplicator:(id)deduplicator hyperParameters:(id)parameters
{
  deduplicatorCopy = deduplicator;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = ATXLayoutSelector;
  v9 = [(ATXLayoutSelector *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_deduplicator, deduplicator);
    objc_storeStrong(&v10->_hyperParameters, parameters);
  }

  return v10;
}

@end