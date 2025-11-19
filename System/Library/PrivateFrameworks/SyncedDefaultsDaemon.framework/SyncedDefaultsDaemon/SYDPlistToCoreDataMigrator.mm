@interface SYDPlistToCoreDataMigrator
+ (BOOL)isSharedIPad;
+ (BOOL)migrateAllPlistsToCoreDataStore:(id)a3 deleteMigratedPlists:(BOOL)a4 libraryDirectoryURL:(id)a5 error:(id *)a6;
+ (BOOL)migratePlist:(id)a3 forStoreWithIdentifier:(id)a4 toCoreDataStore:(id)a5 error:(id *)a6;
+ (BOOL)shouldIncrementFailureCountForError:(id)a3;
+ (BOOL)shouldStopMigrationAfterError:(id)a3;
+ (BOOL)shouldUseTransactionForPlistAtURL:(id)a3;
+ (id)allPossibleStorePlistURLsWithLibraryDirectoryURL:(id)a3;
+ (id)keyValueStorePlistFromURL:(id)a3 error:(id *)a4;
+ (id)knownDaemons;
+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(id)a3 toDictionary:(id)a4 uncontainerizedSyncedPreferencesDirectoryURL:(id)a5;
+ (void)addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary:(id)a3 uncontainerizedSyncedPreferencesDirectoryURL:(id)a4;
+ (void)addPlistURLsForBundleIdentifier:(id)a3 defaultStoreIdentifier:(id)a4 additionalStoreIdentifiers:(id)a5 toDictionary:(id)a6 syncedPreferencesDirectoryURL:(id)a7;
@end

@implementation SYDPlistToCoreDataMigrator

+ (BOOL)migrateAllPlistsToCoreDataStore:(id)a3 deleteMigratedPlists:(BOOL)a4 libraryDirectoryURL:(id)a5 error:(id *)a6
{
  v8 = a4;
  v55[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = _os_activity_create(&dword_26C384000, "kvs/migrate-all-plists", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  if (SYDIsDataSeparatedPersona())
  {
    v13 = SYDGetMigrationLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[SYDPlistToCoreDataMigrator migrateAllPlistsToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
    }

    v14 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA450];
    v55[0] = @"Cannot migrate the non-personal persona";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    v16 = [v14 errorWithDomain:@"SyncedDefaults" code:1025 userInfo:v15];

    if (a6)
    {
      v17 = v16;
      v18 = 0;
      *a6 = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCAB98] defaultCenter];
    [v19 postNotificationName:@"SYDPlistToCoreDataMigratorWillMigrateNotification" object:0 userInfo:0];

    v20 = SYDGetMigrationLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      +[SYDPlistToCoreDataMigrator migrateAllPlistsToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
    }

    v16 = [MEMORY[0x277CBEAA8] date];
    v46 = 0;
    v47[0] = &v46;
    v47[1] = 0x2020000000;
    v47[2] = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__4;
    v44 = __Block_byref_object_dispose__4;
    v45 = 0;
    v21 = [a1 allPossibleStorePlistURLsWithLibraryDirectoryURL:v11];
    v22 = SYDGetMigrationLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      +[SYDPlistToCoreDataMigrator migrateAllPlistsToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:].cold.2(buf, [v21 count], v22);
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke;
    v34[3] = &unk_279D30040;
    v38 = a1;
    v36 = &v40;
    v35 = v10;
    v37 = &v46;
    v39 = v8;
    [v21 enumerateKeysAndObjectsUsingBlock:v34];
    [v16 timeIntervalSinceNow];
    v24 = v23;
    v25 = SYDGetMigrationLog();
    v26 = -v24;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [SYDPlistToCoreDataMigrator migrateAllPlistsToCoreDataStore:v47 deleteMigratedPlists:? libraryDirectoryURL:? error:?];
    }

    if (v8)
    {
      v27 = v41[5];
      if (v27)
      {
        v51 = @"errorDomainAndCode";
        v28 = MEMORY[0x277CCACA8];
        v29 = [v27 domain];
        v30 = [v28 stringWithFormat:@"%@_%ld", v29, objc_msgSend(v41[5], "code")];
        v52 = v30;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      }

      else
      {
        v49[0] = @"storeCount";
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v47[0] + 24)];
        v50[0] = v29;
        v49[1] = @"duration";
        v30 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
        v50[1] = v30;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
      }
      v31 = ;
      AnalyticsSendEvent();
    }

    if (a6)
    {
      *a6 = v41[5];
    }

    v18 = v41[5] == 0;

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v46, 8);
  }

  os_activity_scope_leave(&state);
  v32 = *MEMORY[0x277D85DE8];
  return v18;
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 56);
  v42 = 0;
  v11 = [v10 keyValueStorePlistFromURL:v7 error:&v42];
  v12 = v42;
  v13 = v42;
  if (v13)
  {
    v14 = v13;
    v15 = SYDGetMigrationLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v12);
    if ([*(a1 + 56) shouldStopMigrationAfterError:v14])
    {
      *a4 = 1;
    }

    goto LABEL_44;
  }

  if (v11)
  {
    v36 = v9;
    if ([*(a1 + 56) shouldUseTransactionForPlistAtURL:v7])
    {
      v16 = *(a1 + 32);
      v41 = 0;
      v17 = [v16 transactionalStoreWithError:&v41];
      v18 = v41;
      v19 = v18 == 0;
      if (v18)
      {
        v20 = v18;
        v21 = SYDGetMigrationLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_2();
        }
      }

      if (v17)
      {
LABEL_19:
        v23 = *(a1 + 56);
        v40 = 0;
        v24 = v17;
        v25 = [v23 migratePlist:v11 forStoreWithIdentifier:v8 toCoreDataStore:v17 error:{&v40, v36}];
        v26 = v40;
        v27 = v26;
        if (v19 && v25)
        {
          v39 = v26;
          v28 = [v24 saveTransaction:&v39];
          v14 = v39;

          if ((v28 & 1) == 0)
          {
            v34 = SYDGetMigrationLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_3();
            }

            goto LABEL_35;
          }

          v27 = v14;
        }

        if (v25)
        {
          v29 = SYDGetMigrationLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_5();
          }

          ++*(*(*(a1 + 48) + 8) + 24);
          if (*(a1 + 64) == 1)
          {
            v30 = [MEMORY[0x277CCAA00] defaultManager];
            v38 = v27;
            v31 = [v30 removeItemAtURL:v7 error:&v38];
            v14 = v38;

            v32 = SYDGetMigrationLog();
            v33 = v32;
            if (v31)
            {
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_7();
              }
            }

            else
            {
              if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
              {
                __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_6();
              }

              v14 = 0;
            }
          }

          else
          {
            v14 = v27;
          }

