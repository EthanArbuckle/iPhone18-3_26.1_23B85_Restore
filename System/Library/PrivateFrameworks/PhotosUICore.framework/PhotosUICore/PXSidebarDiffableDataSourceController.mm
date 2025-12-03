@interface PXSidebarDiffableDataSourceController
- (BOOL)_appendChildrenForParentIfNeeded:(id)needed inSnapshot:(id)snapshot;
- (PXSidebarDiffableDataSourceController)initWithSidebarDataController:(id)controller dataSource:(id)source;
- (PXSidebarDiffableDataSourceControllerDelegate)delegate;
- (id)_applyChangeDetails:(id)details forItem:(id)item rootItem:(id)rootItem toSnapshot:(id)snapshot outChangedItemsBeforeChange:(id *)change outChangedItemsAfterChange:(id *)afterChange;
- (id)_newSnapshotForRootItem:(id)item restoreExpansionState:(BOOL)state;
- (id)expandItemsToRevealFirstEditableItemIfNeededAnimated:(BOOL)animated;
- (id)identifierForSectionContainingItem:(id)item;
- (id)sectionSnapshotContainingItem:(id)item;
- (void)_configureInitialSnapshotAnimated:(BOOL)animated expandSubItems:(BOOL)items;
- (void)_expandItem:(id)item inSnapshot:(id)snapshot;
- (void)_expandItemIfNeeded:(id)needed inSnapshot:(id)snapshot;
- (void)_transferStateOfItem:(id)item oldSnapshot:(id)snapshot toNewItem:(id)newItem newSnapshot:(id)newSnapshot;
- (void)appendChildrenForParentIfNeeded:(id)needed;
- (void)expandItemsForIdentifiersIfNeeded:(id)needed animated:(BOOL)animated;
- (void)sectionControllerWillCollapseItem:(id)item;
- (void)sectionControllerWillExpandItem:(id)item;
- (void)sidebarDataSourceController:(id)controller didChangeChildrenOfItem:(id)item changeDetails:(id)details;
@end

@implementation PXSidebarDiffableDataSourceController

- (PXSidebarDiffableDataSourceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sidebarDataSourceController:(id)controller didChangeChildrenOfItem:(id)item changeDetails:(id)details
{
  v57 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  itemCopy = item;
  detailsCopy = details;
  v11 = PLSidebarGetLog();
  v12 = os_signpost_id_generate(v11);
  v13 = v11;
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    identifier = [itemCopy identifier];
    *buf = 138412290;
    v56 = identifier;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "sidebarDataSourceController_didChangeChildrenOfItem_changeDetails", "identifier: %@", buf, 0xCu);
  }

  if (itemCopy)
  {
    spid = v12;
    v16 = [(PXSidebarDiffableDataSourceController *)self identifierForSectionContainingItem:itemCopy];
    dataController = [(PXSidebarDiffableDataSourceController *)self dataController];
    v18 = [dataController itemForIdentifier:v16];

    if (!v18)
    {
      PXAssertGetLog();
    }

    v39 = controllerCopy;
    dataSource = [(PXSidebarDiffableDataSourceController *)self dataSource];
    v20 = [dataSource snapshotForSection:v16];
    v53 = 0;
    v54 = 0;
    v38 = itemCopy;
    [(PXSidebarDiffableDataSourceController *)self _applyChangeDetails:detailsCopy forItem:itemCopy rootItem:v18 toSnapshot:v20 outChangedItemsBeforeChange:&v54 outChangedItemsAfterChange:&v53];
    v22 = v21 = detailsCopy;
    v37 = v54;
    v36 = v53;
    insertedIndexes = [v21 insertedIndexes];
    v40 = v21;
    if ([insertedIndexes count])
    {
      v24 = 1;
    }

    else
    {
      removedIndexes = [v21 removedIndexes];
      v24 = [removedIndexes count] != 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __107__PXSidebarDiffableDataSourceController_sidebarDataSourceController_didChangeChildrenOfItem_changeDetails___block_invoke_21;
    aBlock[3] = &unk_1E77367E0;
    v28 = v20;
    v45 = v28;
    v29 = v22;
    v46 = v29;
    selfCopy = self;
    v52 = v24;
    v30 = dataSource;
    v48 = v30;
    v49 = v16;
    v50 = v14;
    v51 = spid;
    v31 = _Block_copy(aBlock);
    delegate = [(PXSidebarDiffableDataSourceController *)self delegate];

    if (delegate)
    {
      delegate2 = [(PXSidebarDiffableDataSourceController *)self delegate];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __107__PXSidebarDiffableDataSourceController_sidebarDataSourceController_didChangeChildrenOfItem_changeDetails___block_invoke_23;
      v42[3] = &unk_1E774C250;
      v43 = v31;
      selfCopy2 = self;
      v35 = v36;
      [delegate2 sidebarDiffableDataSourceController:selfCopy2 willApplySnapshotWithChangedItemsAfterChange:v36 applyBlock:v42];

      itemCopy = v38;
      controllerCopy = v39;
    }

    else
    {
      v31[2](v31);
      itemCopy = v38;
      controllerCopy = v39;
      v35 = v36;
    }

    detailsCopy = v40;
  }

  else
  {
    if (![detailsCopy needsReload])
    {
      [(PXSidebarDiffableDataSourceController *)self dataSource];
      [objc_claimAutoreleasedReturnValue() snapshot];
      objc_claimAutoreleasedReturnValue();
      [detailsCopy removedItems];
      objc_claimAutoreleasedReturnValue();
      PXMap();
    }

    [(PXSidebarDiffableDataSourceController *)self reloadFromDataControllerAnimated:0];
    delegate3 = [(PXSidebarDiffableDataSourceController *)self delegate];
    [delegate3 sidebarDiffableDataSourceController:self didReloadAnimated:0];

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

- (id)_applyChangeDetails:(id)details forItem:(id)item rootItem:(id)rootItem toSnapshot:(id)snapshot outChangedItemsBeforeChange:(id *)change outChangedItemsAfterChange:(id *)afterChange
{
  v78 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  itemCopy = item;
  rootItemCopy = rootItem;
  snapshotCopy = snapshot;
  v17 = snapshotCopy;
  if (itemCopy)
  {
    if (([snapshotCopy containsItem:itemCopy] & 1) != 0 && !objc_msgSend(detailsCopy, "needsReload"))
    {
      afterChangeCopy2 = afterChange;
      changeCopy2 = change;
      v18 = [v17 snapshotOfParentItem:itemCopy];
      goto LABEL_9;
    }
  }

  else if (([detailsCopy needsReload] & 1) == 0)
  {
    afterChangeCopy2 = afterChange;
    changeCopy2 = change;
    v18 = v17;
LABEL_9:
    v21 = v18;
    arrayChangeDetails = [detailsCopy arrayChangeDetails];
    insertedIndexes = [arrayChangeDetails insertedIndexes];
    changedIndexes = [arrayChangeDetails changedIndexes];
    dataController = [(PXSidebarDiffableDataSourceController *)self dataController];
    v49 = [dataController childrenOfListItem:itemCopy];

    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    if ([arrayChangeDetails hasAnyInsertionsRemovalsOrMoves])
    {
      v23 = 1;
    }

    else
    {
      v24 = [v49 count];
      rootItems = [v21 rootItems];
      v23 = v24 != [rootItems count];
    }

    v76 = v23;
    if ((v74[3] & 1) != 0 || ![changedIndexes count])
    {
      goto LABEL_19;
    }

    lastIndex = [changedIndexes lastIndex];
    rootItems2 = [v21 rootItems];
    if (lastIndex >= [rootItems2 count])
    {
    }

    else
    {
      lastIndex2 = [changedIndexes lastIndex];
      LOBYTE(lastIndex2) = lastIndex2 < [v49 count];

      if (lastIndex2)
      {
        changedIndexes2 = [arrayChangeDetails changedIndexes];
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = __144__PXSidebarDiffableDataSourceController__applyChangeDetails_forItem_rootItem_toSnapshot_outChangedItemsBeforeChange_outChangedItemsAfterChange___block_invoke;
        v69[3] = &unk_1E773BE98;
        v70 = v21;
        v71 = v49;
        v72 = &v73;
        [changedIndexes2 enumerateIndexesUsingBlock:v69];

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

          if ([insertedIndexes count])
          {
            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 3221225472;
            v63[2] = __144__PXSidebarDiffableDataSourceController__applyChangeDetails_forItem_rootItem_toSnapshot_outChangedItemsBeforeChange_outChangedItemsAfterChange___block_invoke_2;
            v63[3] = &unk_1E7736768;
            v63[4] = self;
            v30 = v30;
            v64 = v30;
            [v31 enumerateObjectsAtIndexes:insertedIndexes options:0 usingBlock:v63];
          }
        }

        else
        {
          v30 = [v21 copy];
        }

        array = [MEMORY[0x1E695DF70] array];
        array2 = [MEMORY[0x1E695DF70] array];
        changedItems = [detailsCopy changedItems];
        v37 = [changedItems count];

        if (v37)
        {
          previousDataSection = [detailsCopy previousDataSection];
          changedIndexes3 = [arrayChangeDetails changedIndexes];
          if ([insertedIndexes count])
          {
            v40 = [changedIndexes3 mutableCopy];
            [v40 removeIndexes:insertedIndexes];
          }

          else
          {
            v40 = changedIndexes3;
          }

          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = __144__PXSidebarDiffableDataSourceController__applyChangeDetails_forItem_rootItem_toSnapshot_outChangedItemsBeforeChange_outChangedItemsAfterChange___block_invoke_3;
          v52[3] = &unk_1E7736790;
          v53 = arrayChangeDetails;
          v41 = previousDataSection;
          v54 = v41;
          v55 = v49;
          selfCopy = self;
          v57 = v21;
          v58 = v30;
          v59 = itemCopy;
          v60 = v17;
          v61 = array;
          v62 = array2;
          [v40 enumerateIndexesUsingBlock:v52];
        }

        if (changeCopy2)
        {
          *changeCopy2 = [array copy];
        }

        if (v44)
        {
          *v44 = [array2 copy];
        }

        if (itemCopy)
        {
          v20 = [v17 copy];
          [v20 replaceChildrenOfParentItem:itemCopy withSnapshot:v30];
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

  v19 = [(PXSidebarDiffableDataSourceController *)self _newSnapshotForRootItem:rootItemCopy restoreExpansionState:1];
  v20 = v19;
  if (afterChange)
  {
    *afterChange = [v19 visibleItems];
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

- (void)_transferStateOfItem:(id)item oldSnapshot:(id)snapshot toNewItem:(id)newItem newSnapshot:(id)newSnapshot
{
  v15[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  snapshotCopy = snapshot;
  newItemCopy = newItem;
  newSnapshotCopy = newSnapshot;
  if ([snapshotCopy containsItem:itemCopy])
  {
    if ([snapshotCopy isExpanded:itemCopy])
    {
      v15[0] = newItemCopy;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [newSnapshotCopy expandItems:v13];
    }

    v14 = [snapshotCopy snapshotOfParentItem:itemCopy];
    [newSnapshotCopy replaceChildrenOfParentItem:newItemCopy withSnapshot:v14];
  }
}

- (void)_expandItemIfNeeded:(id)needed inSnapshot:(id)snapshot
{
  v11[1] = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  snapshotCopy = snapshot;
  dataController = [(PXSidebarDiffableDataSourceController *)self dataController];
  v9 = [dataController isItemExpanded:neededCopy];

  if (v9)
  {
    v11[0] = neededCopy;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [snapshotCopy expandItems:v10];

    [(PXSidebarDiffableDataSourceController *)self _appendChildrenForParentIfNeeded:neededCopy inSnapshot:snapshotCopy];
  }
}

- (void)_expandItem:(id)item inSnapshot:(id)snapshot
{
  v10[1] = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  itemCopy = item;
  dataController = [(PXSidebarDiffableDataSourceController *)self dataController];
  [dataController setExpanded:1 forItem:itemCopy];

  v10[0] = itemCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [snapshotCopy expandItems:v9];

  [(PXSidebarDiffableDataSourceController *)self _appendChildrenForParentIfNeeded:itemCopy inSnapshot:snapshotCopy];
}

- (BOOL)_appendChildrenForParentIfNeeded:(id)needed inSnapshot:(id)snapshot
{
  v25 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  snapshotCopy = snapshot;
  v8 = [snapshotCopy childrenOfParent:neededCopy];
  v9 = [v8 count];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    dataController = [(PXSidebarDiffableDataSourceController *)self dataController];
    v12 = [dataController childrenOfListItem:neededCopy];

    v13 = [v12 count];
    v10 = v13 != 0;
    if (v13)
    {
      [snapshotCopy appendItems:v12 intoParentItem:neededCopy];
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

            [(PXSidebarDiffableDataSourceController *)self _expandItemIfNeeded:*(*(&v20 + 1) + 8 * i) inSnapshot:snapshotCopy, v20];
          }

          v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v16);
      }
    }
  }

  return v10;
}

- (void)appendChildrenForParentIfNeeded:(id)needed
{
  neededCopy = needed;
  v7 = [(PXSidebarDiffableDataSourceController *)self identifierForSectionContainingItem:neededCopy];
  dataSource = [(PXSidebarDiffableDataSourceController *)self dataSource];
  v6 = [dataSource snapshotForSection:v7];
  LODWORD(self) = [(PXSidebarDiffableDataSourceController *)self _appendChildrenForParentIfNeeded:neededCopy inSnapshot:v6];

  if (self)
  {
    [dataSource applySnapshot:v6 toSection:v7 animatingDifferences:0];
  }
}

- (void)_configureInitialSnapshotAnimated:(BOOL)animated expandSubItems:(BOOL)items
{
  itemsCopy = items;
  animatedCopy = animated;
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
      v21 = animatedCopy;
      v22 = 1024;
      v23 = itemsCopy;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "_configureInitialSnapshotAnimated_expandSubItems", "animated: %i, expandSubitems: %i", buf, 0xEu);
    }

    v11 = v10;
    if (os_signpost_enabled(v11))
    {
      *buf = 67109376;
      v21 = animatedCopy;
      v22 = 1024;
      v23 = itemsCopy;
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "_configureInitialSnapshotAnimated_expandSubItems.createSnapshot", "animated: %i, expandSubitems: %i", buf, 0xEu);
    }
  }

  [(PXSidebarDiffableDataSourceController *)self dataSource];
  objc_claimAutoreleasedReturnValue();
  dataController = [(PXSidebarDiffableDataSourceController *)self dataController];
  [dataController childrenOfListItem:0];
  objc_claimAutoreleasedReturnValue();

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __90__PXSidebarDiffableDataSourceController__configureInitialSnapshotAnimated_expandSubItems___block_invoke;
  v17 = &unk_1E7736718;
  selfCopy = self;
  v19 = itemsCopy;
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

- (id)_newSnapshotForRootItem:(id)item restoreExpansionState:(BOOL)state
{
  stateCopy = state;
  v33 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v7 = PLSidebarGetLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  v11 = v8 - 1;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 67109120;
    v32 = stateCopy;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "_newSnapshotForRootItem", "restoreExpansionState: %i", buf, 8u);
  }

  v12 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  if ([itemCopy displayInline])
  {
    dataController = [(PXSidebarDiffableDataSourceController *)self dataController];
    v14 = [dataController childrenOfListItem:itemCopy];

    [v12 appendItems:v14];
    if (stateCopy)
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
    v29 = itemCopy;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
    [v12 appendItems:v20];

    if (stateCopy)
    {
      [(PXSidebarDiffableDataSourceController *)self _expandItemIfNeeded:itemCopy inSnapshot:v12];
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

- (id)expandItemsToRevealFirstEditableItemIfNeededAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v41 = *MEMORY[0x1E69E9840];
  dataSource = [(PXSidebarDiffableDataSourceController *)self dataSource];
  snapshot = [dataSource snapshot];

  sectionIdentifiers = [snapshot sectionIdentifiers];
  firstObject = [sectionIdentifiers firstObject];

  dataSource2 = [(PXSidebarDiffableDataSourceController *)self dataSource];
  v7 = [dataSource2 snapshotForSection:firstObject];

  array = [MEMORY[0x1E695DF70] array];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__86679;
  v38 = __Block_byref_object_dispose__86680;
  v39 = 0;
  items = [v7 items];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __94__PXSidebarDiffableDataSourceController_expandItemsToRevealFirstEditableItemIfNeededAnimated___block_invoke;
  v31[3] = &unk_1E77366C8;
  v33 = &v34;
  v23 = array;
  v32 = v23;
  [items enumerateObjectsUsingBlock:v31];

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
    dataSource3 = [(PXSidebarDiffableDataSourceController *)self dataSource];
    [dataSource3 applySnapshot:v7 toSection:firstObject animatingDifferences:animatedCopy];
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

- (void)expandItemsForIdentifiersIfNeeded:(id)needed animated:(BOOL)animated
{
  animatedCopy = animated;
  v33 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  firstObject = [neededCopy firstObject];
  if (firstObject)
  {
    dataController = [(PXSidebarDiffableDataSourceController *)self dataController];
    v9 = [dataController itemForIdentifier:firstObject];

    if (v9)
    {
      v25 = animatedCopy;
      v27 = v9;
      v10 = [(PXSidebarDiffableDataSourceController *)self identifierForSectionContainingItem:v9];
      dataSource = [(PXSidebarDiffableDataSourceController *)self dataSource];
      v26 = v10;
      v12 = [dataSource snapshotForSection:v10];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v13 = neededCopy;
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
            dataController2 = [(PXSidebarDiffableDataSourceController *)self dataController];
            v20 = [dataController2 itemForIdentifier:v18];

            if ([v20 isExpandable])
            {
              [(PXSidebarDiffableDataSourceController *)self _expandItem:v20 inSnapshot:v12];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v15);
      }

      dataSource2 = [(PXSidebarDiffableDataSourceController *)self dataSource];
      v22 = [dataSource2 snapshotForSection:v26];
      v23 = [v12 isEqual:v22];

      if ((v23 & 1) == 0)
      {
        dataSource3 = [(PXSidebarDiffableDataSourceController *)self dataSource];
        [dataSource3 applySnapshot:v12 toSection:v26 animatingDifferences:v25];
      }
    }
  }
}

- (id)sectionSnapshotContainingItem:(id)item
{
  v4 = [(PXSidebarDiffableDataSourceController *)self identifierForSectionContainingItem:item];
  dataSource = [(PXSidebarDiffableDataSourceController *)self dataSource];
  v6 = [dataSource snapshotForSection:v4];

  return v6;
}

- (id)identifierForSectionContainingItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSidebarDiffableDataSourceController.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"item"}];
  }

  dataSource = [(PXSidebarDiffableDataSourceController *)self dataSource];
  snapshot = [dataSource snapshot];

  identifier2 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:itemCopy];
  if (!identifier2)
  {
    sectionIdentifiers = [snapshot sectionIdentifiers];
    identifier = [itemCopy identifier];
    v11 = [sectionIdentifiers containsObject:identifier];

    if (v11)
    {
      identifier2 = [itemCopy identifier];
    }

    else
    {
      identifier2 = 0;
    }
  }

  return identifier2;
}

