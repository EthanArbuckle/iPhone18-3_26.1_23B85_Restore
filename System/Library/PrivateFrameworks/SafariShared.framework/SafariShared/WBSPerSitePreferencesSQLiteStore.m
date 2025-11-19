@interface WBSPerSitePreferencesSQLiteStore
+ (BOOL)isPreferenceSyncable:(id)a3;
+ (id)defaultDatabaseURL;
+ (id)sharedStore;
+ (id)staticSyncablePerSiteSettings;
- (BOOL)_migrateToSchemaVersion:(int)a3;
- (BOOL)_tryToPerformTransactionInBlock:(id)a3;
- (WBSPerSitePreferencesSQLiteStore)initWithDatabaseURL:(id)a3;
- (id)_defaultValueForPreference:(id)a3;
- (id)_queryListForPreferences:(id)a3;
- (id)_valueOfPreferences:(id)a3 forDomain:(id)a4;
- (id)defaultValueForPreference:(id)a3;
- (id)valueOfPreference:(id)a3 forDomain:(id)a4;
- (int)_createFreshDatabaseSchema;
- (int)_migrateToCurrentSchemaVersionIfNecessary;
- (int)_migrateToSchemaVersion_2;
- (int)_migrateToSchemaVersion_3;
- (int)_migrateToSchemaVersion_4;
- (int)_migrateToSchemaVersion_6;
- (int)_setDatabaseSchemaVersion:(int)a3;
- (void)_closeDatabase;
- (void)_createFreshDatabaseSchema;
- (void)_migrateToSchemaVersion_2;
- (void)_migrateToSchemaVersion_3;
- (void)_migrateToSchemaVersion_4;
- (void)_openDatabase;
- (void)_openDatabaseIfNecessary;
- (void)_setDeletedCloudKitSyncData:(id)a3 forRecordName:(id)a4 completionHandler:(id)a5;
- (void)_setSyncData:(id)a3 forPreference:(id)a4 completionHandler:(id)a5;
- (void)_setSyncData:(id)a3 forPreference:(id)a4 domain:(id)a5 recordName:(id)a6 completionHandler:(id)a7;
- (void)closeDatabase;
- (void)dealloc;
- (void)getAllDomainsConfiguredForPreference:(id)a3 completionHandler:(id)a4;
- (void)getAllPreferenceInformationForPreference:(id)a3 completionHandler:(id)a4;
- (void)getDefaultValueForPreference:(id)a3 completionHandler:(id)a4;
- (void)getDeletedCloudKitSyncDataForRecordName:(id)a3 completionHandler:(id)a4;
- (void)getSyncDataForPreference:(id)a3 completionHandler:(id)a4;
- (void)getSyncDataForPreference:(id)a3 domain:(id)a4 completionHandler:(id)a5;
- (void)getTimestampAndValueOfPreference:(id)a3 forDomain:(id)a4 completionHandler:(id)a5;
- (void)getValueOfPreference:(id)a3 forDomain:(id)a4 withTimeoutInterval:(double)a5 completionHandler:(id)a6;
- (void)getValuesOfPreference:(id)a3 forDomains:(id)a4 withTimeoutInterval:(double)a5 completionHandler:(id)a6;
- (void)getValuesOfPreferences:(id)a3 forDomain:(id)a4 withTimeoutInterval:(double)a5 completionHandler:(id)a6;
- (void)removeAllCloudKitRecordsWithCompletionHandler:(id)a3;
- (void)removeAllPreferenceValues:(id)a3;
- (void)removeAllPreferenceValuesFromPreference:(id)a3 completionHandler:(id)a4;
- (void)removeAllPreferenceValuesFromPreferences:(id)a3 completionHandler:(id)a4;
- (void)removeAllSyncData;
- (void)removePreferenceValueWithRecordName:(id)a3 completionHandler:(id)a4;
- (void)removePreferenceValuesForDomainPrefixes:(id)a3 fromPreferences:(id)a4 completionHandler:(id)a5;
- (void)removePreferenceValuesForDomains:(id)a3 fromPreference:(id)a4 completionHandler:(id)a5;
- (void)removeTombstoneWithRecordName:(id)a3 completionHandler:(id)a4;
- (void)savePerSiteSettingCloudKitRecordToDisk:(id)a3 completionHandler:(id)a4;
- (void)setDefaultValue:(id)a3 forPreference:(id)a4 completionHandler:(id)a5;
- (void)setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5 includeTimestamp:(BOOL)a6 completionHandler:(id)a7;
- (void)setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5 withTimestamp:(id)a6 completionHandler:(id)a7;
@end

@implementation WBSPerSitePreferencesSQLiteStore

+ (id)sharedStore
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__WBSPerSitePreferencesSQLiteStore_sharedStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[WBSPerSitePreferencesSQLiteStore sharedStore]::onceToken != -1)
  {
    dispatch_once(&+[WBSPerSitePreferencesSQLiteStore sharedStore]::onceToken, block);
  }

  v2 = +[WBSPerSitePreferencesSQLiteStore sharedStore]::sharedStore;

  return v2;
}

void __47__WBSPerSitePreferencesSQLiteStore_sharedStore__block_invoke(uint64_t a1)
{
  v2 = [WBSPerSitePreferencesSQLiteStore alloc];
  v5 = [*(a1 + 32) defaultDatabaseURL];
  v3 = [(WBSPerSitePreferencesSQLiteStore *)v2 initWithDatabaseURL:?];
  v4 = +[WBSPerSitePreferencesSQLiteStore sharedStore]::sharedStore;
  +[WBSPerSitePreferencesSQLiteStore sharedStore]::sharedStore = v3;

  v6 = [MEMORY[0x1E69C8A08] sharedProxy];
  [+[WBSPerSitePreferencesSQLiteStore sharedStore]::sharedStore setSyncProxy:?];
}

+ (id)defaultDatabaseURL
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 safari_mobileSafariGroupContainerDirectoryURL];
  v4 = [v3 URLByAppendingPathComponent:@"Library/Safari/PerSitePreferences.db" isDirectory:0];

  return v4;
}

- (void)_openDatabaseIfNecessary
{
  if (![(WBSPerSitePreferencesSQLiteStore *)self _isDatabaseOpen])
  {

    [(WBSPerSitePreferencesSQLiteStore *)self _openDatabase];
  }
}

- (void)_openDatabase
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
}

+ (id)staticSyncablePerSiteSettings
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = @"PerSitePreferencesContentBlockers";
  v6[1] = @"PerSitePreferencesUseReader";
  v6[2] = @"PerSitePreferencesRequestDesktopSite";
  v6[3] = @"PerSitePreferencesPageZoom";
  v6[4] = @"PerSitePreferencesProfile";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (BOOL)isPreferenceSyncable:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() staticSyncablePerSiteSettings];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (WBSPerSitePreferencesSQLiteStore)initWithDatabaseURL:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WBSPerSitePreferencesSQLiteStore;
  v5 = [(WBSPerSitePreferencesSQLiteStore *)&v13 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
    }

    databaseURL = v5->_databaseURL;
    v5->_databaseURL = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.SafariShared.WBSPerSitePreferencesSQLiteStore", v8);
    databaseQueue = v5->_databaseQueue;
    v5->_databaseQueue = v9;

    v11 = v5;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WBSPerSitePreferencesSQLiteStore;
  [(WBSPerSitePreferencesSQLiteStore *)&v2 dealloc];
}

- (void)closeDatabase
{
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__WBSPerSitePreferencesSQLiteStore_closeDatabase__block_invoke;
  block[3] = &unk_1E7FB6F80;
  block[4] = self;
  dispatch_sync(databaseQueue, block);
}

- (void)setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5 includeTimestamp:(BOOL)a6 completionHandler:(id)a7
{
  v8 = a6;
  v16 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (v8)
  {
    v15 = [MEMORY[0x1E695DF00] now];
  }

  else
  {
    v15 = 0;
  }

  [(WBSPerSitePreferencesSQLiteStore *)self setValue:v16 ofPreference:v12 forDomain:v13 withTimestamp:v15 completionHandler:v14];
}

