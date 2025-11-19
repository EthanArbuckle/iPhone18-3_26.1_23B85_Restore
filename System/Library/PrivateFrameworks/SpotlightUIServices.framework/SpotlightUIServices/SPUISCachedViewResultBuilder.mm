@interface SPUISCachedViewResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (id)buildInlineCardSections;
@end

@implementation SPUISCachedViewResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v3 = *MEMORY[0x277CC2518];
  v4 = a3;
  v5 = [v4 valueForAttribute:v3 withType:objc_opt_class()];

  if (v5)
  {
    v6 = SSAppVendedTopHitViewsEnabled();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)buildInlineCardSections
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D65850]);
  v4 = [(SPUISResultBuilder *)self result];
  v5 = [v3 initWithResult:v4];

  v6 = [v5 backendData];
  v7 = *MEMORY[0x277CC2518];
  [v6 setObject:0 forKeyedSubscript:*MEMORY[0x277CC2518]];

  v8 = [SPUISResultBuilder resultBuilderWithResult:v5];
  v9 = [(SPUISResultBuilder *)self queryContext];
  [v8 setQueryContext:v9];

  [v8 setIsTopHit:{-[SPUISResultBuilder isTopHit](self, "isTopHit")}];
  v10 = objc_opt_new();
  v11 = [(SPUISResultBuilder *)self queryContext];
  v12 = [v11 searchString];
  [v10 setSearchString:v12];

  [v10 setIsTopHit:{-[SPUISResultBuilder isTopHit](self, "isTopHit")}];
  v13 = [v8 buildInlineCardSection];
  [v10 setFallbackCardSection:v13];

  v14 = [v8 buildResult];
  [v10 setSpotlightBackingResult:v14];

  [(SPUISResultBuilder *)self buildDefaultPropertiesForCardSection:v10];
  v15 = objc_alloc(MEMORY[0x277CC34B8]);
  v16 = [(SPUISResultBuilder *)self result];
  v17 = [v16 backendData];
  v18 = [v17 copy];
  v19 = [v15 initWithAttributes:v18];
  [v10 setAttributeSet:v19];

  v20 = [(SPUISResultBuilder *)self result];
  v21 = [v20 valueForAttribute:v7 withType:objc_opt_class()];
  [v10 setArchive:v21];

  v25[0] = v10;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end