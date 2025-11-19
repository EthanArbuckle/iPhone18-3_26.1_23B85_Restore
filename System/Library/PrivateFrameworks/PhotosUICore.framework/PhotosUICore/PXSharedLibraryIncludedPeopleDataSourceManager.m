@interface PXSharedLibraryIncludedPeopleDataSourceManager
- (PXSharedLibraryIncludedPeopleDataSourceManager)initWithViewModel:(id)a3;
- (id)_infosForPersonIdentifiers:(id)a3;
- (id)createInitialDataSource;
- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4;
- (void)_resetIfNeeded;
- (void)_updateDataSource;
- (void)_updateDataSourceWithItemChanges:(id)a3 fromDataSourceIdentifier:(int64_t)a4;
- (void)_updateViewModel;
- (void)_updateViewModelInitially;
- (void)addInfos:(id)a3;
- (void)addSelectedPersonIdentifiers:(id)a3;
- (void)didCreateInitialDataSource;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)removeAllItems;
- (void)removeInfo:(id)a3;
- (void)replaceInfo:(id)a3 withInfo:(id)a4;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3;
- (void)setDataSource:(id)a3 changeDetailsArray:(id)a4;
- (void)setViewModelSyncingDisabled:(BOOL)a3;
@end

@implementation PXSharedLibraryIncludedPeopleDataSourceManager

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXSharedLibraryAssistantViewModelObservationContext_132151 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:550 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = v9;
  if ((v6 & 0x20) != 0)
  {
    [(PXSharedLibraryIncludedPeopleDataSourceManager *)self _updateDataSource];
    v9 = v11;
  }

  if (v6 < 0)
  {
    [(PXSharedLibraryIncludedPeopleDataSourceManager *)self _resetIfNeeded];
    v9 = v11;
  }
}

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:536 description:@"Resuming changes is not supported in PXSharedLibraryIncludedPeopleDataSourceManager."];

  abort();
}

- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:532 description:@"Pausing changes is not supported in PXSharedLibraryIncludedPeopleDataSourceManager."];

  abort();
}

- (void)replaceInfo:(id)a3 withInfo:(id)a4
{
  v25 = a3;
  v7 = a4;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:493 description:{@"%s must be called on the main thread", "-[PXSharedLibraryIncludedPeopleDataSourceManager replaceInfo:withInfo:]"}];
  }

  if (v25)
  {
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:494 description:{@"Invalid parameter not satisfying: %@", @"oldInfo != nil"}];

    if (v7)
    {
      goto LABEL_5;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:495 description:{@"Invalid parameter not satisfying: %@", @"newInfo != nil"}];

LABEL_5:
  v8 = [(PXSectionedDataSourceManager *)self dataSource];
  if ([v8 numberOfSections] != 1)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:498 description:@"Expected there to be only one section"];
  }

  v9 = [(NSMutableArray *)self->_infos indexOfObject:v25];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:501 description:{@"Invalid parameter not satisfying: %@", @"index != NSNotFound"}];
  }

  [(NSMutableArray *)self->_infos replaceObjectAtIndex:v9 withObject:v7];
  v10 = [(NSMutableArray *)self->_infosWithoutPeople indexOfObject:v25];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    v12 = [v7 person];

    infosWithoutPeople = self->_infosWithoutPeople;
    if (v12)
    {
      [(NSMutableArray *)infosWithoutPeople removeObject:v25];
    }

    else
    {
      [(NSMutableArray *)infosWithoutPeople replaceObjectAtIndex:v11 withObject:v7];
    }
  }

  v14 = [(NSMutableArray *)self->_infosWithBothPeopleAndParticipants indexOfObject:v25];
  v15 = [v7 person];
  v16 = v15;
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v15)
    {
      v17 = [v7 participant];

      if (v17)
      {
        [(NSMutableArray *)self->_infosWithBothPeopleAndParticipants addObject:v7];
      }
    }
  }

  else if (v15 && ([v7 participant], v18 = objc_claimAutoreleasedReturnValue(), v18, v16, v18))
  {
    [(NSMutableArray *)self->_infosWithBothPeopleAndParticipants replaceObjectAtIndex:v14 withObject:v7];
  }

  else
  {
    [(NSMutableArray *)self->_infosWithBothPeopleAndParticipants removeObject:v25];
  }

  v19 = [off_1E7721450 changeDetailsWithChangedIndexRange:{v9, 1}];
  -[PXSharedLibraryIncludedPeopleDataSourceManager _updateDataSourceWithItemChanges:fromDataSourceIdentifier:](self, "_updateDataSourceWithItemChanges:fromDataSourceIdentifier:", v19, [v8 identifier]);
}