LABEL_43:

          v9 = v37;
          goto LABEL_44;
        }

        v14 = v27;
LABEL_35:
        v35 = SYDGetMigrationLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_4();
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14);
        if ([*(a1 + 56) shouldStopMigrationAfterError:v14])
        {
          *a4 = 1;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v19 = 0;
    }

    v17 = *(a1 + 32);
    goto LABEL_19;
  }

  v22 = SYDGetMigrationLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_8();
  }

  v14 = 0;
LABEL_44:

  objc_autoreleasePoolPop(v9);
}

+ (BOOL)migratePlist:(id)a3 forStoreWithIdentifier:(id)a4 toCoreDataStore:(id)a5 error:(id *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = SYDGetMigrationLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[SYDPlistToCoreDataMigrator migratePlist:forStoreWithIdentifier:toCoreDataStore:error:];
  }

  v13 = [MEMORY[0x277CBEAA8] date];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__4;
  v30 = __Block_byref_object_dispose__4;
  v31 = 0;
  v14 = [v9 objectForKeyedSubscript:@"values"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke;
  v22[3] = &unk_279D30068;
  v15 = v10;
  v23 = v15;
  v16 = v11;
  v24 = v16;
  v25 = &v26;
  [v14 enumerateKeysAndObjectsUsingBlock:v22];
  v17 = SYDGetMigrationLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [v13 timeIntervalSinceNow];
    [SYDPlistToCoreDataMigrator migratePlist:v15 forStoreWithIdentifier:buf toCoreDataStore:v17 error:v18];
  }

  if (a6)
  {
    *a6 = v27[5];
  }

  v19 = v27[5] == 0;

  _Block_object_dispose(&v26, 8);
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke(uint64_t *a1, void *a2, void *a3, _BYTE *a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = SYDGetMigrationLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_1(v7, a1);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = 0;
    v10 = SYDGetPropertyListAndTimestampFromStorage(v8, &v37);
    if (v10)
    {
      if (v37)
      {
        v12 = a1[4];
        v11 = a1[5];
        v13 = (a1 + 6);
        v14 = *(a1[6] + 8);
        obj = *(v14 + 40);
        v15 = [v11 keyValueForKey:v7 inStoreWithIdentifier:v12 createIfNecessary:1 error:&obj];
        objc_storeStrong((v14 + 40), obj);
        if (*(*(a1[6] + 8) + 40))
        {
          v16 = SYDGetMigrationLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_3(v13);
          }
        }

        else
        {
          v19 = [v15 valueModificationDate];

          if (v19)
          {
            v20 = [v15 valueModificationDate];
            [v20 timeIntervalSinceReferenceDate];
            v22 = v21;
            v23 = v37;

            v24 = SYDGetMigrationLog();
            v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
            if (v22 >= v23)
            {
              if (v25)
              {
                __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_4(v7, a1 + 4);
              }

              goto LABEL_17;
            }

            if (v25)
            {
              v26 = a1[4];
              v27 = v37;
              v28 = [v15 valueModificationDate];
              [v28 timeIntervalSinceReferenceDate];
              *buf = 138478595;
              v39 = v7;
              v40 = 2112;
              v41 = v26;
              v42 = 2048;
              v43 = v27;
              v44 = 2048;
              v45 = v29;
              _os_log_debug_impl(&dword_26C384000, v24, OS_LOG_TYPE_DEBUG, "Using plist value for (%{private}@) in %@: timestamp %f is later than current timestamp %f", buf, 0x2Au);
            }
          }

          else
          {
            v24 = SYDGetMigrationLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_5(v7, a1 + 4);
            }
          }

          v30 = [SYDKeyValue recordNameForUnencryptedKey:v7];
          [v15 setRecordName:v30];

          v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v37];
          [v15 setValue:v10 withModificationDate:v31];

          v33 = a1[4];
          v32 = a1[5];
          v34 = *(a1[6] + 8);
          v35 = *(v34 + 40);
          LOBYTE(v31) = [v32 saveKeyValue:v15 inStoreWithIdentifier:v33 excludeFromChangeTracking:1 enforceQuota:0 error:&v35];
          objc_storeStrong((v34 + 40), v35);
          if (v31)
          {
LABEL_17:

            goto LABEL_18;
          }

          v16 = SYDGetMigrationLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_6(v13);
          }
        }

        *a4 = 1;
        goto LABEL_17;
      }

      v15 = SYDGetMigrationLog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v17 = "No timestamp in plist storage";
    }

    else
    {
      v15 = SYDGetMigrationLog();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v17 = "No plist value from plist storage";
    }

    _os_log_impl(&dword_26C384000, v15, OS_LOG_TYPE_INFO, v17, buf, 2u);
    goto LABEL_17;
  }

  v10 = SYDGetMigrationLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_2(v8, v10);
  }

LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
}

+ (id)keyValueStorePlistFromURL:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEAE0] inputStreamWithURL:v5];
  [v6 open];
  v19 = 0;
  v7 = [MEMORY[0x277CCAC58] propertyListWithStream:v6 options:0 format:0 error:&v19];
  v8 = v19;
  [v6 close];
  if (v8)
  {
    v9 = [v8 domain];
    if ([v9 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v10 = [v8 code];

      if (v10 != 3842)
      {
        goto LABEL_9;
      }

      v11 = [v8 userInfo];
      v9 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      v12 = [v9 domain];
      if ([v12 isEqualToString:*MEMORY[0x277CCA5B8]])
      {
        v13 = [v9 code];

        if (v13 == 2)
        {

          v8 = 0;
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
      }
    }

LABEL_9:
    v9 = SYDGetMigrationLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_1();
    }

    goto LABEL_11;
  }

LABEL_12:
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = SYDGetMigrationLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        +[SYDPlistToCoreDataMigrator keyValueStorePlistFromURL:error:];
      }

      v7 = 0;
    }

    v15 = [v7 objectForKeyedSubscript:@"values"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = SYDGetMigrationLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[SYDPlistToCoreDataMigrator keyValueStorePlistFromURL:error:];
      }

      v7 = 0;
    }
  }

  if (a4)
  {
    v17 = v8;
    *a4 = v8;
  }

  return v7;
}

