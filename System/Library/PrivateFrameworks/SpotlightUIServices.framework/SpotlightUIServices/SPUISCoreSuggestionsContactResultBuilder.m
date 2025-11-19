@interface SPUISCoreSuggestionsContactResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SPUISCoreSuggestionsContactResultBuilder)initWithResult:(id)a3;
- (id)buildCommand;
@end

@implementation SPUISCoreSuggestionsContactResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = [a3 sectionBundleIdentifier];
  v5 = [a1 bundleId];
  v6 = [v4 isEqual:v5];

  return v6;
}

- (SPUISCoreSuggestionsContactResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SPUISCoreSuggestionsContactResultBuilder;
  v5 = [(SPUISContactResultBuilder *)&v8 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 identifier];
    [(SPUISCoreSuggestionsContactResultBuilder *)v5 setSuggestedContactIdentifier:v6];
  }

  return v5;
}

- (id)buildCommand
{
  v3 = objc_opt_new();
  v4 = [(SPUISCoreSuggestionsContactResultBuilder *)self suggestedContactIdentifier];
  [v3 setContactIdentifier:v4];

  [v3 setIsSuggestedContact:1];

  return v3;
}

@end