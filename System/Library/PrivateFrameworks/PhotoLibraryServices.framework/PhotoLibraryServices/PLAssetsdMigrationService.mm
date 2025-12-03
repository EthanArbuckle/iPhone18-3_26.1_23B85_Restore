@interface PLAssetsdMigrationService
+ (BOOL)applyBackupExclusionToFileProviderDocumentStorage:(id *)storage;
+ (id)photosFileProviderManagerDocumentStorageURL:(id *)l;
- (PLAssetsdMigrationService)initWithLibraryServicesManager:(id)manager;
- (void)_migrateWellknownLibraries;
- (void)cleanupModelForDataMigrationForRestoreType:(int64_t)type reply:(id)reply;
- (void)dataMigrationWillFinishWithReply:(id)reply;
@end

@implementation PLAssetsdMigrationService

- (void)_migrateWellknownLibraries
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E69BF2A0] libraryCreateOptionsForWellKnownLibraryIdentifier:3];
  v15 = @"PLPhotoLibraryCreateOptions";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4];
  v16[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:3];
  [v3 setObject:v6 forKeyedSubscript:v7];

  v8 = [MEMORY[0x1E69BF360] transaction:"-[PLAssetsdMigrationService _migrateWellknownLibraries]"];
  backgroundQueue = self->_backgroundQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PLAssetsdMigrationService__migrateWellknownLibraries__block_invoke;
  block[3] = &unk_1E7578848;
  v13 = v3;
  v14 = v8;
  v10 = v8;
  v11 = v3;
  dispatch_async(backgroundQueue, block);
}

uint64_t __55__PLAssetsdMigrationService__migrateWellknownLibraries__block_invoke(uint64_t a1)
{
  [*(a1 + 32) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_27921];
  v2 = *(a1 + 40);

  return [v2 stillAlive];
}

void __55__PLAssetsdMigrationService__migrateWellknownLibraries__block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [a2 integerValue];
  v3 = [MEMORY[0x1E69BF2A0] wellKnownPhotoLibraryURLForIdentifier:v2];
  v4 = PLMigrationGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PLStringFromWellKnownPhotoLibraryIdentifier();
    *buf = 138412546;
    v26 = v5;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "migrate %@ at %@ STARTING", buf, 0x16u);
  }

  v6 = +[PLPhotoLibraryBundleController sharedBundleController];
  v7 = [v6 openBundleAtLibraryURL:v3];

  v8 = [[PLLibraryOpenerCreationOptions alloc] initWithWellKnownLibraryIdentifier:v2];
  v9 = [v7 libraryServicesManager];
  [v9 setCreateMode:1 options:v8];

  v10 = [v7 libraryServicesManager];
  v24 = 0;
  v11 = [v10 activate:&v24];
  v12 = v24;

  if (v11)
  {
    v13 = [v7 libraryServicesManager];
    v23 = v12;
    v14 = [v13 awaitLibraryState:7 error:&v23];
    v15 = v23;

    v16 = PLMigrationGetLog();
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = PLStringFromWellKnownPhotoLibraryIdentifier();
        *buf = 138412290;
        v26 = v18;
        v19 = "migrate %@ COMPLETE";
        v20 = v17;
        v21 = OS_LOG_TYPE_DEFAULT;
        v22 = 12;
LABEL_10:
        _os_log_impl(&dword_19BF1F000, v20, v21, v19, buf, v22);
      }
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = PLStringFromWellKnownPhotoLibraryIdentifier();
      *buf = 138412546;
      v26 = v18;
      v27 = 2112;
      v28 = v15;
      v19 = "migrate %@ FAILED: %@";
      v20 = v17;
      v21 = OS_LOG_TYPE_ERROR;
      v22 = 22;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v15 = v12;
LABEL_12:
}

