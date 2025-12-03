@interface PUSidebarReorderController
- (BOOL)canReorderItem:(id)item;
- (PUSidebarReorderController)initWithDataSource:(id)source outlineSectionController:(id)controller undoManager:(id)manager;
- (id)targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (void)performReorderWithTransaction:(id)transaction;
@end

@implementation PUSidebarReorderController

- (void)performReorderWithTransaction:(id)transaction
{
  v75[1] = *MEMORY[0x1E69E9840];
  sectionTransactions = [transaction sectionTransactions];
  firstObject = [sectionTransactions firstObject];

  difference = [firstObject difference];
  insertions = [difference insertions];
  firstObject2 = [insertions firstObject];

  object = [firstObject2 object];
  difference2 = [firstObject difference];
  removals = [difference2 removals];
  firstObject3 = [removals firstObject];

  v60 = firstObject3;
  object2 = [firstObject3 object];
  if (object)
  {
    finalSnapshot = [firstObject finalSnapshot];
    v14 = [finalSnapshot parentOfChildItem:object];
    v15 = [finalSnapshot childrenOfParent:v14];
    itemToReorder = [(PUSidebarReorderController *)self itemToReorder];
    if (object != itemToReorder)
    {
      v17 = [finalSnapshot parentOfChildItem:itemToReorder];

      if (v17 == v14)
      {
        v18 = itemToReorder;

        object = v18;
        object2 = object;
      }
    }

    v19 = [v15 indexOfObject:object];
  }

  else
  {
    v14 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  collection = [v14 collection];

  if (!collection)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PUSidebarReorderController_performReorderWithTransaction___block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_27;
  }

  initialSnapshot = [firstObject initialSnapshot];
  v22 = [initialSnapshot parentOfChild:object2];
  v59 = firstObject2;
  v55 = [v22 isEqual:v14];
  if (!v55)
  {
    goto LABEL_16;
  }

  v23 = MEMORY[0x1E69C3950];
  collection2 = [v22 collection];
  if (![v23 canPerformOnCollection:collection2])
  {
    v25 = MEMORY[0x1E69C3948];
    collection3 = [v22 collection];
    LODWORD(v25) = [v25 canPerformOnCollection:collection3];

    if (v25)
    {
      goto LABEL_13;
    }

LABEL_16:
    v57 = 0;
    goto LABEL_17;
  }

LABEL_13:
  initialSnapshot2 = [firstObject initialSnapshot];
  v28 = [initialSnapshot2 childrenOfParent:v22];

  if (v19 > [v28 indexOfObject:object2])
  {
    ++v19;
  }

  v57 = 1;
LABEL_17:

  sidebarOutlineSectionController = [(PUSidebarReorderController *)self sidebarOutlineSectionController];
  dataController = [sidebarOutlineSectionController dataController];
  v31 = [dataController infoForItem:v14 childIndex:v19];

  collection4 = [v31 collection];
  if (collection4)
  {
    objc_opt_class();
    firstObject2 = v59;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_19;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v51 = objc_opt_class();
    v47 = NSStringFromClass(v51);
    px_descriptionForAssertionMessage = [collection4 px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSidebarReorderController.m" lineNumber:149 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"childInfo.collection", v47, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUSidebarReorderController.m" lineNumber:149 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"childInfo.collection", v47}];
    firstObject2 = v59;
  }

LABEL_19:
  collection5 = [object collection];
  if (!collection5)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSidebarReorderController.m" lineNumber:150 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"insertedItem.collection", v50}];
LABEL_33:

    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = objc_opt_class();
    v50 = NSStringFromClass(v53);
    px_descriptionForAssertionMessage2 = [collection5 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUSidebarReorderController.m" lineNumber:150 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"insertedItem.collection", v50, px_descriptionForAssertionMessage2}];

    goto LABEL_33;
  }

LABEL_21:
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__PUSidebarReorderController_performReorderWithTransaction___block_invoke_2;
  aBlock[3] = &unk_1E7B80280;
  aBlock[4] = self;
  v34 = _Block_copy(aBlock);
  if (v57)
  {
    if ([MEMORY[0x1E69C3948] canPerformOnCollection:collection4])
    {
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __60__PUSidebarReorderController_performReorderWithTransaction___block_invoke_208;
      v67[3] = &unk_1E7B7DCB0;
      v68 = collection4;
      v69 = collection5;
      v70 = v31;
      selfCopy = self;
      v72 = v34;
      dispatch_async(MEMORY[0x1E69E96A0], v67);

      v35 = v68;
    }

    else
    {
      v37 = objc_alloc(MEMORY[0x1E69C3950]);
      v75[0] = collection5;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
      [v31 childObject];
      v58 = v14;
      v39 = firstObject;
      selfCopy2 = self;
      v42 = v41 = v31;
      v35 = [v37 initWithCollectionList:collection4 movedObjects:v38 targetObject:v42];

      v31 = v41;
      v43 = selfCopy2;
      firstObject = v39;
      v14 = v58;
      undoManager = [(PUSidebarReorderController *)v43 undoManager];
      [v35 executeWithUndoManager:undoManager completionHandler:v34];

      firstObject2 = v59;
    }
  }

  else
  {
    photoLibrary = [collection4 photoLibrary];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __60__PUSidebarReorderController_performReorderWithTransaction___block_invoke_2_210;
    v62[3] = &unk_1E7B7DCD8;
    v63 = collection4;
    v64 = v31;
    v66 = v55;
    v65 = collection5;
    [photoLibrary performChanges:v62 completionHandler:v34];

    v35 = v63;
  }

