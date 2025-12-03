@interface SPUISTopHitAppWithEntitiesSectionBuilder
+ (BOOL)supportsAppTopHitWithoutIndexFor:(id)for;
+ (BOOL)supportsFileProviderFor:(id)for;
+ (BOOL)supportsSection:(id)section queryContext:(id)context;
- (id)buildBridgedResult;
- (id)buildCardSections;
- (id)buildCollectionStyle;
- (int64_t)maxCardSections;
@end

@implementation SPUISTopHitAppWithEntitiesSectionBuilder

+ (BOOL)supportsSection:(id)section queryContext:(id)context
{
  sectionCopy = section;
  results = [sectionCopy results];
  bundleIdentifier = [sectionCopy bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"])
  {
    firstObject = [results firstObject];
    sectionBundleIdentifier = [firstObject sectionBundleIdentifier];
    v9 = [sectionBundleIdentifier isEqualToString:@"com.apple.application"];

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  LOBYTE(v11) = 0;
  if ([results count] == 1 && (v10 & 1) == 0)
  {
    firstObject2 = [results firstObject];
    if ([firstObject2 isAppClip])
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      firstObject3 = [results firstObject];
      v11 = [firstObject3 isWebClip] ^ 1;
    }
  }

  return v11;
}

+ (BOOL)supportsAppTopHitWithoutIndexFor:(id)for
{
  forCopy = for;
  if ([objc_opt_class() supportsFileProviderFor:forCopy])
  {
    v4 = 1;
  }

  else
  {
    v4 = [objc_opt_class() supportsBonusSPI:forCopy];
  }

  return v4;
}

+ (BOOL)supportsFileProviderFor:(id)for
{
  v3 = supportsFileProviderFor__onceToken;
  forCopy = for;
  if (v3 != -1)
  {
    +[SPUISTopHitAppWithEntitiesSectionBuilder supportsFileProviderFor:];
  }

  v5 = [supportsFileProviderFor__supportedBundleIdentifiers containsObject:forCopy];

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
  section = [(SPUISSectionBuilder *)self section];
  results = [section results];
  firstObject = [results firstObject];

  v6 = [[SPUISApplicationResultBuilder alloc] initWithResult:firstObject];
  [(SPUISTopHitAppWithEntitiesSectionBuilder *)self setAppResultBuilder:v6];

  queryContext = [(SPUISSectionBuilder *)self queryContext];
  appResultBuilder = [(SPUISTopHitAppWithEntitiesSectionBuilder *)self appResultBuilder];
  [appResultBuilder setQueryContext:queryContext];

  appResultBuilder2 = [(SPUISTopHitAppWithEntitiesSectionBuilder *)self appResultBuilder];
  buildResult = [appResultBuilder2 buildResult];

  v21.receiver = self;
  v21.super_class = SPUISTopHitAppWithEntitiesSectionBuilder;
  buildBridgedResult = [(SPUISSectionBuilder *)&v21 buildBridgedResult];
  inlineCard = [buildBridgedResult inlineCard];
  [firstObject setInlineCard:inlineCard];

  compactCard = [buildBridgedResult compactCard];
  [firstObject setCompactCard:compactCard];

  [firstObject setQueryId:{objc_msgSend(buildBridgedResult, "queryId")}];
  sectionBundleIdentifier = [buildBridgedResult sectionBundleIdentifier];
  [firstObject setSectionBundleIdentifier:sectionBundleIdentifier];

  resultBundleId = [buildBridgedResult resultBundleId];
  [firstObject setResultBundleId:resultBundleId];

  applicationBundleIdentifier = [buildBridgedResult applicationBundleIdentifier];
  [firstObject setApplicationBundleIdentifier:applicationBundleIdentifier];

  appResultBuilder3 = [(SPUISTopHitAppWithEntitiesSectionBuilder *)self appResultBuilder];
  matchedAlternateName = [appResultBuilder3 matchedAlternateName];
  [firstObject setCompletion:matchedAlternateName];

  v19 = [objc_alloc(objc_opt_class()) initWithResult:firstObject];

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
  appResultBuilder = [(SPUISTopHitAppWithEntitiesSectionBuilder *)self appResultBuilder];
  bundleId = [appResultBuilder bundleId];
  [v3 setApplicationBundleIdentifier:bundleId];

  appResultBuilder2 = [(SPUISTopHitAppWithEntitiesSectionBuilder *)self appResultBuilder];
  name = [appResultBuilder2 name];
  [v3 setTitle:name];

  v8 = objc_alloc(MEMORY[0x277D65850]);
  section = [(SPUISSectionBuilder *)self section];
  results = [section results];
  firstObject = [results firstObject];
  v12 = [v8 initWithResult:firstObject];
  [v3 setSpotlightBackingResult:v12];

  v13 = objc_opt_new();
  applicationBundleIdentifier = [v3 applicationBundleIdentifier];
  [v13 setApplicationBundleIdentifier:applicationBundleIdentifier];

  [v3 setCommand:v13];
  v18[0] = v3;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end