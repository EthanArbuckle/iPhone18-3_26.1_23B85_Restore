@interface SBHIconLibraryQueryResult
+ (id)nullQueryResults;
+ (void)_hydrateSnapshot:(id)a3 fromIcons:(id)a4 query:(id)a5 outCollationStrategy:(id *)a6 outIconForItemIdentifier:(id *)a7 outSortMethodology:(unint64_t *)a8 sortComparator:(id)a9;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToQueryResult:(id)a3;
- (BOOL)isNullQueryResult;
- (SBHIconLibraryQueryResult)initWithQuery:(id)a3 icons:(id)a4 snapshot:(id)a5 collationStrategy:(id)a6 iconForitemIdentifier:(id)a7 sortMethodology:(unint64_t)a8;
- (SBHIconLibraryQueryResult)initWithQuery:(id)a3 icons:(id)a4 sortComparator:(id)a5;
- (id)_firstExtantSectionWithCollationIndexGreaterThan:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)iconAtIndexPath:(id)a3;
- (id)iconsForSectionAtIndex:(unint64_t)a3;
- (id)indexPathForIcon:(id)a3;
- (id)itemIdentifierForIcon:(id)a3;
- (id)sectionIdentifierAtIndex:(unint64_t)a3;
- (id)sectionIdentifierForIcon:(id)a3;
- (id)titleForSectionAtIndex:(int64_t)a3;
- (id)titleForSectionIdentifier:(id)a3;
- (int64_t)indexOfSectionForSectionIndexTitleAtIndex:(int64_t)a3;
- (unint64_t)totalNumberOfItems;
@end

@implementation SBHIconLibraryQueryResult

+ (id)nullQueryResults
{
  if (nullQueryResults_onceToken != -1)
  {
    +[SBHIconLibraryQueryResult nullQueryResults];
  }

  v3 = nullQueryResults_nullQueryResults;

  return v3;
}

void __45__SBHIconLibraryQueryResult_nullQueryResults__block_invoke()
{
  v0 = [SBHIconLibraryQueryResult alloc];
  v4 = [[SBHIconLibraryQuery alloc] initWithSearchString:0];
  v1 = [MEMORY[0x1E695DFD8] set];
  v2 = [(SBHIconLibraryQueryResult *)v0 initWithQuery:v4 icons:v1 sortComparator:0];
  v3 = nullQueryResults_nullQueryResults;
  nullQueryResults_nullQueryResults = v2;
}

- (SBHIconLibraryQueryResult)initWithQuery:(id)a3 icons:(id)a4 snapshot:(id)a5 collationStrategy:(id)a6 iconForitemIdentifier:(id)a7 sortMethodology:(unint64_t)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v30.receiver = self;
  v30.super_class = SBHIconLibraryQueryResult;
  v20 = [(SBHIconLibraryQueryResult *)&v30 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_query, a3);
    v22 = [v16 copy];
    icons = v21->_icons;
    v21->_icons = v22;

    v24 = [v17 copy];
    snapshot = v21->_snapshot;
    v21->_snapshot = v24;

    objc_storeStrong(&v21->_collationStrategy, a6);
    v26 = [v19 copy];
    iconForItemIdentifier = v21->_iconForItemIdentifier;
    v21->_iconForItemIdentifier = v26;

    v21->_sortMethodology = a8;
    v28 = _gQueryResultIdx++;
    v21->_totalNumberOfItems = 0x7FFFFFFFFFFFFFFFLL;
    v21->_queryResultIdx = v28;
  }

  return v21;
}

- (SBHIconLibraryQueryResult)initWithQuery:(id)a3 icons:(id)a4 sortComparator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v18 = 1;
  v16 = 0;
  v17 = 0;
  [objc_opt_class() _hydrateSnapshot:v11 fromIcons:v9 query:v10 outCollationStrategy:&v17 outIconForItemIdentifier:&v16 outSortMethodology:&v18 sortComparator:v8];

  v12 = v17;
  v13 = v16;
  v14 = [(SBHIconLibraryQueryResult *)self initWithQuery:v10 icons:v9 snapshot:v11 collationStrategy:v12 iconForitemIdentifier:v13 sortMethodology:v18];

  return v14;
}

