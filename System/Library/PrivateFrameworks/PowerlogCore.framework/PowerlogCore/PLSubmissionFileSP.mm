@interface PLSubmissionFileSP
- (BOOL)copyAndPrepareLog;
- (PLSubmissionFileSP)initWithConfig:(id)config;
- (void)copyAndPrepareLog;
@end

@implementation PLSubmissionFileSP

- (PLSubmissionFileSP)initWithConfig:(id)config
{
  v7.receiver = self;
  v7.super_class = PLSubmissionFileSP;
  v3 = [(PLSubmissionFile *)&v7 initWithConfig:config];
  v4 = v3;
  if (v3 && ![(PLSubmissionFileSP *)v3 copyAndPrepareLog])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (BOOL)copyAndPrepareLog
{
  v107[3] = *MEMORY[0x1E69E9840];
  taskingConfig = [(PLSubmissionFile *)self taskingConfig];
  if (![taskingConfig signpostDisable])
  {
    if (+[PLPlatform internalBuild]&& [PLDefaults BOOLForKey:@"SignpostReaderDisable" ifNotSet:0])
    {
      v9 = PLLogSubmission();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "signpost collection disabled", buf, 2u);
      }

      goto LABEL_13;
    }

    signpostAllowlist = [taskingConfig signpostAllowlist];
    if (signpostAllowlist)
    {
      v13 = signpostAllowlist;
    }

    else
    {
      v13 = &unk_1F540C7C0;
    }

    if (+[PLPlatform internalBuild])
    {
      v14 = [v13 mutableCopy];
      [v14 setObject:MEMORY[0x1E695E0F0] forKey:@"com.apple.metrickit.log"];
      [v14 setObject:&unk_1F540B6C8 forKeyedSubscript:@"com.apple.signpost_emitter"];

      v13 = v14;
    }

    if ((+[PLPlatform internalBuild](PLPlatform, "internalBuild") || +[PLPlatform seedBuild](PLPlatform, "seedBuild")) && ([taskingConfig deviceModel], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(&unk_1F540B6E0, "containsObject:", v15), v15, v16))
    {
      v17 = [v13 mutableCopy];
      [v17 setObject:&unk_1F540B6F8 forKeyedSubscript:@"com.apple.TextInput"];

      v100 = v17;
    }

    else
    {
      v100 = v13;
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tagUUID = [taskingConfig tagUUID];
    [v18 setObject:tagUUID forKeyedSubscript:@"TagUUID"];

    builds = [taskingConfig builds];
    lastObject = [builds lastObject];
    [v18 setObject:lastObject forKeyedSubscript:@"Build"];

    deviceModel = [taskingConfig deviceModel];
    [v18 setObject:deviceModel forKeyedSubscript:@"Model"];

    if ([taskingConfig internal])
    {
      v23 = @"true";
    }

    else
    {
      v23 = @"false";
    }

    [v18 setObject:v23 forKeyedSubscript:@"Internal"];
    if ([taskingConfig seed])
    {
      v24 = @"true";
    }

    else
    {
      v24 = @"false";
    }

    [v18 setObject:v24 forKeyedSubscript:@"Beta"];
    getSubmitReasonTypeToReasonLog = [taskingConfig getSubmitReasonTypeToReasonLog];
    [v18 setObject:getSubmitReasonTypeToReasonLog forKeyedSubscript:@"Reason"];

    getDateMarkerLegacy = [taskingConfig getDateMarkerLegacy];
    [v18 setObject:getDateMarkerLegacy forKeyedSubscript:@"Date"];

    v106[0] = @"CollectDate";
    getDateMarker = [taskingConfig getDateMarker];
    v107[0] = getDateMarker;
    v106[1] = @"SignpostStartDate";
    date = [MEMORY[0x1E695DF00] date];
    v29 = [PLSubmissionConfig getDateMarkerFromSystemDate:date];
    v107[1] = v29;
    v106[2] = @"DebugEnabled";
    v30 = +[PLPlatform internalBuild];
    if (v30)
    {
      v31 = [MEMORY[0x1E696AD98] numberWithBool:{+[PLDefaults debugEnabled](PLDefaults, "debugEnabled")}];
    }

    else
    {
      v31 = MEMORY[0x1E695E110];
    }

    v107[2] = v31;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:3];
    [v18 setObject:v32 forKeyedSubscript:@"ExtendedAttributes"];

    if (v30)
    {
    }

    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(taskingConfig, "submittedFilesMask")}];
    [v18 setObject:v33 forKeyedSubscript:@"SubmittedFilesMask"];

    taskingConfig2 = [(PLSubmissionFile *)self taskingConfig];
    [taskingConfig2 setCkTagConfig:v18];

    v35 = [v18 mutableCopy];
    v36 = [v18 objectForKeyedSubscript:@"ExtendedAttributes"];
    serializedJSONString = [v36 serializedJSONString];
    [v35 setObject:serializedJSONString forKeyedSubscript:@"ExtendedAttributes"];

    startDate = [taskingConfig startDate];
    convertFromMonotonicToSystem = [startDate convertFromMonotonicToSystem];

    endDate = [taskingConfig endDate];
    convertFromMonotonicToSystem2 = [endDate convertFromMonotonicToSystem];

    v99 = v35;
    if (+[PLPlatform internalBuild](PLPlatform, "internalBuild") && _os_feature_enabled_impl() && (-[PLSubmissionFile taskingConfig](self, "taskingConfig"), v42 = objc_claimAutoreleasedReturnValue(), v43 = [v42 submitSP], v42, v43))
    {
      v9 = v100;
      if (convertFromMonotonicToSystem && convertFromMonotonicToSystem2)
      {
        if (v35)
        {
          v44 = [convertFromMonotonicToSystem laterDate:convertFromMonotonicToSystem2];

          if (v44 != convertFromMonotonicToSystem)
          {
            v96 = convertFromMonotonicToSystem2;
            p_super = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:convertFromMonotonicToSystem endDate:convertFromMonotonicToSystem2];
            v95 = objc_alloc_init(PPSSignpostController);
            v98 = [(PPSSignpostController *)v95 generateForTimeRange:p_super];
            v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v98, "count")}];
            [v35 setObject:v46 forKeyedSubscript:@"FileCount"];

            v47 = PLLogSubmission();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              [(PLSubmissionFileSP *)v98 copyAndPrepareLog];
            }

            v48 = MEMORY[0x1E696AEC0];
            v49 = [v18 objectForKeyedSubscript:@"Date"];
            v97 = convertFromMonotonicToSystem;
            if (v49)
            {
              taskingConfig3 = [v18 objectForKeyedSubscript:@"Date"];
              v51 = [v48 stringWithFormat:@"Signpost_%@", taskingConfig3];
            }

            else
            {
              taskingConfig3 = [(PLSubmissionFile *)self taskingConfig];
              configUUID = [taskingConfig3 configUUID];
              v51 = [v48 stringWithFormat:@"Signpost_%@", configUUID];
            }

            v65 = MEMORY[0x1E695DFF8];
            filePath = [(PLSubmissionFile *)self filePath];
            v67 = [v65 fileURLWithPath:filePath];
            v94 = v51;
            v68 = [v67 URLByAppendingPathComponent:v51];

            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            [defaultManager createDirectoryAtURL:v68 withIntermediateDirectories:1 attributes:0 error:0];

            v102[0] = MEMORY[0x1E69E9820];
            v102[1] = 3221225472;
            v102[2] = __39__PLSubmissionFileSP_copyAndPrepareLog__block_invoke_157;
            v102[3] = &unk_1E8519340;
            v70 = v68;
            v103 = v70;
            [v98 enumerateObjectsUsingBlock:v102];
            v92 = [v70 URLByAppendingPathComponent:@"tag.json"];
            path = [v92 path];
            LOBYTE(filePath) = [(PLSubmissionFile *)self createTagFileWithPath:path withInfo:v99];

            v93 = v70;
            if (filePath)
            {
              v72 = [MEMORY[0x1E6999F68] archiveDirectoryAt:v70 deleteOriginal:1];
              v73 = PLLogSubmission();
              v74 = v73;
              v75 = v72;
              if (v72)
              {
                if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
                {
                  [(PLSubmissionFileSP *)v72 copyAndPrepareLog];
                }

                v76 = MEMORY[0x1E696AEC0];
                taskingConfig4 = [(PLSubmissionFile *)self taskingConfig];
                tagUUID2 = [taskingConfig4 tagUUID];
                v79 = [v76 stringWithFormat:@"%@Powerlog_%@/", @"/tmp/powerlog/cloud/", tagUUID2];

                v80 = MEMORY[0x1E696AEC0];
                path2 = [v75 path];
                lastPathComponent = [path2 lastPathComponent];
                v91 = v79;
                v83 = [v80 stringWithFormat:@"%@%@/", v79, lastPathComponent];

                defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
                path3 = [v75 path];
                v101 = 0;
                v86 = defaultManager2;
                v90 = v83;
                bOOLValue = [defaultManager2 moveItemAtPath:path3 toPath:v83 error:&v101];
                v74 = v101;

                v9 = v100;
                convertFromMonotonicToSystem = v97;
                if ((bOOLValue & 1) == 0)
                {
                  v87 = PLLogSubmission();
                  if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                  {
                    [(PLSubmissionFileSP *)v75 copyAndPrepareLog];
                  }
                }

                v88 = v95;
              }

              else
              {
                v9 = v100;
                v88 = v95;
                if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
                {
                  [(PLSubmissionFileSP *)v74 copyAndPrepareLog];
                }

                bOOLValue = 0;
                convertFromMonotonicToSystem = v97;
              }

              v89 = v92;

              convertFromMonotonicToSystem2 = v96;
            }

            else
            {
              v75 = PLLogSubmission();
              convertFromMonotonicToSystem = v97;
              if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
              {
                v89 = v92;
                [(PLSubmissionFileSP *)v92 copyAndPrepareLog];
                bOOLValue = 0;
                v9 = v100;
                v88 = v95;
                convertFromMonotonicToSystem2 = v96;
              }

              else
              {
                bOOLValue = 0;
                v9 = v100;
                v88 = v95;
                convertFromMonotonicToSystem2 = v96;
                v89 = v92;
              }
            }

            goto LABEL_55;
          }

          p_super = PLLogSubmission();
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissionFileSP copyAndPrepareLog];
          }
        }

        else
        {
          p_super = PLLogSubmission();
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
          {
            [(PLSubmissionFileSP *)p_super copyAndPrepareLog];
          }
        }
      }

      else
      {
        p_super = PLLogSubmission();
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissionFileSP copyAndPrepareLog];
        }
      }

      bOOLValue = 0;
    }

    else
    {
      v52 = objc_alloc_init(SignpostReaderHelper);
      taskingConfig5 = [(PLSubmissionFile *)self taskingConfig];
      submitSP = [taskingConfig5 submitSP];
      v55 = v52;
      v56 = v52;
      v9 = v100;
      v57 = convertFromMonotonicToSystem2;
      v58 = [(SignpostReaderHelper *)v56 generateSignpostSubmissionWithTagConfig:v35 withAllowlist:v100 withStartDate:convertFromMonotonicToSystem withEndDate:convertFromMonotonicToSystem2 includeSPFile:submitSP];

      if (v58)
      {
        objc_opt_class();
        v59 = 3;
        if (objc_opt_isKindOfClass())
        {
          [v58 objectForKeyedSubscript:@"success"];
          v61 = v60 = convertFromMonotonicToSystem;
          bOOLValue = [v61 BOOLValue];

          convertFromMonotonicToSystem = v60;
          v9 = v100;
          if (bOOLValue)
          {
            v59 = 0;
          }

          else
          {
            v59 = 3;
          }
        }

        else
        {
          bOOLValue = 0;
        }
      }

      else
      {
        bOOLValue = 0;
        v59 = 3;
      }

      [(PLSubmissionFile *)self logSubmissionResultToCAWithErrorType:v59 withFileType:@"signpost" withOverrideKeys:0];

      convertFromMonotonicToSystem2 = v57;
      p_super = &v55->super;
    }

