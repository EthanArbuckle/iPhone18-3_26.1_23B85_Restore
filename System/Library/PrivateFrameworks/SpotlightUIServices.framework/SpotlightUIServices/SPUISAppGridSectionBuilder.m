@interface SPUISAppGridSectionBuilder
+ (BOOL)supportsSection:(id)a3 queryContext:(id)a4;
- (id)buildSection;
@end

@implementation SPUISAppGridSectionBuilder

+ (BOOL)supportsSection:(id)a3 queryContext:(id)a4
{
  v4 = a3;
  if (+[SPUISUtilities isMacOS])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 bundleIdentifier];
    if ([v6 isEqualToString:@"com.apple.spotlight.tophits"])
    {
      v7 = [v4 results];
      v8 = [v7 firstObject];
      v9 = [v8 sectionBundleIdentifier];
      v5 = [v9 isEqualToString:@"com.apple.application"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)buildSection
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = SPUISAppGridSectionBuilder;
  v2 = [(SPUISLegacySectionBuilder *)&v14 buildSection];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 results];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * i) setRenderHorizontallyWithOtherResultsInCategory:1];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

@end