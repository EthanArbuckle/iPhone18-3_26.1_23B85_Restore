@interface PLSubmissionFilePLL
- (BOOL)copyAndPrepareLog;
- (BOOL)copyArchiveAtPath:(id)a3 to:(id)a4;
- (BOOL)copyLastArchiveToPath:(id)a3;
- (BOOL)copyPowerlogToPath:(id)a3;
- (BOOL)copyUpgradePowerlogToPath:(id)a3;
- (BOOL)prepareDatabaseAtPath:(id)a3;
- (PLSubmissionFilePLL)initWithConfig:(id)a3;
- (id)baseCADictionary;
- (id)fileExtension;
- (id)fileType;
- (id)updateSubmissionTagWithConnection:(id)a3;
- (void)flush;
- (void)generateSubmissionTagForCurrentLog;
- (void)logSubmissionSizeToAnalytics:(unint64_t)a3 withUncompressedSize:(unint64_t)a4;
- (void)submit;
@end

@implementation PLSubmissionFilePLL

- (PLSubmissionFilePLL)initWithConfig:(id)a3
{
  v4 = a3;
  if (([v4 submitPLL] & 1) == 0 && !objc_msgSend(v4, "submitPLLUpgrade"))
  {
    goto LABEL_9;
  }

  v8.receiver = self;
  v8.super_class = PLSubmissionFilePLL;
  self = [(PLSubmissionFile *)&v8 initWithConfig:v4];
  if (!self)
  {
    goto LABEL_8;
  }

  if ([v4 submitReasonType] == 5)
  {
    v5 = [v4 taskingType];
    -[PLSubmissionFilePLL setIsEnergyTasking:](self, "setIsEnergyTasking:", [v5 isEqualToString:@"Energy"]);
  }

  else
  {
    [(PLSubmissionFilePLL *)self setIsEnergyTasking:0];
  }

  if ([(PLSubmissionFilePLL *)self copyAndPrepareLog])
  {
LABEL_8:
    self = self;
    v6 = self;
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

  return v6;
}

- (id)fileType
{
  v2 = [(PLSubmissionFile *)self taskingConfig];
  if ([v2 submittedFilesMask] == 1024)
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
  v2 = [(PLSubmissionFile *)self taskingConfig];
  if ([v2 submittedFilesMask] == 1024)
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

- (void)logSubmissionSizeToAnalytics:(unint64_t)a3 withUncompressedSize:(unint64_t)a4
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
  v3 = [(PLSubmissionFile *)self taskingConfig];
  v4 = [v3 startDate];
  v5 = [(PLSubmissionFile *)self taskingConfig];
  v6 = [v5 endDate];
  [PLEnhancedTaskingAgent logAggregatedDataFromSignpostWithStartDate:v4 withEndDate:v6];

  v7 = [(PLSubmissionFile *)self filePath];
  if (v7)
  {
    v8 = [(PLSubmissionFile *)self directory];

    if (v8)
    {
      v9 = [(PLSubmissionFile *)self directory];
      [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:v9];
    }

    if ([(PLSubmissionFilePLL *)self isEnergyTasking])
    {
      v10 = PLLogSubmission();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "Preparing most recent powerlog archive...", &v27, 2u);
      }

      v11 = [(PLSubmissionFilePLL *)self copyLastArchiveToPath:v7];
LABEL_19:
      v17 = v11;
      goto LABEL_22;
    }

    v18 = [(PLSubmissionFile *)self taskingConfig];
    v19 = [v18 submittedFilesMask];

    v20 = PLLogSubmission();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19 != 1024)
    {
      if (v21)
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_1D8611000, v20, OS_LOG_TYPE_DEFAULT, "Preparing powerlog...", &v27, 2u);
      }

      v11 = [(PLSubmissionFilePLL *)self copyPowerlogToPath:v7];
      goto LABEL_19;
    }

    if (v21)
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_1D8611000, v20, OS_LOG_TYPE_DEFAULT, "Preparing upgrade powerlog...", &v27, 2u);
    }

    v22 = [(PLSubmissionFile *)self taskingConfig];
    v23 = [v22 startDate];
    if (v23)
    {
      v24 = [(PLSubmissionFilePLL *)self copyPowerlogToPath:v7];
    }

    else
    {
      v24 = [(PLSubmissionFilePLL *)self copyUpgradePowerlogToPath:v7];
    }

    v17 = v24;
  }

  else
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error no path provided!"];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFilePLL.m"];
    v14 = [v13 lastPathComponent];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFilePLL copyAndPrepareLog]"];
    [PLCoreStorage logMessage:v12 fromFile:v14 fromFunction:v15 fromLineNumber:103];

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

