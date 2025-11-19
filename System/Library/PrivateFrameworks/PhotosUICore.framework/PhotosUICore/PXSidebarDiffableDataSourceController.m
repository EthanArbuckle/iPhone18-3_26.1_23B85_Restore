@interface PXSidebarDiffableDataSourceController
- (BOOL)_appendChildrenForParentIfNeeded:(id)a3 inSnapshot:(id)a4;
- (PXSidebarDiffableDataSourceController)initWithSidebarDataController:(id)a3 dataSource:(id)a4;
- (PXSidebarDiffableDataSourceControllerDelegate)delegate;
- (id)_applyChangeDetails:(id)a3 forItem:(id)a4 rootItem:(id)a5 toSnapshot:(id)a6 outChangedItemsBeforeChange:(id *)a7 outChangedItemsAfterChange:(id *)a8;
- (id)_newSnapshotForRootItem:(id)a3 restoreExpansionState:(BOOL)a4;
- (id)expandItemsToRevealFirstEditableItemIfNeededAnimated:(BOOL)a3;
- (id)identifierForSectionContainingItem:(id)a3;
- (id)sectionSnapshotContainingItem:(id)a3;
- (void)_configureInitialSnapshotAnimated:(BOOL)a3 expandSubItems:(BOOL)a4;
- (void)_expandItem:(id)a3 inSnapshot:(id)a4;
- (void)_expandItemIfNeeded:(id)a3 inSnapshot:(id)a4;
- (void)_transferStateOfItem:(id)a3 oldSnapshot:(id)a4 toNewItem:(id)a5 newSnapshot:(id)a6;
- (void)appendChildrenForParentIfNeeded:(id)a3;
- (void)expandItemsForIdentifiersIfNeeded:(id)a3 animated:(BOOL)a4;
- (void)sectionControllerWillCollapseItem:(id)a3;
- (void)sectionControllerWillExpandItem:(id)a3;
- (void)sidebarDataSourceController:(id)a3 didChangeChildrenOfItem:(id)a4 changeDetails:(id)a5;
@end

@implementation PXSidebarDiffableDataSourceController

- (PXSidebarDiffableDataSourceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sidebarDataSourceController:(id)a3 didChangeChildrenOfItem:(id)a4 changeDetails:(id)a5
{
  v57 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLSidebarGetLog();
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    v15 = [v9 identifier];
    *buf = 138412290;
    v56 = v15;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "sidebarDataSourceController_didChangeChildrenOfItem_changeDetails", "identifier: %@", buf, 0xCu);
  }

  if (v9)
  {
    spid = v12;
    v16 = [(PXSidebarDiffableDataSourceController *)self identifierForSectionContainingItem:v9];
    v17 = [(PXSidebarDiffableDataSourceController *)self dataController];
    v18 = [v17 itemForIdentifier:v16];

    if (!v18)
    {
      PXAssertGetLog();
    }

    v39 = v8;
    v19 = [(PXSidebarDiffableDataSourceController *)self dataSource];
    v20 = [v19 snapshotForSection:v16];
    v53 = 0;
    v54 = 0;
    v38 = v9;
    [(PXSidebarDiffableDataSourceController *)self _applyChangeDetails:v10 forItem:v9 rootItem:v18 toSnapshot:v20 outChangedItemsBeforeChange:&v54 outChangedItemsAfterChange:&v53];
    v22 = v21 = v10;
    v37 = v54;
    v36 = v53;
    v23 = [v21 insertedIndexes];
    v40 = v21;
    if ([v23 count])
    {
      v24 = 1;
    }

    else
    {
      v27 = [v21 removedIndexes];
      v24 = [v27 count] != 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __107__PXSidebarDiffableDataSourceController_sidebarDataSourceController_didChangeChildrenOfItem_changeDetails___block_invoke_21;
    aBlock[3] = &unk_1E77367E0;
    v28 = v20;
    v45 = v28;
    v29 = v22;
    v46 = v29;
    v47 = self;
    v52 = v24;
    v30 = v19;
    v48 = v30;
    v49 = v16;
    v50 = v14;
    v51 = spid;
    v31 = _Block_copy(aBlock);
    v32 = [(PXSidebarDiffableDataSourceController *)self delegate];

    if (v32)
    {
      v33 = [(PXSidebarDiffableDataSourceController *)self delegate];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __107__PXSidebarDiffableDataSourceController_sidebarDataSourceController_didChangeChildrenOfItem_changeDetails___block_invoke_23;
      v42[3] = &unk_1E774C250;
      v43 = v31;
      v34 = self;
      v35 = v36;
      [v33 sidebarDiffableDataSourceController:v34 willApplySnapshotWithChangedItemsAfterChange:v36 applyBlock:v42];

      v9 = v38;
      v8 = v39;
    }

    else
    {
      v31[2](v31);
      v9 = v38;
      v8 = v39;
      v35 = v36;
    }

    v10 = v40;
  }

  else
  {
    if (![v10 needsReload])
    {
      [(PXSidebarDiffableDataSourceController *)self dataSource];
      [objc_claimAutoreleasedReturnValue() snapshot];
      objc_claimAutoreleasedReturnValue();
      [v10 removedItems];
      objc_claimAutoreleasedReturnValue();
      PXMap();
    }

    [(PXSidebarDiffableDataSourceController *)self reloadFromDataControllerAnimated:0];
    v25 = [(PXSidebarDiffableDataSourceController *)self delegate];
    [v25 sidebarDiffableDataSourceController:self didReloadAnimated:0];

    v26 = v14;
    v16 = v26;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_END, v12, "sidebarDataSourceController_didChangeChildrenOfItem_changeDetails", "", buf, 2u);
    }
  }
}

