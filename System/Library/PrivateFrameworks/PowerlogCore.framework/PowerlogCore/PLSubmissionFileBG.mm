@interface PLSubmissionFileBG
- (BOOL)copyAndPrepareLog;
- (PLSubmissionFileBG)initWithConfig:(id)a3;
- (id)getBGSQLFile;
- (void)copyAndPrepareLog;
- (void)getBGSQLFile;
- (void)submit;
@end

@implementation PLSubmissionFileBG

- (PLSubmissionFileBG)initWithConfig:(id)a3
{
  v4 = a3;
  if ([v4 submitBG] && ((v8.receiver = self, v8.super_class = PLSubmissionFileBG, v5 = -[PLSubmissionFile initWithConfig:](&v8, sel_initWithConfig_, v4), (self = v5) == 0) || -[PLSubmissionFileBG copyAndPrepareLog](v5, "copyAndPrepareLog")))
  {
    self = self;
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)copyAndPrepareLog
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = [(PLSubmissionFile *)self filePath];
  v4 = [v3 stringByReplacingOccurrencesOfString:@".bg.anon" withString:&stru_1F539D228];

  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

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
    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v61 = 0;
    v10 = [v9 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v61];
    v7 = v61;

    if (v10)
    {
      v11 = +[PowerlogCore sharedCore];
      v12 = [v11 storage];
      [v12 blockingFlushCachesWithReason:@"BackgroundProcessing"];

      v13 = [(PLSubmissionFileBG *)self getBGSQLFile];
      v14 = [v4 stringByAppendingPathComponent:v13];

      v15 = [v14 stringByAppendingFormat:@".gz"];
      v16 = +[PPSCoreStorage sharedSQLStorage];
      v17 = [v16 BGSQLConnection];
      v18 = [v17 copyDatabaseToPath:v14 fromDate:0 toDate:0 withTableFilters:0 vacuumDB:0];

      if (v18)
      {
        v19 = [MEMORY[0x1E695DF00] date];
        [v19 timeIntervalSince1970];
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
          v32 = [MEMORY[0x1E696AC08] defaultManager];
          [v32 removeItemAtPath:v14 error:0];

          v33 = [MEMORY[0x1E696AC08] defaultManager];
          v34 = [v14 stringByAppendingString:@"-wal"];
          [v33 removeItemAtPath:v34 error:0];

          v35 = [MEMORY[0x1E696AC08] defaultManager];
          v36 = [v14 stringByAppendingString:@"-shm"];
          [v35 removeItemAtPath:v36 error:0];

          v24 = [v4 stringByAppendingPathComponent:@"tag.json"];
          v37 = [MEMORY[0x1E695DF70] array];
          v38 = [v58 lastPathComponent];
          [v37 addObject:v38];

          v62 = @"LogFiles";
          v63 = v37;
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
            v55 = v37;
            v44 = [MEMORY[0x1E696AC08] defaultManager];
            v54 = v43;
            v45 = [v43 path];
            v46 = [(PLSubmissionFile *)self filePath];
            v59 = v7;
            v47 = [v44 moveItemAtPath:v45 toPath:v46 error:&v59];
            v56 = v59;

            if (v47)
            {
              [(PLSubmissionFile *)self decorateFile];
              v48 = PLLogSubmission();
              v43 = v54;
              v37 = v55;
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                [PLSubmissionFileBG copyAndPrepareLog];
              }

              v49 = [MEMORY[0x1E696AC08] defaultManager];
              v50 = [v54 path];
              [v49 removeItemAtPath:v50 error:0];

              v8 = 1;
              v15 = v58;
            }

            else
            {
              v49 = PLLogSubmission();
              v37 = v55;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
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
            v49 = PLLogSubmission();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
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