@interface PLDataMigratorSupport
- (PLDataMigratorSupport)initWithPathManager:(id)a3;
- (void)recordDataMigrationInfo:(id)a3;
- (void)removeAsidePhotosDatabase;
- (void)removeInternalMemoriesRelatedSnapshotDirectory;
- (void)removeLegacyMetadataFiles;
- (void)removeModelInterestDatabase;
@end

@implementation PLDataMigratorSupport

- (void)removeLegacyMetadataFiles
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager privateDirectoryWithSubType:5 createIfNeeded:0 error:0];
  v3 = [v2 stringByAppendingPathComponent:@"NVP_HIDDENFACES.hiddenfacemetadata"];
  v4 = [MEMORY[0x1E69BF238] fileManager];
  if ([v4 fileExistsAtPath:v3])
  {
    v8 = 0;
    v5 = [v4 removeItemAtPath:v3 error:&v8];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      v7 = PLMigrationGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to remove hidden faces metadata file with error: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (void)removeAsidePhotosDatabase
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager photosAsideDatabasePath];
  [MEMORY[0x1E69BF238] removeDisconnectedSQLiteDatabaseFileWithPath:v2 error:0];
}

- (void)removeInternalMemoriesRelatedSnapshotDirectory
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager legacyMemoriesRelatedSnapshotDirectory];
  v3 = [MEMORY[0x1E69BF238] fileManager];
  v4 = v3;
  v10 = 0;
  if (v2 && [v3 fileExistsAtPath:v2 isDirectory:&v10] && v10 == 1)
  {
    v9 = 0;
    v5 = [v4 removeItemAtPath:v2 error:&v9];
    v6 = v9;
    v7 = v6;
    if (!v5 || v6)
    {
      v8 = PLMigrationGetLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v12 = v2;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Failed to clean up %@ [%@]", buf, 0x16u);
      }
    }
  }
}

- (void)removeModelInterestDatabase
{
  v2 = [(PLPhotoLibraryPathManager *)self->_pathManager legacyModelInterestDatabasePath];
  [MEMORY[0x1E69BF238] removeDisconnectedSQLiteDatabaseFileWithPath:v2 error:0];
}

- (void)recordDataMigrationInfo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLPhotoLibraryPathManager *)self->_pathManager photoDirectoryWithType:6];
  v21 = 0;
  v6 = [MEMORY[0x1E69BF238] createDirectoryAtPath:v5 error:&v21];
  v7 = v21;
  if ((v6 & 1) == 0)
  {
    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = v5;
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Unable to create directory: %{public}@, reason: %{public}@", buf, 0x16u);
    }
  }

  v9 = [v5 stringByAppendingPathComponent:*MEMORY[0x1E69BFCE8]];
  v20 = 0;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:100 options:0 error:&v20];
  v11 = v20;

  if (v10)
  {
    v19 = v11;
    v12 = [v10 writeToFile:v9 options:1073741825 error:&v19];
    v13 = v19;

    if (v12)
    {
      goto LABEL_13;
    }

    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v23 = v4;
      v24 = 2114;
      v25 = v9;
      v26 = 2114;
      v27 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Unable to write info dictionary: %{public}@ to %{public}@, reason: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v14 = PLMigrationGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = v4;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Unable to create data from info dictionary: %{public}@, reason: %{public}@", buf, 0x16u);
    }

    v13 = v11;
  }

LABEL_13:
  v18 = v13;
  v15 = [MEMORY[0x1E69BF238] changeFileOwnerToMobileAtPath:v9 error:&v18];
  v16 = v18;

  if ((v15 & 1) == 0)
  {
    v17 = PLMigrationGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v23 = v9;
      v24 = 2114;
      v25 = v16;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Unable to change owner of file at path: %{public}@, reason: %{public}@", buf, 0x16u);
    }
  }
}

- (PLDataMigratorSupport)initWithPathManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLDataMigratorSupport;
  v6 = [(PLDataMigratorSupport *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pathManager, a3);
  }

  return v7;
}

@end