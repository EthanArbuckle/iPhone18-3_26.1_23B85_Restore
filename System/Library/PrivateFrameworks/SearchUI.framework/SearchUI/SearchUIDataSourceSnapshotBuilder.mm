@interface SearchUIDataSourceSnapshotBuilder
- (BOOL)resultHasHorizontallyGroupedCardSections:(id)a3;
- (SearchUIDataSourceSnapshotBuilder)init;
- (SearchUIDataSourceSnapshotBuilder)initWithExpandedSections:(id)a3 expandedCollectionSections:(id)a4;
- (SearchUIDataSourceSnapshotBuilder)initWithExpandedSections:(id)a3 expandedCollectionSections:(id)a4 rowModelIdentifiers:(id)a5 sectionModelIdentifiers:(id)a6;
- (SearchUIDataSourceSnapshotBuilder)initWithSnapshot:(id)a3;
- (id)asyncRowManagersForCardSections:(id)a3;
- (id)buildCombinedRowModelsFromRowModels:(id)a3 result:(id)a4;
- (id)buildRowModelFromCardSection:(id)a3 result:(id)a4;
- (id)buildRowModelsFromCardSections:(id)a3 result:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6;
- (id)buildRowModelsFromResult:(id)a3;
- (id)buildRowModelsFromResultSections:(id)a3 queryId:(unint64_t)a4;
- (id)buildRowModelsFromSectionModels:(id)a3;
- (id)buildSectionFromRowModels:(id)a3 section:(id)a4;
- (id)buildSectionsFromResultSections:(id)a3 queryId:(unint64_t)a4;
- (id)buildSectionsFromRowModels:(id)a3 fromSection:(id)a4;
- (id)buildSectionsFromRowModels:(id)a3 fromSections:(id)a4;
- (id)buildSnapshotForSectionModels:(id)a3;
- (id)buildSnapshotFromResultSections:(id)a3 queryId:(unint64_t)a4;
- (id)buildSnapshotFromTableModel:(id)a3;
- (id)buildUISectionFromResultSection:(id)a3 collectionSection:(id)a4;
- (id)generateComposedItemIdentifierForResults:(id)a3;
- (id)generateItemIdentifier:(id)a3 cardSection:(id)a4;
- (id)generateIterativeIdentifierForBaseIdentifier:(id)a3 withUnavailableIdentifiers:(id)a4;
- (id)generateSectionIdentifier:(id)a3 collectionSection:(id)a4;
- (id)gridLayoutsForCardSections:(id)a3;
- (id)resultsForMultiResultRowInSection:(id)a3 startingAtIndex:(unint64_t)a4;
@end

@implementation SearchUIDataSourceSnapshotBuilder

- (SearchUIDataSourceSnapshotBuilder)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(SearchUIDataSourceSnapshotBuilder *)self initWithExpandedSections:v3 expandedCollectionSections:v4];

  return v5;
}

- (SearchUIDataSourceSnapshotBuilder)initWithSnapshot:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = [v4 itemIdentifiers];
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v30 + 1) + 8 * v11) itemIdentifier];
        [v5 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v13 = [v4 sectionIdentifiers];
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v26 + 1) + 8 * v17) section];
        v19 = [v18 sectionIdentifier];
        [v5 addObject:v19];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v15);
  }

  v20 = objc_opt_new();
  v21 = objc_opt_new();
  v22 = [v5 copy];
  v23 = [v6 copy];
  v24 = [(SearchUIDataSourceSnapshotBuilder *)self initWithExpandedSections:v20 expandedCollectionSections:v21 rowModelIdentifiers:v22 sectionModelIdentifiers:v23];

  return v24;
}

- (SearchUIDataSourceSnapshotBuilder)initWithExpandedSections:(id)a3 expandedCollectionSections:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [(SearchUIDataSourceSnapshotBuilder *)self initWithExpandedSections:v7 expandedCollectionSections:v6 rowModelIdentifiers:v8 sectionModelIdentifiers:v9];

  return v10;
}

- (SearchUIDataSourceSnapshotBuilder)initWithExpandedSections:(id)a3 expandedCollectionSections:(id)a4 rowModelIdentifiers:(id)a5 sectionModelIdentifiers:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = SearchUIDataSourceSnapshotBuilder;
  v15 = [(SearchUIDataSourceSnapshotBuilder *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_expandedSections, a3);
    objc_storeStrong(&v16->_expandedCollectionSections, a4);
    v17 = [v13 mutableCopy];
    rowModelIdentifiers = v16->_rowModelIdentifiers;
    v16->_rowModelIdentifiers = v17;

    v19 = [v14 mutableCopy];
    sectionModelIdentifiers = v16->_sectionModelIdentifiers;
    v16->_sectionModelIdentifiers = v19;
  }

  return v16;
}

- (id)buildSnapshotFromResultSections:(id)a3 queryId:(unint64_t)a4
{
  v5 = [(SearchUIDataSourceSnapshotBuilder *)self buildSectionsFromResultSections:a3 queryId:a4];
  v6 = [(SearchUIDataSourceSnapshotBuilder *)self buildSnapshotForSectionModels:v5];

  return v6;
}