- (BOOL)prepareDatabaseAtPath:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLSubmissionFile *)self taskingConfig];
  v6 = v5;
  if (!v5)
  {
    v12 = 0;
    goto LABEL_42;
  }

  v7 = [v5 cacheSize];
  v58 = [v7 longLongValue];

  v8 = [v6 removeEntries];
  v9 = [v6 hashEntries];
  v10 = [v6 trimmingQueries];
  v11 = [[PLSQLiteConnection alloc] initWithFilePath:v4];
  v12 = v11 != 0;
  if (v11)
  {
    v13 = [(PLSubmissionFilePLL *)self updateSubmissionTagWithConnection:v11];
    v14 = [v6 removeEntries];
    if (v14 || ([v6 hashEntries], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v53 = [v6 trimmingQueries];

      if (!v53)
      {
LABEL_39:
        [(PLSQLiteConnection *)v11 closeConnection];
        goto LABEL_40;
      }
    }

    [(PLSQLiteConnection *)v11 dropTables:v8];
    [(PLSQLiteConnection *)v11 hashEntryKeyKeys:v9];
    v56 = v9;
    v57 = v8;
    if ([v6 submitReasonType] == 4)
    {
      v54 = v10;
      v55 = v4;
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

            v22 = [*(*(&v78 + 1) + 8 * i) entryKeys];
            v76[0] = MEMORY[0x1E69E9820];
            v76[1] = 3221225472;
            v76[2] = __45__PLSubmissionFilePLL_prepareDatabaseAtPath___block_invoke;
            v76[3] = &unk_1E851B108;
            v77 = v16;
            [v22 enumerateObjectsUsingBlock:v76];
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

      v4 = v55;
      v10 = v54;
    }

    if (!+[PLUtilities SwitchToIncrementalVacuumEnabled])
    {
      [(PLSQLiteConnection *)v11 vacuum];
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v43 = v10;
    v44 = v10;
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
        if ([PLFileStats fileSizeAtPath:v4]<= v58)
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
    v9 = v56;
    v10 = v43;
    v8 = v57;
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
  v5 = [v4 storage];
  v6 = [v5 lastEntryForKey:v3];

  if (v6)
  {
    v7 = +[PowerlogCore sharedCore];
    v8 = [v7 storage];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __57__PLSubmissionFilePLL_generateSubmissionTagForCurrentLog__block_invoke;
    v26[3] = &unk_1E8519100;
    v9 = v6;
    v27 = v9;
    v28 = self;
    [v8 updateEntry:v9 withBlock:v26];

    v10 = v27;
LABEL_3:

    goto LABEL_11;
  }

  v9 = [[PLEntry alloc] initWithEntryKey:v3];
  v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  [(PLEntry *)v9 setEntryDate:v11];

  v12 = [MEMORY[0x1E696AFB0] UUID];
  v13 = [v12 UUIDString];
  [(PLEntry *)v9 setObject:v13 forKeyedSubscript:@"UUIDTag"];

  v14 = +[PowerlogCore sharedCore];
  v15 = [v14 storage];
  [v15 writeEntry:v9 withCompletionBlock:&__block_literal_global_48];

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
      v18 = [v17 lastPathComponent];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFilePLL generateSubmissionTagForCurrentLog]"];
      [PLCoreStorage logMessage:v10 fromFile:v18 fromFunction:v19 fromLineNumber:354];

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

- (id)updateSubmissionTagWithConnection:(id)a3
{
  v4 = a3;
  v5 = [(PLSubmissionFile *)self taskingConfig];
  v6 = [v5 getSubmitReasonTypeToReasonLog];
  v7 = PLLogSubmission();
  v8 = v7;
  if (v4 && v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFilePLL updateSubmissionTagWithConnection:];
    }

    v9 = [v5 tagUUID];
    v8 = [(PLOperator *)PLStorageOperator entryKeyForType:@"EventForward" andName:@"SubmissionTag"];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET %@ = '%@', %@ = '%@'", v8, @"Reason", v6, @"UUIDTag", v9];
    v11 = [v4 performQuery:v10];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL updateSubmissionTagWithConnection:];
    }

    v9 = 0;
  }

  return v9;
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