+ (BOOL)shouldStopMigrationAfterError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (SYDIsFileProtectionError(v3))
    {
      v5 = 1;
    }

    else
    {
      v5 = SYDIsDiskFullError(v4);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldIncrementFailureCountForError:(id)a3
{
  v3 = a3;
  if (SYDIsFileProtectionError(v3))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = SYDIsDiskFullError(v3) ^ 1;
  }

  return v4;
}

+ (BOOL)shouldUseTransactionForPlistAtURL:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15 = 0;
  v4 = *MEMORY[0x277CBE838];
  v14 = 0;
  v5 = [v3 getResourceValue:&v15 forKey:v4 error:&v14];
  v6 = v15;
  v7 = v14;
  if (v5)
  {
    v8 = [v6 unsignedLongValue];
    v9 = v8 < 0x500000;
    v10 = SYDGetMigrationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v3 lastPathComponent];
      *buf = 138412802;
      v17 = v11;
      v18 = 1024;
      v19 = v8 < 0x500000;
      v20 = 2048;
      v21 = v8;
      _os_log_debug_impl(&dword_26C384000, v10, OS_LOG_TYPE_DEBUG, "Plist %@: useTransaction=%d size=%ld KB", buf, 0x1Cu);
    }
  }

  else
  {
    v10 = SYDGetMigrationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SYDPlistToCoreDataMigrator shouldUseTransactionForPlistAtURL:];
    }

    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)isSharedIPad
{
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 isSharedIPad];

  return v3;
}

+ (id)allPossibleStorePlistURLsWithLibraryDirectoryURL:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SYDGetMigrationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[SYDPlistToCoreDataMigrator allPossibleStorePlistURLsWithLibraryDirectoryURL:];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [v4 URLByAppendingPathComponent:@"SyncedPreferences" isDirectory:1];
  v8 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [a1 addPlistURLsAndStoreIdentifiersForBundleRecord:*(*(&v24 + 1) + 8 * i) toDictionary:v6 uncontainerizedSyncedPreferencesDirectoryURL:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v10);
  }

  v13 = [MEMORY[0x277CC1E50] enumeratorWithOptions:0];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [a1 addPlistURLsAndStoreIdentifiersForBundleRecord:*(*(&v20 + 1) + 8 * j) toDictionary:v6 uncontainerizedSyncedPreferencesDirectoryURL:v7];
      }

      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  [a1 addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary:v6 uncontainerizedSyncedPreferencesDirectoryURL:v7];

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(id)a3 toDictionary:(id)a4 uncontainerizedSyncedPreferencesDirectoryURL:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SYDGetMigrationLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SYDPlistToCoreDataMigrator addPlistURLsAndStoreIdentifiersForBundleRecord:v8 toDictionary:? uncontainerizedSyncedPreferencesDirectoryURL:?];
  }

  v12 = [objc_alloc(MEMORY[0x277D6B878]) initWithBundleRecord:v8];
  v13 = [v12 storeIdentifier];
  v14 = [v12 additionalStoreIdentifiers];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = [v8 bundleIdentifier];
  }

  else
  {
    v15 = [v8 effectiveBundleIdentifier];
  }

  v16 = v15;
  if (v13 || [v14 count])
  {
    if (v16)
    {
      v17 = [v8 dataContainerURL];
      v18 = v17;
      if (v17)
      {
        [v17 URLByAppendingPathComponent:@"Library" isDirectory:1];
        v27 = v12;
        v19 = v13;
        v20 = v14;
        v21 = v9;
        v22 = v10;
        v24 = v23 = a1;
        v25 = [v24 URLByAppendingPathComponent:@"SyncedPreferences" isDirectory:1];

        a1 = v23;
        v10 = v22;
        v9 = v21;
        v14 = v20;
        v13 = v19;
        v12 = v27;
      }

      else
      {
        v26 = SYDGetMigrationLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [SYDPlistToCoreDataMigrator addPlistURLsAndStoreIdentifiersForBundleRecord:v8 toDictionary:? uncontainerizedSyncedPreferencesDirectoryURL:?];
        }

        v25 = v10;
      }

      [a1 addPlistURLsForBundleIdentifier:v16 defaultStoreIdentifier:v13 additionalStoreIdentifiers:v14 toDictionary:v9 syncedPreferencesDirectoryURL:v25];
    }

    else
    {
      v25 = SYDGetMigrationLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [SYDPlistToCoreDataMigrator addPlistURLsAndStoreIdentifiersForBundleRecord:v8 toDictionary:v25 uncontainerizedSyncedPreferencesDirectoryURL:?];
      }
    }
  }

  else
  {
    v25 = SYDGetMigrationLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [SYDPlistToCoreDataMigrator addPlistURLsAndStoreIdentifiersForBundleRecord:v8 toDictionary:? uncontainerizedSyncedPreferencesDirectoryURL:?];
    }
  }
}