- (id)buildSnapshotFromTableModel:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v22 = a3;
  obj = [v22 tableRowModel];
  v4 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * i);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v25;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v25 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v24 + 1) + 8 * j);
              v15 = [(SearchUIDataSourceSnapshotBuilder *)self rowModelIdentifiers];
              v16 = [v14 itemIdentifier];
              [v15 addObject:v16];
            }

            v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v11);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v5);
  }

  v17 = [v22 tableRowModel];
  v18 = [v22 sections];
  v19 = [(SearchUIDataSourceSnapshotBuilder *)self buildSectionsFromRowModels:v17 fromSections:v18];

  v20 = [(SearchUIDataSourceSnapshotBuilder *)self buildSnapshotForSectionModels:v19];

  return v20;
}

- (id)buildSnapshotForSectionModels:(id)a3
{
  v75[3] = *MEMORY[0x1E69E9840];
  v44 = a3;
  v3 = +[SearchUIContactCache sharedCache];
  v75[0] = v3;
  v4 = +[SearchUIScreenTimeManager sharedInstance];
  v75[1] = v4;
  v5 = +[SearchUIPhotoAssetCache sharedCache];
  v75[2] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:3];

  v7 = objc_opt_new();
  v8 = [v6 arrayByAddingObject:v7];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v8;
  v45 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v45)
  {
    v43 = *v67;
    do
    {
      v9 = 0;
      do
      {
        if (*v67 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v46 = v9;
        v10 = *(*(&v66 + 1) + 8 * v9);
        v11 = objc_opt_new();
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v48 = v44;
        v12 = [v48 countByEnumeratingWithState:&v62 objects:v73 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v63;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v63 != v14)
              {
                objc_enumerationMutation(v48);
              }

              v16 = *(*(&v62 + 1) + 8 * i);
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v17 = [v16 rowModels];
              v18 = [v17 countByEnumeratingWithState:&v58 objects:v72 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v59;
                do
                {
                  for (j = 0; j != v19; ++j)
                  {
                    if (*v59 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = [v10 itemsToBatchPreFetchForRowModel:*(*(&v58 + 1) + 8 * j)];
                    if ([v22 count])
                    {
                      [v11 addObjectsFromArray:v22];
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v58 objects:v72 count:16];
                }

                while (v19);
              }
            }

            v13 = [v48 countByEnumeratingWithState:&v62 objects:v73 count:16];
          }

          while (v13);
        }

        if ([v11 count])
        {
          v23 = [v10 cacheToPrewarm];
          v24 = [v11 allObjects];
          [v23 getObjectsForKeys:v24 completionHandler:&__block_literal_global_19];
        }

        v9 = v46 + 1;
      }

      while (v46 + 1 != v45);
      v45 = [obj countByEnumeratingWithState:&v66 objects:v74 count:16];
    }

    while (v45);
  }

  v47 = objc_opt_new();
  v25 = objc_opt_new();
  v26 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v49 = v44;
  v27 = [v49 countByEnumeratingWithState:&v54 objects:v71 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v55;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v55 != v29)
        {
          objc_enumerationMutation(v49);
        }

        v31 = *(*(&v54 + 1) + 8 * k);
        [v25 addObject:v31];
        [v31 prepareForSnapshot];
        v32 = objc_opt_new();
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v33 = [v31 rowModels];
        v34 = [v33 countByEnumeratingWithState:&v50 objects:v70 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v51;
          do
          {
            for (m = 0; m != v35; ++m)
            {
              if (*v51 != v36)
              {
                objc_enumerationMutation(v33);
              }

              [v32 addObject:*(*(&v50 + 1) + 8 * m)];
            }

            v35 = [v33 countByEnumeratingWithState:&v50 objects:v70 count:16];
          }

          while (v35);
        }

        [v26 addObject:v32];
      }

      v28 = [v49 countByEnumeratingWithState:&v54 objects:v71 count:16];
    }

    while (v28);
  }

  [v47 appendSectionsWithIdentifiers:v25];
  if ([v25 count])
  {
    v38 = 0;
    do
    {
      v39 = [v26 objectAtIndexedSubscript:v38];
      v40 = [v25 objectAtIndexedSubscript:v38];
      [v47 appendItemsWithIdentifiers:v39 intoSectionWithIdentifier:v40];

      ++v38;
    }

    while (v38 < [v25 count]);
  }

  return v47;
}

- (id)buildSectionsFromResultSections:(id)a3 queryId:(unint64_t)a4
{
  v6 = a3;
  v7 = [(SearchUIDataSourceSnapshotBuilder *)self buildRowModelsFromResultSections:v6 queryId:a4];
  v8 = [(SearchUIDataSourceSnapshotBuilder *)self buildSectionsFromRowModels:v7 fromSections:v6];

  return v8;
}

- (id)buildSectionsFromRowModels:(id)a3 fromSections:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  if ([v6 count])
  {
    v9 = 0;
    do
    {
      v10 = [v6 objectAtIndexedSubscript:v9];
      v11 = [v7 objectAtIndexedSubscript:v9];
      v12 = [(SearchUIDataSourceSnapshotBuilder *)self buildSectionsFromRowModels:v10 fromSection:v11];
      [v8 addObjectsFromArray:v12];

      ++v9;
    }

    while (v9 < [v6 count]);
  }

  v13 = [v8 copy];

  return v13;
}