- (void)removeInfo:(id)a3
{
  v12 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:472 description:{@"%s must be called on the main thread", "-[PXSharedLibraryIncludedPeopleDataSourceManager removeInfo:]"}];
  }

  if (!v12)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:473 description:{@"Invalid parameter not satisfying: %@", @"info != nil"}];
  }

  v5 = [(PXSectionedDataSourceManager *)self dataSource];
  if ([v5 numberOfSections] != 1)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:476 description:@"Expected there to be only one section"];
  }

  v6 = [v12 participant];
  if (v6)
  {
    [(NSMutableSet *)self->_removedParticipants addObject:v6];
  }

  v7 = [(NSMutableArray *)self->_infos count];
  [(NSMutableArray *)self->_infos removeObject:v12];
  [(NSMutableArray *)self->_infosWithBothPeopleAndParticipants removeObject:v12];
  [(NSMutableArray *)self->_infosWithoutPeople removeObject:v12];
  v8 = [off_1E7721450 changeDetailsWithRemovedIndexRange:{v7, 1}];
  -[PXSharedLibraryIncludedPeopleDataSourceManager _updateDataSourceWithItemChanges:fromDataSourceIdentifier:](self, "_updateDataSourceWithItemChanges:fromDataSourceIdentifier:", v8, [v5 identifier]);
}

- (void)addInfos:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:441 description:{@"%s must be called on the main thread", "-[PXSharedLibraryIncludedPeopleDataSourceManager addInfos:]"}];
  }

  if (![v5 count])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:442 description:{@"Invalid parameter not satisfying: %@", @"infos.count > 0"}];
  }

  [(PXSectionedDataSourceManager *)self dataSource];
  if ([objc_claimAutoreleasedReturnValue() numberOfSections] != 1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:445 description:@"Expected there to be only one section"];
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
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:424 description:{@"%s must be called on the main thread", "-[PXSharedLibraryIncludedPeopleDataSourceManager removeAllItems]"}];
  }

  PXMap();
}

- (void)setViewModelSyncingDisabled:(BOOL)a3
{
  if (self->_viewModelSyncingDisabled != a3)
  {
    self->_viewModelSyncingDisabled = a3;
    [(PXSharedLibraryIncludedPeopleDataSourceManager *)self _updateViewModel];
  }
}

- (void)addSelectedPersonIdentifiers:(id)a3
{
  v7 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryIncludedPeopleDataSourceManager.m" lineNumber:409 description:{@"%s must be called on the main thread", "-[PXSharedLibraryIncludedPeopleDataSourceManager addSelectedPersonIdentifiers:]"}];
  }

  v5 = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self _infosForPersonIdentifiers:v7];
  if ([v5 count])
  {
    [(PXSharedLibraryIncludedPeopleDataSourceManager *)self addInfos:v5];
  }
}

