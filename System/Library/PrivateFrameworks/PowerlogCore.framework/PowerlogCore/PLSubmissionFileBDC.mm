@interface PLSubmissionFileBDC
- (BOOL)copyAndPrepareLog;
- (PLSubmissionFileBDC)initWithConfig:(id)config;
- (id)getBDCPlistFile;
- (id)getEPSQLFile;
- (id)getListOfRequiredBDCFiles;
- (void)copyAndPrepareLog;
- (void)getBDCPlistFile;
- (void)getEPSQLFile;
- (void)getListOfRequiredBDCFiles;
- (void)submit;
@end

@implementation PLSubmissionFileBDC

- (PLSubmissionFileBDC)initWithConfig:(id)config
{
  configCopy = config;
  if (![configCopy submitBDC] || +[PLPlatform isTVOS](PLPlatform, "isTVOS") || (v8.receiver = self, v8.super_class = PLSubmissionFileBDC, v5 = -[PLSubmissionFile initWithConfig:](&v8, sel_initWithConfig_, configCopy), (self = v5) != 0) && !-[PLSubmissionFileBDC copyAndPrepareLog](v5, "copyAndPrepareLog"))
  {
    selfCopy = 0;
  }

  else
  {
    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)submit
{
  if ([(PLSubmissionFile *)self iCloudUploadEnabled])
  {

    [(PLSubmissionFile *)self submitLogToiCloudWithCompress:0];
  }
}

- (BOOL)copyAndPrepareLog
{
  v85 = *MEMORY[0x1E69E9840];
  getListOfRequiredBDCFiles = [(PLSubmissionFileBDC *)self getListOfRequiredBDCFiles];
  if ([getListOfRequiredBDCFiles count])
  {
    filePath = [(PLSubmissionFile *)self filePath];
    v5 = [filePath stringByReplacingOccurrencesOfString:@".bdc.anon" withString:&stru_1F539D228];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [defaultManager fileExistsAtPath:v5];

    if (v7)
    {
      v8 = PLLogSubmission();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }

      v9 = 0;
      goto LABEL_54;
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v75 = 0;
    v11 = [defaultManager2 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v75];
    v8 = v75;

    if ((v11 & 1) == 0)
    {
      v25 = PLLogSubmission();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBDC copyAndPrepareLog];
      }

      v9 = 0;
      goto LABEL_53;
    }

    selfCopy = self;
    v63 = getListOfRequiredBDCFiles;
    v12 = v5;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = getListOfRequiredBDCFiles;
    v13 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v72;
      do
      {
        v16 = 0;
        v17 = v8;
        do
        {
          if (*v72 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v71 + 1) + 8 * v16);
          v19 = [@"/var/db/Battery/BDC" stringByAppendingPathComponent:v18];
          v20 = [v12 stringByAppendingPathComponent:v18];
          defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
          v70 = v17;
          v22 = [defaultManager3 copyItemAtPath:v19 toPath:v20 error:&v70];
          v8 = v70;

          if ((v22 & 1) == 0)
          {
            v23 = PLLogSubmission();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v79 = v19;
              v80 = 2112;
              v81 = v20;
              v82 = 2112;
              v83 = v8;
              _os_log_error_impl(&dword_1D8611000, v23, OS_LOG_TYPE_ERROR, "Error trying to copy bdc file from %@ to %@, %@", buf, 0x20u);
            }
          }

          ++v16;
          v17 = v8;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v71 objects:v84 count:16];
      }

      while (v14);
    }

    getEPSQLFile = [(PLSubmissionFileBDC *)selfCopy getEPSQLFile];
    v5 = v12;
    v25 = [v12 stringByAppendingPathComponent:getEPSQLFile];

    v26 = [v25 stringByAppendingFormat:@".gz"];
    v27 = +[PPSCoreStorage sharedSQLStorage];
    ePSQLConnection = [v27 EPSQLConnection];

    v65 = ePSQLConnection;
    if ([ePSQLConnection copyDatabaseToPath:v25 fromDate:0 toDate:0 withTableFilters:0 vacuumDB:0])
    {
      if (![PLUtilities compressWithSource:v25 withDestination:v26 withLevel:4])
      {
        v29 = PLLogSubmission();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileBG copyAndPrepareLog];
        }
      }

      defaultManager4 = [MEMORY[0x1E696AC08] defaultManager];
      [defaultManager4 removeItemAtPath:v25 error:0];

      defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
      v32 = [v25 stringByAppendingString:@"-shm"];
      [defaultManager5 removeItemAtPath:v32 error:0];
    }

    else
    {
      defaultManager5 = PLLogSubmission();
      if (os_log_type_enabled(defaultManager5, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBDC copyAndPrepareLog];
      }
    }

    getListOfRequiredBDCFiles = v63;

    v33 = [v5 stringByAppendingPathComponent:@"tag.json"];
    v34 = [MEMORY[0x1E695DF70] arrayWithArray:obj];
    lastPathComponent = [v26 lastPathComponent];
    [v34 addObject:lastPathComponent];

    v76 = @"LogFiles";
    v77 = v34;
    v61 = v34;
    v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    if (![(PLSubmissionFile *)selfCopy createTagFileWithPath:v33 withInfo:?])
    {
      v36 = PLLogSubmission();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBG copyAndPrepareLog];
      }
    }

    obja = v26;
    getBDCPlistFile = [(PLSubmissionFileBDC *)selfCopy getBDCPlistFile];
    v64 = v33;
    v59 = getBDCPlistFile;
    if (getBDCPlistFile)
    {
      v38 = getBDCPlistFile;
      v39 = [v5 stringByAppendingPathComponent:@"com.apple.powerd.bdc.plist"];
      v40 = [MEMORY[0x1E695DFF8] fileURLWithPath:v39];
      v69 = v8;
      v41 = [v38 writeToURL:v40 error:&v69];
      v42 = v69;

      if ((v41 & 1) == 0)
      {
        v43 = PLLogSubmission();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileBDC copyAndPrepareLog];
        }
      }
    }

    else
    {
      v39 = PLLogSubmission();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBDC copyAndPrepareLog];
      }

      v42 = v8;
    }

    v44 = MEMORY[0x1E6999F68];
    v45 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
    v46 = [v44 archiveDirectoryAt:v45 deleteOriginal:1];

    if (v46)
    {
      defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
      path = [v46 path];
      filePath2 = [(PLSubmissionFile *)selfCopy filePath];
      v68 = v42;
      v50 = [defaultManager6 moveItemAtPath:path toPath:filePath2 error:&v68];
      v8 = v68;

      if (v50)
      {
        [(PLSubmissionFile *)selfCopy decorateFile];
        v9 = 1;
        v51 = v59;
        v52 = obja;
LABEL_52:

LABEL_53:
LABEL_54:

        goto LABEL_55;
      }

      v53 = PLLogSubmission();
      v51 = v59;
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissionFileBDC copyAndPrepareLog];
      }

      defaultManager7 = [MEMORY[0x1E696AC08] defaultManager];
      path2 = [v46 path];
      [defaultManager7 removeItemAtPath:path2 error:0];
    }

    else
    {
      v8 = v42;
      v51 = v59;
    }

    v56 = PLLogSubmission();
    v52 = obja;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC copyAndPrepareLog];
    }

    v9 = 0;
    goto LABEL_52;
  }

  v9 = 0;