- (id)buildSectionsFromRowModels:(id)a3 fromSection:(id)a4
{
  v102 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__SearchUIDataSourceSnapshotBuilder_buildSectionsFromRowModels_fromSection___block_invoke;
  aBlock[3] = &unk_1E85B3760;
  aBlock[4] = self;
  v8 = v7;
  v97 = v8;
  v9 = _Block_copy(aBlock);
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __76__SearchUIDataSourceSnapshotBuilder_buildSectionsFromRowModels_fromSection___block_invoke_2;
  v91[3] = &unk_1E85B3788;
  v73 = v11;
  v92 = v73;
  v12 = v10;
  v93 = v12;
  v94 = self;
  v75 = v9;
  v95 = v75;
  v13 = _Block_copy(v91);
  v88[0] = MEMORY[0x1E69E9820];
  v88[1] = 3221225472;
  v88[2] = __76__SearchUIDataSourceSnapshotBuilder_buildSectionsFromRowModels_fromSection___block_invoke_3;
  v88[3] = &unk_1E85B37B0;
  v71 = v13;
  v90 = v71;
  v72 = v12;
  v89 = v72;
  v79 = _Block_copy(v88);
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v6;
  v81 = [obj countByEnumeratingWithState:&v84 objects:v101 count:16];
  if (v81)
  {
    v14 = *v85;
    v74 = v8;
    v76 = self;
    v77 = *v85;
    do
    {
      v15 = 0;
      do
      {
        if (*v85 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v84 + 1) + 8 * v15);
        v17 = [v16 cardSection];
        v18 = [v16 queryId];
        v19 = [v16 identifyingResult];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v17;
          v21 = [v20 cardSections];
          v80 = [(SearchUIDataSourceSnapshotBuilder *)self buildRowModelsFromCardSections:v21 result:v19 isInline:1 queryId:v18];

          v83 = [(SearchUIDataSourceSnapshotBuilder *)self buildUISectionFromResultSection:v8 collectionSection:v20];
          v22 = [v20 cardSections];
          v82 = v19;
          if ([v22 count] == 2)
          {
            v23 = [v20 cardSections];
            v24 = [v23 objectAtIndexedSubscript:1];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (+[SearchUIUtilities isIpad])
              {

                goto LABEL_26;
              }

              v46 = [MEMORY[0x1E69D9240] isMacOS];

              self = v76;
              if (v46)
              {
LABEL_26:
                v36 = objc_opt_new();
                v47 = [v20 cardSections];
                v48 = [v47 objectAtIndexedSubscript:0];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                v50 = [v20 cardSections];
                v51 = [v50 objectAtIndexedSubscript:0];
                v52 = v51;
                if (isKindOfClass)
                {

                  v53 = [v52 cardSections];
                  v54 = [v53 copy];
                  v55 = 0x1E695D000;
                }

                else
                {
                  v100 = v51;
                  v55 = 0x1E695D000uLL;
                  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
                  v53 = v52;
                  v52 = v50;
                }

                [v36 setLeadingCardSections:v54];

                v63 = [v20 cardSections];
                v64 = [v63 objectAtIndexedSubscript:1];
                v99 = v64;
                v65 = [*(v55 + 3784) arrayWithObjects:&v99 count:1];
                [v36 setTrailingCardSections:v65];

                v39 = [[SearchUILeadingTrailingSectionModel alloc] initWithCardSection:v36 rowModels:obj result:v82 queryId:v18 section:v83];
                v79[2](v79, v39);
                v8 = v74;
                self = v76;
                v14 = v77;
                v37 = v80;
LABEL_33:

                v19 = v82;
                goto LABEL_34;
              }

LABEL_18:
              v33 = [v20 collectionStyle];
              v34 = v33;
              if (v33)
              {
                v35 = v33;
              }

              else
              {
                v35 = objc_opt_new();
              }

              v36 = v35;
              v37 = v80;

              v38 = [(SearchUIDataSourceSnapshotBuilder *)self expandedCollectionSections];
              v39 = [v36 searchUISectionModelForCardRowModels:v80 section:v83 expandedCollectionSections:v38];

              if (v39)
              {
                v79[2](v79, v39);
              }

              goto LABEL_33;
            }

            self = v76;
          }

          goto LABEL_18;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [(SearchUIDataSourceSnapshotBuilder *)self generateItemIdentifier:v19 cardSection:v17];
          v26 = v17;
          v27 = [[SearchUIHorizontallyScrollingCardSectionRowModel alloc] initWithResult:v19 cardSection:v26 queryId:v18 itemIdentifier:v25 builder:self];

          v28 = [(SearchUIDataSourceSnapshotBuilder *)self buildUISectionFromResultSection:v8 collectionSection:0];
          v29 = [(SearchUIHorizontallyScrollingCardSectionRowModel *)v27 cardSectionRowModels];
          v30 = [SearchUISectionModel sectionModelWithScrollingRowModels:v29 numberOfRows:[(SearchUIHorizontallyScrollingCardSectionRowModel *)v27 numberOfRows] section:v28];
          v79[2](v79, v30);

          v14 = v77;
LABEL_15:

          goto LABEL_34;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [v16 cardSectionRowModels];
          v31 = v75[2]();
          v32 = [SearchUISectionModel sectionModelWithGridRowModels:v25 numberOfColumns:0 gridStyle:0 section:v31 expandedCollectionSections:0];
          v79[2](v79, v32);

          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v16;
          v41 = [v40 cardSectionRowModels];
          v42 = [v40 numberOfRows];
          v43 = v75[2]();

          v44 = v42;
          v14 = v77;
          v45 = [SearchUISectionModel sectionModelWithScrollingRowModels:v41 numberOfRows:v44 section:v43];
          v79[2](v79, v45);

LABEL_30:
          goto LABEL_34;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = objc_opt_new();
          v56 = MEMORY[0x1E69CA3A0];
          v57 = v16;
          v58 = [v17 sectionTitle];
          v59 = [v56 textWithString:v58];
          [v41 setTitle:v59];

          v98 = v57;
          v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v98 count:1];
          v61 = [(SearchUIDataSourceSnapshotBuilder *)self buildUISectionFromResultSection:v8 collectionSection:v41];

          v62 = [SearchUISectionModel sectionModelWithScrollingRowModels:v60 numberOfRows:1 section:v61];
          v79[2](v79, v62);

          v14 = v77;
          goto LABEL_30;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v66 = [SearchUILeadingTrailingSectionModel alloc];
          v67 = v75[2]();
          v25 = [(SearchUILeadingTrailingSectionModel *)v66 initWithCardSection:v17 rowModels:MEMORY[0x1E695E0F0] result:v19 queryId:v18 section:v67];

          v79[2](v79, v25);
          goto LABEL_15;
        }

        [v73 addObject:v16];
