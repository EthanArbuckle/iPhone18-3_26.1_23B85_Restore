@interface PLSubmissionFilePLL
- (BOOL)copyAndPrepareLog;
- (BOOL)copyArchiveAtPath:(id)path to:(id)to;
- (BOOL)copyLastArchiveToPath:(id)path;
- (BOOL)copyPowerlogToPath:(id)path;
- (BOOL)copyUpgradePowerlogToPath:(id)path;
- (BOOL)prepareDatabaseAtPath:(id)path;
- (PLSubmissionFilePLL)initWithConfig:(id)config;
- (id)baseCADictionary;
- (id)fileExtension;
- (id)fileType;
- (id)updateSubmissionTagWithConnection:(id)connection;
- (void)flush;
- (void)generateSubmissionTagForCurrentLog;
- (void)logSubmissionSizeToAnalytics:(unint64_t)analytics withUncompressedSize:(unint64_t)size;
- (void)submit;
@end

@implementation PLSubmissionFilePLL

- (PLSubmissionFilePLL)initWithConfig:(id)config
{
  configCopy = config;
  if (([configCopy submitPLL] & 1) == 0 && !objc_msgSend(configCopy, "submitPLLUpgrade"))
  {
    goto LABEL_9;
  }

  v8.receiver = self;
  v8.super_class = PLSubmissionFilePLL;
  self = [(PLSubmissionFile *)&v8 initWithConfig:configCopy];
  if (!self)
  {
    goto LABEL_8;
  }

  if ([configCopy submitReasonType] == 5)
  {
    taskingType = [configCopy taskingType];
    -[PLSubmissionFilePLL setIsEnergyTasking:](self, "setIsEnergyTasking:", [taskingType isEqualToString:@"Energy"]);
  }

  else
  {
    [(PLSubmissionFilePLL *)self setIsEnergyTasking:0];
  }

  if ([(PLSubmissionFilePLL *)self copyAndPrepareLog])
  {
LABEL_8:
    self = self;
    selfCopy = self;
  }

  else
  {
LABEL_9:
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)fileType
{
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  if ([taskingConfig submittedFilesMask] == 1024)
  {
    v3 = @"UpgradePowerlog";
  }

  else
  {
    v3 = @"Powerlog";
  }

  v4 = v3;

  return v3;
}

- (id)fileExtension
{
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  if ([taskingConfig submittedFilesMask] == 1024)
  {
    v3 = @".PLSQL.pllupgrade.anon";
  }

  else
  {
    v3 = @".PLSQL.pll.anon";
  }

  v4 = v3;

  return v3;
}

- (void)logSubmissionSizeToAnalytics:(unint64_t)analytics withUncompressedSize:(unint64_t)size
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFilePLL logSubmissionSizeToAnalytics:withUncompressedSize:];
  }

  AnalyticsSendEventLazy();
}

id __73__PLSubmissionFilePLL_logSubmissionSizeToAnalytics_withUncompressedSize___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"PowerlogCompressedSize";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 32)];
  v7[1] = @"PowerlogUncompressedSize";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)copyAndPrepareLog
{
  v29 = *MEMORY[0x1E69E9840];
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  startDate = [taskingConfig startDate];
  taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
  endDate = [taskingConfig2 endDate];
  [PLEnhancedTaskingAgent logAggregatedDataFromSignpostWithStartDate:startDate withEndDate:endDate];

  filePath = [(PLSubmissionFile *)self filePath];
  if (filePath)
  {
    directory = [(PLSubmissionFile *)self directory];

    if (directory)
    {
      directory2 = [(PLSubmissionFile *)self directory];
      [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:directory2];
    }

    if ([(PLSubmissionFilePLL *)self isEnergyTasking])
    {
      v10 = PLLogSubmission();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "Preparing most recent powerlog archive...", &v27, 2u);
      }

      v11 = [(PLSubmissionFilePLL *)self copyLastArchiveToPath:filePath];
LABEL_19:
      v17 = v11;
      goto LABEL_22;
    }

    taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
    submittedFilesMask = [taskingConfig3 submittedFilesMask];

    v20 = PLLogSubmission();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (submittedFilesMask != 1024)
    {
      if (v21)
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_1D8611000, v20, OS_LOG_TYPE_DEFAULT, "Preparing powerlog...", &v27, 2u);
      }

      v11 = [(PLSubmissionFilePLL *)self copyPowerlogToPath:filePath];
      goto LABEL_19;
    }

    if (v21)
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_1D8611000, v20, OS_LOG_TYPE_DEFAULT, "Preparing upgrade powerlog...", &v27, 2u);
    }

    taskingConfig4 = [(PLSubmissionFile *)self taskingConfig];
    startDate2 = [taskingConfig4 startDate];
    if (startDate2)
    {
      v24 = [(PLSubmissionFilePLL *)self copyPowerlogToPath:filePath];
    }

    else
    {
      v24 = [(PLSubmissionFilePLL *)self copyUpgradePowerlogToPath:filePath];
    }

    v17 = v24;
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error no path provided!"];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFilePLL.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFilePLL copyAndPrepareLog]"];
    [PLCoreStorage logMessage:v12 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:103];

    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 138412290;
      v28 = v12;
      _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEFAULT, "%@", &v27, 0xCu);
    }

    v17 = 0;
  }

