@interface BioLog
+ (void)cancelDiagnosticLogsRemoval;
+ (void)initialize;
+ (void)removeBioLogAsync;
+ (void)removeDiagnosticLogs;
+ (void)removeDiagnosticLogsImmediately;
+ (void)scheduleDiagnosticLogsRemoval;
- (BOOL)createFileAtPath:(id)a3 contents:(id)a4 attributes:(id)a5 purgeable:(BOOL)a6;
- (id)eventPathWithName:(id)a3 date:(id)a4;
- (id)initForInternalLogging:(BOOL)a3;
- (id)logLogContextWithDate:(id)a3;
- (id)logNameFromDate:(id)a3;
- (id)sequencePathForId:(id *)a3;
- (id)sequencePathForId:(id *)a3 andSubdirectory:(id)a4;
- (void)applyRetentionPolicy;
- (void)extractFrameDebug:(id *)a3 data:(id)a4;
- (void)logAllVsAllWithDate:(id)a3;
- (void)logCameraFrame:(id *)a3 sensorRawData:(id)a4 metaData:(id)a5;
- (void)logCameraFrame:(id)a3 withBuffers:(id)a4;
- (void)logData:(id)a3 withContext:(id *)a4;
- (void)logFrameDebug:(id)a3 withBuffer:(id)a4;
- (void)logInternalCameraFrame:(id *)a3 sensorRawData:(id)a4 metaData:(id)a5;
- (void)logRemoveIdentity:(id)a3 withTemplateListData:(id)a4 templateSize:(unint64_t)a5 client:(id)a6 isPO:(BOOL)a7;
- (void)logSecureFaceDetectInfo;
- (void)logSecureFaceDetectStart:(id *)a3;
- (void)logSecureFaceDetectStop;
- (void)logSecureFrameMeta:(id)a3 timestamp:(id)a4;
- (void)logSequenceDebug:(id)a3 withContext:(id *)a4;
- (void)logSequenceInfo:(id)a3 withContext:(id *)a4 orientation:(id *)a5 identities:(id)a6;
- (void)logTemplate:(id)a3 withContext:(id *)a4;
- (void)scheduleRetentionPolicy;
@end

@implementation BioLog

+ (void)initialize
{
  v2 = os_log_create("com.apple.BiometricKit", "BioLog");
  v3 = __osLog_BioLog;
  __osLog_BioLog = v2;

  v4 = __osLog_BioLog;
  if (!__osLog_BioLog)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      +[BioLog initialize];
    }

    v4 = __osLog_BioLog;
  }

  objc_storeStrong(&__osLogTrace_BioLog, v4);
  v5 = [MEMORY[0x29EDBFD50] sharedInstance];
  [v5 registerDefaults:&unk_2A1E039D0];
}

- (id)initForInternalLogging:(BOOL)a3
{
  v3 = a3;
  v78[2] = *MEMORY[0x29EDCA608];
  v4 = [(BioLog *)self init];
  v5 = v4;
  v6 = MEMORY[0x29EDCA988];
  if (!v4)
  {
    goto LABEL_30;
  }

  v4->_internal = v3;
  v7 = objc_alloc_init(MEMORY[0x29EDB9F78]);
  fileNameFormatter = v5->_fileNameFormatter;
  v5->_fileNameFormatter = v7;

  [(NSDateFormatter *)v5->_fileNameFormatter setDateFormat:@"yyyy_MM_dd_HH_mm_ss_SSS"];
  v9 = objc_alloc_init(MEMORY[0x29EDB9F78]);
  milisecondsFormatter = v5->_milisecondsFormatter;
  v5->_milisecondsFormatter = v9;

  [(NSDateFormatter *)v5->_milisecondsFormatter setDateFormat:@"SSS"];
  v12 = *MEMORY[0x29EDB9E80];
  v77[0] = *MEMORY[0x29EDB9E58];
  v11 = v77[0];
  v77[1] = v12;
  v13 = *MEMORY[0x29EDB9E88];
  v78[0] = @"mobile";
  v78[1] = v13;
  v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
  fileAttributes = v5->_fileAttributes;
  v5->_fileAttributes = v14;

  v75[0] = v11;
  v75[1] = v12;
  v16 = *MEMORY[0x29EDB9E70];
  v76[0] = @"mobile";
  v76[1] = v16;
  v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
  fileAttributesProtected = v5->_fileAttributesProtected;
  v5->_fileAttributesProtected = v17;

  if (v5->_internal)
  {
    v73[0] = v11;
    v73[1] = v12;
    v19 = *MEMORY[0x29EDB9E78];
    v74[0] = @"mobile";
    v74[1] = v19;
    v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  }

  else
  {
    v20 = v5->_fileAttributesProtected;
  }

  fileAttributesAutoUpload = v5->_fileAttributesAutoUpload;
  v5->_fileAttributesAutoUpload = v20;

  v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v23 = dispatch_queue_create("com.apple.BioLog.writing", v22);
  dispatchQueueWriting = v5->_dispatchQueueWriting;
  v5->_dispatchQueueWriting = v23;

  if (v5->_dispatchQueueWriting)
  {
    v25 = dispatch_queue_create("com.apple.BioLog.frameDebugExtra", 0);
    frameDebugExtraQueue = v5->_frameDebugExtraQueue;
    v5->_frameDebugExtraQueue = v25;

    if (v5->_frameDebugExtraQueue)
    {
      v27 = dispatch_semaphore_create(0);
      frameDebugExtraSemaphore = v5->_frameDebugExtraSemaphore;
      v5->_frameDebugExtraSemaphore = v27;

      if (v5->_frameDebugExtraSemaphore)
      {
        v29 = RETENTION_QUEUE_LABEL;
        v30 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
        v31 = dispatch_queue_create(v29, v30);
        retentionQueue = v5->_retentionQueue;
        v5->_retentionQueue = v31;

        if (v5->_retentionQueue)
        {
          v5->_retentionNewItemsSize = 0;
          v33 = [MEMORY[0x29EDB8DB0] date];
          v34 = [(BioLog *)v5 logNameFromDate:v33];
          rootPath = v5->_rootPath;
          if (v3)
          {
            v5->_rootPath = @"/Library/Logs/BioLog";
          }

          else
          {
            v5->_rootPath = @"/var/mobile/Library/BioLogC";

            [objc_opt_class() cancelDiagnosticLogsRemoval];
            if (!isInternalBuild() || ([MEMORY[0x29EDBFD50] sharedInstance], v36 = objc_claimAutoreleasedReturnValue(), v37 = objc_msgSend(v36, "BOOLForKey:", @"bioLogDataVaultDisabled"), v36, (v37 & 1) == 0))
            {
              [(NSString *)v5->_rootPath UTF8String];
              if (rootless_check_datavault_flag())
              {
                [(NSString *)v5->_rootPath UTF8String];
                v38 = rootless_mkdir_datavault();
                if (v38)
                {
                  [(BioLog *)v38 initForInternalLogging:v5];
                  goto LABEL_46;
                }

                chown([(NSString *)v5->_rootPath UTF8String], 0x1F5u, 0x1F5u);
              }
            }
          }

          v39 = [(NSString *)v5->_rootPath stringByAppendingPathComponent:v34];
          logPath = v5->_logPath;
          v5->_logPath = v39;

          v41 = [MEMORY[0x29EDB9FB8] defaultManager];
          v42 = [v41 fileExistsAtPath:v5->_logPath];

          if (v42)
          {
            goto LABEL_19;
          }

          v43 = [MEMORY[0x29EDB9FB8] defaultManager];
          v44 = [v43 createDirectoryAtPath:v5->_logPath withIntermediateDirectories:1 attributes:v5->_fileAttributes error:0];

          if (v44)
          {
            [BLRetention setPurgeableAtPath:v5->_logPath directory:1];
LABEL_19:
            v45 = [(NSString *)v5->_rootPath stringByAppendingPathComponent:@"Current"];
            v46 = [MEMORY[0x29EDB9FB8] defaultManager];
            [v46 removeItemAtPath:v45 error:0];

            v47 = [MEMORY[0x29EDB9FB8] defaultManager];
            v48 = [v47 createSymbolicLinkAtPath:v45 withDestinationPath:v34 error:0];

            if ((v48 & 1) == 0)
            {
              v49 = (__osLog_BioLog ? __osLog_BioLog : v6);
              if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                LOWORD(v69[0]) = 0;
                _os_log_impl(&dword_296CA4000, v49, OS_LOG_TYPE_ERROR, "Log symlink creation failed! Don't trust 'BioLog/Current'.\n", v69, 2u);
              }
            }

            if (v5->_internal)
            {
              v50 = [(BioLog *)v5 logLogContextWithDate:v33];
              logContextBasePath = v5->_logContextBasePath;
              v5->_logContextBasePath = v50;

              v52 = objc_opt_new();
              scoreDataArray = v5->_scoreDataArray;
              v5->_scoreDataArray = v52;

              *v5->_computedSequenceNumberPair = 0;
              v5->_lastComputedSequenceNumber = 0;
              v54 = [MEMORY[0x29EDBFD50] sharedInstance];
              v55 = [v54 unsignedIntegerForKey:@"bioLogDiagnosticPipelineSubmitPeriod"];

              if (v55)
              {
                v56 = objc_alloc_init(BioLogDiagnosticPipeline);
                diagnosticPipeline = v5->_diagnosticPipeline;
                v5->_diagnosticPipeline = v56;

                [(BioLogDiagnosticPipeline *)v5->_diagnosticPipeline setSubmitPeriod:v55];
                v58 = [MEMORY[0x29EDBFD50] sharedInstance];
                v59 = [v58 stringForKey:@"bioLogDiagnosticPipelineEnvironment"];
                [(BioLogDiagnosticPipeline *)v5->_diagnosticPipeline setEnvironment:v59];

                [(BioLogDiagnosticPipeline *)v5->_diagnosticPipeline setScheduleDelay:7];
              }
            }

            v60 = [MEMORY[0x29EDC6C98] defaultManager];
            v61 = MEMORY[0x29EDC6C90];
            v62 = [MEMORY[0x29EDB8E70] fileURLWithPath:v5->_rootPath];
            v63 = [v61 pathInfoWithURL:v62];
            v72 = v63;
            v64 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v72 count:1];
            [v60 registerPaths:v64 forBundleID:@"com.apple.biometrickitd" completionHandler:&__block_literal_global_0];

            goto LABEL_29;
          }

          [BioLog initForInternalLogging:v5];
LABEL_46:
          v5 = 0;
LABEL_29:

          goto LABEL_30;
        }

        [BioLog initForInternalLogging:v5];
      }

      else
      {
        [BioLog initForInternalLogging:v5];
      }
    }

    else
    {
      [BioLog initForInternalLogging:v5];
    }
  }

  else
  {
    [BioLog initForInternalLogging:v5];
  }

  v5 = 0;
LABEL_30:
  if (__osLogTrace_BioLog)
  {
    v65 = __osLogTrace_BioLog;
  }

  else
  {
    v65 = v6;
  }

  if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
  {
    if (v5)
    {
      v66 = v5->_logPath;
    }

    else
    {
      v66 = 0;
    }

    v69[0] = 67109378;
    v69[1] = v5 != 0;
    v70 = 2112;
    v71 = v66;
    _os_log_impl(&dword_296CA4000, v65, OS_LOG_TYPE_DEFAULT, "initToPath -> (%d) (_ %@)\n", v69, 0x12u);
  }

  v67 = *MEMORY[0x29EDCA608];
  return v5;
}

+ (void)removeDiagnosticLogsImmediately
{
  v24 = *MEMORY[0x29EDCA608];
  [MEMORY[0x29EDB9FB8] defaultManager];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v13 = v18 = 0u;
  v2 = [v13 contentsOfDirectoryAtPath:@"/var/mobile/Library/BioLogC" error:0];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [@"/var/mobile/Library/BioLogC" stringByAppendingPathComponent:*(*(&v15 + 1) + 8 * i)];
        v8 = [MEMORY[0x29EDB9FB8] defaultManager];
        v14 = 0;
        v9 = [v8 removeItemAtPath:v7 error:&v14];
        v10 = v14;

        if ((v9 & 1) == 0)
        {
          if (__osLog_BioLog)
          {
            v11 = __osLog_BioLog;
          }

          else
          {
            v11 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v20 = v7;
            v21 = 2112;
            v22 = v10;
            _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "Could not remove BioLog directory %@: %@\n", buf, 0x16u);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x29EDCA608];
}

+ (void)removeDiagnosticLogs
{
  [__removalRequestDate timeIntervalSinceNow];
  if (v3 < -2592000.0)
  {

    [a1 removeDiagnosticLogsImmediately];
  }
}

+ (void)removeBioLogAsync
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = [@"/Library/Logs/BioLog" stringByAppendingString:@"_DeleteMe"];
  v3 = [MEMORY[0x29EDB9FB8] defaultManager];
  v11 = 0;
  v4 = [v3 moveItemAtPath:@"/Library/Logs/BioLog" toPath:v2 error:&v11];
  v5 = v11;

  if (v4)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __27__BioLog_removeBioLogAsync__block_invoke;
    v9[3] = &unk_29EE54570;
    v10 = v2;
    dispatch_async(v6, v9);
  }

  else
  {
    if (__osLog_BioLog)
    {
      v7 = __osLog_BioLog;
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v13 = @"/Library/Logs/BioLog";
      v14 = 2112;
      v15 = v2;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_ERROR, "Could not rename BioLog directory %@ to %@: %@\n", buf, 0x20u);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void __27__BioLog_removeBioLogAsync__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDB9FB8] defaultManager];
  v3 = *(a1 + 32);
  v8 = 0;
  v4 = [v2 removeItemAtPath:v3 error:&v8];
  v5 = v8;

  if ((v4 & 1) == 0)
  {
    if (__osLog_BioLog)
    {
      v6 = __osLog_BioLog;
    }

    else
    {
      v6 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v10 = @"/Library/Logs/BioLog";
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_ERROR, "Could not remove BioLog directory %@: %@\n", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

+ (void)scheduleDiagnosticLogsRemoval
{
  if (__removalRequestDate)
  {

    [a1 removeDiagnosticLogs];
  }

  else
  {
    v3 = [MEMORY[0x29EDBFD50] sharedInstance];
    v4 = [v3 objectOfClass:objc_opt_class() forKey:@"bioLogRemovalRequestDate"];

    v5 = MEMORY[0x29EDB8DB0];
    if (v4)
    {
      [v4 doubleValue];
      v6 = [v5 dateWithTimeIntervalSince1970:?];
      v7 = __removalRequestDate;
      __removalRequestDate = v6;
    }

    else
    {
      v8 = [MEMORY[0x29EDB8DB0] date];
      v9 = __removalRequestDate;
      __removalRequestDate = v8;

      v10 = [MEMORY[0x29EDBFD50] sharedInstance];
      v11 = MEMORY[0x29EDBA070];
      [__removalRequestDate timeIntervalSince1970];
      v13 = [v11 numberWithUnsignedInteger:v12];
      [v10 setObject:v13 forKey:@"bioLogRemovalRequestDate"];

      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __39__BioLog_scheduleDiagnosticLogsRemoval__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_async(MEMORY[0x29EDCA578], block);
    }
  }
}

+ (void)cancelDiagnosticLogsRemoval
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:a1 selector:sel_scheduleDiagnosticLogsRemoval object:0];
  v2 = __removalRequestDate;
  __removalRequestDate = 0;

  v3 = [MEMORY[0x29EDBFD50] sharedInstance];
  [v3 setObject:0 forKey:@"bioLogRemovalRequestDate"];
}

- (id)logNameFromDate:(id)a3
{
  v3 = MEMORY[0x29EDB9F78];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy-MM-dd_HH_mm_ss"];
  v6 = MEMORY[0x29EDBA0F8];
  [v4 timeIntervalSince1970];
  v8 = v7;
  v9 = [v5 stringFromDate:v4];

  v10 = [v6 stringWithFormat:@"%s%ld_%@%s", "BL_", v8, v9, &unk_296D32C0B];

  return v10;
}

