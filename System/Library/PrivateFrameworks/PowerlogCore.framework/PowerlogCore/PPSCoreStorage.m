@interface PPSCoreStorage
+ (id)sharedFlatStorage;
+ (id)sharedSQLStorage;
- (BOOL)mergePreUnlockDBFiles;
- (PPSCoreStorage)init;
- (id)storageClassForKey:(id)a3;
- (void)setupEntryObjects;
- (void)setupMetadataStorage;
- (void)setupStorage;
- (void)startAllStorage;
- (void)startStorage;
@end

@implementation PPSCoreStorage

+ (id)sharedSQLStorage
{
  v2 = +[PowerlogCore sharedCore];
  v3 = [v2 coreStorage];

  v4 = [v3 sqlStorage];

  return v4;
}

- (PPSCoreStorage)init
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
LABEL_3:
    v3 = 0;
    goto LABEL_4;
  }

  v6 = +[PLUtilities PreUnlockTelemetryEnabled];
  v7 = PPSCoreStorageLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "PreUnlockTelemetry enabled", buf, 2u);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "PreUnlockTelemetry disabled", buf, 2u);
    }

    v9 = +[PowerlogCore sharedCore];
    v10 = [v9 storage];
    v11 = [v10 storageLocked];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v24.receiver = self;
  v24.super_class = PPSCoreStorage;
  v12 = [(PPSCoreStorage *)&v24 init];
  if (v12)
  {
    v13 = PPSCoreStorageLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v13, OS_LOG_TYPE_DEFAULT, "Initializing", buf, 2u);
    }

    v14 = objc_alloc_init(PPSSQLStorage);
    [(PPSCoreStorage *)v12 setSqlStorage:v14];

    v15 = +[PowerlogCore sharedCore];
    v16 = [v15 storage];
    v17 = [v16 storageLocked];

    sqlStorage = v12->_sqlStorage;
    if (v17)
    {
      v28 = &unk_1F540A290;
      v29[0] = sqlStorage;
      v19 = MEMORY[0x1E695DF20];
      v20 = v29;
      v21 = &v28;
      v22 = 1;
    }

    else
    {
      v26[0] = &unk_1F540A290;
      v26[1] = &unk_1F540A2A8;
      v27[0] = sqlStorage;
      v27[1] = sqlStorage;
      v26[2] = &unk_1F540A2C0;
      v26[3] = &unk_1F540A2D8;
      v27[2] = sqlStorage;
      v27[3] = sqlStorage;
      v26[4] = &unk_1F540A2F0;
      v27[4] = sqlStorage;
      v19 = MEMORY[0x1E695DF20];
      v20 = v27;
      v21 = v26;
      v22 = 5;
    }

    v23 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
    [(PPSCoreStorage *)v12 setStorageMap:v23];
  }

  self = v12;
  v3 = self;
LABEL_4:

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)startStorage
{
  v3 = PPSCoreStorageLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Starting Storage", v4, 2u);
  }

  [MEMORY[0x1E69BDC20] buildDeviceMetadata];
  [(PPSCoreStorage *)self setupEntryObjects];
  [(PPSCoreStorage *)self setupMetadataStorage];
  [(PPSCoreStorage *)self setupStorage];
  [(PPSCoreStorage *)self startAllStorage];
}

- (void)startAllStorage
{
  v3 = [(PPSCoreStorage *)self storageMap];
  v2 = [v3 allValues];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_54];
}

- (void)setupEntryObjects
{
  v2 = +[PPSCoreUtilities getAllowlist];
  v3 = [v2 allKeys];

  [v3 enumerateObjectsUsingBlock:&__block_literal_global_30_1];
}

void __35__PPSCoreStorage_setupEntryObjects__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E69BDC20] getMetadataByCategoryForSubsystem:v2];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__PPSCoreStorage_setupEntryObjects__block_invoke_2;
  v5[3] = &unk_1E851ADE0;
  v6 = v2;
  v4 = v2;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __35__PPSCoreStorage_setupEntryObjects__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (+[PLUtilities OverrideAllowlistEnabled]|| (v8 = *(a1 + 32), v7 = (a1 + 32), [PPSCoreUtilities isAllowedSubsystem:v8 category:v5]))
  {
    [v6 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_34];
  }

  else
  {
    v9 = PPSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __35__PPSCoreStorage_setupEntryObjects__block_invoke_2_cold_1(v7, v5, v9);
    }
  }
}

