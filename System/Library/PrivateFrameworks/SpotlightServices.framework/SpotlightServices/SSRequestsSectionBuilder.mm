@interface SSRequestsSectionBuilder
+ (id)supportedBundleIds;
- (unint64_t)buildMaxInitiallyVisibleResults;
@end

@implementation SSRequestsSectionBuilder

+ (id)supportedBundleIds
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.people.askToBuyRequest";
  v5[1] = @"com.apple.people.screenTimeRequest";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (unint64_t)buildMaxInitiallyVisibleResults
{
  v3 = objc_opt_new();
  section = [(SSSectionBuilder *)self section];
  results = [section results];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__SSRequestsSectionBuilder_buildMaxInitiallyVisibleResults__block_invoke;
  v13[3] = &unk_1E8596030;
  v6 = v3;
  v14 = v6;
  [results enumerateObjectsUsingBlock:v13];

  buildMaxInitiallyVisibleResults = [v6 count];
  if (!buildMaxInitiallyVisibleResults)
  {
    v12.receiver = self;
    v12.super_class = SSRequestsSectionBuilder;
    buildMaxInitiallyVisibleResults = [(SSSectionBuilder *)&v12 buildMaxInitiallyVisibleResults];
  }

  v11.receiver = self;
  v11.super_class = SSRequestsSectionBuilder;
  buildMaxInitiallyVisibleResults2 = [(SSSectionBuilder *)&v11 buildMaxInitiallyVisibleResults];
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

void __59__SSRequestsSectionBuilder_buildMaxInitiallyVisibleResults__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v5 valueForAttribute:*MEMORY[0x1E6963C60] withType:objc_opt_class()];
    v4 = [v3 unsignedIntValue];

    if (v4 == 1)
    {
      [*(a1 + 32) addObject:v5];
    }
  }
}

@end