- (BOOL)isEqualToQueryResult:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  if (self == v4)
  {
    v19 = 1;
    goto LABEL_10;
  }

  v6 = [(SBHIconLibraryQueryResult *)v4 snapshot];
  v7 = [(SBHIconLibraryQueryResult *)self snapshot];
  v8 = BSEqualObjects();

  if (v8 && ([(SBHIconLibraryQueryResult *)v5 query], v9 = objc_claimAutoreleasedReturnValue(), [(SBHIconLibraryQueryResult *)self query], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, v11) && ([(SBHIconLibraryQueryResult *)v5 icons], v12 = objc_claimAutoreleasedReturnValue(), [(SBHIconLibraryQueryResult *)self icons], v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, v14) && ([(SBHIconLibraryQueryResult *)v5 collationStrategy], v15 = objc_claimAutoreleasedReturnValue(), [(SBHIconLibraryQueryResult *)self collationStrategy], v16 = objc_claimAutoreleasedReturnValue(), v17 = BSEqualObjects(), v16, v15, v17))
  {
    v18 = [(SBHIconLibraryQueryResult *)v5 sortMethodology];
    v19 = v18 == [(SBHIconLibraryQueryResult *)self sortMethodology];
  }

  else
  {
LABEL_8:
    v19 = 0;
  }

LABEL_10:

  return v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(SBHIconLibraryQueryResult *)self isEqualToQueryResult:v4];
  }

  return v5;
}

- (BOOL)isNullQueryResult
{
  v3 = +[SBHIconLibraryQueryResult nullQueryResults];
  LOBYTE(self) = [(SBHIconLibraryQueryResult *)self isEqual:v3];

  return self;
}