- (BOOL)copyPowerlogToPath:(id)a3
{
  v4 = a3;
  [(PLSubmissionFilePLL *)self generateSubmissionTagForCurrentLog];
  [(PLSubmissionFilePLL *)self flush];
  v5 = [(PLSubmissionFile *)self taskingConfig];
  v6 = [v5 startDate];

  v7 = [(PLSubmissionFile *)self taskingConfig];
  v8 = [v7 submitReasonType];

  if (v8 == 4)
  {
    v9 = [(PLSubmissionFile *)self taskingConfig];
    v10 = [v9 endDate];
  }

  else
  {
    v10 = 0;
  }

  v11 = [(PLSubmissionFile *)self taskingConfig];
  v12 = [v11 cacheSize];

  if (v12)
  {
    v13 = [(PLSubmissionFile *)self taskingConfig];
    v14 = [v13 cacheSize];
    v15 = [v14 integerValue];

    v16 = +[PLSQLiteConnection sharedSQLiteConnection];
    v17 = [PLCoreStorage allOperatorTablesToTrimConditionsForTrimDate:v6];
    LOBYTE(v15) = [v16 copyDatabaseToPath:v4 fromDate:v6 toDate:v10 withTableFilters:v17 vacuumDB:0 withCacheSize:v15];

    if (v15)
    {
LABEL_6:
      [(PLSubmissionFilePLL *)self prepareDatabaseAtPath:v4];
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
    v22 = [PLCoreStorage allOperatorTablesToTrimConditionsForTrimDate:v6];
    LOBYTE(v20) = [v21 copyDatabaseToPath:v4 fromDate:v6 toDate:v10 withTableFilters:v22 vacuumDB:v20 ^ 1u];

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

- (BOOL)copyArchiveAtPath:(id)a3 to:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 stringByAppendingString:@".gz"];
  v9 = PLLogSubmission();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = v6;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Copying archive at '%@' to '%@'...", buf, 0x16u);
  }

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v25 = 0;
  v11 = [v10 copyItemAtPath:v6 toPath:v8 error:&v25];
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

  v15 = [PLUtilities decompressWithSource:v8 withDestination:v7 withRemoveSrc:1];
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

  v16 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [v16 fileExistsAtPath:v7];

  [(PLSubmissionFilePLL *)self emitFileExists:v17];
  v18 = PLLogSubmission();
  v14 = v18;
  if ((v17 & 1) == 0)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFilePLL copyArchiveAtPath:v7 to:v14];
    }

LABEL_17:

LABEL_21:
    v21 = 0;
    goto LABEL_22;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v7;
    _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "Successfully copied archived powerlog to %@!", buf, 0xCu);
  }

  v19 = [(PLSubmissionFilePLL *)self prepareDatabaseAtPath:v7];
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

- (BOOL)copyLastArchiveToPath:(id)a3
{
  v4 = a3;
  v5 = +[PLArchiveManager lastArchivePath];
  LOBYTE(self) = [(PLSubmissionFilePLL *)self copyArchiveAtPath:v5 to:v4];

  return self;
}

- (BOOL)copyUpgradePowerlogToPath:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF00];
  [PLDefaults doubleForKey:@"LastUpgradeTimestamp" ifNotSet:-1.0];
  v6 = [v5 dateWithTimeIntervalSince1970:?];
  v7 = [PLArchiveManager archiveForDate:v6];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 startDate];
    v10 = [(PLSubmissionFile *)self taskingConfig];
    [v10 setStartDate:v9];

    v11 = [v8 endDate];
    v12 = [(PLSubmissionFile *)self taskingConfig];
    [v12 setEndDate:v11];

    v13 = PLLogSubmission();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v8 compressedPath];
      v15 = [v14 lastPathComponent];
      v20 = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_1D8611000, v13, OS_LOG_TYPE_INFO, "Choosing archived powerlog for upgrade date '%@': %@", &v20, 0x16u);
    }

    v16 = [v8 compressedPath];
    v17 = [(PLSubmissionFilePLL *)self copyArchiveAtPath:v16 to:v4];
  }

  else
  {
    v16 = PLLogSubmission();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v20 = 138412290;
      v21 = v6;
      _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "No archived upgrade powerlog for upgrade date '%@'", &v20, 0xCu);
    }

    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)baseCADictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(PLSubmissionFile *)self taskingConfig];
  v5 = [v4 request];
  [v3 setObject:v5 forKeyedSubscript:@"TaskingRequest"];

  v6 = [(PLSubmissionFile *)self taskingConfig];
  v7 = [v6 taskingType];
  [v3 setObject:v7 forKeyedSubscript:@"TaskingType"];

  v8 = [(PLSubmissionFile *)self taskingConfig];
  v9 = [v8 configUUID];
  v10 = [v9 UUIDString];
  [v3 setObject:v10 forKeyedSubscript:@"TaskingUUID"];

  return v3;
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