- (void)sectionControllerWillCollapseItem:(id)item
{
  itemCopy = item;
  dataController = [(PXSidebarDiffableDataSourceController *)self dataController];
  [dataController setExpanded:0 forItem:itemCopy];
}

- (void)sectionControllerWillExpandItem:(id)item
{
  itemCopy = item;
  [(PXSidebarDiffableDataSourceController *)self appendChildrenForParentIfNeeded:itemCopy];
  dataController = [(PXSidebarDiffableDataSourceController *)self dataController];
  [dataController setExpanded:1 forItem:itemCopy];
}

- (PXSidebarDiffableDataSourceController)initWithSidebarDataController:(id)controller dataSource:(id)source
{
  controllerCopy = controller;
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = PXSidebarDiffableDataSourceController;
  v10 = [(PXSidebarDiffableDataSourceController *)&v16 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_dataController, controller);
    delegate = [controllerCopy delegate];

    if (delegate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      delegate2 = [controllerCopy delegate];
      [currentHandler handleFailureInMethod:a2 object:v11 file:@"PXSidebarDiffableDataSourceController.m" lineNumber:33 description:{@"Expected nil delegate instead of %@ on data controller %@", delegate2, controllerCopy}];
    }

    [controllerCopy setDelegate:v11];
    objc_storeStrong(&v11->_dataSource, source);
    v11->_animateDataSourceUpdates = 1;
  }

  return v11;
}

@end