- (BOOL)createFileAtPath:(id)a3 contents:(id)a4 attributes:(id)a5 purgeable:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = MEMORY[0x29EDB9FB8];
  v13 = a5;
  v14 = [v12 defaultManager];
  v15 = [v14 createFileAtPath:v10 contents:v11 attributes:v13];

  if (v15)
  {
    if (v6)
    {
      [BLRetention setPurgeableAtPath:v10 directory:0];
    }

    self->_retentionNewItemsSize += [v11 length];
  }

  return v15;
}

- (id)logLogContextWithDate:(id)a3
{
  v28[4] = *MEMORY[0x29EDCA608];
  v4 = a3;
  v27[0] = @"biolog_file_type";
  v27[1] = @"version";
  v28[0] = @"log";
  v28[1] = &unk_2A1E037F8;
  v27[2] = @"epoch";
  v5 = MEMORY[0x29EDBA070];
  [v4 timeIntervalSince1970];
  v6 = [v5 numberWithDouble:?];
  v28[2] = v6;
  v27[3] = @"log_data";
  v25[0] = @"device_serial_number";
  v7 = +[BLHelper deviceSerialNumberString];
  v25[1] = @"system_build_version";
  v26[0] = v7;
  v8 = +[BLHelper buildVersionString];
  v26[1] = v8;
  v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v28[3] = v9;
  v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v28 forKeys:v27 count:4];

  if (__osLog_BioLog)
  {
    v11 = __osLog_BioLog;
  }

  else
  {
    v11 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = +[BLHelper deviceSerialNumberString];
    *buf = 138412290;
    v24 = v13;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEFAULT, "logLogContextWithDate device_serial_number %@\n", buf, 0xCu);
  }

  v14 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v10 options:3 error:0];
  if (!v14)
  {
    [BioLog logLogContextWithDate:];
  }

  v15 = MEMORY[0x29EDBA0F8];
  [v4 timeIntervalSince1970];
  v17 = [v15 stringWithFormat:@"%s%ld", "BL_", v16];
  v18 = [(NSString *)self->_logPath stringByAppendingPathComponent:v17];
  v19 = [v18 stringByAppendingString:@".json"];
  v20 = [(BioLog *)self createFileAtPath:v19 contents:v14 attributes:self->_fileAttributesProtected purgeable:1];

  if (!v20)
  {
    [BioLog logLogContextWithDate:];
  }

  v21 = *MEMORY[0x29EDCA608];

  return v18;
}

- (void)logAllVsAllWithDate:(id)a3
{
  v63[2] = *MEMORY[0x29EDCA608];
  v4 = a3;
  if (!self->_allVsAllReachedLimit && self->_logContextBasePath)
  {
    if (!self->_allVsAllScoreDict)
    {
      v5 = objc_alloc(MEMORY[0x29EDB8E00]);
      v62[0] = @"all_vs_all_ir";
      v62[1] = @"all_vs_all_depth";
      v63[0] = MEMORY[0x29EDB8E90];
      v63[1] = MEMORY[0x29EDB8E90];
      v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v63 forKeys:v62 count:2];
      v7 = [v5 initWithDictionary:v6];
      allVsAllScoreDict = self->_allVsAllScoreDict;
      self->_allVsAllScoreDict = v7;

      v9 = objc_opt_new();
      allVsAllLogFileArray = self->_allVsAllLogFileArray;
      self->_allVsAllLogFileArray = v9;
    }

    v11 = self->_computedSequenceNumberPair[0];
    if (v11 == self->_sequenceNumber)
    {
      v11 = self->_computedSequenceNumberPair[1];
    }

    if (v11 != self->_lastComputedSequenceNumber)
    {
      self->_lastComputedSequenceNumber = v11;
      v12 = objc_alloc(MEMORY[0x29EDB8DE8]);
      v13 = [(NSMutableDictionary *)self->_allVsAllScoreDict objectForKeyedSubscript:@"all_vs_all_ir"];
      v14 = [v12 initWithArray:v13];

      v15 = objc_alloc(MEMORY[0x29EDB8DE8]);
      v16 = [(NSMutableDictionary *)self->_allVsAllScoreDict objectForKeyedSubscript:@"all_vs_all_depth"];
      v17 = [v15 initWithArray:v16];

      if ([v14 count] <= 0x31 && objc_msgSend(v17, "count") <= 0x31 && -[NSMutableArray count](self->_scoreDataArray, "count") < 0x64)
      {
        v22 = [(NSMutableArray *)self->_scoreDataArray sortedArrayUsingComparator:&__block_literal_global_158];
        v52 = [MEMORY[0x29EDBA0A8] predicateWithFormat:@"isIr == TRUE"];
        v23 = [v22 filteredArrayUsingPredicate:?];
        lastComputedSequenceNumber = self->_lastComputedSequenceNumber;
        v51 = v23;
        v50 = [BioLog computeAllVsAllMatrixFromScoreDataArray:"computeAllVsAllMatrixFromScoreDataArray:sequenceNumber:" sequenceNumber:?];
        [v14 addObjectsFromArray:?];
        v25 = [v14 copy];
        [(NSMutableDictionary *)self->_allVsAllScoreDict setObject:v25 forKeyedSubscript:@"all_vs_all_ir"];

        [MEMORY[0x29EDBA0A8] predicateWithFormat:@"isIr == FALSE"];
        v49 = v53 = v22;
        v26 = [v22 filteredArrayUsingPredicate:?];
        v27 = self->_lastComputedSequenceNumber;
        v48 = v26;
        v47 = [BioLog computeAllVsAllMatrixFromScoreDataArray:"computeAllVsAllMatrixFromScoreDataArray:sequenceNumber:" sequenceNumber:?];
        [v17 addObjectsFromArray:?];
        v28 = [v17 copy];
        [(NSMutableDictionary *)self->_allVsAllScoreDict setObject:v28 forKeyedSubscript:@"all_vs_all_depth"];

        v29 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:self->_allVsAllScoreDict options:3 error:0];
        if (!v29)
        {
          [BioLog logAllVsAllWithDate:];
        }

        v54 = v14;
        v30 = MEMORY[0x29EDBA0F8];
        logContextBasePath = self->_logContextBasePath;
        [v4 timeIntervalSince1970];
        v33 = [v30 stringWithFormat:@"%@_%ld_all_vs_all%@", logContextBasePath, (v32 * 1000.0), @".json"];
        fileAttributesAutoUpload = self->_fileAttributesAutoUpload;
        v45 = v33;
        v46 = v29;
        if (![BioLog createFileAtPath:"createFileAtPath:contents:attributes:purgeable:" contents:? attributes:? purgeable:?])
        {
          [BioLog logAllVsAllWithDate:];
        }

        v35 = [(NSMutableArray *)self->_allVsAllLogFileArray copy];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v36 = v35;
        v37 = [v36 countByEnumeratingWithState:&v56 objects:v61 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v57;
          do
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v57 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v56 + 1) + 8 * i);
              v42 = [MEMORY[0x29EDB9FB8] defaultManager];
              v55 = 0;
              [v42 removeItemAtPath:v41 error:&v55];
              v43 = v55;

              if (!v43)
              {
                [(NSMutableArray *)self->_allVsAllLogFileArray removeObject:v41];
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v56 objects:v61 count:16];
          }

          while (v38);
        }

        [(NSMutableArray *)self->_allVsAllLogFileArray addObject:v45];
        v14 = v54;
      }

      else
      {
        self->_allVsAllReachedLimit = 1;
        scoreDataArray = self->_scoreDataArray;
        self->_scoreDataArray = 0;

        v19 = self->_allVsAllScoreDict;
        self->_allVsAllScoreDict = 0;

        v20 = self->_allVsAllLogFileArray;
        self->_allVsAllLogFileArray = 0;

        if (__osLog_BioLog)
        {
          v21 = __osLog_BioLog;
        }

        else
        {
          v21 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296CA4000, v21, OS_LOG_TYPE_DEFAULT, "allVsAll Reached Limit! Disabled.\n", buf, 2u);
        }
      }
    }
  }

  v44 = *MEMORY[0x29EDCA608];
}

uint64_t __30__BioLog_logAllVsAllWithDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 sequenceNumber];
  if (v6 == [v4 sequenceNumber])
  {
    v7 = [v5 frameNumber];

    v8 = [v4 frameNumber];
    v9 = [v7 compare:v8];
  }

  else
  {
    v10 = [v5 sequenceNumber];

    if (v10 < [v4 sequenceNumber])
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }
  }

  return v9;
}

- (void)applyRetentionPolicy
{
  if ((applyRetentionPolicy_running & 1) == 0)
  {
    retentionQueue = self->_retentionQueue;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __30__BioLog_applyRetentionPolicy__block_invoke;
    block[3] = &unk_29EE54570;
    block[4] = self;
    dispatch_async(retentionQueue, block);
  }
}

void __30__BioLog_applyRetentionPolicy__block_invoke(uint64_t a1)
{
  v11 = os_transaction_create();
  applyRetentionPolicy_running = 1;
  *(*(a1 + 32) + 112) = 1;
  v2 = objc_autoreleasePoolPush();
  if (*(*(a1 + 32) + 8) == 1)
  {
    v3 = [MEMORY[0x29EDBFD50] sharedInstance];
    v4 = [v3 numberForKey:@"bioLogRetentionSizeLimit"];

    v5 = [v4 unsignedIntegerValue];
    v6 = [MEMORY[0x29EDBFD50] sharedInstance];
    v7 = [v6 numberForKey:@"bioLogRetentionDiskSpace"];

    v8 = [v7 unsignedIntegerValue];
    if (v7 && ![v7 unsignedIntegerValue])
    {
      v8 = 1;
    }

    if (!v4 || v5)
    {
      if (!v4 && *(*(a1 + 32) + 113))
      {
        v5 = 1536;
      }

      [objc_opt_class() cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_applyRetentionPolicy object:0];
      [BLRetention applyPolicyWithPath:*(*(a1 + 32) + 16) sizeLimit:v5 freeSpaceLimit:v8];
      v9 = *(a1 + 32);
      [objc_opt_class() cancelPreviousPerformRequestsWithTarget:v9 selector:sel_applyRetentionPolicy object:0];
    }
  }

  else
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_applyRetentionPolicy object:0];
    [BLRetention applyCustomerPolicyWithPath:*(*(a1 + 32) + 16)];
    v10 = *(a1 + 32);
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:v10 selector:sel_applyRetentionPolicy object:0];
  }

  objc_autoreleasePoolPop(v2);
  applyRetentionPolicy_running = 0;
  *(*(a1 + 32) + 104) = 0;
}

- (void)scheduleRetentionPolicy
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_retentionNewItemsSize >> 20;
  if (v3 < 0x401)
  {
    if (v3 > 0x200 || !v2->_retentionRunOnce)
    {
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __33__BioLog_scheduleRetentionPolicy__block_invoke;
      block[3] = &unk_29EE54570;
      block[4] = v2;
      dispatch_async(MEMORY[0x29EDCA578], block);
    }
  }

  else
  {
    [(BioLog *)v2 applyRetentionPolicy];
  }

  objc_sync_exit(v2);
}

uint64_t __33__BioLog_scheduleRetentionPolicy__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:*(a1 + 32) selector:sel_applyRetentionPolicy object:0];
  v3 = *(a1 + 32);

  return [v3 performSelector:sel_applyRetentionPolicy withObject:0 afterDelay:3.0];
}

- (id)sequencePathForId:(id *)a3
{
  v43 = *MEMORY[0x29EDCA608];
  v4 = self;
  objc_sync_enter(v4);
  p_sequencePath = &v4->_sequencePath;
  sequenceNumber = v4->_sequenceNumber;
  var1 = a3->var1;
  if (v4->_sequencePath)
  {
    v8 = sequenceNumber == var1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (v4->_sequenceType == a3->var2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (sequenceNumber > var1)
    {
      goto LABEL_10;
    }

    if (sequenceNumber != var1)
    {
      goto LABEL_15;
    }
  }

  if (v4->_sequenceType != a3->var2)
  {
LABEL_10:
    if (__osLog_BioLog)
    {
      v9 = __osLog_BioLog;
    }

    else
    {
      v9 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = v4->_sequenceNumber;
      v11 = a3->var1;
      sequenceType = v4->_sequenceType;
      var2 = a3->var2;
      *buf = 67109888;
      *&buf[4] = v10;
      v37 = 1024;
      v38 = v11;
      v39 = 1024;
      v40 = sequenceType;
      v41 = 1024;
      v42 = var2;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_ERROR, "Unexpected order %d > %d || %d != %d\n", buf, 0x1Au);
    }
  }

LABEL_15:
  v14 = [MEMORY[0x29EDBFD60] dateFromNanoTime:a3->var0 nanoseconds:0];
  v15 = MEMORY[0x29EDBA0F8];
  v16 = a3->var1;
  [v14 timeIntervalSince1970];
  v18 = v17;
  v19 = [(NSDateFormatter *)v4->_milisecondsFormatter stringFromDate:v14];
  v20 = [BLHelper stringFromSequenceType:a3->var2];
  v21 = [v15 stringWithFormat:@"%05d-%ld%@-%@.seq", v16, v18, v19, v20];

  logPath = v4->_logPath;
  v4->_sequenceType = a3->var2;
  v4->_sequenceNumber = a3->var1;
  v23 = [(NSString *)logPath stringByAppendingPathComponent:v21];
  v24 = *p_sequencePath;
  *p_sequencePath = v23;

  v25 = [MEMORY[0x29EDB9FB8] defaultManager];
  LOBYTE(v16) = [v25 fileExistsAtPath:*p_sequencePath];

  if ((v16 & 1) == 0)
  {
    v26 = [MEMORY[0x29EDB9FB8] defaultManager];
    v27 = [v26 createDirectoryAtPath:v4->_sequencePath withIntermediateDirectories:1 attributes:v4->_fileAttributes error:0];

    if (v27)
    {
      [BLRetention setPurgeableAtPath:*p_sequencePath directory:1];
      v28 = [(NSString *)v4->_logPath stringByAppendingPathComponent:@"LastSequence"];
      v29 = [MEMORY[0x29EDB9FB8] defaultManager];
      [v29 removeItemAtPath:v28 error:0];

      v30 = [MEMORY[0x29EDB9FB8] defaultManager];
      v31 = [v30 createSymbolicLinkAtPath:v28 withDestinationPath:v21 error:0];

      if ((v31 & 1) == 0)
      {
        v32 = (__osLog_BioLog ? __osLog_BioLog : MEMORY[0x29EDCA988]);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_296CA4000, v32, OS_LOG_TYPE_ERROR, "Sequence symlink creation failed! Don't thrust 'BioLog/Current/LastSequence'.\n", buf, 2u);
        }
      }
    }

    else
    {
      [(BioLog *)&v4->_logPath sequencePathForId:buf];
      v28 = *buf;
    }

    if (a3->var2 == 1)
    {
      [BLRetention setRetentionType:@"rp_enroll" atPath:*p_sequencePath];
    }
  }

LABEL_26:
  if (![(BioLogDiagnosticPipeline *)v4->_diagnosticPipeline scheduleSubmit])
  {
    [(BioLog *)v4 scheduleRetentionPolicy];
  }

  v33 = [*p_sequencePath copy];
  objc_sync_exit(v4);

  v34 = *MEMORY[0x29EDCA608];

  return v33;
}

- (id)sequencePathForId:(id *)a3 andSubdirectory:(id)a4
{
  v6 = a4;
  v7 = [(BioLog *)self sequencePathForId:a3];
  v8 = [v7 stringByAppendingPathComponent:v6];

  v9 = [MEMORY[0x29EDB9FB8] defaultManager];
  LOBYTE(v7) = [v9 fileExistsAtPath:v8];

  if ((v7 & 1) == 0)
  {
    v10 = [MEMORY[0x29EDB9FB8] defaultManager];
    v11 = [v10 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:self->_fileAttributes error:0];

    if (v11)
    {
      [BLRetention setPurgeableAtPath:v8 directory:1];
    }

    else
    {
      v12 = self->_logPath;

      v8 = v12;
    }
  }

  return v8;
}

