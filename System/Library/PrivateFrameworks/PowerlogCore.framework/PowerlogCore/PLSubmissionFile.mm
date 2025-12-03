@interface PLSubmissionFile
- (BOOL)createTagFileWithPath:(id)path withInfo:(id)info;
- (PLSubmissionFile)initWithConfig:(id)config;
- (id)filePath;
- (int)submitLogToDAWithBugType:(id)type;
- (void)cleanupTmpDirectory;
- (void)decorateFile;
- (void)decorateFileAtPath:(id)path;
- (void)setFileNameWithSubmissionType:(id)type withID:(id)d;
- (void)submit;
- (void)submitLogToiCloud:(id)cloud WithCompress:(BOOL)compress;
@end

@implementation PLSubmissionFile

- (PLSubmissionFile)initWithConfig:(id)config
{
  configCopy = config;
  v6 = [(PLSubmissionFile *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_taskingConfig, config);
    v8 = MEMORY[0x1E696AEC0];
    tagUUID = [configCopy tagUUID];
    tagUUID2 = [configCopy tagUUID];
    v11 = [tagUUID2 length];
    v12 = @"/";
    if (!v11)
    {
      v12 = &stru_1F539D228;
    }

    v13 = [v8 stringWithFormat:@"%@%@%@", @"/tmp/powerlog/", tagUUID, v12];
    directory = v7->_directory;
    v7->_directory = v13;

    fileName = v7->_fileName;
    v7->_fileName = 0;

    v7->_iCloudUploadEnabled = 1;
    startDate = [configCopy startDate];
    convertFromMonotonicToSystem = [startDate convertFromMonotonicToSystem];

    endDate = [configCopy endDate];
    convertFromMonotonicToSystem2 = [endDate convertFromMonotonicToSystem];

    v20 = [MEMORY[0x1E695DF00] filenameDateStringWithStartDate:convertFromMonotonicToSystem endDate:convertFromMonotonicToSystem2];
    if (![v20 length])
    {
      tagUUID3 = [configCopy tagUUID];

      v20 = tagUUID3;
    }

    getSubmitReasonTypeToStorageEventOTAType = [configCopy getSubmitReasonTypeToStorageEventOTAType];
    [(PLSubmissionFile *)v7 setFileNameWithSubmissionType:getSubmitReasonTypeToStorageEventOTAType withID:v20];
  }

  return v7;
}

- (void)setFileNameWithSubmissionType:(id)type withID:(id)d
{
  v6 = MEMORY[0x1E696AEC0];
  dCopy = d;
  typeCopy = type;
  fileType = [(PLSubmissionFile *)self fileType];
  fileExtension = [(PLSubmissionFile *)self fileExtension];
  v10 = [v6 stringWithFormat:@"%@OTA%@Submission_%@%@", fileType, typeCopy, dCopy, fileExtension];

  fileName = self->_fileName;
  self->_fileName = v10;
}

- (id)filePath
{
  v3 = MEMORY[0x1E696AEC0];
  directory = [(PLSubmissionFile *)self directory];
  fileName = [(PLSubmissionFile *)self fileName];
  v6 = [v3 stringWithFormat:@"%@%@", directory, fileName];

  return v6;
}

