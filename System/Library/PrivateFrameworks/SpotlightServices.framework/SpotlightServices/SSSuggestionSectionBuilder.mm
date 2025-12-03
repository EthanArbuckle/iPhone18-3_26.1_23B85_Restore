@interface SSSuggestionSectionBuilder
+ (id)supportedBundleIds;
- (id)buildSection;
@end

@implementation SSSuggestionSectionBuilder

+ (id)supportedBundleIds
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.searchd.suggestions";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)buildSection
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = SSSuggestionSectionBuilder;
  buildSection = [(SSLegacySectionBuilder *)&v18 buildSection];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  results = [buildSection results];
  v4 = [results countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(results);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [v8 setUsesCompactDisplay:1];
        [v8 setShouldUseCompactDisplay:1];
        compactCard = [v8 compactCard];
        cardSections = [compactCard cardSections];
        firstObject = [cardSections firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [firstObject setShouldUseCompactDisplay:1];
        }
      }

      v5 = [results countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x1E69E9840];

  return buildSection;
}

@end