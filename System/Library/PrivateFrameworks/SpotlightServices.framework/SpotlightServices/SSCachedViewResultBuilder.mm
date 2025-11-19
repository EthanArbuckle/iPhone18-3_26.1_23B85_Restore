@interface SSCachedViewResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (id)buildInlineCardSections;
@end

@implementation SSCachedViewResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v3 = *MEMORY[0x1E6963D58];
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
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = [SFSearchResult_SpotlightExtras alloc];
  v4 = [(SSResultBuilder *)self result];
  v5 = [(SFSearchResult_SpotlightExtras *)v3 initWithResult:v4];

  v6 = [(SFSearchResult_SpotlightExtras *)v5 backendData];
  v7 = *MEMORY[0x1E6963D58];
  [v6 setObject:0 forKeyedSubscript:*MEMORY[0x1E6963D58]];

  v8 = [SSResultBuilder resultBuilderWithResult:v5];
  v9 = [(SSResultBuilder *)self queryContext];
  [v8 setQueryContext:v9];

  [v8 setIsTopHit:{-[SSResultBuilder isTopHit](self, "isTopHit")}];
  v10 = objc_opt_new();
  v11 = [(SSResultBuilder *)self queryContext];
  v12 = [v11 searchString];
  [v10 setSearchString:v12];

  [v10 setIsTopHit:{-[SSResultBuilder isTopHit](self, "isTopHit")}];
  v13 = [v8 buildInlineCardSection];
  [v10 setFallbackCardSection:v13];

  v14 = [v8 buildResult];
  [v10 setSpotlightBackingResult:v14];

  [(SSResultBuilder *)self buildDefaultPropertiesForCardSection:v10];
  v15 = objc_alloc(MEMORY[0x1E6964E90]);
  v16 = [(SSResultBuilder *)self result];
  v17 = [v16 backendData];
  v18 = [v17 copy];
  v19 = [v15 initWithAttributes:v18];
  [v10 setAttributeSet:v19];

  v20 = [(SSResultBuilder *)self result];
  v21 = [v20 valueForAttribute:v7 withType:objc_opt_class()];
  [v10 setArchive:v21];

  v25[0] = v10;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

@end