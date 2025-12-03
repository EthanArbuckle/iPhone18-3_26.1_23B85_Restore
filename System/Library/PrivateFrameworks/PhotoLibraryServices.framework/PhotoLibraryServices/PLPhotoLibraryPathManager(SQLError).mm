@interface PLPhotoLibraryPathManager(SQLError)
- (id)_rebuildDateFormatter;
- (id)recordRebuildReason;
- (uint64_t)_createSqliteErrorIndicatorFileWithRebuildReason:()SQLError;
- (uint64_t)lastRebuildReason;
- (uint64_t)sqliteErrorIndicatorFileExists;
- (void)_abortWithRebuildReasonPLRebuildReasonBackgroundMigration;
- (void)_abortWithRebuildReasonPLRebuildReasonCorruption;
- (void)_abortWithRebuildReasonPLRebuildReasonDatabaseCorruption;
- (void)_abortWithRebuildReasonPLRebuildReasonExcessiveOrphanedSceneClassifications;
- (void)_abortWithRebuildReasonPLRebuildReasonExcessivePersistentHistorySize;
- (void)_abortWithRebuildReasonPLRebuildReasonExcessiveRecoveryAttempts;
- (void)_abortWithRebuildReasonPLRebuildReasonLightweightMigration;
- (void)_abortWithRebuildReasonPLRebuildReasonMPSPathCorruption;
- (void)_abortWithRebuildReasonPLRebuildReasonMPSUUIDCorruption;
- (void)_abortWithRebuildReasonPLRebuildReasonPathCorruption;
- (void)_abortWithRebuildReasonPLRebuildReasonPersonUUIDCorruption;
- (void)_abortWithRebuildReasonPLRebuildReasonSharedAlbumPathCorruption;
- (void)_abortWithRebuildReasonPLRebuildReasonSharedAlbumUUIDCorruption;
- (void)_abortWithRebuildReasonPLRebuildReasonSimulatedCorruption;
- (void)_abortWithRebuildReasonPLRebuildReasonStagedDemoContentInstallation;
- (void)_abortWithRebuildReasonPLRebuildReasonTooManyOrphanedRecords;
- (void)_abortWithRebuildReasonPLRebuildReasonTooManyThumbnailRebuilds;
- (void)_abortWithRebuildReasonPLRebuildReasonUUIDCorruption;
- (void)_abortWithRebuildReasonPLRebuildReasonUnknown;
- (void)_abortWithRebuildReasonPLRebuildReasonUnknownAssetColumnTriggerCorruption;
- (void)_abortWithRebuildReasonPLRebuildReasonUpgradeForceRebuild;
- (void)removeSqliteErrorIndicatorFile;
- (void)setSqliteErrorForRebuildReason:()SQLError allowsExit:;
@end

@implementation PLPhotoLibraryPathManager(SQLError)

- (uint64_t)sqliteErrorIndicatorFileExists
{
  sqliteErrorIndicatorFilePath = [self sqliteErrorIndicatorFilePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [defaultManager fileExistsAtPath:sqliteErrorIndicatorFilePath];

  return v3;
}

- (id)recordRebuildReason
{
  v36[1] = *MEMORY[0x1E69E9840];
  v2 = PLMigrationGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Recording rebuild reason", buf, 2u);
  }

  sqliteErrorIndicatorFilePath = [self sqliteErrorIndicatorFilePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:sqliteErrorIndicatorFilePath];

  if (!v5)
  {
    v7 = 0;
    goto LABEL_17;
  }

  v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:sqliteErrorIndicatorFilePath];
  v30 = 0;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:&v30];
  v8 = v30;
  if (!v7)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v29 = 0;
    v24 = [defaultManager2 attributesOfItemAtPath:sqliteErrorIndicatorFilePath error:&v29];
    rebuildHistoryFilePath = v29;

    if (!v24)
    {
      v10 = PLMigrationGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v32 = sqliteErrorIndicatorFilePath;
        v33 = 2112;
        v34 = rebuildHistoryFilePath;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unable to get attributes for %@: %@", buf, 0x16u);
      }

      v7 = 0;
      goto LABEL_15;
    }

    v25 = [v24 objectForKeyedSubscript:*MEMORY[0x1E696A308]];
    if (v25)
    {
      _rebuildDateFormatter = [self _rebuildDateFormatter];
      v27 = [_rebuildDateFormatter stringFromDate:v25];

      v35 = v27;
      v36[0] = &unk_1F0FBDED0;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    }

    else
    {
      v7 = 0;
    }

    if (!v7)
    {
      goto LABEL_16;
    }
  }

  PLRecordRebuildHistory(v7);
  rebuildHistoryFilePath = [self rebuildHistoryFilePath];
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = [defaultManager3 fileExistsAtPath:rebuildHistoryFilePath];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:rebuildHistoryFilePath];

    v10 = v13;
  }

  [v10 addEntriesFromDictionary:v7];
  v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:rebuildHistoryFilePath isDirectory:0];
  v28 = 0;
  v15 = [v10 writeToURL:v14 error:&v28];
  v16 = v28;

  v17 = PLMigrationGetLog();
  v18 = v17;
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = v7;
      v33 = 2112;
      v34 = rebuildHistoryFilePath;
      v19 = "Added last rebuild %@ to rebuild history file %@";
      v20 = v18;
      v21 = OS_LOG_TYPE_DEFAULT;
