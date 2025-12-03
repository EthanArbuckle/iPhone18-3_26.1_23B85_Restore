@interface PKCollectionViewItemsDiffCalculator
+ (id)calculateDiffBetweenOldItems:(id)items andNewItems:(id)newItems inSection:(int64_t)section;
+ (id)calculateDiffBetweenOldSections:(id)sections andNewSections:(id)newSections sectionIdentifierAccessor:(id)accessor sectionItemsAccessor:(id)itemsAccessor firstSectionIndex:(int64_t)index;
@end

@implementation PKCollectionViewItemsDiffCalculator

+ (id)calculateDiffBetweenOldSections:(id)sections andNewSections:(id)newSections sectionIdentifierAccessor:(id)accessor sectionItemsAccessor:(id)itemsAccessor firstSectionIndex:(int64_t)index
{
  v106 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  newSectionsCopy = newSections;
  accessorCopy = accessor;
  itemsAccessorCopy = itemsAccessor;
  v14 = MEMORY[0x1E695E0F0];
  v70 = sectionsCopy;
  if (sectionsCopy)
  {
    v15 = sectionsCopy;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  v16 = v15;
  v69 = newSectionsCopy;
  if (newSectionsCopy)
  {
    v17 = newSectionsCopy;
  }

  else
  {
    v17 = v14;
  }

  v18 = v17;
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __151__PKCollectionViewItemsDiffCalculator_calculateDiffBetweenOldSections_andNewSections_sectionIdentifierAccessor_sectionItemsAccessor_firstSectionIndex___block_invoke;
  v102[3] = &unk_1E8014B58;
  v19 = accessorCopy;
  v103 = v19;
  v62 = v16;
  v20 = [v16 pk_arrayByApplyingBlock:v102];
  v100[0] = MEMORY[0x1E69E9820];
  v100[1] = 3221225472;
  v100[2] = __151__PKCollectionViewItemsDiffCalculator_calculateDiffBetweenOldSections_andNewSections_sectionIdentifierAccessor_sectionItemsAccessor_firstSectionIndex___block_invoke_2;
  v100[3] = &unk_1E8014B58;
  v68 = v19;
  v101 = v68;
  v74 = v18;
  v71 = [v18 pk_arrayByApplyingBlock:v100];
  v59 = v20;
  v21 = [v71 differenceFromArray:v20 withOptions:4];
  v22 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v75 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __151__PKCollectionViewItemsDiffCalculator_calculateDiffBetweenOldSections_andNewSections_sectionIdentifierAccessor_sectionItemsAccessor_firstSectionIndex___block_invoke_3;
  aBlock[3] = &unk_1E8014B80;
  indexCopy = index;
  v67 = v23;
  v97 = v67;
  v66 = v24;
  v98 = v66;
  v25 = _Block_copy(aBlock);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v73 = v21;
  removals = [v21 removals];
  v27 = [removals countByEnumeratingWithState:&v92 objects:v105 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v93;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v93 != v29)
        {
          objc_enumerationMutation(removals);
        }

        v31 = *(*(&v92 + 1) + 8 * i);
        if ([v31 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v75 addIndex:{objc_msgSend(v31, "index") + index}];
        }

        else
        {
          v25[2](v25, v31);
        }
      }

      v28 = [removals countByEnumeratingWithState:&v92 objects:v105 count:16];
    }

    while (v28);
  }

  v90 = 0u;
  v91 = 0u;
  v89 = 0u;
  v88 = 0u;
  insertions = [v21 insertions];
  v33 = [insertions countByEnumeratingWithState:&v88 objects:v104 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v89;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v89 != v35)
        {
          objc_enumerationMutation(insertions);
        }

        v37 = *(*(&v88 + 1) + 8 * j);
        if ([v37 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v22 addIndex:{objc_msgSend(v37, "index") + index}];
        }

        else
        {
          v25[2](v25, v37);
        }
      }

      v34 = [insertions countByEnumeratingWithState:&v88 objects:v104 count:16];
    }

    while (v34);
  }

  v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __151__PKCollectionViewItemsDiffCalculator_calculateDiffBetweenOldSections_andNewSections_sectionIdentifierAccessor_sectionItemsAccessor_firstSectionIndex___block_invoke_4;
  v76[3] = &unk_1E8014BA8;
  v77 = v71;
  v78 = v59;
  v85 = itemsAccessorCopy;
  selfCopy = self;
  indexCopy2 = index;
  v79 = v62;
  v80 = v55;
  v81 = v40;
  v82 = v41;
  v83 = v39;
  v84 = v38;
  v58 = v38;
  v57 = v39;
  v54 = v41;
  v42 = v40;
  v56 = v55;
  v61 = itemsAccessorCopy;
  v65 = v62;
  v63 = v59;
  v72 = v71;
  [v74 enumerateObjectsUsingBlock:v76];
  v43 = objc_alloc_init(PKCollectionViewItemsDiff);
  v44 = [v22 copy];
  [(PKCollectionViewItemsDiff *)v43 setInsertedSections:v44];

  v45 = [v75 copy];
  [(PKCollectionViewItemsDiff *)v43 setDeletedSections:v45];

  v46 = [v67 copy];
  [(PKCollectionViewItemsDiff *)v43 setMovedFromSections:v46];

  v47 = [v66 copy];
  [(PKCollectionViewItemsDiff *)v43 setMovedToSections:v47];

  v48 = [v56 copy];
  [(PKCollectionViewItemsDiff *)v43 setChangedIndexPaths:v48];

  v49 = [v42 copy];
  [(PKCollectionViewItemsDiff *)v43 setMovedFromIndexPaths:v49];

  v50 = [v54 copy];
  [(PKCollectionViewItemsDiff *)v43 setMovedToIndexPaths:v50];

  v51 = [v57 copy];
  [(PKCollectionViewItemsDiff *)v43 setDeletedIndexPaths:v51];

  v52 = [v58 copy];
  [(PKCollectionViewItemsDiff *)v43 setInsertedIndexPaths:v52];

  return v43;
}

