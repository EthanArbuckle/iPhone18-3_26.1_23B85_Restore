@interface PXSharedLibraryParticipantDataSourceManager
+ (id)aggregatedDataSourceWithParticipants:(id)participants;
- (id)createInitialDataSource;
- (id)pauseChangeDeliveryWithTimeout:(double)timeout identifier:(id)identifier;
- (void)addParticipants:(id)participants;
- (void)performChanges:(id)changes;
- (void)removeParticipantAtIndex:(unint64_t)index;
- (void)replaceDataSourceWithDataSource:(id)source;
- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading;
@end

@implementation PXSharedLibraryParticipantDataSourceManager

- (void)resumeChangeDeliveryAndBackgroundLoading:(id)loading
{
  loadingCopy = loading;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSourceManager.m" lineNumber:118 description:@"Resuming changes is not supported in PXSharedLibraryParticipantDataSourceManager."];

  abort();
}

- (id)pauseChangeDeliveryWithTimeout:(double)timeout identifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSourceManager.m" lineNumber:114 description:@"Pausing changes is not supported in PXSharedLibraryParticipantDataSourceManager."];

  abort();
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXSharedLibraryParticipantDataSourceManager;
  [(PXSharedLibraryParticipantDataSourceManager *)&v3 performChanges:changes];
}

- (void)removeParticipantAtIndex:(unint64_t)index
{
  v21[1] = *MEMORY[0x1E69E9840];
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  participants = [dataSource participants];
  v6 = [participants mutableCopy];

  v7 = [v6 objectAtIndexedSubscript:index];
  [v6 removeObjectAtIndex:index];
  v8 = [[PXSharedLibraryParticipantDataSource alloc] _initWithParticipants:v6];
  v21[0] = v7;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
  participants2 = [dataSource participants];
  participants3 = [v8 participants];
  v12 = [off_1E7721450 changeDetailsFromArray:participants2 toArray:participants3 changedObjects:v9];

  v13 = [off_1E77218B0 alloc];
  identifier = [dataSource identifier];
  identifier2 = [v8 identifier];
  v19 = &unk_1F190CDC0;
  v20 = v12;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v17 = [v13 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:v12 itemChangeDetailsBySection:v16 subitemChangeDetailsByItemBySection:0];

  [(PXSectionedDataSourceManager *)self setDataSource:v8 changeDetails:v17];
}

- (void)addParticipants:(id)participants
{
  v49 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  if (([dataSource canAddParticipants] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSourceManager.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"currentDataSource.canAddParticipants"}];
  }

  v7 = [participantsCopy count];
  if (v7 > 5 - [dataSource numberOfParticipants])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSharedLibraryParticipantDataSourceManager.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"newParticipants.count <= PXSharedLibraryParticipantsMaxCount - currentDataSource.numberOfParticipants"}];
  }

  selfCopy = self;
  v41 = dataSource;
  participants = [dataSource participants];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  pl_sharedAccountStore = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
  cachedPrimaryAppleAccount = [pl_sharedAccountStore cachedPrimaryAppleAccount];
  username = [cachedPrimaryAppleAccount username];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v13 = participantsCopy;
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
        appleIDAddress = [v18 appleIDAddress];
        v20 = [appleIDAddress caseInsensitiveCompare:username];

        if (([participants containsObject:v18] & 1) == 0 && (objc_msgSend(v9, "containsObject:", v18) & 1) == 0 && v20)
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
    participants2 = [v41 participants];
    v23 = [participants2 mutableCopy];

    numberOfParticipants = [v41 numberOfParticipants];
    v25 = [v9 count];
    v38 = v23;
    v39 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{numberOfParticipants, v25}];
    [v23 insertObjects:v9 atIndexes:v39];
    v26 = [[PXSharedLibraryParticipantDataSource alloc] _initWithParticipants:v23];
    v37 = [v13 copy];
    participants3 = [v41 participants];
    participants4 = [v26 participants];
    v29 = [off_1E7721450 changeDetailsFromArray:participants3 toArray:participants4 changedObjects:v37];

    v36 = [off_1E77218B0 alloc];
    identifier = [v41 identifier];
    identifier2 = [v26 identifier];
    v46 = &unk_1F190CDC0;
    v47 = v29;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v33 = [v36 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:v29 itemChangeDetailsBySection:v32 subitemChangeDetailsByItemBySection:0];

    v21 = v41;
    [(PXSectionedDataSourceManager *)selfCopy setDataSource:v26 changeDetails:v33];
  }
}

- (void)replaceDataSourceWithDataSource:(id)source
{
  v14[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  identifier = [dataSource identifier];
  if (identifier != [sourceCopy identifier])
  {
    changeDetailsWithNoIncrementalChanges = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
    v8 = [off_1E77218B0 alloc];
    identifier2 = [dataSource identifier];
    identifier3 = [sourceCopy identifier];
    v13 = &unk_1F190CDC0;
    v14[0] = changeDetailsWithNoIncrementalChanges;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v12 = [v8 initWithFromDataSourceIdentifier:identifier2 toDataSourceIdentifier:identifier3 sectionChanges:changeDetailsWithNoIncrementalChanges itemChangeDetailsBySection:v11 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:sourceCopy changeDetails:v12];
  }
}

- (id)createInitialDataSource
{
  v2 = objc_opt_class();

  return [v2 aggregatedDataSource];
}

+ (id)aggregatedDataSourceWithParticipants:(id)participants
{
  participantsCopy = participants;
  v4 = [[PXSharedLibraryParticipantDataSource alloc] _initWithParticipants:participantsCopy];

  return v4;
}

@end