LABEL_13:
      _os_log_impl(&dword_19BF1F000, v20, v21, v19, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v32 = rebuildHistoryFilePath;
    v33 = 2112;
    v34 = v16;
    v19 = "Failed to update rebuild history file %@: %@";
    v20 = v18;
    v21 = OS_LOG_TYPE_ERROR;
    goto LABEL_13;
  }

LABEL_15:
LABEL_16:

LABEL_17:

  return v7;
}

- (uint64_t)lastRebuildReason
{
  v15 = *MEMORY[0x1E69E9840];
  if (![self sqliteErrorIndicatorFileExists])
  {
    return 0;
  }

  sqliteErrorIndicatorFilePath = [self sqliteErrorIndicatorFilePath];
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:sqliteErrorIndicatorFilePath];
  v12 = 0;
  v4 = [MEMORY[0x1E696AE40] propertyListWithData:v3 options:0 format:0 error:&v12];
  v5 = v12;
  if (v4)
  {
    allKeys = [v4 allKeys];
    v7 = [allKeys sortedArrayUsingSelector:sel_compare_];

    lastObject = [v7 lastObject];
    v9 = [v4 objectForKeyedSubscript:lastObject];
    integerValue = [v9 integerValue];
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to deserialize sqliteerror. Error: %@", buf, 0xCu);
    }

    integerValue = 0;
  }

  return integerValue;
}

- (void)setSqliteErrorForRebuildReason:()SQLError allowsExit:
{
  v30 = *MEMORY[0x1E69E9840];
  if ([self _createSqliteErrorIndicatorFileWithRebuildReason:?])
  {
    v7 = 0;
    if (a3 > 15)
    {
      if (a3 <= 18)
      {
        if (a3 == 16)
        {
          v8 = PLBackendGetLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v9 = "Creating sqlite error file for excessive persistent history size";
LABEL_33:
            v15 = v8;
            v16 = OS_LOG_TYPE_DEFAULT;
            goto LABEL_34;
          }
        }

        else if (a3 == 17)
        {
          v8 = PLBackendGetLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v9 = "User requested force rebuild from Settings";
            goto LABEL_30;
          }
        }

        else
        {
          v8 = PLBackendGetLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v9 = "Creating sqlite error file for background Migration failure";
            goto LABEL_30;
          }
        }

LABEL_35:
        v7 = 0;
        goto LABEL_36;
      }

      if ((a3 - 19) >= 3)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (a3 > 3)
      {
        if ((a3 - 5) >= 0xB)
        {
          if (a3 != 4)
          {
            goto LABEL_37;
          }

          v8 = PLBackendGetLog();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_35;
          }

          *buf = 0;
          v9 = "Creating sqlite error file before lightweight migration";
          goto LABEL_33;
        }

        goto LABEL_22;
      }

      if (a3 >= 2)
      {
        if (a3 == 2)
        {
          v8 = PLBackendGetLog();
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          *buf = 0;
          v12 = "Forcing all photos clients to exit to simulate a corrupt database...";
          v13 = v8;
          v14 = 2;
          goto LABEL_24;
        }

        if (a3 != 3)
        {
          goto LABEL_37;
        }

        v8 = PLBackendGetLog();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_35;
        }

        *buf = 0;
        v9 = "Forcing all photos clients to exit to install staged demo content...";
LABEL_30:
        v15 = v8;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_34:
        _os_log_impl(&dword_19BF1F000, v15, v16, v9, buf, 2u);
        goto LABEL_35;
      }
    }

