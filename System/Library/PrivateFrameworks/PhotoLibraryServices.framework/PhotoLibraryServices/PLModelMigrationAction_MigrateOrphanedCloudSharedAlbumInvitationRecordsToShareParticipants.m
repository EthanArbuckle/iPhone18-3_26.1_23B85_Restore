@interface PLModelMigrationAction_MigrateOrphanedCloudSharedAlbumInvitationRecordsToShareParticipants
- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4;
@end

@implementation PLModelMigrationAction_MigrateOrphanedCloudSharedAlbumInvitationRecordsToShareParticipants

- (int64_t)performActionWithManagedObjectContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLCloudSharedAlbumInvitationRecord entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setFetchBatchSize:100];
  v10 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
  v11 = objc_initWeak(&location, self);

  v12 = objc_alloc(MEMORY[0x1E69BF270]);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __138__PLModelMigrationAction_MigrateOrphanedCloudSharedAlbumInvitationRecordsToShareParticipants_performActionWithManagedObjectContext_error___block_invoke;
  v33[3] = &unk_1E7573318;
  objc_copyWeak(&v35, &location);
  v13 = v10;
  v34 = v13;
  v14 = [v12 initWithBlock:v33];

  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);
  v15 = [PLPersonInfoManager alloc];
  v16 = [(PLModelMigrationActionCore *)self pathManager];
  v17 = [(PLPersonInfoManager *)v15 initWithPathManager:v16 lazyAssetsdClient:v14];

  v32 = 0;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __138__PLModelMigrationAction_MigrateOrphanedCloudSharedAlbumInvitationRecordsToShareParticipants_performActionWithManagedObjectContext_error___block_invoke_2;
  v29 = &unk_1E7567F70;
  v18 = v6;
  v30 = v18;
  v19 = v17;
  v31 = v19;
  v20 = [PLModelMigrationActionUtility processManagedObjectsWithAction:self managedObjectContext:v18 fetchRequest:v9 pendingParentUnitCount:0 error:&v32 processingBlock:&v26];
  v21 = v32;
  [(PLModelMigrationActionCore *)self finalizeProgress:v26];
  v22 = v21;
  v23 = v22;
  if (v20 != 1 && a4)
  {
    v24 = v22;
    *a4 = v23;
  }

  return v20;
}

@end