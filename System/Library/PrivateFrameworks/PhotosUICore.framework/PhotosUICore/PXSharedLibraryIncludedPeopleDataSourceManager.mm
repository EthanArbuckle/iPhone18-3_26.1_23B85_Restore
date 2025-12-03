@interface PXSharedLibraryIncludedPeopleDataSourceManager
- (PXSharedLibraryIncludedPeopleDataSourceManager)initWithViewModel:(id)model;
- (id)_infosForPersonIdentifiers:(id)identifiers;
- (id)createInitialDataSource;
- (id)pauseChangeDeliveryWithTimeout:(double)timeout identifier:(id)identifier;
- (void)_resetIfNeeded;
- (void)_updateDataSource;
- (void)_updateDataSourceWithItemChanges:(id)changes fromDataSourceIdentifier:(int64_t)identifier;
- (void)_updateViewModel;
- (void)_updateViewModelInitially;
- (void)addInfos:(id)infos;
- (void)addSelectedPersonIdentifiers:(id)identifiers;
- (void)didCreateInitialDataSource;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)removeAllItems;
- (void)removeInfo:(id)info;
- (void)replaceInfo:(id)info withInfo:(id)withInfo;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading;
- (void)setDataSource:(id)source changeDetailsArray:(id)array;
- (void)setViewModelSyncingDisabled:(BOOL)disabled;
@end

@implementation PXSharedLibraryIncludedPeopleDataSourceManager

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXSharedLibraryAssistantViewModelObservationContext_132151 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:550 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = observableCopy;
  if ((changeCopy & 0x20) != 0)
  {
    [(PXSharedLibraryIncludedPeopleDataSourceManager *)self _updateDataSource];
    observableCopy = v11;
  }

  if (changeCopy < 0)
  {
    [(PXSharedLibraryIncludedPeopleDataSourceManager *)self _resetIfNeeded];
    observableCopy = v11;
  }
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading
{
  loadingCopy = loading;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:536 description:@"Resuming changes is not supported in PXSharedLibraryIncludedPeopleDataSourceManager."];

  abort();
}

- (id)pauseChangeDeliveryWithTimeout:(double)timeout identifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:532 description:@"Pausing changes is not supported in PXSharedLibraryIncludedPeopleDataSourceManager."];

  abort();
}

- (void)replaceInfo:(id)info withInfo:(id)withInfo
{
  infoCopy = info;
  withInfoCopy = withInfo;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:493 description:{@"%s must be called on the main thread", "-[PXSharedLibraryIncludedPeopleDataSourceManager replaceInfo:withInfo:]"}];
  }

  if (infoCopy)
  {
    if (withInfoCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:494 description:{@"Invalid parameter not satisfying: %@", @"oldInfo != nil"}];

    if (withInfoCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:495 description:{@"Invalid parameter not satisfying: %@", @"newInfo != nil"}];

LABEL_5:
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  if ([dataSource numberOfSections] != 1)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:498 description:@"Expected there to be only one section"];
  }

  v9 = [(NSMutableArray *)self->_infos indexOfObject:infoCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
  }

  [(NSMutableArray *)self->_infos replaceObjectAtIndex:v9 withObject:withInfoCopy];
  v10 = [(NSMutableArray *)self->_infosWithoutPeople indexOfObject:infoCopy];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    person = [withInfoCopy person];

    infosWithoutPeople = self->_infosWithoutPeople;
    if (person)
    {
      [(NSMutableArray *)infosWithoutPeople removeObject:infoCopy];
    }

    else
    {
      [(NSMutableArray *)infosWithoutPeople replaceObjectAtIndex:v11 withObject:withInfoCopy];
    }
  }

  v14 = [(NSMutableArray *)self->_infosWithBothPeopleAndParticipants indexOfObject:infoCopy];
  person2 = [withInfoCopy person];
  v16 = person2;
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (person2)
    {
      participant = [withInfoCopy participant];

      if (participant)
      {
        [(NSMutableArray *)self->_infosWithBothPeopleAndParticipants addObject:withInfoCopy];
      }
    }
  }

  else if (person2 && ([withInfoCopy participant], v18 = objc_claimAutoreleasedReturnValue(), v18, v16, v18))
  {
    [(NSMutableArray *)self->_infosWithBothPeopleAndParticipants replaceObjectAtIndex:v14 withObject:withInfoCopy];
  }

  else
  {
    [(NSMutableArray *)self->_infosWithBothPeopleAndParticipants removeObject:infoCopy];
  }

  v19 = [off_1E7721450 changeDetailsWithChangedIndexRange:{v9, 1}];
  -[PXSharedLibraryIncludedPeopleDataSourceManager _updateDataSourceWithItemChanges:fromDataSourceIdentifier:](self, "_updateDataSourceWithItemChanges:fromDataSourceIdentifier:", v19, [dataSource identifier]);
}

