@interface PSIMemoryTranslator
+ (id)_endDateForMemory:(id)a3;
+ (id)_fetchCuratedAssetsForMemory:(id)a3 sortedAscending:(BOOL)a4;
+ (id)_startDateForMemory:(id)a3;
+ (id)psiCollectionFromMemory:(id)a3 indexingContext:(id)a4;
@end

@implementation PSIMemoryTranslator

+ (id)_fetchCuratedAssetsForMemory:(id)a3 sortedAscending:(BOOL)a4
{
  v4 = a4;
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  v6 = a3;
  v7 = +[PLManagedAsset entityName];
  v8 = [v5 fetchRequestWithEntityName:v7];

  [v8 setPropertiesToFetch:&unk_1F0FBFAD8];
  v9 = MEMORY[0x1E696AE18];
  v10 = [v6 objectID];
  v11 = [v9 predicateWithFormat:@"memoriesBeingCuratedAssets CONTAINS %@", v10];
  [v8 setPredicate:v11];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:v4];
  v18[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v8 setSortDescriptors:v13];

  [v8 setFetchLimit:1];
  v14 = [v6 managedObjectContext];

  v17 = 0;
  v15 = [v14 executeFetchRequest:v8 error:&v17];

  return v15;
}

+ (id)_endDateForMemory:(id)a3
{
  v3 = [a1 _fetchCuratedAssetsForMemory:a3 sortedAscending:0];
  v4 = [v3 firstObject];
  v5 = [v4 dateCreated];

  return v5;
}

+ (id)_startDateForMemory:(id)a3
{
  v3 = [a1 _fetchCuratedAssetsForMemory:a3 sortedAscending:1];
  v4 = [v3 firstObject];
  v5 = [v4 dateCreated];

  return v5;
}

+ (id)psiCollectionFromMemory:(id)a3 indexingContext:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  valid = PLIsValidUUIDString();

  if (valid)
  {
    v10 = [v7 calendar];
    v11 = [v6 curatedAssets];
    v12 = [v11 count];

    if (v12)
    {
      v13 = [v6 title];
      v14 = [v13 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F0F06D80];

      v15 = [a1 _startDateForMemory:v6];
      v16 = [a1 _endDateForMemory:v6];
      v25 = v7;
      v17 = [[PSIDate alloc] initWithUniversalDate:v15 calendar:v10];
      v18 = [[PSIDate alloc] initWithUniversalDate:v16 calendar:v10];
      v19 = [PSICollection alloc];
      v20 = [v6 uuid];
      v21 = [(PSICollection *)v19 initWithUUID:v20 startDate:v17 endDate:v18 title:v14 subtitle:0 type:2 assetsCountPrivate:v12 assetsCountShared:v12 sortDate:v15];

      v7 = v25;
      [(PSIObject *)v21 addContentString:v14 category:1401 owningCategory:0];

      goto LABEL_10;
    }

    v22 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [v6 uuid];
      *buf = 138543362;
      v27 = v23;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "No curated assets for Memory. Not adding to PSI: %{public}@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v10 = PLSearchBackendModelTranslationGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v22 = [v6 uuid];
    *buf = 138543362;
    v27 = v22;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Invalid Memory UUID: %{public}@. Not inserting Memory into PSI.", buf, 0xCu);
LABEL_8:
  }

  v21 = 0;
LABEL_10:

  return v21;
}

@end