- (int)submitLogToDAWithBugType:(id)type
{
  v43[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  filePath = [(PLSubmissionFile *)self filePath];
  v6 = [PLFileStats fileSizeAtPath:filePath];

  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  capSize = [taskingConfig capSize];
  longLongValue = [capSize longLongValue];

  if (v6 <= longLongValue)
  {
    v42 = @"override-fileName";
    fileName = [(PLSubmissionFile *)self fileName];
    v43[0] = fileName;
    v13 = 1;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v16 = MEMORY[0x1E695DFF8];
    filePath2 = [(PLSubmissionFile *)self filePath];
    v18 = [v16 fileURLWithPath:filePath2];
    v19 = PLOSAMoveFileForSubmissions();

    if (v19)
    {
      v20 = MEMORY[0x1E695DFF8];
      filePath3 = [(PLSubmissionFile *)self filePath];
      lastPathComponent = [filePath3 lastPathComponent];
      v23 = [@"/var/mobile/Library/Logs/CrashReporter/" stringByAppendingPathComponent:lastPathComponent];
      v24 = [v20 URLWithString:v23];
      [PPSFileUtilities markAsPurgeable:v24 urgency:512 startDate:0];

      v13 = 0;
      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    filePath4 = [(PLSubmissionFile *)self filePath];
    [defaultManager removeItemAtPath:filePath4 error:0];

    v12 = 0;
    v13 = 2;
  }

  taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
  submitReasonType = [taskingConfig2 submitReasonType];

  if (submitReasonType == 3)
  {
    taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
    request = [taskingConfig3 request];
    if (request)
    {
      taskingConfig4 = [(PLSubmissionFile *)self taskingConfig];
      request2 = [taskingConfig4 request];
    }

    else
    {
      request2 = @"request nil";
    }

    taskingConfig6 = +[PLSubmissions sharedInstance];
    v40[0] = @"Type";
    taskingConfig5 = [(PLSubmissionFile *)self taskingConfig];
    getSubmitReasonTypeToStorageEventOTAType = [taskingConfig5 getSubmitReasonTypeToStorageEventOTAType];
    v41[0] = getSubmitReasonTypeToStorageEventOTAType;
    v41[1] = request2;
    v40[1] = @"Name";
    v40[2] = @"Success";
    v34 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    v41[2] = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:3];
    [taskingConfig6 logOTAStatus:v35];
  }

  else
  {
    request2 = +[PLSubmissions sharedInstance];
    v38[0] = @"Type";
    taskingConfig6 = [(PLSubmissionFile *)self taskingConfig];
    taskingConfig5 = [taskingConfig6 getSubmitReasonTypeToStorageEventOTAType];
    v39[0] = taskingConfig5;
    v38[1] = @"Success";
    getSubmitReasonTypeToStorageEventOTAType = [MEMORY[0x1E696AD98] numberWithBool:v12];
    v39[1] = getSubmitReasonTypeToStorageEventOTAType;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    [(__CFString *)request2 logOTAStatus:v34];
  }

  v36 = *MEMORY[0x1E69E9840];
  return v13;
}

BOOL __87__PLSubmissionFile_logSubmissionResultToCAWithErrorType_withFileType_withOverrideKeys___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  logSubmissionResultToCAWithErrorType_withFileType_withOverrideKeys__classDebugEnabled = result;
  return result;
}

id __87__PLSubmissionFile_logSubmissionResultToCAWithErrorType_withFileType_withOverrideKeys___block_invoke_87(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5[0] = @"source";
  v5[1] = @"reason";
  v5[2] = @"fileType";
  v6 = v1;
  v7 = vbslq_s8(vceqzq_s64(*(a1 + 40)), vdupq_n_s64(&stru_1F539D228), *(a1 + 40));
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)decorateFile
{
  filePath = [(PLSubmissionFile *)self filePath];
  [(PLSubmissionFile *)self decorateFileAtPath:filePath];
}

