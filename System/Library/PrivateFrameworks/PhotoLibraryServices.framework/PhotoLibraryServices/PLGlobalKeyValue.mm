@interface PLGlobalKeyValue
+ (id)_debugDescriptionDateFormatter;
+ (id)_globalValueForKeyValue:(id)a3;
+ (id)allDecodeClasses;
+ (id)attributesForKey;
+ (id)debugDescriptionOfValue:(id)a3 forKey:(id)a4;
+ (id)dictionaryWithManagedObjectContext:(id)a3 forMigrationHistory:(BOOL)a4;
+ (id)fetchGlobalKeyValueForKey:(id)a3 withManagedObjectContext:(id)a4 createIfMissing:(BOOL)a5;
+ (id)fetchGlobalKeyValuesForKeys:(id)a3 withManagedObjectContext:(id)a4;
+ (id)globalValueForKey:(id)a3 managedObjectContext:(id)a4;
+ (id)globalValuesForKeys:(id)a3 managedObjectContext:(id)a4;
+ (signed)typeForKey:(id)a3;
+ (void)_setGlobalValue:(id)a3 forKeyValue:(id)a4 managedObjectContext:(id)a5;
+ (void)checkTypeForKey:(id)a3 andValue:(id)a4;
+ (void)migrateLocaleIdentifierToGlobalKeyValues:(id)a3 withPathManager:(id)a4;
+ (void)populateWithDictionary:(id)a3 managedObjectContext:(id)a4 replaceExisting:(BOOL)a5;
+ (void)setGlobalValue:(id)a3 forKey:(id)a4 managedObjectContext:(id)a5;
@end

@implementation PLGlobalKeyValue

+ (id)attributesForKey
{
  if (attributesForKey_onceToken != -1)
  {
    dispatch_once(&attributesForKey_onceToken, &__block_literal_global_69185);
  }

  v3 = attributesForKey_attributesForKey;

  return v3;
}

+ (void)migrateLocaleIdentifierToGlobalKeyValues:(id)a3 withPathManager:(id)a4
{
  v4 = MEMORY[0x1E695E000];
  v5 = a3;
  v7 = [[v4 alloc] initWithSuiteName:@"com.apple.mobileslideshow"];
  v6 = [v7 objectForKey:@"com.apple.Photos.LocaleIdentifier"];
  [v5 setObject:v6 forKeyedSubscript:@"LocaleIdentifier"];
}

+ (id)fetchGlobalKeyValuesForKeys:(id)a3 withManagedObjectContext:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = MEMORY[0x1E695D5E0];
  v8 = a4;
  v9 = [a1 entityName];
  v10 = [v7 fetchRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"key", v6];
  [v10 setPredicate:v11];

  v16 = 0;
  v12 = [v8 executeFetchRequest:v10 error:&v16];

  v13 = v16;
  if (!v12)
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v6;
      v19 = 2112;
      v20 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Error fetching GlobalKeyValue for keys %{public}@, error: %@", buf, 0x16u);
    }
  }

  return v12;
}

+ (id)fetchGlobalKeyValueForKey:(id)a3 withManagedObjectContext:(id)a4 createIfMissing:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E695D5E0];
  v11 = [a1 entityName];
  v12 = [v10 fetchRequestWithEntityName:v11];

  v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"key", v8];
  [v12 setPredicate:v13];

  v19 = 0;
  v14 = [v9 executeFetchRequest:v12 error:&v19];
  v15 = v19;
  if (v14)
  {
    v16 = [v14 firstObject];
    if (!v16 && v5)
    {
      v16 = [(PLManagedObject *)PLGlobalKeyValue insertInManagedObjectContext:v9];
      [v16 setKey:v8];
    }
  }

  else
  {
    v17 = PLBackendGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v21 = v8;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Error fetching GlobalKeyValue for key %{public}@, error: %@", buf, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

+ (id)_globalValueForKeyValue:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v6 = [v4 key];
  v7 = [a1 typeForKey:v6];

  v8 = 0;
  if (v7 > 3u)
  {
    switch(v7)
    {
      case 4u:
        v9 = [v5 dateValue];
        break;
      case 5u:
        v9 = [v5 stringValue];
        break;
      case 6u:
        v9 = [v5 anyValue];
        break;
      default:
        goto LABEL_17;
    }
  }

  else
  {
    switch(v7)
    {
      case 1u:
        v9 = [v5 BOOLValue];
        break;
      case 2u:
        v9 = [v5 integerValue];
        break;
      case 3u:
        v9 = [v5 doubleValue];
        break;
      default:
        goto LABEL_17;
    }
  }

  v8 = v9;
LABEL_17:

  return v8;
}

