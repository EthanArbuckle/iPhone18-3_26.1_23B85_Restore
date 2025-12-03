@interface PXAssetSelectionUserActivityController
- (PXAssetSelectionUserActivityController)init;
- (PXAssetSelectionUserActivityController)initWithSelectionManager:(id)manager;
- (PXSelectionSnapshot)selectionSnapshot;
- (void)_updateActivity;
- (void)dealloc;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setActive:(BOOL)active;
- (void)setHasSelection:(BOOL)selection;
- (void)setSelectionManager:(id)manager;
- (void)setSelectionSnapshot:(id)snapshot;
- (void)userActivityWillSave:(id)save;
@end

@implementation PXAssetSelectionUserActivityController

- (void)_updateActivity
{
  if ([(PXAssetSelectionUserActivityController *)self isActive]&& [(PXAssetSelectionUserActivityController *)self hasSelection])
  {
    currentUserActivity = [(PXAssetSelectionUserActivityController *)self currentUserActivity];

    if (!currentUserActivity)
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
    currentUserActivity2 = [(PXAssetSelectionUserActivityController *)self currentUserActivity];

    if (currentUserActivity2)
    {
      currentUserActivity3 = [(PXAssetSelectionUserActivityController *)self currentUserActivity];
      [currentUserActivity3 resignCurrent];

      [(PXAssetSelectionUserActivityController *)self setCurrentUserActivity:0];
    }
  }
}

- (void)userActivityWillSave:(id)save
{
  v29 = *MEMORY[0x1E69E9840];
  saveCopy = save;
  selectionSnapshot = [(PXAssetSelectionUserActivityController *)self selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];
  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = objc_opt_class();
    v21 = NSStringFromClass(v22);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSelectionUserActivityController.m" lineNumber:132 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"currentSelection.dataSource", v21, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSelectionUserActivityController.m" lineNumber:132 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"currentSelection.dataSource", v21}];
  }

LABEL_3:
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    itemCount = [selectedIndexPaths itemCount];
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_DEFAULT, "Selection user activity has been requested with %lu assets selected", buf, 0xCu);
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(selectedIndexPaths, "itemCount")}];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __63__PXAssetSelectionUserActivityController_userActivityWillSave___block_invoke;
  v24[3] = &unk_1E7744508;
  v11 = dataSource;
  v25 = v11;
  v12 = v10;
  v26 = v12;
  [selectedIndexPaths enumerateItemIndexPathsUsingBlock:v24];
  userInfo = [saveCopy userInfo];
  v14 = [userInfo mutableCopy];
  v15 = v14;
  if (v14)
  {
    dictionary = v14;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v17 = dictionary;

  v18 = [v12 copy];
  [v17 setObject:v18 forKeyedSubscript:@"selectedUUIDs"];

  [saveCopy setUserInfo:v17];
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (SelectionManagerObservationContext_116557 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSelectionUserActivityController.m" lineNumber:123 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v13 = observableCopy;
    selectionManager = [(PXAssetSelectionUserActivityController *)self selectionManager];
    selectionSnapshot = [selectionManager selectionSnapshot];
    [(PXAssetSelectionUserActivityController *)self setSelectionSnapshot:selectionSnapshot];

    observableCopy = v13;
  }
}

- (void)setHasSelection:(BOOL)selection
{
  if (self->_hasSelection != selection)
  {
    self->_hasSelection = selection;
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

- (void)setSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSelectionUserActivityController.m" lineNumber:72 description:{@"%s must be called on the main thread", "-[PXAssetSelectionUserActivityController setSelectionSnapshot:]"}];
  }

  hasSelection = [(PXAssetSelectionUserActivityController *)self hasSelection];
  os_unfair_lock_lock(&self->_snapshotLock);
  if (self->_selectionSnapshot != snapshotCopy)
  {
    objc_storeStrong(&self->_selectionSnapshot, snapshot);
    selectedIndexPaths = [(PXSelectionSnapshot *)snapshotCopy selectedIndexPaths];
    hasSelection = [selectedIndexPaths itemCount] > 0;
  }

  os_unfair_lock_unlock(&self->_snapshotLock);
  [(PXAssetSelectionUserActivityController *)self setHasSelection:hasSelection];
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    [(PXAssetSelectionUserActivityController *)self _updateActivity];
  }
}

- (void)setSelectionManager:(id)manager
{
  managerCopy = manager;
  selectionManager = self->_selectionManager;
  if (selectionManager != managerCopy)
  {
    v8 = managerCopy;
    [(PXSectionedSelectionManager *)selectionManager unregisterChangeObserver:self context:SelectionManagerObservationContext_116557];
    objc_storeStrong(&self->_selectionManager, manager);
    [(PXSectionedSelectionManager *)self->_selectionManager registerChangeObserver:self context:SelectionManagerObservationContext_116557];
    selectionSnapshot = [(PXSectionedSelectionManager *)self->_selectionManager selectionSnapshot];
    [(PXAssetSelectionUserActivityController *)self setSelectionSnapshot:selectionSnapshot];

    managerCopy = v8;
  }
}

- (void)dealloc
{
  currentUserActivity = [(PXAssetSelectionUserActivityController *)self currentUserActivity];
  [currentUserActivity resignCurrent];

  [(PXAssetSelectionUserActivityController *)self setCurrentUserActivity:0];
  v4.receiver = self;
  v4.super_class = PXAssetSelectionUserActivityController;
  [(PXAssetSelectionUserActivityController *)&v4 dealloc];
}

- (PXAssetSelectionUserActivityController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssetSelectionUserActivityController.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXAssetSelectionUserActivityController init]"}];

  abort();
}

- (PXAssetSelectionUserActivityController)initWithSelectionManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = PXAssetSelectionUserActivityController;
  v5 = [(PXAssetSelectionUserActivityController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_snapshotLock._os_unfair_lock_opaque = 0;
    [(PXAssetSelectionUserActivityController *)v5 setSelectionManager:managerCopy];
  }

  return v6;
}

@end