LABEL_22:
    v8 = PLBackendGetLog();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_25:
      v7 = 1;
LABEL_36:

LABEL_37:
      if (a4)
      {
        v17 = objc_opt_class();
        libraryURL = [self libraryURL];
        LODWORD(v17) = [v17 isSystemPhotoLibraryURL:libraryURL];

        if (v17)
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v20 = &PLPhotoLibraryCorruptNotification;
          if (!v7)
          {
            v20 = &PLPhotoLibraryForceClientExitNotification;
          }

          CFNotificationCenterPostNotification(DarwinNotifyCenter, *v20, 0, 0, 0);
        }

        if ((PLIsAssetsd() & 1) == 0)
        {
          libraryURL2 = [self libraryURL];
          v22 = [PLPhotoLibraryBundleController sharedAssetsdClientForPhotoLibraryURL:libraryURL2];
          libraryClient = [v22 libraryClient];
          v27 = 0;
          v24 = [libraryClient validateOrRebuildPhotoLibraryDatabaseWithError:&v27];
          v25 = v27;

          if ((v24 & 1) == 0)
          {
            v26 = PLBackendGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v29 = v25;
              _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Error asking assetsd to rebuild photo library: %@", buf, 0xCu);
            }
          }
        }

        if (v7)
        {
          switch(a3)
          {
            case 0:
              [self _abortWithRebuildReasonPLRebuildReasonUnknown];
              break;
            case 1:
              [self _abortWithRebuildReasonPLRebuildReasonCorruption];
              break;
            case 2:
              [self _abortWithRebuildReasonPLRebuildReasonSimulatedCorruption];
              break;
            case 3:
              [self _abortWithRebuildReasonPLRebuildReasonStagedDemoContentInstallation];
              break;
            case 4:
              [self _abortWithRebuildReasonPLRebuildReasonLightweightMigration];
              break;
            case 5:
              [self _abortWithRebuildReasonPLRebuildReasonTooManyOrphanedRecords];
              break;
            case 6:
              [self _abortWithRebuildReasonPLRebuildReasonUUIDCorruption];
              break;
            case 7:
              [self _abortWithRebuildReasonPLRebuildReasonPathCorruption];
              break;
            case 8:
              [self _abortWithRebuildReasonPLRebuildReasonDatabaseCorruption];
              break;
            case 9:
              [self _abortWithRebuildReasonPLRebuildReasonTooManyThumbnailRebuilds];
              break;
            case 10:
              [self _abortWithRebuildReasonPLRebuildReasonUpgradeForceRebuild];
              break;
            case 11:
              [self _abortWithRebuildReasonPLRebuildReasonExcessiveRecoveryAttempts];
              break;
            case 12:
              [self _abortWithRebuildReasonPLRebuildReasonMPSPathCorruption];
              break;
            case 13:
              [self _abortWithRebuildReasonPLRebuildReasonSharedAlbumPathCorruption];
              break;
            case 14:
              [self _abortWithRebuildReasonPLRebuildReasonMPSUUIDCorruption];
              break;
            case 15:
              [self _abortWithRebuildReasonPLRebuildReasonSharedAlbumUUIDCorruption];
              break;
            case 16:
              [self _abortWithRebuildReasonPLRebuildReasonExcessivePersistentHistorySize];
              break;
            case 18:
              [self _abortWithRebuildReasonPLRebuildReasonBackgroundMigration];
              break;
            case 19:
              [self _abortWithRebuildReasonPLRebuildReasonPersonUUIDCorruption];
              break;
            case 20:
              [self _abortWithRebuildReasonPLRebuildReasonExcessiveOrphanedSceneClassifications];
              break;
            case 21:
              [self _abortWithRebuildReasonPLRebuildReasonUnknownAssetColumnTriggerCorruption];
              break;
            default:
              return;
          }
        }

        else if (a3 != 17)
        {
          if (a3 != 3)
          {
            exit(1);
          }

          PLAbortWithReason();
        }
      }

      return;
    }

    *buf = 134217984;
    v29 = a3;
    v12 = "Handling corrupt database due to rebuild reason %ld... killing all photos clients";
    v13 = v8;
    v14 = 12;
LABEL_24:
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    goto LABEL_25;
  }

  v10 = PLBackendGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sqliteErrorIndicatorFilePath = [self sqliteErrorIndicatorFilePath];
    *buf = 138412290;
    v29 = sqliteErrorIndicatorFilePath;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to create sqlite error file %@.", buf, 0xCu);
  }
}

