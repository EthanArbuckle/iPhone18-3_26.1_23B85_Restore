@interface PUSidebarReorderController
- (BOOL)canReorderItem:(id)a3;
- (PUSidebarReorderController)initWithDataSource:(id)a3 outlineSectionController:(id)a4 undoManager:(id)a5;
- (id)targetIndexPathForMoveFromItemAtIndexPath:(id)a3 toProposedIndexPath:(id)a4;
- (void)performReorderWithTransaction:(id)a3;
@end

@implementation PUSidebarReorderController

- (void)performReorderWithTransaction:(id)a3
{
  v75[1] = *MEMORY[0x1E69E9840];
  v4 = [a3 sectionTransactions];
  v5 = [v4 firstObject];

  v6 = [v5 difference];
  v7 = [v6 insertions];
  v8 = [v7 firstObject];

  v9 = [v8 object];
  v10 = [v5 difference];
  v11 = [v10 removals];
  v12 = [v11 firstObject];

  v60 = v12;
  v61 = [v12 object];
  if (v9)
  {
    v13 = [v5 finalSnapshot];
    v14 = [v13 parentOfChildItem:v9];
    v15 = [v13 childrenOfParent:v14];
    v16 = [(PUSidebarReorderController *)self itemToReorder];
    if (v9 != v16)
    {
      v17 = [v13 parentOfChildItem:v16];

      if (v17 == v14)
      {
        v18 = v16;

        v9 = v18;
        v61 = v9;
      }
    }

    v19 = [v15 indexOfObject:v9];
  }

  else
  {
    v14 = 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = [v14 collection];

  if (!v20)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__PUSidebarReorderController_performReorderWithTransaction___block_invoke;
    block[3] = &unk_1E7B80DD0;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    goto LABEL_27;
  }

  v21 = [v5 initialSnapshot];
  v22 = [v21 parentOfChild:v61];
  v59 = v8;
  v55 = [v22 isEqual:v14];
  if (!v55)
  {
    goto LABEL_16;
  }

  v23 = MEMORY[0x1E69C3950];
  v24 = [v22 collection];
  if (![v23 canPerformOnCollection:v24])
  {
    v25 = MEMORY[0x1E69C3948];
    v26 = [v22 collection];
    LODWORD(v25) = [v25 canPerformOnCollection:v26];

    if (v25)
    {
      goto LABEL_13;
    }

LABEL_16:
    v57 = 0;
    goto LABEL_17;
  }

LABEL_13:
  v27 = [v5 initialSnapshot];
  v28 = [v27 childrenOfParent:v22];

  if (v19 > [v28 indexOfObject:v61])
  {
    ++v19;
  }

  v57 = 1;
LABEL_17:

  v29 = [(PUSidebarReorderController *)self sidebarOutlineSectionController];
  v30 = [v29 dataController];
  v31 = [v30 infoForItem:v14 childIndex:v19];

  v32 = [v31 collection];
  if (v32)
  {
    objc_opt_class();
    v8 = v59;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_19;
    }

    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    v51 = objc_opt_class();
    v47 = NSStringFromClass(v51);
    v52 = [v32 px_descriptionForAssertionMessage];
    [v45 handleFailureInMethod:a2 object:self file:@"PUSidebarReorderController.m" lineNumber:149 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"childInfo.collection", v47, v52}];
  }

  else
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    [v45 handleFailureInMethod:a2 object:self file:@"PUSidebarReorderController.m" lineNumber:149 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"childInfo.collection", v47}];
    v8 = v59;
  }

LABEL_19:
  v33 = [v9 collection];
  if (!v33)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    [v48 handleFailureInMethod:a2 object:self file:@"PUSidebarReorderController.m" lineNumber:150 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"insertedItem.collection", v50}];
LABEL_33:

    goto LABEL_21;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    v53 = objc_opt_class();
    v50 = NSStringFromClass(v53);
    v54 = [v33 px_descriptionForAssertionMessage];
    [v48 handleFailureInMethod:a2 object:self file:@"PUSidebarReorderController.m" lineNumber:150 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"insertedItem.collection", v50, v54}];

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
    if ([MEMORY[0x1E69C3948] canPerformOnCollection:v32])
    {
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __60__PUSidebarReorderController_performReorderWithTransaction___block_invoke_208;
      v67[3] = &unk_1E7B7DCB0;
      v68 = v32;
      v69 = v33;
      v70 = v31;
      v71 = self;
      v72 = v34;
      dispatch_async(MEMORY[0x1E69E96A0], v67);

      v35 = v68;
    }

    else
    {
      v37 = objc_alloc(MEMORY[0x1E69C3950]);
      v75[0] = v33;
      v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:1];
      [v31 childObject];
      v58 = v14;
      v39 = v5;
      v40 = self;
      v42 = v41 = v31;
      v35 = [v37 initWithCollectionList:v32 movedObjects:v38 targetObject:v42];

      v31 = v41;
      v43 = v40;
      v5 = v39;
      v14 = v58;
      v44 = [(PUSidebarReorderController *)v43 undoManager];
      [v35 executeWithUndoManager:v44 completionHandler:v34];

      v8 = v59;
    }
  }

  else
  {
    v36 = [v32 photoLibrary];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __60__PUSidebarReorderController_performReorderWithTransaction___block_invoke_2_210;
    v62[3] = &unk_1E7B7DCD8;
    v63 = v32;
    v64 = v31;
    v66 = v55;
    v65 = v33;
    [v36 performChanges:v62 completionHandler:v34];

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

- (id)targetIndexPathForMoveFromItemAtIndexPath:(id)a3 toProposedIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUSidebarReorderController *)self itemToReorder];
  if (!v8)
  {
    v9 = PXAssertGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_FAULT, "Expected to have an item to move", buf, 2u);
    }
  }

  v10 = [(PUSidebarReorderController *)self dataSource];
  v11 = [v10 itemIdentifierForIndexPath:v7];
  if (![v8 isReorderable] || (objc_msgSend(v11, "isReorderable") & 1) == 0)
  {
    v18 = v6;
    goto LABEL_37;
  }

  v12 = [(PUSidebarReorderController *)self sidebarOutlineSectionController];
  v13 = [v12 sectionSnapshotContainingItem:v8];

  v14 = [(PUSidebarReorderController *)self sidebarOutlineSectionController];
  v15 = [v14 sectionSnapshotContainingItem:v11];

  if ([v13 isEqual:v15])
  {
    v37 = [v13 parentOfChildItem:v8];
    v16 = [v37 collection];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v36 = v17;
    v19 = [v17 canPerformEditOperation:5];
    v35 = [v13 parentOfChildItem:v11];
    v20 = [v35 collection];
    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v21 = v20;
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
        v7 = v7;

        v18 = v7;
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
        v29 = [v27 isEqual:v8];
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
      v31 = v6;

      v25 = v27;
      v7 = v31;
    }

    v15 = v33;
    goto LABEL_34;
  }

  v18 = v6;
LABEL_36:

LABEL_37:

  return v18;
}

- (BOOL)canReorderItem:(id)a3
{
  v4 = a3;
  [(PUSidebarReorderController *)self setItemToReorder:v4];
  LOBYTE(self) = [v4 isReorderable];

  return self;
}

- (PUSidebarReorderController)initWithDataSource:(id)a3 outlineSectionController:(id)a4 undoManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PUSidebarReorderController;
  v12 = [(PUSidebarReorderController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_dataSource, a3);
    objc_storeStrong(&v13->_sidebarOutlineSectionController, a4);
    objc_storeStrong(&v13->_undoManager, a5);
  }

  return v13;
}

@end