LABEL_27:
}

void __60__PUSidebarReorderController_performReorderWithTransaction___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) sidebarOutlineSectionController];
  [v1 reloadFromDataControllerAnimated:{objc_msgSend(v1, "animateDataSourceUpdates")}];
}

void __60__PUSidebarReorderController_performReorderWithTransaction___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_ERROR, "Item reordering failed with error %@", &v8, 0xCu);
    }

    v7 = [*(a1 + 32) sidebarOutlineSectionController];
    [v7 reloadFromDataControllerAnimated:{objc_msgSend(v7, "animateDataSourceUpdates")}];
  }
}

void __60__PUSidebarReorderController_performReorderWithTransaction___block_invoke_208(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E69C3948]);
  v3 = *(a1 + 32);
  v8[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [*(a1 + 48) childObject];
  v6 = [v2 initWithCollectionList:v3 movedObjects:v4 targetObject:v5];

  v7 = [*(a1 + 56) undoManager];
  [v6 executeWithUndoManager:v7 completionHandler:*(a1 + 64)];
}

void __60__PUSidebarReorderController_performReorderWithTransaction___block_invoke_2_210(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6978768];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) fetchResult];
  v5 = [v2 changeRequestForCollectionList:v3 childCollections:v4];

  if (*(a1 + 56) == 1)
  {
    v12[0] = *(a1 + 48);
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    [v5 removeChildCollections:v6];
  }

  v7 = [*(a1 + 40) childIndexInFetchResult];
  if (v7 != *MEMORY[0x1E69C4158])
  {
    v8 = v7;
    v11 = *(a1 + 48);
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    v10 = [MEMORY[0x1E696AC90] indexSetWithIndex:v8];
    [v5 insertChildCollections:v9 atIndexes:v10];
  }
}

- (id)targetIndexPathForMoveFromItemAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  itemToReorder = [(PUSidebarReorderController *)self itemToReorder];
  if (!itemToReorder)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_FAULT, "Expected to have an item to move", buf, 2u);
    }
  }

  dataSource = [(PUSidebarReorderController *)self dataSource];
  v11 = [dataSource itemIdentifierForIndexPath:indexPathCopy];
  if (![itemToReorder isReorderable] || (objc_msgSend(v11, "isReorderable") & 1) == 0)
  {
    v18 = pathCopy;
    goto LABEL_37;
  }

  sidebarOutlineSectionController = [(PUSidebarReorderController *)self sidebarOutlineSectionController];
  v13 = [sidebarOutlineSectionController sectionSnapshotContainingItem:itemToReorder];

  sidebarOutlineSectionController2 = [(PUSidebarReorderController *)self sidebarOutlineSectionController];
  v15 = [sidebarOutlineSectionController2 sectionSnapshotContainingItem:v11];

  if ([v13 isEqual:v15])
  {
    v37 = [v13 parentOfChildItem:itemToReorder];
    collection = [v37 collection];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = collection;
    }

    else
    {
      v17 = 0;
    }

    v36 = v17;
    v19 = [v17 canPerformEditOperation:5];
    v35 = [v13 parentOfChildItem:v11];
    collection2 = [v35 collection];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v21 = collection2;
    }

    else
    {
      v21 = 0;
    }

    v22 = v19 & [v21 canPerformEditOperation:5];
    v24 = v35;
    v23 = v36;
    v34 = v21;
    if (v22 & 1) != 0 || [v37 isEqual:v35] && ((objc_msgSend(MEMORY[0x1E69C3950], "canPerformOnCollection:", v36) & 1) != 0 || (objc_msgSend(MEMORY[0x1E69C3948], "canPerformOnCollection:", v36)))
    {
      v25 = v35;
      if (!v25)
      {
LABEL_35:
        indexPathCopy = indexPathCopy;

        v18 = indexPathCopy;
        goto LABEL_36;
      }

      v26 = [v13 levelOfItem:v25];
      if (v26 <= [v13 levelOfItem:v37])
      {
LABEL_34:
        v24 = v35;
        v23 = v36;
        goto LABEL_35;
      }

      v33 = v15;
      v27 = v25;
      while (1)
      {
        v28 = v27;
        v29 = [v27 isEqual:itemToReorder];
        v27 = [v13 parentOfChildItem:v27];

        if ((v29 & 1) != 0 || !v27)
        {
          break;
        }

        v30 = [v13 levelOfItem:v25];
        if (v30 <= [v13 levelOfItem:v37])
        {
          goto LABEL_32;
        }
      }

      if (v29)
      {
        goto LABEL_30;
      }

LABEL_32:
      v25 = v27;
    }

    else
    {
      v33 = v15;
      v27 = v35;
LABEL_30:
      v31 = pathCopy;

      v25 = v27;
      indexPathCopy = v31;
    }

    v15 = v33;
    goto LABEL_34;
  }

  v18 = pathCopy;
LABEL_36:

LABEL_37:

  return v18;
}

- (BOOL)canReorderItem:(id)item
{
  itemCopy = item;
  [(PUSidebarReorderController *)self setItemToReorder:itemCopy];
  LOBYTE(self) = [itemCopy isReorderable];

  return self;
}

- (PUSidebarReorderController)initWithDataSource:(id)source outlineSectionController:(id)controller undoManager:(id)manager
{
  sourceCopy = source;
  controllerCopy = controller;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PUSidebarReorderController;
  v12 = [(PUSidebarReorderController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, source);
    objc_storeStrong(&v13->_sidebarOutlineSectionController, controller);
    objc_storeStrong(&v13->_undoManager, manager);
  }

  return v13;
}

@end