- (void)logCameraFrame:(id)a3 withBuffers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 bytes];
  if (v8)
  {
    v9 = v8;
    if ([v6 length] == 79)
    {
      if (*(v9 + 77))
      {
        v10 = [v7 firstObject];
      }

      else
      {
        v10 = 0;
      }

      if (*(v9 + 78))
      {
        v11 = [v7 lastObject];
      }

      else
      {
        v11 = 0;
      }

      [(BioLog *)self logCameraFrame:v9 sensorRawData:v10 metaData:v11];
    }

    else
    {
      [BioLog logCameraFrame:withBuffers:];
    }
  }

  else
  {
    [BioLog logCameraFrame:withBuffers:];
  }
}

- (void)logCameraFrame:(id *)a3 sensorRawData:(id)a4 metaData:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (self->_internal)
  {
    [(BioLog *)self logInternalCameraFrame:a3 sensorRawData:v8 metaData:v9];
  }

  else
  {
    if (self->_cropFrameBuffer)
    {
      goto LABEL_23;
    }

    v10 = [objc_alloc(MEMORY[0x29EDB8DF8]) initWithLength:*(&a3->var7 + 1) * *(&a3->var7 + 3)];
    cropFrameBuffer = self->_cropFrameBuffer;
    self->_cropFrameBuffer = v10;

    v12 = dispatch_semaphore_create(1);
    cropFrameBufferSemaphore = self->_cropFrameBufferSemaphore;
    self->_cropFrameBufferSemaphore = v12;

    if (self->_cropFrameBuffer)
    {
LABEL_23:
      if (self->_cropFrameBufferSemaphore)
      {
        if (BYTE2(a3->var5.var8) || ![BioLog logCameraFrame:? sensorRawData:? metaData:?])
        {
          if (*(&a3->var5.var7 + 2))
          {
            v14 = *&a3->var5.var6;
          }

          else
          {
            [BioLog logCameraFrame:a3 sensorRawData:? metaData:?];
          }

          v15 = *&a3->var4;
          var0 = a3->var5.var0;
          v17 = *&a3->var5.var1;
          var3 = a3->var5.var3;
          v19 = *(&a3->var6 + 3);
          v20 = *(&a3->var7 + 1);
          scale_rect_from_center_and_pin();
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v29 = stride_of_packed_raw10_minimum(v21, v23, v25);
        }

        else
        {
          v29 = 0;
          v28 = 0.0;
          v26 = 0.0;
          v24 = 0.0;
          v22 = 0.0;
        }

        v30 = [MEMORY[0x29EDB8DF8] dataWithBytes:a3 length:79];
        dispatch_semaphore_wait(self->_cropFrameBufferSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        if (BYTE2(a3->var5.var8) && *&a3->var5.var1)
        {
          v31 = [v30 bytes];
          v32 = crop_packed_raw10([v8 bytes], *(&a3->var6 + 3), *(&a3->var7 + 1), *(&a3->var7 + 3), -[NSMutableData mutableBytes](self->_cropFrameBuffer, "mutableBytes"), v22, v24, v26, v28, v29);
          v34 = v33;
          v36 = v35;
          v38 = v37;
          v39 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:-[NSMutableData mutableBytes](self->_cropFrameBuffer length:"mutableBytes") freeWhenDone:{(v37 * v29), 0}];
          *(v31 + 73) = v32;
          *(v31 + 75) = v34;
          *(v31 + 67) = v36;
          *(v31 + 69) = v38;
          *(v31 + 71) = v29;
        }

        else
        {
          v39 = 0;
        }

        v40 = dispatch_get_global_queue(21, 0);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 3221225472;
        block[2] = __48__BioLog_logCameraFrame_sensorRawData_metaData___block_invoke;
        block[3] = &unk_29EE545E0;
        block[4] = self;
        v44 = v30;
        v45 = v39;
        v41 = v39;
        v42 = v30;
        dispatch_async(v40, block);
      }

      else
      {
        [BioLog logCameraFrame:sensorRawData:metaData:];
      }
    }

    else
    {
      [BioLog logCameraFrame:sensorRawData:metaData:];
    }
  }
}

intptr_t __48__BioLog_logCameraFrame_sensorRawData_metaData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) logInternalCameraFrame:objc_msgSend(*(a1 + 40) sensorRawData:"bytes") metaData:{*(a1 + 48), 0}];
  v2 = *(*(a1 + 32) + 128);

  return dispatch_semaphore_signal(v2);
}

- (void)logInternalCameraFrame:(id *)a3 sensorRawData:(id)a4 metaData:(id)a5
{
  v97 = *MEMORY[0x29EDCA608];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x29EDBFD60] dateFromNanoTime:a3->var0.var0 nanoseconds:0];
  v11 = MEMORY[0x29EDBA0F8];
  var2 = a3->var0.var2;
  [v10 timeIntervalSince1970];
  v14 = v13;
  v79 = v10;
  v15 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v10];
  v16 = [BLHelper stringFromFrameType:a3->var0.var5];
  v17 = [v11 stringWithFormat:@"%05d-%ld%@-%@", var2, v14, v15, v16];

  v18 = [(BioLog *)self sequencePathForId:&a3->var0.var6];
  v19 = v18;
  if (!v18)
  {
    [BioLog logInternalCameraFrame:sensorRawData:metaData:];
    v57 = *buf;
    v48 = v79;
    goto LABEL_28;
  }

  v81 = v18;
  v20 = [v18 stringByAppendingPathComponent:v17];
  if (__osLog_BioLog)
  {
    v21 = __osLog_BioLog;
  }

  else
  {
    v21 = MEMORY[0x29EDCA988];
  }

  v80 = v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    var0 = a3->var0.var0;
    v23 = v21;
    *buf = 134218754;
    *&buf[4] = var0;
    v91 = 2048;
    v92 = [v8 length];
    v93 = 2048;
    v94 = [v9 length];
    v95 = 2112;
    v96 = v20;
    _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_DEFAULT, "logCameraFrame %llu: %lu %lu > %@.prlf(c)/prlm +json\n", buf, 0x2Au);
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  if (logInternalCameraFrame_sensorRawData_metaData__onceToken != -1)
  {
    [BioLog logInternalCameraFrame:sensorRawData:metaData:];
  }

  v24 = [v20 stringByAppendingString:logInternalCameraFrame_sensorRawData_metaData__sensorRawExtension];
  v25 = [(BioLog *)self createFileAtPath:v24 contents:v8 attributes:self->_fileAttributesProtected purgeable:1];

  if (!v25)
  {
    [BioLog logInternalCameraFrame:sensorRawData:metaData:];
    if (v9)
    {
LABEL_12:
      v26 = [v20 stringByAppendingString:@".prlm"];
      v27 = [(BioLog *)self createFileAtPath:v26 contents:v9 attributes:self->_fileAttributesAutoUpload purgeable:1];

      if (!v27)
      {
        [BioLog logInternalCameraFrame:sensorRawData:metaData:];
      }
    }
  }

  else
  {
LABEL_11:
    if (v9)
    {
      goto LABEL_12;
    }
  }

  v76 = self;
  v28 = objc_alloc_init(MEMORY[0x29EDBA050]);
  for (i = 62; i != 58; --i)
  {
    [v28 appendFormat:@"%c", *(&a3->var0.var0 + i)];
  }

  v82 = MEMORY[0x29EDB8E00];
  v88[0] = @"seq_type";
  v73 = [BLHelper stringFromSequenceType:a3->var0.var4];
  v89[0] = v73;
  v88[1] = @"frm_type";
  v71 = [BLHelper stringFromFrameType:a3->var0.var5];
  v89[1] = v71;
  v88[2] = @"seq_num";
  v69 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:a3->var0.var1];
  v89[2] = v69;
  v88[3] = @"frm_num";
  v68 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:a3->var0.var2];
  v89[3] = v68;
  v88[4] = @"frm_grp";
  v67 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&a3->var0.var6.var2 + 1)];
  v89[4] = v67;
  v88[5] = @"raw_compressed";
  v75 = v17;
  if (logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked)
  {
    [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked, "BOOLValue")}];
  }

  else
  {
    [MEMORY[0x29EDB8E28] null];
  }
  v66 = ;
  v89[5] = v66;
  v88[6] = @"raw_size";
  v78 = v8;
  v65 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v8, "length")}];
  v89[6] = v65;
  v88[7] = @"meta_size";
  v77 = v9;
  v64 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
  v89[7] = v64;
  v88[8] = @"frm_cox";
  v63 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&a3->var8 + 1)];
  v89[8] = v63;
  v88[9] = @"frm_coy";
  v62 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&a3->var8 + 3)];
  v89[9] = v62;
  v89[10] = v28;
  v88[10] = @"frm_pixel_format";
  v88[11] = @"frm_bytes_per_element";
  v61 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(&a3->var5.var9 + 3)];
  v89[11] = v61;
  v88[12] = @"frm_width";
  v30 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&a3->var6 + 3)];
  v89[12] = v30;
  v88[13] = @"frm_height";
  v31 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&a3->var7 + 1)];
  v89[13] = v31;
  v88[14] = @"frm_bpr";
  v32 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&a3->var7 + 3)];
  v89[14] = v32;
  v88[15] = @"user_feedback";
  v33 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&a3->var0.var6.var2 + 3)];
  v89[15] = v33;
  v88[16] = @"user_engagement_status";
  v34 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(&a3->var0.var6.var2 + 5)];
  v89[16] = v34;
  v88[17] = @"proj_type";
  v35 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:HIBYTE(a3->var1)];
  v89[17] = v35;
  v36 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v89 forKeys:v88 count:18];
  v83 = [v82 dictionaryWithDictionary:v36];

  if (BYTE2(a3->var5.var8))
  {
    if (!*(&a3->var5.var7 + 2))
    {
      [BioLog logInternalCameraFrame:a3 sensorRawData:? metaData:?];
    }

    v86[0] = @"exposure";
    v74 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*&a3->var5.var4];
    v87[0] = v74;
    v86[1] = @"proj_sub_mode";
    v72 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:LOBYTE(a3->var3)];
    v87[1] = v72;
    v86[2] = @"ntc_temp";
    v70 = [MEMORY[0x29EDBA070] numberWithChar:SHIBYTE(a3->var3)];
    v87[2] = v70;
    v86[3] = @"distance";
    v37 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:a3->var2];
    v87[3] = v37;
    v86[4] = @"crop_factor";
    LODWORD(v38) = *&a3->var5.var6;
    LODWORD(v39) = *(&a3->var5.var7 + 2);
    v40 = [MEMORY[0x29EDBA070] numberWithDouble:v38 / v39];
    v87[4] = v40;
    v86[5] = @"bb_x";
    v41 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*&a3->var4];
    v87[5] = v41;
    v86[6] = @"bb_y";
    v42 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:a3->var5.var0];
    v87[6] = v42;
    v86[7] = @"bb_w";
    v43 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*&a3->var5.var1];
    v87[7] = v43;
    v86[8] = @"bb_h";
    v44 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:a3->var5.var3];
    v87[8] = v44;
    v45 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v87 forKeys:v86 count:9];
    [v83 addEntriesFromDictionary:v45];
  }

  v84[0] = @"biolog_file_type";
  v84[1] = @"version";
  v85[0] = @"frame";
  v85[1] = &unk_2A1E037F8;
  v84[2] = @"nanoepoch";
  v46 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:a3->var0.var0];
  v85[2] = v46;
  v84[3] = @"epoch";
  v47 = MEMORY[0x29EDBA070];
  v48 = v79;
  [v79 timeIntervalSince1970];
  v49 = [v47 numberWithDouble:?];
  v84[4] = @"frm_data";
  v85[3] = v49;
  v85[4] = v83;
  v50 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v85 forKeys:v84 count:5];

  v51 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v50 options:3 error:0];
  if (!v51)
  {
    [BioLog logInternalCameraFrame:sensorRawData:metaData:];
  }

  v52 = MEMORY[0x29EDBA0F8];
  v53 = a3->var0.var2;
  [v79 timeIntervalSince1970];
  v55 = v54;
  v56 = [(NSDateFormatter *)v76->_milisecondsFormatter stringFromDate:v79];
  v57 = [v52 stringWithFormat:@"%05d-%ld%@", v53, v55, v56];

  v58 = [v81 stringByAppendingPathComponent:v57];

  v59 = [v58 stringByAppendingString:@".json"];
  LOBYTE(v55) = [(BioLog *)v76 createFileAtPath:v59 contents:v51 attributes:v76->_fileAttributesProtected purgeable:1];

  v9 = v77;
  v8 = v78;
  if ((v55 & 1) == 0)
  {
    [BioLog logInternalCameraFrame:sensorRawData:metaData:];
  }

  v19 = v81;
LABEL_28:

  v60 = *MEMORY[0x29EDCA608];
}

void __56__BioLog_logInternalCameraFrame_sensorRawData_metaData___block_invoke()
{
  v0 = [BLHelper numberForBootArg:@"camPearlPackedRaw"];
  v1 = logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked;
  logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked = v0;

  v2 = logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked;
  if (!logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked)
  {
    logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked = MEMORY[0x29EDB8EB0];

    v2 = logInternalCameraFrame_sensorRawData_metaData__rawFramesPacked;
  }

  if (([v2 BOOLValue] & 1) == 0)
  {
    v3 = logInternalCameraFrame_sensorRawData_metaData__sensorRawExtension;
    logInternalCameraFrame_sensorRawData_metaData__sensorRawExtension = @".prlf";
  }
}

void __33__BioLog_extractFrameDebug_data___block_invoke(uint64_t a1, unsigned int a2)
{
  v7[1] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v6 = @"fid_resized_data_median_value";
  v3 = [MEMORY[0x29EDBA070] numberWithInt:a2 >> 3];
  v7[0] = v3;
  v4 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  [v2 addEntriesFromDictionary:v4];

  v5 = *MEMORY[0x29EDCA608];
}