LABEL_55:

  v57 = *MEMORY[0x1E69E9840];
  return v9;
}

- (id)getListOfRequiredBDCFiles
{
  v23 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  v3 = [defaultManager contentsOfDirectoryAtPath:@"/var/db/Battery/BDC" error:&v21];
  v4 = v21;

  array = [MEMORY[0x1E695DF70] array];
  if (v4)
  {
    v6 = PLLogSubmission();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getListOfRequiredBDCFiles];
    }

LABEL_4:

    v7 = 0;
    goto LABEL_16;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [array addObject:{*(*(&v17 + 1) + 8 * i), v17}];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v13 = [array count];
  v14 = PLLogSubmission();
  v6 = v14;
  if (!v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getListOfRequiredBDCFiles];
    }

    goto LABEL_4;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileBDC getListOfRequiredBDCFiles];
  }

  v7 = array;
LABEL_16:

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)getEPSQLFile
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

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"log_%@.EPSQL", v9];
  v13 = PLLogSubmission();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileBDC getEPSQLFile];
  }

  return v12;
}

- (id)getBDCPlistFile
{
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", MEMORY[0x1E69E96A0], 0);
  v3 = mach_service;
  if (!mach_service)
  {
    v14 = PLLogSubmission();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getBDCPlistFile];
    }

    goto LABEL_14;
  }

  v4 = MEMORY[0x1E69E96A0];
  xpc_connection_set_target_queue(mach_service, MEMORY[0x1E69E96A0]);

  xpc_connection_set_event_handler(v3, &__block_literal_global_34);
  xpc_connection_resume(v3);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (!v5)
  {
    v15 = PLLogSubmission();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getBDCPlistFile];
    }

    xpc_connection_cancel(v3);