+ (void)addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary:(id)a3 uncontainerizedSyncedPreferencesDirectoryURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = SYDGetMigrationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[SYDPlistToCoreDataMigrator addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary:uncontainerizedSyncedPreferencesDirectoryURL:];
  }

  v9 = [a1 knownDaemons];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __134__SYDPlistToCoreDataMigrator_addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary_uncontainerizedSyncedPreferencesDirectoryURL___block_invoke;
  v12[3] = &unk_279D30090;
  v14 = v7;
  v15 = a1;
  v13 = v6;
  v10 = v7;
  v11 = v6;
  [v9 enumerateKeysAndObjectsUsingBlock:v12];
}

void __134__SYDPlistToCoreDataMigrator_addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary_uncontainerizedSyncedPreferencesDirectoryURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [v5 objectForKeyedSubscript:@"StoreIdentifier"];
  v7 = [v5 objectForKeyedSubscript:@"AdditionalStoreIdentifiers"];

  [*(a1 + 48) addPlistURLsForBundleIdentifier:v6 defaultStoreIdentifier:v8 additionalStoreIdentifiers:v7 toDictionary:*(a1 + 32) syncedPreferencesDirectoryURL:*(a1 + 40)];
}

+ (void)addPlistURLsForBundleIdentifier:(id)a3 defaultStoreIdentifier:(id)a4 additionalStoreIdentifiers:(id)a5 toDictionary:(id)a6 syncedPreferencesDirectoryURL:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v11 = a4;
  v12 = a5;
  v34 = a6;
  v33 = a7;
  v13 = SYDGetMigrationLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v30 = [v12 componentsJoinedByString:{@", "}];
    *buf = 138412802;
    v42 = v35;
    v43 = 2112;
    v44 = v11;
    v45 = 2112;
    v46 = v30;
    _os_log_debug_impl(&dword_26C384000, v13, OS_LOG_TYPE_DEBUG, "Adding plist URLs for bundle identifier %@ with defaultStoreIdentifier=(%@) additionalStoreIdentifiers=[%@]", buf, 0x20u);
  }

  if (v11)
  {
    v14 = [v33 URLByAppendingPathComponent:v35];
    v15 = [v14 URLByAppendingPathExtension:@"plist"];

    [v34 setObject:v11 forKeyedSubscript:v15];
  }

  v16 = [v12 count];
  if (v11)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = [MEMORY[0x277CBEB58] setWithCapacity:v17];
  v19 = v18;
  if (v11)
  {
    [v18 addObject:v11];
  }

  v32 = v11;
  if (v12)
  {
    [v19 addObjectsFromArray:v12];
  }

  v31 = v12;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v36 + 1) + 8 * i);
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v35, v25];
        v27 = [v26 stringByAppendingPathExtension:@"plist"];

        v28 = [v33 URLByAppendingPathComponent:v27];
        [v34 setObject:v25 forKeyedSubscript:v28];
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v22);
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (id)knownDaemons
{
  v6[21] = *MEMORY[0x277D85DE8];
  v5[0] = @"com.apple.sbd";
  v5[1] = @"com.apple.security.cloudkeychainproxy3";
  v6[0] = &unk_287CF2568;
  v6[1] = &unk_287CF2590;
  v5[2] = @"accountsd";
  v5[3] = @"com.apple.finder";
  v6[2] = &unk_287CF25B8;
  v6[3] = &unk_287CF25E0;
  v5[4] = @"com.apple.accessibility.AccessibilityUIServer";
  v5[5] = @"com.apple.VoiceOverTouch";
  v6[4] = &unk_287CF2608;
  v6[5] = &unk_287CF2630;
  v5[6] = @"com.apple.TextInput.kbd";
  v5[7] = @"com.apple.nanoweatherprefsd";
  v6[6] = &unk_287CF2658;
  v6[7] = &unk_287CF2680;
  v5[8] = @"com.apple.springboard";
  v5[9] = @"com.apple.backboardd";
  v6[8] = &unk_287CF26A8;
  v6[9] = &unk_287CF26D0;
  v5[10] = @"com.apple.datamigrator";
  v5[11] = @"com.apple.CoreSuggestions";
  v6[10] = &unk_287CF26F8;
  v6[11] = &unk_287CF2720;
  v5[12] = @"com.apple.cmfsyncagent";
  v5[13] = @"com.apple.accessibility.heard";
  v6[12] = &unk_287CF2748;
  v6[13] = &unk_287CF2770;
  v5[14] = @"com.apple.wifid";
  v5[15] = @"com.apple.coretelephony";
  v6[14] = &unk_287CF2798;
  v6[15] = &unk_287CF27C0;
  v5[16] = @"com.apple.cloudrecents.CloudRecentsAgent";
  v5[17] = @"com.apple.mediaaccessibilityd";
  v6[16] = &unk_287CF27E8;
  v6[17] = &unk_287CF2810;
  v5[18] = @"com.apple.email.maild";
  v5[19] = @"com.apple.tipsd";
  v6[18] = &unk_287CF2838;
  v6[19] = &unk_287CF2860;
  v5[20] = @"com.apple.touristd";
  v6[20] = &unk_287CF2888;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:21];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Failed to get the library directory when migrating: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error checking if already migrated: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Error migrating all plists: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error getting failed migration count: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.6()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Failed to set new failed migration count: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.9()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Failed to set didMigrateFromPlists after reaching max failures: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.10()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.11()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Error saving migration state: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.12()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.13()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.14()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)migrateAllPlistsToCoreDataStore:(os_log_t)log deleteMigratedPlists:libraryDirectoryURL:error:.cold.2(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_26C384000, log, OS_LOG_TYPE_DEBUG, "About to migrate %lu possible plists", buf, 0xCu);
}

