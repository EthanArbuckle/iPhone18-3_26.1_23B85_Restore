@interface PXNavigationListItemDataSectionManager
+ (unint64_t)lockStateFromPrivacyController:(id)controller;
- (BOOL)allowsEmptyDataSection;
- (BOOL)isCollectionEmpty;
- (BOOL)isCollectionVisible;
- (BOOL)isInitialDuplicateDetectorProcessingCompleted;
- (PXNavigationListItemDataSectionManager)initWithChildDataSectionManagers:(id)managers;
- (PXNavigationListItemDataSectionManager)initWithCollection:(id)collection context:(id)context;
- (PXNavigationListItemDataSectionManager)initWithItem:(id)item;
- (id)createDataSection;
- (void)collectionFetchOperationDidComplete:(id)complete;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)setAccessoryTitle:(id)title;
- (void)setEnabled:(BOOL)enabled;
- (void)setFetchResult:(id)result;
- (void)setHiddenWhenEmpty:(BOOL)empty;
- (void)setLockState:(unint64_t)state;
- (void)updateDataSectionIfNecessary;
@end

@implementation PXNavigationListItemDataSectionManager

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PrivacyControllerObservationContext_228974 == context)
  {
    if ((changeCopy & 3) == 0)
    {
      goto LABEL_11;
    }

    v13 = observableCopy;
    -[PXNavigationListItemDataSectionManager setLockState:](self, "setLockState:", [objc_opt_class() lockStateFromPrivacyController:self->_privacyController]);
    goto LABEL_10;
  }

  if (PXLibraryFilterStateObservationContext_228975 == context)
  {
    if ((changeCopy & 1) == 0)
    {
      goto LABEL_11;
    }

    v13 = observableCopy;
    [(PXNavigationListItemDataSectionManager *)self setFetchResult:0];
    goto LABEL_10;
  }

  if (PXTabBadgeModelValueObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationListItemDataSectionManager.m" lineNumber:282 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v13 = observableCopy;
    badgeModel = [(PXNavigationListItemDataSectionManager *)self badgeModel];
    localizedString = [badgeModel localizedString];
    [(PXNavigationListItemDataSectionManager *)self setAccessoryTitle:localizedString];

LABEL_10:
    observableCopy = v13;
  }

LABEL_11:
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  queueCopy = queue;
  fetchResult = [(PXNavigationListItemDataSectionManager *)self fetchResult];
  v8 = [queueCopy changeDetailsForFetchResult:fetchResult];

  v6 = v8;
  if (v8)
  {
    fetchResultAfterChanges = [v8 fetchResultAfterChanges];
    [(PXNavigationListItemDataSectionManager *)self setFetchResult:fetchResultAfterChanges];

    v6 = v8;
  }
}