- (void)_abortWithRebuildReasonPLRebuildReasonUnknownAssetColumnTriggerCorruption
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonExcessiveOrphanedSceneClassifications
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonPersonUUIDCorruption
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonBackgroundMigration
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonExcessivePersistentHistorySize
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonSharedAlbumUUIDCorruption
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonMPSUUIDCorruption
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonSharedAlbumPathCorruption
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonMPSPathCorruption
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonUpgradeForceRebuild
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonTooManyThumbnailRebuilds
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonDatabaseCorruption
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonPathCorruption
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonUUIDCorruption
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonTooManyOrphanedRecords
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonExcessiveRecoveryAttempts
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonCorruption
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonUnknown
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonLightweightMigration
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonStagedDemoContentInstallation
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)_abortWithRebuildReasonPLRebuildReasonSimulatedCorruption
{
  v3 = PLMigrationGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "%{public}@", &v5, 0xCu);
  }

  __break(1u);
}

- (void)removeSqliteErrorIndicatorFile
{
  v17 = *MEMORY[0x1E69E9840];
  sqliteErrorIndicatorFilePath = [self sqliteErrorIndicatorFilePath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v3 = [defaultManager removeItemAtPath:sqliteErrorIndicatorFilePath error:&v12];
  v4 = v12;

  if (v3)
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = sqliteErrorIndicatorFilePath;
      v6 = "Removed sqliteErrorIndicatorFile %@";
LABEL_4:
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 12;
LABEL_11:
      _os_log_impl(&dword_19BF1F000, v7, v8, v6, buf, v9);
    }
  }

  else if ([v4 code] == 4 && (objc_msgSend(v4, "domain"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", *MEMORY[0x1E696A250]), v10, v11))
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = sqliteErrorIndicatorFilePath;
      v6 = "sqliteErrorIndicatorFile does not exist at %@";
      goto LABEL_4;
    }
  }

  else
  {
    v5 = PLMigrationGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v14 = sqliteErrorIndicatorFilePath;
      v15 = 2112;
      v16 = v4;
      v6 = "Failed to remove sqliteErrorIndicatorFile %@, %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 22;
      goto LABEL_11;
    }
  }
}

- (uint64_t)_createSqliteErrorIndicatorFileWithRebuildReason:()SQLError
{
  v34[1] = *MEMORY[0x1E69E9840];
  sqliteErrorIndicatorFilePath = [self sqliteErrorIndicatorFilePath];
  v6 = sqliteErrorIndicatorFilePath;
  if (sqliteErrorIndicatorFilePath)
  {
    v7 = open([sqliteErrorIndicatorFilePath fileSystemRepresentation], 2689, 438);
    if ((v7 & 0x80000000) == 0)
    {
      v8 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v7 closeOnDealloc:1];
      _rebuildDateFormatter = [self _rebuildDateFormatter];
      date = [MEMORY[0x1E695DF00] date];
      v11 = [_rebuildDateFormatter stringFromDate:date];

      v33 = v11;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v34[0] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];

      v26 = 0;
      v14 = [MEMORY[0x1E696AE40] dataWithPropertyList:v13 format:200 options:0 error:&v26];
      v15 = v26;
      if (!v14)
      {
        v17 = PLBackendGetLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v28 = v13;
          v29 = 2112;
          v30 = v15;
          _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to archive %@: %@", buf, 0x16u);
        }

        v16 = 0;
        goto LABEL_15;
      }

      v25 = 0;
      v16 = [v8 writeData:v14 error:&v25];
      v17 = v25;
      v18 = PLBackendGetLog();
      v19 = v18;
      if (v16)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v28 = v13;
          v29 = 2112;
          v30 = v6;
          v20 = "Written %@ to %@";
          v21 = v19;
          v22 = OS_LOG_TYPE_DEFAULT;
          v23 = 22;
LABEL_13:
          _os_log_impl(&dword_19BF1F000, v21, v22, v20, buf, v23);
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v28 = v13;
        v29 = 2112;
        v30 = v6;
        v31 = 2112;
        v32 = v17;
        v20 = "Failed to write %@ to %@: %@";
        v21 = v19;
        v22 = OS_LOG_TYPE_ERROR;
        v23 = 32;
        goto LABEL_13;
      }

LABEL_15:
      goto LABEL_16;
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (id)_rebuildDateFormatter
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v0 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZZZZZ"];
  v1 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
  [v0 setLocale:v1];

  return v0;
}

@end