void __107__PXSidebarDiffableDataSourceController_sidebarDataSourceController_didChangeChildrenOfItem_changeDetails___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) child:a2 ofItem:*(a1 + 40)];
  [*(a1 + 48) addObject:v4];
  v5 = [v4 identifier];
  v6 = [*(a1 + 56) sectionIdentifiers];
  v7 = v6;
  if (a2)
  {
    v8 = [v6 objectAtIndexedSubscript:a2 - 1];
    v9 = *(a1 + 56);
    v15[0] = v5;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [v9 insertSectionsWithIdentifiers:v10 afterSectionWithIdentifier:v8];
  }

  else
  {
    if (![v6 count])
    {
      v12 = *(a1 + 56);
      v13 = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1];
      [v12 appendSectionsWithIdentifiers:v8];
      goto LABEL_6;
    }

    v8 = [v7 firstObject];
    v11 = *(a1 + 56);
    v14 = v5;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    [v11 insertSectionsWithIdentifiers:v10 beforeSectionWithIdentifier:v8];
  }

LABEL_6:
}

void __107__PXSidebarDiffableDataSourceController_sidebarDataSourceController_didChangeChildrenOfItem_changeDetails___block_invoke_21(uint64_t a1)
{
  if (([*(a1 + 32) isEqual:*(a1 + 40)] & 1) == 0)
  {
    [*(a1 + 56) applySnapshot:*(a1 + 40) toSection:*(a1 + 64) animatingDifferences:{*(a1 + 88) & objc_msgSend(*(a1 + 48), "animateDataSourceUpdates") & 1}];
  }

  v2 = *(a1 + 72);
  v3 = v2;
  v4 = *(a1 + 80);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v3, OS_SIGNPOST_INTERVAL_END, v4, "sidebarDataSourceController_didChangeChildrenOfItem_changeDetails", "", v5, 2u);
  }
}