- (void)setValue:(id)a3 ofPreference:(id)a4 forDomain:(id)a5 withTimestamp:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  databaseQueue = self->_databaseQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __100__WBSPerSitePreferencesSQLiteStore_setValue_ofPreference_forDomain_withTimestamp_completionHandler___block_invoke;
  v23[3] = &unk_1E7FC9508;
  v23[4] = self;
  v24 = v15;
  v25 = v12;
  v26 = v14;
  v27 = v13;
  v28 = v16;
  v18 = v13;
  v19 = v14;
  v20 = v12;
  v21 = v15;
  v22 = v16;
  dispatch_async(databaseQueue, v23);
}

void __100__WBSPerSitePreferencesSQLiteStore_setValue_ofPreference_forDomain_withTimestamp_completionHandler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [v2 setLocale:v3];

    v4 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v2 setTimeZone:v4];

    if (*(a1 + 40))
    {
      v5 = [v2 stringFromDate:?];
    }

    else
    {
      v5 = 0;
    }

    v26 = v5;
    v8 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:*(*(a1 + 32) + 24) query:{@"INSERT INTO preference_values (domain, preference, preference_value, timestamp)VALUES (?, ?, ?, ?)ON CONFLICT (domain, preference)DO UPDATE SET domain = excluded.domain, preference = excluded.preference, preference_value = excluded.preference_value, timestamp = excluded.timestamp"}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *buf = [*(a1 + 48) integerValue];
      SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSString * const {__strong},long,NSString * {__strong}&>(v8, (a1 + 56), (a1 + 64), buf, &v26);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = *(a1 + 48);
        SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSString * const {__strong},NSString * {__strong},NSString * const {__strong}&&>(v8, (a1 + 56), (a1 + 64), &v25, &v26);
      }
    }

    v9 = [v8 execute];
    [v8 invalidate];
    if (v9 != 101)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 56);
        v20 = *(a1 + 64);
        v22 = *(a1 + 48);
        v23 = v26;
        v24 = [*(*(a1 + 32) + 24) lastErrorMessage];
        *buf = 138413570;
        *&buf[4] = v22;
        v30 = 2112;
        v31 = v20;
        v32 = 2112;
        v33 = v21;
        v34 = 2112;
        v35 = v23;
        v36 = 2114;
        v37 = v24;
        v38 = 1024;
        v39 = v9;
        _os_log_error_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_ERROR, "Failed to insert or replace preference value: %@ for preference: %@ for domain: %@ with date: %@: %{public}@ (%d)", buf, 0x3Au);
      }
    }

    v11 = *(a1 + 72);
    if (v11)
    {
      (*(v11 + 16))(v11, v9 == 101);
      if (v9 == 101 && *(a1 + 64) && *(a1 + 48) && *(a1 + 56) && [objc_opt_class() isPreferenceSyncable:*(a1 + 64)] && objc_msgSend(MEMORY[0x1E69C8880], "isPerSiteSettingSyncEnabled"))
      {
        v12 = *(*(a1 + 32) + 8);
        v13 = [MEMORY[0x1E69C89E8] inMemoryDatabaseURL];
        LOBYTE(v12) = [v12 isEqual:v13];

        if ((v12 & 1) == 0)
        {
          v27[0] = @"PerSiteSettingName";
          v27[1] = @"Domain";
          v14 = *(a1 + 56);
          v15 = *(a1 + 48);
          v28[0] = *(a1 + 64);
          v28[1] = v14;
          v27[2] = @"Value";
          v28[2] = v15;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
          v17 = [v16 mutableCopy];

          v18 = *(*(a1 + 32) + 32);
          v19 = [v17 copy];
          [v18 saveCloudPerSiteSettingWithDictionaryRepresentation:v19 successCompletionHandler:&__block_literal_global_89];
        }
      }
    }
  }

  else
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

void __100__WBSPerSitePreferencesSQLiteStore_setValue_ofPreference_forDomain_withTimestamp_completionHandler___block_invoke_22()
{
  v0 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BB6F3000, v0, OS_LOG_TYPE_INFO, "Safari's per-site settings have been updated in CloudKit", v1, 2u);
  }
}

- (void)getValueOfPreference:(id)a3 forDomain:(id)a4 withTimeoutInterval:(double)a5 completionHandler:(id)a6
{
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19[0] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __105__WBSPerSitePreferencesSQLiteStore_getValueOfPreference_forDomain_withTimeoutInterval_completionHandler___block_invoke;
  v16[3] = &unk_1E7FC9530;
  v14 = v12;
  v18 = v14;
  v15 = v10;
  v17 = v15;
  [(WBSPerSitePreferencesSQLiteStore *)self getValuesOfPreferences:v13 forDomain:v11 withTimeoutInterval:v16 completionHandler:a5];
}

void __105__WBSPerSitePreferencesSQLiteStore_getValueOfPreference_forDomain_withTimeoutInterval_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  (*(v2 + 16))(v2);
}

- (id)_valueOfPreferences:(id)a3 forDomain:(id)a4
{
  v36[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v25 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [WBSPerSitePreferencesSQLiteStore _valueOfPreferences:forDomain:];
    }

    goto LABEL_16;
  }

  [(WBSPerSitePreferencesSQLiteStore *)self _openDatabaseIfNecessary];
  if (![(WBSPerSitePreferencesSQLiteStore *)self _isDatabaseOpen])
  {
LABEL_16:
    v26 = [objc_alloc(MEMORY[0x1E69C88F0]) initWithFirst:&unk_1F3A9AF70 second:0];
    goto LABEL_19;
  }

  v30 = [MEMORY[0x1E696AD60] string];
  v36[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v29 = [v8 arrayByAddingObjectsFromArray:v6];

  v9 = MEMORY[0x1E696AEC0];
  v10 = [@"?" safari_stringByRepeatingWithCount:objc_msgSend(v6 joinedByString:{"count"), @", "}];
  v11 = [v9 stringWithFormat:@"preference IN (%@)", v10];
  [v30 appendString:v11];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT preference_value, preference FROM preference_values WHERE domain = ? AND (%@)", v30];
  v28 = [(WBSSQLiteDatabase *)self->_database fetchQuery:v12 stringArguments:v29];
  v13 = [MEMORY[0x1E695DF90] dictionary];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v28;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v15)
  {
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = [v18 stringAtIndex:1];
        if (v19)
        {
          v20 = [v18 objectAtIndex:0];
          [v13 setObject:v20 forKeyedSubscript:v19];
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  v21 = [v14 statement];
  [v21 invalidate];

  if ([v14 lastResultCode] == 101)
  {
    v22 = objc_alloc(MEMORY[0x1E69C88F0]);
    v23 = &unk_1F3A9AF88;
    v24 = v13;
  }

  else
  {
    v22 = objc_alloc(MEMORY[0x1E69C88F0]);
    v24 = 0;
    v23 = &unk_1F3A9AF70;
  }

  v26 = [v22 initWithFirst:v23 second:v24];

LABEL_19:

  return v26;
}

- (id)valueOfPreference:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__31;
  v21 = __Block_byref_object_dispose__31;
  v22 = 0;
  databaseQueue = self->_databaseQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__WBSPerSitePreferencesSQLiteStore_valueOfPreference_forDomain___block_invoke;
  v13[3] = &unk_1E7FC9558;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v16 = &v17;
  v9 = v7;
  v10 = v6;
  dispatch_sync(databaseQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __64__WBSPerSitePreferencesSQLiteStore_valueOfPreference_forDomain___block_invoke(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v9[0] = a1[5];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v4 = [v2 _valueOfPreferences:v3 forDomain:a1[6]];
  v5 = [v4 second];

  v6 = [v5 objectForKeyedSubscript:a1[5]];
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)getValuesOfPreferences:(id)a3 forDomain:(id)a4 withTimeoutInterval:(double)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  LOBYTE(v40) = 0;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreferences_forDomain_withTimeoutInterval_completionHandler___block_invoke;
  v43[3] = &unk_1E7FC9580;
  v43[4] = self;
  v45 = &v37;
  v13 = v12;
  v44 = v13;
  v14 = MEMORY[0x1BFB13CE0](v43);

  _Block_object_dispose(&v37, 8);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3042000000;
  v40 = __Block_byref_object_copy__42;
  v41 = __Block_byref_object_dispose__43;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3042000000;
  v34 = __Block_byref_object_copy__42;
  v35 = __Block_byref_object_dispose__43;
  v36 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreferences_forDomain_withTimeoutInterval_completionHandler___block_invoke_44;
  block[3] = &unk_1E7FC95A8;
  v29 = &v37;
  v30 = &v31;
  block[4] = self;
  v15 = v10;
  v26 = v15;
  v16 = v11;
  v27 = v16;
  v17 = v14;
  v28 = v17;
  v18 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  objc_storeWeak(v32 + 5, v18);
  if (a5 != 1.79769313e308)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreferences_forDomain_withTimeoutInterval_completionHandler___block_invoke_2;
    v22[3] = &unk_1E7FC95D0;
    v24 = &v31;
    v23 = v17;
    v19 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v22);
    objc_storeWeak(v38 + 5, v19);
    v20 = dispatch_time(0, (a5 * 1000000000.0));
    v21 = dispatch_get_global_queue(21, 0);
    dispatch_after(v20, v21, v19);
  }

  dispatch_async(self->_databaseQueue, v18);

  _Block_object_dispose(&v31, 8);
  objc_destroyWeak(&v36);

  _Block_object_dispose(&v37, 8);
  objc_destroyWeak(&v42);
}

