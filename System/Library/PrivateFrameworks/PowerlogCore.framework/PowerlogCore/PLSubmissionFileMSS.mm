@interface PLSubmissionFileMSS
- (BOOL)collectMSS;
- (BOOL)copyAndPrepareLog;
- (BOOL)flushMicrostackshots;
- (BOOL)generateMSS;
- (BOOL)packageDirectory:(id)directory to:(id)to;
- (PLSubmissionFileMSS)initWithConfig:(id)config;
- (id)getFileList;
- (id)mssTextFilePath;
- (void)collectMSS;
- (void)copyAndPrepareLog;
- (void)generateMSS;
- (void)submit;
@end

@implementation PLSubmissionFileMSS

- (PLSubmissionFileMSS)initWithConfig:(id)config
{
  configCopy = config;
  if ([configCopy submitMSS] && ((v8.receiver = self, v8.super_class = PLSubmissionFileMSS, v5 = -[PLSubmissionFile initWithConfig:](&v8, sel_initWithConfig_, configCopy), (self = v5) == 0) || -[PLSubmissionFileMSS copyAndPrepareLog](v5, "copyAndPrepareLog")))
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

- (id)mssTextFilePath
{
  filePath = [(PLSubmissionFile *)self filePath];
  v3 = [filePath stringByReplacingOccurrencesOfString:@".mss.anon" withString:@".msstext.anon"];

  return v3;
}

- (BOOL)copyAndPrepareLog
{
  flushMicrostackshots = [(PLSubmissionFileMSS *)self flushMicrostackshots];
  v4 = PLLogSubmission();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (flushMicrostackshots)
  {
    if (v5)
    {
      [PLSubmissionFileMSS copyAndPrepareLog];
    }
  }

  else if (v5)
  {
    [PLSubmissionFileMSS copyAndPrepareLog];
  }

  directory = [(PLSubmissionFile *)self directory];

  if (directory)
  {
    directory2 = [(PLSubmissionFile *)self directory];
    [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:directory2];
  }

  collectMSS = [(PLSubmissionFileMSS *)self collectMSS];
  v9 = PLLogSubmission();
  v10 = v9;
  if (!collectMSS)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileMSS copyAndPrepareLog];
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "Successfully collected binary MSS", buf, 2u);
  }

  if (_os_feature_enabled_impl())
  {
    taskingConfig = [(PLSubmissionFile *)self taskingConfig];
    submitReasonType = [taskingConfig submitReasonType];

    if (submitReasonType != 2)
    {
      generateMSS = [(PLSubmissionFileMSS *)self generateMSS];
      v14 = PLLogSubmission();
      v10 = v14;
      if (generateMSS)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "Successfully generated text MSS", v16, 2u);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileMSS copyAndPrepareLog];
      }

LABEL_18:
    }
  }

  return collectMSS;
}