- (id)_applyChangeDetails:(id)a3 forItem:(id)a4 rootItem:(id)a5 toSnapshot:(id)a6 outChangedItemsBeforeChange:(id *)a7 outChangedItemsAfterChange:(id *)a8
{
  v78 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v51 = a5;
  v16 = a6;
  v17 = v16;
  if (v15)
  {
    if (([v16 containsItem:v15] & 1) != 0 && !objc_msgSend(v14, "needsReload"))
    {
      v43 = a8;
      v45 = a7;
      v18 = [v17 snapshotOfParentItem:v15];
      goto LABEL_9;
    }
  }

  else if (([v14 needsReload] & 1) == 0)
  {
    v43 = a8;
    v45 = a7;
    v18 = v17;
LABEL_9:
    v21 = v18;
    v50 = [v14 arrayChangeDetails];
    v48 = [v50 insertedIndexes];
    v46 = [v50 changedIndexes];
    v22 = [(PXSidebarDiffableDataSourceController *)self dataController];
    v49 = [v22 childrenOfListItem:v15];

    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    if ([v50 hasAnyInsertionsRemovalsOrMoves])
    {
      v23 = 1;
    }

    else
    {
      v24 = [v49 count];
      v25 = [v21 rootItems];
      v23 = v24 != [v25 count];
    }

    v76 = v23;
    if ((v74[3] & 1) != 0 || ![v46 count])
    {
      goto LABEL_19;
    }

    v26 = [v46 lastIndex];
    v27 = [v21 rootItems];
    if (v26 >= [v27 count])
    {
    }

    else
    {
      v28 = [v46 lastIndex];
      LOBYTE(v28) = v28 < [v49 count];

      if (v28)
      {
        v29 = [v50 changedIndexes];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __144__PXSidebarDiffableDataSourceController__applyChangeDetails_forItem_rootItem_toSnapshot_outChangedItemsBeforeChange_outChangedItemsAfterChange___block_invoke;
        v69[3] = &unk_1E773BE98;
        v70 = v21;
        v71 = v49;
        v72 = &v73;
        [v29 enumerateIndexesUsingBlock:v69];

LABEL_19:
        if (*(v74 + 24) == 1)
        {
          v30 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
          [v30 appendItems:v49];
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v31 = v49;
          v32 = [v31 countByEnumeratingWithState:&v65 objects:v77 count:16];
          if (v32)
          {
            v33 = *v66;
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (*v66 != v33)
                {
                  objc_enumerationMutation(v31);
                }

                [(PXSidebarDiffableDataSourceController *)self _transferStateOfItem:*(*(&v65 + 1) + 8 * i) oldSnapshot:v21 toNewItem:*(*(&v65 + 1) + 8 * i) newSnapshot:v30];
              }

              v32 = [v31 countByEnumeratingWithState:&v65 objects:v77 count:16];
            }

            while (v32);
          }

          if ([v48 count])
          {
            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 3221225472;
            v63[2] = __144__PXSidebarDiffableDataSourceController__applyChangeDetails_forItem_rootItem_toSnapshot_outChangedItemsBeforeChange_outChangedItemsAfterChange___block_invoke_2;
            v63[3] = &unk_1E7736768;
            v63[4] = self;
            v30 = v30;
            v64 = v30;
            [v31 enumerateObjectsAtIndexes:v48 options:0 usingBlock:v63];
          }
        }

        else
        {
          v30 = [v21 copy];
        }

        v47 = [MEMORY[0x1E695DF70] array];
        v35 = [MEMORY[0x1E695DF70] array];
        v36 = [v14 changedItems];
        v37 = [v36 count];

        if (v37)
        {
          v38 = [v14 previousDataSection];
          v39 = [v50 changedIndexes];
          if ([v48 count])
          {
            v40 = [v39 mutableCopy];
            [v40 removeIndexes:v48];
          }

          else
          {
            v40 = v39;
          }

          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __144__PXSidebarDiffableDataSourceController__applyChangeDetails_forItem_rootItem_toSnapshot_outChangedItemsBeforeChange_outChangedItemsAfterChange___block_invoke_3;
          v52[3] = &unk_1E7736790;
          v53 = v50;
          v41 = v38;
          v54 = v41;
          v55 = v49;
          v56 = self;
          v57 = v21;
          v58 = v30;
          v59 = v15;
          v60 = v17;
          v61 = v47;
          v62 = v35;
          [v40 enumerateIndexesUsingBlock:v52];
        }

        if (v45)
        {
          *v45 = [v47 copy];
        }

        if (v44)
        {
          *v44 = [v35 copy];
        }

        if (v15)
        {
          v20 = [v17 copy];
          [v20 replaceChildrenOfParentItem:v15 withSnapshot:v30];
        }

        else
        {
          v20 = v30;
        }

        _Block_object_dispose(&v73, 8);
        goto LABEL_43;
      }
    }

    PXAssertGetLog();
  }

  v19 = [(PXSidebarDiffableDataSourceController *)self _newSnapshotForRootItem:v51 restoreExpansionState:1];
  v20 = v19;
  if (a8)
  {
    *a8 = [v19 visibleItems];
  }

LABEL_43:

  return v20;
}