- (void)removeInfo:(id)info
{
  infoCopy = info;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:472 description:{@"%s must be called on the main thread", "-[PXSharedLibraryIncludedPeopleDataSourceManager removeInfo:]"}];
  }

  if (!infoCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:473 description:{@"Invalid parameter not satisfying: %@", @"info != nil"}];
  }

  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  if ([dataSource numberOfSections] != 1)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:476 description:@"Expected there to be only one section"];
  }

  participant = [infoCopy participant];
  if (participant)
  {
    [(NSMutableSet *)self->_removedParticipants addObject:participant];
  }

  v7 = [(NSMutableArray *)self->_infos count];
  [(NSMutableArray *)self->_infos removeObject:infoCopy];
  [(NSMutableArray *)self->_infosWithBothPeopleAndParticipants removeObject:infoCopy];
  [(NSMutableArray *)self->_infosWithoutPeople removeObject:infoCopy];
  v8 = [off_1E7721450 changeDetailsWithRemovedIndexRange:{v7, 1}];
  -[PXSharedLibraryIncludedPeopleDataSourceManager _updateDataSourceWithItemChanges:fromDataSourceIdentifier:](self, "_updateDataSourceWithItemChanges:fromDataSourceIdentifier:", v8, [dataSource identifier]);
}

- (void)addInfos:(id)infos
{
  infosCopy = infos;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:441 description:{@"%s must be called on the main thread", "-[PXSharedLibraryIncludedPeopleDataSourceManager addInfos:]"}];
  }

  if (![infosCopy count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"infos.count > 0"}];
  }

  [(PXSectionedDataSourceManager *)self dataSource];
  if ([objc_claimAutoreleasedReturnValue() numberOfSections] != 1)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:445 description:@"Expected there to be only one section"];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  PXMap();
}

id __59__PXSharedLibraryIncludedPeopleDataSourceManager_addInfos___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 128) containsObject:v3])
  {
    v4 = 0;
    goto LABEL_9;
  }

  v5 = [v3 person];
  if (!v5)
  {
    v7 = (a1 + 40);
    goto LABEL_7;
  }

  v6 = [v3 participant];

  if (v6)
  {
    v7 = (*(a1 + 32) + 136);
LABEL_7:
    [*v7 addObject:v3];
  }

  v4 = v3;

LABEL_9:

  return v4;
}

- (void)removeAllItems
{
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:424 description:{@"%s must be called on the main thread", "-[PXSharedLibraryIncludedPeopleDataSourceManager removeAllItems]"}];
  }

  PXMap();
}

- (void)setViewModelSyncingDisabled:(BOOL)disabled
{
  if (self->_viewModelSyncingDisabled != disabled)
  {
    self->_viewModelSyncingDisabled = disabled;
    [(PXSharedLibraryIncludedPeopleDataSourceManager *)self _updateViewModel];
  }
}

- (void)addSelectedPersonIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:409 description:{@"%s must be called on the main thread", "-[PXSharedLibraryIncludedPeopleDataSourceManager addSelectedPersonIdentifiers:]"}];
  }

  v5 = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self _infosForPersonIdentifiers:identifiersCopy];
  if ([v5 count])
  {
    [(PXSharedLibraryIncludedPeopleDataSourceManager *)self addInfos:v5];
  }
}

- (id)_infosForPersonIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    viewModel = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self viewModel];
    sourceLibraryInfo = [viewModel sourceLibraryInfo];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = sourceLibraryInfo;

      if (v7)
      {
        photoLibrary = [v7 photoLibrary];
        librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

        [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:identifiersCopy options:librarySpecificFetchOptions];
        v10 = [objc_claimAutoreleasedReturnValue() px_fetchedObjectIDsSortedByLocalIdentifiers:{objc_msgSend(objc_alloc(MEMORY[0x1E695DFB8]), "initWithArray:", identifiersCopy)}];
        v11 = objc_alloc(MEMORY[0x1E69788E0]);
        photoLibrary2 = [v7 photoLibrary];
        [v11 initWithOids:v10 photoLibrary:photoLibrary2 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

        PXMap();
      }
    }

    else
    {
    }
  }

  return 0;
}