- (void)dataMigrationWillFinishWithReply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v12 = 0u;
  *sel = 0u;
  v11 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v11) = enabled;
  if (enabled)
  {
    *(&v11 + 1) = _os_activity_create(&dword_19BF1F000, "PLXPC Service: dataMigrationWillFinishWithReply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v12 + 8));
  }

  v6 = PLMigrationGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    qos_class_self();
    v7 = PLStringFromQoSClass();
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Received data migration will finish at QoS: %{public}@", buf, 0xCu);
  }

  pl_dispatch_once();
  [(PLAssetsdMigrationService *)self _migrateWellknownLibraries];
  replyCopy[2](replyCopy);
  if (v11 == 1)
  {
    os_activity_scope_leave((&v12 + 8));
  }

  if (v12)
  {
    v8 = PLRequestGetLog();
    v9 = v8;
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v15 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v9, OS_SIGNPOST_INTERVAL_END, v12, "Received Clean up model after data migration for restore type %{public}@ at QoS: %{public}@", "%{public}s", buf, 0xCu);
    }
  }
}

void __62__PLAssetsdMigrationService_dataMigrationWillFinishWithReply___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    qos_class_self();
    v3 = PLStringFromQoSClass();
    *buf = 138543362;
    v29 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Running data migration will finish at QoS: %{public}@", buf, 0xCu);
  }

  v4 = [*(a1 + 32) libraryServicesManager];
  v5 = [v4 modelMigrator];
  v6 = [v5 deviceRestoreMigrationSupport];
  v7 = [v6 isRestoreFromBackupSourceCloud];

  if (v7)
  {
    v8 = PLMigrationGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Not importing file system data in data migrator will finish due to OTA restore", buf, 2u);
    }

    v9 = [v4 modelMigrator];
    [v9 dontImportFileSystemDataIntoDatabaseWithPhotoLibrary:0];

    v10 = [v4 modelMigrator];
    v11 = [v10 postProcessingToken];

    if ([v11 needsToPrepareForBackgroundRestore])
    {
      v12 = [v4 libraryURL];
      v13 = objc_alloc_init(PLPhotoLibraryOptions);
      [(PLPhotoLibraryOptions *)v13 setRequiredState:6];
      v27 = 0;
      v14 = [PLPhotoLibrary newPhotoLibraryWithName:"[PLAssetsdMigrationService dataMigrationWillFinishWithReply:]_block_invoke" loadedFromURL:v12 options:v13 error:&v27];
      v15 = v27;
      if (!v14)
      {
        v16 = PLMigrationGetLog();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136446722;
          v29 = "[PLAssetsdMigrationService dataMigrationWillFinishWithReply:]_block_invoke";
          v30 = 2112;
          v31 = v12;
          v32 = 2112;
          v33 = v15;
          _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "failed to load photo library %{public}s with url %@, %@", buf, 0x20u);
        }
      }
    }

    if ([v4 isCloudPhotoLibraryEnabled])
    {
      v17 = PLMigrationGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Importing faces file system data in data migrator will finish due to OTA restore", buf, 2u);
      }

      v18 = [v4 modelMigrator];
      [v18 loadFacesFileSystemDataIntoDatabase];
    }
  }

  v19 = [MEMORY[0x1E69BF360] transaction:"-[PLAssetsdMigrationService dataMigrationWillFinishWithReply:]_block_invoke"];
  v20 = *(a1 + 32);
  v21 = *(v20 + 16);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __62__PLAssetsdMigrationService_dataMigrationWillFinishWithReply___block_invoke_2;
  v24[3] = &unk_1E75761B8;
  v24[4] = v20;
  v25 = v4;
  v26 = v19;
  v22 = v19;
  v23 = v4;
  dispatch_async(v21, v24);
}

void __62__PLAssetsdMigrationService_dataMigrationWillFinishWithReply___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v2 = [objc_opt_class() applyBackupExclusionToFileProviderDocumentStorage:&v11];
  v3 = v11;
  v4 = PLMigrationGetLog();
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "Wrote backup exclusion attribute on photos file provider document storage URL";
      v7 = v5;
      v8 = OS_LOG_TYPE_INFO;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v7, v8, v6, buf, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v13 = v3;
    v6 = "Failed to write backup exclusion on photos file provider document storage URL, %@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 12;
    goto LABEL_6;
  }

  +[PLModelMigrator waitForDataMigratorToExit];
  v10 = [*(a1 + 40) modelMigrator];
  [v10 migratePersonContactInfo];

  [*(a1 + 48) stillAlive];
}