- (void)collectionFetchOperationDidComplete:(id)complete
{
  outputFetchResult = [complete outputFetchResult];
  [(PXNavigationListItemDataSectionManager *)self setFetchResult:outputFetchResult];
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
      collection = [(PXNavigationListItemDataSectionManager *)self collection];
      accessoryTitle = [(PXNavigationListItemDataSectionManager *)self accessoryTitle];
      lockState = [(PXNavigationListItemDataSectionManager *)self lockState];
      outlineObject = [(PXDataSectionManager *)self outlineObject];
      v5 = [(PXCollectionsDataSection *)v8 initWithDisplayCollection:collection accessoryTitle:accessoryTitle lockState:lockState outlineObject:outlineObject];
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
  dataSectionIfCreated = [(PXDataSectionManager *)self dataSectionIfCreated];
  if (dataSectionIfCreated)
  {
    if ([dataSectionIfCreated count] || !-[PXNavigationListItemDataSectionManager isCollectionVisible](self, "isCollectionVisible"))
    {
      if ([dataSectionIfCreated count] < 1 || -[PXNavigationListItemDataSectionManager isCollectionVisible](self, "isCollectionVisible"))
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
    collection = [(PXNavigationListItemDataSectionManager *)self collection];
    photoLibrary = [collection photoLibrary];
    self->_isInitialDuplicateDetectorProcessingCompleted = [photoLibrary isInitialDuplicateDetectorProcessingCompleted];

    objc_storeStrong(&self->_lastDuplicatesProcessingCheckDate, v4);
  }

  isInitialDuplicateDetectorProcessingCompleted = self->_isInitialDuplicateDetectorProcessingCompleted;

  return isInitialDuplicateDetectorProcessingCompleted;
}

- (BOOL)isCollectionVisible
{
  if ([(PXNavigationListItemDataSectionManager *)self isCollectionEmpty])
  {
    collection = [(PXNavigationListItemDataSectionManager *)self collection];
    if ([collection px_isAllLibraryDuplicatesSmartAlbum])
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
  collection = [(PXNavigationListItemDataSectionManager *)self collection];
  fetchResult = [(PXNavigationListItemDataSectionManager *)self fetchResult];
  context = [(PXNavigationListItemDataSectionManager *)self context];
  assetsFilterPredicate = [context assetsFilterPredicate];
  if (fetchResult)
  {
    v7 = [fetchResult count] == 0;
  }

  else if (collection)
  {
    photoLibrary = [collection photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setInternalPredicate:assetsFilterPredicate];
    if (([collection px_isSharedAlbum] & 1) == 0 && (objc_msgSend(collection, "px_isUnableToUploadSmartAlbum") & 1) == 0)
    {
      libraryFilterState = [(PXNavigationListItemDataSectionManager *)self libraryFilterState];
      [librarySpecificFetchOptions setSharingFilter:{objc_msgSend(libraryFilterState, "sharingFilter")}];
    }

    v7 = [collection px_fetchIsEmptyWithOptions:librarySpecificFetchOptions];
    v11 = [PXCollectionFetchOperation fetchOperationWithCollection:collection delegate:self];
    [v11 setFetchOptions:librarySpecificFetchOptions];
    workQueue = [context workQueue];
    [workQueue addOperation:v11];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setAccessoryTitle:(id)title
{
  titleCopy = title;
  v5 = self->_accessoryTitle;
  v6 = v5;
  if (v5 == titleCopy)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:titleCopy];

    if ((v7 & 1) == 0)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __60__PXNavigationListItemDataSectionManager_setAccessoryTitle___block_invoke;
      v8[3] = &unk_1E77498F8;
      v8[4] = self;
      v9 = titleCopy;
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

- (void)setLockState:(unint64_t)state
{
  if (self->_lockState != state)
  {
    v5[6] = v3;
    v5[7] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __55__PXNavigationListItemDataSectionManager_setLockState___block_invoke;
    v5[3] = &unk_1E7749D78;
    v5[4] = self;
    v5[5] = state;
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

- (void)setFetchResult:(id)result
{
  resultCopy = result;
  v5 = self->_fetchResult;
  v6 = v5;
  if (v5 != resultCopy)
  {
    v7 = [(PHFetchResult *)v5 isEqual:resultCopy];

    v8 = resultCopy;
    if (v7)
    {
      goto LABEL_13;
    }

    fetchResult = self->_fetchResult;
    if (!resultCopy || fetchResult)
    {
      if (resultCopy || !fetchResult)
      {
        goto LABEL_11;
      }

      photoLibrary = [(PHCollection *)self->_collection photoLibrary];
      [photoLibrary px_unregisterChangeObserver:self];
    }

    else
    {
      photoLibrary = [(PHCollection *)self->_collection photoLibrary];
      [photoLibrary px_registerChangeObserver:self];
    }

LABEL_11:
    objc_storeStrong(&self->_fetchResult, result);
    [(PXNavigationListItemDataSectionManager *)self updateDataSectionIfNecessary];
    goto LABEL_12;
  }

LABEL_12:
  v8 = resultCopy;
LABEL_13:
}

- (void)setHiddenWhenEmpty:(BOOL)empty
{
  if (self->_hiddenWhenEmpty != empty)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __61__PXNavigationListItemDataSectionManager_setHiddenWhenEmpty___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    emptyCopy = empty;
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

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53__PXNavigationListItemDataSectionManager_setEnabled___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    enabledCopy = enabled;
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

- (PXNavigationListItemDataSectionManager)initWithChildDataSectionManagers:(id)managers
{
  managersCopy = managers;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationListItemDataSectionManager.m" lineNumber:83 description:{@"%s is not available as initializer", "-[PXNavigationListItemDataSectionManager initWithChildDataSectionManagers:]"}];

  abort();
}

- (PXNavigationListItemDataSectionManager)initWithItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = PXNavigationListItemDataSectionManager;
  v6 = [(PXDataSectionManager *)&v9 initWithChildDataSectionManagers:MEMORY[0x1E695E0F0]];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listItem, item);
    v7->_enabled = 1;
  }

  return v7;
}

- (PXNavigationListItemDataSectionManager)initWithCollection:(id)collection context:(id)context
{
  collectionCopy = collection;
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = PXNavigationListItemDataSectionManager;
  v9 = [(PXDataSectionManager *)&v20 initWithChildDataSectionManagers:MEMORY[0x1E695E0F0]];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, collection);
    objc_storeStrong(&v10->_context, context);
    v10->_enabled = 1;
    v11 = [contextCopy tabBadgeModelForCollection:collectionCopy];
    badgeModel = v10->_badgeModel;
    v10->_badgeModel = v11;

    [(PXTabBadgeModel *)v10->_badgeModel registerChangeObserver:v10 context:PXTabBadgeModelValueObservationContext];
    localizedString = [(PXTabBadgeModel *)v10->_badgeModel localizedString];
    accessoryTitle = v10->_accessoryTitle;
    v10->_accessoryTitle = localizedString;

    v15 = [PXContentPrivacyController privacyControllerForCollection:v10->_collection];
    privacyController = v10->_privacyController;
    v10->_privacyController = v15;

    [(PXContentPrivacyController *)v10->_privacyController registerChangeObserver:v10 context:PrivacyControllerObservationContext_228974];
    v10->_lockState = [objc_opt_class() lockStateFromPrivacyController:v10->_privacyController];
    libraryFilterState = [contextCopy libraryFilterState];
    libraryFilterState = v10->_libraryFilterState;
    v10->_libraryFilterState = libraryFilterState;

    [(PXLibraryFilterState *)v10->_libraryFilterState registerChangeObserver:v10 context:PXLibraryFilterStateObservationContext_228975];
  }

  return v10;
}

+ (unint64_t)lockStateFromPrivacyController:(id)controller
{
  controllerCopy = controller;
  v4 = controllerCopy;
  if (controllerCopy && [controllerCopy isContentPrivacyEnabled])
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