LABEL_34:

        ++v15;
      }

      while (v81 != v15);
      v68 = [obj countByEnumeratingWithState:&v84 objects:v101 count:16];
      v81 = v68;
    }

    while (v68);
  }

  v71[2](v71);
  v69 = v72;

  return v72;
}

uint64_t __76__SearchUIDataSourceSnapshotBuilder_buildSectionsFromRowModels_fromSection___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) count];
  if (result)
  {
    v4 = *(a1 + 40);
    v3 = *(a1 + 48);
    v5 = [*(a1 + 32) copy];
    v6 = (*(*(a1 + 56) + 16))();
    v7 = [v3 buildSectionFromRowModels:v5 section:v6];
    [v4 fm_safeAddObject:v7];

    v8 = *(a1 + 32);

    return [v8 removeAllObjects];
  }

  return result;
}

void __76__SearchUIDataSourceSnapshotBuilder_buildSectionsFromRowModels_fromSection___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  [*(a1 + 32) addObject:v5];
}

- (id)buildSectionFromRowModels:(id)a3 section:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = [(SearchUIDataSourceSnapshotBuilder *)self expandedCollectionSections];
    v9 = [SearchUISectionModel sectionModelWithRows:v6 drawPlattersIfNecessary:1 section:v7 expandedCollectionSections:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)buildRowModelsFromResultSections:(id)a3 queryId:(unint64_t)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v49 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v5;
  v50 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v50)
  {
    v48 = *v62;
    v53 = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v62 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v6;
        v7 = *(*(&v61 + 1) + 8 * v6);
        v54 = objc_opt_new();
        v8 = [v7 results];
        v9 = [v8 count];

        if (v9)
        {
          v10 = 0;
          do
          {
            v11 = [v7 results];
            v12 = [v11 count] - v10;

            if ([v7 maxInitiallyVisibleResults])
            {
              v13 = [(SearchUIDataSourceSnapshotBuilder *)self expandedSections];
              if (([v13 containsObject:v7] & 1) == 0)
              {
                v14 = [v7 maxInitiallyVisibleResults];
                if (v12 >= (v14 - v10))
                {
                  v12 = v14 - v10;
                }
              }
            }

            if (v12 < 1)
            {
              break;
            }

            v15 = [v7 results];
            v16 = [v15 objectAtIndexedSubscript:v10];

            v17 = objc_opt_new();
            v18 = [(SearchUIDataSourceSnapshotBuilder *)self resultsForMultiResultRowInSection:v7 startingAtIndex:v10];
            if (v18)
            {
              v19 = v18;
              v20 = [v18 count];
              if (v20 >= v12)
              {
                v21 = v12;
              }

              else
              {
                v21 = v20;
              }

              v22 = [v19 subarrayWithRange:{0, v21}];

              if ([(SearchUIDataSourceSnapshotBuilder *)self resultHasHorizontallyGroupedCardSections:v16])
              {
                [v22 firstObject];
                v23 = v55 = v10;
                v24 = [SearchUIUtilities cardSectionsForRenderingResult:v23];

                v25 = [v24 firstObject];
                objc_opt_class();
                LOBYTE(v23) = objc_opt_isKindOfClass();

                v26 = [(SearchUIDataSourceSnapshotBuilder *)self generateItemIdentifier:v16 cardSection:0];
                v27 = (v23 & 1) == 0;
                v10 = v55;
                v28 = off_1E85B0498;
                if (v27)
                {
                  v28 = off_1E85B0460;
                }

                v29 = [objc_alloc(*v28) initWithResults:v22 itemIdentifier:v26 builder:self];
              }

              else
              {
                v31 = [SearchUIMultiResultRowModel alloc];
                v24 = [(SearchUIDataSourceSnapshotBuilder *)self generateComposedItemIdentifierForResults:v22];
                v29 = [(SearchUIMultiResultRowModel *)v31 initWithResults:v22 itemIdentifier:v24];
              }

              [v17 addObject:v29];
              v56 = v10 + [v22 count] - 1;
            }

            else
            {
              if (+[SearchUIUtilities resultBlockedForScreenTime:](SearchUIUtilities, "resultBlockedForScreenTime:", v16) && ![v16 isLocalApplicationResult])
              {
                v42 = [(SearchUIDataSourceSnapshotBuilder *)self generateItemIdentifier:v16 cardSection:0];
                v43 = [[SearchUIScreenTimeResultsRowModel alloc] initWithSection:v7 result:v16 itemIdentifier:v42];
                [v54 addObject:v43];

                break;
              }

              v56 = v10;
              v22 = [SearchUIUtilities cardSectionsForRenderingResult:v16];
              v29 = [(SearchUIDataSourceSnapshotBuilder *)self buildRowModelsFromCardSections:v22 result:v16 isInline:1 queryId:a4];
              v30 = [(SearchUIDataSourceSnapshotBuilder *)self buildCombinedRowModelsFromRowModels:v29 result:v16];
              [v17 addObjectsFromArray:v30];
            }

            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v32 = v17;
            v33 = [v32 countByEnumeratingWithState:&v57 objects:v65 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v58;
              do
              {
                for (i = 0; i != v34; ++i)
                {
                  if (*v58 != v35)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v37 = *(*(&v57 + 1) + 8 * i);
                  v38 = [v16 sectionBundleIdentifier];
                  if ([v38 isEqual:@"com.apple.spotlight.tophits"])
                  {
                    [v37 setIsTopHit:1];
                  }

                  else
                  {
                    v39 = [v7 bundleIdentifier];
                    [v37 setIsTopHit:{objc_msgSend(v39, "isEqual:", @"com.apple.spotlight.tophits"}];
                  }
                }

                v34 = [v32 countByEnumeratingWithState:&v57 objects:v65 count:16];
              }

              while (v34);
            }

            [v54 addObjectsFromArray:v32];
            v10 = v56 + 1;
            v40 = [v7 results];
            v41 = [v40 count];

            self = v53;
          }

          while (v56 + 1 < v41);
        }

        [v49 addObject:v54];

        v6 = v51 + 1;
      }

      while (v51 + 1 != v50);
      v44 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
      v50 = v44;
    }

    while (v44);
  }

  v45 = [v49 copy];

  return v45;
}

