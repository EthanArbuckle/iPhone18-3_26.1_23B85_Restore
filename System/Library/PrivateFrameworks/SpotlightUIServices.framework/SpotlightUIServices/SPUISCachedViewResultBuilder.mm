@interface SPUISCachedViewResultBuilder
+ (BOOL)supportsResult:(id)result;
- (id)buildInlineCardSections;
@end

@implementation SPUISCachedViewResultBuilder

+ (BOOL)supportsResult:(id)result
{
  v3 = *MEMORY[0x277CC2518];
  resultCopy = result;
  v5 = [resultCopy valueForAttribute:v3 withType:objc_opt_class()];

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
  result = [(SPUISResultBuilder *)self result];
  v5 = [v3 initWithResult:result];

  backendData = [v5 backendData];
  v7 = *MEMORY[0x277CC2518];
  [backendData setObject:0 forKeyedSubscript:*MEMORY[0x277CC2518]];

  v8 = [SPUISResultBuilder resultBuilderWithResult:v5];
  queryContext = [(SPUISResultBuilder *)self queryContext];
  [v8 setQueryContext:queryContext];

  [v8 setIsTopHit:{-[SPUISResultBuilder isTopHit](self, "isTopHit")}];
  v10 = objc_opt_new();
  queryContext2 = [(SPUISResultBuilder *)self queryContext];
  searchString = [queryContext2 searchString];
  [v10 setSearchString:searchString];

  [v10 setIsTopHit:{-[SPUISResultBuilder isTopHit](self, "isTopHit")}];
  buildInlineCardSection = [v8 buildInlineCardSection];
  [v10 setFallbackCardSection:buildInlineCardSection];

  buildResult = [v8 buildResult];
  [v10 setSpotlightBackingResult:buildResult];

  [(SPUISResultBuilder *)self buildDefaultPropertiesForCardSection:v10];
  v15 = objc_alloc(MEMORY[0x277CC34B8]);
  result2 = [(SPUISResultBuilder *)self result];
  backendData2 = [result2 backendData];
  v18 = [backendData2 copy];
  v19 = [v15 initWithAttributes:v18];
  [v10 setAttributeSet:v19];

  result3 = [(SPUISResultBuilder *)self result];
  v21 = [result3 valueForAttribute:v7 withType:objc_opt_class()];
  [v10 setArchive:v21];

  v25[0] = v10;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end