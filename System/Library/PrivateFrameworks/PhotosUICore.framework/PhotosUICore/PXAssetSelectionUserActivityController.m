@interface PXAssetSelectionUserActivityController
- (PXAssetSelectionUserActivityController)init;
- (PXAssetSelectionUserActivityController)initWithSelectionManager:(id)a3;
- (PXSelectionSnapshot)selectionSnapshot;
- (void)_updateActivity;
- (void)dealloc;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setActive:(BOOL)a3;
- (void)setHasSelection:(BOOL)a3;
- (void)setSelectionManager:(id)a3;
- (void)setSelectionSnapshot:(id)a3;
- (void)userActivityWillSave:(id)a3;
@end

@implementation PXAssetSelectionUserActivityController

- (void)_updateActivity
{
  if ([(PXAssetSelectionUserActivityController *)self isActive]&& [(PXAssetSelectionUserActivityController *)self hasSelection])
  {
    v3 = [(PXAssetSelectionUserActivityController *)self currentUserActivity];

    if (!v3)
    {
      v6 = [objc_alloc(MEMORY[0x1E69636A8]) initWithActivityType:@"com.apple.mobileslideshow.assetselection"];
      [v6 setEligibleForHandoff:0];
      [v6 setDelegate:self];
      [v6 becomeCurrent];
      [(PXAssetSelectionUserActivityController *)self setCurrentUserActivity:v6];
    }
  }

  else
  {
    v4 = [(PXAssetSelectionUserActivityController *)self currentUserActivity];

    if (v4)
    {
      v5 = [(PXAssetSelectionUserActivityController *)self currentUserActivity];
      [v5 resignCurrent];

      [(PXAssetSelectionUserActivityController *)self setCurrentUserActivity:0];
    }
  }
}

- (void)userActivityWillSave:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXAssetSelectionUserActivityController *)self selectionSnapshot];
  v7 = [v6 dataSource];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    v23 = [v7 px_descriptionForAssertionMessage];
    [v19 handleFailureInMethod:a2 object:self file:@"PXAssetSelectionUserActivityController.m" lineNumber:132 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"currentSelection.dataSource", v21, v23}];
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [v19 handleFailureInMethod:a2 object:self file:@"PXAssetSelectionUserActivityController.m" lineNumber:132 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"currentSelection.dataSource", v21}];
  }

LABEL_3:
  v8 = [v6 selectedIndexPaths];
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v28 = [v8 itemCount];
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Selection user activity has been requested with %lu assets selected", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "itemCount")}];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __63__PXAssetSelectionUserActivityController_userActivityWillSave___block_invoke;
  v24[3] = &unk_1E7744508;
  v11 = v7;
  v25 = v11;
  v12 = v10;
  v26 = v12;
  [v8 enumerateItemIndexPathsUsingBlock:v24];
  v13 = [v5 userInfo];
  v14 = [v13 mutableCopy];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = [MEMORY[0x1E695DF90] dictionary];
  }

  v17 = v16;

  v18 = [v12 copy];
  [v17 setObject:v18 forKeyedSubscript:@"selectedUUIDs"];

  [v5 setUserInfo:v17];
}

void __63__PXAssetSelectionUserActivityController_userActivityWillSave___block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = [v3 assetAtItemIndexPath:v8];
  v6 = *(a1 + 40);
  v7 = [v5 uuid];
  [v6 addObject:v7];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (SelectionManagerObservationContext_116557 != a5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXAssetSelectionUserActivityController.m" lineNumber:123 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v13 = v9;
    v10 = [(PXAssetSelectionUserActivityController *)self selectionManager];
    v11 = [v10 selectionSnapshot];
    [(PXAssetSelectionUserActivityController *)self setSelectionSnapshot:v11];

    v9 = v13;
  }
}

- (void)setHasSelection:(BOOL)a3
{
  if (self->_hasSelection != a3)
  {
    self->_hasSelection = a3;
    [(PXAssetSelectionUserActivityController *)self _updateActivity];
  }
}

- (PXSelectionSnapshot)selectionSnapshot
{
  os_unfair_lock_lock(&self->_snapshotLock);
  v3 = self->_selectionSnapshot;
  os_unfair_lock_unlock(&self->_snapshotLock);

  return v3;
}

- (void)setSelectionSnapshot:(id)a3
{
  v9 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXAssetSelectionUserActivityController.m" lineNumber:72 description:{@"%s must be called on the main thread", "-[PXAssetSelectionUserActivityController setSelectionSnapshot:]"}];
  }

  v6 = [(PXAssetSelectionUserActivityController *)self hasSelection];
  os_unfair_lock_lock(&self->_snapshotLock);
  if (self->_selectionSnapshot != v9)
  {
    objc_storeStrong(&self->_selectionSnapshot, a3);
    v7 = [(PXSelectionSnapshot *)v9 selectedIndexPaths];
    v6 = [v7 itemCount] > 0;
  }

  os_unfair_lock_unlock(&self->_snapshotLock);
  [(PXAssetSelectionUserActivityController *)self setHasSelection:v6];
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    [(PXAssetSelectionUserActivityController *)self _updateActivity];
  }
}

- (void)setSelectionManager:(id)a3
{
  v5 = a3;
  selectionManager = self->_selectionManager;
  if (selectionManager != v5)
  {
    v8 = v5;
    [(PXSectionedSelectionManager *)selectionManager unregisterChangeObserver:self context:SelectionManagerObservationContext_116557];
    objc_storeStrong(&self->_selectionManager, a3);
    [(PXSectionedSelectionManager *)self->_selectionManager registerChangeObserver:self context:SelectionManagerObservationContext_116557];
    v7 = [(PXSectionedSelectionManager *)self->_selectionManager selectionSnapshot];
    [(PXAssetSelectionUserActivityController *)self setSelectionSnapshot:v7];

    v5 = v8;
  }
}

- (void)dealloc
{
  v3 = [(PXAssetSelectionUserActivityController *)self currentUserActivity];
  [v3 resignCurrent];

  [(PXAssetSelectionUserActivityController *)self setCurrentUserActivity:0];
  v4.receiver = self;
  v4.super_class = PXAssetSelectionUserActivityController;
  [(PXAssetSelectionUserActivityController *)&v4 dealloc];
}

- (PXAssetSelectionUserActivityController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssetSelectionUserActivityController.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXAssetSelectionUserActivityController init]"}];

  abort();
}

- (PXAssetSelectionUserActivityController)initWithSelectionManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXAssetSelectionUserActivityController;
  v5 = [(PXAssetSelectionUserActivityController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_snapshotLock._os_unfair_lock_opaque = 0;
    [(PXAssetSelectionUserActivityController *)v5 setSelectionManager:v4];
  }

  return v6;
}

@end