- (BOOL)collectMSS
{
  filePath = [(PLSubmissionFile *)self filePath];
  v4 = [filePath stringByReplacingOccurrencesOfString:@".mss.anon" withString:&stru_1F539D228];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (!v6)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v40 = 0;
    v10 = [defaultManager2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v40];
    v7 = v40;

    if (v10)
    {
      getFileList = [(PLSubmissionFileMSS *)self getFileList];
      v12 = [getFileList mutableCopy];

      if (v12 && [v12 count])
      {
        *v36 = 0;
        v37 = v36;
        v38 = 0x2020000000;
        v39 = 0;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __33__PLSubmissionFileMSS_collectMSS__block_invoke;
        v33[3] = &unk_1E851B4C8;
        v13 = v4;
        v34 = v13;
        v35 = v36;
        [v12 enumerateObjectsUsingBlock:v33];
        if (v37[24])
        {
          v14 = PLLogSubmission();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFileMSS collectMSS];
          }

          v15 = objc_alloc(MEMORY[0x1E695DFF8]);
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/microstackshots", v13];
          v17 = [v15 initFileURLWithPath:v16];

          path = [v17 path];
          v19 = open([path UTF8String], 3585, 432);

          if (v19 != -1)
          {
            taskingConfig = [(PLSubmissionFile *)self taskingConfig];
            startDate = [taskingConfig startDate];
            convertFromMonotonicToSystem = [startDate convertFromMonotonicToSystem];

            empty = xpc_dictionary_create_empty();
            [convertFromMonotonicToSystem timeIntervalSince1970];
            xpc_dictionary_set_uint64(empty, "time", v24);
            if (!systemstats_copy_microstackshots_to_file())
            {
              lastPathComponent = [v17 lastPathComponent];
              [v12 addObject:lastPathComponent];
            }

            close(v19);
          }

          dictionary = [MEMORY[0x1E695DF90] dictionary];
          [dictionary setObject:v12 forKeyedSubscript:@"LogFiles"];
          [dictionary setObject:MEMORY[0x1E695E0F0] forKeyedSubscript:@"DscsymFiles"];
          v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v13, @"tag.json"];
          if ([(PLSubmissionFile *)self createTagFileWithPath:v27 withInfo:dictionary])
          {
            filePath2 = [(PLSubmissionFile *)self filePath];
            v8 = [(PLSubmissionFileMSS *)self packageDirectory:v13 to:filePath2];
            if (v8)
            {
              v29 = PLLogSubmission();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1D8611000, v29, OS_LOG_TYPE_DEFAULT, "Packaged binary MSS", buf, 2u);
              }
            }

            else
            {
              v29 = PLLogSubmission();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                [PLSubmissionFileMSS collectMSS];
              }
            }
          }

          else
          {
            filePath2 = PLLogSubmission();
            if (os_log_type_enabled(filePath2, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFileMSS collectMSS];
            }

            v8 = 0;
          }
        }

        else
        {
          v17 = PLLogSubmission();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFileMSS collectMSS];
          }

          v8 = 0;
        }

        _Block_object_dispose(v36, 8);
        goto LABEL_25;
      }

      v30 = PLLogSubmission();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *v36 = 0;
        _os_log_impl(&dword_1D8611000, v30, OS_LOG_TYPE_INFO, "No MSS files found", v36, 2u);
      }
    }

    else
    {
      v12 = PLLogSubmission();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileMSS collectMSS];
      }
    }

    v8 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v7 = PLLogSubmission();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileMSS collectMSS];
  }

  v8 = 0;
LABEL_26:

  return v8;
}

void __33__PLSubmissionFileMSS_collectMSS__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v8 = [v3 stringWithFormat:@"%@/%@", @"/var/db/systemstats", v4];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", *(a1 + 32), v4];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 copyItemAtPath:v8 toPath:v5 error:0];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (BOOL)generateMSS
{
  filePath = [(PLSubmissionFile *)self filePath];
  v4 = [filePath stringByReplacingOccurrencesOfString:@".mss.anon" withString:@"-text"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:v4];

  if (v6)
  {
    v7 = PLLogSubmission();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFileMSS collectMSS];
    }

    v8 = 0;
  }

  else
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v39 = 0;
    v10 = [defaultManager2 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v39];
    v7 = v39;

    if (v10)
    {
      v11 = [v4 stringByAppendingPathComponent:@"text-microstackshots.txt"];
      taskingConfig = [(PLSubmissionFile *)self taskingConfig];
      startDate = [taskingConfig startDate];
      convertFromMonotonicToSystem = [startDate convertFromMonotonicToSystem];

      taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
      endDate = [taskingConfig2 endDate];
      convertFromMonotonicToSystem2 = [endDate convertFromMonotonicToSystem];

      v18 = PLLogSubmission();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFileMSS generateMSS];
      }

      v19 = objc_alloc_init(SignpostReaderHelper);
      v20 = [(SignpostReaderHelper *)v19 generateTaskingMSSWithStartDate:convertFromMonotonicToSystem endDate:convertFromMonotonicToSystem2 atPath:v11];
      v21 = v20;
      if (v20)
      {
        v31 = convertFromMonotonicToSystem2;
        v32 = convertFromMonotonicToSystem;
        v34 = MEMORY[0x1E69E9820];
        v35 = 3221225472;
        v36 = __34__PLSubmissionFileMSS_generateMSS__block_invoke;
        v37 = &unk_1E8519A88;
        v38 = v20;
        AnalyticsSendEventLazy();
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v23 = MEMORY[0x1E696AD98];
        +[PLUtilities getLastSystemTimeOffset];
        v24 = [v23 numberWithDouble:?];
        [dictionary setObject:v24 forKeyedSubscript:@"LastSystemOffset"];

        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v4, @"tag.json"];
        if ([(PLSubmissionFile *)self createTagFileWithPath:v25 withInfo:dictionary])
        {
          mssTextFilePath = [(PLSubmissionFileMSS *)self mssTextFilePath];
          v8 = [(PLSubmissionFileMSS *)self packageDirectory:v4 to:mssTextFilePath];
          v27 = PLLogSubmission();
          v28 = v27;
          if (v8)
          {
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1D8611000, v28, OS_LOG_TYPE_DEFAULT, "Packaged text MSS", buf, 2u);
            }
          }

          else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileMSS generateMSS];
          }
        }

        else
        {
          mssTextFilePath = PLLogSubmission();
          if (os_log_type_enabled(mssTextFilePath, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFileMSS collectMSS];
          }

          v8 = 0;
        }

        v29 = v38;
        convertFromMonotonicToSystem2 = v31;
        convertFromMonotonicToSystem = v32;
      }

      else
      {
        v29 = PLLogSubmission();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileMSS generateMSS];
        }

        v8 = 0;
      }
    }

    else
    {
      v11 = PLLogSubmission();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileMSS collectMSS];
      }

      v8 = 0;
    }
  }

  return v8;
}

