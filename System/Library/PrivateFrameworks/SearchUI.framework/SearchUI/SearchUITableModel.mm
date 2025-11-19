@interface SearchUITableModel
+ (BOOL)resultHasHorizontallyGroupedCardSections:(id)a3;
+ (SearchUITableModel)tableModelWithCardSections:(id)a3 result:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 shouldCombine:(BOOL)a7;
+ (SearchUITableModel)tableModelWithResult:(id)a3;
+ (SearchUITableModel)tableModelWithResults:(id)a3;
+ (SearchUITableModel)tableModelWithSections:(id)a3 expandedSections:(id)a4 expandedCollectionCardSections:(id)a5;
+ (id)rowModelForCardSection:(id)a3 result:(id)a4;
- (BOOL)indexPathExists:(id)a3;
- (BOOL)rowWillFillBackgroundWithContentAtIndexPath:(id)a3;
- (SearchUITableModel)initWithQueryId:(unint64_t)a3;
- (id)cardSectionForIndexPath:(id)a3;
- (id)description;
- (id)indexPathForResultInFirstTwoSections:(id)a3;
- (id)indexPathForRowModel:(id)a3;
- (id)removeRowModel:(id)a3;
- (id)resultForIndexPath:(id)a3;
- (id)rowModelForIndexPath:(id)a3;
- (id)sectionForIndex:(unint64_t)a3;
- (id)updatedTableModelByDeletingSectionIndex:(unint64_t)a3;
- (id)updatedTableModelWithExpandedSections:(id)a3 expandedCollectionCardSections:(id)a4 hiddenSections:(id)a5 atSectionIndex:(unint64_t)a6;
- (int)separatorStyleForIndexPath:(id)a3;
- (int64_t)numberOfRowsForSection:(int64_t)a3;
- (unint64_t)indexOfSection:(id)a3;
- (unint64_t)numberOfSections;
- (void)enumerateRowModels:(id)a3;
- (void)replaceResult:(id)a3 withResult:(id)a4 completion:(id)a5;
@end

@implementation SearchUITableModel

- (SearchUITableModel)initWithQueryId:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SearchUITableModel;
  result = [(SearchUITableModel *)&v5 init];
  if (result)
  {
    result->_queryId = a3;
  }

  return result;
}

+ (SearchUITableModel)tableModelWithSections:(id)a3 expandedSections:(id)a4 expandedCollectionCardSections:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [[SearchUIDataSourceSnapshotBuilder alloc] initWithExpandedSections:v9 expandedCollectionSections:v8];

  v11 = [v7 firstObject];
  v12 = [v11 results];
  v13 = [v12 firstObject];
  v14 = [v13 queryId];
  if (!v14)
  {
    v15 = [v7 lastObject];
    v16 = [v15 results];
    v17 = [v16 firstObject];
    v14 = [v17 queryId];
  }

  v18 = [[SearchUITableModel alloc] initWithQueryId:v14];
  v19 = [(SearchUIDataSourceSnapshotBuilder *)v10 buildRowModelsFromResultSections:v7 queryId:v14];
  v20 = [v19 mutableCopy];
  [(SearchUITableModel *)v18 setTableRowModel:v20];

  [(SearchUITableModel *)v18 setSections:v7];

  return v18;
}

+ (BOOL)resultHasHorizontallyGroupedCardSections:(id)a3
{
  v3 = a3;
  v4 = [SearchUIUtilities cardSectionsForRenderingResult:v3];
  if ([v4 count])
  {
    v5 = [v3 renderHorizontallyWithOtherResultsInCategory];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (SearchUITableModel)tableModelWithCardSections:(id)a3 result:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6 shouldCombine:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a3;
  v13 = [[SearchUITableModel alloc] initWithQueryId:a6];
  v14 = objc_opt_new();
  v15 = [v14 buildRowModelsFromCardSections:v12 result:v11 isInline:v9 queryId:a6];

  if (v7)
  {
    v16 = [v14 buildCombinedRowModelsFromRowModels:v15 result:v11];

    v15 = v16;
  }

  v17 = MEMORY[0x1E695DF70];
  v18 = [MEMORY[0x1E695DF70] arrayWithArray:v15];
  v22[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v20 = [v17 arrayWithArray:v19];
  [(SearchUITableModel *)v13 setTableRowModel:v20];

  return v13;
}

+ (SearchUITableModel)tableModelWithResult:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = a3;
    v4 = MEMORY[0x1E695DEC8];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v9 count:1];

    v7 = [a1 tableModelWithResults:{v6, v9, v10}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (SearchUITableModel)tableModelWithResults:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setResults:v4];

  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [a1 tableModelWithSections:v6 expandedSections:0 expandedCollectionCardSections:0];

  return v7;
}