void __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreferences_forDomain_withTimeoutInterval_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    objc_sync_exit(v3);
  }

  else
  {
    *(v4 + 24) = 1;
    objc_sync_exit(v3);

    (*(*(a1 + 40) + 16))();
  }
}

void __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreferences_forDomain_withTimeoutInterval_completionHandler___block_invoke_44(uint64_t a1)
{
  block = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 72) + 8) + 40));
  v3 = WeakRetained;
  if (WeakRetained && !dispatch_block_testcancel(WeakRetained))
  {
    v4 = [*(a1 + 32) _valueOfPreferences:*(a1 + 40) forDomain:*(a1 + 48)];
    if (!dispatch_block_testcancel(v3))
    {
      if (v4)
      {
        v5 = *(a1 + 56);
        v6 = [v4 second];
        v7 = [v4 first];
        (*(v5 + 16))(v5, v6, [v7 integerValue]);
      }

      if (block)
      {
        dispatch_block_cancel(block);
      }
    }
  }
}

void __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreferences_forDomain_withTimeoutInterval_completionHandler___block_invoke_2(uint64_t a1)
{
  block = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (block)
  {
    dispatch_block_cancel(block);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getValuesOfPreference:(id)a3 forDomains:(id)a4 withTimeoutInterval:(double)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  LOBYTE(v40) = 0;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreference_forDomains_withTimeoutInterval_completionHandler___block_invoke;
  v43[3] = &unk_1E7FC9580;
  v43[4] = self;
  v45 = &v37;
  v13 = v12;
  v44 = v13;
  v14 = MEMORY[0x1BFB13CE0](v43);

  _Block_object_dispose(&v37, 8);
  v37 = 0;
  v38 = &v37;
  v39 = 0x3042000000;
  v40 = __Block_byref_object_copy__42;
  v41 = __Block_byref_object_dispose__43;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3042000000;
  v34 = __Block_byref_object_copy__42;
  v35 = __Block_byref_object_dispose__43;
  v36 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreference_forDomains_withTimeoutInterval_completionHandler___block_invoke_2;
  block[3] = &unk_1E7FC95F8;
  v29 = &v37;
  v30 = &v31;
  block[4] = self;
  v15 = v14;
  v28 = v15;
  v16 = v10;
  v26 = v16;
  v17 = v11;
  v27 = v17;
  v18 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  objc_storeWeak(v32 + 5, v18);
  if (a5 != 1.79769313e308)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreference_forDomains_withTimeoutInterval_completionHandler___block_invoke_4;
    v22[3] = &unk_1E7FC95D0;
    v24 = &v31;
    v23 = v15;
    v19 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v22);
    objc_storeWeak(v38 + 5, v19);
    v20 = dispatch_time(0, (a5 * 1000000000.0));
    v21 = dispatch_get_global_queue(21, 0);
    dispatch_after(v20, v21, v19);
  }

  dispatch_async(self->_databaseQueue, v18);

  _Block_object_dispose(&v31, 8);
  objc_destroyWeak(&v36);

  _Block_object_dispose(&v37, 8);
  objc_destroyWeak(&v42);
}

void __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreference_forDomains_withTimeoutInterval_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(*(a1 + 48) + 8);
  if (*(v4 + 24))
  {
    objc_sync_exit(v3);
  }

  else
  {
    *(v4 + 24) = 1;
    objc_sync_exit(v3);

    (*(*(a1 + 40) + 16))();
  }
}

void __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreference_forDomains_withTimeoutInterval_completionHandler___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));
  v3 = objc_loadWeakRetained((*(*(a1 + 72) + 8) + 40));
  [*(a1 + 32) _openDatabaseIfNecessary];
  if (v3 && !dispatch_block_testcancel(v3))
  {
    if ([*(a1 + 32) _isDatabaseOpen])
    {
      v15 = [MEMORY[0x1E696AD60] string];
      v16 = [MEMORY[0x1E695DF70] array];
      [v16 addObject:*(a1 + 40)];
      v4 = [*(a1 + 48) allObjects];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreference_forDomains_withTimeoutInterval_completionHandler___block_invoke_3;
      v24[3] = &unk_1E7FC5A00;
      v18 = v15;
      v25 = v18;
      v17 = v16;
      v26 = v17;
      [v4 enumerateObjectsUsingBlock:v24];

      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT preference_value, domain FROM preference_values WHERE preference = ? AND (%@)", v18];
      v19 = [*(*(a1 + 32) + 24) fetchQuery:? stringArguments:?];
      if (dispatch_block_testcancel(v3))
      {
        v5 = [v19 statement];
        [v5 invalidate];
      }

      else
      {
        v5 = [MEMORY[0x1E695DF90] dictionary];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v6 = v19;
        v7 = [v6 countByEnumeratingWithState:&v20 objects:v27 count:16];
        if (v7)
        {
          v8 = *v21;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v21 != v8)
              {
                objc_enumerationMutation(v6);
              }

              v10 = *(*(&v20 + 1) + 8 * i);
              v11 = [v10 objectAtIndex:0];
              v12 = [v10 stringAtIndex:1];
              [v5 setObject:v11 forKeyedSubscript:v12];
            }

            v7 = [v6 countByEnumeratingWithState:&v20 objects:v27 count:16];
          }

          while (v7);
        }

        v13 = [v6 statement];
        [v13 invalidate];

        if (!dispatch_block_testcancel(v3))
        {
          [v6 lastResultCode];
          (*(*(a1 + 56) + 16))();
          if (WeakRetained)
          {
            dispatch_block_cancel(WeakRetained);
          }
        }
      }
    }

    else
    {
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreference_forDomains_withTimeoutInterval_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    v5 = @" OR domain = ?";
  }

  else
  {
    v5 = @"domain = ?";
  }

  [*(a1 + 32) appendString:v5];
  [*(a1 + 40) addObject:v6];
}

