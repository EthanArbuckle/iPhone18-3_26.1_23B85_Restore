@interface VUIMediaEntitiesToGroupsValueTransformer
- (VUIMediaEntitiesToGroupsValueTransformer)init;
- (VUIMediaEntitiesToGroupsValueTransformer)initWithIdentifierKeyPath:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation VUIMediaEntitiesToGroupsValueTransformer

- (VUIMediaEntitiesToGroupsValueTransformer)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VUIMediaEntitiesToGroupsValueTransformer)initWithIdentifierKeyPath:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"The %@ parameter must not be nil.", @"identifierKeyPath"}];
  }

  v9.receiver = self;
  v9.super_class = VUIMediaEntitiesToGroupsValueTransformer;
  v5 = [(VUIMediaEntitiesToGroupsValueTransformer *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifierKeyPath = v5->_identifierKeyPath;
    v5->_identifierKeyPath = v6;
  }

  return v5;
}

- (id)transformedValue:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = self;
  v6 = [(VUIMediaEntitiesToGroupsValueTransformer *)self identifierKeyPath];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v7)
  {
    v8 = *v34;
    v9 = *MEMORY[0x1E695D940];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v33 + 1) + 8 * i);
        v12 = [v11 valueForKeyPath:v6];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v12 conformsToProtocol:&unk_1F5E70050] & 1) == 0)
        {
          [MEMORY[0x1E695DF30] raise:v9 format:@"The group identifier for groups must be an NSObject which implements NSCopying"];
        }

        v13 = v12;
        v14 = [v5 objectForKey:v13];
        if (!v14)
        {
          v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [v5 setObject:v14 forKey:v13];
        }

        [v14 addObject:v11];
      }

      v7 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);
  }

  v15 = [(VUIMediaEntitiesToGroupsValueTransformer *)v22 sortIndexKeyPath];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__26;
  v31 = __Block_byref_object_dispose__26;
  v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __61__VUIMediaEntitiesToGroupsValueTransformer_transformedValue___block_invoke;
  v24[3] = &unk_1E8735388;
  v16 = v15;
  v25 = v16;
  v26 = &v27;
  [v5 enumerateKeysAndObjectsUsingBlock:v24];
  v17 = [(VUIMediaEntitiesToGroupsValueTransformer *)v22 groupsSortComparator];
  if (v17)
  {
    goto LABEL_14;
  }

  if ([(VUIMediaEntitiesToGroupsValueTransformer *)v22 performDefaultSort])
  {
    v19 = [v28[5] firstObject];
    v20 = [v19 identifier];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = &__block_literal_global_130;
LABEL_20:

LABEL_14:
      v18 = [v28[5] sortedArrayUsingComparator:v17];

      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = &__block_literal_global_23_0;
      goto LABEL_20;
    }
  }

  v18 = v28[5];
LABEL_23:

  _Block_object_dispose(&v27, 8);

  return v18;
}

void __61__VUIMediaEntitiesToGroupsValueTransformer_transformedValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  v6 = [[VUIMediaEntityGroup alloc] initWithIdentifier:v5];

  [(VUIMediaEntityGroup *)v6 setMediaEntities:v8];
  if (*(a1 + 32))
  {
    v7 = [VUIMediaLibraryUtilities sortIndexesForMediaEntities:v8 sortIndexPropertyKey:?];
    [(VUIMediaEntityGroup *)v6 setSortIndexes:v7];
  }

  [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
}

uint64_t __61__VUIMediaEntitiesToGroupsValueTransformer_transformedValue___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [MEMORY[0x1E69DF788] ascendingTitleSortComparator];
  v8 = (v7)[2](v7, v5, v6);

  return v8;
}

uint64_t __61__VUIMediaEntitiesToGroupsValueTransformer_transformedValue___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 identifier];
  v6 = [v4 identifier];

  v7 = [v5 compare:v6];
  return v7;
}

@end