- (void)cleanupModelForDataMigrationForRestoreType:(int64_t)type reply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  enabled = [MEMORY[0x1E69BF350] enabled];
  LOBYTE(v23) = enabled;
  if (enabled)
  {
    v8 = _os_activity_create(&dword_19BF1F000, "PLXPC Service: cleanupModelForDataMigrationForRestoreType:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v9 = *(&v23 + 1);
    *(&v23 + 1) = v8;

    os_activity_scope_enter(v8, (&v24 + 8));
  }

  v10 = PLMigrationGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if ((type - 1) > 2)
    {
      v11 = @"none";
    }

    else
    {
      v11 = off_1E7573E80[type - 1];
    }

    v12 = v11;
    qos_class_self();
    v13 = PLStringFromQoSClass();
    *buf = 138543618;
    v27 = v12;
    v28 = 2114;
    v29 = v13;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Received Clean up model after data migration for restore type %{public}@ at QoS: %{public}@", buf, 0x16u);
  }

  dataMigratordQueue = self->_dataMigratordQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PLAssetsdMigrationService_cleanupModelForDataMigrationForRestoreType_reply___block_invoke;
  block[3] = &unk_1E7575338;
  block[4] = self;
  typeCopy = type;
  v15 = replyCopy;
  v21 = v15;
  dispatch_async(dataMigratordQueue, block);

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v17, OS_SIGNPOST_INTERVAL_END, v18, "Received Clean up model after data migration for restore type %{public}@ at QoS: %{public}@", "%{public}s", buf, 0xCu);
    }
  }
}

uint64_t __78__PLAssetsdMigrationService_cleanupModelForDataMigrationForRestoreType_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) libraryServicesManager];
  v3 = [v2 modelMigrator];
  [v3 cleanupModelForDataMigrationForRestoreType:*(a1 + 48)];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (PLAssetsdMigrationService)initWithLibraryServicesManager:(id)manager
{
  v12.receiver = self;
  v12.super_class = PLAssetsdMigrationService;
  v3 = [(PLAbstractLibraryServicesManagerService *)&v12 initWithLibraryServicesManager:manager];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.assetsd.migration-services", v4);
    v6 = *(v3 + 2);
    *(v3 + 2) = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

    v9 = dispatch_queue_create_with_target_V2("com.apple.assetsd.migration-services.data-migrator", v8, *(v3 + 2));
    v10 = *(v3 + 3);
    *(v3 + 3) = v9;
  }

  return v3;
}

+ (BOOL)applyBackupExclusionToFileProviderDocumentStorage:(id *)storage
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v3 = [self photosFileProviderManagerDocumentStorageURL:&v13];
  v4 = v13;
  if (v3)
  {
    v12 = v4;
    v5 = [MEMORY[0x1E69BF2A8] setTimeMachineExclusionAttribute:1 url:v3 error:&v12];
    v6 = v12;
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to apply backup exclusion, %@", v4];
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69BFF48];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];

    v6 = [v8 errorWithDomain:v9 code:41003 userInfo:v10];

    v5 = 0;
    v4 = v7;
  }

  return v5;
}

+ (id)photosFileProviderManagerDocumentStorageURL:(id *)l
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E6967510]) _initWithProviderIdentifier:@"com.apple.mobileslideshow.PhotosFileProvider" groupName:@"group.com.apple.mobileslideshow.PhotosFileProvider"];
  v5 = v4;
  if (v4)
  {
    documentStorageURL = [v4 documentStorageURL];
    if (documentStorageURL)
    {
      goto LABEL_8;
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E69BFF48];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = @"Unable to retrieve photos file provider manager document storage URL";
    v9 = MEMORY[0x1E695DF20];
    v10 = v18;
    v11 = &v17;
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v8 = *MEMORY[0x1E69BFF48];
    v15 = *MEMORY[0x1E696A578];
    v16 = @"Unable to access photos file provider manager";
    v9 = MEMORY[0x1E695DF20];
    v10 = &v16;
    v11 = &v15;
  }

  v12 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
  v13 = [v7 errorWithDomain:v8 code:41003 userInfo:v12];
  if (l)
  {
    v13 = v13;
    *l = v13;
  }

  documentStorageURL = 0;
LABEL_8:

  return documentStorageURL;
}

@end