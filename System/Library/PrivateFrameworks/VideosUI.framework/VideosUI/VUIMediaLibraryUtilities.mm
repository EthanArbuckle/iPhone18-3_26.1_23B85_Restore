@interface VUIMediaLibraryUtilities
+ (id)_sortIndexesForObjects:(id)objects titleForObjectBlock:(id)block;
+ (id)groupingForMediaEntities:(id)entities groupingKeyPath:(id)path groupingSortComparator:(id)comparator performDefaultSort:(BOOL)sort sortIndexPropertyKey:(id)key;
+ (id)mediaItemEntityTypesSortComparator;
+ (id)sortIndexesForMediaEntities:(id)entities sortIndexPropertyKey:(id)key;
@end

@implementation VUIMediaLibraryUtilities

+ (id)groupingForMediaEntities:(id)entities groupingKeyPath:(id)path groupingSortComparator:(id)comparator performDefaultSort:(BOOL)sort sortIndexPropertyKey:(id)key
{
  sortCopy = sort;
  keyCopy = key;
  comparatorCopy = comparator;
  pathCopy = path;
  entitiesCopy = entities;
  v15 = [[VUIMediaEntitiesToGroupsValueTransformer alloc] initWithIdentifierKeyPath:pathCopy];

  [(VUIMediaEntitiesToGroupsValueTransformer *)v15 setGroupsSortComparator:comparatorCopy];
  [(VUIMediaEntitiesToGroupsValueTransformer *)v15 setPerformDefaultSort:sortCopy];
  [(VUIMediaEntitiesToGroupsValueTransformer *)v15 setSortIndexKeyPath:keyCopy];

  v16 = [(VUIMediaEntitiesToGroupsValueTransformer *)v15 transformedValue:entitiesCopy];

  return v16;
}

+ (id)sortIndexesForMediaEntities:(id)entities sortIndexPropertyKey:(id)key
{
  keyCopy = key;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__VUIMediaLibraryUtilities_sortIndexesForMediaEntities_sortIndexPropertyKey___block_invoke;
  v10[3] = &unk_1E87370F0;
  v11 = keyCopy;
  v7 = keyCopy;
  v8 = [self _sortIndexesForObjects:entities titleForObjectBlock:v10];

  return v8;
}

+ (id)mediaItemEntityTypesSortComparator
{
  if (mediaItemEntityTypesSortComparator___onceToken != -1)
  {
    +[VUIMediaLibraryUtilities mediaItemEntityTypesSortComparator];
  }

  return &__block_literal_global_21_1;
}

void __62__VUIMediaLibraryUtilities_mediaItemEntityTypesSortComparator__block_invoke()
{
  v9[6] = *MEMORY[0x1E69E9840];
  v0 = +[VUIMediaEntityType movieRental];
  v8[0] = v0;
  v9[0] = &unk_1F5E5E670;
  v1 = +[VUIMediaEntityType show];
  v8[1] = v1;
  v9[1] = &unk_1F5E5E688;
  v2 = +[VUIMediaEntityType season];
  v8[2] = v2;
  v9[2] = &unk_1F5E5E6A0;
  v3 = +[VUIMediaEntityType episode];
  v8[3] = v3;
  v9[3] = &unk_1F5E5E6B8;
  v4 = +[VUIMediaEntityType movie];
  v8[4] = v4;
  v9[4] = &unk_1F5E5E6D0;
  v5 = +[VUIMediaEntityType homeVideo];
  v8[5] = v5;
  v9[5] = &unk_1F5E5E6E8;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:6];
  v7 = mediaItemEntityTypesSortComparator___mediaItemEntityTypeToSortOrder;
  mediaItemEntityTypesSortComparator___mediaItemEntityTypeToSortOrder = v6;
}

uint64_t __62__VUIMediaLibraryUtilities_mediaItemEntityTypesSortComparator__block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = mediaItemEntityTypesSortComparator___mediaItemEntityTypeToSortOrder;
  v5 = a3;
  v6 = [v4 objectForKey:a2];
  v7 = [mediaItemEntityTypesSortComparator___mediaItemEntityTypeToSortOrder objectForKey:v5];

  v8 = [v6 compare:v7];
  return v8;
}

+ (id)_sortIndexesForObjects:(id)objects titleForObjectBlock:(id)block
{
  objectsCopy = objects;
  blockCopy = block;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__35;
  v30 = __Block_byref_object_dispose__35;
  v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__35;
  v24 = __Block_byref_object_dispose__35;
  v25 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 1;
  letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__VUIMediaLibraryUtilities__sortIndexesForObjects_titleForObjectBlock___block_invoke;
  v12[3] = &unk_1E8737138;
  v15 = v18;
  v8 = blockCopy;
  v14 = v8;
  v16 = &v20;
  v9 = letterCharacterSet;
  v13 = v9;
  v17 = &v26;
  [objectsCopy enumerateObjectsUsingBlock:v12];
  if (v21[5])
  {
    [v27[5] addObject:?];
  }

  v10 = [v27[5] copy];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v10;
}

void __71__VUIMediaLibraryUtilities__sortIndexesForObjects_titleForObjectBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v15 = 0;
    v5 = (*(*(a1 + 40) + 16))();
    if ([v5 length])
    {
      v15 = [v5 characterAtIndex:0];
      v6 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v15 length:1];
    }

    else
    {
      v6 = &stru_1F5DB25C0;
    }

    v9 = *(*(*(a1 + 56) + 8) + 40);
    if (v9 && ([v9 title], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[__CFString isEqualToString:](v6, "isEqualToString:", v10), v10, v11))
    {
      [*(*(*(a1 + 56) + 8) + 40) setCount:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count") + 1}];
    }

    else
    {
      if (([*(a1 + 32) characterIsMember:v15] & 1) == 0)
      {

        *(*(*(a1 + 48) + 8) + 24) = 0;
        v6 = @"#";
      }

      if (*(*(*(a1 + 56) + 8) + 40))
      {
        [*(*(*(a1 + 64) + 8) + 40) addObject:?];
      }

      v12 = [[VUIMediaEntitySortIndex alloc] initWithTitle:v6 startIndex:a3 count:1];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }
  }

  else
  {
    v7 = [*(*(*(a1 + 56) + 8) + 40) count] + 1;
    v8 = *(*(*(a1 + 56) + 8) + 40);

    [v8 setCount:v7];
  }
}

@end