void __107__WBSPerSitePreferencesSQLiteStore_getValuesOfPreference_forDomains_withTimeoutInterval_completionHandler___block_invoke_4(uint64_t a1)
{
  block = objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40));
  if (block)
  {
    dispatch_block_cancel(block);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getAllDomainsConfiguredForPreference:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__WBSPerSitePreferencesSQLiteStore_getAllDomainsConfiguredForPreference_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

void __91__WBSPerSitePreferencesSQLiteStore_getAllDomainsConfiguredForPreference_completionHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(*(*(a1 + 32) + 24), @"SELECT domain FROM preference_values WHERE preference = ?", (a1 + 40));
    v3 = [MEMORY[0x1E695DFA8] set];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v5)
    {
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(*(&v16 + 1) + 8 * i) stringAtIndex:0];
          [v3 addObject:v8];
        }

        v5 = [v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v5);
    }

    v9 = [v4 statement];
    [v9 invalidate];

    v10 = [v4 lastResultCode];
    if (v10 != 101)
    {
      v11 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 40);
        v14 = [*(*(a1 + 32) + 24) lastErrorMessage];
        *buf = 138412802;
        v21 = v13;
        v22 = 2114;
        v23 = v14;
        v24 = 1024;
        v25 = v10;
        _os_log_error_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_ERROR, "Failed to get all domains configured for preference: %@: %{public}@ (%d)", buf, 0x1Cu);
      }
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = *(a1 + 48);
    v15 = [MEMORY[0x1E695DFD8] set];
    (*(v12 + 16))(v12);
  }
}

- (void)removePreferenceValuesForDomains:(id)a3 fromPreference:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    operator new();
  }

  if (v9)
  {
    v9[2](v9, 1);
  }
}

void __102__WBSPerSitePreferencesSQLiteStore_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__WBSPerSitePreferencesSQLiteStore_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7FC58C0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v5 = [v2 _tryToPerformTransactionInBlock:v8];
  v6 = *(a1 + 64);
  if (v6)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v6);
    MEMORY[0x1BFB13480]();
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    (*(v7 + 16))(v7, v5);
  }
}

uint64_t __102__WBSPerSitePreferencesSQLiteStore_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v24 objects:v39 count:16];
  if (v2)
  {
    v4 = *v25;
    *&v3 = 141558787;
    v22 = v3;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v25 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v24 + 1) + 8 * i);
        v6 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&,NSString * const {__strong}>(*(*(a1 + 40) + 24), @"SELECT sync_data FROM preference_values WHERE preference = ? AND domain = ?", (a1 + 48), &v28);
        v7 = [v6 nextObject];
        v8 = v7;
        if (v7)
        {
          v9 = [v7 dataAtIndex:0];
        }

        else
        {
          v9 = 0;
        }

        v10 = [v6 statement];
        [v10 invalidate];

        if (([v6 lastResultCode] & 0xFFFFFFFE) != 0x64)
        {
          v11 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v16 = *(a1 + 48);
            *buf = v22;
            v32 = 1752392040;
            v33 = 2117;
            v34 = v16;
            v35 = 2160;
            v36 = 1752392040;
            v37 = 2117;
            v38 = v28;
            _os_log_error_impl(&dword_1BB6F3000, v11, OS_LOG_TYPE_ERROR, "Failed to fetch sync data before deletion for preference: %{sensitive, mask.hash}@ and domain: %{sensitive, mask.hash}@", buf, 0x2Au);
          }
        }

        v12 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&,NSString * const {__strong}>(*(*(a1 + 40) + 24), 0, @"DELETE from preference_values WHERE preference = ? AND domain = ?", (a1 + 48), &v28);
        if (v12 != 101)
        {
          v18 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v20 = v28;
            v21 = [*(*(a1 + 40) + 24) lastErrorMessage];
            *buf = 138412802;
            v32 = v20;
            v33 = 2114;
            v34 = v21;
            v35 = 1024;
            LODWORD(v36) = v12;
            _os_log_error_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_ERROR, "Failed to delete domain: %@ from preference_values: %{public}@ (%d)", buf, 0x1Cu);
          }

          v17 = 0;
          goto LABEL_24;
        }

        if ([objc_opt_class() isPreferenceSyncable:*(a1 + 48)] && objc_msgSend(MEMORY[0x1E69C8880], "isPerSiteSettingSyncEnabled"))
        {
          v29[0] = @"UseDefaultValue";
          v29[1] = @"PerSiteSettingName";
          v13 = *(a1 + 48);
          v30[0] = MEMORY[0x1E695E118];
          v30[1] = v13;
          v29[2] = @"Domain";
          v30[2] = v28;
          v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
          v15 = [v14 mutableCopy];

          if (v9)
          {
            [v15 setObject:v9 forKeyedSubscript:@"SyncData"];
          }

          [*(*(a1 + 40) + 32) saveCloudPerSiteSettingWithDictionaryRepresentation:v15 successCompletionHandler:{&__block_literal_global_68, v22}];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v24 objects:v39 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v17 = 1;
LABEL_24:

  return v17;
}

void __102__WBSPerSitePreferencesSQLiteStore_removePreferenceValuesForDomains_fromPreference_completionHandler___block_invoke_66()
{
  v0 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BB6F3000, v0, OS_LOG_TYPE_INFO, "Safari's per-site settings have been updated in CloudKit", v1, 2u);
  }
}

- (void)removePreferenceValuesForDomainPrefixes:(id)a3 fromPreferences:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count] && objc_msgSend(v8, "count"))
  {
    operator new();
  }

  if (v9)
  {
    v9[2](v9, 1);
  }
}

void __110__WBSPerSitePreferencesSQLiteStore_removePreferenceValuesForDomainPrefixes_fromPreferences_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __110__WBSPerSitePreferencesSQLiteStore_removePreferenceValuesForDomainPrefixes_fromPreferences_completionHandler___block_invoke_2;
  v6[3] = &unk_1E7FC58C0;
  v6[4] = v2;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v3 = [v2 _tryToPerformTransactionInBlock:v6];
  v4 = *(a1 + 64);
  if (v4)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v4);
    MEMORY[0x1BFB13480]();
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

uint64_t __110__WBSPerSitePreferencesSQLiteStore_removePreferenceValuesForDomainPrefixes_fromPreferences_completionHandler___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v14 = [*(a1 + 32) _queryListForPreferences:*(a1 + 40)];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 48);
  v2 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v2)
  {
    v3 = *v17;
    while (2)
    {
      v4 = 0;
      do
      {
        if (*v17 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v16 + 1) + 8 * v4);
        v6 = *(*(a1 + 32) + 24);
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE from preference_values WHERE preference in (%@) AND domain LIKE ?", v14];
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%%", v5];
        v8 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * {__strong}>(v6, 0, v7, &v15);

        if (v8 != 101)
        {
          v10 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v12 = [*(*(a1 + 32) + 24) lastErrorMessage];
            *buf = 138412802;
            v21 = v5;
            v22 = 2114;
            v23 = v12;
            v24 = 1024;
            v25 = v8;
            _os_log_error_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_ERROR, "Failed to delete domain prefix: %@ from preference_values: %{public}@ (%d)", buf, 0x1Cu);
          }

          v9 = 0;
          goto LABEL_13;
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (id)_defaultValueForPreference:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v18 = a3;
  [(WBSPerSitePreferencesSQLiteStore *)self _openDatabaseIfNecessary];
  if ([(WBSPerSitePreferencesSQLiteStore *)self _isDatabaseOpen])
  {
    v4 = SafariShared::WBSSQLiteDatabaseFetch<NSString * {__strong}&>(self->_database, @"SELECT default_value FROM default_preferences WHERE preference = ?", &v18);
    v5 = [v4 nextObject];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 objectAtIndex:0];
    }

    else
    {
      v7 = 0;
    }

    v10 = [v4 statement];
    [v10 invalidate];

    v11 = [v4 lastResultCode];
    if ((v11 & 0xFFFFFFFE) != 0x64)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v16 = v18;
        v17 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
        *buf = 138412802;
        v20 = v16;
        v21 = 2114;
        v22 = v17;
        v23 = 1024;
        v24 = v11;
        _os_log_error_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch default value for preference: %@: %{public}@ (%d)", buf, 0x1Cu);
      }
    }

    v13 = objc_alloc(MEMORY[0x1E69C88F0]);
    v14 = [MEMORY[0x1E696AD98] numberWithBool:(v11 & 0xFFFFFFFE) == 100];
    v9 = [v13 initWithFirst:v14 second:v7];
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E69C88F0]);
    v9 = [v8 initWithFirst:MEMORY[0x1E695E110] second:0];
  }

  return v9;
}