- (void)logFrameDebug:(id)a3 withBuffer:(id)a4
{
  v52 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  if (!self->_internal)
  {
    if (__osLog_BioLog)
    {
      v35 = __osLog_BioLog;
    }

    else
    {
      v35 = MEMORY[0x29EDCA988];
    }

    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136316162;
    v43 = "_internal";
    v44 = 2048;
    v45 = 0;
    v46 = 2080;
    v47 = &unk_296D32C0B;
    v48 = 2080;
    v49 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
    v50 = 1024;
    v51 = 891;
    goto LABEL_35;
  }

  v8 = [v6 bytes];
  if (!v8)
  {
    if (__osLog_BioLog)
    {
      v35 = __osLog_BioLog;
    }

    else
    {
      v35 = MEMORY[0x29EDCA988];
    }

    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136316162;
    v43 = "frameHeader";
    v44 = 2048;
    v45 = 0;
    v46 = 2080;
    v47 = &unk_296D32C0B;
    v48 = 2080;
    v49 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
    v50 = 1024;
    v51 = 894;
    goto LABEL_35;
  }

  v9 = v8;
  if ([v6 length] != 27)
  {
    if (__osLog_BioLog)
    {
      v35 = __osLog_BioLog;
    }

    else
    {
      v35 = MEMORY[0x29EDCA988];
    }

    if (!os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 136316162;
    v43 = "sizeof(*frameHeader) == [headerData length]";
    v44 = 2048;
    v45 = 0;
    v46 = 2080;
    v47 = &unk_296D32C0B;
    v48 = 2080;
    v49 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
    v50 = 1024;
    v51 = 895;
LABEL_35:
    _os_log_impl(&dword_296CA4000, v35, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_36:
    v33 = 0;
    v24 = 0;
    v22 = 0;
    v15 = 0;
    goto LABEL_19;
  }

  frameDebugExtraQueue = self->_frameDebugExtraQueue;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __35__BioLog_logFrameDebug_withBuffer___block_invoke;
  block[3] = &unk_29EE549C0;
  block[4] = self;
  v41 = v9;
  v11 = v7;
  v40 = v11;
  dispatch_sync(frameDebugExtraQueue, block);

  v38 = v7;
  if (*(v9 + 14) == 2 && !self->_allVsAllReachedLimit && (v12 = [[BLScoreData alloc] initFromDebugData:v11]) != 0)
  {
    v13 = v12;
    [v12 setSequenceNumber:*(v9 + 8)];
    [(NSMutableArray *)self->_scoreDataArray addObject:v13];
    v14 = self->_computedSequenceNumberPair[0];
    v37 = v13;
    if (v14 != *(v9 + 8))
    {
      self->_computedSequenceNumberPair[1] = v14;
      self->_computedSequenceNumberPair[0] = *(v9 + 8);
    }
  }

  else
  {
    v37 = 0;
  }

  v15 = [MEMORY[0x29EDBFD60] dateFromNanoTime:*v9 nanoseconds:0];
  v16 = MEMORY[0x29EDBA0F8];
  v17 = *(v9 + 10);
  [v15 timeIntervalSince1970];
  v19 = v18;
  v20 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v15];
  v21 = [BLHelper stringFromFrameType:*(v9 + 15)];
  v22 = [v16 stringWithFormat:@"%05d-%ld%@-%@", v17, v19, v20, v21];

  v23 = [(BioLog *)self sequencePathForId:v9 + 16];
  v24 = [v23 stringByAppendingPathComponent:v22];

  v25 = MEMORY[0x29EDCA988];
  if (__osLog_BioLog)
  {
    v26 = __osLog_BioLog;
  }

  else
  {
    v26 = MEMORY[0x29EDCA988];
  }

  if (v24)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v6;
      v28 = *v9;
      v29 = v26;
      v30 = [v11 length];
      *buf = 134218754;
      v43 = v28;
      v6 = v27;
      v25 = MEMORY[0x29EDCA988];
      v44 = 2048;
      v45 = v30;
      v46 = 2112;
      v47 = v24;
      v48 = 2080;
      v49 = ".prle";
      _os_log_impl(&dword_296CA4000, v29, OS_LOG_TYPE_DEFAULT, "logFrameDebug %llu: %lu > %@%s\n", buf, 0x2Au);
    }

    v31 = [v24 stringByAppendingString:@".prle"];
    v32 = [(BioLog *)self createFileAtPath:v31 contents:v11 attributes:self->_fileAttributesAutoUpload purgeable:1];

    if (!v32)
    {
      if (__osLog_BioLog)
      {
        v36 = __osLog_BioLog;
      }

      else
      {
        v36 = v25;
      }

      v7 = v38;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v43 = "result";
        v44 = 2048;
        v45 = 0;
        v46 = 2080;
        v47 = &unk_296D32C0B;
        v48 = 2080;
        v49 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
        v50 = 1024;
        v51 = 924;
        _os_log_impl(&dword_296CA4000, v36, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v43 = "filePath";
      v44 = 2048;
      v45 = 0;
      v46 = 2080;
      v47 = &unk_296D32C0B;
      v48 = 2080;
      v49 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
      v50 = 1024;
      v51 = 920;
      _os_log_impl(&dword_296CA4000, v26, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v24 = 0;
  }

  v7 = v38;
LABEL_18:
  v33 = v37;
LABEL_19:

  v34 = *MEMORY[0x29EDCA608];
}

- (void)logData:(id)a3 withContext:(id *)a4
{
  v35 = *MEMORY[0x29EDCA608];
  v6 = a3;
  if (self->_internal)
  {
    v7 = [MEMORY[0x29EDBFD60] dateFromNanoTime:a4->var0 nanoseconds:0];
    v8 = MEMORY[0x29EDBA0F8];
    [v7 timeIntervalSince1970];
    v10 = v9;
    v11 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v7];
    v12 = [v8 stringWithFormat:@"Data_%ld%@.dmp", v10, v11];

    if (a4->var2.var0)
    {
      v13 = [(BioLog *)self sequencePathForId:&a4->var2];
    }

    else
    {
      v13 = self->_logPath;
    }

    v14 = v13;
    v15 = [(NSString *)v13 stringByAppendingPathComponent:v12];
    v16 = MEMORY[0x29EDCA988];
    if (__osLog_BioLog)
    {
      v17 = __osLog_BioLog;
    }

    else
    {
      v17 = MEMORY[0x29EDCA988];
    }

    if (v15)
    {
      v18 = v15;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        var0 = a4->var0;
        v20 = v17;
        v21 = [v6 length];
        *buf = 134218498;
        v26 = var0;
        v16 = MEMORY[0x29EDCA988];
        v27 = 2048;
        v28 = v21;
        v29 = 2112;
        v30 = v18;
        _os_log_impl(&dword_296CA4000, v20, OS_LOG_TYPE_DEFAULT, "logData %llu: %lu > %@\n", buf, 0x20u);
      }

      if (![(BioLog *)self createFileAtPath:v18 contents:v6 attributes:self->_fileAttributesProtected purgeable:1])
      {
        if (__osLog_BioLog)
        {
          v24 = __osLog_BioLog;
        }

        else
        {
          v24 = v16;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v26 = "result";
          v27 = 2048;
          v28 = 0;
          v29 = 2080;
          v30 = &unk_296D32C0B;
          v31 = 2080;
          v32 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
          v33 = 1024;
          v34 = 956;
          _os_log_impl(&dword_296CA4000, v24, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v26 = "filePath";
        v27 = 2048;
        v28 = 0;
        v29 = 2080;
        v30 = &unk_296D32C0B;
        v31 = 2080;
        v32 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
        v33 = 1024;
        v34 = 952;
        _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      v18 = 0;
    }
  }

  else
  {
    if (__osLog_BioLog)
    {
      v23 = __osLog_BioLog;
    }

    else
    {
      v23 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v26 = "_internal";
      v27 = 2048;
      v28 = 0;
      v29 = 2080;
      v30 = &unk_296D32C0B;
      v31 = 2080;
      v32 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
      v33 = 1024;
      v34 = 936;
      _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v18 = 0;
    v14 = 0;
    v12 = 0;
    v7 = 0;
  }

  v22 = *MEMORY[0x29EDCA608];
}

- (void)logTemplate:(id)a3 withContext:(id *)a4
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = a3;
  if (!self->_internal)
  {
    [BioLog logTemplate:withContext:];
    goto LABEL_15;
  }

  v7 = [MEMORY[0x29EDBFD60] dateFromNanoTime:a4->var0 nanoseconds:0];
  v8 = MEMORY[0x29EDBA0F8];
  var1 = a4->var2.var1;
  [v7 timeIntervalSince1970];
  v11 = v10;
  v12 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v7];
  v13 = [v8 stringWithFormat:@"templ-%05d-%ld%@", var1, v11, v12];

  v14 = [(BioLog *)self sequencePathForId:&a4->var2];
  v15 = [v14 stringByAppendingPathComponent:v13];

  if (__osLog_BioLog)
  {
    v16 = __osLog_BioLog;
  }

  else
  {
    v16 = MEMORY[0x29EDCA988];
  }

  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a4->var0;
      v18 = v16;
      *buf = 134218754;
      *&buf[4] = var0;
      v25 = 2048;
      v26 = [v6 length];
      v27 = 2112;
      v28 = v15;
      v29 = 2080;
      v30 = ".tpl";
      _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_DEFAULT, "logTemplate %llu: %lu > %@%s\n", buf, 0x2Au);
    }

    v19 = [v15 stringByAppendingString:@".tpl"];
    v20 = [(BioLog *)self createFileAtPath:v19 contents:v6 attributes:self->_fileAttributesProtected purgeable:1];

    if (v20)
    {
      goto LABEL_9;
    }

    [BioLog logTemplate:withContext:];
LABEL_15:
    v15 = v22;
    v13 = v23;
    v7 = *buf;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "filePath";
    v25 = 2048;
    v26 = 0;
    v27 = 2080;
    v28 = &unk_296D32C0B;
    v29 = 2080;
    v30 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
    v31 = 1024;
    v32 = 1025;
    _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  v15 = 0;
LABEL_9:

  v21 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceInfo:(id)a3 withContext:(id *)a4 orientation:(id *)a5 identities:(id)a6
{
  v361[20] = *MEMORY[0x29EDCA608];
  v293 = a3;
  v299 = a6;
  if (!logSequenceInfo_withContext_orientation_identities__lastSequenceName)
  {
    v8 = [MEMORY[0x29EDB8E28] null];
    v9 = logSequenceInfo_withContext_orientation_identities__lastSequenceName;
    logSequenceInfo_withContext_orientation_identities__lastSequenceName = v8;
  }

  v300 = [MEMORY[0x29EDB8E28] null];
  v10 = [v293 bytes];
  if (!v10)
  {
    [BioLog logSequenceInfo:withContext:orientation:identities:];
LABEL_148:

    goto LABEL_144;
  }

  if (!a4)
  {
    [BioLog logSequenceInfo:withContext:orientation:identities:];
    goto LABEL_148;
  }

  if (!a5)
  {
    [BioLog logSequenceInfo:withContext:orientation:identities:];
    goto LABEL_148;
  }

  v303 = v10;
  v291 = (v10 + 4);
  v301 = [MEMORY[0x29EDBFD60] dateFromNanoTime:*(v10 + 4) nanoseconds:0];
  v292 = [MEMORY[0x29EDBFD60] dateFromNanoTime:a4->var0 nanoseconds:0];
  if (!*v303)
  {
    v283 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_112;
  }

  if (!self->_internal && *(v303 + 1))
  {
    [BioLog logSequenceInfo:? withContext:? orientation:? identities:?];
  }

  v264 = [BLHelper numberFromDouble:a5->var1];
  v265 = [BLHelper numberFromDouble:a5->var2];
  v263 = [BLHelper numberFromDouble:a5->var3];
  v262 = [BLHelper numberFromDouble:a5->var4.var0];
  v261 = [BLHelper numberFromDouble:a5->var4.var1];
  v260 = [BLHelper numberFromDouble:a5->var4.var2];
  v258 = [BLHelper numberFromDouble:a5->var5.var0];
  v259 = [BLHelper numberFromDouble:a5->var5.var1];
  v257 = [BLHelper numberFromDouble:a5->var5.var2];
  v256 = [BLHelper numberFromDouble:a5->var6.var0];
  v255 = [BLHelper numberFromDouble:a5->var6.var1];
  v254 = [BLHelper numberFromDouble:a5->var6.var2];
  v287 = MEMORY[0x29EDB8E00];
  v360[0] = @"system_build_version";
  v304 = +[BLHelper buildVersionString];
  v361[0] = v304;
  v360[1] = @"internal";
  v297 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 1) != 0];
  v361[1] = v297;
  v360[2] = @"canceled";
  v295 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 2) != 0];
  v361[2] = v295;
  v360[3] = @"failure";
  v289 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 23) != 0];
  v361[3] = v289;
  v360[4] = @"failure_reason";
  v284 = [MEMORY[0x29EDBA070] numberWithInt:*(v303 + 23)];
  v361[4] = v284;
  v360[5] = @"total_frame_count";
  v282 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 15)];
  v361[5] = v282;
  v360[6] = @"frames_processed";
  v280 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 17)];
  v361[6] = v280;
  v360[7] = @"frames_for_logging";
  v278 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 19)];
  v361[7] = v278;
  v360[8] = @"frames_logged";
  v275 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 21)];
  v361[8] = v275;
  v360[9] = @"sensor_temperature";
  v272 = [MEMORY[0x29EDBA070] numberWithInt:*(v303 + 35)];
  v361[9] = v272;
  v360[10] = @"ambient_lux";
  v269 = [MEMORY[0x29EDBA070] numberWithInt:*(v303 + 39)];
  v361[10] = v269;
  v360[11] = @"secure_face_detect_mode";
  v266 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v303 + 43)];
  v361[11] = v266;
  v360[12] = @"initial_orientation";
  v11 = self;
  initialDeviceOrientation = self->_initialDeviceOrientation;
  v13 = initialDeviceOrientation;
  if (!initialDeviceOrientation)
  {
    initialDeviceOrientation = [MEMORY[0x29EDB8E28] null];
    v11 = self;
  }

  v248 = initialDeviceOrientation;
  v361[12] = initialDeviceOrientation;
  v360[13] = @"initial_stationary";
  initialDeviceStationary = v11->_initialDeviceStationary;
  if (initialDeviceStationary)
  {
    v15 = v11->_initialDeviceStationary;
  }

  else
  {
    v15 = [MEMORY[0x29EDB8E28] null];
  }

  v251 = initialDeviceStationary == 0;
  v246 = v15;
  v361[13] = v15;
  v360[14] = @"final_orientation";
  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:a5->var0];
  v361[14] = v18;
  v360[15] = @"final_attitude";
  v358[0] = @"device_roll";
  v358[1] = @"device_pitch";
  v359[0] = v264;
  v359[1] = v265;
  v358[2] = @"device_yaw";
  v359[2] = v263;
  v19 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v359 forKeys:v358 count:3];
  v361[15] = v19;
  v360[16] = @"final_rotation_rate";
  v356[0] = @"device_rotation_x";
  v356[1] = @"device_rotation_y";
  v357[0] = v262;
  v357[1] = v261;
  v356[2] = @"device_rotation_z";
  v357[2] = v260;
  v20 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v357 forKeys:v356 count:3];
  v361[16] = v20;
  v360[17] = @"final_acceleration";
  v354[0] = @"device_acceleration_x";
  v354[1] = @"device_acceleration_y";
  v355[0] = v258;
  v355[1] = v259;
  v354[2] = @"device_acceleration_z";
  v355[2] = v257;
  v21 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v355 forKeys:v354 count:3];
  v361[17] = v21;
  v360[18] = @"final_gravity";
  v352[0] = @"device_gravity_x";
  v352[1] = @"device_gravity_y";
  v353[0] = v256;
  v353[1] = v255;
  v352[2] = @"device_gravity_z";
  v353[2] = v254;
  v22 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v353 forKeys:v352 count:3];
  v361[18] = v22;
  v360[19] = @"timezone_offset";
  v23 = MEMORY[0x29EDBA070];
  v24 = [MEMORY[0x29EDB8D98] currentCalendar];
  v25 = [v24 timeZone];
  v26 = [v23 numberWithInteger:{objc_msgSend(v25, "secondsFromGMT")}];
  v361[19] = v26;
  v27 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v361 forKeys:v360 count:20];
  v288 = [v287 dictionaryWithDictionary:v27];

  if (v251)
  {
  }

  if (!v13)
  {
  }

  v247 = *(v303 + 2);
  if (*(v303 + 44))
  {
    v28 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:v303 + 45];
    v279 = [v28 UUIDString];
  }

  else
  {
    v279 = [MEMORY[0x29EDB8E28] null];
  }

  v29 = *(v303 + 14);
  if (v29 == 1)
  {
    v332[0] = @"enroll";
    v331[0] = @"seq_type";
    v331[1] = @"enroll_result";
    v31 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 65) != 0];
    v332[1] = v31;
    v332[2] = v279;
    v331[2] = @"enroll_identity_uuid";
    v331[3] = @"enroll_user_id";
    v32 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v303 + 61)];
    v332[3] = v32;
    v331[4] = @"enroll_identity_augmented";
    v33 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 68) != 0];
    v332[4] = v33;
    v331[5] = @"enroll_frames_num";
    v34 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 66)];
    v332[5] = v34;
    v35 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v332 forKeys:v331 count:6];
    [v288 addEntriesFromDictionary:v35];

    v16 = 0;
    if (*(v303 + 65))
    {
      v36 = @"rp_enroll";
    }

    else
    {
      v36 = @"rp_none";
    }

    goto LABEL_56;
  }

  if (v29 == 2)
  {
    if (!*(v303 + 90))
    {
      v30 = *(v303 + 70);
      if (*(v303 + 104) != 3)
      {
        goto LABEL_37;
      }

      if (*(v303 + 70))
      {
        v39 = 1;
        goto LABEL_38;
      }
    }

    v30 = *(v303 + 68);
LABEL_37:
    v39 = v30 != 0;
LABEL_38:
    v242 = v39;
    v245 = [MEMORY[0x29EDB8E28] null];
    v244 = [MEMORY[0x29EDB8E28] null];
    v243 = [MEMORY[0x29EDB8E28] null];
    v40 = v303;
    if (*(v303 + 65))
    {
      v41 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 66) != 0];

      v245 = v41;
      v40 = v303;
    }

    if (v40[67])
    {
      v42 = [MEMORY[0x29EDBA070] numberWithBool:v40[68] != 0];

      v244 = v42;
      v40 = v303;
    }

    if (v40[69])
    {
      v43 = [MEMORY[0x29EDBA070] numberWithBool:v40[70] != 0];

      v243 = v43;
      v40 = v303;
    }

    v45 = v40[115];
    v44 = v40 + 115;
    v298 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:v45];
    v296 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v44];
    if (*v44)
    {
      v46 = 0;
      v47 = 0;
      v48 = v303;
      do
      {
        v49 = (v48 + v47 + 92);
        v50 = [MEMORY[0x29EDBA070] numberWithBool:*v49 != 0];
        [v298 addObject:v50];

        v51 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + v47 + 98) != 0];
        [v296 addObject:v51];

        v52 = *v49 | v46 | *(v303 + v47 + 98);
        v46 = v52 != 0;
        ++v47;
        v48 = v303;
        v53 = *(v303 + 115);
      }

      while (v47 < v53);
      if (v52)
      {
        v54 = @"rp_update";
      }

      else
      {
        v54 = 0;
      }

      v283 = v54;
    }

    else
    {
      v283 = 0;
      v53 = 0;
    }

    v305 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:v53];
    v290 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v303 + 115)];
    v281 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v303 + 115)];
    v58 = v303;
    if (*(v303 + 182) && *(v303 + 115))
    {
      v59 = 0;
      do
      {
        v60 = v303 + 185 + 36 * v59;
        v61 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:v60 + 16];
        v62 = [v61 UUIDString];
        [v305 addObject:v62];

        v63 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v60 + 32)];
        [v290 addObject:v63];

        v318 = 0u;
        v319 = 0u;
        v316 = 0u;
        v317 = 0u;
        v64 = v299;
        v65 = [v64 countByEnumeratingWithState:&v316 objects:v349 count:16];
        if (v65)
        {
          v66 = *v317;
          while (2)
          {
            for (i = 0; i != v65; ++i)
            {
              if (*v317 != v66)
              {
                objc_enumerationMutation(v64);
              }

              v68 = *(*(&v316 + 1) + 8 * i);
              v69 = [v68 uuid];
              v70 = [v69 UUIDString];
              v71 = [v305 lastObject];
              v72 = [v70 isEqualToString:v71];

              if (v72)
              {
                v73 = [v68 creationTime];
                [v73 timeIntervalSince1970];
                v74 = [BLHelper numberFromDouble:?];
                [v281 addObject:v74];

                goto LABEL_72;
              }
            }

            v65 = [v64 countByEnumeratingWithState:&v316 objects:v349 count:16];
            if (v65)
            {
              continue;
            }

            break;
          }
        }