+ (void)_setGlobalValue:(id)a3 forKeyValue:(id)a4 managedObjectContext:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    goto LABEL_25;
  }

  v11 = PLBackendGetLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v12)
    {
      v17 = [v10 name];
      v18 = [v9 key];
      v21 = 138412546;
      v22 = v17;
      v23 = 2114;
      v24 = v18;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "GlobalKeyValue: (%@) removing %{public}@", &v21, 0x16u);
    }

    goto LABEL_13;
  }

  if (v12)
  {
    v13 = [v10 name];
    v14 = [v9 key];
    v21 = 138412802;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "GlobalKeyValue: (%@) setting %{public}@ = %@", &v21, 0x20u);
  }

  v15 = [v9 key];
  v16 = [a1 typeForKey:v15];

  [v9 setType:v16];
  if (v16 <= 2u)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v8, "BOOLValue")}];
        [v9 setBoolValue:v19];
      }

      else
      {
        if (v16 != 2)
        {
          goto LABEL_25;
        }

        v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v8, "integerValue")}];
        [v9 setIntegerValue:v19];
      }

      goto LABEL_24;
    }

LABEL_13:
    [v10 deleteObject:v9];
    goto LABEL_25;
  }

  if (v16 <= 4u)
  {
    if (v16 != 3)
    {
      if (v16 == 4)
      {
        [v9 setDateValue:v8];
      }

      goto LABEL_25;
    }

    v20 = MEMORY[0x1E696AD98];
    [v8 doubleValue];
    v19 = [v20 numberWithDouble:?];
    [v9 setDoubleValue:v19];
LABEL_24:

    goto LABEL_25;
  }

  if (v16 == 5)
  {
    [v9 setStringValue:v8];
  }

  else if (v16 == 6)
  {
    [v9 setAnyValue:v8];
  }

LABEL_25:
}

+ (void)populateWithDictionary:(id)a3 managedObjectContext:(id)a4 replaceExisting:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    v10 = 0;
  }

  else
  {
    v10 = [a1 dictionaryWithManagedObjectContext:v9 forMigrationHistory:0];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__PLGlobalKeyValue_populateWithDictionary_managedObjectContext_replaceExisting___block_invoke;
  v13[3] = &unk_1E7570850;
  v15 = v9;
  v16 = a1;
  v14 = v10;
  v11 = v9;
  v12 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v13];
}

void __80__PLGlobalKeyValue_populateWithDictionary_managedObjectContext_replaceExisting___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = v7;
  if (v6 && !v7)
  {
    [*(a1 + 48) setGlobalValue:v6 forKey:v5 managedObjectContext:*(a1 + 40)];
  }
}