+ (void)_hydrateSnapshot:(id)a3 fromIcons:(id)a4 query:(id)a5 outCollationStrategy:(id *)a6 outIconForItemIdentifier:(id *)a7 outSortMethodology:(unint64_t *)a8 sortComparator:(id)a9
{
  v78 = *MEMORY[0x1E69E9840];
  v54 = a3;
  v11 = a4;
  v55 = a5;
  v56 = a9;
  v12 = [v55 searchString];
  v48 = [v12 length];

  v50 = [MEMORY[0x1E695DF90] dictionary];
  v13 = objc_opt_new();
  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v11;
  v15 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
  if (v15)
  {
    v16 = v15;
    LOBYTE(v17) = 0;
    v18 = *v73;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v73 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v72 + 1) + 8 * i);
        v21 = [v20 sbh_iconLibraryItemIdentifier];
        [v13 bs_setSafeObject:v20 forKey:v21];

        if (v17)
        {
          v17 = 1;
        }

        else
        {
          v22 = v20;
          if ([v22 isBookmarkIcon])
          {
            v23 = [v22 webClip];
            v17 = [v23 isAppClip];
          }

          else
          {
            v17 = 0;
          }
        }

        v24 = MEMORY[0x1E698B0D0];
        v25 = [v20 applicationBundleID];
        v26 = [v24 applicationWithBundleIdentifier:v25];

        if (([v26 isHidden] & 1) == 0)
        {
          [v14 addObject:v20];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v72 objects:v77 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  if (v48)
  {
    v76 = SBHLibrarySectionIdentifierNone;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
    v28 = 0;
  }

  else
  {
    if ([v14 count])
    {
      BSDispatchQueueAssertNotMain();
      if (v17)
      {
        +[SBHLocalizedIndexedCollationStrategy dimSumCollationStrategy];
      }

      else
      {
        +[SBHLocalizedIndexedCollationStrategy defaultCollationStrategy];
      }
      v28 = ;
    }

    else
    {
      v28 = 0;
    }

    v27 = [v28 sectionTitles];
  }

  v49 = v27;
  v29 = [v27 count];
  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:v29];
  v31 = [MEMORY[0x1E696AE08] pointerArrayWithOptions:0];
  [v31 setCount:v29];
  if (v48)
  {
    [v30 addObject:SBHLibrarySectionIdentifierNone];
    v32 = v54;
  }

  else
  {
    v32 = v54;
    if (v29)
    {
      for (j = 0; j != v29; ++j)
      {
        v34 = SBHLibrarySectionIdentifierForSectionWithIndex(v28, j);
        [v30 addObject:v34];
      }
    }
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __142__SBHIconLibraryQueryResult__hydrateSnapshot_fromIcons_query_outCollationStrategy_outIconForItemIdentifier_outSortMethodology_sortComparator___block_invoke;
  aBlock[3] = &unk_1E808F5B0;
  v35 = v14;
  v66 = v35;
  v71 = v48 == 0;
  v36 = v28;
  v67 = v36;
  v37 = v30;
  v68 = v37;
  v38 = v50;
  v69 = v38;
  v39 = v31;
  v70 = v39;
  v40 = _Block_copy(aBlock);
  v41 = v40;
  if (v36)
  {
    dispatch_sync(MEMORY[0x1E69E96A0], v40);
  }

  else
  {
    v40[2](v40);
  }

  if (a8)
  {
    v42 = v36 != 0;
    if (v56)
    {
      v42 = 2;
    }

    *a8 = v42;
  }

  if (v32)
  {
    v43 = [v39 allObjects];
    [v32 appendSectionsWithIdentifiers:v43];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __142__SBHIconLibraryQueryResult__hydrateSnapshot_fromIcons_query_outCollationStrategy_outIconForItemIdentifier_outSortMethodology_sortComparator___block_invoke_2;
    v58[3] = &unk_1E808F5D8;
    v59 = v38;
    v64 = v48 == 0;
    v60 = v36;
    v63 = v56;
    v61 = v55;
    v62 = v32;
    v44 = _Block_copy(v58);
    v45 = v44;
    if (v36)
    {
      dispatch_sync(MEMORY[0x1E69E96A0], v44);
    }

    else
    {
      v44[2](v44);
    }
  }

  if (a6)
  {
    v46 = v36;
    *a6 = v36;
  }

  if (a7)
  {
    v47 = v13;
    *a7 = v13;
  }
}

void __142__SBHIconLibraryQueryResult__hydrateSnapshot_fromIcons_query_outCollationStrategy_outIconForItemIdentifier_outSortMethodology_sortComparator___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        if (*(a1 + 72) == 1)
        {
          v8 = [*(a1 + 40) sectionForObject:*(*(&v11 + 1) + 8 * v6) collationStringSelector:{sel__sbhIconLibraryCollationString, v11}];
        }

        else
        {
          v8 = 0;
        }

        v9 = [*(a1 + 48) objectAtIndexedSubscript:{v8, v11}];
        v10 = [*(a1 + 56) objectForKeyedSubscript:v9];
        if (!v10)
        {
          v10 = [MEMORY[0x1E695DF70] array];
          [*(a1 + 56) setObject:v10 forKeyedSubscript:v9];
          [*(a1 + 64) replacePointerAtIndex:v8 withPointer:v9];
        }

        [v10 addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __142__SBHIconLibraryQueryResult__hydrateSnapshot_fromIcons_query_outCollationStrategy_outIconForItemIdentifier_outSortMethodology_sortComparator___block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [*(a1 + 32) allKeys];
  v3 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      v14 = sel__sbhIconLibraryCollationString;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [*(a1 + 32) objectForKey:{v7, v14}];
        if (*(a1 + 72))
        {
          v9 = *(a1 + 40);
          if (v9)
          {
            v10 = [v9 sortedArrayFromArray:v8 collationStringSelector:v14];
            v11 = 0;
            goto LABEL_14;
          }

          v12 = 0;
LABEL_12:
          v11 = 0;
          goto LABEL_13;
        }

        v12 = *(a1 + 64);
        if (v12)
        {
          goto LABEL_12;
        }

        v12 = [*(a1 + 48) comparator];
        v11 = 1;
        v1 = v12;
LABEL_13:
        v10 = [v8 sortedArrayUsingComparator:v12];
LABEL_14:
        v13 = [v10 bs_mapNoNulls:&__block_literal_global_123_0];

        if (v11)
        {
        }

        [*(a1 + 56) appendItemsWithIdentifiers:v13 intoSectionWithIdentifier:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBHIconLibraryQueryResult allocWithZone:a3];
  v5 = [(SBHIconLibraryQuery *)self->_query copy];
  v6 = [(NSSet *)self->_icons copy];
  v7 = [(NSDiffableDataSourceSnapshot *)self->_snapshot copy];
  collationStrategy = self->_collationStrategy;
  v9 = [(NSDictionary *)self->_iconForItemIdentifier copy];
  v10 = [(SBHIconLibraryQueryResult *)v4 initWithQuery:v5 icons:v6 snapshot:v7 collationStrategy:collationStrategy iconForitemIdentifier:v9 sortMethodology:self->_sortMethodology];

  return v10;
}