LABEL_72:

        ++v59;
        v58 = v303;
      }

      while (v59 < *(v303 + 115));
    }

    v348[0] = @"match";
    v347[0] = @"seq_type";
    v347[1] = @"match_seq_type";
    v75 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v58 + 104)];
    v348[1] = v75;
    v347[2] = @"match_flags";
    v285 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v303 + 110)];
    v348[2] = v285;
    v347[3] = @"match_trigger";
    v276 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v303 + 114)];
    v348[3] = v276;
    v347[4] = @"secure_face_detect_unsupported_orientation";
    v273 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 79) != 0];
    v348[4] = v273;
    v347[5] = @"processed_doubles";
    v270 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v303 + 105)];
    v348[5] = v270;
    v347[6] = @"overall_match_result";
    v267 = [MEMORY[0x29EDBA070] numberWithBool:v242];
    v348[6] = v267;
    v347[7] = @"face_detect_result";
    v347[8] = @"bio_check_result";
    v348[7] = v245;
    v348[8] = v244;
    v348[9] = v243;
    v347[9] = @"probing_pattern_result";
    v347[10] = @"face_detect_result_code";
    v252 = [MEMORY[0x29EDBA070] numberWithInt:*(v303 + 106)];
    v348[10] = v252;
    v348[11] = v279;
    v347[11] = @"match_identity_uuid";
    v347[12] = @"match_identity_user_id";
    v249 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v303 + 61)];
    v348[12] = v249;
    v347[13] = @"enrolled_identity_count";
    v240 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v303 + 115)];
    v348[13] = v240;
    v347[14] = @"enrolled_identity_uuid";
    v347[15] = @"enrolled_identity_date";
    v348[14] = v305;
    v348[15] = v281;
    v348[16] = v290;
    v347[16] = @"enrolled_user_id";
    v347[17] = @"matched_identity_index";
    v239 = [MEMORY[0x29EDBA070] numberWithChar:*(v303 + 116)];
    v348[17] = v239;
    v347[18] = @"template_updated";
    v238 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 89) != 0];
    v348[18] = v238;
    v347[19] = @"passcode_challenge";
    v237 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 90) != 0];
    v348[19] = v237;
    v347[20] = @"passcode_challenge_allowed";
    v236 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 91) != 0];
    v348[20] = v236;
    v347[21] = @"is_safe_update";
    v347[22] = @"is_passcode_update";
    v348[21] = v298;
    v348[22] = v296;
    v347[23] = @"is_combined";
    v235 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 71) != 0];
    v348[23] = v235;
    v347[24] = @"is_auto_retry";
    v234 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 72) != 0];
    v348[24] = v234;
    v347[25] = @"is_auto_retry_allowed";
    v233 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 73) != 0];
    v348[25] = v233;
    v347[26] = @"auto_retry_type";
    v232 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v303 + 74)];
    v348[26] = v232;
    v347[27] = @"is_fallback_to_secure_face_detect";
    v231 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 78) != 0];
    v348[27] = v231;
    v347[28] = @"is_static_unlock";
    v230 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 80) != 0];
    v348[28] = v230;
    v347[29] = @"is_online_unlock";
    v229 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 81) != 0];
    v348[29] = v229;
    v347[30] = @"is_online_static_unlock";
    v228 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 82) != 0];
    v348[30] = v228;
    v347[31] = @"is_online_shortterm_unlock";
    v227 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 83) != 0];
    v348[31] = v227;
    v347[32] = @"is_shortterm_unlock";
    v226 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 84) != 0];
    v348[32] = v226;
    v347[33] = @"as_dot_ir_pass";
    v225 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 85) != 0];
    v348[33] = v225;
    v347[34] = @"as_fused_ir_pass";
    v224 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 86) != 0];
    v348[34] = v224;
    v347[35] = @"as_flood_ir_pass";
    v223 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 87) != 0];
    v348[35] = v223;
    v347[36] = @"has_attention";
    v222 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 88) != 0];
    v348[36] = v222;
    v347[37] = @"first_bio_flood_frame";
    v345[0] = @"distance";
    v221 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 130)];
    v346[0] = v221;
    v345[1] = @"bb_x";
    v220 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 132)];
    v346[1] = v220;
    v345[2] = @"bb_y";
    v219 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 134)];
    v346[2] = v219;
    v345[3] = @"bb_w";
    v218 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 136)];
    v346[3] = v218;
    v345[4] = @"bb_h";
    v217 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 138)];
    v346[4] = v217;
    v345[5] = @"exposure";
    v216 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v303 + 140)];
    v346[5] = v216;
    v215 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v346 forKeys:v345 count:6];
    v348[37] = v215;
    v348[38] = logSequenceInfo_withContext_orientation_identities__lastSequenceName;
    v347[38] = @"last_sequence_name";
    v347[39] = @"face_detect_flood_frame_count";
    v214 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 117)];
    v348[39] = v214;
    v347[40] = @"bio_frame_has_eye_occlusion_count";
    v213 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 119)];
    v348[40] = v213;
    v347[41] = @"user_feedback";
    v212 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v303 + 121)];
    v348[41] = v212;
    v347[42] = @"face_detect_user_engagement_status";
    v211 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v303 + 178)];
    v348[42] = v211;
    v347[43] = @"face_info";
    v343[0] = @"distance";
    v210 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(v303 + 144)];
    v344[0] = v210;
    v343[1] = @"face_orientation";
    v76 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(v303 + 146)];
    v344[1] = v76;
    v343[2] = @"face_pitch";
    v77 = [MEMORY[0x29EDBA070] numberWithInt:*(v303 + 147)];
    v344[2] = v77;
    v343[3] = @"face_yaw";
    v78 = [MEMORY[0x29EDBA070] numberWithInt:*(v303 + 151)];
    v344[3] = v78;
    v343[4] = @"face_roll";
    v79 = [MEMORY[0x29EDBA070] numberWithInt:*(v303 + 155)];
    v344[4] = v79;
    v80 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v344 forKeys:v343 count:5];
    v348[43] = v80;
    v347[44] = @"last_frame_has_glasses";
    v81 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 125) != 0];
    v348[44] = v81;
    v347[45] = @"last_frame_glasses_score";
    LODWORD(v82) = *(v303 + 126);
    v83 = [BLHelper numberFromFloat:v82];
    v348[45] = v83;
    v84 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v348 forKeys:v347 count:46];
    [v288 addEntriesFromDictionary:v84];

    if (self->_internal)
    {
      v341[0] = @"feature_generation_error";
      v85 = [MEMORY[0x29EDBA070] numberWithInt:*(v303 + 27)];
      v342[0] = v85;
      v341[1] = @"feature_vectors_error";
      v86 = [MEMORY[0x29EDBA070] numberWithInt:*(v303 + 31)];
      v342[1] = v86;
      v87 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v342 forKeys:v341 count:2];
      [v288 addEntriesFromDictionary:v87];
    }

    v88 = v303;
    if (*(v303 + 1))
    {
      v89 = [MEMORY[0x29EDB8E28] null];
      v90 = v303;
      if (*(v303 + 164))
      {
        v91 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 165) != 0];

        v89 = v91;
        v90 = v303;
      }

      v92 = @"fullface";
      if (!*(v90 + 159))
      {
        v92 = @"periocular";
      }

      v340[0] = v92;
      v339[0] = @"matcher_type";
      v339[1] = @"passcode_update_eligible";
      v93 = [MEMORY[0x29EDBA070] numberWithBool:*(v90 + 162) != 0];
      v340[1] = v93;
      v339[2] = @"best_frame_has_occlusion";
      v94 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 163) != 0];
      v340[2] = v94;
      v339[3] = @"flood_pattern_detection_result";
      v95 = [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 23) != 5];
      v340[3] = v95;
      v340[4] = v89;
      v339[4] = @"probing_pattern_detection_result";
      v339[5] = @"probing_pattern_score";
      LODWORD(v96) = *(v303 + 166);
      v97 = [BLHelper numberFromFloat:v96];
      v340[5] = v97;
      v339[6] = @"first_fd_frame_lux_level";
      v98 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v303 + 170)];
      v340[6] = v98;
      v339[7] = @"first_bio_frame_exposure";
      v99 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(v303 + 174)];
      v340[7] = v99;
      v100 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v340 forKeys:v339 count:8];
      [v288 addEntriesFromDictionary:v100];

      v101 = v303;
      if (*(v303 + 182))
      {
        v102 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v303 + 115)];
        v103 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v303 + 115)];
        v104 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v303 + 115)];
        v105 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v303 + 115)];
        if (*(v303 + 115))
        {
          v107 = 0;
          v108 = (v303 + 197);
          do
          {
            LODWORD(v106) = *(v108 - 3);
            v109 = [BLHelper numberFromFloat:v106];
            [v102 addObject:v109];

            LODWORD(v110) = *(v108 - 2);
            v111 = [BLHelper numberFromFloat:v110];
            [v103 addObject:v111];

            LODWORD(v112) = *(v108 - 1);
            v113 = [BLHelper numberFromFloat:v112];
            [v104 addObject:v113];

            LODWORD(v114) = *v108;
            v115 = [BLHelper numberFromFloat:v114];
            [v105 addObject:v115];

            ++v107;
            v108 += 9;
          }

          while (v107 < *(v303 + 115));
        }

        v337[0] = @"match_threshold";
        v337[1] = @"online_threshold";
        v338[0] = v102;
        v338[1] = v103;
        v337[2] = @"shortterm_threshold";
        v337[3] = @"as_threshold";
        v338[2] = v104;
        v338[3] = v105;
        v116 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v338 forKeys:v337 count:4];
        [v288 addEntriesFromDictionary:v116];

        v101 = v303;
      }

      v241 = v101 + 449;
      if (v101[183])
      {
        v117 = v101 + 115;
        v118 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:v101[115]];
        v286 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v277 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v274 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v271 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v268 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v253 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v250 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v119 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v120 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v121 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v122 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        v123 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*v117];
        if (*v117)
        {
          v125 = 0;
          v126 = v241;
          do
          {
            LODWORD(v124) = *(v126 - 12);
            v127 = [BLHelper numberFromFloat:v124];
            [v118 addObject:v127];

            LODWORD(v128) = *(v126 - 11);
            v129 = [BLHelper numberFromFloat:v128];
            [v286 addObject:v129];

            LODWORD(v130) = *(v126 - 10);
            v131 = [BLHelper numberFromFloat:v130];
            [v277 addObject:v131];

            LODWORD(v132) = *(v126 - 9);
            v133 = [BLHelper numberFromFloat:v132];
            [v274 addObject:v133];

            LODWORD(v134) = *(v126 - 8);
            v135 = [BLHelper numberFromFloat:v134];
            [v271 addObject:v135];

            LODWORD(v136) = *(v126 - 7);
            v137 = [BLHelper numberFromFloat:v136];
            [v268 addObject:v137];

            LODWORD(v138) = *(v126 - 6);
            v139 = [BLHelper numberFromFloat:v138];
            [v253 addObject:v139];

            LODWORD(v140) = *(v126 - 5);
            v141 = [BLHelper numberFromFloat:v140];
            [v250 addObject:v141];

            LODWORD(v142) = *(v126 - 4);
            v143 = [BLHelper numberFromFloat:v142];
            [v119 addObject:v143];

            LODWORD(v144) = *(v126 - 3);
            v145 = [BLHelper numberFromFloat:v144];
            [v120 addObject:v145];

            LODWORD(v146) = *(v126 - 2);
            v147 = [BLHelper numberFromFloat:v146];
            [v121 addObject:v147];

            LODWORD(v148) = *(v126 - 1);
            v149 = [BLHelper numberFromFloat:v148];
            [v122 addObject:v149];

            LODWORD(v150) = *v126;
            v151 = [BLHelper numberFromFloat:v150];
            [v123 addObject:v151];

            ++v125;
            v126 += 52;
          }

          while (v125 < *(v303 + 115));
        }

        v335[0] = @"ir_score";
        v335[1] = @"depth_score";
        v336[0] = v118;
        v336[1] = v286;
        v335[2] = @"ir_online_score";
        v335[3] = @"depth_online_score";
        v336[2] = v277;
        v336[3] = v274;
        v335[4] = @"as_dotted_score";
        v335[5] = @"as_flood_score";
        v336[4] = v271;
        v336[5] = v268;
        v335[6] = @"as_score";
        v335[7] = @"as_threshold_dynamic";
        v336[6] = v253;
        v336[7] = v250;
        v335[8] = @"as_score_minus_as_threshold";
        v335[9] = @"as_depth_score";
        v336[8] = v119;
        v336[9] = v120;
        v335[10] = @"min_depth_score";
        v335[11] = @"as_depth_threshold";
        v336[10] = v121;
        v336[11] = v122;
        v335[12] = @"scene_matcher_score";
        v336[12] = v123;
        v152 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v336 forKeys:v335 count:13];
        [v288 addEntriesFromDictionary:v152];

        v101 = v303;
      }

      if (v101[184])
      {
        v153 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v303 + 115)];
        v154 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v303 + 115)];
        v155 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v303 + 115)];
        v156 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:*(v303 + 115)];
        if (*(v303 + 115))
        {
          v158 = 0;
          v159 = v241 + 276;
          do
          {
            LODWORD(v157) = *(v159 - 3);
            v160 = [BLHelper numberFromFloat:v157];
            [v153 addObject:v160];

            LODWORD(v161) = *(v159 - 2);
            v162 = [BLHelper numberFromFloat:v161];
            [v154 addObject:v162];

            LODWORD(v163) = *(v159 - 1);
            v164 = [BLHelper numberFromFloat:v163];
            [v155 addObject:v164];

            LODWORD(v165) = *v159;
            v166 = [BLHelper numberFromFloat:v165];
            [v156 addObject:v166];

            ++v158;
            v159 += 4;
          }

          while (v158 < *(v303 + 115));
        }

        v333[0] = @"overall_score";
        v333[1] = @"overall_online_score";
        v334[0] = v153;
        v334[1] = v154;
        v333[2] = @"overall_shortterm_score";
        v333[3] = @"depth_shortterm_score";
        v334[2] = v155;
        v334[3] = v156;
        v167 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v334 forKeys:v333 count:4];
        [v288 addEntriesFromDictionary:v167];
      }

      v88 = v303;
    }

    if (v88[2])
    {
      v16 = 0;
    }

    else
    {
      v16 = v88[66] != 0 && !v242;
    }

    if (v88[65] && !v88[66])
    {
      v168 = @"rp_noface";
    }

    else if (v88[67])
    {
      if (v242)
      {
LABEL_110:
        v169 = [MEMORY[0x29EDB8DB0] date];
        [(BioLog *)self logAllVsAllWithDate:v169];

        goto LABEL_111;
      }

      v168 = @"rp_nomatch";
    }

    else
    {
      v168 = @"rp_matchfailure";
      if (v88[69])
      {
        v168 = @"rp_nomatch";
      }

      if (v88[69] != 0 && v242)
      {
        goto LABEL_110;
      }
    }

    v283 = v168;
    goto LABEL_110;
  }

  if (v29 != 3)
  {
    v329 = @"seq_type";
    v37 = [MEMORY[0x29EDB8E28] null];
    v330 = v37;
    v38 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v330 forKeys:&v329 count:1];
    [v288 addEntriesFromDictionary:v38];

