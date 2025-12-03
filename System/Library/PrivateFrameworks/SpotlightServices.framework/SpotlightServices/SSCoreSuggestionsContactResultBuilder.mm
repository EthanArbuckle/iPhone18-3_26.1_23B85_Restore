@interface SSCoreSuggestionsContactResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SSCoreSuggestionsContactResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
@end

@implementation SSCoreSuggestionsContactResultBuilder

+ (BOOL)supportsResult:(id)result
{
  sectionBundleIdentifier = [result sectionBundleIdentifier];
  bundleId = [self bundleId];
  v6 = [sectionBundleIdentifier isEqual:bundleId];

  return v6;
}

- (SSCoreSuggestionsContactResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = SSCoreSuggestionsContactResultBuilder;
  v5 = [(SSContactResultBuilder *)&v8 initWithResult:resultCopy];
  if (v5)
  {
    identifier = [resultCopy identifier];
    [(SSCoreSuggestionsContactResultBuilder *)v5 setSuggestedContactIdentifier:identifier];
  }

  return v5;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  suggestedContactIdentifier = [(SSCoreSuggestionsContactResultBuilder *)self suggestedContactIdentifier];
  [v3 setContactIdentifier:suggestedContactIdentifier];

  [v3 setIsSuggestedContact:1];

  return v3;
}

@end