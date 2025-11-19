@interface TVStackTemplateController
@end

@implementation TVStackTemplateController

void __51___TVStackTemplateController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    [WeakRetained[157] evaluateForState:1];
    v2 = [v10 stackWrappingView];
    v3 = [v2 stackView];

    [v3 frame];
    v5 = v4;
    [v3 contentInset];
    v8 = v5 - (v6 + v7);
    [v3 contentSize];
    if (v9 <= v8)
    {
      [v10[157] evaluateForState:2];
    }

    WeakRetained = v10;
  }
}

void __76___TVStackTemplateController_updateCollectionViewControllersAndForceReload___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  (*(*(a1 + 56) + 16))();
  v2 = *(*(a1 + 32) + 1192);
  [*(a1 + 32) _buildStackSections];
  v3 = [*(a1 + 40) changeSetByConvertingOldIndexesUsingChangeSet:v2 andNewIndexesUsingChangeSet:*(*(a1 + 32) + 1192)];
  v4 = *(*(*(a1 + 64) + 8) + 40);
  if (v4)
  {
    v5 = [*(*(a1 + 32) + 1192) newIndexForOldIndex:{objc_msgSend(v4, "section")}];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v5];
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
    }
  }

  v7 = *(*(*(a1 + 64) + 8) + 40);
  v8 = *(a1 + 32);
  if (v7)
  {
    objc_storeStrong((v8 + 1248), v7);
    v9 = TVMLKitLogObject;
    if (!os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_INFO))
    {
      goto LABEL_29;
    }

    v10 = *(*(a1 + 32) + 1248);
    v11 = v9;
    *buf = 134217984;
    v38 = [v10 section];
    _os_log_impl(&dword_26CD9A000, v11, OS_LOG_TYPE_INFO, "LFIP: from auto highlight w/ changeset: %ld", buf, 0xCu);
    goto LABEL_28;
  }

  v12 = *(v8 + 1248);
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = [v12 section];
  v14 = [v3 newIndexForOldIndex:v13];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v14;
LABEL_19:
    v18 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v15];
    v19 = 0;
    goto LABEL_20;
  }

  v15 = [v3 newIndexByShiftingOldIndex:v13 grouped:0];
  v16 = [*(*(a1 + 32) + 1200) count];
  if (v15 != 0x7FFFFFFFFFFFFFFFLL && v15 != v16)
  {
    goto LABEL_19;
  }

  v18 = 0;
  v19 = 1;
LABEL_20:
  objc_storeStrong((*(a1 + 32) + 1248), v18);
  if ((v19 & 1) == 0)
  {
  }

  v11 = TVMLKitLogObject;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v20 = *(*(a1 + 32) + 1248);
    if (v20)
    {
      v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v20, "section")}];
    }

    else
    {
      v21 = @"-";
    }

    *buf = 138412290;
    v38 = v21;
    _os_log_impl(&dword_26CD9A000, v11, OS_LOG_TYPE_INFO, "LFIP: from update w/ changeset: %@", buf, 0xCu);
    if (v20)
    {
    }
  }

LABEL_28:

LABEL_29:
  v22 = [v3 addedIndexes];

  if (v22)
  {
    v23 = [MEMORY[0x277CBEB18] array];
    v24 = [v3 addedIndexes];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __76___TVStackTemplateController_updateCollectionViewControllersAndForceReload___block_invoke_100;
    v35[3] = &unk_279D71690;
    v36 = v23;
    v25 = v23;
    [v24 enumerateIndexesUsingBlock:v35];

    v26 = *(a1 + 48);
    v27 = [v3 addedIndexes];
    [v26 insertSections:v27];

    [*(a1 + 48) insertItemsAtIndexPaths:v25];
  }

  v28 = [v3 removedIndexes];

  if (v28)
  {
    v29 = *(a1 + 48);
    v30 = [v3 removedIndexes];
    [v29 deleteSections:v30];
  }

  v31 = [v3 movedIndexesByNewIndex];

  if (v31)
  {
    v32 = [v3 movedIndexesByNewIndex];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __76___TVStackTemplateController_updateCollectionViewControllersAndForceReload___block_invoke_2;
    v33[3] = &unk_279D709E8;
    v34 = *(a1 + 48);
    [v32 enumerateKeysAndObjectsUsingBlock:v33];
  }
}

void __76___TVStackTemplateController_updateCollectionViewControllersAndForceReload___block_invoke_100(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:a2];
  [v2 addObject:v3];
}

uint64_t __76___TVStackTemplateController_updateCollectionViewControllersAndForceReload___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 integerValue];
  v7 = [v5 integerValue];

  return [v4 moveSection:v6 toSection:v7];
}

void __76___TVStackTemplateController_updateCollectionViewControllersAndForceReload___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setNeedsLayout];
}

void __80___TVStackTemplateController_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [*(a1 + 40) bounds];
  [v2 setFrame:?];
}

