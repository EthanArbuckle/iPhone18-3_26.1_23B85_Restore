@interface SPUISRequestsSectionBuilder
+ (id)supportedBundleIds;
- (unint64_t)buildMaxInitiallyVisibleResults;
@end

@implementation SPUISRequestsSectionBuilder

+ (id)supportedBundleIds
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.people.askToBuyRequest";
  v5[1] = @"com.apple.people.screenTimeRequest";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (unint64_t)buildMaxInitiallyVisibleResults
{
  v3 = objc_opt_new();
  section = [(SPUISSectionBuilder *)self section];
  results = [section results];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__SPUISRequestsSectionBuilder_buildMaxInitiallyVisibleResults__block_invoke;
  v13[3] = &unk_279D0BEE8;
  v6 = v3;
  v14 = v6;
  [results enumerateObjectsUsingBlock:v13];

  buildMaxInitiallyVisibleResults = [v6 count];
  if (!buildMaxInitiallyVisibleResults)
  {
    v12.receiver = self;
    v12.super_class = SPUISRequestsSectionBuilder;
    buildMaxInitiallyVisibleResults = [(SPUISSectionBuilder *)&v12 buildMaxInitiallyVisibleResults];
  }

  v11.receiver = self;
  v11.super_class = SPUISRequestsSectionBuilder;
  buildMaxInitiallyVisibleResults2 = [(SPUISSectionBuilder *)&v11 buildMaxInitiallyVisibleResults];
  if (buildMaxInitiallyVisibleResults >= buildMaxInitiallyVisibleResults2)
  {
    v9 = buildMaxInitiallyVisibleResults2;
  }

  else
  {
    v9 = buildMaxInitiallyVisibleResults;
  }

  return v9;
}

void __62__SPUISRequestsSectionBuilder_buildMaxInitiallyVisibleResults__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v5 valueForAttribute:*MEMORY[0x277CC2450] withType:objc_opt_class()];
    v4 = [v3 unsignedIntValue];

    if (v4 == 1)
    {
      [*(a1 + 32) addObject:v5];
    }
  }
}

@end