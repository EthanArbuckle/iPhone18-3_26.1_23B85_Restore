@interface PSIMemoryTranslator
+ (id)_endDateForMemory:(id)memory;
+ (id)_fetchCuratedAssetsForMemory:(id)memory sortedAscending:(BOOL)ascending;
+ (id)_startDateForMemory:(id)memory;
+ (id)psiCollectionFromMemory:(id)memory indexingContext:(id)context;
@end

@implementation PSIMemoryTranslator

+ (id)_fetchCuratedAssetsForMemory:(id)memory sortedAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  memoryCopy = memory;
  v7 = +[PLManagedAsset entityName];
  v8 = [v5 fetchRequestWithEntityName:v7];

  [v8 setPropertiesToFetch:&unk_1F0FBFAD8];
  v9 = MEMORY[0x1E696AE18];
  objectID = [memoryCopy objectID];
  v11 = [v9 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", objectID];
  [v8 setPredicate:v11];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:ascendingCopy];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v8 setSortDescriptors:v13];

  [v8 setFetchLimit:1];
  managedObjectContext = [memoryCopy managedObjectContext];

  v17 = 0;
  v15 = [managedObjectContext executeFetchRequest:v8 error:&v17];

  return v15;
}

+ (id)_endDateForMemory:(id)memory
{
  v3 = [self _fetchCuratedAssetsForMemory:memory sortedAscending:0];
  firstObject = [v3 firstObject];
  dateCreated = [firstObject dateCreated];

  return dateCreated;
}

+ (id)_startDateForMemory:(id)memory
{
  v3 = [self _fetchCuratedAssetsForMemory:memory sortedAscending:1];
  firstObject = [v3 firstObject];
  dateCreated = [firstObject dateCreated];

  return dateCreated;
}

+ (id)psiCollectionFromMemory:(id)memory indexingContext:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  contextCopy = context;
  uuid = [memoryCopy uuid];
  valid = PLIsValidUUIDString();

  if (valid)
  {
    calendar = [contextCopy calendar];
    curatedAssets = [memoryCopy curatedAssets];
    v12 = [curatedAssets count];

    if (v12)
    {
      title = [memoryCopy title];
      v14 = [title stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F0F06D80];

      v15 = [self _startDateForMemory:memoryCopy];
      v16 = [self _endDateForMemory:memoryCopy];
      v25 = contextCopy;
      v17 = [[PSIDate alloc] initWithUniversalDate:v15 calendar:calendar];
      v18 = [[PSIDate alloc] initWithUniversalDate:v16 calendar:calendar];
      v19 = [PSICollection alloc];
      uuid2 = [memoryCopy uuid];
      v21 = [(PSICollection *)v19 initWithUUID:uuid2 startDate:v17 endDate:v18 title:v14 subtitle:0 type:2 assetsCountPrivate:v12 assetsCountShared:v12 sortDate:v15];

      contextCopy = v25;
      [(PSIObject *)v21 addContentString:v14 category:1401 owningCategory:0];

      goto LABEL_10;
    }

    uuid4 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(uuid4, OS_LOG_TYPE_ERROR))
    {
      uuid3 = [memoryCopy uuid];
      *buf = 138543362;
      v27 = uuid3;
      _os_log_impl(&dword_19BF1F000, uuid4, OS_LOG_TYPE_ERROR, "No curated assets for Memory. Not adding to PSI: %{public}@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  calendar = PLSearchBackendModelTranslationGetLog();
  if (os_log_type_enabled(calendar, OS_LOG_TYPE_ERROR))
  {
    uuid4 = [memoryCopy uuid];
    *buf = 138543362;
    v27 = uuid4;
    _os_log_impl(&dword_19BF1F000, calendar, OS_LOG_TYPE_ERROR, "Invalid Memory UUID: %{public}@. Not inserting Memory into PSI.", buf, 0xCu);
LABEL_8:
  }

  v21 = 0;
LABEL_10:

  return v21;
}

@end