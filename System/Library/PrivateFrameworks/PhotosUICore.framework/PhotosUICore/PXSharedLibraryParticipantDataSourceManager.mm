@interface PXSharedLibraryParticipantDataSourceManager
+ (id)aggregatedDataSourceWithParticipants:(id)a3;
- (id)createInitialDataSource;
- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4;
- (void)addParticipants:(id)a3;
- (void)performChanges:(id)a3;
- (void)removeParticipantAtIndex:(unint64_t)a3;
- (void)replaceDataSourceWithDataSource:(id)a3;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3;
@end

@implementation PXSharedLibraryParticipantDataSourceManager

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSourceManager.m" lineNumber:118 description:@"Resuming changes is not supported in PXSharedLibraryParticipantDataSourceManager."];

  abort();
}

- (id)pauseChangeDeliveryWithTimeout:(double)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSourceManager.m" lineNumber:114 description:@"Pausing changes is not supported in PXSharedLibraryParticipantDataSourceManager."];

  abort();
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryParticipantDataSourceManager;
  [(PXSharedLibraryParticipantDataSourceManager *)&v3 performChanges:a3];
}

- (void)removeParticipantAtIndex:(unint64_t)a3
{
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = [(PXSectionedDataSourceManager *)self dataSource];
  v5 = [v4 participants];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectAtIndexedSubscript:a3];
  [v6 removeObjectAtIndex:a3];
  v8 = [[PXSharedLibraryParticipantDataSource alloc] _initWithParticipants:v6];
  v21[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  v10 = [v4 participants];
  v11 = [v8 participants];
  v12 = [off_1E7721450 changeDetailsFromArray:v10 toArray:v11 changedObjects:v9];

  v13 = [off_1E77218B0 alloc];
  v14 = [v4 identifier];
  v15 = [v8 identifier];
  v19 = &unk_1F190CDC0;
  v20 = v12;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v17 = [v13 initWithFromDataSourceIdentifier:v14 toDataSourceIdentifier:v15 sectionChanges:v12 itemChangeDetailsBySection:v16 subitemChangeDetailsByItemBySection:0];

  [(PXSectionedDataSourceManager *)self setDataSource:v8 changeDetails:v17];
}

- (void)addParticipants:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(PXSectionedDataSourceManager *)self dataSource];
  if (([v6 canAddParticipants] & 1) == 0)
  {
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSourceManager.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"currentDataSource.canAddParticipants"}];
  }

  v7 = [v5 count];
  if (v7 > 5 - [v6 numberOfParticipants])
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSourceManager.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"newParticipants.count <= PXSharedLibraryParticipantsMaxCount - currentDataSource.numberOfParticipants"}];
  }

  v40 = self;
  v41 = v6;
  v8 = [v6 participants];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
  v11 = [v10 cachedPrimaryAppleAccount];
  v12 = [v11 username];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v43;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v42 + 1) + 8 * i);
        v19 = [v18 appleIDAddress];
        v20 = [v19 caseInsensitiveCompare:v12];

        if (([v8 containsObject:v18] & 1) == 0 && (objc_msgSend(v9, "containsObject:", v18) & 1) == 0 && v20)
        {
          [v9 addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v15);
  }

  v21 = v41;
  if ([v9 count])
  {
    v22 = [v41 participants];
    v23 = [v22 mutableCopy];

    v24 = [v41 numberOfParticipants];
    v25 = [v9 count];
    v38 = v23;
    v39 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v24, v25}];
    [v23 insertObjects:v9 atIndexes:v39];
    v26 = [[PXSharedLibraryParticipantDataSource alloc] _initWithParticipants:v23];
    v37 = [v13 copy];
    v27 = [v41 participants];
    v28 = [v26 participants];
    v29 = [off_1E7721450 changeDetailsFromArray:v27 toArray:v28 changedObjects:v37];

    v36 = [off_1E77218B0 alloc];
    v30 = [v41 identifier];
    v31 = [v26 identifier];
    v46 = &unk_1F190CDC0;
    v47 = v29;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v33 = [v36 initWithFromDataSourceIdentifier:v30 toDataSourceIdentifier:v31 sectionChanges:v29 itemChangeDetailsBySection:v32 subitemChangeDetailsByItemBySection:0];

    v21 = v41;
    [(PXSectionedDataSourceManager *)v40 setDataSource:v26 changeDetails:v33];
  }
}

- (void)replaceDataSourceWithDataSource:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXSectionedDataSourceManager *)self dataSource];
  v6 = [v5 identifier];
  if (v6 != [v4 identifier])
  {
    v7 = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
    v8 = [off_1E77218B0 alloc];
    v9 = [v5 identifier];
    v10 = [v4 identifier];
    v13 = &unk_1F190CDC0;
    v14[0] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v12 = [v8 initWithFromDataSourceIdentifier:v9 toDataSourceIdentifier:v10 sectionChanges:v7 itemChangeDetailsBySection:v11 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:v4 changeDetails:v12];
  }
}

- (id)createInitialDataSource
{
  v2 = objc_opt_class();

  return [v2 aggregatedDataSource];
}

+ (id)aggregatedDataSourceWithParticipants:(id)a3
{
  v3 = a3;
  v4 = [[PXSharedLibraryParticipantDataSource alloc] _initWithParticipants:v3];

  return v4;
}

@end