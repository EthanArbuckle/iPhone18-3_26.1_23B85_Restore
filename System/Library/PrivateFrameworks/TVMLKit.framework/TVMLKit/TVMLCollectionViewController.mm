@interface TVMLCollectionViewController
@end

@implementation TVMLCollectionViewController

void __54___TVMLCollectionViewController_viewDidLayoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[126] evaluateForState:1];
    WeakRetained = v2;
  }
}

void __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = [v9 autoHighlightIndex];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      v6 = [MEMORY[0x277CCAA70] indexPathForRow:v5 inSection:a3];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    [v9 resetProperty:3];
  }
}

void __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 numberOfItems];
  v7 = [v5 indexTitles];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_3;
  v8[3] = &unk_279D708F8;
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = a3;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];
}

void __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v5];
  if (!v6)
  {
    if ([v7 integerValue] >= *(a1 + 40))
    {
      goto LABEL_5;
    }

    v6 = [MEMORY[0x277CCAA70] indexPathForItem:objc_msgSend(v7 inSection:{"integerValue"), *(a1 + 48)}];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  }

LABEL_5:
}

uint64_t __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 indexPathsByIndexTitle];
  v9 = [v8 objectForKeyedSubscript:v7];

  v10 = [*(a1 + 32) indexPathsByIndexTitle];
  v11 = [v10 objectForKeyedSubscript:v6];

  v12 = [v9 compare:v11];
  return v12;
}

void __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_30(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v15 = v5;
  if (v6 && (v7 = [v6 indexOfObject:v5], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = v7;
    [*(a1 + 48) removeIndex:v7];
    v9 = *(a1 + 56);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    [v9 setObject:v10 forKey:v11];

    if (v8 != a3)
    {
      v12 = *(a1 + 64);
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      [v12 setObject:v13 forKey:v14];
    }
  }

  else
  {
    [*(a1 + 40) addIndex:a3];
  }
}

void __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_2_33(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) objectAtIndex:{objc_msgSend(v8, "integerValue")}];
  v10 = [*(a1 + 40) objectAtIndex:{objc_msgSend(v7, "integerValue")}];
  v11 = [v9 elementID];
  v12 = [v11 viewElement];

  v13 = [v10 elementID];
  v14 = [v13 viewElement];

  v15 = [v14 itemsChangeSet];
  v16 = v15;
  if (v15)
  {
    v40 = v12;
    v41 = v10;
    v17 = [v15 removedIndexes];
    if (v17)
    {
      v18 = [v16 removedIndexes];
      v19 = [v18 firstIndex];

      while (v19 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = *(a1 + 48);
        v21 = [MEMORY[0x277CCAA70] indexPathForItem:v19 inSection:{objc_msgSend(v8, "integerValue")}];
        [v20 addObject:v21];

        v22 = [v16 removedIndexes];
        v19 = [v22 indexGreaterThanIndex:v19];
      }
    }

    else
    {
    }

    v23 = [v16 updatedIndexesByNewIndex];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_3_34;
    v43[3] = &unk_279D70998;
    v44 = v7;
    v24 = v8;
    v25 = *(a1 + 56);
    v45 = v24;
    v46 = v25;
    v47 = v14;
    v26 = *(a1 + 64);
    *&v27 = *(a1 + 88);
    v39 = v27;
    v28 = *(a1 + 72);
    *&v29 = v26;
    *(&v29 + 1) = v28;
    *&v30 = v39;
    *(&v30 + 1) = *(a1 + 96);
    v48 = v29;
    v49 = v30;
    [v23 enumerateKeysAndObjectsUsingBlock:v43];

    v31 = [v16 removedIndexes];
    if (v31)
    {
      v12 = v40;
    }

    else
    {
      v31 = [v16 addedIndexes];
      v12 = v40;
      if (!v31)
      {
        v38 = [v16 movedIndexesByNewIndex];

        if (!v38)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }
    }

LABEL_13:
    [*(a1 + 80) setObject:v16 forKey:{v24, v39}];
LABEL_14:

    v10 = v41;
    goto LABEL_15;
  }

  if ([v14 updateType])
  {
    *(*(*(a1 + 96) + 8) + 24) = 1;
  }