- (id)defaultValueForPreference:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__31;
  v16 = __Block_byref_object_dispose__31;
  v17 = 0;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__WBSPerSitePreferencesSQLiteStore_defaultValueForPreference___block_invoke;
  block[3] = &unk_1E7FC4D50;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(databaseQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __62__WBSPerSitePreferencesSQLiteStore_defaultValueForPreference___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) _defaultValueForPreference:*(a1 + 40)];
  v2 = [v5 second];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)getDefaultValueForPreference:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__WBSPerSitePreferencesSQLiteStore_getDefaultValueForPreference_completionHandler___block_invoke;
  block[3] = &unk_1E7FB7CC0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(databaseQueue, block);
}

void __83__WBSPerSitePreferencesSQLiteStore_getDefaultValueForPreference_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _defaultValueForPreference:*(a1 + 40)];
  v3 = *(a1 + 48);
  v6 = v2;
  v4 = [v2 second];
  v5 = [v6 first];
  (*(v3 + 16))(v3, v4, [v5 BOOLValue]);
}

- (void)setDefaultValue:(id)a3 forPreference:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  databaseQueue = self->_databaseQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__WBSPerSitePreferencesSQLiteStore_setDefaultValue_forPreference_completionHandler___block_invoke;
  v15[3] = &unk_1E7FB6F58;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(databaseQueue, v15);
}

void __84__WBSPerSitePreferencesSQLiteStore_setDefaultValue_forPreference_completionHandler___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = *(*(a1 + 32) + 24);
      *buf = [*(a1 + 40) integerValue];
      v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&,long>(v2, 0, @"INSERT INTO default_preferences (preference, default_value) VALUES (?, ?) ON CONFLICT (preference) DO UPDATE SET preference = excluded.preference, default_value = excluded.default_value", (a1 + 48), buf);
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v3 = 1;
        goto LABEL_13;
      }

      v6 = *(*(a1 + 32) + 24);
      v15 = *(a1 + 40);
      v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&,NSString * {__strong}>(v6, 0, @"INSERT INTO default_preferences (preference, default_value) VALUES (?, ?) ON CONFLICT (preference) DO UPDATE SET preference = excluded.preference, default_value = excluded.default_value", (a1 + 48), &v15);
    }

    if (v3 == 101)
    {
      v7 = 1;
LABEL_16:
      v9 = *(a1 + 56);
      if (v9)
      {
        (*(v9 + 16))(v9, v7);
      }

      if (v7 && *(a1 + 48) && *(a1 + 40) && [objc_opt_class() isPreferenceSyncable:*(a1 + 48)])
      {
        if ([MEMORY[0x1E69C8880] isPerSiteSettingSyncEnabled])
        {
          v16[0] = @"PerSiteSettingName";
          v16[1] = @"Value";
          v10 = *(a1 + 40);
          v17[0] = *(a1 + 48);
          v17[1] = v10;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
          [*(*(a1 + 32) + 32) saveCloudPerSiteSettingWithDictionaryRepresentation:v11 successCompletionHandler:&__block_literal_global_84];
        }
      }

      return;
    }

LABEL_13:
    v8 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      v12 = *(a1 + 48);
      v14 = [*(*(a1 + 32) + 24) lastErrorMessage];
      *buf = 138413058;
      *&buf[4] = v13;
      v19 = 2112;
      v20 = v12;
      v21 = 2114;
      v22 = v14;
      v23 = 1024;
      v24 = v3;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to set default value: %@ for preference: %@: %{public}@ (%d)", buf, 0x26u);
    }

    v7 = 0;
    goto LABEL_16;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(v4 + 16);

    v5();
  }
}

void __84__WBSPerSitePreferencesSQLiteStore_setDefaultValue_forPreference_completionHandler___block_invoke_82()
{
  v0 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1BB6F3000, v0, OS_LOG_TYPE_INFO, "Safari's per-site settings have been updated in CloudKit", v1, 2u);
  }
}

- (void)getTimestampAndValueOfPreference:(id)a3 forDomain:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  databaseQueue = self->_databaseQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __97__WBSPerSitePreferencesSQLiteStore_getTimestampAndValueOfPreference_forDomain_completionHandler___block_invoke;
  v15[3] = &unk_1E7FB6F58;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(databaseQueue, v15);
}

void __97__WBSPerSitePreferencesSQLiteStore_getTimestampAndValueOfPreference_forDomain_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v8 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&,NSString * const {__strong}>(*(*(a1 + 32) + 24), @"SELECT preference_value, strftime('%s', timestamp) FROM preference_values WHERE domain = ? AND preference = ?", (a1 + 40), (a1 + 48));
    v2 = [v8 nextObject];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 objectAtIndex:0];
      v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v3, "intAtIndex:", 1)}];
    }

    else
    {
      v5 = 0;
      v4 = 0;
    }

    v7 = [v8 statement];
    [v7 invalidate];

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

- (void)getAllPreferenceInformationForPreference:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__WBSPerSitePreferencesSQLiteStore_getAllPreferenceInformationForPreference_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

void __95__WBSPerSitePreferencesSQLiteStore_getAllPreferenceInformationForPreference_completionHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v17 = a1;
    v16 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(*(*(a1 + 32) + 24), @"SELECT domain, preference_value, strftime('%s', timestamp) FROM preference_values WHERE preference = ?", (a1 + 40));
    v19 = [MEMORY[0x1E695DFA8] set];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v16;
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = *v22;
      do
      {
        v7 = 0;
        v8 = v2;
        v9 = v3;
        v10 = v4;
        do
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * v7);
          v4 = [v11 stringAtIndex:0];

          v3 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v11, "intAtIndex:", 1)}];

          v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v11, "intAtIndex:", 2)}];

          v12 = [[WBSPerSitePreferenceValueInformation alloc] initWithDomain:v4 value:v3 creationDate:v2];
          [v19 addObject:v12];

          ++v7;
          v8 = v2;
          v9 = v3;
          v10 = v4;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v5);
    }

    v13 = [obj statement];
    [v13 invalidate];

    if ([obj lastResultCode] != 101)
    {
      v14 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [*(*(v17 + 32) + 24) lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        __95__WBSPerSitePreferencesSQLiteStore_getAllPreferenceInformationForPreference_completionHandler___block_invoke_cold_1();
      }
    }

    (*(*(v17 + 48) + 16))();
  }

  else
  {
    v15 = *(a1 + 48);
    v20 = [MEMORY[0x1E695DFD8] set];
    (*(v15 + 16))(v15);
  }
}

- (void)removeAllPreferenceValuesFromPreference:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__WBSPerSitePreferencesSQLiteStore_removeAllPreferenceValuesFromPreference_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

uint64_t __94__WBSPerSitePreferencesSQLiteStore_removeAllPreferenceValuesFromPreference_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&>(*(*(a1 + 32) + 24), 0, @"DELETE FROM preference_values WHERE preference = ?", (a1 + 40));
    if (v2 != 101)
    {
      v3 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 40);
        v7 = [*(*(a1 + 32) + 24) lastErrorMessage];
        v8 = 138412802;
        v9 = v6;
        v10 = 2114;
        v11 = v7;
        v12 = 1024;
        v13 = v2;
        _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Failed to delete all preference values from preference %@: %{public}@ (%d)", &v8, 0x1Cu);
      }
    }

    result = *(a1 + 48);
    if (result)
    {
      return (*(result + 16))(result, v2 == 101);
    }
  }

  else
  {
    result = *(a1 + 48);
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  return result;
}

- (void)removeAllPreferenceValuesFromPreferences:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__WBSPerSitePreferencesSQLiteStore_removeAllPreferenceValuesFromPreferences_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