- (id)buildRowModelsFromSectionModels:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) rowModels];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)buildRowModelsFromResult:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [SearchUIUtilities cardSectionsForRenderingResult:v4];
    v6 = -[SearchUIDataSourceSnapshotBuilder buildRowModelsFromCardSections:result:isInline:queryId:](self, "buildRowModelsFromCardSections:result:isInline:queryId:", v5, v4, [v5 count] != 0, objc_msgSend(v4, "queryId"));
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)buildRowModelFromCardSection:(id)a3 result:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v13 = a3;
    v6 = MEMORY[0x1E695DEC8];
    v7 = a4;
    v8 = a3;
    v9 = [v6 arrayWithObjects:&v13 count:1];

    v10 = -[SearchUIDataSourceSnapshotBuilder buildRowModelsFromCardSections:result:isInline:queryId:](self, "buildRowModelsFromCardSections:result:isInline:queryId:", v9, v7, 0, [v7 queryId]);

    v11 = [v10 firstObject];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)buildRowModelsFromCardSections:(id)a3 result:(id)a4 isInline:(BOOL)a5 queryId:(unint64_t)a6
{
  v77 = a5;
  v96 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v80 = objc_opt_new();
  v78 = [(SearchUIDataSourceSnapshotBuilder *)self gridLayoutsForCardSections:v8];
  v76 = [(SearchUIDataSourceSnapshotBuilder *)self asyncRowManagersForCardSections:v8];
  v68 = [[SearchUIRFCardSectionRowModelProvider alloc] initWithCardSections:v8];
  if (!v8 && v9)
  {
    v10 = [(SearchUIDataSourceSnapshotBuilder *)self generateItemIdentifier:v9 cardSection:0];
    v11 = -[SearchUIDetailedRowModel initWithResult:cardSection:isInline:queryId:itemIdentifier:]([SearchUIDetailedRowModel alloc], "initWithResult:cardSection:isInline:queryId:itemIdentifier:", v9, 0, 0, [v9 queryId], v10);
    [v80 addObject:v11];
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v8;
  v12 = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v92;
    v15 = 0x1E85B0000uLL;
    v81 = v9;
    do
    {
      v16 = 0;
      do
      {
        if (*v92 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v91 + 1) + 8 * v16);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __92__SearchUIDataSourceSnapshotBuilder_buildRowModelsFromCardSections_result_isInline_queryId___block_invoke;
        aBlock[3] = &unk_1E85B37D8;
        aBlock[4] = self;
        v18 = v9;
        v89 = v18;
        v90 = v17;
        v19 = _Block_copy(aBlock);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v78 objectForKey:v17];
          v21 = [SearchUIGridRowModel alloc];
          v22 = v19[2](v19);
          v23 = [(SearchUIGridRowModel *)v21 initWithResult:v18 cardSection:v17 gridLayoutManager:v20 queryId:a6 itemIdentifier:v22];

          if (![(SearchUIGridRowModel *)v23 shouldHide])
          {
            [v80 addObject:v23];
          }

          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [v76 objectForKey:v17];
          v25 = [SearchUIWatchListCardRowModel alloc];
          v26 = v19[2](v19);
          v27 = [(SearchUIWatchListCardRowModel *)v25 initWithResult:v18 cardSection:v17 asyncRowManager:v24 queryId:a6 itemIdentifier:v26];

          v28 = v80;
          v9 = v81;
          v29 = v27;
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = SearchUICommandRowModel;
          goto LABEL_52;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          context = objc_autoreleasePoolPush();
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = __92__SearchUIDataSourceSnapshotBuilder_buildRowModelsFromCardSections_result_isInline_queryId___block_invoke_2;
          v83[3] = &unk_1E85B3800;
          v83[4] = self;
          v31 = v18;
          v87 = v77;
          v84 = v31;
          v86 = a6;
          v72 = v80;
          v85 = v72;
          v74 = _Block_copy(v83);
          v32 = v17;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v33 = v31;
          }

          else
          {
            v33 = 0;
          }

          v73 = v33;
          v34 = objc_opt_new();
          if (_os_feature_enabled_impl())
          {
            v35 = [SearchUIUtilities bundleIdentifierForApp:15];
            [v34 addObject:v35];
          }

          if (_os_feature_enabled_impl())
          {
            v36 = [SearchUIUtilities bundleIdentifierForApp:25];
            [v34 addObject:v36];
          }

          if (_os_feature_enabled_impl())
          {
            v37 = [SearchUIUtilities bundleIdentifierForApp:12];
            [v34 addObject:v37];
          }

          if (_os_feature_enabled_impl())
          {
            v38 = [SearchUIUtilities bundleIdentifierForApp:17];
            [v34 addObject:v38];
          }

          if ([v32 isTopHit])
          {
            goto LABEL_47;
          }

          v39 = [v31 applicationBundleIdentifier];
          v40 = v39;
          if (v39)
          {
            v41 = v39;
          }

          else
          {
            v41 = &stru_1F55BC4E8;
          }

          if (([v34 containsObject:v41] & 1) == 0)
          {
            v42 = [v31 resultBundleId];
            v43 = v42;
            if (v42)
            {
              v44 = v42;
            }

            else
            {
              v44 = &stru_1F55BC4E8;
            }

            if (([v34 containsObject:v44] & 1) == 0)
            {
              v71 = [v32 attributeSet];
              v45 = [v71 bundleID];
              v70 = v45;
              if (v45)
              {
                v46 = v45;
              }

              else
              {
                v46 = &stru_1F55BC4E8;
              }

              if ([v34 containsObject:v46])
              {

                goto LABEL_45;
              }

              v69 = _os_feature_enabled_impl();

              if ((v69 & 1) == 0)
              {
                v51 = v73;
                v50 = v74;
                (*(v74 + 2))(v74, v73, v32);
                goto LABEL_60;
              }

LABEL_47:
              v47 = [SearchUIArchivedRowModel alloc];
              v48 = v19[2](v19);
              v49 = [(SearchUIArchivedRowModel *)v47 initWithResult:v31 cardSection:v32 isInline:v77 queryId:a6 itemIdentifier:v48];

              if ([(SearchUIArchivedRowModel *)v49 hasView])
              {
                [v72 addObject:v49];
                v51 = v73;
                v50 = v74;
              }

              else
              {
                v51 = v73;
                v50 = v74;
                (*(v74 + 2))(v74, v73, v32);
              }

LABEL_60:
              [v51 clearBackendData];

              objc_autoreleasePoolPop(context);
LABEL_13:
              v9 = v81;
LABEL_55:
              v15 = 0x1E85B0000;
              goto LABEL_56;
            }

LABEL_45:
          }

          goto LABEL_47;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v30 = SearchUIDetailedRowModel;
          goto LABEL_52;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v55 = [SearchUIDetailedRowModel alloc];
          v53 = v19[2](v19);
          v54 = [(SearchUIDetailedRowModel *)v55 initWithResult:v18 suggestion:v17 queryId:a6 itemIdentifier:v53];
          goto LABEL_53;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = v17;
          v56 = [SearchUIImageGridRowModel alloc];
          v57 = v19[2](v19);
          v24 = [(SearchUIImageGridRowModel *)v56 initWithResult:v18 cardSection:v27 isInline:v77 queryId:a6 itemIdentifier:v57 builder:self];

          v28 = v80;
          v29 = v24;
LABEL_16:
          [v28 addObject:v29];

LABEL_54:
          goto LABEL_55;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v58 = v17;
          v59 = [v58 cardSections];
          v60 = [(SearchUIDataSourceSnapshotBuilder *)self buildRowModelsFromCardSections:v59 result:v18 isInline:1 queryId:a6];

          v61 = [SearchUICombinedCardSectionRowModel alloc];
          v62 = v19[2](v19);
          v63 = [(SearchUICombinedCardSectionRowModel *)v61 initWithResult:v18 cardSectionRowModels:v60 cardSection:v58 dataSourceIdentifier:v62];

          v9 = v81;
          [v80 addObject:v63];

          v15 = 0x1E85B0000;
        }

        else
        {
          if (![*(v15 + 2488) supportsConfigurationForCardSection:v17])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = SearchUICustomViewRowModel;
            }

            else
            {
              v30 = SearchUICardSectionRowModel;
            }