LABEL_57:
    v283 = 0;
    v16 = 0;
    goto LABEL_111;
  }

  v351[0] = @"attn";
  v350[0] = @"seq_type";
  v350[1] = @"face_detected";
  if (*(v303 + 65))
  {
    [MEMORY[0x29EDBA070] numberWithBool:*(v303 + 66) != 0];
  }

  else
  {
    [MEMORY[0x29EDB8E28] null];
  }
  v55 = ;
  v351[1] = v55;
  v350[2] = @"face_detect_result_code";
  v56 = [MEMORY[0x29EDBA070] numberWithInt:*(v303 + 67)];
  v351[2] = v56;
  v57 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v351 forKeys:v350 count:3];
  [v288 addEntriesFromDictionary:v57];

  if (!*(v303 + 65))
  {
    goto LABEL_57;
  }

  v16 = 0;
  if (*(v303 + 66))
  {
    v36 = 0;
  }

  else
  {
    v36 = @"rp_noface";
  }

LABEL_56:
  v283 = v36;
LABEL_111:
  v17 = v247 != 0;
  v170 = v288;

  v300 = v170;
LABEL_112:
  v310 = 0;
  v311 = &v310;
  v312 = 0x3032000000;
  v313 = __Block_byref_object_copy__0;
  v314 = __Block_byref_object_dispose__0;
  v315 = 0;
  v171 = [MEMORY[0x29EDBFD50] sharedInstance];
  v172 = [v171 BOOLForKey:@"framesDebugLoggingEnabled"];

  if (v172)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v323) = 0;
    frameDebugExtraQueue = self->_frameDebugExtraQueue;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke;
    block[3] = &unk_29EE549E8;
    block[4] = self;
    block[5] = &v310;
    block[7] = v303;
    block[6] = buf;
    dispatch_sync(frameDebugExtraQueue, block);
    if (*(*&buf[8] + 24) == 1)
    {
      frameDebugExtraSemaphore = self->_frameDebugExtraSemaphore;
      v175 = dispatch_time(0, 250000000);
      dispatch_semaphore_wait(frameDebugExtraSemaphore, v175);
      v176 = self->_frameDebugExtraQueue;
      v308[0] = MEMORY[0x29EDCA5F8];
      v308[1] = 3221225472;
      v308[2] = __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke_741;
      v308[3] = &unk_29EE54A10;
      v308[6] = v303;
      v308[4] = self;
      v308[5] = &v310;
      dispatch_sync(v176, v308);
    }

    _Block_object_dispose(buf, 8);
  }

  v327[0] = @"biolog_file_type";
  v327[1] = @"version";
  v328[0] = @"sequence";
  v328[1] = &unk_2A1E03810;
  v327[2] = @"nanoepoch";
  v177 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:*v291];
  v328[2] = v177;
  v327[3] = @"epoch";
  [v301 timeIntervalSince1970];
  v178 = [BLHelper numberFromDouble:?];
  v328[3] = v178;
  v327[4] = @"epoch_seq_end";
  [v292 timeIntervalSince1970];
  v179 = [BLHelper numberFromDouble:?];
  v328[4] = v179;
  v328[5] = v300;
  v327[5] = @"seq_data";
  v327[6] = @"battery_level";
  v180 = +[BLHelper deviceBatteryLevel];
  v328[6] = v180;
  v327[7] = @"frame_debug_extra_array";
  v181 = [BLHelper objectOrNSNull:v311[5]];
  v328[7] = v181;
  v182 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v328 forKeys:v327 count:8];

  v183 = MEMORY[0x29EDBA0F8];
  v184 = *(v303 + 12);
  [v301 timeIntervalSince1970];
  v186 = v185;
  v187 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v301];
  v188 = [v183 stringWithFormat:@"seq-%05d-%ld%@", v184, v186, v187];

  if (v188)
  {
    v189 = [(BioLog *)self sequencePathForId:v291];
    v190 = v189;
    if (v189)
    {
      v191 = [v189 lastPathComponent];
      v192 = logSequenceInfo_withContext_orientation_identities__lastSequenceName;
      logSequenceInfo_withContext_orientation_identities__lastSequenceName = v191;

      v193 = [v190 stringByAppendingPathComponent:v188];
      if (v193)
      {
        v194 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v182 options:3 error:0];
        v195 = v194;
        if (__osLog_BioLog)
        {
          v196 = __osLog_BioLog;
        }

        else
        {
          v196 = MEMORY[0x29EDCA988];
        }

        if (!v194)
        {
          if (os_log_type_enabled(v196, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *&buf[4] = "jsonData";
            *&buf[12] = 2048;
            *&buf[14] = 0;
            *&buf[22] = 2080;
            v323 = &unk_296D32C0B;
            v324 = 2080;
            *v325 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
            *&v325[8] = 1024;
            v326 = 1513;
            _os_log_impl(&dword_296CA4000, v196, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }

          v195 = 0;
          goto LABEL_143;
        }

        v197 = v196;
        if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
        {
          var0 = a4->var0;
          v199 = [v195 length];
          *buf = 134219010;
          *&buf[4] = var0;
          *&buf[12] = 2048;
          *&buf[14] = v199;
          *&buf[22] = 2112;
          v323 = v193;
          v324 = 1024;
          *v325 = v17;
          *&v325[4] = 1024;
          *&v325[6] = v16;
          _os_log_impl(&dword_296CA4000, v197, OS_LOG_TYPE_DEFAULT, "logSequenceInfo %llu: %lu > %@.json (canceled: %d, matchFailed: %d)\n", buf, 0x2Cu);
        }

        v200 = [v193 stringByAppendingString:@".json"];
        v201 = [(BioLog *)self createFileAtPath:v200 contents:v195 attributes:self->_fileAttributesAutoUpload purgeable:1];

        if (!v201)
        {
          [BioLog logSequenceInfo:withContext:orientation:identities:];
        }

        if (self->_internal || !*(v303 + 2))
        {
          v202 = v283;
          if (!v283)
          {
            if (!self->_internal)
            {
LABEL_137:
              if (v16 && self->_internal)
              {
                v206 = [MEMORY[0x29EDB9400] defaultWorkspace];
                if ([v206 applicationIsInstalled:@"com.apple.vetap.thegobbler"])
                {
                  v207 = [MEMORY[0x29EDBFD50] sharedInstance];
                  v208 = [v207 BOOLForKey:@"bioLogMatchFailureSettingsPrompt"];

                  if (v208)
                  {
                    v306[0] = MEMORY[0x29EDCA5F8];
                    v306[1] = 3221225472;
                    v306[2] = __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke_786;
                    v306[3] = &unk_29EE54A38;
                    v190 = v190;
                    v307 = v190;
                    [BLHelper displayUserPrompt:0 strings:&unk_2A1E03AA8 completion:v306];
                  }
                }

                else
                {
                }
              }

              goto LABEL_143;
            }

LABEL_134:
            if (*(v303 + 14) == 2)
            {
              v203 = [MEMORY[0x29EDBFD50] sharedInstance];
              v204 = [v203 BOOLForKey:@"bioLogMatchTailspin"];

              if (v204)
              {
                v205 = [v193 stringByAppendingString:@".tailspin"];
                [BLHelper writeTailspinToFile:v205];
              }
            }

            goto LABEL_137;
          }
        }

        else
        {
          v202 = @"rp_canceled";
        }

        [BLRetention setRetentionType:v202 atPath:v190];
        if (!self->_internal)
        {
          goto LABEL_137;
        }

        goto LABEL_134;
      }

      [BioLog logSequenceInfo:v190 withContext:&v320 orientation:&v321 identities:buf];
    }

    else
    {
      [BioLog logSequenceInfo:withContext:orientation:identities:];
    }
  }

  else
  {
    [BioLog logSequenceInfo:withContext:orientation:identities:];
  }

  v190 = v320;
  v193 = v321;
  v195 = *buf;
LABEL_143:

  _Block_object_dispose(&v310, 8);
LABEL_144:

  v209 = *MEMORY[0x29EDCA608];
}

void __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke(void *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  *(a1[4] + 208) = 0;
  v2 = a1[7];
  v3 = *(v2 + 14);
  if (v3 == 2)
  {
    v4 = 2 * *(v2 + 105);
  }

  else
  {
    if (v3 != 1)
    {
      goto LABEL_6;
    }

    v4 = *(v2 + 66);
  }

  *(a1[4] + 208) = v4;
LABEL_6:
  v5 = a1[4];
  if (v5[24] != *(v2 + 12))
  {
    if (v5[26])
    {
      v6 = (__osLog_BioLog ? __osLog_BioLog : MEMORY[0x29EDCA988]);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *(a1[4] + 192);
        v8 = *(a1[7] + 12);
        v13 = 134218240;
        v14 = v7;
        v15 = 1024;
        v16 = v8;
        _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_ERROR, "WARNING: _frameDebugExtraSequenceNumber != sequenceInfo->sequenceId.number (%lu != %u)\n", &v13, 0x12u);
      }
    }

    goto LABEL_15;
  }

  if (v5[25] < v5[26])
  {
    *(*(a1[6] + 8) + 24) = 1;
LABEL_15:
    v9 = *MEMORY[0x29EDCA608];
    return;
  }

  v5[26] = 0;
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 184));
  v10 = a1[4];
  v11 = *(v10 + 184);
  *(v10 + 184) = 0;
  v12 = *MEMORY[0x29EDCA608];
}

void __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke_741(void *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = a1[4];
  v3 = MEMORY[0x29EDCA988];
  if (*(v2 + 192) == *(a1[6] + 12))
  {
    *(v2 + 208) = 0;
    objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 184));
    v4 = a1[4];
    v5 = *(v4 + 184);
    *(v4 + 184) = 0;
  }

  else
  {
    if (__osLog_BioLog)
    {
      v6 = __osLog_BioLog;
    }

    else
    {
      v6 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1[4] + 192);
      v8 = *(a1[6] + 12);
      v12 = 134218240;
      v13 = v7;
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_ERROR, "WARNING: _frameDebugExtraSequenceNumber != sequenceInfo->sequenceId.number (%lu != %u)\n", &v12, 0x12u);
    }
  }

  if (__osLog_BioLog)
  {
    v9 = __osLog_BioLog;
  }

  else
  {
    v9 = v3;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(*(a1[5] + 8) + 40) != 0;
    v12 = 67109120;
    LODWORD(v13) = v10;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_INFO, "Note: Delayed _frameDebugExtraArray collected: %u\n", &v12, 8u);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void __61__BioLog_logSequenceInfo_withContext_orientation_identities___block_invoke_786(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v3 = [MEMORY[0x29EDBFD50] sharedInstance];
    [v3 setObject:*(a1 + 32) forKey:@"bioLogLastFailedSequence"];

    v4 = [MEMORY[0x29EDBFD50] sharedInstance];
    [v4 synchronize];

    if (__osLog_BioLog)
    {
      v5 = __osLog_BioLog;
    }

    else
    {
      v5 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = @"prefs:root=INTERNAL_SETTINGS&path=Face%20ID";
      _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "displayUserPrompt completion openURL %@\n", &v10, 0xCu);
    }

    v6 = [MEMORY[0x29EDB9400] defaultWorkspace];
    v7 = [MEMORY[0x29EDB8E70] URLWithString:@"prefs:root=INTERNAL_SETTINGS&path=Face%20ID"];
    [v6 openSensitiveURL:v7 withOptions:0];
  }

  v8 = [MEMORY[0x29EDBFD50] sharedInstance];
  [v8 setBool:0 forKey:@"bioLogMatchFailureSettingsPrompt"];

  v9 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceDebug:(id)a3 withContext:(id *)a4
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = a3;
  if (!self->_internal)
  {
    [BioLog logSequenceDebug:withContext:];
    goto LABEL_15;
  }

  v7 = [MEMORY[0x29EDBFD60] dateFromNanoTime:a4->var2.var0 nanoseconds:0];
  v8 = MEMORY[0x29EDBA0F8];
  var1 = a4->var2.var1;
  [v7 timeIntervalSince1970];
  v11 = v10;
  v12 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v7];
  v13 = [v8 stringWithFormat:@"seq-%05d-%ld%@", var1, v11, v12];

  v14 = [(BioLog *)self sequencePathForId:&a4->var2];
  v15 = [v14 stringByAppendingPathComponent:v13];

  if (__osLog_BioLog)
  {
    v16 = __osLog_BioLog;
  }

  else
  {
    v16 = MEMORY[0x29EDCA988];
  }

  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      var0 = a4->var0;
      v18 = v16;
      *buf = 134218754;
      *&buf[4] = var0;
      v25 = 2048;
      v26 = [v6 length];
      v27 = 2112;
      v28 = v15;
      v29 = 2080;
      v30 = ".prlt";
      _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_DEFAULT, "logSequenceDebug %llu: %lu > %@%s\n", buf, 0x2Au);
    }

    v19 = [v15 stringByAppendingString:@".prlt"];
    v20 = [(BioLog *)self createFileAtPath:v19 contents:v6 attributes:self->_fileAttributesProtected purgeable:1];

    if (v20)
    {
      goto LABEL_9;
    }

    [BioLog logSequenceDebug:withContext:];
LABEL_15:
    v15 = v22;
    v13 = v23;
    v7 = *buf;
    goto LABEL_9;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "filePath";
    v25 = 2048;
    v26 = 0;
    v27 = 2080;
    v28 = &unk_296D32C0B;
    v29 = 2080;
    v30 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
    v31 = 1024;
    v32 = 1607;
    _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
  }

  v15 = 0;
LABEL_9:

  v21 = *MEMORY[0x29EDCA608];
}