+ (id)dictionaryWithManagedObjectContext:(id)a3 forMigrationHistory:(BOOL)a4
{
  v4 = a4;
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = MEMORY[0x1E695D5E0];
  v8 = [a1 entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v37 = 0;
  v10 = [v6 executeFetchRequest:v9 error:&v37];
  v11 = v37;
  if (v10)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v12)
    {
      v13 = v12;
      v27 = v11;
      v28 = v10;
      v29 = v9;
      v30 = v6;
      v14 = *v34;
      v15 = obj;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v15);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          if (v4)
          {
            v18 = [a1 attributesForKey];
            v19 = [v17 key];
            v20 = [v18 objectForKeyedSubscript:v19];
            v21 = [v20 includeInMigrationHistory];

            v15 = obj;
            if (!v21)
            {
              continue;
            }
          }

          v22 = [a1 _globalValueForKeyValue:{v17, v27, v28, v29, v30}];
          v23 = [v17 key];
          [v32 setObject:v22 forKeyedSubscript:v23];
        }

        v13 = [v15 countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v13);
      v9 = v29;
      v6 = v30;
      v11 = v27;
      v10 = v28;
    }
  }

  else
  {
    v24 = PLBackendGetLog();
    obj = v24;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v11;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Error fetching GlobalKeyValue for all keys, error: %@", buf, 0xCu);
    }
  }

  v25 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v32];

  return v25;
}

+ (id)globalValuesForKeys:(id)a3 managedObjectContext:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = [a1 fetchGlobalKeyValuesForKeys:v6 withManagedObjectContext:v7];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [a1 _globalValueForKeyValue:v14];
        v16 = [v14 key];
        [v8 setObject:v15 forKeyedSubscript:v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)globalValueForKey:(id)a3 managedObjectContext:(id)a4
{
  v5 = [a1 fetchGlobalKeyValueForKey:a3 withManagedObjectContext:a4 createIfMissing:0];
  v6 = [a1 _globalValueForKeyValue:v5];

  return v6;
}

+ (void)setGlobalValue:(id)a3 forKey:(id)a4 managedObjectContext:(id)a5
{
  v12 = a3;
  v8 = a5;
  v9 = a4;
  [a1 checkTypeForKey:v9 andValue:v12];
  v10 = [a1 fetchGlobalKeyValueForKey:v9 withManagedObjectContext:v8 createIfMissing:1];

  v11 = [a1 _globalValueForKeyValue:v10];
  if (([v10 isInserted] & 1) != 0 || (PLObjectIsEqual() & 1) == 0)
  {
    [a1 _setGlobalValue:v12 forKeyValue:v10 managedObjectContext:v8];
  }
}

+ (void)checkTypeForKey:(id)a3 andValue:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [a1 typeForKey:v16];
  if (v7 > 3)
  {
    if (v7 == 4)
    {
      if (!v6)
      {
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_20;
      }

      v8 = MEMORY[0x1E695DF30];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Expect date value for key %@", v16, v15];
    }

    else if (v7 == 5)
    {
      if (!v6)
      {
        goto LABEL_20;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_20;
      }

      v8 = MEMORY[0x1E695DF30];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Expect string value for key %@", v16, v15];
    }

    else
    {
      if (v7 != 6 || !v6)
      {
        goto LABEL_20;
      }

      v9 = [a1 attributesForKey];
      v10 = [v9 objectForKeyedSubscript:v16];
      v11 = [v10 anyValueClass];

      if (v11)
      {
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_20;
        }

        v8 = MEMORY[0x1E695DF30];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"Value's class not supported for key %@, must confirm to %@", v16, v11];
      }

      else
      {
        v8 = MEMORY[0x1E695DF30];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"No any-value class defined for key %@", v16, v15];
      }
    }

    v12 = LABEL_25:;
    v13 = [v8 exceptionWithName:@"GlobalKeyValueTypeMismatchException" reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  if (v7 - 1 >= 3)
  {
    if (v7)
    {
      goto LABEL_20;
    }

    v8 = MEMORY[0x1E695DF30];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"No type defined for key %@", v16, v15];
    goto LABEL_25;
  }

  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v8 = MEMORY[0x1E695DF30];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Expect number value for key %@", v16, v15];
      goto LABEL_25;
    }
  }

LABEL_20:
}

+ (id)allDecodeClasses
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [a1 attributesForKey];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__PLGlobalKeyValue_allDecodeClasses__block_invoke;
  v7[3] = &unk_1E7570828;
  v5 = v3;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __36__PLGlobalKeyValue_allDecodeClasses__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 type] == 6 && objc_msgSend(v4, "anyValueClass"))
  {
    [*(a1 + 32) addObject:{objc_msgSend(v4, "anyValueClass")}];
  }
}