LABEL_22:

  v25 = *MEMORY[0x1E69E9840];
  return v17;
}

- (void)flush
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_1D8611000, v1, OS_LOG_TYPE_DEBUG, "Flush cache for %@ with timeout %d", v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

- (BOOL)prepareDatabaseAtPath:(id)path
{
  v85 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  v6 = taskingConfig;
  if (!taskingConfig)
  {
    v12 = 0;
    goto LABEL_42;
  }

  cacheSize = [taskingConfig cacheSize];
  longLongValue = [cacheSize longLongValue];

  removeEntries = [v6 removeEntries];
  hashEntries = [v6 hashEntries];
  trimmingQueries = [v6 trimmingQueries];
  v11 = [[PLSQLiteConnection alloc] initWithFilePath:pathCopy];
  v12 = v11 != 0;
  if (v11)
  {
    v13 = [(PLSubmissionFilePLL *)self updateSubmissionTagWithConnection:v11];
    removeEntries2 = [v6 removeEntries];
    if (removeEntries2 || ([v6 hashEntries], (removeEntries2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      trimmingQueries2 = [v6 trimmingQueries];

      if (!trimmingQueries2)
      {
LABEL_39:
        [(PLSQLiteConnection *)v11 closeConnection];
        goto LABEL_40;
      }
    }

    [(PLSQLiteConnection *)v11 dropTables:removeEntries];
    [(PLSQLiteConnection *)v11 hashEntryKeyKeys:hashEntries];
    v56 = hashEntries;
    v57 = removeEntries;
    if ([v6 submitReasonType] == 4)
    {
      v54 = trimmingQueries;
      v55 = pathCopy;
      v15 = PLLogSubmission();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_INFO, "Dropping tables with > 24 hr retention for upgrade tasking", buf, 2u);
      }

      v16 = [MEMORY[0x1E695DFA8] set];
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v81 = 0u;
      v17 = +[(PLCoreOperator *)PLCoreAgent];
      v18 = [v17 countByEnumeratingWithState:&v78 objects:v84 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v79;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v79 != v20)
            {
              objc_enumerationMutation(v17);
            }

            entryKeys = [*(*(&v78 + 1) + 8 * i) entryKeys];
            v76[0] = MEMORY[0x1E69E9820];
            v76[1] = 3221225472;
            v76[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke;
            v76[3] = &unk_1E851B108;
            v77 = v16;
            [entryKeys enumerateObjectsUsingBlock:v76];
          }

          v19 = [v17 countByEnumeratingWithState:&v78 objects:v84 count:16];
        }

        while (v19);
      }

      v23 = +[PPSEntryKey allEntryKeys];
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_2;
      v74[3] = &unk_1E851B108;
      v24 = v16;
      v75 = v24;
      [v23 enumerateObjectsUsingBlock:v74];

      v25 = PLLogSubmission();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v25, OS_LOG_TYPE_INFO, "Deleting tables > 24 hours for upgrade tasking", buf, 2u);
      }

      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_57;
      v72[3] = &unk_1E851A158;
      v26 = v11;
      v73 = v26;
      [v24 enumerateObjectsUsingBlock:v72];
      v27 = PLLogSubmission();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v27, OS_LOG_TYPE_INFO, "Dropping config data for upgrade tasking", buf, 2u);
      }

      v28 = MEMORY[0x1E696AEC0];
      v29 = +[PLUtilities buildVersion];
      v30 = [v28 stringWithFormat:@"DELETE FROM %@ WHERE (%@ != %@)", @"PLConfigAgent_EventNone_Config", @"Build", v29];

      v31 = [(PLSQLiteConnection *)v26 performQuery:v30];
      v32 = PLLogSubmission();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v32, OS_LOG_TYPE_INFO, "Removing config columns for upgrade tasking", buf, 2u);
      }

      v33 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F540C670];
      v34 = [PLEntryDefinition allKeysForEntryKey:@"PLConfigAgent_EventNone_Config"];
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_111;
      v69[3] = &unk_1E851B130;
      v70 = v33;
      v35 = v26;
      v71 = v35;
      v36 = v33;
      [v34 enumerateObjectsUsingBlock:v69];

      v37 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F540C688];
      v38 = PLLogSubmission();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v38, OS_LOG_TYPE_INFO, "Applying config timestamp bucketization for upgrade tasking", buf, 2u);
      }

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"WITH tmp AS (SELECT rowid, ROW_NUMBER() OVER (PARTITION BY %@, %@ ORDER BY timestamp) AS rn FROM %@ WHERE %@ != %@ OR %@ IS NULL)", @"LastBuild", @"Build", @"PLConfigAgent_EventNone_Config", @"LastBuild", @"Build", @"LastBuild"];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_125;
      v66[3] = &unk_1E851B158;
      v40 = v39;
      v67 = v40;
      v41 = v35;
      v68 = v41;
      [v37 enumerateObjectsUsingBlock:v66];
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_2_136;
      v63[3] = &unk_1E851B158;
      v64 = v40;
      v65 = v41;
      v42 = v40;
      [v37 enumerateObjectsUsingBlock:v63];

      pathCopy = v55;
      trimmingQueries = v54;
    }

    if (!+[PLUtilities SwitchToIncrementalVacuumEnabled])
    {
      [(PLSQLiteConnection *)v11 vacuum];
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v43 = trimmingQueries;
    v44 = trimmingQueries;
    v45 = [v44 countByEnumeratingWithState:&v59 objects:v83 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v60;
LABEL_29:
      v48 = 0;
      while (1)
      {
        if (*v60 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v59 + 1) + 8 * v48);
        if ([PLFileStats fileSizeAtPath:pathCopy]<= longLongValue)
        {
          break;
        }

        if ([PLUtilities isValidString:v49])
        {
          v50 = [(PLSQLiteConnection *)v11 performQuery:v49];
          if (!+[PLUtilities SwitchToIncrementalVacuumEnabled])
          {
            [(PLSQLiteConnection *)v11 vacuum];
          }
        }

        if (v46 == ++v48)
        {
          v46 = [v44 countByEnumeratingWithState:&v59 objects:v83 count:16];
          if (v46)
          {
            goto LABEL_29;
          }

          break;
        }
      }
    }

    v12 = v11 != 0;
    hashEntries = v56;
    trimmingQueries = v43;
    removeEntries = v57;
    goto LABEL_39;
  }