- (id)updatedTableModelWithExpandedSections:(id)a3 expandedCollectionCardSections:(id)a4 hiddenSections:(id)a5 atSectionIndex:(unint64_t)a6
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(SearchUITableModel *)self sections];
  v14 = [v13 mutableCopy];

  if (v12)
  {
    v15 = [v14 objectAtIndexedSubscript:a6];
    [v15 setIsInitiallyHidden:1];

    v16 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a6, objc_msgSend(v12, "count")}];
    [v14 removeObjectAtIndex:a6];
    [v14 insertObjects:v12 atIndexes:v16];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = v12;
    v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v25;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v25 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v24 + 1) + 8 * i) setIsInitiallyHidden:{0, v24}];
        }

        v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v19);
    }
  }

  v22 = [objc_opt_class() tableModelWithSections:v14 expandedSections:v10 expandedCollectionCardSections:v11];

  return v22;
}

- (id)updatedTableModelByDeletingSectionIndex:(unint64_t)a3
{
  v4 = [(SearchUITableModel *)self sections];
  v5 = [v4 mutableCopy];

  [v5 removeObjectAtIndex:a3];
  v6 = [objc_opt_class() tableModelWithSections:v5 expandedSections:0 expandedCollectionCardSections:0];

  return v6;
}

- (unint64_t)numberOfSections
{
  v2 = [(SearchUITableModel *)self tableRowModel];
  v3 = [v2 count];

  return v3;
}

- (void)replaceResult:(id)a3 withResult:(id)a4 completion:(id)a5
{
  v8 = a3;
  v40 = a4;
  v41 = a5;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__4;
  v47 = __Block_byref_object_dispose__4;
  v48 = objc_opt_new();
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __58__SearchUITableModel_replaceResult_withResult_completion___block_invoke;
  v42[3] = &unk_1E85B41B0;
  v42[4] = &v43;
  [(SearchUITableModel *)self enumerateRowModels:v42];
  v9 = [SearchUIDataSourceSnapshotBuilder alloc];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = [v44[5] copy];
  v13 = objc_opt_new();
  v14 = [(SearchUIDataSourceSnapshotBuilder *)v9 initWithExpandedSections:v10 expandedCollectionSections:v11 rowModelIdentifiers:v12 sectionModelIdentifiers:v13];

  v15 = [(SearchUIDataSourceSnapshotBuilder *)v14 buildRowModelsFromResult:v8];
  v39 = v14;
  v16 = [(SearchUIDataSourceSnapshotBuilder *)v14 buildRowModelsFromResult:v40];
  v17 = [v15 firstObject];
  v18 = [(SearchUITableModel *)self indexPathForRowModel:v17];

  if (v18)
  {
    v19 = [v18 section];
    v38 = v18;
    v20 = [v18 row];
    v21 = [(SearchUITableModel *)self tableRowModel];
    v22 = [v21 objectAtIndexedSubscript:v19];
    v23 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v20, objc_msgSend(v15, "count")}];
    [v22 removeObjectsAtIndexes:v23];

    v24 = [(SearchUITableModel *)self tableRowModel];
    v25 = [v24 objectAtIndexedSubscript:v19];
    v26 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v20, objc_msgSend(v16, "count")}];
    [v25 insertObjects:v16 atIndexes:v26];

    v27 = objc_opt_new();
    v28 = objc_opt_new();
    v37 = v8;
    v29 = objc_opt_new();
    for (i = 0; ; ++i)
    {
      v31 = [v16 count];
      v32 = [v15 count];
      v33 = v31 <= v32 ? v32 : v31;
      if (i >= v33)
      {
        break;
      }

      v34 = [MEMORY[0x1E696AC88] indexPathForRow:v20 + i inSection:v19];
      if (i >= [v16 count] || (v35 = objc_msgSend(v15, "count"), v36 = v27, i >= v35))
      {
        if (i >= [v16 count])
        {
          v36 = v28;
        }

        else
        {
          v36 = v29;
        }
      }

      [v36 addObject:v34];
    }

    if ([v27 count])
    {
      v41[2](v41, 1, v27);
    }

    if ([v28 count])
    {
      v41[2](v41, 2, v28);
    }

    if ([v29 count])
    {
      v41[2](v41, 0, v29);
    }

    v8 = v37;
    v18 = v38;
  }

  _Block_object_dispose(&v43, 8);
}