id __34__PLSubmissionFileMSS_generateMSS__block_invoke(uint64_t a1)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"sample_count"];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"time_printing"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"time_processing"];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"time_reading"];
  v6 = v5;
  v7 = &unk_1F540A308;
  if (v4)
  {
    v8 = v4;
  }

  else
  {
    v8 = &unk_1F540A308;
  }

  v14[0] = @"ProcessingTime";
  v14[1] = @"PrintingTime";
  if (v3)
  {
    v9 = v3;
  }

  else
  {
    v9 = &unk_1F540A308;
  }

  v15[0] = v8;
  v15[1] = v9;
  v14[2] = @"ReadingTime";
  v14[3] = @"SampleCount";
  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = &unk_1F540A308;
  }

  if (v2)
  {
    v7 = v2;
  }

  v15[2] = v10;
  v15[3] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BOOL)packageDirectory:(id)directory to:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  toCopy = to;
  v8 = PLLogSubmission();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v20 = 138412290;
    v21 = directoryCopy;
    _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_INFO, "Packaging directory %@", &v20, 0xCu);
  }

  v9 = MEMORY[0x1E6999F68];
  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:directoryCopy];
  v11 = [v9 archiveDirectoryAt:v10 deleteOriginal:1];

  if (!v11)
  {
    goto LABEL_7;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v11 path];
  v14 = [defaultManager moveItemAtPath:path toPath:toCopy error:0];

  if (!v14)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    path2 = [v11 path];
    [defaultManager2 removeItemAtPath:path2 error:0];

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  [(PLSubmissionFile *)self decorateFile];
  v15 = 1;
