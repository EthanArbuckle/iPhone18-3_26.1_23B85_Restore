@interface PLComputeCachePolicyDataSource
- (BOOL)hasAtLeastExpungedAssetCount:(unint64_t)count;
- (BOOL)isEnabled;
- (NSDate)lastSnapshotDate;
- (PLComputeCachePolicyDataSource)initWithPhotoLibrary:(id)library restoreState:(int64_t)state;
@end

@implementation PLComputeCachePolicyDataSource

- (NSDate)lastSnapshotDate
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__48476;
  v15 = __Block_byref_object_dispose__48477;
  v16 = 0;
  pathManager = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
  v3 = [PLComputeCacheManager baseURLFromPathManager:pathManager];

  v4 = +[PLComputeCacheManager payloadClasses];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PLComputeCachePolicyDataSource_lastSnapshotDate__block_invoke;
  v8[3] = &unk_1E756D320;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 enumerateObjectsUsingBlock:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __50__PLComputeCachePolicyDataSource_lastSnapshotDate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v10 = [[PLJournal alloc] initWithBaseURL:*(a1 + 32) payloadClass:a2];
  v6 = [(PLJournal *)v10 metadata];
  v7 = [v6 objectForKeyedSubscript:@"snapshotDate"];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    *a4 = 1;
  }
}

- (BOOL)hasAtLeastExpungedAssetCount:(unint64_t)count
{
  if (count)
  {
    *buf = 0;
    v25 = buf;
    v26 = 0x2020000000;
    v27 = 0;
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v23[3] = 0;
    v4 = self->_photoLibrary;
    pathManager = [(PLPhotoLibrary *)v4 pathManager];
    v6 = [PLComputeCacheManager baseURLFromPathManager:pathManager];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__PLComputeCachePolicyDataSource_hasAtLeastExpungedAssetCount___block_invoke;
    aBlock[3] = &unk_1E756D2D0;
    v7 = v4;
    v19 = v7;
    v20 = v23;
    v21 = buf;
    countCopy = count;
    v8 = _Block_copy(aBlock);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __63__PLComputeCachePolicyDataSource_hasAtLeastExpungedAssetCount___block_invoke_2;
    v14[3] = &unk_1E7577918;
    v9 = v6;
    v15 = v9;
    v10 = v8;
    v16 = v10;
    v17 = buf;
    [(PLPhotoLibrary *)v7 performBlockAndWait:v14];
    v11 = v25[24];

    _Block_object_dispose(v23, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v12 = PLMigrationGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "ComputeCachePolicyDataSource: minExpungedAssetCount is set to 0, always report expunged asset", buf, 2u);
    }

    v11 = 1;
  }

  return v11 & 1;
}

void __63__PLComputeCachePolicyDataSource_hasAtLeastExpungedAssetCount___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 assetIdentifiers];
  v11 = [v6 allObjects];

  v7 = [v5 assetIdentifierType];
  v8 = [*(a1 + 32) managedObjectContext];
  if (v7 == 1)
  {
    v9 = [PLManagedAsset countForAssetsWithCloudAssetGUIDs:v11 includePendingChanges:0 inManagedObjectContext:v8 error:0];
  }

  else
  {
    v9 = [PLManagedAsset countForAssetsWithUUIDs:v11 includePendingChanges:0 inManagedObjectContext:v8 error:0];
  }

  v10 = v9;

  if (v10 < [v11 count])
  {
    *(*(*(a1 + 40) + 8) + 24) += [v11 count] - v10;
  }

  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) >= *(a1 + 56);
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *a3 = 1;
  }
}

void __63__PLComputeCachePolicyDataSource_hasAtLeastExpungedAssetCount___block_invoke_2(uint64_t a1)
{
  v2 = +[PLComputeCacheManager payloadClasses];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__PLComputeCachePolicyDataSource_hasAtLeastExpungedAssetCount___block_invoke_3;
  v5[3] = &unk_1E756D2F8;
  v6 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v2 enumerateObjectsUsingBlock:v5];
}

void __63__PLComputeCachePolicyDataSource_hasAtLeastExpungedAssetCount___block_invoke_3(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = [[PLJournal alloc] initWithBaseURL:a1[4] payloadClass:a2];
  v8 = a1[5];
  v13 = 0;
  v9 = [(PLJournal *)v7 enumeratePayloadsUsingBlock:v8 error:&v13];
  v10 = v13;
  if (!v9)
  {
    v11 = PLMigrationGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [a2 payloadClassID];
      *buf = 138412546;
      v15 = v12;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "ComputeCachePolicyDataSource: Failed to enumerate %@ journal. Error: %@", buf, 0x16u);
    }
  }

  if (*(*(a1[6] + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

- (BOOL)isEnabled
{
  pathManager = [(PLPhotoLibrary *)self->_photoLibrary pathManager];
  v3 = [PLComputeCacheManager isEnabledWithPathManager:pathManager error:0];

  return v3;
}

- (PLComputeCachePolicyDataSource)initWithPhotoLibrary:(id)library restoreState:(int64_t)state
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLComputeCachePolicyDataSource.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
  }

  v13.receiver = self;
  v13.super_class = PLComputeCachePolicyDataSource;
  v9 = [(PLComputeCachePolicyDataSource *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, library);
    v10->_restoreState = state;
  }

  return v10;
}

@end