LABEL_55:

    goto LABEL_56;
  }

  if (+[PLDefaults debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__PLSubmissionFileSP_copyAndPrepareLog__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (copyAndPrepareLog_defaultOnce != -1)
    {
      dispatch_once(&copyAndPrepareLog_defaultOnce, block);
    }

    if (copyAndPrepareLog_classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"copyAndPrepareLog: Signpost submission disabled"];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissionsClasses/PLSubmissionFileSP.m"];
      lastPathComponent2 = [v6 lastPathComponent];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissionFileSP copyAndPrepareLog]"];
      [PLCoreStorage logMessage:v5 fromFile:lastPathComponent2 fromFunction:v8 fromLineNumber:56];

      v9 = v5;
      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PLSubmissionFileSP *)v5 copyAndPrepareLog];
      }

LABEL_13:
      bOOLValue = 0;
LABEL_56:

      goto LABEL_57;
    }
  }

  bOOLValue = 0;
LABEL_57:

  v62 = *MEMORY[0x1E69E9840];
  return bOOLValue & 1;
}

BOOL __39__PLSubmissionFileSP_copyAndPrepareLog__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  copyAndPrepareLog_classDebugEnabled = result;
  return result;
}

void __39__PLSubmissionFileSP_copyAndPrepareLog__block_invoke_157(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a2;
  v8 = [v3 defaultManager];
  v5 = *(a1 + 32);
  v6 = [v4 lastPathComponent];
  v7 = [v5 URLByAppendingPathComponent:v6];
  [v8 copyItemAtURL:v4 toURL:v7 error:0];
}

- (void)copyAndPrepareLog
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1D8611000, a2, OS_LOG_TYPE_DEBUG, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end