PXSharedLibraryIncludedPeopleInfo *__77__PXSharedLibraryIncludedPeopleDataSourceManager__infosForPersonIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PXSharedLibraryIncludedPeopleInfo alloc] initWithPerson:v2];

  return v3;
}

- (void)_updateDataSourceWithItemChanges:(id)changes fromDataSourceIdentifier:(int64_t)identifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v7 = [[PXSharedLibraryIncludedPeopleDataSource alloc] initWithInfos:self->_infos infosWithBothPeopleAndParticipants:self->_infosWithBothPeopleAndParticipants infosWithoutPeople:self->_infosWithoutPeople];
  v8 = [off_1E77218B0 alloc];
  identifier = [(PXSharedLibraryIncludedPeopleDataSource *)v7 identifier];
  changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
  v13 = &unk_1F190B968;
  v14[0] = changesCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v12 = [v8 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v11 subitemChangeDetailsByItemBySection:0];
  [(PXSectionedDataSourceManager *)self setDataSource:v7 changeDetails:v12];
}

- (void)_resetIfNeeded
{
  if ([(PXSharedLibraryAssistantViewModel *)self->_viewModel autoSharePolicy]!= 2)
  {
    [(NSMutableSet *)self->_removedParticipants removeAllObjects];
    [(NSMutableArray *)self->_infos removeAllObjects];
    [(NSMutableArray *)self->_infosWithBothPeopleAndParticipants removeAllObjects];
    [(NSMutableArray *)self->_infosWithoutPeople removeAllObjects];
    dataSourceIfExists = [(PXSectionedDataSourceManager *)self dataSourceIfExists];

    if (dataSourceIfExists)
    {
      createInitialDataSource = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self createInitialDataSource];
      [(PXSectionedDataSourceManager *)self setDataSource:createInitialDataSource changeDetails:0];
    }
  }
}

- (void)_updateDataSource
{
  v3 = MEMORY[0x1E695DFD8];
  participantDataSource = [(PXSharedLibraryAssistantViewModel *)self->_viewModel participantDataSource];
  participants = [participantDataSource participants];
  v6 = [v3 setWithArray:participants];

  [(NSMutableSet *)self->_removedParticipants intersectSet:v6];
  [(PXSectionedDataSourceManager *)self dataSource];
  [objc_claimAutoreleasedReturnValue() allItemsEnumerator];
  objc_claimAutoreleasedReturnValue();
  PXFilter();
}

uint64_t __67__PXSharedLibraryIncludedPeopleDataSourceManager__updateDataSource__block_invoke_6(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [a1[5] removeInfo:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  result = [a1[6] count];
  if (result)
  {
    return [a1[5] addInfos:a1[6]];
  }

  return result;
}

uint64_t __67__PXSharedLibraryIncludedPeopleDataSourceManager__updateDataSource__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 participant];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

id __67__PXSharedLibraryIncludedPeopleDataSourceManager__updateDataSource__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PXSharedLibraryIncludedPeopleInfo personForParticipant:v2];
  v4 = [PXSharedLibraryIncludedPeopleInfo alloc];
  if (v3)
  {
    v5 = [(PXSharedLibraryIncludedPeopleInfo *)v4 initWithParticipant:v2 person:v3];
  }

  else
  {
    v5 = [(PXSharedLibraryIncludedPeopleInfo *)v4 initWithParticipant:v2];
  }

  v6 = v5;

  return v6;
}

BOOL __67__PXSharedLibraryIncludedPeopleDataSourceManager__updateDataSource__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 participant];
  v3 = v2 != 0;

  return v3;
}

- (void)_updateViewModel
{
  if ([(PXSharedLibraryIncludedPeopleDataSourceManager *)self viewModelSyncingDisabled])
  {
    allPersonUUIDs = MEMORY[0x1E695E0F0];
  }

  else
  {
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    allPersonUUIDs = [dataSource allPersonUUIDs];
  }

  viewModel = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PXSharedLibraryIncludedPeopleDataSourceManager__updateViewModel__block_invoke;
  v7[3] = &unk_1E7749B98;
  v8 = allPersonUUIDs;
  v6 = allPersonUUIDs;
  [viewModel performChanges:v7];
}