+ (id)debugDescriptionOfValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v10 = @"nil";
    goto LABEL_9;
  }

  if ([v7 isEqualToString:@"LibraryCreateOptions"])
  {
    v9 = PLDescriptionForLibraryCreateOptions([v6 integerValue]);
  }

  else
  {
    if ([a1 typeForKey:v8] == 4)
    {
      v11 = [a1 _debugDescriptionDateFormatter];
      v10 = [v11 stringFromDate:v6];

      goto LABEL_9;
    }

    v9 = [v6 description];
  }

  v10 = v9;
LABEL_9:

  return v10;
}

+ (id)_debugDescriptionDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
  v3 = [MEMORY[0x1E695DFE8] localTimeZone];
  [v2 setTimeZone:v3];

  return v2;
}

+ (signed)typeForKey:(id)a3
{
  v4 = a3;
  v5 = [a1 attributesForKey];
  v6 = [v5 objectForKeyedSubscript:v4];

  LOWORD(v4) = [v6 type];
  return v4;
}

void __36__PLGlobalKeyValue_attributesForKey__block_invoke()
{
  v103[67] = *MEMORY[0x1E69E9840];
  v91 = [PLGlobalKeyValueAttributes attributesWithKey:@"ImportedFileSystemAssets" type:2];
  v103[0] = v91;
  v90 = [PLGlobalKeyValueAttributes attributesWithKey:@"ImportedFileSystemAssetsDate" type:4];
  v103[1] = v90;
  v89 = [PLGlobalKeyValueAttributes attributesWithKey:@"JournalRebuildRequired" type:1];
  v103[2] = v89;
  v88 = [PLGlobalKeyValueAttributes attributesWithKey:@"BackgroundJobServiceNeedsProcessing" type:1];
  v103[3] = v88;
  v87 = [PLGlobalKeyValueAttributes attributesWithKey:@"RebuildCompleteDate" type:4];
  v103[4] = v87;
  v86 = [PLGlobalKeyValueAttributes attributesWithKey:@"GreenValues" type:6 includeInMigrationHistory:0 anyValueClass:objc_opt_class()];
  v103[5] = v86;
  v85 = [PLGlobalKeyValueAttributes attributesWithKey:@"LocaleIdentifier" type:5];
  v103[6] = v85;
  v84 = [PLGlobalKeyValueAttributes attributesWithKey:@"GreenTeaContactsAuthorization" type:2];
  v103[7] = v84;
  v83 = [PLGlobalKeyValueAttributes attributesWithKey:@"LibraryCreateOptions" type:2];
  v103[8] = v83;
  v82 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastWidgetUpdateDate" type:4];
  v103[9] = v82;
  v81 = [PLGlobalKeyValueAttributes attributesWithKey:@"LargestWidgetPixelSize" type:2];
  v103[10] = v81;
  v80 = [PLGlobalKeyValueAttributes attributesWithKey:@"LargestWidgetSizeDate" type:4];
  v103[11] = v80;
  v79 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastFullIndexSyndicationSyncDate" type:4];
  v103[12] = v79;
  v78 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastFullIndexSyndicationSyncStartDate" type:4];
  v103[13] = v78;
  v77 = [PLGlobalKeyValueAttributes attributesWithKey:@"InProgressFullIndexSyndicationSyncDate" type:4];
  v103[14] = v77;
  v76 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastAttachmentSyndicationSyncDate" type:4];
  v103[15] = v76;
  v75 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastChatSyndicationSyncDate" type:4];
  v103[16] = v75;
  v74 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastDeleteSyndicationSyncDateKey" type:4];
  v103[17] = v74;
  v73 = [PLGlobalKeyValueAttributes attributesWithKey:@"SyndicationStartDate" type:4];
  v103[18] = v73;
  v72 = [PLGlobalKeyValueAttributes attributesWithKey:@"PLSyndicationPrefetchDownloadThrottlingDate" type:4];
  v103[19] = v72;
  v71 = [PLGlobalKeyValueAttributes attributesWithKey:@"PLSyndicationSyncRangeDenominator" type:3];
  v103[20] = v71;
  v70 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastGuestAssetSyncToken" type:6 includeInMigrationHistory:0 anyValueClass:objc_opt_class()];
  v103[21] = v70;
  v69 = [PLGlobalKeyValueAttributes attributesWithKey:@"GuestAssetSyncStatus" type:2];
  v103[22] = v69;
  v68 = [PLGlobalKeyValueAttributes attributesWithKey:@"GuestAssetInitialSyncResumeMarker" type:5];
  v103[23] = v68;
  v67 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastGuestAssetSyncTargetLibraryPath" type:5];
  v103[24] = v67;
  v66 = [PLGlobalKeyValueAttributes attributesWithKey:@"PersonSyncState" type:5];
  v103[25] = v66;
  v65 = [PLGlobalKeyValueAttributes attributesWithKey:@"PersonSyncResumeMarker" type:5];
  v103[26] = v65;
  v64 = [PLGlobalKeyValueAttributes attributesWithKey:@"DuplicateProcessingStatus" type:2];
  v103[27] = v64;
  v63 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastInitialDuplicateDetectorProcessingCompletedDate" type:4];
  v103[28] = v63;
  v62 = [PLGlobalKeyValueAttributes attributesWithKey:@"AssetStackProcessingStatus" type:2];
  v103[29] = v62;
  v61 = [PLGlobalKeyValueAttributes attributesWithKey:@"OrphanedSceneClassificationsCount" type:2];
  v103[30] = v61;
  v60 = [PLGlobalKeyValueAttributes attributesWithKey:@"StableHashProcessingCompletedDate" type:4];
  v103[31] = v60;
  v59 = [PLGlobalKeyValueAttributes attributesWithKey:@"StableHashProcessingResumeObjectID" type:5];
  v103[32] = v59;
  v58 = [PLGlobalKeyValueAttributes attributesWithKey:@"CloudTrackerLastKnownCloudVersion" type:5];
  v103[33] = v58;
  v57 = [PLGlobalKeyValueAttributes attributesWithKey:@"CloudTrackerLastKnownTransactionStoreUUID" type:5];
  v103[34] = v57;
  v56 = [PLGlobalKeyValueAttributes attributesWithKey:@"CloudTrackerLastKnownTransactionNumber" type:2];
  v103[35] = v56;
  v55 = [PLGlobalKeyValueAttributes attributesWithKey:@"CloudInitialUploadDate" type:4];
  v103[36] = v55;
  v54 = [PLGlobalKeyValueAttributes attributesWithKey:@"LibraryScopeRulesTrackerLastKnownStoreUUID" type:5];
  v103[37] = v54;
  v53 = [PLGlobalKeyValueAttributes attributesWithKey:@"LibraryScopeRulesTrackerLastKnownTransactionNumber" type:2];
  v103[38] = v53;
  v52 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastCompletePrefetchDate" type:4];
  v103[39] = v52;
  v51 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexVersion" type:2];
  v103[40] = v51;
  v50 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexEmbeddingModelVersionKey" type:2];
  v103[41] = v50;
  v49 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexUtilityTypeClassifierVersion" type:2];
  v103[42] = v49;
  v48 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexLocaleIdentifier" type:5];
  v103[43] = v48;
  v47 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexSceneTaxonomySHA" type:5];
  v103[44] = v47;
  v46 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexFeatureSettings" type:2];
  v103[45] = v46;
  v45 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexStatus" type:2];
  v103[46] = v45;
  v44 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexRebuildResumeMarker" type:5];
  v103[47] = v44;
  v42 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexSpotlightClientState" type:6 includeInMigrationHistory:0 anyValueClass:objc_opt_class()];
  v103[48] = v42;
  v41 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexSpotlightClientStateMissingCount" type:2];
  v103[49] = v41;
  v40 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexSpotlightClientStateMismatchedCount" type:2];
  v103[50] = v40;
  v39 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexRebuildRequiredExternalReason" type:2];
  v103[51] = v39;
  v38 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexRebuildStartDate" type:4];
  v103[52] = v38;
  v37 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexRebuildEndDate" type:4];
  v103[53] = v37;
  v36 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchIndexRebuildCoalescedReasons" type:2];
  v103[54] = v36;
  v35 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastUpdatedGraphLabel" type:5];
  v103[55] = v35;
  v34 = [PLGlobalKeyValueAttributes attributesWithKey:@"FeatureAvailabilityKey" type:6 includeInMigrationHistory:0 anyValueClass:objc_opt_class()];
  v103[56] = v34;
  v33 = [PLGlobalKeyValueAttributes attributesWithKey:@"TimeOfLastFeatureAvailabilityJob" type:4];
  v103[57] = v33;
  v0 = [PLGlobalKeyValueAttributes attributesWithKey:@"FeatureAvailabilityJobDidFailKey" type:1];
  v103[58] = v0;
  v1 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchFeatureReadyDate" type:4];
  v103[59] = v1;
  v2 = [PLGlobalKeyValueAttributes attributesWithKey:@"SearchFeatureReadyFraction" type:3];
  v103[60] = v2;
  v3 = [PLGlobalKeyValueAttributes attributesWithKey:@"MemoriesCreationPreviewAvailableDate" type:4];
  v103[61] = v3;
  v4 = [PLGlobalKeyValueAttributes attributesWithKey:@"DateOfLastExternalAvailabilitySignal" type:4];
  v103[62] = v4;
  v5 = [PLGlobalKeyValueAttributes attributesWithKey:@"MediaAnalysisEmbeddingVersion" type:2];
  v103[63] = v5;
  v6 = [PLGlobalKeyValueAttributes attributesWithKey:@"MediaAnalysisEmbeddingVersionBumpDate" type:4];
  v103[64] = v6;
  v7 = [PLGlobalKeyValueAttributes attributesWithKey:@"LibraryReadyForAnalysisDate" type:4];
  v103[65] = v7;
  v8 = [PLGlobalKeyValueAttributes attributesWithKey:@"LocationOfInterestUpdateDate" type:4];
  v103[66] = v8;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:67];

  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v10 = v43;
  v11 = [v10 countByEnumeratingWithState:&v96 objects:v102 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v97;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v97 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v96 + 1) + 8 * i);
        v16 = [v15 key];
        [v9 setObject:v15 forKeyedSubscript:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v96 objects:v102 count:16];
    }

    while (v12);
  }

  v17 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastDuplicateDetectorProcessingToken" type:6 includeInMigrationHistory:0 anyValueClass:objc_opt_class()];
  v101[0] = v17;
  v18 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastInitialDuplicateDetectorProcessingCompletedToken" type:6 includeInMigrationHistory:0 anyValueClass:objc_opt_class()];
  v101[1] = v18;
  v19 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastSharedAssetContainerUpdateToken" type:6 includeInMigrationHistory:0 anyValueClass:objc_opt_class()];
  v101[2] = v19;
  v20 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastPersonSyncToken" type:6 includeInMigrationHistory:0 anyValueClass:objc_opt_class()];
  v101[3] = v20;
  v21 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastPersonSyncSourceLibraryPath" type:5];
  v101[4] = v21;
  v22 = [PLGlobalKeyValueAttributes attributesWithKey:@"LastPersonSyncSourceLibraryPath" type:2];
  v101[5] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:6];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v92 objects:v100 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v93;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v93 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v92 + 1) + 8 * j);
        v30 = [v29 key];
        [v9 setObject:v29 forKeyedSubscript:v30];
      }

      v26 = [v24 countByEnumeratingWithState:&v92 objects:v100 count:16];
    }

    while (v26);
  }

  v31 = [v9 copy];
  v32 = attributesForKey_attributesForKey;
  attributesForKey_attributesForKey = v31;
}

@end