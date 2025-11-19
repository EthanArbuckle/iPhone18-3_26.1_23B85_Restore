@interface TIFacemarkSorter
+ (id)candidatesSortedByFacemarkCategoryFromCandidates:(id)a3;
@end

@implementation TIFacemarkSorter

+ (id)candidatesSortedByFacemarkCategoryFromCandidates:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v25 = [MEMORY[0x1E695DF70] array];
  context = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (candidatesSortedByFacemarkCategoryFromCandidates__onceToken != -1)
  {
    dispatch_once(&candidatesSortedByFacemarkCategoryFromCandidates__onceToken, &__block_literal_global_12225);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = candidatesSortedByFacemarkCategoryFromCandidates__orderedKeys;
  v6 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = objc_alloc_init(MEMORY[0x1E695DFA0]);
        [v4 setObject:v11 forKeyedSubscript:{v10, v25, context}];
      }

      v7 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v7);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v30 + 1) + 8 * j);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
          v19 = [v18 category];
          v20 = [v4 objectForKeyedSubscript:v19];

          if (!v20)
          {
            v20 = [v4 objectForKey:@"O"];
          }

          [v20 addObject:{v18, v25}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v14);
  }

  v21 = candidatesSortedByFacemarkCategoryFromCandidates__orderedKeys;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __69__TIFacemarkSorter_candidatesSortedByFacemarkCategoryFromCandidates___block_invoke_2;
  v27[3] = &unk_1E6F4D770;
  v28 = v4;
  v22 = v25;
  v29 = v22;
  v23 = v4;
  [v21 enumerateObjectsUsingBlock:v27];

  objc_autoreleasePoolPop(context);

  return v22;
}

void __69__TIFacemarkSorter_candidatesSortedByFacemarkCategoryFromCandidates___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if ([v8 count])
  {
    v5 = [candidatesSortedByFacemarkCategoryFromCandidates__orderedNames objectAtIndexedSubscript:a3];
    v6 = *(a1 + 40);
    v7 = [[TIKeyboardCandidateGroup alloc] initWithTitle:v5 candidates:v8];
    [v6 addObject:v7];
  }
}

void __69__TIFacemarkSorter_candidatesSortedByFacemarkCategoryFromCandidates___block_invoke()
{
  v7 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.TextInput"];
  v0 = [v7 pathForResource:@"FacemarkCategories" ofType:@"plist"];
  if (v0)
  {
    v1 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v0];
    v2 = v1;
    if (v1)
    {
      v3 = [v1 objectForKeyedSubscript:@"Keys"];
      v4 = candidatesSortedByFacemarkCategoryFromCandidates__orderedKeys;
      candidatesSortedByFacemarkCategoryFromCandidates__orderedKeys = v3;

      v5 = [v2 objectForKeyedSubscript:@"Names"];
      v6 = candidatesSortedByFacemarkCategoryFromCandidates__orderedNames;
      candidatesSortedByFacemarkCategoryFromCandidates__orderedNames = v5;
    }
  }
}

@end