void __58__SearchUITableModel_replaceResult_withResult_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  v3 = [a2 itemIdentifier];
  [v2 addObject:v3];
}

- (id)removeRowModel:(id)a3
{
  v4 = [(SearchUITableModel *)self indexPathForRowModel:a3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 section];
    v7 = [(SearchUITableModel *)self tableRowModel];
    if (v6 >= [v7 count])
    {
    }

    else
    {
      v8 = [v5 row];
      v9 = [(SearchUITableModel *)self tableRowModel];
      v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
      v11 = [v10 count];

      if (v8 < v11)
      {
        v12 = [(SearchUITableModel *)self tableRowModel];
        v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
        [v13 removeObjectAtIndex:{objc_msgSend(v5, "row")}];

        v14 = v5;
        goto LABEL_7;
      }
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

+ (id)rowModelForCardSection:(id)a3 result:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v7 buildRowModelFromCardSection:v6 result:v5];

  return v8;
}

- (int64_t)numberOfRowsForSection:(int64_t)a3
{
  v4 = [(SearchUITableModel *)self tableRowModel];
  v5 = [v4 objectAtIndexedSubscript:a3];
  v6 = [v5 count];

  return v6;
}

- (BOOL)indexPathExists:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || [v4 row] < 0 || objc_msgSend(v5, "section") < 0)
  {
    v11 = 0;
  }

  else
  {
    v6 = [v5 section];
    v7 = [(SearchUITableModel *)self tableRowModel];
    if (v6 >= [v7 count])
    {
      v11 = 0;
    }

    else
    {
      v8 = [v5 row];
      v9 = [(SearchUITableModel *)self tableRowModel];
      v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
      v11 = v8 < [v10 count];
    }
  }

  return v11;
}

- (id)rowModelForIndexPath:(id)a3
{
  v4 = a3;
  if ([(SearchUITableModel *)self indexPathExists:v4])
  {
    v5 = [(SearchUITableModel *)self tableRowModel];
    v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)resultForIndexPath:(id)a3
{
  v3 = [(SearchUITableModel *)self rowModelForIndexPath:a3];
  v4 = [v3 identifyingResult];

  return v4;
}

- (id)sectionForIndex:(unint64_t)a3
{
  v5 = [(SearchUITableModel *)self sections];
  if ([v5 count] <= a3)
  {
    v7 = 0;
  }

  else
  {
    v6 = [(SearchUITableModel *)self sections];
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  return v7;
}

- (unint64_t)indexOfSection:(id)a3
{
  v4 = a3;
  v5 = [(SearchUITableModel *)self sections];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (id)cardSectionForIndexPath:(id)a3
{
  v3 = [(SearchUITableModel *)self rowModelForIndexPath:a3];
  v4 = [v3 cardSection];

  return v4;
}

- (int)separatorStyleForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(SearchUITableModel *)self rowModelForIndexPath:v4];
  v6 = MEMORY[0x1E696AC88];
  v7 = [v4 row];
  v8 = [v4 section];

  v9 = [v6 indexPathForRow:v7 + 1 inSection:v8];
  v10 = [(SearchUITableModel *)self rowModelForIndexPath:v9];

  v11 = [v5 separatorStyle];
  if (!v11)
  {
    if ([v10 prefersNoSeparatorAbove])
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }
  }

  if (v11 == 3 && v10)
  {
    if ([v10 hasLeadingImage])
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }
  }

  return v11;
}

- (BOOL)rowWillFillBackgroundWithContentAtIndexPath:(id)a3
{
  v3 = [(SearchUITableModel *)self rowModelForIndexPath:a3];
  v4 = [v3 fillsBackgroundWithContent];

  return v4;
}

