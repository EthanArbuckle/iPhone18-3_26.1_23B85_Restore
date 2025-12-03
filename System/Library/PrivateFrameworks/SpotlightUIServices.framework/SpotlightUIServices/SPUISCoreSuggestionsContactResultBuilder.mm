@interface SPUISCoreSuggestionsContactResultBuilder
+ (BOOL)supportsResult:(id)result;
- (SPUISCoreSuggestionsContactResultBuilder)initWithResult:(id)result;
- (id)buildCommand;
@end

@implementation SPUISCoreSuggestionsContactResultBuilder

+ (BOOL)supportsResult:(id)result
{
  sectionBundleIdentifier = [result sectionBundleIdentifier];
  bundleId = [self bundleId];
  v6 = [sectionBundleIdentifier isEqual:bundleId];

  return v6;
}

- (SPUISCoreSuggestionsContactResultBuilder)initWithResult:(id)result
{
  resultCopy = result;
  v8.receiver = self;
  v8.super_class = SPUISCoreSuggestionsContactResultBuilder;
  v5 = [(SPUISContactResultBuilder *)&v8 initWithResult:resultCopy];
  if (v5)
  {
    identifier = [resultCopy identifier];
    [(SPUISCoreSuggestionsContactResultBuilder *)v5 setSuggestedContactIdentifier:identifier];
  }

  return v5;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  suggestedContactIdentifier = [(SPUISCoreSuggestionsContactResultBuilder *)self suggestedContactIdentifier];
  [v3 setContactIdentifier:suggestedContactIdentifier];

  [v3 setIsSuggestedContact:1];

  return v3;
}

@end