LABEL_8:

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)flushMicrostackshots
{
  v2 = dispatch_semaphore_create(0);
  v4 = 0;
  if (systemstats_microstackshot_checkpoint_async())
  {
    v3 = dispatch_time(0, 10000000000);
    if (!dispatch_semaphore_wait(v2, v3))
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)getFileList
{
  v61 = *MEMORY[0x1E69E9840];
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  startDate = [taskingConfig startDate];
  convertFromMonotonicToSystem = [startDate convertFromMonotonicToSystem];

  endDate = [taskingConfig endDate];
  convertFromMonotonicToSystem2 = [endDate convertFromMonotonicToSystem];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager contentsOfDirectoryAtPath:@"/var/db/systemstats" error:0];

  if (![v6 count])
  {
    v27 = 0;
    goto LABEL_28;
  }

  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (!v8)
  {

    v26 = 0;
    v25 = 0;
    goto LABEL_25;
  }

  v9 = v8;
  v34 = v6;
  v35 = taskingConfig;
  v37 = 0;
  v39 = 0;
  v10 = *v45;
  v11 = *MEMORY[0x1E696A350];
  v38 = 1;
  v42 = *MEMORY[0x1E696A350];
  do
  {
    v12 = 0;
    v43 = v9;
    do
    {
      if (*v45 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v44 + 1) + 8 * v12);
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", @"/var/db/systemstats", v13];
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v16 = [defaultManager2 attributesOfItemAtPath:v14 error:0];

      v17 = [v16 objectForKey:v11];
      v18 = [v13 componentsSeparatedByString:@"."];
      if ([v18 count] == 4)
      {
        v19 = v10;
        v20 = v7;
        v21 = [v18 objectAtIndexedSubscript:1];
        v22 = [v21 isEqualToString:@"microstackshots"];

        if (!v22)
        {
          goto LABEL_16;
        }

        if ([convertFromMonotonicToSystem compare:v17] != -1 || objc_msgSend(convertFromMonotonicToSystem2, "compare:", v17) == -1)
        {
          v7 = v20;
          if ([convertFromMonotonicToSystem2 compare:v17] == -1 && (!v39 || objc_msgSend(v39, "compare:", v17) == 1))
          {
            v23 = v17;

            v24 = v13;
            v37 = v24;
            v39 = v23;
            goto LABEL_16;
          }
        }

        else
        {
          [v36 addObject:v13];
          v38 &= [convertFromMonotonicToSystem2 compare:v17] != 0;
LABEL_16:
          v7 = v20;
        }

        v10 = v19;
        v11 = v42;
        v9 = v43;
      }

      ++v12;
    }

    while (v9 != v12);
    v9 = [v7 countByEnumeratingWithState:&v44 objects:v60 count:16];
  }

  while (v9);

  v25 = v37;
  if ((v38 & (v37 != 0)) == 1)
  {
    [v36 addObject:v37];
  }

  v6 = v34;
  taskingConfig = v35;
  v26 = v39;
LABEL_25:
  v28 = PLLogSubmission();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    startDate2 = [taskingConfig startDate];
    endDate2 = [taskingConfig endDate];
    v33 = [v36 count];
    *buf = 138413570;
    v49 = convertFromMonotonicToSystem;
    v50 = 2112;
    v51 = startDate2;
    v52 = 2112;
    v53 = convertFromMonotonicToSystem2;
    v54 = 2112;
    v55 = endDate2;
    v56 = 1024;
    v57 = v33;
    v58 = 2112;
    v59 = v36;
    _os_log_debug_impl(&dword_1D8611000, v28, OS_LOG_TYPE_DEBUG, "Microstackshots files from %@(%@) to %@(%@): %d files found (%@)\n", buf, 0x3Au);
  }

  v27 = v36;
LABEL_28:

  v29 = *MEMORY[0x1E69E9840];

  return v27;
}

- (void)submit
{
  if ([(PLSubmissionFile *)self iCloudUploadEnabled])
  {
    filePath = [(PLSubmissionFile *)self filePath];
    [(PLSubmissionFile *)self submitLogToiCloud:filePath WithCompress:0];

    if (_os_feature_enabled_impl())
    {
      taskingConfig = [(PLSubmissionFile *)self taskingConfig];
      submitReasonType = [taskingConfig submitReasonType];

      if (submitReasonType != 2)
      {
        mssTextFilePath = [(PLSubmissionFileMSS *)self mssTextFilePath];
        [(PLSubmissionFile *)self submitLogToiCloud:mssTextFilePath WithCompress:0];
      }
    }
  }

  taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
  isDRTasking = [taskingConfig2 isDRTasking];

  if ((isDRTasking & 1) == 0)
  {
    v9 = [(PLSubmissionFile *)self submitLogToDAWithBugType:@"220"];

    [(PLSubmissionFile *)self logSubmissionResultToCAWithErrorType:v9 withFileType:@"microstackshot" withOverrideKeys:0];
  }
}

- (void)copyAndPrepareLog
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)collectMSS
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)generateMSS
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end