void __95__WBSPerSitePreferencesSQLiteStore_removeAllPreferenceValuesFromPreferences_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = [*(a1 + 32) _queryListForPreferences:*(a1 + 40)];
    v3 = *(*(a1 + 32) + 24);
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM preference_values WHERE preference in (%@)", v2];
    v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v3, 0, v4);

    if (v5 != 101)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = [*(*(a1 + 32) + 24) lastErrorMessage];
        *buf = 138412802;
        v12 = v2;
        v13 = 2114;
        v14 = v10;
        v15 = 1024;
        v16 = v5;
        _os_log_error_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_ERROR, "Failed to delete all preference values from preferences (%@): %{public}@ (%d)", buf, 0x1Cu);
      }
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, v5 == 101);
    }
  }

  else
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = *(v8 + 16);

      v9();
    }
  }
}

- (void)removeAllPreferenceValues:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__WBSPerSitePreferencesSQLiteStore_removeAllPreferenceValues___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

uint64_t __62__WBSPerSitePreferencesSQLiteStore_removeAllPreferenceValues___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 24), 0, @"DELETE FROM preference_values");
    if (v2 != 101)
    {
      v3 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        [*(*(a1 + 32) + 24) lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        __62__WBSPerSitePreferencesSQLiteStore_removeAllPreferenceValues___block_invoke_cold_1();
      }
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))(result, v2 == 101);
    }
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  return result;
}

- (void)savePerSiteSettingCloudKitRecordToDisk:(id)a3 completionHandler:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"UseDefaultValue"];

  if (v8)
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 safari_encodedRecordData];
      v11 = [v6 recordID];
      v12 = [v11 recordName];
      v28 = 141558531;
      v29 = 1752392040;
      v30 = 2117;
      v31 = v10;
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_1BB6F3000, v9, OS_LOG_TYPE_INFO, "Saving deleted CloudKit sync data: %{sensitive, mask.hash}@ with record name: %{public}@.", &v28, 0x20u);
    }

    v13 = [v6 safari_encodedRecordData];
    v14 = [v6 recordID];
    v15 = [v14 recordName];
    [(WBSPerSitePreferencesSQLiteStore *)self _setDeletedCloudKitSyncData:v13 forRecordName:v15 completionHandler:v7];
  }

  else
  {
    v16 = [v6 safari_encryptedValues];
    v13 = [v16 objectForKeyedSubscript:@"Domain"];

    v17 = [v6 safari_encryptedValues];
    v14 = [v17 objectForKeyedSubscript:@"PerSiteSettingName"];

    if (v13)
    {
      v18 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v6 recordID];
        v20 = [v19 recordName];
        v21 = [v6 safari_encodedRecordData];
        v28 = 141559555;
        v29 = 1752392040;
        v30 = 2117;
        v31 = v20;
        v32 = 2114;
        v33 = v21;
        v34 = 2160;
        v35 = 1752392040;
        v36 = 2117;
        v37 = v14;
        v38 = 2160;
        v39 = 1752392040;
        v40 = 2117;
        v41 = v13;
        _os_log_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_INFO, "Saving sync data: %{sensitive, mask.hash}@ and record name: %{public}@ for preference: %{sensitive, mask.hash}@ and domain: %{sensitive, mask.hash}@.", &v28, 0x48u);
      }

      v15 = [v6 safari_encodedRecordData];
      v22 = [v6 recordID];
      v23 = [v22 recordName];
      [(WBSPerSitePreferencesSQLiteStore *)self _setSyncData:v15 forPreference:v14 domain:v13 recordName:v23 completionHandler:v7];
    }

    else
    {
      v24 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v6 recordID];
        v26 = [v25 recordName];
        v27 = [v6 safari_encodedRecordData];
        v28 = 141559043;
        v29 = 1752392040;
        v30 = 2117;
        v31 = v26;
        v32 = 2114;
        v33 = v27;
        v34 = 2160;
        v35 = 1752392040;
        v36 = 2117;
        v37 = v14;
        _os_log_impl(&dword_1BB6F3000, v24, OS_LOG_TYPE_INFO, "Saving sync data: %{sensitive, mask.hash}@ and record name: %{public}@ for preference: %{sensitive, mask.hash}@.", &v28, 0x34u);
      }

      v15 = [v6 safari_encodedRecordData];
      [(WBSPerSitePreferencesSQLiteStore *)self _setSyncData:v15 forPreference:v14 completionHandler:v7];
    }
  }
}

- (void)getSyncDataForPreference:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__WBSPerSitePreferencesSQLiteStore_getSyncDataForPreference_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

void __79__WBSPerSitePreferencesSQLiteStore_getSyncDataForPreference_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(*(*(a1 + 32) + 24), @"SELECT sync_data FROM default_preferences WHERE preference = ?", (a1 + 40));
    v3 = [v2 nextObject];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 dataAtIndex:0];
    }

    else
    {
      v5 = 0;
    }

    v7 = [v2 statement];
    [v7 invalidate];

    v8 = [v2 lastResultCode] & 0xFFFFFFFE;
    if (v8 != 100)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __79__WBSPerSitePreferencesSQLiteStore_getSyncDataForPreference_completionHandler___block_invoke_cold_1();
      }
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v8 == 100);
    }
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

- (void)getSyncDataForPreference:(id)a3 domain:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  databaseQueue = self->_databaseQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __86__WBSPerSitePreferencesSQLiteStore_getSyncDataForPreference_domain_completionHandler___block_invoke;
  v15[3] = &unk_1E7FB6F58;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(databaseQueue, v15);
}

void __86__WBSPerSitePreferencesSQLiteStore_getSyncDataForPreference_domain_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&,NSString * const {__strong}>(*(*(a1 + 32) + 24), @"SELECT sync_data FROM preference_values WHERE preference = ? AND domain = ?", (a1 + 40), (a1 + 48));
    v3 = [v2 nextObject];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 dataAtIndex:0];
    }

    else
    {
      v5 = 0;
    }

    v7 = [v2 statement];
    [v7 invalidate];

    v8 = [v2 lastResultCode] & 0xFFFFFFFE;
    if (v8 != 100)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __86__WBSPerSitePreferencesSQLiteStore_getSyncDataForPreference_domain_completionHandler___block_invoke_cold_1();
      }
    }

    v10 = *(a1 + 56);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v8 == 100);
    }
  }

  else
  {
    v6 = *(*(a1 + 56) + 16);

    v6();
  }
}

- (void)getDeletedCloudKitSyncDataForRecordName:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__WBSPerSitePreferencesSQLiteStore_getDeletedCloudKitSyncDataForRecordName_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

void __94__WBSPerSitePreferencesSQLiteStore_getDeletedCloudKitSyncDataForRecordName_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = SafariShared::WBSSQLiteDatabaseFetch<NSString * const {__strong}&>(*(*(a1 + 32) + 24), @"SELECT sync_data FROM deleted_cloudkit_records WHERE record_name = ?", (a1 + 40));
    v3 = [v2 nextObject];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 dataAtIndex:0];
    }

    else
    {
      v5 = 0;
    }

    v7 = [v2 statement];
    [v7 invalidate];

    v8 = [v2 lastResultCode] & 0xFFFFFFFE;
    if (v8 != 100)
    {
      v9 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __94__WBSPerSitePreferencesSQLiteStore_getDeletedCloudKitSyncDataForRecordName_completionHandler___block_invoke_cold_1();
      }
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, v5, v8 == 100);
    }
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

- (void)removePreferenceValueWithRecordName:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__WBSPerSitePreferencesSQLiteStore_removePreferenceValueWithRecordName_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

uint64_t __90__WBSPerSitePreferencesSQLiteStore_removePreferenceValueWithRecordName_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&>(*(*(a1 + 32) + 24), 0, @"DELETE FROM preference_values WHERE record_name = ?", (a1 + 40));
    if (v2 != 101)
    {
      v3 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __90__WBSPerSitePreferencesSQLiteStore_removePreferenceValueWithRecordName_completionHandler___block_invoke_cold_1();
      }
    }

    result = *(a1 + 48);
    if (result)
    {
      return (*(result + 16))(result, v2 == 101);
    }
  }

  else
  {
    result = *(a1 + 48);
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  return result;
}

