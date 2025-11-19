@interface SPUISTopHitAppWithEntitiesSectionBuilder
+ (BOOL)supportsAppTopHitWithoutIndexFor:(id)a3;
+ (BOOL)supportsFileProviderFor:(id)a3;
+ (BOOL)supportsSection:(id)a3 queryContext:(id)a4;
- (id)buildBridgedResult;
- (id)buildCardSections;
- (id)buildCollectionStyle;
- (int64_t)maxCardSections;
@end

@implementation SPUISTopHitAppWithEntitiesSectionBuilder

+ (BOOL)supportsSection:(id)a3 queryContext:(id)a4
{
  v4 = a3;
  v5 = [v4 results];
  v6 = [v4 bundleIdentifier];

  if ([v6 isEqualToString:@"com.apple.spotlight.tophits"])
  {
    v7 = [v5 firstObject];
    v8 = [v7 sectionBundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.application"];

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  LOBYTE(v11) = 0;
  if ([v5 count] == 1 && (v10 & 1) == 0)
  {
    v12 = [v5 firstObject];
    if ([v12 isAppClip])
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      v13 = [v5 firstObject];
      v11 = [v13 isWebClip] ^ 1;
    }
  }

  return v11;
}

+ (BOOL)supportsAppTopHitWithoutIndexFor:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() supportsFileProviderFor:v3])
  {
    v4 = 1;
  }

  else
  {
    v4 = [objc_opt_class() supportsBonusSPI:v3];
  }

  return v4;
}

+ (BOOL)supportsFileProviderFor:(id)a3
{
  v3 = supportsFileProviderFor__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[SPUISTopHitAppWithEntitiesSectionBuilder supportsFileProviderFor:];
  }

  v5 = [supportsFileProviderFor__supportedBundleIdentifiers containsObject:v4];

  return v5;
}

void __68__SPUISTopHitAppWithEntitiesSectionBuilder_supportsFileProviderFor___block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"com.apple.DocumentsApp";
  v5[1] = @"com.apple.Pages";
  v5[2] = @"com.apple.Keynote";
  v5[3] = @"com.apple.Numbers";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = supportsFileProviderFor__supportedBundleIdentifiers;
  supportsFileProviderFor__supportedBundleIdentifiers = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (id)buildBridgedResult
{
  v3 = [(SPUISSectionBuilder *)self section];
  v4 = [v3 results];
  v5 = [v4 firstObject];

  v6 = [[SPUISApplicationResultBuilder alloc] initWithResult:v5];
  [(SPUISTopHitAppWithEntitiesSectionBuilder *)self setAppResultBuilder:v6];

  v7 = [(SPUISSectionBuilder *)self queryContext];
  v8 = [(SPUISTopHitAppWithEntitiesSectionBuilder *)self appResultBuilder];
  [v8 setQueryContext:v7];

  v9 = [(SPUISTopHitAppWithEntitiesSectionBuilder *)self appResultBuilder];
  v10 = [v9 buildResult];

  v21.receiver = self;
  v21.super_class = SPUISTopHitAppWithEntitiesSectionBuilder;
  v11 = [(SPUISSectionBuilder *)&v21 buildBridgedResult];
  v12 = [v11 inlineCard];
  [v5 setInlineCard:v12];

  v13 = [v11 compactCard];
  [v5 setCompactCard:v13];

  [v5 setQueryId:{objc_msgSend(v11, "queryId")}];
  v14 = [v11 sectionBundleIdentifier];
  [v5 setSectionBundleIdentifier:v14];

  v15 = [v11 resultBundleId];
  [v5 setResultBundleId:v15];

  v16 = [v11 applicationBundleIdentifier];
  [v5 setApplicationBundleIdentifier:v16];

  v17 = [(SPUISTopHitAppWithEntitiesSectionBuilder *)self appResultBuilder];
  v18 = [v17 matchedAlternateName];
  [v5 setCompletion:v18];

  v19 = [objc_alloc(objc_opt_class()) initWithResult:v5];

  return v19;
}

- (int64_t)maxCardSections
{
  if (isIpad())
  {
    return 6;
  }

  if (+[SPUISUtilities isMacOS])
  {
    return 6;
  }

  return 4;
}

- (id)buildCollectionStyle
{
  v3 = objc_opt_new();
  [v3 setNumberOfColumns:{-[SPUISTopHitAppWithEntitiesSectionBuilder maxCardSections](self, "maxCardSections")}];

  return v3;
}

- (id)buildCardSections
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(SPUISTopHitAppWithEntitiesSectionBuilder *)self appResultBuilder];
  v5 = [v4 bundleId];
  [v3 setApplicationBundleIdentifier:v5];

  v6 = [(SPUISTopHitAppWithEntitiesSectionBuilder *)self appResultBuilder];
  v7 = [v6 name];
  [v3 setTitle:v7];

  v8 = objc_alloc(MEMORY[0x277D65850]);
  v9 = [(SPUISSectionBuilder *)self section];
  v10 = [v9 results];
  v11 = [v10 firstObject];
  v12 = [v8 initWithResult:v11];
  [v3 setSpotlightBackingResult:v12];

  v13 = objc_opt_new();
  v14 = [v3 applicationBundleIdentifier];
  [v13 setApplicationBundleIdentifier:v14];

  [v3 setCommand:v13];
  v18[0] = v3;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end