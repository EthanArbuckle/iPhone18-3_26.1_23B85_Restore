@interface PLSubmissionFileCE
- (BOOL)copyAndPrepareLog;
- (BOOL)performCopyTablesToDB:(id)a3;
- (id)getCESQLFile;
- (void)copyAndPrepareLog;
- (void)getCESQLFile;
- (void)submit;
@end

@implementation PLSubmissionFileCE

- (BOOL)copyAndPrepareLog
{
  v50[1] = *MEMORY[0x1E69E9840];
  v3 = [(PLSubmissionFile *)self filePath];
  v4 = [v3 stringByReplacingOccurrencesOfString:@".ce.anon" withString:&stru_1F539D228];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (!v6)
  {
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v48 = 0;
    v10 = [v9 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v48];
    v7 = v48;

    if ((v10 & 1) == 0)
    {
      v12 = PLLogSubmission();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }

      v8 = 0;
      goto LABEL_36;
    }

    v11 = [(PLSubmissionFileCE *)self getCESQLFile];
    v12 = [v4 stringByAppendingPathComponent:v11];

    v13 = [v12 stringByAppendingFormat:@".gz"];
    v14 = +[PPSCoreStorage sharedSQLStorage];
    v15 = [v14 CESQLConnection];

    v46 = v15;
    if ([v15 copyDatabaseToPath:v12 fromDate:0 toDate:0 withTableFilters:0 vacuumDB:0])
    {
      if (_os_feature_enabled_impl() && ![(PLSubmissionFileCE *)self performCopyTablesToDB:v12])
      {
        v16 = PLLogSubmission();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileCE copyAndPrepareLog];
        }
      }

      if (![PLUtilities compressWithSource:v12 withDestination:v13 withLevel:4])
      {
        v17 = PLLogSubmission();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileCE copyAndPrepareLog];
        }
      }

      v18 = [MEMORY[0x1E696AC08] defaultManager];
      [v18 removeItemAtPath:v12 error:0];

      v19 = [MEMORY[0x1E696AC08] defaultManager];
      v20 = [v12 stringByAppendingString:@"-wal"];
      [v19 removeItemAtPath:v20 error:0];

      v21 = [MEMORY[0x1E696AC08] defaultManager];
      v22 = [v12 stringByAppendingString:@"-shm"];
      [v21 removeItemAtPath:v22 error:0];
    }

    else
    {
      v21 = PLLogSubmission();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileCE copyAndPrepareLog];
      }
    }

    v23 = [v4 stringByAppendingPathComponent:@"tag.json"];
    v24 = [MEMORY[0x1E695DF70] array];
    v25 = [v13 lastPathComponent];
    [v24 addObject:v25];

    v49 = @"LogFiles";
    v50[0] = v24;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    if (![(PLSubmissionFile *)self createTagFileWithPath:v23 withInfo:?])
    {
      v26 = PLLogSubmission();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileCE copyAndPrepareLog];
      }
    }

    v45 = v23;
    v27 = MEMORY[0x1E6999F68];
    v28 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v29 = [v27 archiveDirectoryAt:v28 deleteOriginal:1];

    if (v29)
    {
      v42 = v24;
      v43 = v13;
      v30 = [MEMORY[0x1E696AC08] defaultManager];
      v31 = [v29 path];
      v32 = [(PLSubmissionFile *)self filePath];
      v47 = v7;
      v33 = [v30 moveItemAtPath:v31 toPath:v32 error:&v47];
      v34 = v47;

      if (v33)
      {
        [(PLSubmissionFile *)self decorateFile];
        v8 = 1;
        v35 = v45;
        v7 = v34;
        v24 = v42;
        v13 = v43;
LABEL_35:

LABEL_36:
        goto LABEL_37;
      }

      v36 = PLLogSubmission();
      v7 = v34;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileCE copyAndPrepareLog];
      }

      v37 = [MEMORY[0x1E696AC08] defaultManager];
      v38 = [v29 path];
      [v37 removeItemAtPath:v38 error:0];

      v24 = v42;
      v13 = v43;
    }

    v39 = PLLogSubmission();
    v35 = v45;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [(PLSubmissionFileCE *)v39 copyAndPrepareLog];
    }

    v8 = 0;
    goto LABEL_35;
  }

  v7 = PLLogSubmission();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissionFileCE copyAndPrepareLog];
  }

  v8 = 0;
LABEL_37:

  v40 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)getCESQLFile
{
  v3 = [(PLSubmissionFile *)self taskingConfig];
  v4 = [v3 startDate];
  v5 = [v4 convertFromMonotonicToSystem];

  v6 = [(PLSubmissionFile *)self taskingConfig];
  v7 = [v6 endDate];
  v8 = [v7 convertFromMonotonicToSystem];

  v9 = [MEMORY[0x1E695DF00] filenameDateStringWithStartDate:v5 endDate:v8];
  if (![v9 length])
  {
    v10 = [(PLSubmissionFile *)self taskingConfig];
    v11 = [v10 tagUUID];

    v9 = v11;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cleanenergy_%@.CESQL", v9];
  v13 = PLLogSubmission();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileCE getCESQLFile];
  }

  return v12;
}