- (void)removeAllCloudKitRecordsWithCompletionHandler:(id)a3
{
  v4 = a3;
  databaseQueue = self->_databaseQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __82__WBSPerSitePreferencesSQLiteStore_removeAllCloudKitRecordsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB6F08;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(databaseQueue, v7);
}

uint64_t __82__WBSPerSitePreferencesSQLiteStore_removeAllCloudKitRecordsWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 24), 0, @"UPDATE default_preferences SET sync_data = NULL") != 101)
    {
      v2 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __82__WBSPerSitePreferencesSQLiteStore_removeAllCloudKitRecordsWithCompletionHandler___block_invoke_cold_1();
      }
    }

    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 24), 0, @"UPDATE preference_values SET sync_data = NULL") != 101)
    {
      v3 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __82__WBSPerSitePreferencesSQLiteStore_removeAllCloudKitRecordsWithCompletionHandler___block_invoke_cold_2();
      }
    }

    v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(*(a1 + 32) + 24), 0, @"DROP TABLE IF EXISTS deleted_cloudkit_records");
    if (v4 != 101)
    {
      v5 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __82__WBSPerSitePreferencesSQLiteStore_removeAllCloudKitRecordsWithCompletionHandler___block_invoke_cold_3();
      }
    }

    result = *(a1 + 40);
    if (result)
    {
      return (*(result + 16))(result, v4 == 101);
    }
  }

  else
  {
    result = *(a1 + 40);
    if (result)
    {
      v7 = *(result + 16);

      return v7();
    }
  }

  return result;
}

- (void)removeTombstoneWithRecordName:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  databaseQueue = self->_databaseQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__WBSPerSitePreferencesSQLiteStore_removeTombstoneWithRecordName_completionHandler___block_invoke;
  block[3] = &unk_1E7FB6F30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(databaseQueue, block);
}

uint64_t __84__WBSPerSitePreferencesSQLiteStore_removeTombstoneWithRecordName_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<NSString * const {__strong}&>(*(*(a1 + 32) + 24), 0, @"DELETE FROM deleted_cloudkit_records WHERE record_name = ?", (a1 + 40)) != 101)
    {
      v2 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __84__WBSPerSitePreferencesSQLiteStore_removeTombstoneWithRecordName_completionHandler___block_invoke_cold_1();
      }
    }

    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 48) + 16);

    return v4();
  }
}

- (void)removeAllSyncData
{
  v3 = [objc_opt_class() staticSyncablePerSiteSettings];
  v4 = [v3 allObjects];
  [(WBSPerSitePreferencesSQLiteStore *)self removeAllPreferenceValuesFromPreferences:v4 completionHandler:&__block_literal_global_124_0];

  [(WBSPerSitePreferencesSQLiteStore *)self removeAllCloudKitRecordsWithCompletionHandler:&__block_literal_global_127_1];
}

void __53__WBSPerSitePreferencesSQLiteStore_removeAllSyncData__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __53__WBSPerSitePreferencesSQLiteStore_removeAllSyncData__block_invoke_cold_1();
    }
  }
}

void __53__WBSPerSitePreferencesSQLiteStore_removeAllSyncData__block_invoke_125(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __53__WBSPerSitePreferencesSQLiteStore_removeAllSyncData__block_invoke_125_cold_1();
    }
  }
}

- (void)_setSyncData:(id)a3 forPreference:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  databaseQueue = self->_databaseQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__WBSPerSitePreferencesSQLiteStore__setSyncData_forPreference_completionHandler___block_invoke;
  v15[3] = &unk_1E7FB6F58;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(databaseQueue, v15);
}

void __81__WBSPerSitePreferencesSQLiteStore__setSyncData_forPreference_completionHandler___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:*(*(a1 + 32) + 24) query:{@"INSERT INTO default_preferences (preference, sync_data) VALUES (?, ?) ON CONFLICT (preference) DO UPDATE SET sync_data = excluded.sync_data"}];
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSData * const {__strong}&>(v2, (a1 + 40), (a1 + 48));
    v3 = [v2 execute];
    [v2 invalidate];
    if (v3 != 101)
    {
      v4 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 40);
        v9 = 141558275;
        v10 = 1752392040;
        v11 = 2117;
        v12 = v5;
        _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Failed to insert default sync data for preference: %{sensitive, mask.hash}@", &v9, 0x16u);
      }
    }

    v6 = *(a1 + 56);
    if (v6)
    {
      (*(v6 + 16))(v6, v3 == 101);
    }
  }

  else
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

- (void)_setSyncData:(id)a3 forPreference:(id)a4 domain:(id)a5 recordName:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  databaseQueue = self->_databaseQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __99__WBSPerSitePreferencesSQLiteStore__setSyncData_forPreference_domain_recordName_completionHandler___block_invoke;
  v23[3] = &unk_1E7FC9508;
  v23[4] = self;
  v24 = v14;
  v25 = v13;
  v26 = v12;
  v27 = v15;
  v28 = v16;
  v18 = v15;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v16;
  dispatch_async(databaseQueue, v23);
}

void __99__WBSPerSitePreferencesSQLiteStore__setSyncData_forPreference_domain_recordName_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:*(*(a1 + 32) + 24) query:{@"INSERT INTO preference_values (domain, preference, sync_data, record_name) VALUES (?, ?, ?, ?) ON CONFLICT (domain, preference) DO UPDATE SET sync_data = excluded.sync_data, record_name = excluded.record_name"}];
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSString * const {__strong},NSData * const {__strong}&,NSString * const {__strong}>(v2, (a1 + 40), (a1 + 48), (a1 + 56), (a1 + 64));
    v3 = [v2 execute];
    [v2 invalidate];
    if (v3 != 101)
    {
      v4 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __99__WBSPerSitePreferencesSQLiteStore__setSyncData_forPreference_domain_recordName_completionHandler___block_invoke_cold_1();
      }
    }

    v5 = *(a1 + 72);
    if (v5)
    {
      (*(v5 + 16))(v5, v3 == 101);
    }
  }

  else
  {
    v6 = *(a1 + 72);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

- (void)_setDeletedCloudKitSyncData:(id)a3 forRecordName:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  databaseQueue = self->_databaseQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __96__WBSPerSitePreferencesSQLiteStore__setDeletedCloudKitSyncData_forRecordName_completionHandler___block_invoke;
  v15[3] = &unk_1E7FB6F58;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(databaseQueue, v15);
}

void __96__WBSPerSitePreferencesSQLiteStore__setDeletedCloudKitSyncData_forRecordName_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _openDatabaseIfNecessary];
  if ([*(a1 + 32) _isDatabaseOpen])
  {
    v2 = [objc_alloc(MEMORY[0x1E69C89F0]) initWithDatabase:*(*(a1 + 32) + 24) query:{@"INSERT INTO deleted_cloudkit_records (record_name, sync_data) VALUES (?, ?) ON CONFLICT (record_name) DO UPDATE SET sync_data = excluded.sync_data"}];
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * const {__strong}&,NSData * const {__strong}&>(v2, (a1 + 40), (a1 + 48));
    v3 = [v2 execute];
    [v2 invalidate];
    if (v3 != 101)
    {
      v4 = WBS_LOG_CHANNEL_PREFIXCloudSettings();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_INFO, "Failed to insert deleted CloudKit sync data.", v8, 2u);
      }
    }

    v5 = *(a1 + 56);
    if (v5)
    {
      (*(v5 + 16))(v5, v3 == 101);
    }
  }

  else
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = *(v6 + 16);

      v7();
    }
  }
}

- (id)_queryListForPreferences:(id)a3
{
  v3 = [a3 safari_mapObjectsUsingBlock:&__block_literal_global_139_0];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

id __61__WBSPerSitePreferencesSQLiteStore__queryListForPreferences___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'", a2];

  return v2;
}

