@interface TVStackCollectionViewController
@end

@implementation TVStackCollectionViewController

void __57___TVStackCollectionViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[133] evaluateForState:1];
    WeakRetained = v2;
  }
}

void __86___TVStackCollectionViewController_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [*(a1 + 40) bounds];
  [v2 setFrame:?];
}

uint64_t __90___TVStackCollectionViewController__adjustedContentOffsetForRowIndex_targetContentOffset___block_invoke(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a2 + 24);
  if ((a3 & 1) == 0)
  {
    v8 = v8 + *(a2 + 32) - 1;
  }

  v9 = [*(*(a1 + 32) + 1048) objectAtIndexedSubscript:v8];
  v10 = v9;
  v11 = 0.0;
  if ((a4 & 1) == 0)
  {
    if (v9)
    {
      [v9 rowMetrics];
    }

    v11 = 0.0 - 0.0;
  }

  v12 = 0;
  v13 = v8 + v7;
  if (v13 >= 0)
  {
    v14 = -v13;
    while (v13 < [*(*(a1 + 32) + 1048) count])
    {
      v15 = [*(*(a1 + 32) + 1048) objectAtIndexedSubscript:v13];
      v16 = v15;
      if (v15)
      {
        [v15 rowMetrics];
      }

      v17 = *(a2 + 24);
      if (a3)
      {
        v18 = v14 + v17 + *(a2 + 32);
        *(a2 + 24) = v13;
      }

      else
      {
        v18 = v13 - v17 + 1;
      }

      *(a2 + 32) = v18;
      if (!a4 || ![v10 isBounded] || (v19 = objc_msgSend(v10, "sectionIndex"), v19 != objc_msgSend(v16, "sectionIndex")))
      {
        *(a2 + 16) = *(a2 + 16) + v11 + 0.0;
        v20 = 8;
        if (a3)
        {
          v20 = 0;
        }

        *(a2 + v20) = 0.0 - (0.0 + 0.0);

        v12 = 1;
        break;
      }

      *(a2 + 16) = *(a2 + 16) + v11 + 0.0;
      v12 = 1;
      v11 = 0.0;

      v13 += v7;
      v14 -= v7;
      if (v13 < 0)
      {
        break;
      }
    }
  }

  return v12 & 1;
}

void __55___TVStackCollectionViewController__buildStackSections__block_invoke(uint64_t a1, void *a2)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 view];
  v40 = 0x7FFFFFFFFFFFFFFFLL;
  v4 = [v3 conformsToProtocol:&unk_287E7FA58];
  v25 = v3;
  if (v4)
  {
    v5 = [v3 rowMetricsForExpectedWidth:&v40 firstItemRowIndex:*(a1 + 56)];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 shouldBindRowsTogether])
    {
      v6 = [v5 count] > 1;
      goto LABEL_7;
    }
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    [v3 tv_sizeThatFits:{*(a1 + 56), 0.0}];
    *&v35 = 0;
    *(&v35 + 1) = v7;
    v8 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v35];
    v42[0] = v8;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
  }

  v6 = 0;
LABEL_7:
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  TVRowMetricsMakeWithList(v5, &v35);
  v9 = *(a1 + 32);
  v32 = v37;
  v33 = v38;
  v34 = v39;
  v30 = v35;
  v31 = v36;
  v10 = [MEMORY[0x277CCAE60] tv_valueWithRowMetrics:&v30];
  [v9 addObject:v10];

  v11 = objc_alloc_init(_TVStackRow);
  v12 = *(a1 + 112);
  v32 = *(a1 + 96);
  v33 = v12;
  v34 = *(a1 + 128);
  v13 = *(a1 + 80);
  v30 = *(a1 + 64);
  v31 = v13;
  [(_TVStackRow *)v11 setRowMetrics:&v30];
  v24 = v11;
  [*(a1 + 40) addObject:v11];
  v23 = [*(a1 + 40) count];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = objc_alloc_init(_TVStackRow);
        if (v19)
        {
          [v19 tv_rowMetricsValue];
        }

        else
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v30 = 0u;
        }

        [(_TVStackRow *)v20 setRowMetrics:&v30];
        -[_TVStackRow setSectionIndex:](v20, "setSectionIndex:", [*(a1 + 48) count]);
        [(_TVStackRow *)v20 setHosted:v4];
        [(_TVStackRow *)v20 setBounded:v6];
        [*(a1 + 40) addObject:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v41 count:16];
    }

    while (v16);
  }

  v21 = objc_alloc_init(_TVStackSection);
  [(_TVStackSection *)v21 setFirstRowIndex:v23];
  -[_TVStackSection setRowCount:](v21, "setRowCount:", [v14 count]);
  v22 = v40;
  if (v40 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = 0;
  }

  [(_TVStackSection *)v21 setFirstItemRowIndex:v22 + v23];
  [(_TVStackSection *)v21 setSectionHeight:*(&v35 + 1)];
  v32 = v37;
  v33 = v38;
  v34 = v39;
  v30 = v35;
  v31 = v36;
  [(_TVStackSection *)v21 setCompoundRowMetrics:&v30];
  [*(a1 + 48) addObject:v21];
}

void __55___TVStackCollectionViewController__buildStackSections__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
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
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v19 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v20 = v19;
    if (v19)
    {
      [v19 rowMetrics];
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
    }

    *(&v38 + 1) = v11;
    v21 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v35 = v40;
    v36 = v41;
    v37 = v42;
    v33 = v38;
    v34 = v39;
    [v21 setRowMetrics:&v33];

    v18 = v11;
  }

  if ([*(*(a1 + 48) + 1032) count] - 1 > a3)
  {
    v22 = [*(*(a1 + 48) + 1032) objectAtIndex:a3 + 1];
    v23 = [v22 tv_associatedIKViewElement];

    v24 = [v23 style];
    [v24 tv_margin];
    v26 = v25;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v27 = [*(a1 + 56) objectAtIndex:a3];
    v28 = v27;
    if (v27)
    {
      [v27 tv_rowMetricsValue];
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
    }

    v29 = [v23 style];
    if ([v29 tv_edgeFlagForStyle:@"margin"])
    {
    }

    else
    {
      v30 = [v8 style];
      v31 = [v30 tv_edgeFlagForStyle:@"margin"];

      if ((v31 & 4) == 0)
      {
        v15 = *(&v38 + 1);
LABEL_16:
        v32 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(v7, "rowCount") + objc_msgSend(v7, "firstRowIndex")}];
        v35 = v40;
        v36 = v41;
        v37 = v42;
        v33 = v38;
        v34 = v39;
        [v32 setRowMetrics:&v33];

        goto LABEL_17;
      }
    }

    v15 = fmax(v15, v26);
    *(&v38 + 1) = v15;
    goto LABEL_16;
  }

  v23 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(*(a1 + 40), "count") - 1}];
  *&v38 = 1;
  *(&v38 + 1) = v15;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  [v23 setRowMetrics:&v38];
LABEL_17:

  [v7 setSectionSpacing:{v18, v13, v15, v17}];
}

void __62___TVStackCollectionViewController__updateFirstItemRowIndexes__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 view];
  if ([v5 conformsToProtocol:&unk_287E7FA58])
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = [v5 rowMetricsForExpectedWidth:&v10 firstItemRowIndex:*(a1 + 40)];
    v7 = [*(*(a1 + 32) + 1040) objectAtIndexedSubscript:a3];
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