LABEL_52:
            v52 = [v30 alloc];
            v53 = v19[2](v19);
            v54 = [v52 initWithResult:v18 cardSection:v17 isInline:v77 queryId:a6 itemIdentifier:v53];
LABEL_53:
            v24 = v54;

            [v80 addObject:v24];
            goto LABEL_54;
          }

          if (([*(v15 + 2488) shouldHideViewForCardSection:v17] & 1) == 0)
          {
            v64 = v19[2](v19);
            v65 = [(SearchUIRFCardSectionRowModelProvider *)v68 rowModelFor:v17 result:v18 isInline:v77 queryId:a6 itemIdentifier:v64];

            v15 = 0x1E85B0000;
            [v80 addObject:v65];
          }
        }

LABEL_56:

        ++v16;
      }

      while (v13 != v16);
      v66 = [obj countByEnumeratingWithState:&v91 objects:v95 count:16];
      v13 = v66;
    }

    while (v66);
  }

  return v80;
}

void __92__SearchUIDataSourceSnapshotBuilder_buildRowModelsFromCardSections_result_isInline_queryId___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 backendData];
  [v7 setObject:0 forKeyedSubscript:*MEMORY[0x1E6963D58]];

  v8 = [v6 fallbackCardSection];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [v6 fallbackCardSection];
    v16[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v12 = [v9 buildRowModelsFromCardSections:v11 result:*(a1 + 40) isInline:*(a1 + 64) queryId:*(a1 + 56)];
  }

  else
  {
    v10 = [MEMORY[0x1E69D3EA0] resultBuilderWithResult:v5];
    v13 = *(a1 + 32);
    v11 = [v10 buildResult];
    v12 = [v13 buildRowModelsFromResult:v11];
  }

  v14 = v12;
  v15 = [v12 firstObject];

  if (v15)
  {
    [*(a1 + 48) addObject:v15];
  }
}