LABEL_40:

LABEL_42:
  v51 = *MEMORY[0x1E69E9840];
  return v12;
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", @"PLConfigAgent_EventNone_Config") & 1) == 0)
  {
    v3 = [PLEntryDefinition configsForEntryKey:v11];
    v4 = [v3 objectForKeyedSubscript:@"TaskModeTable"];
    v5 = [v4 BOOLValue];

    if (v5)
    {
      goto LABEL_6;
    }

    v6 = [v3 objectForKeyedSubscript:@"TrimConditionsTemplateArg"];
    if (v6)
    {
      v7 = v6;
      v8 = [v3 objectForKeyedSubscript:@"TrimConditionsTemplateArg"];
      [v8 doubleValue];
      v10 = v9;

      if (v10 > 86400.0)
      {
LABEL_6:
        [*(a1 + 32) addObject:v11];
      }
    }
  }
}

uint64_t __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([*(a1 + 32) containsObject:v7] & 1) == 0)
  {
    v3 = [PPSEntryKey baseMetricsForEntryKey:v7];
    v4 = [v3 allValues];
    v5 = [v4 firstObject];

    if (v5 && ([v5 mode] == 3 || objc_msgSend(v5, "mode") == 7 || objc_msgSend(v5, "timeToLive") >= 2))
    {
      [*(a1 + 32) addObject:v7];
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_57(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogSubmission();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_57_cold_1();
  }

  [*(a1 + 32) dropTable:v3];
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_111(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE %@ DROP COLUMN %@", @"PLConfigAgent_EventNone_Config", v5];
    v4 = [*(a1 + 40) performQuery:v3];
  }
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_125(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET %@ = (((cast(%@ as int) + 60) + (60 / 2)) / 60) * 60", @"PLConfigAgent_EventNone_Config", a2, a2];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", *(a1 + 32), v5, @"WHERE rowid IN (SELECT rowid FROM tmp WHERE rn = 1)"];;
  v4 = [*(a1 + 40) performQuery:v3];
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_2_136(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET %@ = (((cast(%@ as int) + 180) + (180 / 2)) / 180) * 180", @"PLConfigAgent_EventNone_Config", a2, a2];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@ %@", *(a1 + 32), v5, @"WHERE rowid IN (SELECT rowid FROM tmp WHERE rn > 1)"];;
  v4 = [*(a1 + 40) performQuery:v3];
}

- (void)generateSubmissionTagForCurrentLog
{
  v3 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventForward" andName:@"SubmissionTag"];
  v4 = +[PowerlogCore sharedCore];
  storage = [v4 storage];
  v6 = [storage lastEntryForKey:v3];

  if (v6)
  {
    v7 = +[PowerlogCore sharedCore];
    storage2 = [v7 storage];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke;
    v26[3] = &unk_1E8519100;
    v9 = v6;
    v27 = v9;
    selfCopy = self;
    [storage2 updateEntry:v9 withBlock:v26];

    v10 = v27;
LABEL_3:

    goto LABEL_11;
  }

  v9 = [[PLEntry alloc] initWithEntryKey:v3];
  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  [(PLEntry *)v9 setEntryDate:v11];

  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [(PLEntry *)v9 setObject:uUIDString forKeyedSubscript:@"UUIDTag"];

  v14 = +[PowerlogCore sharedCore];
  storage3 = [v14 storage];
  [storage3 writeEntry:v9 withCompletionBlock:&__block_literal_global_48];

  if (+[PLDefaults debugEnabled])
  {
    v16 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke_2_155;
    v24 = &__block_descriptor_40_e5_v8__0lu32l8;
    v25 = v16;
    if (generateSubmissionTagForCurrentLog_defaultOnce != -1)
    {
      dispatch_once(&generateSubmissionTagForCurrentLog_defaultOnce, &block);
    }

    if (generateSubmissionTagForCurrentLog_classDebugEnabled == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"generateSubmissionTag CREATE (%@)\n", v9, block, v22, v23, v24, v25];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFilePLL.m"];
      lastPathComponent = [v17 lastPathComponent];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFilePLL generateSubmissionTagForCurrentLog]"];
      [PLCoreStorage logMessage:v10 fromFile:lastPathComponent fromFunction:v19 fromLineNumber:354];

      v20 = PLLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [PLArchiveManager migrateArchive:];
      }

      goto LABEL_3;
    }
  }