- (void)setupMetadataStorage
{
  v3 = [(PPSCoreStorage *)self storageMap];
  v2 = [v3 allValues];
  [v2 enumerateObjectsUsingBlock:&__block_literal_global_38_0];
}

- (void)setupStorage
{
  v3 = +[PPSEntryKey allEntryKeys];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__PPSCoreStorage_setupStorage__block_invoke;
  v4[3] = &unk_1E851B108;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __30__PPSCoreStorage_setupStorage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 storageClassForKey:v3];
  [v4 setupStorageForEntryKey:v3];
}

- (BOOL)mergePreUnlockDBFiles
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = +[PPSFileUtilities containerPath];
  v5 = [v4 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v6 = [v5 stringByAppendingString:@"PreUnlock/"];
  v7 = [v3 contentsOfDirectoryAtPath:v6 error:0];
  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_49];

  v9 = [v8 count];
  v10 = PLLogCommon();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_INFO, "Merging pre-unlock DBs...", buf, 2u);
    }

    v12 = [(PPSCoreStorage *)self sqlStorage];
    v13 = [v12 EPSQLConnection];

    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = 1;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50;
    v16[3] = &unk_1E851B498;
    v18 = buf;
    v10 = v13;
    v17 = v10;
    [v8 enumerateObjectsUsingBlock:v16];
    v14 = v20[24];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_INFO, "No pre-unlock DBs to merge", buf, 2u);
    }

    v14 = 0;
  }

  return v14 & 1;
}

uint64_t __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[PPSFileUtilities containerPath];
  v7 = [v6 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v8 = [v7 stringByAppendingString:@"PreUnlock/"];
  v9 = [v8 stringByAppendingPathComponent:v5];

  v10 = +[PPSFileUtilities containerPath];
  v11 = [v10 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v12 = [v11 stringByAppendingString:@"PreUnlock/"];
  v13 = [v12 stringByAppendingPathComponent:v4];

  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v15 = [v14 attributesOfItemAtPath:v9 error:0];

  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [v16 attributesOfItemAtPath:v13 error:0];

  v18 = *MEMORY[0x1E696A308];
  v19 = [v15 objectForKeyedSubscript:*MEMORY[0x1E696A308]];
  v20 = [v17 objectForKeyedSubscript:v18];
  v21 = [v19 compare:v20];

  return v21;
}

void __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 pathExtension];
    v5 = [v4 hasSuffix:@"EPSQL"];

    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = +[PPSFileUtilities containerPath];
      v8 = [v7 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
      v9 = [v8 stringByAppendingString:@"PreUnlock/"];
      v10 = [v9 stringByAppendingPathComponent:v3];
      *(*(*(a1 + 40) + 8) + 24) &= [v6 mergeDataFromOtherDBFile:v10];

      LOBYTE(v6) = *(*(*(a1 + 40) + 8) + 24);
      v11 = PLLogCommon();
      v12 = v11;
      if (v6)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50_cold_2(v3, v12);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50_cold_1(v3, v12);
      }
    }
  }
}

- (id)storageClassForKey:(id)a3
{
  v4 = [PPSEntryKey storageForEntryKey:a3];

  return [(PPSCoreStorage *)self storageClassForType:v4];
}

+ (id)sharedFlatStorage
{
  v2 = +[PowerlogCore sharedCore];
  v3 = [v2 coreStorage];

  v4 = [v3 flatStorage];

  return v4;
}

void __35__PPSCoreStorage_setupEntryObjects__block_invoke_2_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "Subsystem %@ Category %@ not allowed", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Failed to merge pre-unlock DB '%@'...", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __39__PPSCoreStorage_mergePreUnlockDBFiles__block_invoke_50_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "Merged pre-unlock DB '%@'...", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end