- (unint64_t)totalNumberOfItems
{
  v15 = *MEMORY[0x1E69E9840];
  totalNumberOfItems = self->_totalNumberOfItems;
  if (totalNumberOfItems == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(NSDiffableDataSourceSnapshot *)self->_snapshot sectionIdentifiers];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      totalNumberOfItems = 0;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          totalNumberOfItems += [(NSDiffableDataSourceSnapshot *)self->_snapshot numberOfItemsInSection:*(*(&v10 + 1) + 8 * i)];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }

    else
    {
      totalNumberOfItems = 0;
    }

    self->_totalNumberOfItems = totalNumberOfItems;
  }

  return totalNumberOfItems;
}

- (id)itemIdentifierForIcon:(id)a3
{
  v3 = a3;
  if ([v3 isLeafIcon])
  {
    v4 = [v3 sbh_iconLibraryItemIdentifier];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sectionIdentifierForIcon:(id)a3
{
  v4 = a3;
  query = self->_query;
  v6 = self->_collationStrategy;
  v7 = query;
  v8 = [(SBHIconLibraryQuery *)v7 searchString];
  v9 = [v8 length];

  if (v9)
  {
    v10 = SBHLibrarySectionIdentifierNone;
  }

  else
  {
    v11 = [(SBHLocalizedIndexedCollationStrategy *)v6 sectionTitles];
    v12 = [(SBHLocalizedIndexedCollationStrategy *)v6 sectionForObject:v4 collationStringSelector:sel__sbhIconLibraryCollationString];
    if (v12 >= [v11 count])
    {
      v10 = 0;
    }

    else
    {
      v13 = [v11 objectAtIndex:v12];
      v14 = [(SBHIconLibraryQuery *)v7 searchString];
      v15 = [v14 length];

      if (v15)
      {
        v16 = SBHLibrarySectionIdentifierNone;
      }

      else
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"section-(%lu)-%@-indexable", v12, v13];
      }

      v10 = v16;
    }
  }

  return v10;
}

- (id)titleForSectionIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:SBHLibrarySectionIdentifierNone])
  {
    v5 = &stru_1F3D472A8;
  }

  else
  {
    v6 = [(SBHLocalizedIndexedCollationStrategy *)self->_collationStrategy sectionTitles];
    v7 = v4;
    v8 = [v7 rangeOfString:@"" options:? range:?], 0, 9, objc_msgSend(v7, "length") - 9);
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [v7 substringWithRange:{9, v8 + v9}];
      v10 = [v11 integerValue];
    }

    v5 = [v6 objectAtIndexedSubscript:v10];
  }

  return v5;
}

