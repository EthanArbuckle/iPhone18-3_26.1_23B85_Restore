@interface PFCShuffleUtilities
+ (id)_suggestionOptionsForShuffle:(id)shuffle;
+ (id)assetsForShuffle:(id)shuffle;
@end

@implementation PFCShuffleUtilities

+ (id)assetsForShuffle:(id)shuffle
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = [self _suggestionOptionsForShuffle:shuffle];
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
  allValues = [v9 allValues];

  v11 = *MEMORY[0x1E69E9840];

  return allValues;
}

+ (id)_suggestionOptionsForShuffle:(id)shuffle
{
  v22[2] = *MEMORY[0x1E69E9840];
  shuffleCopy = shuffle;
  v4 = objc_alloc_init(MEMORY[0x1E6978830]);
  array = [MEMORY[0x1E695DF70] array];
  people = [shuffleCopy people];
  v7 = [people count];

  if (v7)
  {
    v8 = MEMORY[0x1E696AE18];
    people2 = [shuffleCopy people];
    v10 = [v8 predicateWithFormat:@"%K = %d AND %K in %@", @"subtype", 804, @"context", people2];
    [array addObject:v10];
  }

  if ([shuffleCopy pets])
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", 803];
    [array addObject:v11];
  }

  if ([shuffleCopy nature])
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", 801];
    [array addObject:v12];
  }

  if ([shuffleCopy cityscape])
  {
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", 802];
    [array addObject:v13];
  }

  v14 = objc_alloc(MEMORY[0x1E695DF70]);
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
  v22[0] = v15;
  v16 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:array];
  v22[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v18 = [v14 initWithArray:v17];

  v19 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v18];
  [v4 setPredicate:v19];

  v20 = *MEMORY[0x1E69E9840];

  return v4;
}

@end