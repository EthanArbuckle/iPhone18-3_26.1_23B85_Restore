@interface PXNavigationListItemDataSectionManager
+ (unint64_t)lockStateFromPrivacyController:(id)a3;
- (BOOL)allowsEmptyDataSection;
- (BOOL)isCollectionEmpty;
- (BOOL)isCollectionVisible;
- (BOOL)isInitialDuplicateDetectorProcessingCompleted;
- (PXNavigationListItemDataSectionManager)initWithChildDataSectionManagers:(id)a3;
- (PXNavigationListItemDataSectionManager)initWithCollection:(id)a3 context:(id)a4;
- (PXNavigationListItemDataSectionManager)initWithItem:(id)a3;
- (id)createDataSection;
- (void)collectionFetchOperationDidComplete:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)setAccessoryTitle:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setFetchResult:(id)a3;
- (void)setHiddenWhenEmpty:(BOOL)a3;
- (void)setLockState:(unint64_t)a3;
- (void)updateDataSectionIfNecessary;
@end

@implementation PXNavigationListItemDataSectionManager

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PrivacyControllerObservationContext_228974 == a5)
  {
    if ((v6 & 3) == 0)
    {
      goto LABEL_11;
    }

    v13 = v9;
    -[PXNavigationListItemDataSectionManager setLockState:](self, "setLockState:", [objc_opt_class() lockStateFromPrivacyController:self->_privacyController]);
    goto LABEL_10;
  }

  if (PXLibraryFilterStateObservationContext_228975 == a5)
  {
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }

    v13 = v9;
    [(PXNavigationListItemDataSectionManager *)self setFetchResult:0];
    goto LABEL_10;
  }

  if (PXTabBadgeModelValueObservationContext != a5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXNavigationListItemDataSectionManager.m" lineNumber:282 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v13 = v9;
    v10 = [(PXNavigationListItemDataSectionManager *)self badgeModel];
    v11 = [v10 localizedString];
    [(PXNavigationListItemDataSectionManager *)self setAccessoryTitle:v11];

LABEL_10:
    v9 = v13;
  }

LABEL_11:
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v4 = a3;
  v5 = [(PXNavigationListItemDataSectionManager *)self fetchResult];
  v8 = [v4 changeDetailsForFetchResult:v5];

  v6 = v8;
  if (v8)
  {
    v7 = [v8 fetchResultAfterChanges];
    [(PXNavigationListItemDataSectionManager *)self setFetchResult:v7];

    v6 = v8;
  }
}

- (void)collectionFetchOperationDidComplete:(id)a3
{
  v4 = [a3 outputFetchResult];
  [(PXNavigationListItemDataSectionManager *)self setFetchResult:v4];
}

- (id)createDataSection
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (self->_listItem && [(PXNavigationListItemDataSectionManager *)self isEnabled])
  {
    v3 = [PXArrayDataSection alloc];
    v15[0] = self->_listItem;
    v4 = v15[0];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v6 = [(PXArrayDataSection *)v3 initWithOutlineObject:v4 sectionContent:v5];
  }

  else
  {
    if ([(PXNavigationListItemDataSectionManager *)self isCollectionVisible]&& ([(PXNavigationListItemDataSectionManager *)self collection], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      v8 = [PXCollectionsDataSection alloc];
      v9 = [(PXNavigationListItemDataSectionManager *)self collection];
      v10 = [(PXNavigationListItemDataSectionManager *)self accessoryTitle];
      v11 = [(PXNavigationListItemDataSectionManager *)self lockState];
      v12 = [(PXDataSectionManager *)self outlineObject];
      v5 = [(PXCollectionsDataSection *)v8 initWithDisplayCollection:v9 accessoryTitle:v10 lockState:v11 outlineObject:v12];
    }

    else
    {
      v5 = objc_alloc_init(PXCollectionsDataSection);
    }

    v6 = [[PXNavigationListDataSection alloc] initWithCollectionsDataSection:v5];
  }

  v13 = v6;

  return v13;
}

- (void)updateDataSectionIfNecessary
{
  v5 = [(PXDataSectionManager *)self dataSectionIfCreated];
  if (v5)
  {
    if ([v5 count] || !-[PXNavigationListItemDataSectionManager isCollectionVisible](self, "isCollectionVisible"))
    {
      if ([v5 count] < 1 || -[PXNavigationListItemDataSectionManager isCollectionVisible](self, "isCollectionVisible"))
      {
        if (![(PXNavigationListItemDataSectionManager *)self isCollectionVisible]|| ([(PXNavigationListItemDataSectionManager *)self currentChanges]& 0x10008) == 0)
        {
          goto LABEL_13;
        }

        v3 = [off_1E7721450 changeDetailsWithChangedIndexRange:{0, 1}];
      }

      else
      {
        v3 = [off_1E7721450 changeDetailsWithRemovedIndexRange:{0, 1}];
      }
    }

    else
    {
      v3 = [off_1E7721450 changeDetailsWithInsertedIndexRange:{0, 1}];
    }

    v4 = v3;
    if (v3)
    {
      [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v3];
    }
  }

LABEL_13:
}