- (id)eventPathWithName:(id)a3 date:(id)a4
{
  v6 = MEMORY[0x29EDBA0F8];
  sequenceNumber = self->_sequenceNumber;
  v8 = a4;
  v9 = a3;
  [v8 timeIntervalSince1970];
  v11 = v10;
  v12 = [(NSDateFormatter *)self->_milisecondsFormatter stringFromDate:v8];

  v13 = [v6 stringWithFormat:@"%05d-%ld%@-%@.evt", sequenceNumber, v11, v12, v9];

  v14 = [(NSString *)self->_logPath stringByAppendingPathComponent:v13];
  v15 = [MEMORY[0x29EDB9FB8] defaultManager];
  LOBYTE(v9) = [v15 fileExistsAtPath:v14];

  if ((v9 & 1) == 0)
  {
    v16 = [MEMORY[0x29EDB9FB8] defaultManager];
    v17 = [v16 createDirectoryAtPath:v14 withIntermediateDirectories:1 attributes:self->_fileAttributes error:0];

    if (v17)
    {
      [BLRetention setPurgeableAtPath:v14 directory:1];
    }

    else
    {
      [BioLog eventPathWithName:v14 date:?];
      v14 = 0;
    }
  }

  return v14;
}

- (void)logRemoveIdentity:(id)a3 withTemplateListData:(id)a4 templateSize:(unint64_t)a5 client:(id)a6 isPO:(BOOL)a7
{
  v7 = a7;
  v75[4] = *MEMORY[0x29EDCA608];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = [MEMORY[0x29EDB8DB0] date];
  v16 = v15;
  if (self->_internal)
  {
    v62 = self;
    v48 = a5;
    v64 = v13;
    v74[0] = @"biolog_file_type";
    v74[1] = @"version";
    v75[0] = @"event";
    v75[1] = &unk_2A1E037F8;
    v74[2] = @"epoch";
    v17 = MEMORY[0x29EDBA070];
    [v15 timeIntervalSince1970];
    v60 = [v17 numberWithDouble:?];
    v74[3] = @"log_data";
    v72[0] = @"event_name";
    v72[1] = @"identity_part";
    v18 = @"fullface";
    v75[2] = v60;
    v49 = v7;
    if (v7)
    {
      v18 = @"periocular";
    }

    v73[0] = @"identity_removal";
    v73[1] = v18;
    v72[2] = @"identity_uuid";
    v61 = v16;
    v59 = [v12 uuid];
    v58 = [v59 UUIDString];
    v57 = [BLHelper objectOrNSNull:v58];
    v73[2] = v57;
    v72[3] = @"identity_name";
    v56 = [v12 name];
    v55 = [BLHelper objectOrNSNull:v56];
    v73[3] = v55;
    v72[4] = @"identity_cretion_time";
    v19 = MEMORY[0x29EDBA070];
    v54 = [v12 creationTime];
    [v54 timeIntervalSince1970];
    v53 = [v19 numberWithDouble:?];
    v52 = [BLHelper objectOrNSNull:v53];
    v73[4] = v52;
    v72[5] = @"client_bundle_id";
    v51 = [v14 clientInfo];
    v50 = [v51 valueForKey:@"BKClientBundleIdentifier"];
    v20 = [BLHelper objectOrNSNull:v50];
    v73[5] = v20;
    v72[6] = @"client_process_name";
    v21 = [v14 clientInfo];
    v22 = [v21 valueForKey:@"BKClientProcessName"];
    v23 = [BLHelper objectOrNSNull:v22];
    v73[6] = v23;
    v72[7] = @"client_connection_id";
    v63 = v14;
    v24 = [v14 clientInfo];
    v25 = [v24 valueForKey:@"BKClientConnectionId"];
    v26 = [BLHelper objectOrNSNull:v25];
    v73[7] = v26;
    v72[8] = @"user_id";
    v65 = v12;
    v27 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(v12, "userID")}];
    v73[8] = v27;
    v28 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v73 forKeys:v72 count:9];
    v75[3] = v28;
    v29 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v75 forKeys:v74 count:4];

    v30 = v29;
    v31 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:v29 options:3 error:0];
    if (!v31)
    {
      [BioLog logRemoveIdentity:withTemplateListData:templateSize:client:isPO:];
    }

    v32 = MEMORY[0x29EDBA0F8];
    v16 = v61;
    sequenceNumber = v62->_sequenceNumber;
    [v61 timeIntervalSince1970];
    v35 = v34;
    v36 = [(NSDateFormatter *)v62->_milisecondsFormatter stringFromDate:v61];
    v37 = [v32 stringWithFormat:@"evt-%05d-%ld%@", sequenceNumber, v35, v36];

    v38 = [(BioLog *)v62 eventPathWithName:@"remove" date:v61];
    if (v38)
    {
      v39 = v38;
      v40 = [v38 stringByAppendingPathComponent:v37];
      if (v62->_internal)
      {
        v41 = @"rp_enroll";
      }

      else
      {
        v41 = @"rp_keep";
      }

      [BLRetention setRetentionType:v41 atPath:v39];
      if (__osLog_BioLog)
      {
        v42 = __osLog_BioLog;
      }

      else
      {
        v42 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        v44 = [v65 uuid];
        *buf = 138412802;
        v67 = v44;
        v68 = 2112;
        v69 = v40;
        v70 = 2080;
        v71 = ".json";
        _os_log_impl(&dword_296CA4000, v43, OS_LOG_TYPE_DEFAULT, "logRemoveIdentity %@ > %@%s\n", buf, 0x20u);
      }

      v45 = [v40 stringByAppendingString:@".json"];
      v46 = [(BioLog *)v62 createFileAtPath:v45 contents:v31 attributes:v62->_fileAttributesProtected purgeable:1];

      v14 = v63;
      if (!v46)
      {
        [BioLog logRemoveIdentity:withTemplateListData:templateSize:client:isPO:];
      }

      v13 = v64;
      [(BioLog *)v62 logTemplateList:v64 withTemplateSize:v48 sequenceNumber:v62->_sequenceNumber date:v61 toPath:v39 isPO:v49];

      v12 = v65;
    }

    else
    {
      [BioLog logRemoveIdentity:v31 withTemplateListData:v29 templateSize:v37 client:? isPO:?];
      v13 = v64;
      v12 = v65;
      v14 = v63;
    }
  }

  else
  {
    [BioLog logRemoveIdentity:withTemplateListData:templateSize:client:isPO:];
  }

  v47 = *MEMORY[0x29EDCA608];
}

- (void)logSecureFaceDetectStart:(id *)a3
{
  v39 = *MEMORY[0x29EDCA608];
  secureFaceDetectDict = self->_secureFaceDetectDict;
  v6 = MEMORY[0x29EDCA988];
  if (secureFaceDetectDict)
  {
    if (__osLog_BioLog)
    {
      v7 = __osLog_BioLog;
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_ERROR, "logSecureFaceDetectStart: logSecureFaceDetectInfo previous sequence!\n", buf, 2u);
    }

    [(BioLog *)self logSecureFaceDetectInfo];
    secureFaceDetectDict = self->_secureFaceDetectDict;
  }

  self->_secureFaceDetectDict = 0;

  v8 = *(&a3->var2 + 1);
  *(&self->_secureSequenceId.nanotime + 7) = *(&a3->var3.var0 + 3);
  self->_secureSequenceId.nanotime = v8;
  if (self->_secureSequenceId.type != 3 || ([MEMORY[0x29EDBFD50] sharedInstance], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLForKey:", @"faceDetectSequencesLoggingEnabled"), v9, v10))
  {
    if (__osLogTrace_BioLog)
    {
      v11 = __osLogTrace_BioLog;
    }

    else
    {
      v11 = v6;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = WORD2(a3->var3.var0);
      *buf = 67109120;
      v38 = v12;
      _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEFAULT, "logSecureFaceDetectStart <- [%u:*]\n", buf, 8u);
    }

    v13 = os_transaction_create();
    dispatchQueueWriting = self->_dispatchQueueWriting;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __35__BioLog_logSecureFaceDetectStart___block_invoke;
    block[3] = &unk_29EE546F8;
    block[4] = self;
    v32 = v13;
    v15 = v13;
    dispatch_async(dispatchQueueWriting, block);

    v16 = [MEMORY[0x29EDBFD60] dateFromNanoTime:self->_secureSequenceId.nanotime nanoseconds:0];
    v30 = objc_alloc(MEMORY[0x29EDB8E00]);
    v35[0] = @"biolog_file_type";
    v35[1] = @"version";
    v36[0] = @"secureFaceDetectSequence";
    v36[1] = &unk_2A1E03828;
    v35[2] = @"epoch";
    v17 = MEMORY[0x29EDBA070];
    [v16 timeIntervalSince1970];
    v18 = [v17 numberWithDouble:?];
    v36[2] = v18;
    v35[3] = @"seq_data";
    v19 = MEMORY[0x29EDB8E00];
    v33[0] = @"request";
    v20 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a3->var0];
    v34[0] = v20;
    v33[1] = @"flags";
    v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a3->var1];
    v34[1] = v21;
    v33[2] = @"sessionID";
    v22 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a3->var2];
    v34[2] = v22;
    v34[3] = MEMORY[0x29EDB8EA8];
    v33[3] = @"stopped";
    v33[4] = @"final_state";
    v34[4] = &unk_2A1E03840;
    v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v34 forKeys:v33 count:5];
    v24 = [v19 dictionaryWithDictionary:v23];
    v36[3] = v24;
    v35[4] = @"frame_array";
    v25 = [MEMORY[0x29EDB8DE8] array];
    v36[4] = v25;
    v26 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
    v27 = [v30 initWithDictionary:v26];
    v28 = self->_secureFaceDetectDict;
    self->_secureFaceDetectDict = v27;
  }

  v29 = *MEMORY[0x29EDCA608];
}

- (void)logSecureFaceDetectStop
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logSecureFrameMeta:(id)a3 timestamp:(id)a4
{
  v105 = *MEMORY[0x29EDCA608];
  v60 = a3;
  v61 = a4;
  if (!v60)
  {
    [BioLog logSecureFrameMeta:timestamp:];
    goto LABEL_76;
  }

  v59 = self;
  if (self->_secureSequenceId.type != 3 || ([MEMORY[0x29EDBFD50] sharedInstance], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLForKey:", @"faceDetectSequencesLoggingEnabled"), v6, v7))
  {
    if (!self->_secureFaceDetectDict)
    {
      [BioLog logSecureFrameMeta:timestamp:];
      goto LABEL_76;
    }

    v76 = [MEMORY[0x29EDB8E00] dictionary];
    if (!v76)
    {
      [BioLog logSecureFrameMeta:timestamp:];
      goto LABEL_76;
    }

    v8 = MEMORY[0x29EDBA070];
    [v61 timeIntervalSince1970];
    v9 = [v8 numberWithDouble:?];
    [v76 setObject:v9 forKeyedSubscript:@"timestamp"];

    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    obj = v60;
    v75 = [obj countByEnumeratingWithState:&v80 objects:v104 count:16];
    if (!v75)
    {
      goto LABEL_75;
    }

    v73 = *MEMORY[0x29EDBD598];
    v74 = *v81;
    v65 = *MEMORY[0x29EDBD590];
    v63 = *MEMORY[0x29EDBD588];
    v62 = *MEMORY[0x29EDBD5A0];
    *&v10 = 136316162;
    v58 = v10;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v81 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v80 + 1) + 8 * v11);
        if (v12)
        {
          [*(*(&v80 + 1) + 8 * v11) time];
          if (v79)
          {
            v13 = MEMORY[0x29EDBA070];
            [v12 time];
            [v12 time];
            *&v14 = v78 / v77;
            v15 = [v13 numberWithFloat:v14];
            goto LABEL_16;
          }
        }

        else
        {
          v79 = 0;
        }

        v15 = [MEMORY[0x29EDB8E28] null];
LABEL_16:
        v16 = v15;
        [v76 setObject:v15 forKeyedSubscript:{@"timestamp_av", v58}];

        v17 = [v12 type];
        LODWORD(v16) = v17 == v73;

        if (v16)
        {
          v29 = v12;
          v30 = [v76 objectForKeyedSubscript:@"face_id_readiness"];
          v31 = v30 == 0;

          if (!v31)
          {
            v51 = (__osLog_BioLog ? __osLog_BioLog : MEMORY[0x29EDCA988]);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *buf = v58;
              v95 = "frameDict[@face_id_readiness] == ((void *)0)";
              v96 = 2048;
              v97 = 0;
              v98 = 2080;
              v99 = &unk_296D32C0B;
              v100 = 2080;
              v101 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
              v102 = 1024;
              v103 = 1835;
              _os_log_impl(&dword_296CA4000, v51, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
            }
          }

          v92[0] = @"ready";
          v27 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v29, "isReady")}];
          v93[0] = v27;
          v92[1] = @"coaching_status";
          v28 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v29, "coachingStatus")}];
          v93[1] = v28;
          v92[2] = @"user_engagement_status";
          v32 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v29, "userEngagementStatus")}];
          v93[2] = v32;
          v33 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v93 forKeys:v92 count:3];
          [v76 setObject:v33 forKeyedSubscript:@"face_id_readiness"];
        }

        else
        {
          v18 = [v12 type];
          v19 = v18 == v65;

          if (v19)
          {
            v34 = v12;
            v35 = [v76 objectForKeyedSubscript:@"face"];
            v36 = v35 == 0;

            if (v36)
            {
              v37 = [MEMORY[0x29EDB8DE8] array];
              [v76 setObject:v37 forKeyedSubscript:@"face"];
            }

            v27 = [v76 objectForKeyedSubscript:@"face"];
            v90[0] = @"occluded_features";
            if ([v34 hasOccludedFeatures])
            {
              [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v34, "occludedFeatures")}];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v28 = ;
            v91[0] = v28;
            v90[1] = @"pitch_angle";
            if ([v34 hasPitchAngle])
            {
              [v34 pitchAngle];
              [BLHelper numberFromDouble:?];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v72 = ;
            v91[1] = v72;
            v90[2] = @"yaw_angle";
            if ([v34 hasYawAngle])
            {
              [v34 yawAngle];
              [BLHelper numberFromDouble:?];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v71 = ;
            v91[2] = v71;
            v90[3] = @"roll_angle";
            if ([v34 hasRollAngle])
            {
              [v34 rollAngle];
              [BLHelper numberFromDouble:?];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v70 = ;
            v91[3] = v70;
            v90[4] = @"distance";
            if ([v34 hasDistance])
            {
              [v34 distance];
              [BLHelper numberFromDouble:?];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v69 = ;
            v91[4] = v69;
            v90[5] = @"bounds";
            v88[0] = @"x";
            [v34 bounds];
            v68 = [BLHelper numberFromDouble:?];
            v89[0] = v68;
            v88[1] = @"y";
            [v34 bounds];
            v67 = [BLHelper numberFromDouble:v41];
            v89[1] = v67;
            v88[2] = @"width";
            [v34 bounds];
            v66 = [BLHelper numberFromDouble:v42];
            v89[2] = v66;
            v88[3] = @"height";
            [v34 bounds];
            v44 = [BLHelper numberFromDouble:v43];
            v89[3] = v44;
            v45 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v89 forKeys:v88 count:4];
            v91[5] = v45;
            v90[6] = @"paying_attention";
            if ([v34 hasPayingAttention])
            {
              [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v34, "payingAttention")}];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v46 = ;
            v91[6] = v46;
            v90[7] = @"orientation";
            if ([v34 hasOrientation])
            {
              [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v34, "orientation")}];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v47 = ;
            v91[7] = v47;
            v90[8] = @"confidence";
            if ([v34 hasConfidence])
            {
              [v34 confidence];
              [BLHelper numberFromDouble:?];
            }

            else
            {
              [MEMORY[0x29EDB8E28] null];
            }
            v48 = ;
            v91[8] = v48;
            v49 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v91 forKeys:v90 count:9];
            [v27 addObject:v49];
          }

          else
          {
            v20 = [v12 type];
            v21 = v20 == v63;

            if (v21)
            {
              v38 = v12;
              v39 = [v76 objectForKeyedSubscript:@"eye_relief_status"];
              v40 = v39 == 0;

              if (!v40)
              {
                v52 = (__osLog_BioLog ? __osLog_BioLog : MEMORY[0x29EDCA988]);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *buf = v58;
                  v95 = "frameDict[@eye_relief_status] == ((void *)0)";
                  v96 = 2048;
                  v97 = 0;
                  v98 = 2080;
                  v99 = &unk_296D32C0B;
                  v100 = 2080;
                  v101 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
                  v102 = 1024;
                  v103 = 1873;
                  _os_log_impl(&dword_296CA4000, v52, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                }
              }

              v86[0] = @"eye_relief_status";
              v27 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v38, "eyeReliefStatus")}];
              v86[1] = @"distance";
              v87[0] = v27;
              if ([v38 hasDistance])
              {
                [v38 distance];
                [BLHelper numberFromDouble:?];
              }

              else
              {
                [MEMORY[0x29EDB8E28] null];
              }
              v28 = ;
              v87[1] = v28;
              v50 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
              [v76 setObject:v50 forKeyedSubscript:@"eye_relief_status"];
            }

            else
            {
              v22 = [v12 type];
              v23 = v22 == v62;

              if (!v23)
              {
                goto LABEL_57;
              }

              v24 = v12;
              v25 = [v76 objectForKeyedSubscript:@"motion_to_wake"];
              v26 = v25 == 0;

              if (!v26)
              {
                if (__osLog_BioLog)
                {
                  v53 = __osLog_BioLog;
                }

                else
                {
                  v53 = MEMORY[0x29EDCA988];
                }

                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  *buf = v58;
                  v95 = "frameDict[@motion_to_wake] == ((void *)0)";
                  v96 = 2048;
                  v97 = 0;
                  v98 = 2080;
                  v99 = &unk_296D32C0B;
                  v100 = 2080;
                  v101 = "/Library/Caches/com.apple.xbs/Sources/Pearl/BioLog/BioLog.m";
                  v102 = 1024;
                  v103 = 1883;
                  _os_log_impl(&dword_296CA4000, v53, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                }
              }

              v84 = @"detected_motion";
              v27 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v24, "detectedMotion")}];
              v85 = v27;
              v28 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
              [v76 setObject:v28 forKeyedSubscript:@"motion_to_wake"];
            }
          }
        }

