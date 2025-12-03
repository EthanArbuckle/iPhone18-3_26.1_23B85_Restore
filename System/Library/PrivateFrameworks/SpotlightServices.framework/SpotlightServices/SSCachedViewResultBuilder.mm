@interface SSCachedViewResultBuilder
+ (BOOL)supportsResult:(id)result;
- (id)buildInlineCardSections;
@end

@implementation SSCachedViewResultBuilder

+ (BOOL)supportsResult:(id)result
{
  v3 = *MEMORY[0x1E6963D58];
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
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = [SFSearchResult_SpotlightExtras alloc];
  result = [(SSResultBuilder *)self result];
  v5 = [(SFSearchResult_SpotlightExtras *)v3 initWithResult:result];

  backendData = [(SFSearchResult_SpotlightExtras *)v5 backendData];
  v7 = *MEMORY[0x1E6963D58];
  [backendData setObject:0 forKeyedSubscript:*MEMORY[0x1E6963D58]];

  v8 = [SSResultBuilder resultBuilderWithResult:v5];
  queryContext = [(SSResultBuilder *)self queryContext];
  [v8 setQueryContext:queryContext];

  [v8 setIsTopHit:{-[SSResultBuilder isTopHit](self, "isTopHit")}];
  v10 = objc_opt_new();
  queryContext2 = [(SSResultBuilder *)self queryContext];
  searchString = [queryContext2 searchString];
  [v10 setSearchString:searchString];

  [v10 setIsTopHit:{-[SSResultBuilder isTopHit](self, "isTopHit")}];
  buildInlineCardSection = [v8 buildInlineCardSection];
  [v10 setFallbackCardSection:buildInlineCardSection];

  buildResult = [v8 buildResult];
  [v10 setSpotlightBackingResult:buildResult];

  [(SSResultBuilder *)self buildDefaultPropertiesForCardSection:v10];
  v15 = objc_alloc(MEMORY[0x1E6964E90]);
  result2 = [(SSResultBuilder *)self result];
  backendData2 = [result2 backendData];
  v18 = [backendData2 copy];
  v19 = [v15 initWithAttributes:v18];
  [v10 setAttributeSet:v19];

  result3 = [(SSResultBuilder *)self result];
  v21 = [result3 valueForAttribute:v7 withType:objc_opt_class()];
  [v10 setArchive:v21];

  v25[0] = v10;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

@end