- (BOOL)isInitialDuplicateDetectorProcessingCompleted
{
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = v3;
  if (!self->_lastDuplicatesProcessingCheckDate || ([v3 timeIntervalSinceDate:?], v5 > 300.0))
  {
    v6 = [(PXNavigationListItemDataSectionManager *)self collection];
    v7 = [v6 photoLibrary];
    self->_isInitialDuplicateDetectorProcessingCompleted = [v7 isInitialDuplicateDetectorProcessingCompleted];

    objc_storeStrong(&self->_lastDuplicatesProcessingCheckDate, v4);
  }

  isInitialDuplicateDetectorProcessingCompleted = self->_isInitialDuplicateDetectorProcessingCompleted;

  return isInitialDuplicateDetectorProcessingCompleted;
}

- (BOOL)isCollectionVisible
{
  if ([(PXNavigationListItemDataSectionManager *)self isCollectionEmpty])
  {
    v3 = [(PXNavigationListItemDataSectionManager *)self collection];
    if ([v3 px_isAllLibraryDuplicatesSmartAlbum])
    {
      v4 = ![(PXNavigationListItemDataSectionManager *)self isInitialDuplicateDetectorProcessingCompleted];
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  if ([(PXNavigationListItemDataSectionManager *)self isEnabled])
  {
    if ([(PXNavigationListItemDataSectionManager *)self isHiddenWhenEmpty])
    {
      v5 = ![(PXNavigationListItemDataSectionManager *)self isCollectionEmpty]| v4;
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)isCollectionEmpty
{
  v3 = [(PXNavigationListItemDataSectionManager *)self collection];
  v4 = [(PXNavigationListItemDataSectionManager *)self fetchResult];
  v5 = [(PXNavigationListItemDataSectionManager *)self context];
  v6 = [v5 assetsFilterPredicate];
  if (v4)
  {
    v7 = [v4 count] == 0;
  }

  else if (v3)
  {
    v8 = [v3 photoLibrary];
    v9 = [v8 librarySpecificFetchOptions];

    [v9 setInternalPredicate:v6];
    if (([v3 px_isSharedAlbum] & 1) == 0 && (objc_msgSend(v3, "px_isUnableToUploadSmartAlbum") & 1) == 0)
    {
      v10 = [(PXNavigationListItemDataSectionManager *)self libraryFilterState];
      [v9 setSharingFilter:{objc_msgSend(v10, "sharingFilter")}];
    }

    v7 = [v3 px_fetchIsEmptyWithOptions:v9];
    v11 = [PXCollectionFetchOperation fetchOperationWithCollection:v3 delegate:self];
    [v11 setFetchOptions:v9];
    v12 = [v5 workQueue];
    [v12 addOperation:v11];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setAccessoryTitle:(id)a3
{
  v4 = a3;
  v5 = self->_accessoryTitle;
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:v4];

    if ((v7 & 1) == 0)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__PXNavigationListItemDataSectionManager_setAccessoryTitle___block_invoke;
      v8[3] = &unk_1E77498F8;
      v8[4] = self;
      v9 = v4;
      [(PXNavigationListItemDataSectionManager *)self performChanges:v8];
    }
  }
}

uint64_t __60__PXNavigationListItemDataSectionManager_setAccessoryTitle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 216);
  *(v3 + 216) = v2;

  [*(a1 + 32) signalChange:0x10000];
  v5 = *(a1 + 32);

  return [v5 updateDataSectionIfNecessary];
}

- (void)setLockState:(unint64_t)a3
{
  if (self->_lockState != a3)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__PXNavigationListItemDataSectionManager_setLockState___block_invoke;
    v5[3] = &unk_1E7749D78;
    v5[4] = self;
    v5[5] = a3;
    [(PXNavigationListItemDataSectionManager *)self performChanges:v5];
  }
}

uint64_t __55__PXNavigationListItemDataSectionManager_setLockState___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 208) = *(a1 + 40);
  [*(a1 + 32) signalChange:8];
  v2 = *(a1 + 32);

  return [v2 updateDataSectionIfNecessary];
}

