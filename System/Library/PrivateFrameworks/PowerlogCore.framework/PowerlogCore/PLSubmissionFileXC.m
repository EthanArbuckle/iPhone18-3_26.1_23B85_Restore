@interface PLSubmissionFileXC
- (BOOL)copyAndPrepareLog;
- (BOOL)copyDatabaseToPath:(id)a3;
- (double)randomizedBaseOffset;
- (double)xcodeVersionFromUserActions;
- (id)getXCSQLFile;
- (void)copyAndPrepareLog;
- (void)getXCSQLFile;
- (void)obfuscateTimestampsForTable:(id)a3 connection:(id)a4 withOffset:(double)a5;
- (void)randomizedBaseOffset;
- (void)submit;
- (void)xcodeVersionFromUserActions;
@end

@implementation PLSubmissionFileXC

- (BOOL)copyDatabaseToPath:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = +[PPSCoreStorage sharedSQLStorage];
  v6 = [v5 XCSQLConnection];
  v7 = [v6 copyDatabaseToPath:v3];

  if (v7)
  {
    v8 = [[PLSQLiteConnection alloc] initWithFilePath:v3];
    [(PLSQLiteConnection *)v8 setJournalMode:9];
    [(PLSQLiteConnection *)v8 closeConnection];
  }

  objc_autoreleasePoolPop(v4);

  return v7;
}

- (BOOL)copyAndPrepareLog
{
  v86[6] = *MEMORY[0x1E69E9840];
  v3 = [(PLSubmissionFile *)self taskingConfig];
  if ([v3 submitReasonType] != 1)
  {

LABEL_5:
    v7 = [(PLSubmissionFile *)self filePath];
    v8 = [v7 stringByReplacingOccurrencesOfString:@".xc.anon" withString:&stru_1F539D228];

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [v9 fileExistsAtPath:v8];

    if (v10)
    {
      v11 = PLLogSubmission();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }

      v6 = 0;
      goto LABEL_42;
    }

    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v82 = 0;
    v13 = [v12 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:&v82];
    v11 = v82;

    if ((v13 & 1) == 0)
    {
      v19 = PLLogSubmission();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }

      v6 = 0;
      goto LABEL_41;
    }

    v14 = [(PLSubmissionFile *)self taskingConfig];
    v15 = [v14 submitReasonType];

    if (v15 != 1)
    {
      v16 = +[PowerlogCore sharedCore];
      v17 = [v16 storage];
      [v17 blockingFlushCachesWithReason:@"XcodeOrganizer"];
    }

    v18 = [(PLSubmissionFileXC *)self getXCSQLFile];
    v19 = [v8 stringByAppendingPathComponent:v18];

    v20 = [v19 stringByAppendingFormat:@".gz"];
    if ([(PLSubmissionFileXC *)self copyDatabaseToPath:v19])
    {
      v79 = [[PLSQLiteConnection alloc] initWithFilePath:v19];
      [(PLSubmissionFileXC *)self randomizedBaseOffset];
      v22 = v21;
      [(PLSubmissionFileXC *)self obfuscateTimestampsForTable:@"XcodeMetrics_TimeOffset_365_4" connection:v79 withOffset:?];
      [(PLSubmissionFileXC *)self obfuscateTimestampsForTable:@"XcodeMetrics_UserAction_365_4" connection:v79 withOffset:v22];
      [(PLSQLiteConnection *)v79 fullVacuum];
      v23 = [(PLSubmissionFileXC *)self userActionCountForConnection:v79];
      v85[0] = @"has_user_actions";
      v75 = [MEMORY[0x1E696AD98] numberWithBool:v23 > 0];
      v86[0] = v75;
      v86[1] = &unk_1F540A230;
      v85[1] = @"preparation_stage";
      v85[2] = @"user_action_row_count";
      v65 = v23;
      v74 = [MEMORY[0x1E696AD98] numberWithInt:v23];
      v86[2] = v74;
      v85[3] = @"xcsql_size";
      v24 = MEMORY[0x1E696AD98];
      v73 = +[PPSCoreStorage sharedSQLStorage];
      v72 = [v73 XCSQLConnection];
      v71 = [v72 filePath];
      v70 = [v24 numberWithLongLong:{+[PLFileStats fileSizeAtPath:](PLFileStats, "fileSizeAtPath:", v71)}];
      v86[3] = v70;
      v85[4] = @"shm_size";
      v25 = MEMORY[0x1E696AD98];
      v77 = v19;
      v69 = +[PPSCoreStorage sharedSQLStorage];
      v68 = [v69 XCSQLConnection];
      v67 = [v68 filePath];
      v66 = [v67 stringByAppendingString:@"-shm"];
      v26 = [v25 numberWithLongLong:{+[PLFileStats fileSizeAtPath:](PLFileStats, "fileSizeAtPath:", v66)}];
      v86[4] = v26;
      v85[5] = @"wal_size";
      v78 = v20;
      v27 = MEMORY[0x1E696AD98];
      v28 = +[PPSCoreStorage sharedSQLStorage];
      v29 = [v28 XCSQLConnection];
      v30 = [v29 filePath];
      v31 = [v30 stringByAppendingString:@"-wal"];
      v32 = [v27 numberWithLongLong:{+[PLFileStats fileSizeAtPath:](PLFileStats, "fileSizeAtPath:", v31)}];
      v86[5] = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:6];
      AnalyticsSendEvent();

      v20 = v78;
      p_super = &v79->super;

      v19 = v77;
      [(PLSQLiteConnection *)v79 closeConnection];
      if ([PLUtilities compressWithSource:v77 withDestination:v78 withLevel:4])
      {
        v35 = [MEMORY[0x1E696AC08] defaultManager];
        [v35 removeItemAtPath:v77 error:0];

        v36 = [MEMORY[0x1E696AC08] defaultManager];
        v37 = [v77 stringByAppendingString:@"-wal"];
        [v36 removeItemAtPath:v37 error:0];

        v38 = [MEMORY[0x1E696AC08] defaultManager];
        v39 = [v77 stringByAppendingString:@"-shm"];
        [v38 removeItemAtPath:v39 error:0];

        v80 = [v8 stringByAppendingPathComponent:@"tag.json"];
        v40 = [MEMORY[0x1E695DF70] array];
        v41 = [v78 lastPathComponent];
        [v40 addObject:v41];

        v76 = v40;
        v84[0] = v40;
        v83[0] = @"LogFiles";
        v83[1] = @"XcodeVersion";
        v42 = MEMORY[0x1E696AD98];
        [(PLSubmissionFileXC *)self xcodeVersionFromUserActions];
        v43 = [v42 numberWithDouble:?];
        v84[1] = v43;
        v83[2] = @"UserActionCount_System";
        v44 = MEMORY[0x1E696AD98];
        v45 = +[PPSCoreStorage sharedSQLStorage];
        v46 = [v45 XCSQLConnection];
        v47 = [v44 numberWithInt:{-[PLSubmissionFileXC userActionCountForConnection:](self, "userActionCountForConnection:", v46)}];
        v84[2] = v47;
        v83[3] = @"UserActionCount_Upload";
        v48 = [MEMORY[0x1E696AD98] numberWithInt:v65];
        v84[3] = v48;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:4];

        if (![(PLSubmissionFile *)self createTagFileWithPath:v80 withInfo:v49])
        {
          v50 = PLLogSubmission();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileBG copyAndPrepareLog];
          }
        }

        v51 = MEMORY[0x1E6999F68];
        v52 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
        v53 = [v51 archiveDirectoryAt:v52 deleteOriginal:1];

        if (v53)
        {
          v54 = [MEMORY[0x1E696AC08] defaultManager];
          v55 = [v53 path];
          v56 = [(PLSubmissionFile *)self filePath];
          v81 = v11;
          v57 = [v54 moveItemAtPath:v55 toPath:v56 error:&v81];
          v58 = v81;

          if (v57)
          {
            [(PLSubmissionFile *)self decorateFile];
            v59 = PLLogSubmission();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFileXC copyAndPrepareLog];
            }

            v60 = [MEMORY[0x1E696AC08] defaultManager];
            v61 = [v53 path];
            [v60 removeItemAtPath:v61 error:0];

            v6 = 1;
          }

          else
          {
            v60 = PLLogSubmission();
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFileXC copyAndPrepareLog];
            }

            v6 = 0;
          }

          v19 = v77;
        }

        else
        {
          v60 = PLLogSubmission();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileXC copyAndPrepareLog];
          }

          v6 = 0;
          v58 = v11;
        }

        v11 = v58;
        v20 = v78;
        p_super = v80;
        goto LABEL_40;
      }

      v62 = PLLogSubmission();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }
    }

    else
    {
      p_super = PLLogSubmission();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileXC copyAndPrepareLog];
      }
    }

    v6 = 0;