- (BOOL)performCopyTablesToDB:(id)a3
{
  v4 = a3;
  v5 = [(PLSubmissionFileCE *)self tablesToMigrateForCE];
  v6 = [[PLSQLiteConnection alloc] initWithFilePath:v4];

  v7 = +[PowerlogCore sharedCore];
  v8 = [v7 storage];
  v9 = [v8 connection];

  v10 = [v9 filePath];
  v11 = [v10 lastPathComponent];
  v12 = [v11 stringByDeletingPathExtension];

  v13 = [v9 filePath];
  v14 = [(PLSQLiteConnection *)v6 attachDB:v13 withName:v12];

  if (v14)
  {
    v15 = [MEMORY[0x1E696AFB0] UUID];
    v16 = [v15 UUIDString];

    v17 = PLLogSubmission();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFileCE performCopyTablesToDB:];
    }

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __44__PLSubmissionFileCE_performCopyTablesToDB___block_invoke;
    v26 = &unk_1E851A040;
    v27 = self;
    v18 = v16;
    v28 = v18;
    v19 = v6;
    v29 = v19;
    v30 = v9;
    [v5 enumerateObjectsUsingBlock:&v23];
    v20 = PLLogSubmission();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFileCE performCopyTablesToDB:];
    }

    if (![(PLSQLiteConnection *)v19 detachDB:v12, v23, v24, v25, v26, v27])
    {
      v21 = PLLogSubmission();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileCE performCopyTablesToDB:];
      }
    }

    [(PLSQLiteConnection *)v19 closeConnection];
  }

  else
  {
    v18 = PLLogSubmission();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(PLSubmissionFileCE *)v9 performCopyTablesToDB:v12, v18];
    }
  }

  return v14;
}

void __44__PLSubmissionFileCE_performCopyTablesToDB___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  context = objc_autoreleasePoolPush();
  v4 = [PLEntryDefinition configsForEntryKey:v3];
  v5 = [*(a1 + 32) taskingConfig];
  v6 = [v5 startDate];

  v7 = [*(a1 + 32) taskingConfig];
  v8 = [v7 endDate];

  v9 = [v4 objectForKeyedSubscript:@"TrimConditionsTemplate"];
  v10 = [v9 isEqual:&unk_1F5405DC0];

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"TrimConditionsTemplateArg"];
    [v11 doubleValue];
    v13 = v12;

    v14 = [v8 dateByAddingTimeInterval:-v13];

    v15 = PLLogSubmission();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v32 = v3;
      v33 = 2048;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_INFO, "'%@' has %f seconds to live, modified range: [%@, %@]", buf, 0x2Au);
    }
  }

  else
  {
    v14 = v6;
  }

  v16 = [MEMORY[0x1E695DF90] dictionary];
  v17 = MEMORY[0x1E696AEC0];
  [v14 timeIntervalSince1970];
  v19 = v18;
  [v8 timeIntervalSince1970];
  v21 = [v17 stringWithFormat:@"timestamp BETWEEN %f AND %f", v19, v20];
  v30 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [v16 setObject:v22 forKeyedSubscript:@"WHERE"];

  if ([PLDefaults BOOLForKey:@"PLDebugService_Enabled" ifNotSet:0])
  {
    [v16 setObject:*(a1 + 40) forKeyedSubscript:@"uuid"];
  }

  v24 = *(a1 + 48);
  v23 = *(a1 + 56);
  v25 = [v23 filePath];
  v26 = [v25 lastPathComponent];
  v27 = [v26 stringByDeletingPathExtension];
  [v24 copyTable:v3 fromConnection:v23 withDBName:v27 withProperties:v16 andAttach:0];

  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x1E69E9840];
}

- (void)submit
{
  if ([(PLSubmissionFile *)self iCloudUploadEnabled])
  {

    [(PLSubmissionFile *)self submitLogToiCloudWithCompress:0];
  }
}

- (void)copyAndPrepareLog
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, v0, v1, "Directory %@ already exists", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)getCESQLFile
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "Requested CleanEnergy DB file: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)performCopyTablesToDB:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 filePath];
  OUTLINED_FUNCTION_2();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1D8611000, a3, OS_LOG_TYPE_ERROR, "Failed to attach DB at '%@' as '%@'", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)performCopyTablesToDB:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "starting 'copyTables' with UUID %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)performCopyTablesToDB:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "ending 'copyTables' with UUID %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)performCopyTablesToDB:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, v0, v1, "Failed to detach DB at '%@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end