id __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 tv_elementType] == 9)
  {
    v2 = objc_opt_new();
    [v2 setLayoutType:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) unfilteredChildren];
  v12 = [v4 objectAtIndexedSubscript:a2];

  v5 = [*(a1 + 40) oldIndexForNewIndex:a2];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = (*(*(a1 + 80) + 16))();
    v7 = [*(a1 + 64) viewControllerWithElement:v12 layout:v6 existingController:0];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_opt_new();
    }

    v11 = v9;

    [*(a1 + 48) addObject:v11];
    [*(a1 + 72) addObject:v11];
  }

  else
  {
    v10 = *(a1 + 48);
    v6 = [*(a1 + 56) objectAtIndexedSubscript:v5];
    [v10 addObject:v6];
  }
}

void __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = [v7 autoHighlightIdentifier];

  if (v5)
  {
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 24) == 0x7FFFFFFFFFFFFFFFLL)
    {
      *(v6 + 24) = a3;
    }

    [v7 resetProperty:2];
  }
}

void __94___TVStackTemplateController__updateWithCollectionListElement_commits_autoHighlightIndexPath___block_invoke_5(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 parentViewController];
        v9 = *(a1 + 40);

        if (v8 == v9)
        {
          [v7 willMoveToParentViewController:0];
        }

        v10 = [v7 view];
        [v10 removeFromSuperview];

        [v7 removeFromParentViewController];
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v11 = [*(a1 + 48) copy];
  v12 = *(a1 + 40);
  v13 = *(v12 + 1184);
  *(v12 + 1184) = v11;
}

void __61___TVStackTemplateController__scheduleNextPreloadConditional__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1282] = 0;
    v2 = WeakRetained;
    [WeakRetained _preloadNext];
    WeakRetained = v2;
  }
}

void __49___TVStackTemplateController__buildStackSections__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v71[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 tv_associatedIKViewElement];
  v7 = [v6 style];
  v8 = [v7 tv_transition];

  if (v8)
  {
    v9 = [v8 isEqualToString:@"collapse"];
  }

  else
  {
    v9 = 1;
  }

  [*(a1 + 32) showcaseInset];
  *&v63 = 1;
  *(&v63 + 1) = v9;
  *&v64 = v10;
  [v5 tv_setShowcaseConfig:&v63];
  v11 = [v5 view];
  v68 = 0x7FFFFFFFFFFFFFFFLL;
  v12 = [v11 conformsToProtocol:&unk_287E7FA58];
  v13 = *(a1 + 88);
  v48 = v12;
  v46 = v6;
  v47 = v5;
  v43 = a3;
  v45 = v8;
  if (v12)
  {
    v14 = [v11 rowMetricsForExpectedWidth:&v68 firstItemRowIndex:v13];
    v15 = (objc_opt_respondsToSelector() & 1) != 0 && [v11 shouldBindRowsTogether] && objc_msgSend(v14, "count") > 1;
    v20 = objc_opt_respondsToSelector();
    if (*(a1 + 176) == 1 && (v20 & 1) != 0)
    {
      v19 = [v11 showcaseRowMetricsForExpectedWidth:*(a1 + 88)];
    }

    else
    {
      v19 = v14;
      v14 = v19;
    }
  }

  else
  {
    [v11 tv_sizeThatFits:{v13, 0.0}];
    *&v63 = 0;
    *(&v63 + 1) = v16;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v17 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v63];
    v71[0] = v17;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];

    if (v9)
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      v18 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v63];
      v70 = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];

      v15 = 0;
    }

    else
    {
      v19 = v14;
      v15 = 0;
      v14 = v19;
    }
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  TVRowMetricsMakeWithList(v14, &v63);
  v21 = *(a1 + 40);
  v60 = v65;
  v61 = v66;
  v62 = v67;
  v58 = v63;
  v59 = v64;
  v22 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v58];
  [v21 addObject:v22];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v23 = v19;
  TVRowMetricsMakeWithList(v19, &v58);
  v24 = *(a1 + 48);
  v55 = v60;
  v56 = v61;
  v57 = v62;
  v53 = v58;
  v54 = v59;
  v25 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v53];
  [v24 addObject:v25];

  if (*(&v63 + 1) <= 0.0)
  {
    [*(a1 + 80) addIndex:{v43, *(&v63 + 1)}];
    v38 = v46;
    v39 = v5;
  }

  else
  {
    v44 = v11;
    [*(a1 + 56) addObject:{v5, *(&v63 + 1)}];
    v26 = objc_alloc_init(_TVStackRow);
    v27 = *(a1 + 144);
    v55 = *(a1 + 128);
    v56 = v27;
    v57 = *(a1 + 160);
    v28 = *(a1 + 112);
    v53 = *(a1 + 96);
    v54 = v28;
    [(_TVStackRow *)v26 setRowMetrics:&v53];
    v41 = v26;
    [*(a1 + 64) addObject:v26];
    v40 = [*(a1 + 64) count];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v42 = v14;
    v29 = v14;
    v30 = [v29 countByEnumeratingWithState:&v49 objects:v69 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v50;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v50 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v49 + 1) + 8 * i);
          v35 = objc_alloc_init(_TVStackRow);
          if (v34)
          {
            [v34 tv_rowMetricsValue];
          }

          else
          {
            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v53 = 0u;
          }

          v19 = v23;
          [(_TVStackRow *)v35 setRowMetrics:&v53, v40];
          -[_TVStackRow setSectionIndex:](v35, "setSectionIndex:", [*(a1 + 72) count]);
          [(_TVStackRow *)v35 setHosted:v48];
          [(_TVStackRow *)v35 setBounded:v15];
          [*(a1 + 64) addObject:v35];
        }

        v31 = [v29 countByEnumeratingWithState:&v49 objects:v69 count:16];
      }

      while (v31);
    }

    v36 = objc_alloc_init(_TVStackSection);
    [(_TVStackSection *)v36 setFirstRowIndex:v40];
    -[_TVStackSection setRowCount:](v36, "setRowCount:", [v29 count]);
    v37 = v68;
    if (v68 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v37 = 0;
    }

    [(_TVStackSection *)v36 setFirstItemRowIndex:v37 + v40, v40];
    [(_TVStackSection *)v36 setSectionHeight:*(&v63 + 1)];
    [(_TVStackSection *)v36 setShowcaseSectionHeight:*(&v58 + 1)];
    v55 = v65;
    v56 = v66;
    v57 = v67;
    v53 = v63;
    v54 = v64;
    [(_TVStackSection *)v36 setCompoundRowMetrics:&v53];
    [*(a1 + 72) addObject:v36];

    v38 = v46;
    v39 = v47;
    v11 = v44;
    v8 = v45;
    v14 = v42;
  }
}