LABEL_57:
        ++v11;
      }

      while (v75 != v11);
      v54 = [obj countByEnumeratingWithState:&v80 objects:v104 count:16];
      v75 = v54;
      if (!v54)
      {
LABEL_75:

        v55 = v59->_secureFaceDetectDict;
        objc_sync_enter(v55);
        v56 = [(NSDictionary *)v59->_secureFaceDetectDict objectForKeyedSubscript:@"frame_array"];
        [v56 addObject:v76];

        objc_sync_exit(v55);
        break;
      }
    }
  }

LABEL_76:

  v57 = *MEMORY[0x29EDCA608];
}

- (void)logSecureFaceDetectInfo
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void __33__BioLog_logSecureFaceDetectInfo__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = [MEMORY[0x29EDB9FF0] dataWithJSONObject:*(a1 + 32) options:3 error:0];
  if (v4)
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"seq_data"];
    v6 = [v5 objectForKeyedSubscript:@"final_state"];
    v7 = [v6 isEqual:&unk_2A1E03828];

    if (v7)
    {
      [BLRetention setRetentionType:@"rp_noface" atPath:*(a1 + 40)];
    }

    objc_sync_exit(v3);

    if (__osLog_BioLog)
    {
      v8 = __osLog_BioLog;
    }

    else
    {
      v8 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v4 length];
      v11 = *(a1 + 48);
      v15 = 134218242;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEFAULT, "logSecureFaceDetectInfo: %lu > %@\n", &v15, 0x16u);
    }

    if (([*(a1 + 56) createFileAtPath:*(a1 + 48) contents:v4 attributes:*(*(a1 + 56) + 72) purgeable:1] & 1) == 0)
    {
      __33__BioLog_logSecureFaceDetectInfo__block_invoke_cold_1();
    }
  }

  else
  {
    __33__BioLog_logSecureFaceDetectInfo__block_invoke_cold_2(v3);
  }

  objc_autoreleasePoolPop(v2);
  v12 = *(a1 + 56);
  v13 = *(v12 + 248);
  *(v12 + 248) = 0;

  v14 = *MEMORY[0x29EDCA608];
}

- (void)extractFrameDebug:(id *)a3 data:(id)a4
{
  v54 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v8 = v7;
  if (!a3)
  {
    if (!OUTLINED_FUNCTION_12(__osLog_BioLog))
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_2_0();
    v52 = &unk_296D32C0B;
    OUTLINED_FUNCTION_5_0();
    v53 = 803;
LABEL_33:
    OUTLINED_FUNCTION_34(&dword_296CA4000, v4, v38, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v51);
    goto LABEL_34;
  }

  if (!v7)
  {
    if (!OUTLINED_FUNCTION_12(__osLog_BioLog))
    {
      goto LABEL_34;
    }

    OUTLINED_FUNCTION_2_0();
    v52 = &unk_296D32C0B;
    OUTLINED_FUNCTION_5_0();
    v53 = 804;
    goto LABEL_33;
  }

  var1 = a3->var1;
  frameDebugExtraSequenceNumber = self->_frameDebugExtraSequenceNumber;
  if (frameDebugExtraSequenceNumber > var1)
  {
    goto LABEL_34;
  }

  if (frameDebugExtraSequenceNumber < var1)
  {
    frameDebugExtraArray = self->_frameDebugExtraArray;
    self->_frameDebugExtraArray = 0;

    self->_frameDebugExtraSequenceNumber = a3->var1;
    self->_frameDebugExtraFrameCount = 0;
    v12 = dispatch_semaphore_create(0);
    frameDebugExtraSemaphore = self->_frameDebugExtraSemaphore;
    self->_frameDebugExtraSemaphore = v12;
  }

  ++self->_frameDebugExtraFrameCount;
  if ([(NSMutableArray *)self->_frameDebugExtraArray count]> 0xC7)
  {
    goto LABEL_34;
  }

  if (!self->_frameDebugExtraArray)
  {
    v14 = [MEMORY[0x29EDB8DE8] array];
    v15 = self->_frameDebugExtraArray;
    self->_frameDebugExtraArray = v14;

    if (!self->_frameDebugExtraArray)
    {
      if (OUTLINED_FUNCTION_12(__osLog_BioLog))
      {
        OUTLINED_FUNCTION_2_0();
        v52 = &unk_296D32C0B;
        OUTLINED_FUNCTION_5_0();
        v53 = 818;
        goto LABEL_33;
      }

LABEL_34:
      v19 = 0;
      goto LABEL_24;
    }
  }

  v16 = MEMORY[0x29EDB8E00];
  v49 = @"frameNumber";
  v17 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:a3->var2];
  v50 = v17;
  v18 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
  v19 = [v16 dictionaryWithDictionary:v18];

  [(NSMutableArray *)self->_frameDebugExtraArray addObject:v19];
  v20 = [v8 bytes];
  if ([v8 length] <= 0x1F)
  {
    if (!OUTLINED_FUNCTION_14(__osLog_BioLog))
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_2_0();
    v52 = &unk_296D32C0B;
    OUTLINED_FUNCTION_5_0();
    v53 = 826;
    goto LABEL_40;
  }

  var4 = a3->var4;
  v22 = &off_296D29000;
  if (var4 != 1)
  {
LABEL_18:
    if (var4 != 2 || (v32 = *(v20 + 40), !v32))
    {
LABEL_22:
      if (self->_frameDebugExtraFrameCount == self->_frameDebugExtraFrameCountExpected)
      {
        frameDebugExtraQueue = self->_frameDebugExtraQueue;
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = *(v22 + 462);
        block[2] = __33__BioLog_extractFrameDebug_data___block_invoke_2;
        block[3] = &unk_29EE54570;
        block[4] = self;
        dispatch_async(frameDebugExtraQueue, block);
      }

      goto LABEL_24;
    }

    if (v32 + 336892 <= [v8 length])
    {
      v33 = v22;
      v34 = self->_frameDebugExtraQueue;
      v45[0] = MEMORY[0x29EDCA5F8];
      v45[1] = *(v33 + 462);
      v45[2] = __33__BioLog_extractFrameDebug_data___block_invoke;
      v45[3] = &unk_29EE54998;
      v46 = v19;
      v35 = v34;
      v22 = v33;
      [BLHelper median:v20 + v32 + 168 count:0x4000 queue:v35 completionBlock:v45];

      goto LABEL_22;
    }

    if (!OUTLINED_FUNCTION_14(__osLog_BioLog))
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_2_0();
    v52 = &unk_296D32C0B;
    OUTLINED_FUNCTION_5_0();
    v53 = 864;
LABEL_40:
    OUTLINED_FUNCTION_34(&dword_296CA4000, &self->super, v39, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v51);
    goto LABEL_24;
  }

  v23 = *(v20 + 36);
  if (!v23)
  {
    goto LABEL_22;
  }

  v43 = v19;
  if (v23 + 674432 <= [v8 length])
  {
    v41 = v20;
    v42 = v8;
    v24 = v20 + v23;
    v25 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:3];
    v26 = 0;
    v27 = v24 + 96072;
    do
    {
      v28 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:3];
      for (i = 0; i != 12; i += 4)
      {
        v30 = [MEMORY[0x29EDBA070] numberWithInt:*(v27 + i)];
        [v28 addObject:v30];
      }

      [v25 addObject:v28];

      ++v26;
      v27 += 12;
    }

    while (v26 != 3);
    v47 = @"pose_bin_count";
    v48 = v25;
    v31 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v19 = v43;
    [v43 addEntriesFromDictionary:v31];

    var4 = a3->var4;
    v20 = v41;
    v8 = v42;
    v22 = &off_296D29000;
    goto LABEL_18;
  }

  if (OUTLINED_FUNCTION_14(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_2_0();
    v52 = &unk_296D32C0B;
    OUTLINED_FUNCTION_5_0();
    v53 = 837;
    OUTLINED_FUNCTION_34(&dword_296CA4000, &self->super, v40, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v51);
  }

LABEL_24:

  v37 = *MEMORY[0x29EDCA608];
}

- (void)initForInternalLogging:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v3, v4, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5, v6, v7, v8, 2u);
  }

  v9 = *MEMORY[0x29EDCA608];
}

- (void)initForInternalLogging:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)initForInternalLogging:(void *)a1 .cold.3(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)initForInternalLogging:(void *)a1 .cold.4(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)initForInternalLogging:(void *)a1 .cold.5(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)initForInternalLogging:(void *)a1 .cold.6(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)logLogContextWithDate:.cold.1()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logLogContextWithDate:.cold.2()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logAllVsAllWithDate:.cold.1()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logAllVsAllWithDate:.cold.2()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (id)sequencePathForId:(void *)a3 .cold.1(id *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v6, v7, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v8, v9, v10, v11, v14);
  }

  result = *a1;
  *a3 = *a2;
  *a2 = result;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

- (void)logCameraFrame:withBuffers:.cold.1()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logCameraFrame:withBuffers:.cold.2()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (BOOL)logCameraFrame:(_BYTE *)a1 sensorRawData:metaData:.cold.1(_BYTE *a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  result = *a1 == 0;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

- (double)logCameraFrame:(uint64_t)a1 sensorRawData:metaData:.cold.2(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  *&result = 0x100000001;
  *(a1 + 50) = 0x100000001;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

- (void)logCameraFrame:sensorRawData:metaData:.cold.3()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logCameraFrame:sensorRawData:metaData:.cold.4()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logInternalCameraFrame:sensorRawData:metaData:.cold.2()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logInternalCameraFrame:sensorRawData:metaData:.cold.3()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (double)logInternalCameraFrame:(uint64_t)a1 sensorRawData:metaData:.cold.4(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v10);
  }

  *&result = 0x100000001;
  *(a1 + 50) = 0x100000001;
  v9 = *MEMORY[0x29EDCA608];
  return result;
}

- (void)logInternalCameraFrame:sensorRawData:metaData:.cold.5()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logInternalCameraFrame:sensorRawData:metaData:.cold.6()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logInternalCameraFrame:sensorRawData:metaData:.cold.7()
{
  OUTLINED_FUNCTION_37();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_48();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)logTemplate:withSequenceNumber:date:index:toPath:isPO:.cold.1()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logTemplateList:withTemplateSize:sequenceNumber:date:toPath:isPO:.cold.1()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logTemplateList:withTemplateSize:sequenceNumber:date:toPath:isPO:.cold.2()
{
  v1 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_INFO, "logTemplateList: No templates.\n", v2, 2u);
  }
}

- (void)logTemplateList:withContext:isPO:.cold.1()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logTemplateList:(void *)a1 withContext:isPO:.cold.2(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)logTemplate:withContext:.cold.1()
{
  OUTLINED_FUNCTION_25();
  v9 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)logTemplate:withContext:.cold.2()
{
  OUTLINED_FUNCTION_38();
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_50(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    v4 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v5 = 1029;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3);
  }

  OUTLINED_FUNCTION_17_0();
  v2 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceInfo:(_BYTE *)a1 withContext:orientation:identities:.cold.1(_BYTE *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = __osLog_BioLog;
  if (!__osLog_BioLog)
  {
    v2 = MEMORY[0x29EDCA988];
  }

  v3 = v2;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, v11);
  }

  *a1 = 0;
  v10 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.2()
{
  v10 = *MEMORY[0x29EDCA608];
  v0 = __osLog_BioLog;
  if (!__osLog_BioLog)
  {
    v0 = MEMORY[0x29EDCA988];
  }

  v1 = v0;
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceInfo:(uint64_t)a1 withContext:(void *)a2 orientation:(void *)a3 identities:(void *)a4 .cold.3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (__osLog_BioLog)
  {
    v8 = __osLog_BioLog;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v12 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v13 = 1510;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v8, v9, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v11);
  }

  *a4 = 0;
  *a3 = 0;
  *a2 = a1;
  v10 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.4()
{
  OUTLINED_FUNCTION_25();
  v9 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.5()
{
  OUTLINED_FUNCTION_25();
  v9 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.6()
{
  OUTLINED_FUNCTION_37();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_48();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.7()
{
  OUTLINED_FUNCTION_37();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_48();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceInfo:withContext:orientation:identities:.cold.8()
{
  OUTLINED_FUNCTION_37();
  v8 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_14(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, v7);
  }

  OUTLINED_FUNCTION_48();
  v6 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceDebug:withContext:.cold.1()
{
  OUTLINED_FUNCTION_25();
  v9 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
  v7 = *MEMORY[0x29EDCA608];
}

- (void)logSequenceDebug:withContext:.cold.2()
{
  OUTLINED_FUNCTION_38();
  v6 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_50(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    v4 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v5 = 1611;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3);
  }

  OUTLINED_FUNCTION_17_0();
  v2 = *MEMORY[0x29EDCA608];
}

- (void)eventPathWithName:(void *)a1 date:.cold.1(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  v8 = *MEMORY[0x29EDCA608];
}

- (void)logRemoveIdentity:withTemplateListData:templateSize:client:isPO:.cold.1()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logRemoveIdentity:withTemplateListData:templateSize:client:isPO:.cold.2()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logRemoveIdentity:withTemplateListData:templateSize:client:isPO:.cold.3()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logRemoveIdentity:(void *)a3 withTemplateListData:templateSize:client:isPO:.cold.4(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_21(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v6, v7, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v8, v9, v10, v11, v13);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)logSecureFaceDetectState:.cold.1()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logSecureFrameMeta:timestamp:.cold.1()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logSecureFrameMeta:timestamp:.cold.2()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

- (void)logSecureFrameMeta:timestamp:.cold.3()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void __33__BioLog_logSecureFaceDetectInfo__block_invoke_cold_1()
{
  v9 = *MEMORY[0x29EDCA608];
  v0 = OUTLINED_FUNCTION_3_0(__osLog_BioLog);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6, v8);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void __33__BioLog_logSecureFaceDetectInfo__block_invoke_cold_2(void *a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_12(__osLog_BioLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7, v9);
  }

  objc_sync_exit(a1);

  v8 = *MEMORY[0x29EDCA608];
}

@end