LABEL_15:
  if (*(*(*(a1 + 96) + 8) + 24) & 1) != 0 || (v42 = *(a1 + 56), v32 = a4, v33 = v14, v34 = v12, v35 = [v8 integerValue], v36 = objc_msgSend(v7, "integerValue"), v37 = v35, v12 = v34, v14 = v33, a4 = v32, objc_msgSend(v42, "updateSupplementaryViewsForSectionAtOldIndex:oldElement:withNewIndex:newElement:requiresReload:requiresRelayout:", v37, v12, v36, v14, *(*(a1 + 96) + 8) + 24, *(*(a1 + 88) + 8) + 24), (*(*(*(a1 + 96) + 8) + 24)))
  {
    *a4 = 1;
  }
}

void __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_3_34(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = MEMORY[0x277CCAA70];
  v8 = a3;
  v9 = a2;
  v27 = [v7 indexPathForItem:objc_msgSend(v9 inSection:{"integerValue"), objc_msgSend(*(a1 + 32), "integerValue")}];
  v10 = MEMORY[0x277CCAA70];
  v11 = [v8 integerValue];

  v12 = [v10 indexPathForItem:v11 inSection:{objc_msgSend(*(a1 + 40), "integerValue")}];
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = [v9 integerValue];

  v16 = [v14 prototypeForItemAtIndex:v15];
  [v13 expectedCellSizeForElement:v16 atIndexPath:v27];
  v18 = v17;
  v20 = v19;

  v21 = [*(a1 + 64) layoutAttributesForItemAtIndexPath:v12];
  [v21 frame];
  v23 = v22;
  v25 = v24;

  v26 = v18 == v23 && v20 == v25;
  if (v26 || (*(*(*(a1 + 80) + 8) + 24) = 1, [*(a1 + 56) updateType] == 2))
  {
    [*(a1 + 72) addObject:v27];
  }

  else
  {
    *(*(*(a1 + 88) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_4_36(uint64_t a1)
{
  [*(a1 + 32) deleteSections:*(a1 + 40)];
  [*(a1 + 32) insertSections:*(a1 + 48)];
  v2 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_5;
  v7[3] = &unk_279D709E8;
  v8 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v3 = *(a1 + 64);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_7;
  v4[3] = &unk_279D70A58;
  v5 = *(a1 + 32);
  v6 = &__block_literal_global_41;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [v5 integerValue];

  return [v4 moveSection:v6 toSection:v7];
}

id __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [v4 firstIndex];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = v6; i != 0x7FFFFFFFFFFFFFFFLL; i = [v4 indexGreaterThanIndex:i])
    {
      v8 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:a2];
      [v5 addObject:v8];
    }
  }

  v9 = [v5 copy];

  return v9;
}

void __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 integerValue];
  v7 = [v5 removedIndexes];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = [v5 removedIndexes];
    v11 = (*(v9 + 16))(v9, v6, v10);
    [v8 deleteItemsAtIndexPaths:v11];
  }

  v12 = [v5 addedIndexes];

  if (v12)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = [v5 addedIndexes];
    v16 = (*(v14 + 16))(v14, v6, v15);
    [v13 insertItemsAtIndexPaths:v16];
  }

  v17 = [v5 movedIndexesByNewIndex];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_8;
  v18[3] = &unk_279D70A30;
  v20 = v6;
  v19 = *(a1 + 32);
  [v17 enumerateKeysAndObjectsUsingBlock:v18];
}

void __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCAA70];
  v6 = a2;
  v10 = [v5 indexPathForItem:objc_msgSend(a3 inSection:{"integerValue"), *(a1 + 40)}];
  v7 = MEMORY[0x277CCAA70];
  v8 = [v6 integerValue];

  v9 = [v7 indexPathForItem:v8 inSection:*(a1 + 40)];
  [*(a1 + 32) moveItemAtIndexPath:v10 toIndexPath:v9];
}

uint64_t __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) _doUpdateViewLayoutAnimated:0 relayout:*(*(*(a1 + 40) + 8) + 24)];
  [*(a1 + 32) _updateHeaderView];
  result = [*(a1 + 32) _updateFooterView];
  *(*(a1 + 32) + 994) = 0;
  return result;
}

void __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_10(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_11;
  v5[3] = &unk_279D70AA8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 performBatchUpdates:v5 completion:0];
}

uint64_t __67___TVMLCollectionViewController_updateWithViewElement_cellMetrics___block_invoke_11(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __73___TVMLCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __73___TVMLCollectionViewController_collectionView_didSelectItemAtIndexPath___block_invoke_2;
  v2[3] = &unk_279D6E2F8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

@end