void __49___TVStackTemplateController__buildStackSections__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  v8 = [v6 tv_associatedIKViewElement];

  v9 = [v8 style];
  [v9 tv_margin];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = 0.0;
  if (!a3)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v19 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v20 = v19;
    if (v19)
    {
      [v19 rowMetrics];
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
    }

    *(&v43 + 1) = v11;
    v21 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v40 = v45;
    v41 = v46;
    v42 = v47;
    v38 = v43;
    v39 = v44;
    [v21 setRowMetrics:&v38];

    v18 = v11;
  }

  if ([*(*(a1 + 48) + 1200) count] - 1 > a3)
  {
    v22 = [*(*(a1 + 48) + 1200) objectAtIndex:a3 + 1];
    v23 = [v22 tv_associatedIKViewElement];

    v24 = [v23 style];
    [v24 tv_margin];
    v26 = v25;

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    v27 = [*(a1 + 56) objectAtIndex:a3];
    v28 = v27;
    if (v27)
    {
      [v27 tv_rowMetricsValue];
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v30 = [*(a1 + 64) objectAtIndex:a3];
    v31 = v30;
    if (v30)
    {
      [v30 tv_rowMetricsValue];
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
    }

    v32 = [v23 style];
    if ([v32 tv_edgeFlagForStyle:@"margin"])
    {
    }

    else
    {
      v33 = [v8 style];
      v34 = [v33 tv_edgeFlagForStyle:@"margin"];

      if ((v34 & 4) == 0)
      {
        v35 = *(&v43 + 1);
        v15 = *(&v38 + 1);
LABEL_19:
        v29 = v15;
        v36 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(v7, "rowCount") + objc_msgSend(v7, "firstRowIndex")}];
        v37[2] = v45;
        v37[3] = v46;
        v37[4] = v47;
        v37[0] = v43;
        v37[1] = v44;
        [v36 setRowMetrics:v37];

        v15 = v35;
        goto LABEL_20;
      }
    }

    v35 = fmax(v15, v26);
    *(&v43 + 1) = v35;
    *(&v38 + 1) = v35;
    goto LABEL_19;
  }

  v23 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "count") - 1}];
  *&v43 = 1;
  *(&v43 + 1) = v15;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  [v23 setRowMetrics:&v43];
  v29 = v15;
LABEL_20:

  [v7 setSectionSpacing:{v18, v13, v15, v17}];
  [v7 setShowcaseSectionSpacing:{v11, v13, v29, v17}];
}

void __56___TVStackTemplateController__updateFirstItemRowIndexes__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 view];
  if ([v5 conformsToProtocol:&unk_287E7FA58])
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [v5 rowMetricsForExpectedWidth:&v10 firstItemRowIndex:*(a1 + 40)];
    v7 = [*(*(a1 + 32) + 1216) objectAtIndexedSubscript:a3];
    v8 = [v7 firstRowIndex];
    v9 = v10;
    if (v10 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    [v7 setFirstItemRowIndex:v9 + v8];
  }
}

@end