void __144__PXSidebarDiffableDataSourceController__applyChangeDetails_forItem_rootItem_toSnapshot_outChangedItemsBeforeChange_outChangedItemsAfterChange___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) rootItems];
  v8 = [v6 objectAtIndexedSubscript:a2];

  v7 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  if (v8 != v7 && ([v8 isEqual:v7] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void __144__PXSidebarDiffableDataSourceController__applyChangeDetails_forItem_rootItem_toSnapshot_outChangedItemsBeforeChange_outChangedItemsAfterChange___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v5 = [*(a1 + 40) objectAtIndex:{objc_msgSend(*(a1 + 32), "indexAfterRevertingChangesFromIndex:", a2)}];
  v4 = [*(a1 + 48) objectAtIndex:a2];
  [*(a1 + 56) _transferStateOfItem:v5 oldSnapshot:*(a1 + 64) toNewItem:v4 newSnapshot:*(a1 + 72)];
  if ((!*(a1 + 80) || [*(a1 + 88) isExpanded:?]) && objc_msgSend(*(a1 + 64), "containsItem:", v5))
  {
    [*(a1 + 96) addObject:v5];
    [*(a1 + 104) addObject:v4];
  }
}

- (void)_transferStateOfItem:(id)a3 oldSnapshot:(id)a4 toNewItem:(id)a5 newSnapshot:(id)a6
{
  v15[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([v10 containsItem:v9])
  {
    if ([v10 isExpanded:v9])
    {
      v15[0] = v11;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [v12 expandItems:v13];
    }

    v14 = [v10 snapshotOfParentItem:v9];
    [v12 replaceChildrenOfParentItem:v11 withSnapshot:v14];
  }
}

- (void)_expandItemIfNeeded:(id)a3 inSnapshot:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PXSidebarDiffableDataSourceController *)self dataController];
  v9 = [v8 isItemExpanded:v6];

  if (v9)
  {
    v11[0] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v7 expandItems:v10];

    [(PXSidebarDiffableDataSourceController *)self _appendChildrenForParentIfNeeded:v6 inSnapshot:v7];
  }
}

- (void)_expandItem:(id)a3 inSnapshot:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(PXSidebarDiffableDataSourceController *)self dataController];
  [v8 setExpanded:1 forItem:v7];

  v10[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v6 expandItems:v9];

  [(PXSidebarDiffableDataSourceController *)self _appendChildrenForParentIfNeeded:v7 inSnapshot:v6];
}

- (BOOL)_appendChildrenForParentIfNeeded:(id)a3 inSnapshot:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 childrenOfParent:v6];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(PXSidebarDiffableDataSourceController *)self dataController];
    v12 = [v11 childrenOfListItem:v6];

    v13 = [v12 count];
    v10 = v13 != 0;
    if (v13)
    {
      [v7 appendItems:v12 intoParentItem:v6];
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v21;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v21 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [(PXSidebarDiffableDataSourceController *)self _expandItemIfNeeded:*(*(&v20 + 1) + 8 * i) inSnapshot:v7, v20];
          }

          v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v16);
      }
    }
  }

  return v10;
}

- (void)appendChildrenForParentIfNeeded:(id)a3
{
  v4 = a3;
  v7 = [(PXSidebarDiffableDataSourceController *)self identifierForSectionContainingItem:v4];
  v5 = [(PXSidebarDiffableDataSourceController *)self dataSource];
  v6 = [v5 snapshotForSection:v7];
  LODWORD(self) = [(PXSidebarDiffableDataSourceController *)self _appendChildrenForParentIfNeeded:v4 inSnapshot:v6];

  if (self)
  {
    [v5 applySnapshot:v6 toSection:v7 animatingDifferences:0];
  }
}

- (void)_configureInitialSnapshotAnimated:(BOOL)a3 expandSubItems:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v24 = *MEMORY[0x1E69E9840];
  v7 = PLSidebarGetLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
  {

    v12 = v10;
  }

  else
  {
    if (os_signpost_enabled(v9))
    {
      *buf = 67109376;
      v21 = v5;
      v22 = 1024;
      v23 = v4;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "_configureInitialSnapshotAnimated_expandSubItems", "animated: %i, expandSubitems: %i", buf, 0xEu);
    }

    v11 = v10;
    if (os_signpost_enabled(v11))
    {
      *buf = 67109376;
      v21 = v5;
      v22 = 1024;
      v23 = v4;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "_configureInitialSnapshotAnimated_expandSubItems.createSnapshot", "animated: %i, expandSubitems: %i", buf, 0xEu);
    }
  }

  [(PXSidebarDiffableDataSourceController *)self dataSource];
  objc_claimAutoreleasedReturnValue();
  v13 = [(PXSidebarDiffableDataSourceController *)self dataController];
  [v13 childrenOfListItem:0];
  objc_claimAutoreleasedReturnValue();

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __90__PXSidebarDiffableDataSourceController__configureInitialSnapshotAnimated_expandSubItems___block_invoke;
  v17 = &unk_1E7736718;
  v18 = self;
  v19 = v4;
  PXMap();
}