LABEL_14:
    v16 = 0;
    goto LABEL_21;
  }

  v6 = v5;
  xpc_dictionary_set_BOOL(v5, "BDCXPCCopyDefaults", 1);
  v7 = [PLTimer alloc];
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
  v9 = dispatch_get_global_queue(2, 0);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __38__PLSubmissionFileBDC_getBDCPlistFile__block_invoke_50;
  v23[3] = &unk_1E8519A18;
  v10 = v3;
  v24 = v10;
  v11 = [(PLTimer *)v7 initWithFireDate:v8 withInterval:0 withTolerance:0 repeats:v9 withUserInfo:v23 withQueue:0.0 withBlock:0.0];

  v12 = xpc_connection_send_message_with_reply_sync(v10, v6);
  [(PLTimer *)v11 invalidate];
  if (!v12)
  {
    v13 = PLLogSubmission();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getBDCPlistFile];
    }

    goto LABEL_17;
  }

  if (MEMORY[0x1DA71B8B0](v12) != MEMORY[0x1E69E9E80])
  {
    if (MEMORY[0x1DA71B8B0](v12) != MEMORY[0x1E69E9E98])
    {
LABEL_18:
      xpc_connection_cancel(v10);
      goto LABEL_19;
    }

    v13 = PLLogSubmission();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getBDCPlistFile];
    }

LABEL_17:

    goto LABEL_18;
  }

  v18 = _CFXPCCreateCFObjectFromXPCObject();
  v19 = PLLogSubmission();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [PLSubmissionFileBDC getBDCPlistFile];
  }

  xpc_connection_cancel(v10);
  if (v18)
  {
    v20 = [v18 objectForKeyedSubscript:@"returnCode"];
    intValue = [v20 intValue];

    if (!intValue)
    {
      v16 = [v18 objectForKeyedSubscript:@"BDCXPCCopyDefaults"];

      goto LABEL_20;
    }

    v22 = PLLogSubmission();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissionFileBDC getBDCPlistFile];
    }
  }

LABEL_19:
  v16 = 0;
LABEL_20:

LABEL_21:

  return v16;
}

void __38__PLSubmissionFileBDC_getBDCPlistFile__block_invoke_50(uint64_t a1)
{
  v2 = PLLogSubmission();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __38__PLSubmissionFileBDC_getBDCPlistFile__block_invoke_50_cold_1();
  }

  xpc_connection_cancel(*(a1 + 32));
}

- (void)copyAndPrepareLog
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getListOfRequiredBDCFiles
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getEPSQLFile
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1D8611000, v0, OS_LOG_TYPE_DEBUG, "Requested BDC EPSQL file: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)getBDCPlistFile
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__PLSubmissionFileBDC_getBDCPlistFile__block_invoke_50_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end