LABEL_11:
}

void __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AFB0] UUID];
  v3 = [v2 UUIDString];
  [*(a1 + 32) setObject:v3 forKeyedSubscript:@"UUIDTag"];

  if (+[PLDefaults debugEnabled])
  {
    v4 = *(a1 + 40);
    v5 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke_2;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v5;
    if (ArrayReserved_block_invoke_defaultOnce_0 != -1)
    {
      dispatch_once(&ArrayReserved_block_invoke_defaultOnce_0, &block);
    }

    if (ArrayReserved_block_invoke_classDebugEnabled_0 == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"generateSubmissionTag UPDATE (%@)\n", *(a1 + 32), block, v12, v13, v14, v15];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFilePLL.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFilePLL generateSubmissionTagForCurrentLog]_block_invoke"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:347];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLArchiveManager migrateArchive:];
      }
    }
  }
}

BOOL __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  ArrayReserved_block_invoke_classDebugEnabled_0 = result;
  return result;
}

BOOL __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke_2_155(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  generateSubmissionTagForCurrentLog_classDebugEnabled = result;
  return result;
}

- (id)updateSubmissionTagWithConnection:(id)connection
{
  connectionCopy = connection;
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  getSubmitReasonTypeToReasonLog = [taskingConfig getSubmitReasonTypeToReasonLog];
  v7 = PLLogSubmission();
  v8 = v7;
  if (connectionCopy && getSubmitReasonTypeToReasonLog)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFilePLL updateSubmissionTagWithConnection:];
    }

    tagUUID = [taskingConfig tagUUID];
    v8 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventForward" andName:@"SubmissionTag"];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET %@ = '%@', %@ = '%@'", v8, @"Reason", getSubmitReasonTypeToReasonLog, @"UUIDTag", tagUUID];
    v11 = [connectionCopy performQuery:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL updateSubmissionTagWithConnection:];
    }

    tagUUID = 0;
  }

  return tagUUID;
}

