@interface SearchUITableModel
+ (BOOL)resultHasHorizontallyGroupedCardSections:(id)sections;
+ (SearchUITableModel)tableModelWithCardSections:(id)sections result:(id)result isInline:(BOOL)inline queryId:(unint64_t)id shouldCombine:(BOOL)combine;
+ (SearchUITableModel)tableModelWithResult:(id)result;
+ (SearchUITableModel)tableModelWithResults:(id)results;
+ (SearchUITableModel)tableModelWithSections:(id)sections expandedSections:(id)expandedSections expandedCollectionCardSections:(id)cardSections;
+ (id)rowModelForCardSection:(id)section result:(id)result;
- (BOOL)indexPathExists:(id)exists;
- (BOOL)rowWillFillBackgroundWithContentAtIndexPath:(id)path;
- (SearchUITableModel)initWithQueryId:(unint64_t)id;
- (id)cardSectionForIndexPath:(id)path;
- (id)description;
- (id)indexPathForResultInFirstTwoSections:(id)sections;
- (id)indexPathForRowModel:(id)model;
- (id)removeRowModel:(id)model;
- (id)resultForIndexPath:(id)path;
- (id)rowModelForIndexPath:(id)path;
- (id)sectionForIndex:(unint64_t)index;
- (id)updatedTableModelByDeletingSectionIndex:(unint64_t)index;
- (id)updatedTableModelWithExpandedSections:(id)sections expandedCollectionCardSections:(id)cardSections hiddenSections:(id)hiddenSections atSectionIndex:(unint64_t)index;
- (int)separatorStyleForIndexPath:(id)path;
- (int64_t)numberOfRowsForSection:(int64_t)section;
- (unint64_t)indexOfSection:(id)section;
- (unint64_t)numberOfSections;
- (void)enumerateRowModels:(id)models;
- (void)replaceResult:(id)result withResult:(id)withResult completion:(id)completion;
@end

@implementation SearchUITableModel

- (SearchUITableModel)initWithQueryId:(unint64_t)id
{
  v5.receiver = self;
  v5.super_class = SearchUITableModel;
  result = [(SearchUITableModel *)&v5 init];
  if (result)
  {
    result->_queryId = id;
  }

  return result;
}

+ (SearchUITableModel)tableModelWithSections:(id)sections expandedSections:(id)expandedSections expandedCollectionCardSections:(id)cardSections
{
  sectionsCopy = sections;
  cardSectionsCopy = cardSections;
  expandedSectionsCopy = expandedSections;
  v10 = [[SearchUIDataSourceSnapshotBuilder alloc] initWithExpandedSections:expandedSectionsCopy expandedCollectionSections:cardSectionsCopy];

  firstObject = [sectionsCopy firstObject];
  results = [firstObject results];
  firstObject2 = [results firstObject];
  queryId = [firstObject2 queryId];
  if (!queryId)
  {
    lastObject = [sectionsCopy lastObject];
    results2 = [lastObject results];
    firstObject3 = [results2 firstObject];
    queryId = [firstObject3 queryId];
  }

  v18 = [[SearchUITableModel alloc] initWithQueryId:queryId];
  v19 = [(SearchUIDataSourceSnapshotBuilder *)v10 buildRowModelsFromResultSections:sectionsCopy queryId:queryId];
  v20 = [v19 mutableCopy];
  [(SearchUITableModel *)v18 setTableRowModel:v20];

  [(SearchUITableModel *)v18 setSections:sectionsCopy];

  return v18;
}

+ (BOOL)resultHasHorizontallyGroupedCardSections:(id)sections
{
  sectionsCopy = sections;
  v4 = [SearchUIUtilities cardSectionsForRenderingResult:sectionsCopy];
  if ([v4 count])
  {
    renderHorizontallyWithOtherResultsInCategory = [sectionsCopy renderHorizontallyWithOtherResultsInCategory];
  }

  else
  {
    renderHorizontallyWithOtherResultsInCategory = 0;
  }

  return renderHorizontallyWithOtherResultsInCategory;
}

