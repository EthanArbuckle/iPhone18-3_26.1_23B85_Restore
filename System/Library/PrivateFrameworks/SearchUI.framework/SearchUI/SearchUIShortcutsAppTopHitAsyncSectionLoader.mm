@interface SearchUIShortcutsAppTopHitAsyncSectionLoader
+ (BOOL)supportsSectionModel:(id)a3;
- (BOOL)supportsFileProviderRecents;
- (id)buildCardSectionsForFoundItems:(id)a3;
- (id)buildSearchQueryForBundleIdentifier:(id)a3;
- (id)fileProviderQueryString;
- (id)rankingQueriesForFileprovider;
- (id)rankingQueriesForShortcuts;
- (id)shortcutsQueryString;
@end

@implementation SearchUIShortcutsAppTopHitAsyncSectionLoader

+ (BOOL)supportsSectionModel:(id)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SearchUIShortcutsAppTopHitAsyncSectionLoader;
  return objc_msgSendSuper2(&v4, sel_supportsSectionModel_, a3);
}

- (id)buildSearchQueryForBundleIdentifier:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = [(SearchUICoreSpotlightAppTopHitAsyncSectionLoader *)self defaultFetchAttributes];
  [v4 setFetchAttributes:v5];

  [v4 setMaxCount:{objc_msgSend(objc_opt_class(), "maxNumOfTopHitEntities")}];
  [v4 setDisableSemanticSearch:1];
  v6 = objc_opt_new();
  v7 = MEMORY[0x1E695DF70];
  v27[0] = *MEMORY[0x1E69D3F78];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v9 = [v7 arrayWithArray:v8];

  v10 = [(SearchUIShortcutsAppTopHitAsyncSectionLoader *)self shortcutsQueryString];
  if ([(SearchUIShortcutsAppTopHitAsyncSectionLoader *)self supportsFileProviderRecents])
  {
    v11 = [(SearchUIAsyncSectionLoader *)self delegate];
    v12 = [v11 deviceIsAuthenticated];

    if (v12)
    {
      v13 = MEMORY[0x1E696AEC0];
      v14 = [(SearchUIShortcutsAppTopHitAsyncSectionLoader *)self fileProviderQueryString];
      v15 = [v13 stringWithFormat:@"(%@) || (%@)", v10, v14];

      v16 = [(SearchUIShortcutsAppTopHitAsyncSectionLoader *)self rankingQueriesForFileprovider];
      [v6 addObjectsFromArray:v16];

      v17 = *MEMORY[0x1E69D3EE8];
      v26[0] = *MEMORY[0x1E69D3EC0];
      v26[1] = v17;
      v18 = *MEMORY[0x1E69D3EF8];
      v26[2] = *MEMORY[0x1E69D3EF0];
      v26[3] = v18;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
      [v9 addObjectsFromArray:v19];

      v10 = v15;
    }
  }

  v20 = [(SearchUIAsyncSectionLoader *)self delegate];
  v21 = [v20 deviceIsAuthenticated];

  if ((v21 & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) && (%@ == %@)", v10, *MEMORY[0x1E6964928], *MEMORY[0x1E696A3A8]];

    v10 = v22;
  }

  v23 = [(SearchUIShortcutsAppTopHitAsyncSectionLoader *)self rankingQueriesForShortcuts];
  [v6 addObjectsFromArray:v23];

  [v4 setRankingQueries:v6];
  [v4 setBundleIDs:v9];
  v24 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:v10 queryContext:v4];

  return v24;
}

- (id)buildCardSectionsForFoundItems:(id)a3
{
  v4 = [a3 mutableCopy];
  [v4 sortUsingComparator:&__block_literal_global_37];
  v7.receiver = self;
  v7.super_class = SearchUIShortcutsAppTopHitAsyncSectionLoader;
  v5 = [(SearchUICoreSpotlightAppTopHitAsyncSectionLoader *)&v7 buildCardSectionsForFoundItems:v4];

  return v5;
}

uint64_t __79__SearchUIShortcutsAppTopHitAsyncSectionLoader_buildCardSectionsForFoundItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 domainIdentifier];
  v7 = *MEMORY[0x1E69E0FC0];
  v8 = [v6 isEqualToString:*MEMORY[0x1E69E0FC0]];

  v9 = [v5 domainIdentifier];
  v10 = [v9 isEqualToString:v7];

  if (v8)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v17 = [v4 attributeSet];
    v18 = [v17 title];
    v19 = [v5 attributeSet];
    v20 = [v19 title];
    v21 = [v18 compare:v20];
    goto LABEL_12;
  }

  if (v8)
  {
    v21 = -1;
  }

  else
  {
    v21 = 1;
  }

  if (((v8 | v10) & 1) == 0)
  {
    v12 = [v4 attributeSet];
    v13 = *MEMORY[0x1E6964A98];
    v14 = [v12 attributeForKey:*MEMORY[0x1E6964A98]];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-1];
    }

    v17 = v16;

    v22 = [v5 attributeSet];
    v23 = [v22 attributeForKey:v13];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-1];
    }

    v18 = v25;

    v26 = [v17 compare:v18];
    if (v26)
    {
      v21 = v26;
      goto LABEL_19;
    }

    v19 = [v5 attributeSet];
    v20 = [v19 lastUsedDate];
    v28 = [v4 attributeSet];
    v29 = [v28 lastUsedDate];
    v21 = [v20 compare:v29];

