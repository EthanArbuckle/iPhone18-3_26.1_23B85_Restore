@interface PLSubmissionFileBG
- (BOOL)copyAndPrepareLog;
- (PLSubmissionFileBG)initWithConfig:(id)config;
- (id)getBGSQLFile;
- (void)copyAndPrepareLog;
- (void)getBGSQLFile;
- (void)submit;
@end

@implementation PLSubmissionFileBG

- (PLSubmissionFileBG)initWithConfig:(id)config
{
  configCopy = config;
  if ([configCopy submitBG] && ((v8.receiver = self, v8.super_class = PLSubmissionFileBG, v5 = -[PLSubmissionFile initWithConfig:](&v8, sel_initWithConfig_, configCopy), (self = v5) == 0) || -[PLSubmissionFileBG copyAndPrepareLog](v5, "copyAndPrepareLog")))
  {
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)copyAndPrepareLog
{
  v67 = *MEMORY[0x1E69E9840];
  filePath = [(PLSubmissionFile *)self filePath];
  v4 = [filePath stringByReplacingOccurrencesOfString:@".bg.anon" withString:&stru_1F539D228];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (v6)
  {
    v7 = PLLogSubmission();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBG copyAndPrepareLog];
    }

    v8 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v61 = 0;
    v10 = [defaultManager2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v61];
    v7 = v61;

    if (v10)
    {
      v11 = +[PowerlogCore sharedCore];
      storage = [v11 storage];
      [storage blockingFlushCachesWithReason:@"BackgroundProcessing"];

      getBGSQLFile = [(PLSubmissionFileBG *)self getBGSQLFile];
      v14 = [v4 stringByAppendingPathComponent:getBGSQLFile];

      v15 = [v14 stringByAppendingFormat:@".gz"];
      v16 = +[PPSCoreStorage sharedSQLStorage];
      bGSQLConnection = [v16 BGSQLConnection];
      v18 = [bGSQLConnection copyDatabaseToPath:v14 fromDate:0 toDate:0 withTableFilters:0 vacuumDB:0];

      if (v18)
      {
        date = [MEMORY[0x1E695DF00] date];
        [date timeIntervalSince1970];
        v21 = v20;

        v22 = PLLogSubmission();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = v21;
          _os_log_impl(&dword_1D8611000, v22, OS_LOG_TYPE_INFO, "The epoch time for BGSQL copy log is %f", buf, 0xCu);
        }

        v58 = v15;

        v64[0] = @"TaskEndTime";
        v23 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
        v64[1] = @"Reason";
        v65[0] = v23;
        v65[1] = &unk_1F5405B80;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v65 forKeys:v64 count:2];

        v25 = PLLogSubmission();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v24;
          _os_log_impl(&dword_1D8611000, v25, OS_LOG_TYPE_INFO, "The payload for BGSQL Tasking log is %@", buf, 0xCu);
        }

        *buf = 0;
        errmsg = 0;
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@_%@", @"BackgroundProcessing", @"TimeOfCaptureEvent", @"1", @"5"];
        v27 = PLLogSubmission();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFileBG copyAndPrepareLog];
        }

        if (sqlite3_open_v2([v14 UTF8String], buf, 2, 0))
        {
          v28 = PLLogSubmission();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileBG copyAndPrepareLog];
          }
        }

        else
        {
          v29 = MEMORY[0x1E696AEC0];
          v30 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
          v28 = [v29 stringWithFormat:@"INSERT INTO %@ (TaskEndTime, Reason) VALUES ('%@', '%@')", v26, v30, &unk_1F5405B80];

          if (sqlite3_exec(*buf, [v28 UTF8String], 0, 0, &errmsg))
          {
            v31 = PLLogSubmission();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFileBG copyAndPrepareLog];
            }
          }
        }

        if (errmsg)
        {
          sqlite3_free(errmsg);
        }

        if (*buf)
        {
          sqlite3_close(*buf);
        }

        if ([PLUtilities compressWithSource:v14 withDestination:v58 withLevel:4])
        {
          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager3 removeItemAtPath:v14 error:0];

          defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
          v34 = [v14 stringByAppendingString:@"-wal"];
          [defaultManager4 removeItemAtPath:v34 error:0];

          defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
          v36 = [v14 stringByAppendingString:@"-shm"];
          [defaultManager5 removeItemAtPath:v36 error:0];

          v24 = [v4 stringByAppendingPathComponent:@"tag.json"];
          array = [MEMORY[0x1E695DF70] array];
          lastPathComponent = [v58 lastPathComponent];
          [array addObject:lastPathComponent];

          v62 = @"LogFiles";
          v63 = array;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          v15 = v58;
          if (![(PLSubmissionFile *)self createTagFileWithPath:v24 withInfo:?])
          {
            v39 = PLLogSubmission();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFileBG copyAndPrepareLog];
            }
          }

          v40 = MEMORY[0x1E6999F68];
          v41 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
          v42 = [v40 archiveDirectoryAt:v41 deleteOriginal:1];

          v43 = v42;
          if (v42)
          {
            v55 = array;
            defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
            v54 = v43;
            path = [v43 path];
            filePath2 = [(PLSubmissionFile *)self filePath];
            v59 = v7;
            v47 = [defaultManager6 moveItemAtPath:path toPath:filePath2 error:&v59];
            v56 = v59;

            if (v47)
            {
              [(PLSubmissionFile *)self decorateFile];
              v48 = PLLogSubmission();
              v43 = v54;
              array = v55;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                [PLSubmissionFileBG copyAndPrepareLog];
              }

              defaultManager7 = [MEMORY[0x1E696AC08] defaultManager];
              path2 = [v54 path];
              [defaultManager7 removeItemAtPath:path2 error:0];

              v8 = 1;
              v15 = v58;
            }

            else
            {
              defaultManager7 = PLLogSubmission();
              array = v55;
              if (os_log_type_enabled(defaultManager7, OS_LOG_TYPE_ERROR))
              {
                [PLSubmissionFileBG copyAndPrepareLog];
              }

              v8 = 0;
              v15 = v58;
              v43 = v54;
            }

            v7 = v56;
          }

          else
          {
            defaultManager7 = PLLogSubmission();
            if (os_log_type_enabled(defaultManager7, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFileBG copyAndPrepareLog];
            }

            v8 = 0;
          }
        }

        else
        {
          v51 = PLLogSubmission();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileBG copyAndPrepareLog];
          }

          v8 = 0;
          v15 = v58;
        }
      }

      else
      {
        v24 = PLLogSubmission();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileBG copyAndPrepareLog];
        }

        v8 = 0;
      }
    }

    else
    {
      v14 = PLLogSubmission();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }

      v8 = 0;
    }
  }

  v52 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)getBGSQLFile
{
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  startDate = [taskingConfig startDate];
  convertFromMonotonicToSystem = [startDate convertFromMonotonicToSystem];

  taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
  endDate = [taskingConfig2 endDate];
  convertFromMonotonicToSystem2 = [endDate convertFromMonotonicToSystem];

  v9 = [MEMORY[0x1E695DF00] filenameDateStringWithStartDate:convertFromMonotonicToSystem endDate:convertFromMonotonicToSystem2];
  if (![v9 length])
  {
    taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
    tagUUID = [taskingConfig3 tagUUID];

    v9 = tagUUID;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bgprocessing_%@.BGSQL", v9];
  v13 = PLLogSubmission();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileBG getBGSQLFile];
  }

  return v12;
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
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)getBGSQLFile
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1D8611000, v0, OS_LOG_TYPE_DEBUG, "Requested BackgroundProcessing DB file: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

@end