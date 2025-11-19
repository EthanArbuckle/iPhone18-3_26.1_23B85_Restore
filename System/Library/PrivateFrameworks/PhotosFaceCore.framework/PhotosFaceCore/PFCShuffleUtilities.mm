@interface PFCShuffleUtilities
+ (id)_suggestionOptionsForShuffle:(id)a3;
+ (id)assetsForShuffle:(id)a3;
@end

@implementation PFCShuffleUtilities

+ (id)assetsForShuffle:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [a1 _suggestionOptionsForShuffle:a3];
  v4 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v3];
  v5 = objc_alloc_init(MEMORY[0x1E6978830]);
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mediaType = %ld", 1];
  [v5 setPredicate:v6];

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v5 setSortDescriptors:v8];

  [v5 setIncludeHiddenAssets:0];
  v9 = [MEMORY[0x1E6978630] fetchKeyAssetBySuggestionUUIDForSuggestions:v4 options:v5];
  v10 = [v9 allValues];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_suggestionOptionsForShuffle:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E6978830]);
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [v3 people];
  v7 = [v6 count];

  if (v7)
  {
    v8 = MEMORY[0x1E696AE18];
    v9 = [v3 people];
    v10 = [v8 predicateWithFormat:@"%K = %d AND %K in %@", @"subtype", 804, @"context", v9];
    [v5 addObject:v10];
  }

  if ([v3 pets])
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", 803];
    [v5 addObject:v11];
  }

  if ([v3 nature])
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", 801];
    [v5 addObject:v12];
  }

  if ([v3 cityscape])
  {
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", 802];
    [v5 addObject:v13];
  }

  v14 = objc_alloc(MEMORY[0x1E695DF70]);
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
  v22[0] = v15;
  v16 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
  v22[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v18 = [v14 initWithArray:v17];

  v19 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v18];
  [v4 setPredicate:v19];

  v20 = *MEMORY[0x1E69E9840];

  return v4;
}

@end