- (void)decorateFileAtPath:(id)path
{
  pathCopy = path;
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  date = [MEMORY[0x1E695DF00] date];
  v7 = [PLSubmissionConfig getDateMarkerFromSystemDate:date];

  uTF8String = [pathCopy UTF8String];
  uTF8String2 = [v7 UTF8String];
  v110 = v7;
  v10 = strlen([v7 UTF8String]);
  if (setxattr(uTF8String, "com.apple.powerlog.handoverDate", uTF8String2, v10, 0, 0) && +[PLDefaults debugEnabled])
  {
    v11 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v11;
    if (decorateFileAtPath__defaultOnce != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce, block);
    }

    if (decorateFileAtPath__classDebugEnabled == 1)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = *__error();
      v14 = __error();
      v15 = [v12 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.handoverDate", v7, v13, strerror(*v14)];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent = [v16 lastPathComponent];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v15 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:199];

      v19 = PLLogCommon();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  getDateMarker = [taskingConfig getDateMarker];
  uTF8String3 = [pathCopy UTF8String];
  uTF8String4 = [getDateMarker UTF8String];
  v23 = strlen([getDateMarker UTF8String]);
  if (setxattr(uTF8String3, "com.apple.powerlog.collectDate", uTF8String4, v23, 0, 0) && +[PLDefaults debugEnabled])
  {
    v24 = objc_opt_class();
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_106;
    v119[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v119[4] = v24;
    if (decorateFileAtPath__defaultOnce_104 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_104, v119);
    }

    if (decorateFileAtPath__classDebugEnabled_105 == 1)
    {
      v25 = MEMORY[0x1E696AEC0];
      v26 = *__error();
      v27 = __error();
      v28 = [v25 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.collectDate", getDateMarker, v26, strerror(*v27)];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent2 = [v29 lastPathComponent];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v28 fromFile:lastPathComponent2 fromFunction:v31 fromLineNumber:203];

      v32 = PLLogCommon();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  value = [taskingConfig internal];
  if (setxattr([pathCopy UTF8String], "com.apple.powerlog.internal", &value, 1uLL, 0, 0) && +[PLDefaults debugEnabled](PLDefaults, "debugEnabled"))
  {
    v33 = objc_opt_class();
    v117[0] = MEMORY[0x1E69E9820];
    v117[1] = 3221225472;
    v117[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_110;
    v117[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v117[4] = v33;
    if (decorateFileAtPath__defaultOnce_108 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_108, v117);
    }

    if (decorateFileAtPath__classDebugEnabled_109 == 1)
    {
      v34 = MEMORY[0x1E696AEC0];
      v35 = value;
      v36 = *__error();
      v37 = __error();
      v38 = [v34 stringWithFormat:@"Add decoration to %@ %s:%d failed %d(%s)\n", pathCopy, "com.apple.powerlog.internal", v35, v36, strerror(*v37)];
      v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent3 = [v39 lastPathComponent];
      v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v38 fromFile:lastPathComponent3 fromFunction:v41 fromLineNumber:207];

      v42 = PLLogCommon();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  seed = [taskingConfig seed];
  if (setxattr([pathCopy UTF8String], "com.apple.powerlog.beta", &seed, 1uLL, 0, 0) && +[PLDefaults debugEnabled](PLDefaults, "debugEnabled"))
  {
    v43 = objc_opt_class();
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_117;
    v115[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v115[4] = v43;
    if (decorateFileAtPath__defaultOnce_115 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_115, v115);
    }

    if (decorateFileAtPath__classDebugEnabled_116 == 1)
    {
      v44 = MEMORY[0x1E696AEC0];
      v45 = seed;
      v46 = *__error();
      v47 = __error();
      v48 = [v44 stringWithFormat:@"Add decoration to %@ %s:%d failed %d(%s)\n", pathCopy, "com.apple.powerlog.beta", v45, v46, strerror(*v47)];
      v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent4 = [v49 lastPathComponent];
      v51 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v48 fromFile:lastPathComponent4 fromFunction:v51 fromLineNumber:211];

      v52 = PLLogCommon();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  uTF8String5 = [pathCopy UTF8String];
  deviceModel = [taskingConfig deviceModel];
  uTF8String6 = [deviceModel UTF8String];
  deviceModel2 = [taskingConfig deviceModel];
  v57 = strlen([deviceModel2 UTF8String]);
  LODWORD(uTF8String5) = setxattr(uTF8String5, "com.apple.powerlog.deviceModel", uTF8String6, v57, 0, 0);

  if (uTF8String5 && +[PLDefaults debugEnabled])
  {
    v58 = objc_opt_class();
    v114[0] = MEMORY[0x1E69E9820];
    v114[1] = 3221225472;
    v114[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_121;
    v114[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v114[4] = v58;
    if (decorateFileAtPath__defaultOnce_119 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_119, v114);
    }

    if (decorateFileAtPath__classDebugEnabled_120 == 1)
    {
      v59 = MEMORY[0x1E696AEC0];
      deviceModel3 = [taskingConfig deviceModel];
      v61 = *__error();
      v62 = __error();
      v63 = [v59 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.deviceModel", deviceModel3, v61, strerror(*v62)];

      v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent5 = [v64 lastPathComponent];
      v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v63 fromFile:lastPathComponent5 fromFunction:v66 fromLineNumber:214];

      v67 = PLLogCommon();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  builds = [taskingConfig builds];
  lastObject = [builds lastObject];

  if (lastObject)
  {
    uTF8String7 = [pathCopy UTF8String];
    uTF8String8 = [lastObject UTF8String];
    v72 = strlen([lastObject UTF8String]);
    if (setxattr(uTF8String7, "com.apple.powerlog.build", uTF8String8, v72, 0, 0))
    {
      if (+[PLDefaults debugEnabled])
      {
        v73 = objc_opt_class();
        v113[0] = MEMORY[0x1E69E9820];
        v113[1] = 3221225472;
        v113[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_125;
        v113[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v113[4] = v73;
        if (decorateFileAtPath__defaultOnce_123 != -1)
        {
          dispatch_once(&decorateFileAtPath__defaultOnce_123, v113);
        }

        if (decorateFileAtPath__classDebugEnabled_124 == 1)
        {
          v74 = MEMORY[0x1E696AEC0];
          v75 = *__error();
          v76 = __error();
          v77 = [v74 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.build", lastObject, v75, strerror(*v76)];
          v78 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
          lastPathComponent6 = [v78 lastPathComponent];
          v80 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
          [PLCoreStorage logMessage:v77 fromFile:lastPathComponent6 fromFunction:v80 fromLineNumber:219];

          v81 = PLLogCommon();
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }
    }
  }

  uTF8String9 = [pathCopy UTF8String];
  tagUUID = [taskingConfig tagUUID];
  uTF8String10 = [tagUUID UTF8String];
  tagUUID2 = [taskingConfig tagUUID];
  v86 = strlen([tagUUID2 UTF8String]);
  LODWORD(uTF8String9) = setxattr(uTF8String9, "com.apple.powerlog.TagUUID", uTF8String10, v86, 0, 0);

  if (uTF8String9 && +[PLDefaults debugEnabled])
  {
    v87 = objc_opt_class();
    v112[0] = MEMORY[0x1E69E9820];
    v112[1] = 3221225472;
    v112[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_129;
    v112[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v112[4] = v87;
    if (decorateFileAtPath__defaultOnce_127 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_127, v112);
    }

    if (decorateFileAtPath__classDebugEnabled_128 == 1)
    {
      v88 = MEMORY[0x1E696AEC0];
      tagUUID3 = [taskingConfig tagUUID];
      v90 = *__error();
      v91 = __error();
      v92 = [v88 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.TagUUID", tagUUID3, v90, strerror(*v91)];

      v93 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent7 = [v93 lastPathComponent];
      v95 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v92 fromFile:lastPathComponent7 fromFunction:v95 fromLineNumber:223];

      v96 = PLLogCommon();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  getSubmitReasonTypeToReasonLog = [taskingConfig getSubmitReasonTypeToReasonLog];
  uTF8String11 = [pathCopy UTF8String];
  uTF8String12 = [getSubmitReasonTypeToReasonLog UTF8String];
  v100 = strlen([getSubmitReasonTypeToReasonLog UTF8String]);
  if (setxattr(uTF8String11, "com.apple.powerlog.reason", uTF8String12, v100, 0, 0) && +[PLDefaults debugEnabled])
  {
    v101 = objc_opt_class();
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = __39__PLSubmissionFile_decorateFileAtPath___block_invoke_133;
    v111[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v111[4] = v101;
    if (decorateFileAtPath__defaultOnce_131 != -1)
    {
      dispatch_once(&decorateFileAtPath__defaultOnce_131, v111);
    }

    if (decorateFileAtPath__classDebugEnabled_132 == 1)
    {
      v102 = MEMORY[0x1E696AEC0];
      v103 = *__error();
      v104 = __error();
      v105 = [v102 stringWithFormat:@"Add decoration to %@ %s:%@ failed %d(%s)\n", pathCopy, "com.apple.powerlog.reason", getSubmitReasonTypeToReasonLog, v103, strerror(*v104)];
      v106 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent8 = [v106 lastPathComponent];
      v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile decorateFileAtPath:]"];
      [PLCoreStorage logMessage:v105 fromFile:lastPathComponent8 fromFunction:v108 fromLineNumber:227];

      v109 = PLLogCommon();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_106(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_105 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_110(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_109 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_117(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_116 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_121(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_120 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_125(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_124 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_129(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_128 = result;
  return result;
}

BOOL __39__PLSubmissionFile_decorateFileAtPath___block_invoke_133(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  decorateFileAtPath__classDebugEnabled_132 = result;
  return result;
}

- (BOOL)createTagFileWithPath:(id)path withInfo:(id)info
{
  pathCopy = path;
  infoCopy = info;
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  tagUUID = [taskingConfig tagUUID];

  if (tagUUID)
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:infoCopy];
    tagUUID2 = [taskingConfig tagUUID];
    [v10 setObject:tagUUID2 forKeyedSubscript:@"TagUUID"];

    getDateMarker = [taskingConfig getDateMarker];
    [v10 setObject:getDateMarker forKeyedSubscript:@"Date"];

    builds = [taskingConfig builds];
    lastObject = [builds lastObject];
    [v10 setObject:lastObject forKeyedSubscript:@"Build"];

    deviceModel = [taskingConfig deviceModel];
    [v10 setObject:deviceModel forKeyedSubscript:@"Model"];

    if ([taskingConfig internal])
    {
      v16 = @"true";
    }

    else
    {
      v16 = @"false";
    }

    [v10 setObject:v16 forKeyedSubscript:@"Internal"];
    if ([taskingConfig seed])
    {
      v17 = @"true";
    }

    else
    {
      v17 = @"false";
    }

    [v10 setObject:v17 forKeyedSubscript:@"Beta"];
    if ([MEMORY[0x1E696ACB0] isValidJSONObject:v10])
    {
      v18 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:0 error:0];
      v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v18 encoding:4];
      v20 = [v19 writeToFile:pathCopy atomically:0 encoding:4 error:0];
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)submit
{
  if (+[PLDefaults debugEnabled])
  {
    v2 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __26__PLSubmissionFile_submit__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v2;
    if (submit_defaultOnce != -1)
    {
      dispatch_once(&submit_defaultOnce, block);
    }

    if (submit_classDebugEnabled == 1)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PLSubmissionFile: submit\n"];
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
      lastPathComponent = [v4 lastPathComponent];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile submit]"];
      [PLCoreStorage logMessage:v3 fromFile:lastPathComponent fromFunction:v6 fromLineNumber:267];

      v7 = PLLogCommon();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }
}

BOOL __26__PLSubmissionFile_submit__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  submit_classDebugEnabled = result;
  return result;
}

- (void)submitLogToiCloud:(id)cloud WithCompress:(BOOL)compress
{
  compressCopy = compress;
  v35 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  if (cloudCopy)
  {
    taskingConfig = [(PLSubmissionFile *)self taskingConfig];
    tagUUID = [taskingConfig tagUUID];

    if (tagUUID)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v10 = [defaultManager fileExistsAtPath:cloudCopy];

      if (v10)
      {
        [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:@"/tmp/powerlog/cloud/"];
        v11 = MEMORY[0x1E696AEC0];
        taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
        tagUUID2 = [taskingConfig2 tagUUID];
        v14 = [v11 stringWithFormat:@"%@Powerlog_%@/", @"/tmp/powerlog/cloud/", tagUUID2];

        if (v14)
        {
          [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:v14];
        }

        v15 = MEMORY[0x1E696AEC0];
        lastPathComponent = [cloudCopy lastPathComponent];
        v17 = [v15 stringWithFormat:@"%@%@", v14, lastPathComponent];

        if (compressCopy)
        {
          v18 = [PLUtilities compressWithSource:cloudCopy withDestination:v17 withLevel:4];
          v19 = PLLogSubmission();
          v20 = v19;
          if (v18)
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile submitLogToiCloud:WithCompress:];
            }

            [(PLSubmissionFile *)self decorateFileAtPath:v17];
          }

          else
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [PLSubmissionFile submitLogToiCloud:WithCompress:];
            }
          }
        }

        else
        {
          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          v28 = 0;
          v22 = [defaultManager2 copyItemAtPath:cloudCopy toPath:v17 error:&v28];
          v23 = v28;

          v24 = PLLogSubmission();
          v25 = v24;
          if (v22)
          {
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile submitLogToiCloud:WithCompress:];
            }
          }

          else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            localizedDescription = [v23 localizedDescription];
            *buf = 138412802;
            v30 = cloudCopy;
            v31 = 2112;
            v32 = v17;
            v33 = 2112;
            v34 = localizedDescription;
            _os_log_error_impl(&dword_1D8611000, v25, OS_LOG_TYPE_ERROR, "Failed to copy '%@' to '%@' for submission due to error '%@'", buf, 0x20u);
          }
        }
      }

      else
      {
        v14 = PLLogSubmission();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFile submitLogToiCloud:WithCompress:];
        }
      }
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)cleanupTmpDirectory
{
  v26 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  directory = [(PLSubmissionFile *)self directory];
  v5 = [defaultManager fileExistsAtPath:directory];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    directory2 = [(PLSubmissionFile *)self directory];
    v23 = 0;
    [defaultManager2 removeItemAtPath:directory2 error:&v23];
    v8 = v23;

    v9 = MEMORY[0x1E696AEC0];
    directory3 = [(PLSubmissionFile *)self directory];
    fileName = [(PLSubmissionFile *)self fileName];
    v12 = [v9 stringWithFormat:@"Cleanup remove directory %@, file %@, %@", directory3, fileName, v8];

    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
    lastPathComponent = [v13 lastPathComponent];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile cleanupTmpDirectory]"];
    [PLCoreStorage logMessage:v12 fromFile:lastPathComponent fromFunction:v15 fromLineNumber:322];

    v16 = PLLogCommon();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v12;
      _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  else
  {
    v17 = MEMORY[0x1E696AEC0];
    directory4 = [(PLSubmissionFile *)self directory];
    v8 = [v17 stringWithFormat:@"Cleanup directory %@ does not exist, skipping removal", directory4];

    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFile.m"];
    lastPathComponent2 = [v19 lastPathComponent];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFile cleanupTmpDirectory]"];
    [PLCoreStorage logMessage:v8 fromFile:lastPathComponent2 fromFunction:v21 fromLineNumber:315];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v8;
      _os_log_impl(&dword_1D8611000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)submitLogToiCloud:WithCompress:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, v0, OS_LOG_TYPE_ERROR, "PLSubmissionFile: file %@ does not exist, cannot submit", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)submitLogToiCloud:WithCompress:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_1D8611000, v0, v1, "Copied '%@' to '%@' for submission");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)submitLogToiCloud:WithCompress:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1D8611000, v0, OS_LOG_TYPE_ERROR, "Failed to compress '%@' to '%@' for submission", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)submitLogToiCloud:WithCompress:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_1D8611000, v0, v1, "Compressed '%@' to '%@' for submission");
  v2 = *MEMORY[0x1E69E9840];
}

@end