- (void)submit
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

id __29__PLSubmissionFilePLL_submit__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"reasonType";
  v1 = MEMORY[0x1E696AD98];
  v2 = [*(a1 + 32) taskingConfig];
  v3 = [v1 numberWithShort:{objc_msgSend(v2, "submitReasonType")}];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)copyPowerlogToPath:(id)path
{
  pathCopy = path;
  [(PLSubmissionFilePLL *)self generateSubmissionTagForCurrentLog];
  [(PLSubmissionFilePLL *)self flush];
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  startDate = [taskingConfig startDate];

  taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
  submitReasonType = [taskingConfig2 submitReasonType];

  if (submitReasonType == 4)
  {
    taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
    endDate = [taskingConfig3 endDate];
  }

  else
  {
    endDate = 0;
  }

  taskingConfig4 = [(PLSubmissionFile *)self taskingConfig];
  cacheSize = [taskingConfig4 cacheSize];

  if (cacheSize)
  {
    taskingConfig5 = [(PLSubmissionFile *)self taskingConfig];
    cacheSize2 = [taskingConfig5 cacheSize];
    integerValue = [cacheSize2 integerValue];

    v16 = +[PLSQLiteConnection sharedSQLiteConnection];
    v17 = [PLCoreStorage allOperatorTablesToTrimConditionsForTrimDate:startDate];
    LOBYTE(integerValue) = [v16 copyDatabaseToPath:pathCopy fromDate:startDate toDate:endDate withTableFilters:v17 vacuumDB:0 withCacheSize:integerValue];

    if (integerValue)
    {
LABEL_6:
      [(PLSubmissionFilePLL *)self prepareDatabaseAtPath:pathCopy];
      [(PLSubmissionFile *)self decorateFile];
      v18 = +[PLSQLiteConnection sharedSQLiteConnection];
      [v18 clearTableHasTimestampColumnCache];

      v19 = 1;
      goto LABEL_11;
    }
  }

  else
  {
    v20 = +[PLUtilities SwitchToIncrementalVacuumEnabled];
    v21 = +[PLSQLiteConnection sharedSQLiteConnection];
    v22 = [PLCoreStorage allOperatorTablesToTrimConditionsForTrimDate:startDate];
    LOBYTE(v20) = [v21 copyDatabaseToPath:pathCopy fromDate:startDate toDate:endDate withTableFilters:v22 vacuumDB:v20 ^ 1u];

    if (v20)
    {
      goto LABEL_6;
    }
  }

  v23 = PLLogSubmission();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissionFilePLL copyPowerlogToPath:v23];
  }

  v19 = 0;
LABEL_11:

  return v19;
}

- (BOOL)copyArchiveAtPath:(id)path to:(id)to
{
  v30 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  toCopy = to;
  v8 = [toCopy stringByAppendingString:@".gz"];
  v9 = PLLogSubmission();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = pathCopy;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Copying archive at '%@' to '%@'...", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v25 = 0;
  v11 = [defaultManager copyItemAtPath:pathCopy toPath:v8 error:&v25];
  v12 = v25;

  [(PLSubmissionFilePLL *)self emitCopyResult:v11];
  v13 = PLLogSubmission();
  v14 = v13;
  if ((v11 & 1) == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL copyArchiveAtPath:to:];
    }

    goto LABEL_17;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFilePLL copyArchiveAtPath:to:];
  }

  v15 = [PLUtilities decompressWithSource:v8 withDestination:toCopy withRemoveSrc:1];
  [(PLSubmissionFilePLL *)self emitDecompressionResult:v15];
  if (!v15)
  {
    v22 = PLLogSubmission();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL copyArchiveAtPath:to:];
    }

    goto LABEL_21;
  }

  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [defaultManager2 fileExistsAtPath:toCopy];

  [(PLSubmissionFilePLL *)self emitFileExists:v17];
  v18 = PLLogSubmission();
  v14 = v18;
  if ((v17 & 1) == 0)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL copyArchiveAtPath:toCopy to:v14];
    }