- (int64_t)indexOfSectionForSectionIndexTitleAtIndex:(int64_t)a3
{
  v5 = SBHLibrarySectionIdentifierForSectionWithIndex(self->_collationStrategy, a3);
  v6 = [(SBHIconLibraryQueryResult *)self snapshot];
  v7 = [v6 sectionIdentifiers];

  if ([v7 containsObject:v5])
  {
    v8 = v5;
  }

  else
  {
    v8 = [(SBHIconLibraryQueryResult *)self _firstExtantSectionWithCollationIndexGreaterThan:a3];
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v7 indexOfObject:v8];
  }

  else
  {
    v10 = [v7 count] - 1;
  }

  return v10;
}

- (id)_firstExtantSectionWithCollationIndexGreaterThan:(int64_t)a3
{
  v5 = [(SBHIconLibraryQueryResult *)self snapshot];
  v6 = [v5 sectionIdentifiers];

  v7 = [(SBHLocalizedIndexedCollationStrategy *)self->_collationStrategy sectionIndexTitles];
  v8 = [v7 count];

  v9 = a3 + 1;
  if (v9 >= v8)
  {
LABEL_4:
    v10 = 0;
  }

  else
  {
    while (1)
    {
      v10 = SBHLibrarySectionIdentifierForSectionWithIndex(self->_collationStrategy, v9);
      if ([v6 containsObject:v10])
      {
        break;
      }

      if (v8 == ++v9)
      {
        goto LABEL_4;
      }
    }
  }

  return v10;
}

- (id)indexPathForIcon:(id)a3
{
  v4 = a3;
  v5 = [(SBHIconLibraryQueryResult *)self sectionIdentifierForIcon:v4];
  if (v5)
  {
    v6 = [(SBHIconLibraryQueryResult *)self itemIdentifierForIcon:v4];
    v7 = [(SBHIconLibraryQueryResult *)self indexOfSectionIdentifier:v5];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v9 = v7;
      v10 = [(SBHIconLibraryQueryResult *)self snapshot];
      v11 = [v10 itemIdentifiersInSectionWithIdentifier:v5];
      v12 = [v11 indexOfObject:v6];

      v8 = [MEMORY[0x1E696AC88] indexPathForRow:v12 inSection:v9];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)sectionIdentifierAtIndex:(unint64_t)a3
{
  v4 = [(SBHIconLibraryQueryResult *)self sectionIdentifiers];
  if ([v4 count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 objectAtIndex:a3];
  }

  return v5;
}

- (id)iconAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = -[SBHIconLibraryQueryResult sectionIdentifierAtIndex:](self, "sectionIdentifierAtIndex:", [v4 indexAtPosition:0]);
  if (v5)
  {
    v6 = [(SBHIconLibraryQueryResult *)self snapshot];
    v7 = [v6 itemIdentifiersInSectionWithIdentifier:v5];
    if (!v7 || (v8 = [v4 indexAtPosition:1], v8 == 0x7FFFFFFFFFFFFFFFLL) || (v9 = v8, v8 >= objc_msgSend(v7, "count")))
    {
      v11 = 0;
    }

    else
    {
      v10 = [v7 objectAtIndex:v9];
      v11 = [(SBHIconLibraryQueryResult *)self iconForItemIdentifier:v10];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)titleForSectionAtIndex:(int64_t)a3
{
  v5 = [(SBHIconLibraryQueryResult *)self sectionIdentifiers];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(SBHIconLibraryQueryResult *)self titleForSectionIdentifier:v6];

  return v7;
}

- (id)iconsForSectionAtIndex:(unint64_t)a3
{
  v4 = [(SBHIconLibraryQueryResult *)self sectionIdentifierAtIndex:a3];
  v5 = [(SBHIconLibraryQueryResult *)self snapshot];
  v6 = [v5 itemIdentifiersInSectionWithIdentifier:v4];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__SBHIconLibraryQueryResult_iconsForSectionAtIndex___block_invoke;
  v9[3] = &unk_1E808C8D0;
  v9[4] = self;
  v7 = [v6 bs_mapNoNulls:v9];

  return v7;
}

@end