LABEL_40:

LABEL_41:
LABEL_42:

    goto LABEL_43;
  }

  v4 = [(PLSubmissionFile *)self taskingConfig];
  v5 = [v4 conditionCheckForXcodeUserActions];

  if (v5)
  {
    goto LABEL_5;
  }

  v6 = 0;
LABEL_43:
  v63 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)getXCSQLFile
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

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"xcode_%@.XCSQL", v9];
  v13 = PLLogSubmission();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileXC getXCSQLFile];
  }

  return v12;
}

- (void)obfuscateTimestampsForTable:(id)a3 connection:(id)a4 withOffset:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = PLLogSubmission();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFileXC obfuscateTimestampsForTable:connection:withOffset:];
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE %@ SET timestamp = timestamp - %f", v7, *&a5];;
    [v8 beginTransaction];
    v11 = [v8 performQuery:v10];
    [v8 endTransaction];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissionFileXC obfuscateTimestampsForTable:connection:withOffset:];
  }
}

- (double)randomizedBaseOffset
{
  v2 = arc4random() / 4294967300.0 * 86400.0 + 86400.0;
  v3 = PLLogSubmission();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileXC randomizedBaseOffset];
  }

  return v2;
}

- (double)xcodeVersionFromUserActions
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT DISTINCT %@ FROM %@ ORDER BY timestamp DESC limit 1", @"XcodeVersion", @"XcodeMetrics_UserAction_365_4"];
  v3 = +[PPSCoreStorage sharedSQLStorage];
  v4 = [v3 XCSQLConnection];
  v5 = [v4 entriesForKey:@"XcodeMetrics_UserAction_365_4" withQuery:v2];

  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 objectForKeyedSubscript:@"XcodeVersion"];
    [v7 doubleValue];
    v9 = v8;

    v10 = PLLogSubmission();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFileXC xcodeVersionFromUserActions];
    }
  }

  else
  {
    v10 = PLLogSubmission();
    v9 = -1.0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFileXC xcodeVersionFromUserActions];
    }
  }

  return v9;
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
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getXCSQLFile
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)obfuscateTimestampsForTable:connection:withOffset:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)obfuscateTimestampsForTable:connection:withOffset:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)randomizedBaseOffset
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)xcodeVersionFromUserActions
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end