id __90__PXSidebarDiffableDataSourceController__configureInitialSnapshotAnimated_expandSubItems___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) _newSnapshotForRootItem:a2 restoreExpansionState:*(a1 + 40)];

  return v2;
}

void __90__PXSidebarDiffableDataSourceController__configureInitialSnapshotAnimated_expandSubItems___block_invoke_16(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v9 = [v5 objectAtIndexedSubscript:a3];
  v7 = *(a1 + 40);
  v8 = [v6 identifier];

  [v7 applySnapshot:v9 toSection:v8 animatingDifferences:*(a1 + 48)];
}

- (id)_newSnapshotForRootItem:(id)a3 restoreExpansionState:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLSidebarGetLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 67109120;
    v32 = v4;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "_newSnapshotForRootItem", "restoreExpansionState: %i", buf, 8u);
  }

  v12 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if ([v6 displayInline])
  {
    v13 = [(PXSidebarDiffableDataSourceController *)self dataController];
    v14 = [v13 childrenOfListItem:v6];

    [v12 appendItems:v14];
    if (v4)
    {
      v24 = v8;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          v19 = 0;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            [(PXSidebarDiffableDataSourceController *)self _expandItemIfNeeded:*(*(&v25 + 1) + 8 * v19++) inSnapshot:v12];
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v17);
      }

      v8 = v24;
    }
  }

  else
  {
    v29 = v6;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [v12 appendItems:v20];

    if (v4)
    {
      [(PXSidebarDiffableDataSourceController *)self _expandItemIfNeeded:v6 inSnapshot:v12];
    }
  }

  v21 = v10;
  v22 = v21;
  if (v11 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v22, OS_SIGNPOST_INTERVAL_END, v8, "_newSnapshotForRootItem", "", buf, 2u);
  }

  return v12;
}

- (id)expandItemsToRevealFirstEditableItemIfNeededAnimated:(BOOL)a3
{
  v22 = a3;
  v41 = *MEMORY[0x1E69E9840];
  v4 = [(PXSidebarDiffableDataSourceController *)self dataSource];
  v24 = [v4 snapshot];

  v5 = [v24 sectionIdentifiers];
  v25 = [v5 firstObject];

  v6 = [(PXSidebarDiffableDataSourceController *)self dataSource];
  v7 = [v6 snapshotForSection:v25];

  v8 = [MEMORY[0x1E695DF70] array];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__86679;
  v38 = __Block_byref_object_dispose__86680;
  v39 = 0;
  v9 = [v7 items];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __94__PXSidebarDiffableDataSourceController_expandItemsToRevealFirstEditableItemIfNeededAnimated___block_invoke;
  v31[3] = &unk_1E77366C8;
  v33 = &v34;
  v23 = v8;
  v32 = v23;
  [v9 enumerateObjectsUsingBlock:v31];

  if (v35[5])
  {
LABEL_2:
    v10 = 0;
LABEL_3:
    v11 = [v7 parentOfChildItem:?];
    if (v11)
    {
      do
      {
        [(PXSidebarDiffableDataSourceController *)self _expandItem:v11 inSnapshot:v7];
        v12 = [v7 parentOfChildItem:v11];

        v11 = v12;
      }

      while (v12);
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = v23;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v40 count:16];
  if (!v14)
  {

    if (!v35[5])
    {
      goto LABEL_22;
    }

    goto LABEL_2;
  }

  v10 = 0;
  v15 = *v28;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v28 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v27 + 1) + 8 * i);
      if ([(PXSidebarDiffableDataSourceController *)self _appendChildrenForParentIfNeeded:v17 inSnapshot:v7])
      {
        v18 = [v7 childrenOfParent:v17];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __94__PXSidebarDiffableDataSourceController_expandItemsToRevealFirstEditableItemIfNeededAnimated___block_invoke_2;
        v26[3] = &unk_1E77366F0;
        v26[4] = &v34;
        [v18 enumerateObjectsUsingBlock:v26];

        if (v35[5])
        {

          if (!v35[5])
          {
            goto LABEL_21;
          }

          v10 = 1;
          goto LABEL_3;
        }

        v10 = 1;
      }
    }

    v14 = [v13 countByEnumeratingWithState:&v27 objects:v40 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

  if (v35[5])
  {
    goto LABEL_3;
  }

LABEL_17:
  if (v10)
  {
LABEL_21:
    v19 = [(PXSidebarDiffableDataSourceController *)self dataSource];
    [v19 applySnapshot:v7 toSection:v25 animatingDifferences:v22];
  }

LABEL_22:
  v20 = v35[5];

  _Block_object_dispose(&v34, 8);

  return v20;
}