- (id)_infosForPersonIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self viewModel];
    v6 = [v5 sourceLibraryInfo];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;

      if (v7)
      {
        v8 = [v7 photoLibrary];
        v9 = [v8 librarySpecificFetchOptions];

        [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:v4 options:v9];
        v10 = [objc_claimAutoreleasedReturnValue() px_fetchedObjectIDsSortedByLocalIdentifiers:{objc_msgSend(objc_alloc(MEMORY[0x1E695DFB8]), "initWithArray:", v4)}];
        v11 = objc_alloc(MEMORY[0x1E69788E0]);
        v12 = [v7 photoLibrary];
        [v11 initWithOids:v10 photoLibrary:v12 fetchType:0 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

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

- (void)_updateDataSourceWithItemChanges:(id)a3 fromDataSourceIdentifier:(int64_t)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [[PXSharedLibraryIncludedPeopleDataSource alloc] initWithInfos:self->_infos infosWithBothPeopleAndParticipants:self->_infosWithBothPeopleAndParticipants infosWithoutPeople:self->_infosWithoutPeople];
  v8 = [off_1E77218B0 alloc];
  v9 = [(PXSharedLibraryIncludedPeopleDataSource *)v7 identifier];
  v10 = [off_1E7721450 changeDetailsWithNoChanges];
  v13 = &unk_1F190B968;
  v14[0] = v6;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];

  v12 = [v8 initWithFromDataSourceIdentifier:a4 toDataSourceIdentifier:v9 sectionChanges:v10 itemChangeDetailsBySection:v11 subitemChangeDetailsByItemBySection:0];
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
    v3 = [(PXSectionedDataSourceManager *)self dataSourceIfExists];

    if (v3)
    {
      v4 = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self createInitialDataSource];
      [(PXSectionedDataSourceManager *)self setDataSource:v4 changeDetails:0];
    }
  }
}

- (void)_updateDataSource
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(PXSharedLibraryAssistantViewModel *)self->_viewModel participantDataSource];
  v5 = [v4 participants];
  v6 = [v3 setWithArray:v5];

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
    v3 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v4 = [(PXSectionedDataSourceManager *)self dataSource];
    v3 = [v4 allPersonUUIDs];
  }

  v5 = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PXSharedLibraryIncludedPeopleDataSourceManager__updateViewModel__block_invoke;
  v7[3] = &unk_1E7749B98;
  v8 = v3;
  v6 = v3;
  [v5 performChanges:v7];
}

- (void)_updateViewModelInitially
{
  v3 = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__PXSharedLibraryIncludedPeopleDataSourceManager__updateViewModelInitially__block_invoke;
  v4[3] = &unk_1E7749B98;
  v4[4] = self;
  [v3 performInitialChanges:v4];
}

void __75__PXSharedLibraryIncludedPeopleDataSourceManager__updateViewModelInitially__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 dataSource];
  v4 = [v5 allPersonUUIDs];
  [v3 setPersonUUIDs:v4];
}

- (void)setDataSource:(id)a3 changeDetailsArray:(id)a4
{
  v5.receiver = self;
  v5.super_class = PXSharedLibraryIncludedPeopleDataSourceManager;
  [(PXSectionedDataSourceManager *)&v5 setDataSource:a3 changeDetailsArray:a4];
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
  v3 = [(PXSharedLibraryIncludedPeopleDataSourceManager *)self viewModel];
  v4 = [v3 sharedLibrary];
  v5 = [v4 isInPreview];

  if (v5)
  {
    [v3 personUUIDs];
    objc_claimAutoreleasedReturnValue();
    PXMap();
  }

  v27 = v3;
  if ([v3 mode] == 2)
  {
    v6 = [v3 sharedLibrary];
    PXSharedLibraryUIParticipantsForSharedLibrary(v6, 2u);
  }

  v7 = [v3 participantDataSource];
  v8 = [v7 participants];

  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v8;
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

- (PXSharedLibraryIncludedPeopleDataSourceManager)initWithViewModel:(id)a3
{
  v5 = a3;
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

    objc_storeStrong(&v6->_viewModel, a3);
    [(PXSharedLibraryAssistantViewModel *)v6->_viewModel registerChangeObserver:v6 context:PXSharedLibraryAssistantViewModelObservationContext_132151];
  }

  return v6;
}

@end