+ (SearchUITableModel)tableModelWithCardSections:(id)sections result:(id)result isInline:(BOOL)inline queryId:(unint64_t)id shouldCombine:(BOOL)combine
{
  combineCopy = combine;
  inlineCopy = inline;
  v22[1] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  sectionsCopy = sections;
  v13 = [[SearchUITableModel alloc] initWithQueryId:id];
  v14 = objc_opt_new();
  v15 = [v14 buildRowModelsFromCardSections:sectionsCopy result:resultCopy isInline:inlineCopy queryId:id];

  if (combineCopy)
  {
    v16 = [v14 buildCombinedRowModelsFromRowModels:v15 result:resultCopy];

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

+ (SearchUITableModel)tableModelWithResult:(id)result
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    resultCopy = result;
    v4 = MEMORY[0x1E695DEC8];
    resultCopy2 = result;
    v6 = [v4 arrayWithObjects:&resultCopy count:1];

    v7 = [self tableModelWithResults:{v6, resultCopy, v10}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (SearchUITableModel)tableModelWithResults:(id)results
{
  v9[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v5 = objc_opt_new();
  [v5 setResults:resultsCopy];

  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v7 = [self tableModelWithSections:v6 expandedSections:0 expandedCollectionCardSections:0];

  return v7;
}

- (id)updatedTableModelWithExpandedSections:(id)sections expandedCollectionCardSections:(id)cardSections hiddenSections:(id)hiddenSections atSectionIndex:(unint64_t)index
{
  v29 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  cardSectionsCopy = cardSections;
  hiddenSectionsCopy = hiddenSections;
  sections = [(SearchUITableModel *)self sections];
  v14 = [sections mutableCopy];

  if (hiddenSectionsCopy)
  {
    v15 = [v14 objectAtIndexedSubscript:index];
    [v15 setIsInitiallyHidden:1];

    v16 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{index, objc_msgSend(hiddenSectionsCopy, "count")}];
    [v14 removeObjectAtIndex:index];
    [v14 insertObjects:hiddenSectionsCopy atIndexes:v16];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v17 = hiddenSectionsCopy;
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

  v22 = [objc_opt_class() tableModelWithSections:v14 expandedSections:sectionsCopy expandedCollectionCardSections:cardSectionsCopy];

  return v22;
}

- (id)updatedTableModelByDeletingSectionIndex:(unint64_t)index
{
  sections = [(SearchUITableModel *)self sections];
  v5 = [sections mutableCopy];

  [v5 removeObjectAtIndex:index];
  v6 = [objc_opt_class() tableModelWithSections:v5 expandedSections:0 expandedCollectionCardSections:0];

  return v6;
}

- (unint64_t)numberOfSections
{
  tableRowModel = [(SearchUITableModel *)self tableRowModel];
  v3 = [tableRowModel count];

  return v3;
}

- (void)replaceResult:(id)result withResult:(id)withResult completion:(id)completion
{
  resultCopy = result;
  withResultCopy = withResult;
  completionCopy = completion;
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

  v15 = [(SearchUIDataSourceSnapshotBuilder *)v14 buildRowModelsFromResult:resultCopy];
  v39 = v14;
  v16 = [(SearchUIDataSourceSnapshotBuilder *)v14 buildRowModelsFromResult:withResultCopy];
  firstObject = [v15 firstObject];
  v18 = [(SearchUITableModel *)self indexPathForRowModel:firstObject];

  if (v18)
  {
    section = [v18 section];
    v38 = v18;
    v20 = [v18 row];
    tableRowModel = [(SearchUITableModel *)self tableRowModel];
    v22 = [tableRowModel objectAtIndexedSubscript:section];
    v23 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v20, objc_msgSend(v15, "count")}];
    [v22 removeObjectsAtIndexes:v23];

    tableRowModel2 = [(SearchUITableModel *)self tableRowModel];
    v25 = [tableRowModel2 objectAtIndexedSubscript:section];
    v26 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v20, objc_msgSend(v16, "count")}];
    [v25 insertObjects:v16 atIndexes:v26];

    v27 = objc_opt_new();
    v28 = objc_opt_new();
    v37 = resultCopy;
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

      v34 = [MEMORY[0x1E696AC88] indexPathForRow:v20 + i inSection:section];
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
      completionCopy[2](completionCopy, 1, v27);
    }

    if ([v28 count])
    {
      completionCopy[2](completionCopy, 2, v28);
    }

    if ([v29 count])
    {
      completionCopy[2](completionCopy, 0, v29);
    }

    resultCopy = v37;
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

- (id)removeRowModel:(id)model
{
  v4 = [(SearchUITableModel *)self indexPathForRowModel:model];
  v5 = v4;
  if (v4)
  {
    section = [v4 section];
    tableRowModel = [(SearchUITableModel *)self tableRowModel];
    if (section >= [tableRowModel count])
    {
    }

    else
    {
      v8 = [v5 row];
      tableRowModel2 = [(SearchUITableModel *)self tableRowModel];
      v10 = [tableRowModel2 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
      v11 = [v10 count];

      if (v8 < v11)
      {
        tableRowModel3 = [(SearchUITableModel *)self tableRowModel];
        v13 = [tableRowModel3 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
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

+ (id)rowModelForCardSection:(id)section result:(id)result
{
  resultCopy = result;
  sectionCopy = section;
  v7 = objc_opt_new();
  v8 = [v7 buildRowModelFromCardSection:sectionCopy result:resultCopy];

  return v8;
}

- (int64_t)numberOfRowsForSection:(int64_t)section
{
  tableRowModel = [(SearchUITableModel *)self tableRowModel];
  v5 = [tableRowModel objectAtIndexedSubscript:section];
  v6 = [v5 count];

  return v6;
}

- (BOOL)indexPathExists:(id)exists
{
  existsCopy = exists;
  v5 = existsCopy;
  if (!existsCopy || [existsCopy row] < 0 || objc_msgSend(v5, "section") < 0)
  {
    v11 = 0;
  }

  else
  {
    section = [v5 section];
    tableRowModel = [(SearchUITableModel *)self tableRowModel];
    if (section >= [tableRowModel count])
    {
      v11 = 0;
    }

    else
    {
      v8 = [v5 row];
      tableRowModel2 = [(SearchUITableModel *)self tableRowModel];
      v10 = [tableRowModel2 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
      v11 = v8 < [v10 count];
    }
  }

  return v11;
}

- (id)rowModelForIndexPath:(id)path
{
  pathCopy = path;
  if ([(SearchUITableModel *)self indexPathExists:pathCopy])
  {
    tableRowModel = [(SearchUITableModel *)self tableRowModel];
    v6 = [tableRowModel objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    v7 = [v6 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)resultForIndexPath:(id)path
{
  v3 = [(SearchUITableModel *)self rowModelForIndexPath:path];
  identifyingResult = [v3 identifyingResult];

  return identifyingResult;
}

- (id)sectionForIndex:(unint64_t)index
{
  sections = [(SearchUITableModel *)self sections];
  if ([sections count] <= index)
  {
    v7 = 0;
  }

  else
  {
    sections2 = [(SearchUITableModel *)self sections];
    v7 = [sections2 objectAtIndexedSubscript:index];
  }

  return v7;
}

- (unint64_t)indexOfSection:(id)section
{
  sectionCopy = section;
  sections = [(SearchUITableModel *)self sections];
  v6 = [sections indexOfObject:sectionCopy];

  return v6;
}

- (id)cardSectionForIndexPath:(id)path
{
  v3 = [(SearchUITableModel *)self rowModelForIndexPath:path];
  cardSection = [v3 cardSection];

  return cardSection;
}

- (int)separatorStyleForIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(SearchUITableModel *)self rowModelForIndexPath:pathCopy];
  v6 = MEMORY[0x1E696AC88];
  v7 = [pathCopy row];
  section = [pathCopy section];

  v9 = [v6 indexPathForRow:v7 + 1 inSection:section];
  v10 = [(SearchUITableModel *)self rowModelForIndexPath:v9];

  separatorStyle = [v5 separatorStyle];
  if (!separatorStyle)
  {
    if ([v10 prefersNoSeparatorAbove])
    {
      separatorStyle = 1;
    }

    else
    {
      separatorStyle = 3;
    }
  }

  if (separatorStyle == 3 && v10)
  {
    if ([v10 hasLeadingImage])
    {
      separatorStyle = 3;
    }

    else
    {
      separatorStyle = 2;
    }
  }

  return separatorStyle;
}

- (BOOL)rowWillFillBackgroundWithContentAtIndexPath:(id)path
{
  v3 = [(SearchUITableModel *)self rowModelForIndexPath:path];
  fillsBackgroundWithContent = [v3 fillsBackgroundWithContent];

  return fillsBackgroundWithContent;
}

- (id)indexPathForRowModel:(id)model
{
  v47 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  if (modelCopy)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    tableRowModel = [(SearchUITableModel *)self tableRowModel];
    v6 = [tableRowModel countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v42;
      v34 = tableRowModel;
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
            objc_enumerationMutation(tableRowModel);
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
                if (v19 == modelCopy)
                {
                  goto LABEL_26;
                }

                identifyingResult = [modelCopy identifyingResult];
                identifyingResult2 = [v19 identifyingResult];
                if (identifyingResult == identifyingResult2)
                {
                  identifyingResult3 = [modelCopy identifyingResult];
                  if (identifyingResult3)
                  {

LABEL_26:
                    v27 = [MEMORY[0x1E696AC88] indexPathForRow:v18 inSection:{v35, v29}];

                    tableRowModel = v34;
                    goto LABEL_27;
                  }
                }

                cardSection = [modelCopy cardSection];
                cardSection2 = [v19 cardSection];
                v25 = cardSection2;
                if (cardSection == cardSection2)
                {
                  cardSection3 = [modelCopy cardSection];

                  if (cardSection3)
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
              tableRowModel = v34;
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
        v7 = [tableRowModel countByEnumeratingWithState:&v41 objects:v46 count:16];
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

- (id)indexPathForResultInFirstTwoSections:(id)sections
{
  v33 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  if (sectionsCopy)
  {
    tableRowModel = [(SearchUITableModel *)self tableRowModel];
    v6 = [tableRowModel count];

    if (v6)
    {
      v7 = 0;
      do
      {
        tableRowModel2 = [(SearchUITableModel *)self tableRowModel];
        v9 = [tableRowModel2 objectAtIndexedSubscript:v7];
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
            tableRowModel3 = [(SearchUITableModel *)self tableRowModel];
            v13 = [tableRowModel3 objectAtIndexedSubscript:v7];
            v14 = [v13 objectAtIndexedSubscript:v11];
            results = [v14 results];

            v16 = [results countByEnumeratingWithState:&v28 objects:v32 count:16];
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
                    objc_enumerationMutation(results);
                  }

                  if (*(*(&v28 + 1) + 8 * i) == sectionsCopy)
                  {
                    v6 = [MEMORY[0x1E696AC88] indexPathForRow:v11 inSection:v7];

                    goto LABEL_22;
                  }
                }

                v17 = [results countByEnumeratingWithState:&v28 objects:v32 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

            ++v11;
            tableRowModel4 = [(SearchUITableModel *)self tableRowModel];
            v21 = [tableRowModel4 objectAtIndexedSubscript:v7];
            v22 = [v21 count];
          }

          while (v11 < v22);
        }

        v23 = v7 + 1;
        tableRowModel5 = [(SearchUITableModel *)self tableRowModel];
        v25 = [tableRowModel5 count];

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

  tableRowModel = [(SearchUITableModel *)self tableRowModel];
  v6 = [tableRowModel description];
  [v3 appendFormat:@"\n %@", v6];

  return v3;
}

- (void)enumerateRowModels:(id)models
{
  modelsCopy = models;
  tableRowModel = [(SearchUITableModel *)self tableRowModel];
  v5 = [tableRowModel count];

  if (v5)
  {
    v6 = 0;
    do
    {
      tableRowModel2 = [(SearchUITableModel *)self tableRowModel];
      v8 = [tableRowModel2 objectAtIndexedSubscript:v6];
      v9 = [v8 count];

      if (v9)
      {
        v10 = 0;
        do
        {
          tableRowModel3 = [(SearchUITableModel *)self tableRowModel];
          v12 = [tableRowModel3 objectAtIndexedSubscript:v6];
          v13 = [v12 objectAtIndexedSubscript:v10];
          modelsCopy[2](modelsCopy, v13);

          ++v10;
          tableRowModel4 = [(SearchUITableModel *)self tableRowModel];
          v15 = [tableRowModel4 objectAtIndexedSubscript:v6];
          v16 = [v15 count];
        }

        while (v10 < v16);
      }

      ++v6;
      tableRowModel5 = [(SearchUITableModel *)self tableRowModel];
      v18 = [tableRowModel5 count];
    }

    while (v6 < v18);
  }
}

@end