+ (void)migrateAllPlistsToCoreDataStore:(uint64_t)a1 deleteMigratedPlists:libraryDirectoryURL:error:.cold.3(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(*a1 + 24);
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Error creating new transactional store for plist: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8(&dword_26C384000, v0, v1, "Error saving transactional store when migrating plist: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_4()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_6()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)migratePlist:forStoreWithIdentifier:toCoreDataStore:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)migratePlist:(uint64_t)a1 forStoreWithIdentifier:(uint8_t *)buf toCoreDataStore:(os_log_t)log error:(double)a4 .cold.2(uint64_t a1, uint8_t *buf, os_log_t log, double a4)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a4 * -1000.0;
  _os_log_debug_impl(&dword_26C384000, log, OS_LOG_TYPE_DEBUG, "Migrating plist for %@ took %.0f milliseconds", buf, 0x16u);
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 32);
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x20u);
  v6 = *MEMORY[0x277D85DE8];
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0_1();
  v8 = a1;
  _os_log_fault_impl(&dword_26C384000, a2, OS_LOG_TYPE_FAULT, "Found value in plist that wasn't a dictionary (%@): %@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_3(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error fetching key value while migrating plist: %@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_4(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_5(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_6(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error saving key value while migrating plist: %@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

+ (void)keyValueStorePlistFromURL:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)keyValueStorePlistFromURL:error:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)shouldUseTransactionForPlistAtURL:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_26C384000, v0, v1, "Error checking plist file size to determine if we should use a transaction: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)allPossibleStorePlistURLsWithLibraryDirectoryURL:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(void *)a1 toDictionary:uncontainerizedSyncedPreferencesDirectoryURL:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_1(&dword_26C384000, v2, v3, "Checking for plist URLs from bundle: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(void *)a1 toDictionary:uncontainerizedSyncedPreferencesDirectoryURL:.cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_1(&dword_26C384000, v2, v3, "Using uncontainerized Library directory for %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(void *)a1 toDictionary:(NSObject *)a2 uncontainerizedSyncedPreferencesDirectoryURL:.cold.3(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_26C384000, a2, OS_LOG_TYPE_FAULT, "No bundle identifier for bundle %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(void *)a1 toDictionary:uncontainerizedSyncedPreferencesDirectoryURL:.cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_1(&dword_26C384000, v2, v3, "No KVS entitlements for bundle %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary:uncontainerizedSyncedPreferencesDirectoryURL:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end