- (id)indexPathForRowModel:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v5 = [(SearchUITableModel *)self tableRowModel];
    v6 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v42;
      v34 = v5;
      v30 = *v42;
      do
      {
        v10 = 0;
        v11 = v8;
        v29 = v8 + v7;
        do
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v41 + 1) + 8 * v10);
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          obj = v12;
          v13 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = 0;
            v16 = *v38;
            v31 = v10;
            v32 = v7;
            v35 = v11;
            while (2)
            {
              v17 = 0;
              v18 = v15;
              v33 = v15 + v14;
              do
              {
                if (*v38 != v16)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v37 + 1) + 8 * v17);
                if (v19 == v4)
                {
                  goto LABEL_26;
                }

                v20 = [v4 identifyingResult];
                v21 = [v19 identifyingResult];
                if (v20 == v21)
                {
                  v22 = [v4 identifyingResult];
                  if (v22)
                  {

LABEL_26:
                    v27 = [MEMORY[0x1E696AC88] indexPathForRow:v18 inSection:{v35, v29}];

                    v5 = v34;
                    goto LABEL_27;
                  }
                }

                v23 = [v4 cardSection];
                v24 = [v19 cardSection];
                v25 = v24;
                if (v23 == v24)
                {
                  v26 = [v4 cardSection];

                  if (v26)
                  {
                    goto LABEL_26;
                  }
                }

                else
                {
                }

                ++v18;
                ++v17;
              }

              while (v14 != v17);
              v14 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
              v5 = v34;
              v11 = v35;
              v9 = v30;
              v10 = v31;
              v7 = v32;
              v15 = v33;
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          ++v11;
          ++v10;
        }

        while (v10 != v7);
        v7 = [v5 countByEnumeratingWithState:&v41 objects:v46 count:16];
        v27 = 0;
        v8 = v29;
      }

      while (v7);
    }

    else
    {
      v27 = 0;
    }

LABEL_27:
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)indexPathForResultInFirstTwoSections:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(SearchUITableModel *)self tableRowModel];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = [(SearchUITableModel *)self tableRowModel];
        v9 = [v8 objectAtIndexedSubscript:v7];
        v10 = [v9 count];

        if (v10)
        {
          v11 = 0;
          do
          {
            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            v12 = [(SearchUITableModel *)self tableRowModel];
            v13 = [v12 objectAtIndexedSubscript:v7];
            v14 = [v13 objectAtIndexedSubscript:v11];
            v15 = [v14 results];

            v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v29;
              while (2)
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v29 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  if (*(*(&v28 + 1) + 8 * i) == v4)
                  {
                    v6 = [MEMORY[0x1E696AC88] indexPathForRow:v11 inSection:v7];

                    goto LABEL_22;
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

            ++v11;
            v20 = [(SearchUITableModel *)self tableRowModel];
            v21 = [v20 objectAtIndexedSubscript:v7];
            v22 = [v21 count];
          }

          while (v11 < v22);
        }

        v23 = v7 + 1;
        v24 = [(SearchUITableModel *)self tableRowModel];
        v25 = [v24 count];

        v6 = 0;
        if (v25 >= 2)
        {
          v26 = 2;
        }

        else
        {
          v26 = v25;
        }

        v7 = 1;
      }

      while (v23 < v26);
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_22:

  return v6;
}

- (id)description
{
  v3 = objc_opt_new();
  v8.receiver = self;
  v8.super_class = SearchUITableModel;
  v4 = [(SearchUITableModel *)&v8 description];
  [v3 appendString:v4];

  v5 = [(SearchUITableModel *)self tableRowModel];
  v6 = [v5 description];
  [v3 appendFormat:@"\n %@", v6];

  return v3;
}

- (void)enumerateRowModels:(id)a3
{
  v19 = a3;
  v4 = [(SearchUITableModel *)self tableRowModel];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(SearchUITableModel *)self tableRowModel];
      v8 = [v7 objectAtIndexedSubscript:v6];
      v9 = [v8 count];

      if (v9)
      {
        v10 = 0;
        do
        {
          v11 = [(SearchUITableModel *)self tableRowModel];
          v12 = [v11 objectAtIndexedSubscript:v6];
          v13 = [v12 objectAtIndexedSubscript:v10];
          v19[2](v19, v13);

          ++v10;
          v14 = [(SearchUITableModel *)self tableRowModel];
          v15 = [v14 objectAtIndexedSubscript:v6];
          v16 = [v15 count];
        }

        while (v10 < v16);
      }

      ++v6;
      v17 = [(SearchUITableModel *)self tableRowModel];
      v18 = [v17 count];
    }

    while (v6 < v18);
  }
}

@end