void __94__PXSidebarDiffableDataSourceController_expandItemsToRevealFirstEditableItemIfNeededAnimated___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 isReorderable] & 1) != 0 || objc_msgSend(v7, "isDeletable"))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  else if ([v7 isExpandable])
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __94__PXSidebarDiffableDataSourceController_expandItemsToRevealFirstEditableItemIfNeededAnimated___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (([v7 isReorderable] & 1) != 0 || objc_msgSend(v7, "isDeletable"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)expandItemsForIdentifiersIfNeeded:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 firstObject];
  if (v7)
  {
    v8 = [(PXSidebarDiffableDataSourceController *)self dataController];
    v9 = [v8 itemForIdentifier:v7];

    if (v9)
    {
      v25 = v4;
      v27 = v9;
      v10 = [(PXSidebarDiffableDataSourceController *)self identifierForSectionContainingItem:v9];
      v11 = [(PXSidebarDiffableDataSourceController *)self dataSource];
      v26 = v10;
      v12 = [v11 snapshotForSection:v10];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = v6;
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v29;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v29 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v28 + 1) + 8 * i);
            v19 = [(PXSidebarDiffableDataSourceController *)self dataController];
            v20 = [v19 itemForIdentifier:v18];

            if ([v20 isExpandable])
            {
              [(PXSidebarDiffableDataSourceController *)self _expandItem:v20 inSnapshot:v12];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v15);
      }

      v21 = [(PXSidebarDiffableDataSourceController *)self dataSource];
      v22 = [v21 snapshotForSection:v26];
      v23 = [v12 isEqual:v22];

      if ((v23 & 1) == 0)
      {
        v24 = [(PXSidebarDiffableDataSourceController *)self dataSource];
        [v24 applySnapshot:v12 toSection:v26 animatingDifferences:v25];
      }
    }
  }
}

- (id)sectionSnapshotContainingItem:(id)a3
{
  v4 = [(PXSidebarDiffableDataSourceController *)self identifierForSectionContainingItem:a3];
  v5 = [(PXSidebarDiffableDataSourceController *)self dataSource];
  v6 = [v5 snapshotForSection:v4];

  return v6;
}

- (id)identifierForSectionContainingItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXSidebarDiffableDataSourceController.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  v6 = [(PXSidebarDiffableDataSourceController *)self dataSource];
  v7 = [v6 snapshot];

  v8 = [v7 sectionIdentifierForSectionContainingItemIdentifier:v5];
  if (!v8)
  {
    v9 = [v7 sectionIdentifiers];
    v10 = [v5 identifier];
    v11 = [v9 containsObject:v10];

    if (v11)
    {
      v8 = [v5 identifier];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)sectionControllerWillCollapseItem:(id)a3
{
  v4 = a3;
  v5 = [(PXSidebarDiffableDataSourceController *)self dataController];
  [v5 setExpanded:0 forItem:v4];
}

- (void)sectionControllerWillExpandItem:(id)a3
{
  v4 = a3;
  [(PXSidebarDiffableDataSourceController *)self appendChildrenForParentIfNeeded:v4];
  v5 = [(PXSidebarDiffableDataSourceController *)self dataController];
  [v5 setExpanded:1 forItem:v4];
}

- (PXSidebarDiffableDataSourceController)initWithSidebarDataController:(id)a3 dataSource:(id)a4
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PXSidebarDiffableDataSourceController;
  v10 = [(PXSidebarDiffableDataSourceController *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_dataController, a3);
    v12 = [v8 delegate];

    if (v12)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [v8 delegate];
      [v14 handleFailureInMethod:a2 object:v11 file:@"PXSidebarDiffableDataSourceController.m" lineNumber:33 description:{@"Expected nil delegate instead of %@ on data controller %@", v15, v8}];
    }

    [v8 setDelegate:v11];
    objc_storeStrong(&v11->_dataSource, a4);
    v11->_animateDataSourceUpdates = 1;
  }

  return v11;
}

@end