- (id)buildCombinedRowModelsFromRowModels:(id)a3 result:(id)a4
{
  v5 = a3;
  v29 = a4;
  v30 = objc_opt_new();
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      v32 = [v7 punchouts];
      v8 = [v7 nextCard];
      v9 = [v7 cardSection];
      v34 = [v9 command];

      v31 = v7;
      v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v7, 0}];
      ++v6;
      v33 = v8;
      do
      {
        if (v6 >= [v5 count])
        {
          break;
        }

        v11 = v5;
        v12 = [v5 objectAtIndexedSubscript:v6];
        v13 = [v12 cardSection];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v15 = [v12 punchouts];
        v16 = [v12 nextCard];
        v17 = [v12 cardSection];
        v18 = [v17 command];

        if (v8)
        {
          LODWORD(v8) = [v16 isEqual:v8];
          v19 = 0;
        }

        else
        {
          v19 = [v32 isEqualToArray:v15];
        }

        v20 = v34;
        if (v34)
        {
          v20 = [v34 isEqual:v18];
        }

        if (((isKindOfClass | v8 | v19) & 1) != 0 || v20)
        {
          v22 = [v12 cardSection];
          objc_opt_class();
          v23 = objc_opt_isKindOfClass();

          v8 = v33;
          if (v23)
          {
            v21 = 0;
          }

          else
          {
            [v10 addObject:v12];
            ++v6;
            v21 = 1;
          }
        }

        else
        {
          v21 = 0;
          v8 = v33;
        }

        v5 = v11;
      }

      while ((v21 & 1) != 0);
      if ([v10 count] < 2)
      {
        v26 = v31;
        [v30 addObject:v31];
      }

      else
      {
        v24 = [(SearchUIDataSourceSnapshotBuilder *)self generateItemIdentifier:v29 cardSection:0];
        v25 = [[SearchUICombinedCardSectionRowModel alloc] initWithResult:v29 cardSectionRowModels:v10 dataSourceIdentifier:v24];
        [v30 addObject:v25];

        v26 = v31;
      }
    }

    while (v6 < [v5 count]);
  }

  return v30;
}

- (id)buildUISectionFromResultSection:(id)a3 collectionSection:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SearchUIDataSourceSnapshotBuilder *)self generateSectionIdentifier:v7 collectionSection:v6];
  v9 = [SearchUISection sectionWithResultSection:v7 collectionCardSection:v6 sectionIdentifier:v8];

  return v9;
}

- (id)generateSectionIdentifier:(id)a3 collectionSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bundleIdentifier];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [v7 cardSectionId];
    v12 = v11;
    if (v11)
    {
      v10 = v11;
    }

    else
    {
      v13 = [v6 identifier];
      v14 = v13;
      v15 = @"unknown";
      if (v13)
      {
        v15 = v13;
      }

      v10 = v15;
    }
  }

  v16 = [(SearchUIDataSourceSnapshotBuilder *)self sectionModelIdentifiers];
  v17 = [(SearchUIDataSourceSnapshotBuilder *)self generateIterativeIdentifierForBaseIdentifier:v10 withUnavailableIdentifiers:v16];

  return v17;
}

- (id)generateItemIdentifier:(id)a3 cardSection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 requestedTopic];
  v9 = [v8 identifier];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = [v7 cardSectionId];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v6 identifier];
    }

    v11 = v14;
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v11];
  v16 = [(SearchUIDataSourceSnapshotBuilder *)self rowModelIdentifiers];
  v17 = [(SearchUIDataSourceSnapshotBuilder *)self generateIterativeIdentifierForBaseIdentifier:v15 withUnavailableIdentifiers:v16];

  return v17;
}