- (void)_updateViewModelInitially
{
  viewModel = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PXSharedLibraryIncludedPeopleDataSourceManager__updateViewModelInitially__block_invoke;
  v4[3] = &unk_1E7749B98;
  v4[4] = self;
  [viewModel performInitialChanges:v4];
}

void __75__PXSharedLibraryIncludedPeopleDataSourceManager__updateViewModelInitially__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 dataSource];
  v4 = [v5 allPersonUUIDs];
  [v3 setPersonUUIDs:v4];
}

- (void)setDataSource:(id)source changeDetailsArray:(id)array
{
  v5.receiver = self;
  v5.super_class = PXSharedLibraryIncludedPeopleDataSourceManager;
  [(PXSectionedDataSourceManager *)&v5 setDataSource:source changeDetailsArray:array];
  [(PXSharedLibraryIncludedPeopleDataSourceManager *)self _updateViewModel];
}

- (void)didCreateInitialDataSource
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryIncludedPeopleDataSourceManager;
  [(PXSectionedDataSourceManager *)&v3 didCreateInitialDataSource];
  [(PXSharedLibraryIncludedPeopleDataSourceManager *)self _updateViewModelInitially];
}

- (id)createInitialDataSource
{
  v38 = *MEMORY[0x1E69E9840];
  viewModel = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self viewModel];
  sharedLibrary = [viewModel sharedLibrary];
  isInPreview = [sharedLibrary isInPreview];

  if (isInPreview)
  {
    [viewModel personUUIDs];
    objc_claimAutoreleasedReturnValue();
    PXMap();
  }

  v27 = viewModel;
  if ([viewModel mode] == 2)
  {
    sharedLibrary2 = [viewModel sharedLibrary];
    PXSharedLibraryUIParticipantsForSharedLibrary(sharedLibrary2, 2u);
  }

  participantDataSource = [viewModel participantDataSource];
  participants = [participantDataSource participants];

  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(participants, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = participants;
  v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [PXSharedLibraryIncludedPeopleInfo personForParticipant:v15];
        v17 = [PXSharedLibraryIncludedPeopleInfo alloc];
        if (v16)
        {
          v18 = [(PXSharedLibraryIncludedPeopleInfo *)v17 initWithParticipant:v15 person:v16];
          v19 = &OBJC_IVAR___PXSharedLibraryIncludedPeopleDataSourceManager__infosWithBothPeopleAndParticipants;
        }

        else
        {
          v18 = [(PXSharedLibraryIncludedPeopleInfo *)v17 initWithParticipant:v15];
          v19 = &OBJC_IVAR___PXSharedLibraryIncludedPeopleDataSourceManager__infosWithoutPeople;
        }

        [*(&self->super.super.super.isa + *v19) addObject:v18];
        [v9 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = v9;
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(NSMutableArray *)self->_infos addObject:*(*(&v28 + 1) + 8 * j)];
      }

      v22 = [v20 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v22);
  }

  v25 = [[PXSharedLibraryIncludedPeopleDataSource alloc] initWithInfos:self->_infos infosWithBothPeopleAndParticipants:self->_infosWithBothPeopleAndParticipants infosWithoutPeople:self->_infosWithoutPeople];

  return v25;
}

id __73__PXSharedLibraryIncludedPeopleDataSourceManager_createInitialDataSource__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 length])
  {
    v3 = [MEMORY[0x1E6978980] localIdentifierWithUUID:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PXSharedLibraryIncludedPeopleDataSourceManager)initWithViewModel:(id)model
{
  modelCopy = model;
  v16.receiver = self;
  v16.super_class = PXSharedLibraryIncludedPeopleDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v16 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    infos = v6->_infos;
    v6->_infos = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    infosWithBothPeopleAndParticipants = v6->_infosWithBothPeopleAndParticipants;
    v6->_infosWithBothPeopleAndParticipants = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    infosWithoutPeople = v6->_infosWithoutPeople;
    v6->_infosWithoutPeople = v11;

    v13 = objc_opt_new();
    removedParticipants = v6->_removedParticipants;
    v6->_removedParticipants = v13;

    objc_storeStrong(&v6->_viewModel, model);
    [(PXSharedLibraryAssistantViewModel *)v6->_viewModel registerChangeObserver:v6 context:PXSharedLibraryAssistantViewModelObservationContext_132151];
  }

  return v6;
}

@end