LABEL_12:
LABEL_19:
  }

  return v21;
}

- (id)rankingQueriesForShortcuts
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SearchUIShortcutsAppTopHitAsyncSectionLoader_rankingQueriesForShortcuts__block_invoke;
  block[3] = &unk_1E85B24C8;
  block[4] = self;
  if (rankingQueriesForShortcuts_onceToken != -1)
  {
    dispatch_once(&rankingQueriesForShortcuts_onceToken, block);
  }

  return rankingQueriesForShortcuts_rankingQueries;
}

void __74__SearchUIShortcutsAppTopHitAsyncSectionLoader_rankingQueriesForShortcuts__block_invoke(uint64_t a1)
{
  v10 = objc_opt_new();
  v2 = [*(a1 + 32) appShortcutTopHitFilterQuery];
  [v10 addObject:v2];

  v3 = [objc_opt_class() maxNumOfTopHitEntities];
  if (v3)
  {
    v4 = *MEMORY[0x1E6964A98];
    do
    {
      v5 = v3 - 1;
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"InRange(%@, %lu, %lu)", v4, v3 - 1, v3];
      [v10 addObject:v6];

      v3 = v5;
    }

    while (v5);
  }

  v7 = [*(a1 + 32) userShortcutFilterQuery];
  [v10 addObject:v7];

  v8 = [v10 copy];
  v9 = rankingQueriesForShortcuts_rankingQueries;
  rankingQueriesForShortcuts_rankingQueries = v8;
}

- (id)shortcutsQueryString
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = *MEMORY[0x1E6964A20];
  v5 = [(SearchUIAppTopHitAsyncSectionLoader *)self bundleIdentifier];
  v6 = [v3 stringWithFormat:@"%@==%@", v4, v5];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [(SearchUIShortcutsAppTopHitAsyncSectionLoader *)self appShortcutTopHitFilterQuery];
  v9 = [(SearchUIShortcutsAppTopHitAsyncSectionLoader *)self userShortcutFilterQuery];
  v10 = [v7 stringWithFormat:@"((%@) && ((%@) || (%@)))", v6, v8, v9];

  return v10;
}

- (BOOL)supportsFileProviderRecents
{
  v2 = MEMORY[0x1E69D3EA8];
  v3 = [(SearchUIAppTopHitAsyncSectionLoader *)self bundleIdentifier];
  v4 = [v2 supportsFileProviderFor:v3];

  return v4;
}

- (id)rankingQueriesForFileprovider
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__SearchUIShortcutsAppTopHitAsyncSectionLoader_rankingQueriesForFileprovider__block_invoke;
  block[3] = &unk_1E85B24C8;
  block[4] = self;
  if (rankingQueriesForFileprovider_onceToken != -1)
  {
    dispatch_once(&rankingQueriesForFileprovider_onceToken, block);
  }

  return rankingQueriesForFileprovider_rankingQueries;
}

void __77__SearchUIShortcutsAppTopHitAsyncSectionLoader_rankingQueriesForFileprovider__block_invoke(uint64_t a1)
{
  v7 = objc_opt_new();
  for (i = 0; i != 16; ++i)
  {
    v3 = [*(a1 + 32) dateRangeQueryForUpToSeconds:60 * qword_1DA272C68[i]];
    [v7 addObject:v3];
  }

  v4 = [*(a1 + 32) futureDateRangeQuery];
  [v7 addObject:v4];

  v5 = [v7 copy];
  v6 = rankingQueriesForFileprovider_rankingQueries;
  rankingQueriesForFileprovider_rankingQueries = v5;
}

- (id)fileProviderQueryString
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [(SearchUIAppTopHitAsyncSectionLoader *)self bundleIdentifier];
  v4 = DOCContentTypesReadableByApplicationWithBundleIdentifier();

  if ([v4 count])
  {
    v5 = [MEMORY[0x1E6982C40] doc_identifiersForContentTypes:v4];
    v6 = [MEMORY[0x1E69673B0] defaultManager];
    v7 = [v6 newRecentsCollection];

    [v7 setAllowedFileTypes:v5];
    v8 = [*MEMORY[0x1E6982DC8] identifier];
    v17[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
    [v7 setExcludedFileTypes:v9];

    v10 = [v7 scopedSearchQuery];
    v11 = [v10 toSpotlightQueryString];

    v12 = MEMORY[0x1E696AEC0];
    v13 = [(SearchUIShortcutsAppTopHitAsyncSectionLoader *)self dateRangeQueryForUpToSeconds:1209600];
    v14 = [(SearchUIShortcutsAppTopHitAsyncSectionLoader *)self futureDateRangeQuery];
    v15 = [v12 stringWithFormat:@"(%@) && ((%@) || (%@))", v11, v13, v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end