LABEL_17:

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = toCopy;
    _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "Successfully copied archived powerlog to %@!", buf, 0xCu);
  }

  v19 = [(PLSubmissionFilePLL *)self prepareDatabaseAtPath:toCopy];
  [(PLSubmissionFilePLL *)self emitPreparationResult:v19];
  if (!v19)
  {
    v20 = PLLogSubmission();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL copyArchiveAtPath:to:];
    }
  }

  [(PLSubmissionFile *)self decorateFile];
  v21 = 1;
LABEL_22:

  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (BOOL)copyLastArchiveToPath:(id)path
{
  pathCopy = path;
  v5 = +[PLArchiveManager lastArchivePath];
  LOBYTE(self) = [(PLSubmissionFilePLL *)self copyArchiveAtPath:v5 to:pathCopy];

  return self;
}

- (BOOL)copyUpgradePowerlogToPath:(id)path
{
  v24 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = MEMORY[0x1E695DF00];
  [PLDefaults doubleForKey:@"LastUpgradeTimestamp" ifNotSet:-1.0];
  v6 = [v5 dateWithTimeIntervalSince1970:?];
  v7 = [PLArchiveManager archiveForDate:v6];
  v8 = v7;
  if (v7)
  {
    startDate = [v7 startDate];
    taskingConfig = [(PLSubmissionFile *)self taskingConfig];
    [taskingConfig setStartDate:startDate];

    endDate = [v8 endDate];
    taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
    [taskingConfig2 setEndDate:endDate];

    v13 = PLLogSubmission();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      compressedPath = [v8 compressedPath];
      lastPathComponent = [compressedPath lastPathComponent];
      v20 = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = lastPathComponent;
      _os_log_impl(&dword_1D8611000, v13, OS_LOG_TYPE_INFO, "Choosing archived powerlog for upgrade date '%@': %@", &v20, 0x16u);
    }

    compressedPath2 = [v8 compressedPath];
    v17 = [(PLSubmissionFilePLL *)self copyArchiveAtPath:compressedPath2 to:pathCopy];
  }

  else
  {
    compressedPath2 = PLLogSubmission();
    if (os_log_type_enabled(compressedPath2, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v6;
      _os_log_impl(&dword_1D8611000, compressedPath2, OS_LOG_TYPE_INFO, "No archived upgrade powerlog for upgrade date '%@'", &v20, 0xCu);
    }

    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)baseCADictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  request = [taskingConfig request];
  [dictionary setObject:request forKeyedSubscript:@"TaskingRequest"];

  taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
  taskingType = [taskingConfig2 taskingType];
  [dictionary setObject:taskingType forKeyedSubscript:@"TaskingType"];

  taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
  configUUID = [taskingConfig3 configUUID];
  uUIDString = [configUUID UUIDString];
  [dictionary setObject:uUIDString forKeyedSubscript:@"TaskingUUID"];

  return dictionary;
}

- (void)logSubmissionSizeToAnalytics:withUncompressedSize:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke_57_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)updateSubmissionTagWithConnection:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1D8611000, v0, v1, "Cannot update submit reason to %@, connection = %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)updateSubmissionTagWithConnection:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyArchiveAtPath:to:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1D8611000, v0, v1, "Failed to copy archived powerlog to %@ with error %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)copyArchiveAtPath:to:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyArchiveAtPath:to:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1D8611000, v0, v1, "Failed to decompress %@ with error %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)copyArchiveAtPath:(uint64_t)a1 to:(NSObject *)a2 .cold.4(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = 138412546;
  v7 = a1;
  v8 = 1024;
  v9 = [v4 fileExistsAtPath:a1];
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Expected file %@ not found after decompression! fileExists = %d", &v6, 0x12u);

  v5 = *MEMORY[0x1E69E9840];
}

- (void)copyArchiveAtPath:to:.cold.5()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, v0, OS_LOG_TYPE_ERROR, "Failed to prepare PLL file %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end