- (id)generateComposedItemIdentifierForResults:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = @"c";
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = [(SearchUIDataSourceSnapshotBuilder *)self generateItemIdentifier:*(*(&v16 + 1) + 8 * v9) cardSection:0];
        v12 = [(SearchUIDataSourceSnapshotBuilder *)self rowModelIdentifiers];
        [v12 removeObject:v11];

        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v10, v11];

        ++v9;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = @"c";
  }

  v13 = [(SearchUIDataSourceSnapshotBuilder *)self rowModelIdentifiers];
  v14 = [(SearchUIDataSourceSnapshotBuilder *)self generateIterativeIdentifierForBaseIdentifier:v8 withUnavailableIdentifiers:v13];

  return v14;
}

- (id)generateIterativeIdentifierForBaseIdentifier:(id)a3 withUnavailableIdentifiers:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  v8 = 0;
  v9 = v7;
  if (!v7)
  {
    goto LABEL_3;
  }

  while (([v6 containsObject:v9] & 1) != 0)
  {
    do
    {
LABEL_3:
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld", v7, v8];

      ++v8;
      v9 = v10;
    }

    while (!v10);
  }

  [v6 addObject:v9];

  return v9;
}

- (id)asyncRowManagersForCardSections:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[SearchUIUtilities pointerKeyMapTable];
  v5 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 watchListItem];
          v13 = [v12 watchListIdentifier];
          v14 = [v13 length];

          if (v14)
          {
            v15 = [v11 watchListItem];
            v16 = [v15 watchListIdentifier];
            v17 = [v5 objectForKeyedSubscript:v16];

            if (!v17)
            {
              v18 = objc_opt_new();
              v19 = [v11 watchListItem];
              v20 = [v19 watchListIdentifier];
              [v5 setObject:v18 forKeyedSubscript:v20];
            }

            v21 = [v11 watchListItem];
            v22 = [v21 watchListIdentifier];
            v23 = [v5 objectForKeyedSubscript:v22];
            [v23 addObject:v11];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v7);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v37 = [v5 allKeys];
  v24 = [v37 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v44;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v44 != v26)
        {
          objc_enumerationMutation(v37);
        }

        v28 = *(*(&v43 + 1) + 8 * j);
        v29 = [v5 objectForKeyedSubscript:v28];
        v30 = [[SearchUIWatchListCardsManager alloc] initWithWatchListIdentifier:v28];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v31 = v29;
        v32 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v40;
          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v40 != v34)
              {
                objc_enumerationMutation(v31);
              }

              [v4 setObject:v30 forKey:*(*(&v39 + 1) + 8 * k)];
            }

            v33 = [v31 countByEnumeratingWithState:&v39 objects:v51 count:16];
          }

          while (v33);
        }
      }

      v25 = [v37 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v25);
  }

  return v4;
}

- (id)gridLayoutsForCardSections:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[SearchUIUtilities pointerKeyMapTable];
  if ([v3 count])
  {
    v5 = 0;
    do
    {
      v6 = [v3 objectAtIndexedSubscript:v5];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v8 = [v3 objectAtIndexedSubscript:v5];
        v9 = [v8 tableIdentifier];
        v10 = objc_opt_new();
        if (v5 + 1 < [v3 count])
        {
          while (1)
          {
            v11 = [v3 objectAtIndexedSubscript:v5 + 1];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            v12 = [v3 objectAtIndexedSubscript:v5 + 1];
            v13 = [v12 tableIdentifier];
            v14 = [v9 isEqualToString:v13];

            if (!v14)
            {
              goto LABEL_11;
            }

            v15 = [v3 objectAtIndexedSubscript:v5 + 1];
            [v10 addObject:v15];

            v16 = [v3 count];
            v17 = v5 + 1;
            v18 = v5 + 2;
            ++v5;
            if (v18 >= v16)
            {
              goto LABEL_12;
            }
          }
        }

LABEL_11:
        v17 = v5;
LABEL_12:
        v19 = [[SearchUIGridLayoutManager alloc] initWithHeaderSection:v8 dataSections:v10];
        [v4 setObject:v19 forKey:v8];
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v20 = v10;
        v21 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v27;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v27 != v23)
              {
                objc_enumerationMutation(v20);
              }

              [v4 setObject:v19 forKey:*(*(&v26 + 1) + 8 * i)];
            }

            v22 = [v20 countByEnumeratingWithState:&v26 objects:v30 count:16];
          }

          while (v22);
        }
      }

      else
      {
        v17 = v5;
      }

      v5 = v17 + 1;
    }

    while (v17 + 1 < [v3 count]);
  }

  return v4;
}

- (id)resultsForMultiResultRowInSection:(id)a3 startingAtIndex:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 results];
  v8 = [v7 objectAtIndexedSubscript:a4];
  v9 = [(SearchUIDataSourceSnapshotBuilder *)self resultHasHorizontallyGroupedCardSections:v8];

  v10 = [v6 results];
  v11 = [v10 count];

  if (v11 <= a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    while (1)
    {
      v13 = [v6 results];
      v14 = [v13 objectAtIndexedSubscript:a4];

      v15 = [(SearchUIDataSourceSnapshotBuilder *)self resultHasHorizontallyGroupedCardSections:v14];
      if (![v14 renderHorizontallyWithOtherResultsInCategory] || ((v9 ^ v15) & 1) != 0)
      {
        break;
      }

      if (!v12)
      {
        v12 = objc_opt_new();
      }

      [v12 addObject:v14];

      ++a4;
      v16 = [v6 results];
      v17 = [v16 count];

      if (a4 >= v17)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_11:

  return v12;
}

- (BOOL)resultHasHorizontallyGroupedCardSections:(id)a3
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

@end