- (void)setFetchResult:(id)a3
{
  v11 = a3;
  v5 = self->_fetchResult;
  v6 = v5;
  if (v5 != v11)
  {
    v7 = [(PHFetchResult *)v5 isEqual:v11];

    v8 = v11;
    if (v7)
    {
      goto LABEL_13;
    }

    fetchResult = self->_fetchResult;
    if (!v11 || fetchResult)
    {
      if (v11 || !fetchResult)
      {
        goto LABEL_11;
      }

      v10 = [(PHCollection *)self->_collection photoLibrary];
      [v10 px_unregisterChangeObserver:self];
    }

    else
    {
      v10 = [(PHCollection *)self->_collection photoLibrary];
      [v10 px_registerChangeObserver:self];
    }

LABEL_11:
    objc_storeStrong(&self->_fetchResult, a3);
    [(PXNavigationListItemDataSectionManager *)self updateDataSectionIfNecessary];
    goto LABEL_12;
  }

LABEL_12:
  v8 = v11;
LABEL_13:
}

- (void)setHiddenWhenEmpty:(BOOL)a3
{
  if (self->_hiddenWhenEmpty != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__PXNavigationListItemDataSectionManager_setHiddenWhenEmpty___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    v6 = a3;
    [(PXNavigationListItemDataSectionManager *)self performChanges:v5];
  }
}

uint64_t __61__PXNavigationListItemDataSectionManager_setHiddenWhenEmpty___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 153) = *(a1 + 40);
  [*(a1 + 32) signalChange:2];
  v2 = *(a1 + 32);

  return [v2 updateDataSectionIfNecessary];
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__PXNavigationListItemDataSectionManager_setEnabled___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    v6 = a3;
    [(PXNavigationListItemDataSectionManager *)self performChanges:v5];
  }
}

uint64_t __53__PXNavigationListItemDataSectionManager_setEnabled___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 152) = *(a1 + 40);
  [*(a1 + 32) signalChange:4];
  v2 = *(a1 + 32);

  return [v2 updateDataSectionIfNecessary];
}

- (BOOL)allowsEmptyDataSection
{
  if ([(PXNavigationListItemDataSectionManager *)self isHiddenWhenEmpty])
  {
    return 0;
  }

  return [(PXNavigationListItemDataSectionManager *)self isEnabled];
}

- (PXNavigationListItemDataSectionManager)initWithChildDataSectionManagers:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXNavigationListItemDataSectionManager.m" lineNumber:83 description:{@"%s is not available as initializer", "-[PXNavigationListItemDataSectionManager initWithChildDataSectionManagers:]"}];

  abort();
}

- (PXNavigationListItemDataSectionManager)initWithItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXNavigationListItemDataSectionManager;
  v6 = [(PXDataSectionManager *)&v9 initWithChildDataSectionManagers:MEMORY[0x1E695E0F0]];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listItem, a3);
    v7->_enabled = 1;
  }

  return v7;
}

- (PXNavigationListItemDataSectionManager)initWithCollection:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = PXNavigationListItemDataSectionManager;
  v9 = [(PXDataSectionManager *)&v20 initWithChildDataSectionManagers:MEMORY[0x1E695E0F0]];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, a3);
    objc_storeStrong(&v10->_context, a4);
    v10->_enabled = 1;
    v11 = [v8 tabBadgeModelForCollection:v7];
    badgeModel = v10->_badgeModel;
    v10->_badgeModel = v11;

    [(PXTabBadgeModel *)v10->_badgeModel registerChangeObserver:v10 context:PXTabBadgeModelValueObservationContext];
    v13 = [(PXTabBadgeModel *)v10->_badgeModel localizedString];
    accessoryTitle = v10->_accessoryTitle;
    v10->_accessoryTitle = v13;

    v15 = [PXContentPrivacyController privacyControllerForCollection:v10->_collection];
    privacyController = v10->_privacyController;
    v10->_privacyController = v15;

    [(PXContentPrivacyController *)v10->_privacyController registerChangeObserver:v10 context:PrivacyControllerObservationContext_228974];
    v10->_lockState = [objc_opt_class() lockStateFromPrivacyController:v10->_privacyController];
    v17 = [v8 libraryFilterState];
    libraryFilterState = v10->_libraryFilterState;
    v10->_libraryFilterState = v17;

    [(PXLibraryFilterState *)v10->_libraryFilterState registerChangeObserver:v10 context:PXLibraryFilterStateObservationContext_228975];
  }

  return v10;
}

+ (unint64_t)lockStateFromPrivacyController:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 isContentPrivacyEnabled])
  {
    if ([v4 isLocked])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end