- (int)_migrateToCurrentSchemaVersionIfNecessary
{
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(self->_database, @"PRAGMA user_version");
  v4 = [v3 nextObject];
  v5 = [v4 intAtIndex:0];

  v6 = [v3 statement];
  [v6 invalidate];

  if (v5 <= 5)
  {
    if (v5)
    {
      --v5;
      while (v5 != 5)
      {
        v7 = [(WBSPerSitePreferencesSQLiteStore *)self _migrateToSchemaVersion:(v5 + 2)];
        ++v5;
        if (!v7)
        {
          goto LABEL_11;
        }
      }

      v5 = 6;
    }

    else if ([(WBSPerSitePreferencesSQLiteStore *)self _createFreshDatabaseSchema]== 101)
    {
      v5 = 6;
      [(WBSPerSitePreferencesSQLiteStore *)self _setDatabaseSchemaVersion:6];
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_11:

  return v5;
}

- (BOOL)_migrateToSchemaVersion:(int)a3
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_migrateToSchemaVersion_%d", *&a3];
  v6 = NSSelectorFromString(v5);

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__WBSPerSitePreferencesSQLiteStore__migrateToSchemaVersion___block_invoke;
  v8[3] = &unk_1E7FC9620;
  v8[4] = self;
  v8[5] = v6;
  v9 = a3;
  return [(WBSPerSitePreferencesSQLiteStore *)self _tryToPerformTransactionInBlock:v8];
}

BOOL __60__WBSPerSitePreferencesSQLiteStore__migrateToSchemaVersion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) methodSignatureForSelector:*(a1 + 40)];
  v3 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v2];
  [v3 setSelector:*(a1 + 40)];
  [v3 invokeWithTarget:*(a1 + 32)];
  v6 = 0;
  [v3 getReturnValue:&v6];
  v4 = v6 == 101 && [*(a1 + 32) _setDatabaseSchemaVersion:*(a1 + 48)] != 0;

  return v4;
}

- (int)_setDatabaseSchemaVersion:(int)a3
{
  v17 = *MEMORY[0x1E69E9840];
  database = self->_database;
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PRAGMA user_version = %d", *&a3];
  v7 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, v6);

  if (v7 != 101)
  {
    v8 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      *buf = 67109634;
      v12 = a3;
      v13 = 2114;
      v14 = v10;
      v15 = 1024;
      v16 = v7;
      _os_log_error_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_ERROR, "Failed to set the Per Site Preferences store database schema version to %d: %{public}@ (%d)", buf, 0x18u);
    }
  }

  return v7;
}

- (int)_createFreshDatabaseSchema
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE default_preferences (id INTEGER PRIMARY KEY AUTOINCREMENT,preference TEXT NOT NULL UNIQUE,default_value NUMERIC,sync_data BLOB NULL)");
  if (v3 != 101)
  {
    v5 = v3;
    v6 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSPerSitePreferencesSQLiteStore _createFreshDatabaseSchema];
    }

    goto LABEL_10;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE preference_values (id INTEGER PRIMARY KEY AUTOINCREMENT,domain TEXT NOT NULL,preference TEXT NOT NULL,preference_value NUMERIC,timestamp TEXT NULL,sync_data BLOB NULL,record_name TEXT NULL,UNIQUE(domain, preference))");
  if (v4 != 101)
  {
    v5 = v4;
    v6 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSPerSitePreferencesSQLiteStore _createFreshDatabaseSchema];
    }

    goto LABEL_10;
  }

  v5 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE deleted_cloudkit_records (record_name TEXT NOT NULL UNIQUE,sync_data BLOB)");
  if (v5 != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSPerSitePreferencesSQLiteStore _createFreshDatabaseSchema];
    }

LABEL_10:
  }

  return v5;
}

- (int)_migrateToSchemaVersion_2
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE preference_values ADD COLUMN timestamp TEXT");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSPerSitePreferencesSQLiteStore _migrateToSchemaVersion_2];
    }
  }

  return v3;
}

- (int)_migrateToSchemaVersion_3
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE preference_values ADD COLUMN sync_data BLOB");
  if (v3 != 101)
  {
    v4 = v3;
    v5 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSPerSitePreferencesSQLiteStore _migrateToSchemaVersion_3];
    }

    goto LABEL_7;
  }

  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE preference_values ADD COLUMN record_name TEXT");
  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSPerSitePreferencesSQLiteStore _migrateToSchemaVersion_3];
    }

LABEL_7:
  }

  return v4;
}

- (int)_migrateToSchemaVersion_4
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ALTER TABLE default_preferences ADD COLUMN sync_data BLOB");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSPerSitePreferencesSQLiteStore _migrateToSchemaVersion_4];
    }
  }

  return v3;
}

- (int)_migrateToSchemaVersion_6
{
  v3 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"CREATE TABLE IF NOT EXISTS deleted_cloudkit_records (record_name TEXT NOT NULL UNIQUE,sync_data BLOB)");
  if (v3 != 101)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSPerSitePreferencesSQLiteStore _createFreshDatabaseSchema];
    }
  }

  return v3;
}

- (void)_closeDatabase
{
  [(WBSSQLiteDatabase *)self->_database close];
  database = self->_database;
  self->_database = 0;
}

- (BOOL)_tryToPerformTransactionInBlock:(id)a3
{
  v4 = a3;
  if (![(WBSPerSitePreferencesSQLiteStore *)self _isDatabaseOpen])
  {
    goto LABEL_15;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"BEGIN TRANSACTION") != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSPerSitePreferencesSQLiteStore _tryToPerformTransactionInBlock:];
    }

    goto LABEL_14;
  }

  if (!v4[2](v4))
  {
LABEL_11:
    if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"ROLLBACK TRANSACTION") == 101)
    {
LABEL_15:
      v5 = 0;
      goto LABEL_16;
    }

    v6 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSPerSitePreferencesSQLiteStore _tryToPerformTransactionInBlock:];
    }

LABEL_14:

    goto LABEL_15;
  }

  if (SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(self->_database, 0, @"COMMIT TRANSACTION") != 101)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXPerSitePreferences();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteDatabase *)self->_database lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [WBSPerSitePreferencesSQLiteStore _tryToPerformTransactionInBlock:];
    }

    goto LABEL_11;
  }

  v5 = 1;
LABEL_16:

  return v5;
}

- (void)_valueOfPreferences:forDomain:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __95__WBSPerSitePreferencesSQLiteStore_getAllPreferenceInformationForPreference_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to get all preference information: %{public}@ (%d)", v4, v5);
}

void __62__WBSPerSitePreferencesSQLiteStore_removeAllPreferenceValues___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to delete all preference values.: %{public}@ (%d)", v4, v5);
}

void __79__WBSPerSitePreferencesSQLiteStore_getSyncDataForPreference_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __86__WBSPerSitePreferencesSQLiteStore_getSyncDataForPreference_domain_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __94__WBSPerSitePreferencesSQLiteStore_getDeletedCloudKitSyncDataForRecordName_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__WBSPerSitePreferencesSQLiteStore_removePreferenceValueWithRecordName_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __84__WBSPerSitePreferencesSQLiteStore_removeTombstoneWithRecordName_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __99__WBSPerSitePreferencesSQLiteStore__setSyncData_forPreference_domain_recordName_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

- (void)_createFreshDatabaseSchema
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to create the deleted_cloudkit_records table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_2
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to add timestamp column to preference_values table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_3
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to add record_name column to preference_values table: %{public}@ (%d)", v4, v5);
}

- (void)_migrateToSchemaVersion_4
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to add sync_data column to default_preferences table: %{public}@ (%d)", v4, v5);
}

- (void)_tryToPerformTransactionInBlock:.cold.1()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to begin transaction: %{public}@ (%d)", v4, v5);
}

- (void)_tryToPerformTransactionInBlock:.cold.2()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to commit transaction: %{public}@ (%d)", v4, v5);
}

- (void)_tryToPerformTransactionInBlock:.cold.3()
{
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10(v1, v2, v3, 5.8382e-34);
  OUTLINED_FUNCTION_2_3(&dword_1BB6F3000, "Failed to rollback transaction: %{public}@ (%d)", v4, v5);
}

@end