void __151__PKCollectionViewItemsDiffCalculator_calculateDiffBetweenOldSections_andNewSections_sectionIdentifierAccessor_sectionItemsAccessor_firstSectionIndex___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 associatedIndex];
  v5 = a1[6];
  v6 = [v3 index];

  v7 = a1[6];
  v8 = a1[4];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5 + v4];
  [v8 addObject:v9];

  v10 = a1[5];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7 + v6];
  [v10 addObject:v11];
}

void __151__PKCollectionViewItemsDiffCalculator_calculateDiffBetweenOldSections_andNewSections_sectionIdentifierAccessor_sectionItemsAccessor_firstSectionIndex___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = a2;
  v5 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v6 = [*(a1 + 40) indexOfObject:v5];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [*(a1 + 48) objectAtIndexedSubscript:v6];
    v8 = *(a1 + 104);
    v9 = (*(*(a1 + 96) + 16))();
    v10 = (*(*(a1 + 96) + 16))();
    v11 = [v8 calculateDiffBetweenOldItems:v9 andNewItems:v10 inSection:*(a1 + 112) + a3];

    v12 = *(a1 + 56);
    v13 = [v11 changedIndexPaths];
    [v12 addObjectsFromArray:v13];

    v14 = *(a1 + 64);
    v15 = [v11 movedFromIndexPaths];
    [v14 addObjectsFromArray:v15];

    v16 = *(a1 + 72);
    v17 = [v11 movedToIndexPaths];
    [v16 addObjectsFromArray:v17];

    v18 = *(a1 + 80);
    v19 = [v11 deletedIndexPaths];
    [v18 addObjectsFromArray:v19];

    v20 = *(a1 + 88);
    v21 = [v11 insertedIndexPaths];
    [v20 addObjectsFromArray:v21];
  }
}

+ (id)calculateDiffBetweenOldItems:(id)items andNewItems:(id)newItems inSection:(int64_t)section
{
  v70 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  newItemsCopy = newItems;
  v9 = MEMORY[0x1E695E0F0];
  v48 = itemsCopy;
  if (itemsCopy)
  {
    v10 = itemsCopy;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;
  v47 = newItemsCopy;
  if (newItemsCopy)
  {
    v12 = newItemsCopy;
  }

  else
  {
    v12 = v9;
  }

  v45 = v12;
  v46 = v11;
  v13 = [v45 differenceFromArray:v11 withOptions:4];
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__PKCollectionViewItemsDiffCalculator_calculateDiffBetweenOldItems_andNewItems_inSection___block_invoke;
  aBlock[3] = &unk_1E8014B80;
  sectionCopy = section;
  v43 = v15;
  v64 = v43;
  v42 = v16;
  v65 = v42;
  v17 = _Block_copy(aBlock);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v49 = v13;
  removals = [v13 removals];
  v19 = [removals countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v60;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v60 != v21)
        {
          objc_enumerationMutation(removals);
        }

        v23 = *(*(&v59 + 1) + 8 * i);
        if ([v23 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v23 inSection:{"index"), section}];
          [v14 addObject:v24];
        }

        else
        {
          v17[2](v17, v23);
        }
      }

      v20 = [removals countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v20);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  insertions = [v49 insertions];
  v26 = [insertions countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v56;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v56 != v28)
        {
          objc_enumerationMutation(insertions);
        }

        v30 = *(*(&v55 + 1) + 8 * j);
        if ([v30 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v30 inSection:{"index"), section}];
          [v50 addObject:v31];
        }

        else
        {
          v17[2](v17, v30);
        }
      }

      v27 = [insertions countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v27);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v32 = v50;
  v33 = [v32 countByEnumeratingWithState:&v51 objects:v67 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v52;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v52 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v51 + 1) + 8 * k);
        if ([v14 containsObject:{v37, v42}])
        {
          [v14 removeObject:v37];
          [v44 addObject:v37];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v51 objects:v67 count:16];
    }

    while (v34);
  }

  [v32 removeObjectsInArray:v44];
  v38 = objc_alloc_init(PKCollectionViewItemsDiff);
  v39 = objc_alloc_init(MEMORY[0x1E696AC90]);
  [(PKCollectionViewItemsDiff *)v38 setInsertedSections:v39];

  v40 = objc_alloc_init(MEMORY[0x1E696AC90]);
  [(PKCollectionViewItemsDiff *)v38 setDeletedSections:v40];

  [(PKCollectionViewItemsDiff *)v38 setChangedIndexPaths:v44];
  [(PKCollectionViewItemsDiff *)v38 setMovedFromIndexPaths:v43];
  [(PKCollectionViewItemsDiff *)v38 setMovedToIndexPaths:v42];
  [(PKCollectionViewItemsDiff *)v38 setDeletedIndexPaths:v14];
  [(PKCollectionViewItemsDiff *)v38 setInsertedIndexPaths:v32];

  return v38;
}

void __90__PKCollectionViewItemsDiffCalculator_calculateDiffBetweenOldItems_andNewItems_inSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AC88];
  v4 = a2;
  v8 = [v3 indexPathForItem:objc_msgSend(v4 inSection:{"associatedIndex"), *(a1 + 48)}];
  v5 = MEMORY[0x1E696AC88];
  v6 = [v4 index];

  v7 = [v5 indexPathForItem:v6 inSection:*(a1 + 48)];
  [*(a1 + 32) addObject:v8];
  [*(a1 + 40) addObject:v7];
}

@end