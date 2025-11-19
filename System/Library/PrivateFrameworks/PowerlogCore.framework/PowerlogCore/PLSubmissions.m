@interface PLSubmissions
+ (id)sharedInstance;
- (BOOL)fullModeSubmissionBehavior;
- (BOOL)internalSubmissionBehavior;
- (BOOL)taskingBlobDRExists;
- (BOOL)taskingBlobExists;
- (BOOL)taskingBlobLegacyExists;
- (BOOL)taskingTypeSpecified;
- (PLStorageOperator)storageOperator;
- (PLSubmissions)init;
- (id)configFromMonitor:(id)a3;
- (id)createWatchdogForSubmissionActivity:(id)a3;
- (id)enqueueFileForUpload:(id)a3;
- (id)generateMSSSubmissionWithPayload:(id)a3;
- (id)getCurrentDRConfig;
- (id)getLastBatteryTimestampSystem;
- (id)workQueue;
- (int)checkTaskingCompletionStatus;
- (signed)submitReasonForToday;
- (void)attemptToUnregisterUploadSchedulingActivity;
- (void)cleanupTemporarySubmissionFilesForTag:(id)a3;
- (void)clearTaskingDRConfig;
- (void)deferXPCActivity:(id)a3;
- (void)disableHangtracer;
- (void)emitBlobDetectedEvent:(id)a3;
- (void)emitBlobVerifiedEvent:(id)a3;
- (void)emitCollisionEvent:(id)a3;
- (void)enableHangtracer;
- (void)enqueueSubmissionRecord:(id)a3;
- (void)fileCleanupWithRecord:(id)a3;
- (void)finishXPCActivity:(id)a3;
- (void)generateOTASubmissionAndSendTaskingEndSubmission:(BOOL)a3;
- (void)generatePLLSubmissionWithPayload:(id)a3;
- (void)handleDRConfigUpdate:(id)a3 error:(id)a4;
- (void)handleXPCActivityCallback:(id)a3;
- (void)initSubmissionQueue;
- (void)logOTAStatus:(id)a3;
- (void)logSubmissionStateToAnalytics:(id)a3;
- (void)logTaskingTablesTurnedOn:(id)a3;
- (void)performSubmission:(id)a3;
- (void)persistSubmissionInfo:(id)a3;
- (void)prepareAndEnqueueSubmissionFilesWithConfig:(id)a3;
- (void)registerUploadSchedulingActivity;
- (void)rejectTaskingDRConfig;
- (void)removeFileAtPath:(id)a3;
- (void)removeFileAtURL:(id)a3;
- (void)sendSubmissionIssueSignature:(id)a3;
- (void)setupDRTasking;
- (void)stopDRTasking;
- (void)stopWatchdogForSubmissionActivity:(id)a3;
- (void)submitRecord:(id)a3 withActivity:(id)a4;
- (void)submitRecordToDiagnosticPipeline:(id)a3 withConfig:(id)a4;
- (void)submitWithTaskingConfig:(id)a3;
- (void)taskingCleanup;
- (void)taskingModeSafeguard;
- (void)taskingModeSetup;
@end

@implementation PLSubmissions

- (id)enqueueFileForUpload:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLLogSubmission();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 filePath];
    v7 = [v4 ckTagConfig];
    *buf = 138412546;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "File enqueued for submission: %@ %@", buf, 0x16u);
  }

  v8 = [v4 filePath];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 ckTagConfig];
    if (v10)
    {
      v11 = v10;
      v12 = [v4 tagUUID];

      if (v12)
      {
        v13 = [PLSubmissionRecord alloc];
        v14 = [v4 filePath];
        v15 = [v4 tagUUID];
        v16 = [v4 ckTagConfig];
        v17 = [v4 configUUID];
        v18 = [v4 configDateReceived];
        v19 = [v4 configDateApplied];
        v20 = [(PLSubmissionRecord *)v13 initWithCKFilePath:v14 tagUUID:v15 tagConfig:v16 configUUID:v17 configDateReceived:v18 configDateApplied:v19];

        [(PLSubmissionRecord *)v20 emitAttemptEvent];
        v21 = [(PLSubmissions *)self workQueue];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __53__PLSubmissions_XPCScheduling__enqueueFileForUpload___block_invoke;
        v28[3] = &unk_1E8519100;
        v28[4] = self;
        v22 = v20;
        v29 = v22;
        dispatch_async(v21, v28);

        v23 = v29;
        v24 = v22;

        v25 = v24;
        goto LABEL_11;
      }
    }

    else
    {
    }
  }

  v24 = PLLogSubmission();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissions(XPCScheduling) enqueueFileForUpload:];
  }

  v25 = 0;
LABEL_11:

  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

uint64_t __53__PLSubmissions_XPCScheduling__enqueueFileForUpload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) submissionQueue];
  [v2 addObject:*(a1 + 40)];

  result = [*(a1 + 32) xpcActivityStarted];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);

    return [v4 registerUploadSchedulingActivity];
  }

  return result;
}

- (void)enqueueSubmissionRecord:(id)a3
{
  v4 = a3;
  v5 = [(PLSubmissions *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__PLSubmissions_XPCScheduling__enqueueSubmissionRecord___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

uint64_t __56__PLSubmissions_XPCScheduling__enqueueSubmissionRecord___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) submissionQueue];
  [v2 addObject:*(a1 + 40)];

  result = [*(a1 + 32) xpcActivityStarted];
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 32);

    return [v4 registerUploadSchedulingActivity];
  }

  return result;
}

- (void)registerUploadSchedulingActivity
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = PLLogSubmission();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Registering submission scheduler", buf, 2u);
  }

  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E9D88], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E9C40], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E9DB0], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x1E69E9DB8], 1);
  xpc_dictionary_set_string(v4, *MEMORY[0x1E69E9D18], *MEMORY[0x1E69E9D28]);
  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9D40], 20971520);
  v5 = [PLDefaults longForKey:@"submissionActivityDelayInSecs" ifNotSet:0];
  if (!v5)
  {
    v5 = 60 * arc4random_uniform(0x3Du);
  }

  v6 = PLLogSubmission();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v11 = v5;
    _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "Delay of %lld secs", buf, 0xCu);
  }

  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9C68], v5);
  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CE0]);
  xpc_dictionary_set_int64(v4, *MEMORY[0x1E69E9C98], *MEMORY[0x1E69E9CC8]);
  xpc_dictionary_set_string(v4, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  v7 = [MEMORY[0x1E695DF00] monotonicDate];
  [v7 timeIntervalSince1970];
  [(PLSubmissions *)self setLastXPCActivityTimestamp:?];

  [(PLSubmissions *)self setXpcActivityDelay:v5];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __64__PLSubmissions_XPCScheduling__registerUploadSchedulingActivity__block_invoke;
  handler[3] = &unk_1E8519FA8;
  handler[4] = self;
  xpc_activity_register("com.apple.powerlogd.XPCScheduler", v4, handler);
  [(PLSubmissions *)self setXpcActivityStarted:1];

  v8 = *MEMORY[0x1E69E9840];
}

void __64__PLSubmissions_XPCScheduling__registerUploadSchedulingActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PLLogSubmission();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "Scheduling for background work", buf, 2u);
  }

  if (xpc_activity_get_state(v3) != 2)
  {
    v6 = PLLogSubmission();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "Activity state: not to run", buf, 2u);
    }

    goto LABEL_10;
  }

  if (!xpc_activity_set_state(v3, 4))
  {
    v6 = PLLogSubmission();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __64__PLSubmissions_XPCScheduling__registerUploadSchedulingActivity__block_invoke_cold_1();
    }

LABEL_10:

    goto LABEL_11;
  }

  v5 = [*(a1 + 32) workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__PLSubmissions_XPCScheduling__registerUploadSchedulingActivity__block_invoke_14;
  v7[3] = &unk_1E8519100;
  v7[4] = *(a1 + 32);
  v8 = v3;
  dispatch_async(v5, v7);

LABEL_11:
}

- (void)attemptToUnregisterUploadSchedulingActivity
{
  if (![(PLSubmissions *)self internalSubmissionBehavior])
  {
    goto LABEL_3;
  }

  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [MEMORY[0x1E695DF00] nearestMidnightAfterDate:v3];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5;
  v7 = *MEMORY[0x1E69E9CE0];

  if (v6 >= v7)
  {
LABEL_3:
    v8 = PLLogSubmission();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Unregistering submission scheduler", v9, 2u);
    }

    xpc_activity_unregister("com.apple.powerlogd.XPCScheduler");
    [(PLSubmissions *)self setXpcActivityStarted:0];
    [(PLSubmissions *)self setLastXPCActivityTimestamp:0.0];
  }
}

- (void)handleXPCActivityCallback:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = [(PLSubmissions *)self submissionQueue];
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      if (![v10 inSubmission])
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v11 = v10;

    if (!v11)
    {
      goto LABEL_15;
    }

    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [v11 filePath];
    v14 = [v12 fileExistsAtPath:v13];

    if (v14)
    {
      if (v4 && xpc_activity_should_defer(v4))
      {
        [(PLSubmissions *)self deferXPCActivity:v4];
      }

      else
      {
        [(PLSubmissions *)self submitRecord:v11 withActivity:v4];
      }
    }

    else
    {
      v18 = PLLogSubmission();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_DEFAULT, "Submission record does not exist", v20, 2u);
      }

      [(PLSubmissions *)self fileCleanupWithRecord:v11];
      [(PLSubmissions *)self finishXPCActivity:v4];
    }
  }

  else
  {
LABEL_9:

LABEL_15:
    v15 = PLLogSubmission();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "Nothing to submit", v20, 2u);
    }

    [(PLSubmissions *)self finishXPCActivity:v4];
    v16 = [(PLSubmissions *)self submissionQueue];
    v17 = [v16 count];

    if (!v17)
    {
      [(PLSubmissions *)self attemptToUnregisterUploadSchedulingActivity];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)submitRecord:(id)a3 withActivity:(id)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF00] monotonicDate];
  [v8 timeIntervalSince1970];
  v10 = v9;

  [(PLSubmissions *)self lastXPCActivityTimestamp];
  v12 = v10 - v11;
  [(PLSubmissions *)self xpcActivityDelay];
  if (v12 >= v13)
  {
    [(PLSubmissions *)self setLastXPCActivityTimestamp:v10];
    v15 = PLLogSubmission();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v69 = v6;
      _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "Submit record: %@", buf, 0xCu);
    }

    [v6 setInSubmission:1];
    v16 = [v6 filePath];
    v17 = [v6 tagConfig];
    v18 = [objc_alloc(MEMORY[0x1E695B898]) initWithContainerIdentifier:@"com.apple.perfpowerservices.tasking" environment:1];
    v19 = [objc_alloc(MEMORY[0x1E695B890]) initWithContainerID:v18];
    v62 = [v19 publicCloudDatabase];
    v20 = [objc_alloc(MEMORY[0x1E695BA58]) initWithRecordType:@"Attachment"];
    v21 = objc_alloc(MEMORY[0x1E695B870]);
    v22 = [MEMORY[0x1E695DFF8] fileURLWithPath:v16];
    v23 = [v21 initWithFileURL:v22];

    if (v23)
    {
      v60 = v19;
      v61 = v18;
      v59 = v23;
      [v20 setObject:v23 forKeyedSubscript:@"asset"];
      v24 = [v16 lastPathComponent];
      [v20 setObject:v24 forKeyedSubscript:@"fileName"];

      v25 = [v17 objectForKeyedSubscript:@"Internal"];
      if ([v25 isEqualToString:@"true"])
      {
        v26 = &unk_1F5405D90;
      }

      else
      {
        v26 = &unk_1F5405DA8;
      }

      [v20 setObject:v26 forKeyedSubscript:@"internal"];

      v27 = [v17 objectForKeyedSubscript:@"Beta"];
      if ([v27 isEqualToString:@"true"])
      {
        v28 = &unk_1F5405D90;
      }

      else
      {
        v28 = &unk_1F5405DA8;
      }

      [v20 setObject:v28 forKeyedSubscript:@"seed"];

      [v20 setObject:@"iOS" forKeyedSubscript:@"machineType"];
      v29 = [v20 objectForKeyedSubscript:@"machineType"];
      v30 = [v29 isEqualToString:@"iOS"];

      if (v30 && +[PLPlatform isiPad])
      {
        [v20 setObject:@"iPadOS" forKeyedSubscript:@"machineType"];
      }

      v31 = [v17 objectForKeyedSubscript:@"Model"];

      if (v31)
      {
        v32 = [v17 objectForKeyedSubscript:@"Model"];
        [v20 setObject:v32 forKeyedSubscript:@"deviceModel"];
      }

      v33 = [v17 objectForKeyedSubscript:@"TagUUID"];

      if (v33)
      {
        v34 = [v17 objectForKeyedSubscript:@"TagUUID"];
        [v20 setObject:v34 forKeyedSubscript:@"UUID"];
      }

      v35 = [v17 objectForKeyedSubscript:@"Reason"];

      if (v35)
      {
        v36 = [v17 objectForKeyedSubscript:@"Reason"];
        [v20 setObject:v36 forKeyedSubscript:@"reason"];
      }

      v37 = [v17 objectForKeyedSubscript:@"Build"];

      if (v37)
      {
        v38 = [v17 objectForKeyedSubscript:@"Build"];
        [v20 setObject:v38 forKeyedSubscript:@"build"];
      }

      v39 = [v17 objectForKeyedSubscript:@"Date"];

      if (v39)
      {
        v40 = [v17 objectForKeyedSubscript:@"Date"];
        [v20 setObject:v40 forKeyedSubscript:@"date"];
      }

      v41 = [v17 objectForKeyedSubscript:@"ExtendedAttributes"];

      if (v41)
      {
        v42 = [v17 objectForKeyedSubscript:@"ExtendedAttributes"];
        [v20 setObject:v42 forKeyedSubscript:@"extendedAttributes"];
      }

      v43 = [v17 objectForKeyedSubscript:@"SubmittedFilesMask"];

      if (v43)
      {
        v44 = [v17 objectForKeyedSubscript:@"SubmittedFilesMask"];
        [v20 setObject:v44 forKeyedSubscript:@"submittedFilesMask"];
      }

      v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v45 addObject:v20];
      v46 = [objc_alloc(MEMORY[0x1E695B9C0]) initWithRecordsToSave:v45 recordIDsToDelete:0];
      v47 = [v46 configuration];
      [v47 setAllowsCellularAccess:0];

      v48 = [v46 configuration];
      [v48 setDiscretionaryNetworkBehavior:0];

      v49 = [v46 configuration];
      [v49 setPreferAnonymousRequests:1];

      v50 = [v46 configuration];
      [v50 setXpcActivity:v7];

      [v46 setPerRecordCompletionBlock:&__block_literal_global_20];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_107;
      v65[3] = &unk_1E8519FF0;
      v65[4] = self;
      v51 = v6;
      v66 = v51;
      v52 = v7;
      v67 = v52;
      [v46 setModifyRecordsCompletionBlock:v65];
      if (v52 && xpc_activity_should_defer(v52))
      {
        [(PLSubmissions *)self workQueue];
        v53 = v58 = v16;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_2;
        block[3] = &unk_1E85190B8;
        v64 = v51;
        dispatch_async(v53, block);

        v16 = v58;
        [(PLSubmissions *)self deferXPCActivity:v52];

        v18 = v61;
        v54 = v62;
      }

      else
      {
        v54 = v62;
        [v62 addOperation:v46];
        v18 = v61;
      }

      v55 = v59;

      v19 = v60;
    }

    else
    {
      v56 = PLLogSubmission();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissions(XPCScheduling) submitRecord:v16 withActivity:v56];
      }

      [(PLSubmissions *)self fileCleanupWithRecord:v6];
      [(PLSubmissions *)self finishXPCActivity:v7];
      v54 = v62;
      v55 = 0;
    }
  }

  else
  {
    v14 = PLLogSubmission();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "Upload activity triggered earlier than delay. Deferring...", buf, 2u);
    }

    [(PLSubmissions *)self finishXPCActivity:v7];
  }

  v57 = *MEMORY[0x1E69E9840];
}

void __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = PLLogSubmission();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_cold_1();
  }
}

void __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_107(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = PLLogSubmission();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412546;
      v31 = v6;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Failed to submit ck records %@, error: %@", buf, 0x16u);
    }

    v10 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_108;
    block[3] = &unk_1E85190B8;
    v29 = *(a1 + 40);
    dispatch_async(v10, block);

    v11 = [v7 domain];
    v12 = *MEMORY[0x1E695B738];
    if ([v11 isEqualToString:*MEMORY[0x1E695B738]])
    {
      v13 = [v7 code];

      if (v13 != 20)
      {
LABEL_25:
        [*(a1 + 32) finishXPCActivity:*(a1 + 48)];
LABEL_26:
        v20 = v29;
        goto LABEL_27;
      }

      v14 = [v7 userInfo];
      v11 = [v14 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

      v15 = [v11 domain];
      v16 = [v15 isEqualToString:v12];

      if (v16)
      {
        if ([v11 code] == 130)
        {
          v17 = PLLogSubmission();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_107_cold_2();
          }
        }

        else
        {
          if ([v11 code] == 131)
          {
            v21 = PLLogSubmission();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1D8611000, v21, OS_LOG_TYPE_DEFAULT, "Activity needs to be deferred", buf, 2u);
            }

            [*(a1 + 32) deferXPCActivity:*(a1 + 48)];
            goto LABEL_26;
          }

          if ([v11 code] != 2000 && objc_msgSend(v11, "code") != 2001 && objc_msgSend(v11, "code") != 2002 && objc_msgSend(v11, "code") != 2009 && objc_msgSend(v11, "code") != 2022 || +[PLDefaults longForKey:ifNotSet:](PLDefaults, "longForKey:ifNotSet:", @"submissionActivityDelayInSecs", 0))
          {
            goto LABEL_24;
          }

          v23 = arc4random_uniform(0xB4u);
          v24 = xpc_activity_copy_criteria(*(a1 + 48));
          v17 = v24;
          if (v24)
          {
            xpc_dictionary_set_int64(v24, *MEMORY[0x1E69E9C68], (v23 * 60.0 + 3600.0));
            xpc_activity_set_criteria(*(a1 + 48), v17);
          }

          else
          {
            v25 = PLLogSubmission();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_107_cold_1();
            }
          }
        }
      }
    }

LABEL_24:

    goto LABEL_25;
  }

  if (v9)
  {
    *buf = 138412290;
    v31 = v6;
    _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Submission of ck records %@ succeeded", buf, 0xCu);
  }

  [*(a1 + 40) emitSuccessEvent];
  [*(a1 + 32) logSubmissionStateToAnalytics:@"success"];
  v18 = [*(a1 + 32) workQueue];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_109;
  v26[3] = &unk_1E8519100;
  v19 = *(a1 + 40);
  v26[4] = *(a1 + 32);
  v27 = v19;
  dispatch_async(v18, v26);

  [*(a1 + 32) finishXPCActivity:*(a1 + 48)];
  v20 = v27;
LABEL_27:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)finishXPCActivity:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (xpc_activity_get_state(v3) == 4)
    {
      v5 = xpc_activity_set_state(v4, 5);
      v6 = PLLogSubmission();
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "Set background state to done", v8, 2u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissions(XPCScheduling) finishXPCActivity:];
      }
    }

    else
    {
      v7 = PLLogSubmission();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [PLSubmissions(XPCScheduling) finishXPCActivity:];
      }
    }
  }
}

- (void)deferXPCActivity:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (xpc_activity_get_state(v3) == 3)
    {
      v5 = PLLogSubmission();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v6 = "Background state already in defer";
        v7 = &v10;
LABEL_10:
        _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
      }
    }

    else
    {
      v8 = xpc_activity_set_state(v4, 3);
      v5 = PLLogSubmission();
      v9 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v9)
        {
          v12 = 0;
          v6 = "Set background state to defer";
          v7 = &v12;
          goto LABEL_10;
        }
      }

      else if (v9)
      {
        *buf = 0;
        v6 = "Failed to set background state to defer";
        v7 = buf;
        goto LABEL_10;
      }
    }
  }
}

- (void)fileCleanupWithRecord:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLLogSubmission();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Removing submission record %@", &v15, 0xCu);
  }

  v6 = [v4 filePath];
  [(PLSubmissions *)self removeFileAtPath:v6];

  v7 = [v4 daFileDirPath];
  [(PLSubmissions *)self removeFileAtPath:v7];

  v8 = [v4 ckFileDirPath];
  [(PLSubmissions *)self removeFileAtPath:v8];

  v9 = NSTemporaryDirectory();
  v10 = [v9 stringByAppendingPathComponent:@"PLSubmissionConfig"];
  v11 = [v4 tagUUID];
  v12 = [v10 stringByAppendingPathComponent:v11];
  [(PLSubmissions *)self removeFileAtPath:v12];

  v13 = [(PLSubmissions *)self submissionQueue];
  [v13 removeObject:v4];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeFileAtURL:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v5 = [v4 removeItemAtURL:v3 error:&v10];
  v6 = v10;

  v7 = PLLogSubmission();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Removed file at %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissions(XPCScheduling) removeFileAtURL:];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)removeFileAtPath:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v10];
  v6 = v10;

  v7 = PLLogSubmission();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Removed file at %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [PLSubmissions(XPCScheduling) removeFileAtURL:];
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PLSubmissions_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_4 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_4, block);
  }

  v2 = sharedInstance_instance_2;

  return v2;
}

uint64_t __31__PLSubmissions_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_instance_2 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (id)workQueue
{
  v2 = objc_opt_class();

  return [PLUtilities workQueueForClass:v2];
}

- (PLSubmissions)init
{
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    v3 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PLSubmissions;
    v4 = [(PLSubmissions *)&v12 init];
    if (v4)
    {
      v5 = +[PLSQLiteConnection sharedSQLiteConnection];
      connection = v4->_connection;
      v4->_connection = v5;

      [(PLSubmissions *)v4 setXpcActivityStarted:0];
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
      [(PLSubmissions *)v4 setSubmissionQueue:v7];

      v8 = [(PLSubmissions *)v4 workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __21__PLSubmissions_init__block_invoke;
      block[3] = &unk_1E85190B8;
      v11 = v4;
      dispatch_async(v8, block);
    }

    self = v4;
    v3 = self;
  }

  return v3;
}

uint64_t __21__PLSubmissions_init__block_invoke(uint64_t a1)
{
  [*(a1 + 32) initSubmissionQueue];
  v2 = *(a1 + 32);

  return [v2 setupDRTasking];
}

- (void)setupDRTasking
{
  v3 = objc_alloc(MEMORY[0x1E699A070]);
  v4 = [(PLSubmissions *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__PLSubmissions_setupDRTasking__block_invoke;
  v7[3] = &unk_1E8519E90;
  v7[4] = self;
  v5 = [v3 initWithTeamID:@"perfpowerservices.config" targetQueue:v4 configProcessingBlock:v7];
  [(PLSubmissions *)self setTaskingMonitor:v5];

  v6 = [(PLSubmissions *)self taskingMonitor];
  [v6 startMonitoring];
}

- (id)configFromMonitor:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = [v3 currentConfigSnapshotWithErrorOut:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = PLLogSubmission();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PLSubmissions *)v3 configFromMonitor:v5, v6];
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (void)stopDRTasking
{
  v3 = PLLogSubmission();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Stop monitoring DRConfig", v5, 2u);
  }

  v4 = [(PLSubmissions *)self taskingMonitor];
  [v4 stopMonitoring];
}

- (BOOL)taskingBlobDRExists
{
  v2 = self;
  v3 = [(PLSubmissions *)self taskingMonitor];
  v4 = [(PLSubmissions *)v2 configFromMonitor:v3];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (BOOL)taskingBlobLegacyExists
{
  v2 = PLOSAPreferencesGetValue();
  v3 = v2 != 0;

  return v3;
}

- (BOOL)taskingBlobExists
{
  if ([(PLSubmissions *)self taskingBlobDRExists])
  {
    return 1;
  }

  return [(PLSubmissions *)self taskingBlobLegacyExists];
}

- (BOOL)taskingTypeSpecified
{
  v2 = [(PLSubmissions *)self getCurrentDRConfig];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 payloadDictionaryRepresentation];
    v5 = [v4 objectForKeyedSubscript:@"PLTaskingType"];

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)internalSubmissionBehavior
{
  v3 = +[PLPlatform internalBuild];
  if (v3)
  {
    if ([(PLSubmissions *)self taskingBlobDRExists])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(PLSubmissions *)self taskingBlobLegacyExists];
    }
  }

  return v3;
}

- (BOOL)fullModeSubmissionBehavior
{
  if (!+[PLPlatform internalBuild](PLPlatform, "internalBuild") || !+[PLDefaults fullMode])
  {
    return 0;
  }

  return [(PLSubmissions *)self taskingBlobExists];
}

- (void)handleDRConfigUpdate:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = PLLogSubmission();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissions handleDRConfigUpdate:error:];
    }

LABEL_8:

    goto LABEL_9;
  }

  if (v6)
  {
    v9 = PLLogSubmission();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 teamID];
      v11 = [v6 configUUID];
      v12 = [v6 receivedDate];
      *buf = 138412802;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "DRConfig for teamID <%@> received: %@, receive time: %@", buf, 0x20u);
    }

    v16 = v6;
    AnalyticsSendEventLazy();
    v8 = v16;
    goto LABEL_8;
  }

  if (+[PLDefaults taskMode]&& [PLDefaults objectExistsForKey:@"PLTaskingOnDemandStartDate"])
  {
    v14 = PLLogSubmission();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "DRConfig cancelled, exiting task mode...", buf, 2u);
    }

    v15 = MEMORY[0x1E69E9820];
    AnalyticsSendEventLazy();
    [(PLSubmissions *)self taskingCleanup:v15];
    PowerlogControlSwitchMode();
    v8 = 0;
    goto LABEL_8;
  }

LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
}

id __44__PLSubmissions_handleDRConfigUpdate_error___block_invoke(id *a1)
{
  v1 = a1;
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"SubmissionConfigUUID";
  v2 = [a1[4] configUUID];
  if (v2)
  {
    v1 = [v1[4] configUUID];
    v3 = [v1 UUIDString];
  }

  else
  {
    v3 = @"UNKNOWN";
  }

  v9[0] = v3;
  v9[1] = &unk_1F54061C8;
  v8[1] = @"SubmissionError";
  v8[2] = @"SubmissionMode";
  v4 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v9[2] = v4;
  v9[3] = &unk_1F54061E0;
  v8[3] = @"SubmissionReason";
  v8[4] = @"SubmissionStage";
  v9[4] = &unk_1F54061C8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];

  if (v2)
  {
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __44__PLSubmissions_handleDRConfigUpdate_error___block_invoke_114(id *a1)
{
  v1 = a1;
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"SubmissionConfigUUID";
  v2 = [a1[4] configUUID];
  if (v2)
  {
    v1 = [v1[4] configUUID];
    v3 = [v1 UUIDString];
  }

  else
  {
    v3 = @"UNKNOWN";
  }

  v9[0] = v3;
  v9[1] = &unk_1F54061F8;
  v8[1] = @"SubmissionError";
  v8[2] = @"SubmissionMode";
  v4 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v9[2] = v4;
  v9[3] = &unk_1F5406210;
  v8[3] = @"SubmissionReason";
  v8[4] = @"SubmissionStage";
  v9[4] = &unk_1F5406228;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];

  if (v2)
  {
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)getCurrentDRConfig
{
  v3 = [(PLSubmissions *)self taskingMonitor];
  v4 = [(PLSubmissions *)self configFromMonitor:v3];

  return v4;
}

- (signed)submitReasonForToday
{
  if (+[PLDefaults debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PLSubmissions_submitReasonForToday__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (submitReasonForToday_defaultOnce != -1)
    {
      dispatch_once(&submitReasonForToday_defaultOnce, block);
    }

    if (submitReasonForToday_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"submission check: taskMode = %d", +[PLDefaults taskMode](PLDefaults, "taskMode")];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      v6 = [v5 lastPathComponent];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions submitReasonForToday]"];
      [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:290];

      v8 = PLLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if (!+[PLDefaults taskMode])
  {
    goto LABEL_53;
  }

  if (+[PLDefaults debugEnabled])
  {
    v9 = objc_opt_class();
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __37__PLSubmissions_submitReasonForToday__block_invoke_133;
    v36[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v36[4] = v9;
    if (submitReasonForToday_defaultOnce_131 != -1)
    {
      dispatch_once(&submitReasonForToday_defaultOnce_131, v36);
    }

    if (submitReasonForToday_classDebugEnabled_132 == 1)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"tasking submission configured"];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      v12 = [v11 lastPathComponent];
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions submitReasonForToday]"];
      [PLCoreStorage logMessage:v10 fromFile:v12 fromFunction:v13 fromLineNumber:292];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v15 = [(PLSubmissions *)self checkTaskingCompletionStatus];
  v16 = v15 ? 2 : 1;
  [(PLSubmissions *)self logTaskingStatus:v15 withAction:v16];
  if (!v15)
  {
    LOWORD(v23) = 3;
  }

  else
  {
LABEL_53:
    if ([(PLSubmissions *)self internalSubmissionBehavior])
    {
      if (+[PLDefaults debugEnabled])
      {
        v17 = objc_opt_class();
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __37__PLSubmissions_submitReasonForToday__block_invoke_139;
        v35[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v35[4] = v17;
        if (submitReasonForToday_defaultOnce_137 != -1)
        {
          dispatch_once(&submitReasonForToday_defaultOnce_137, v35);
        }

        if (submitReasonForToday_classDebugEnabled_138 == 1)
        {
          v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"internal submission configured"];
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
          v20 = [v19 lastPathComponent];
          v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions submitReasonForToday]"];
          [PLCoreStorage logMessage:v18 fromFile:v20 fromFunction:v21 fromLineNumber:302];

          v22 = PLLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      LOWORD(v23) = 1;
    }

    else if ([(PLSubmissions *)self fullModeSubmissionBehavior])
    {
      v24 = PLLogSubmission();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v24, OS_LOG_TYPE_DEFAULT, "Tasking blob received for internal device in Full Mode.", buf, 2u);
      }

      if ([(PLSubmissions *)self taskingTypeSpecified])
      {
        LOWORD(v23) = 5;
      }

      else
      {
        LOWORD(v23) = 3;
      }
    }

    else
    {
      if (+[PLPlatform internalBuild])
      {
        v25 = PLLogSubmission();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v25, OS_LOG_TYPE_DEFAULT, "Tasking blob received for internal device", buf, 2u);
        }
      }

      if ([(PLSubmissions *)self taskingTypeSpecified])
      {
        LOWORD(v23) = 5;
      }

      else
      {
        v23 = +[PLDefaults debugEnabled];
        if (v23)
        {
          v26 = objc_opt_class();
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __37__PLSubmissions_submitReasonForToday__block_invoke_145;
          v33[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          v33[4] = v26;
          if (submitReasonForToday_defaultOnce_143 != -1)
          {
            dispatch_once(&submitReasonForToday_defaultOnce_143, v33);
          }

          if (submitReasonForToday_classDebugEnabled_144 == 1)
          {
            v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"submission not configured"];
            v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
            v29 = [v28 lastPathComponent];
            v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions submitReasonForToday]"];
            [PLCoreStorage logMessage:v27 fromFile:v29 fromFunction:v30 fromLineNumber:315];

            v31 = PLLogCommon();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }
          }

          LOWORD(v23) = 0;
        }
      }
    }
  }

  return v23;
}

BOOL __37__PLSubmissions_submitReasonForToday__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  submitReasonForToday_classDebugEnabled = result;
  return result;
}

BOOL __37__PLSubmissions_submitReasonForToday__block_invoke_133(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  submitReasonForToday_classDebugEnabled_132 = result;
  return result;
}

BOOL __37__PLSubmissions_submitReasonForToday__block_invoke_139(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  submitReasonForToday_classDebugEnabled_138 = result;
  return result;
}

BOOL __37__PLSubmissions_submitReasonForToday__block_invoke_145(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  submitReasonForToday_classDebugEnabled_144 = result;
  return result;
}

- (void)generateOTASubmissionAndSendTaskingEndSubmission:(BOOL)a3
{
  v39 = a3;
  v65 = *MEMORY[0x1E69E9840];
  AnalyticsSendEventLazy();
  v4 = [(PLSubmissions *)self getCurrentDRConfig];
  v5 = [(PLSubmissions *)self submitReasonForToday];
  v40 = v4;
  v6 = [[PLSubmissionConfig alloc] initWithReasonType:v5 DRConfig:v4];
  v7 = [(PLSubmissions *)self getLastBatteryTimestampSystem];
  [(PLSubmissionConfig *)v6 setLastBatteryTimestampSystem:v7];

  v8 = PLLogSubmission();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v48) = v5;
    _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Submit reason type: %hd", buf, 8u);
  }

  v9 = PLLogSubmission();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v40 teamID];
    v11 = [v40 configUUID];
    *buf = 138412546;
    v48 = v10;
    v49 = 2112;
    v50 = v11;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Current DRConfig teamID: %@, UUID: %@", buf, 0x16u);
  }

  v12 = PLLogSubmission();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v40 payloadDictionaryRepresentation];
    *buf = 138412290;
    v48 = v13;
    _os_log_impl(&dword_1D8611000, v12, OS_LOG_TYPE_DEFAULT, "DRConfig payload: %@", buf, 0xCu);
  }

  v14 = PLLogSubmission();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v38 = self;
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig hasFileToSubmit](v6, "hasFileToSubmit")}];
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitPLL](v6, "submitPLL")}];
    [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitPLLUpgrade](v6, "submitPLLUpgrade")}];
    v5 = v37 = v5;
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitMSS](v6, "submitMSS")}];
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitSP](v6, "submitSP")}];
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitBDC](v6, "submitBDC")}];
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitBG](v6, "submitBG")}];
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitCE](v6, "submitCE")}];
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLSubmissionConfig submitXC](v6, "submitXC")}];
    *buf = 138414338;
    v48 = v15;
    v49 = 2112;
    v50 = v16;
    v51 = 2112;
    v52 = v5;
    v53 = 2112;
    v54 = v17;
    v55 = 2112;
    v56 = v18;
    v57 = 2112;
    v58 = v36;
    v59 = 2112;
    v60 = v35;
    v61 = 2112;
    v62 = v19;
    v63 = 2112;
    v64 = v20;
    _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "Tasking config BOOLs: hasFileToSubmit=%@, PLL=%@, PLL-UPGRADE=%@, MSS=%@, SP=%@, BDC=%@, BG=%@, CE=%@, XC=%@", buf, 0x5Cu);

    self = v38;
    LODWORD(v5) = v37;
  }

  block[5] = MEMORY[0x1E69E9820];
  block[6] = 3221225472;
  block[7] = __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_150;
  block[8] = &unk_1E8519A88;
  v21 = v6;
  v46 = v21;
  AnalyticsSendEventLazy();
  if (!v5)
  {
    [(PLSubmissions *)self emitBlobDetectedEvent:v21];
  }

  if ([(PLSubmissionConfig *)v21 hasFileToSubmit])
  {
    if ([(PLSubmissionConfig *)v21 submitPLL]&& v5 == 3 && v39)
    {
      v22 = PLLogSubmission();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v22, OS_LOG_TYPE_DEFAULT, "On demand tasking about to end, giving grace period of 10 secs...", buf, 2u);
      }

      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      [v23 postNotificationName:@"kPLTaskingEndNotification" object:self];

      v24 = dispatch_time(0, 10000000000);
      v25 = [(PLSubmissions *)self workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_154;
      block[3] = &unk_1E85190B8;
      block[4] = self;
      dispatch_after(v24, v25, block);

      goto LABEL_36;
    }

    if ([(PLSubmissionConfig *)v21 submitPLL]|| (v5 & 0xFFFFFFFB) == 1 && [(PLSubmissionConfig *)v21 submitXC])
    {
      if ((v5 - 1) > 2)
      {
        if (v5 != 5)
        {
LABEL_35:
          v33 = [(PLSubmissions *)self workQueue];
          v41[0] = MEMORY[0x1E69E9820];
          v41[1] = 3221225472;
          v41[2] = __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_155;
          v41[3] = &unk_1E851AF20;
          v21 = v21;
          v42 = v21;
          v43 = self;
          v44 = v5;
          dispatch_async(v33, v41);

          goto LABEL_36;
        }

        v27 = [(PLSubmissionConfig *)v21 shouldSubmitToday];
        v28 = PLLogSubmission();
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        if (!v27)
        {
          if (v29)
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v28, OS_LOG_TYPE_DEFAULT, "Skipping conditional tasking...", buf, 2u);
          }

          goto LABEL_35;
        }

        if (v29)
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v28, OS_LOG_TYPE_DEFAULT, "Starting conditional tasking...", buf, 2u);
        }
      }
    }

    else
    {
      if ([(PLSubmissionConfig *)v21 submitPLLUpgrade])
      {
        v30 = [[PLSubmissionConfig alloc] initWithReasonType:4 DRConfig:v40];

        v31 = [(PLSubmissions *)self getLastBatteryTimestampSystem];
        [(PLSubmissionConfig *)v30 setLastBatteryTimestampSystem:v31];

        [(PLSubmissions *)self submitWithTaskingConfig:v30];
        v21 = v30;
        goto LABEL_35;
      }

      v32 = [(PLSubmissionConfig *)v21 shouldStartTaskingToday];
      [(PLSubmissions *)self emitBlobVerifiedEvent:v21];
      if (!v32)
      {
        goto LABEL_35;
      }

      [(PLSubmissionConfig *)v21 setSubmitReasonType:3];
    }

    [(PLSubmissions *)self submitWithTaskingConfig:v21];
    goto LABEL_35;
  }

  v26 = PLLogSubmission();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    [(PLSubmissions *)v5 generateOTASubmissionAndSendTaskingEndSubmission:v26];
  }

  [(PLSubmissions *)self taskingCleanup];
LABEL_36:

  v34 = *MEMORY[0x1E69E9840];
}

id __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"SubmissionMode";
  v0 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v5[0] = v0;
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

id __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_150(uint64_t a1)
{
  v12[5] = *MEMORY[0x1E69E9840];
  v11[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v12[0] = v4;
  v11[1] = @"SubmissionError";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "hasFileToSubmit") ^ 1}];
  v12[1] = v5;
  v11[2] = @"SubmissionMode";
  v6 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v12[2] = v6;
  v11[3] = @"SubmissionReason";
  v7 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v11[4] = @"SubmissionStage";
  v12[3] = v7;
  v12[4] = &unk_1F5406258;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  if (v3)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_155(uint64_t a1)
{
  v2 = PLLogSubmission();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "Starting mode check...", buf, 2u);
  }

  if (+[PLDefaults taskMode])
  {
    v3 = PLLogSubmission();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "End mode", buf, 2u);
    }

    v7 = *(a1 + 32);
    AnalyticsSendEventLazy();
    [*(a1 + 40) taskingCleanup];
    PowerlogControlSwitchMode();
  }

  else if ([*(a1 + 32) submitPLL] && *(a1 + 48) != 5 && (v4 = objc_msgSend(*(a1 + 32), "shouldStartTaskingToday"), objc_msgSend(*(a1 + 40), "emitBlobVerifiedEvent:", *(a1 + 32)), v4))
  {
    v5 = PLLogSubmission();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Start mode", buf, 2u);
    }

    PowerlogControlSwitchMode();
  }

  else
  {
    v6 = PLLogSubmission();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "Defaults cleanup", buf, 2u);
    }

    [*(a1 + 40) taskingCleanup];
  }
}

id __66__PLSubmissions_generateOTASubmissionAndSendTaskingEndSubmission___block_invoke_156(uint64_t a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v11[0] = v4;
  v11[1] = &unk_1F54061C8;
  v10[1] = @"SubmissionError";
  v10[2] = @"SubmissionMode";
  v5 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v11[2] = v5;
  v10[3] = @"SubmissionReason";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v10[4] = @"SubmissionStage";
  v11[3] = v6;
  v11[4] = &unk_1F5406228;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  if (v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)performSubmission:(id)a3
{
  v6 = a3;
  AnalyticsSendEventLazy();
  v4 = [(PLSubmissions *)self createWatchdogForSubmissionActivity:@"OTA"];
  [(PLSubmissions *)self prepareAndEnqueueSubmissionFilesWithConfig:v6];
  [(PLSubmissions *)self stopWatchdogForSubmissionActivity:v4];
  v5 = v6;
  AnalyticsSendEventLazy();
}

id __35__PLSubmissions_performSubmission___block_invoke(uint64_t a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v11[0] = v4;
  v11[1] = &unk_1F54061C8;
  v10[1] = @"SubmissionError";
  v10[2] = @"SubmissionMode";
  v5 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v11[2] = v5;
  v10[3] = @"SubmissionReason";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v10[4] = @"SubmissionStage";
  v11[3] = v6;
  v11[4] = &unk_1F5406288;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  if (v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __35__PLSubmissions_performSubmission___block_invoke_164(uint64_t a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v11[0] = v4;
  v11[1] = &unk_1F54061C8;
  v10[1] = @"SubmissionError";
  v10[2] = @"SubmissionMode";
  v5 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v11[2] = v5;
  v10[3] = @"SubmissionReason";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v10[4] = @"SubmissionStage";
  v11[3] = v6;
  v11[4] = &unk_1F54062A0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  if (v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)submitWithTaskingConfig:(id)a3
{
  v4 = a3;
  [(PLSubmissions *)self logSubmissionStateToAnalytics:@"attempt"];
  [v4 submitFileStatsToAnalytics];
  v5 = [(PLSubmissions *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__PLSubmissions_submitWithTaskingConfig___block_invoke;
  v7[3] = &unk_1E8519100;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __41__PLSubmissions_submitWithTaskingConfig___block_invoke(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = objc_autoreleasePoolPush();
  [*(a1 + 32) performSubmission:*(a1 + 40)];
  objc_autoreleasePoolPop(v3);
  v4 = dispatch_time(0, 60000000000);
  v5 = +[PLUtilities transactionWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PLSubmissions_submitWithTaskingConfig___block_invoke_2;
  block[3] = &unk_1E85190B8;
  v8 = v2;
  v6 = v2;
  dispatch_after(v4, v5, block);
}

- (void)prepareAndEnqueueSubmissionFilesWithConfig:(id)a3
{
  v80 = *MEMORY[0x1E69E9840];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = [a3 splitBySubmissionType];
  v61 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
  if (v61)
  {
    v60 = *v70;
    v54 = self;
    do
    {
      v4 = 0;
      do
      {
        if (*v70 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v69 + 1) + 8 * v4);
        v6 = PLLogSubmission();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v47 = [v5 getSubmitReasonTypeToReasonLog];
          v48 = [v5 submittedFilesMask];
          v49 = [v5 submissionMaskToString];
          *buf = 138412802;
          v74 = v47;
          v75 = 2048;
          v76 = v48;
          v77 = 2112;
          v78 = v49;
          _os_log_debug_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEBUG, "Starting submission of type '%@' (mask: %llu = %@)", buf, 0x20u);
        }

        v7 = [[PLSubmissionFilePLL alloc] initWithConfig:v5];
        v8 = v7;
        if (v7)
        {
          [(PLSubmissionFilePLL *)v7 submit];
          v9 = PLLogSubmission();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Finished preparing PLL", buf, 2u);
          }
        }

        v10 = [[PLSubmissionFileMSS alloc] initWithConfig:v5];
        v11 = v10;
        if (v10)
        {
          [(PLSubmissionFileMSS *)v10 submit];
          v12 = PLLogSubmission();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v12, OS_LOG_TYPE_DEFAULT, "Finished preparing MSS", buf, 2u);
          }
        }

        v13 = [[PLSubmissionFileBDC alloc] initWithConfig:v5];
        v14 = v13;
        if (v13)
        {
          [(PLSubmissionFileBDC *)v13 submit];
          v15 = PLLogSubmission();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "Finished preparing BDC", buf, 2u);
          }
        }

        v16 = [[PLSubmissionFileCE alloc] initWithConfig:v5];
        v17 = v16;
        if (v16)
        {
          [(PLSubmissionFileCE *)v16 submit];
          v18 = PLLogSubmission();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_DEFAULT, "Finished preparing CE", buf, 2u);
          }
        }

        v66 = v8;
        v19 = [[PLSubmissionFileXC alloc] initWithConfig:v5];
        v20 = v19;
        if (v19)
        {
          [(PLSubmissionFileXC *)v19 submit];
          v21 = PLLogSubmission();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v21, OS_LOG_TYPE_DEFAULT, "Finished preparing XC", buf, 2u);
          }
        }

        v63 = v20;
        v22 = [[PLSubmissionFileBG alloc] initWithConfig:v5];
        v23 = v22;
        if (v22)
        {
          [(PLSubmissionFileBG *)v22 submit];
          v24 = PLLogSubmission();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v24, OS_LOG_TYPE_DEFAULT, "Finished preparing BG", buf, 2u);
          }
        }

        v65 = v11;
        v25 = [[PLSubmissionFileSP alloc] initWithConfig:v5];
        v26 = v25;
        if (v25)
        {
          [(PLSubmissionFile *)v25 submit];
          v27 = PLLogSubmission();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v27, OS_LOG_TYPE_DEFAULT, "Finished preparing SP", buf, 2u);
          }
        }

        v62 = v17;
        v64 = v14;
        v28 = MEMORY[0x1E696AEC0];
        v29 = [v5 tagUUID];
        v30 = [v28 stringWithFormat:@"%@Powerlog_%@/", @"/tmp/powerlog/cloud/", v29];

        v31 = [MEMORY[0x1E696AC08] defaultManager];
        v32 = [v31 contentsOfDirectoryAtPath:v30 error:0];

        if (v32 && [v32 count])
        {
          v33 = MEMORY[0x1E6999F68];
          v34 = [MEMORY[0x1E695DFF8] fileURLWithPath:v30];
          v35 = [v33 archiveDirectoryAt:v34 deleteOriginal:1];

          v36 = [v35 path];
          [v5 setFilePath:v36];

          v37 = PLLogSubmission();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
          {
            v50 = [v5 filePath];
            v51 = [v32 count];
            *buf = 138412546;
            v74 = v50;
            v75 = 1024;
            LODWORD(v76) = v51;
            _os_log_debug_impl(&dword_1D8611000, v37, OS_LOG_TYPE_DEBUG, "File to upload generated at %@ with %d files included.", buf, 0x12u);
          }
        }

        v38 = [v5 filePath];
        if (v38)
        {
          v39 = v38;
          v40 = [v5 ckTagConfig];
          if (v40)
          {
            v41 = v40;
            v42 = [v5 tagUUID];

            if (v42)
            {
              if ([v5 enableDPUpload])
              {
                v56 = [PLSubmissionRecord alloc];
                v58 = [v5 filePath];
                v57 = [v5 tagUUID];
                v55 = [v5 ckTagConfig];
                v43 = [v5 configUUID];
                v44 = [v5 configDateReceived];
                v45 = [v5 configDateApplied];
                v46 = [(PLSubmissionRecord *)v56 initWithCKFilePath:v58 tagUUID:v57 tagConfig:v55 configUUID:v43 configDateReceived:v44 configDateApplied:v45];

                self = v54;
                [(PLSubmissions *)v54 submitRecordToDiagnosticPipeline:v46 withConfig:v5];
              }

              else
              {
                v46 = [(PLSubmissions *)self enqueueFileForUpload:v5];
                [(PLSubmissions *)self persistSubmissionInfo:v46];
              }

              goto LABEL_49;
            }
          }

          else
          {
          }
        }

        v46 = PLLogSubmission();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [(PLSubmissions *)&v67 prepareAndEnqueueSubmissionFilesWithConfig:v68, v46];
        }

LABEL_49:

        ++v4;
      }

      while (v61 != v4);
      v52 = [obj countByEnumeratingWithState:&v69 objects:v79 count:16];
      v61 = v52;
    }

    while (v52);
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (void)submitRecordToDiagnosticPipeline:(id)a3 withConfig:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 getSubmitReasonTypeToReasonLog];
  v8 = [v6 contextDictionary];
  v9 = PLLogSubmission();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 submissionCategory];
    *buf = 138412802;
    v24 = @"com.apple.perfpowerservices";
    v25 = 2112;
    v26 = v10;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Submitting '%@:%@' record for %@ via DiagnosticPipeline", buf, 0x20u);
  }

  v21[1] = MEMORY[0x1E69E9820];
  v21[2] = 3221225472;
  v21[3] = __61__PLSubmissions_submitRecordToDiagnosticPipeline_withConfig___block_invoke;
  v21[4] = &unk_1E8519A88;
  v11 = v6;
  v22 = v11;
  AnalyticsSendEventLazy();
  [v5 emitAttemptEvent];
  v12 = [v11 submissionCategory];
  v13 = [v5 filePath];
  v21[0] = 0;
  v14 = DRSubmitLogToCKContainer();
  v15 = 0;

  if (v14)
  {
    v20 = v11;
    AnalyticsSendEventLazy();
    [v5 emitSuccessEvent];
    v16 = PLLogSubmission();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 filePath];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEFAULT, "Successfully submitted %@ to DiagnosticPipeline for upload", buf, 0xCu);
    }

    v18 = v20;
  }

  else
  {
    v18 = PLLogSubmission();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [PLSubmissions submitRecordToDiagnosticPipeline:withConfig:];
    }
  }

  [v5 cleanup];
  v19 = *MEMORY[0x1E69E9840];
}

id __61__PLSubmissions_submitRecordToDiagnosticPipeline_withConfig___block_invoke(uint64_t a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v11[0] = v4;
  v11[1] = &unk_1F54061C8;
  v10[1] = @"SubmissionError";
  v10[2] = @"SubmissionMode";
  v5 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v11[2] = v5;
  v10[3] = @"SubmissionReason";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v10[4] = @"SubmissionStage";
  v11[3] = v6;
  v11[4] = &unk_1F54062B8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  if (v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __61__PLSubmissions_submitRecordToDiagnosticPipeline_withConfig___block_invoke_196(uint64_t a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"SubmissionConfigUUID";
  v3 = [*(a1 + 32) configUUID];
  if (v3)
  {
    v1 = [*(a1 + 32) configUUID];
    v4 = [v1 UUIDString];
  }

  else
  {
    v4 = @"UNKNOWN";
  }

  v11[0] = v4;
  v11[1] = &unk_1F54061C8;
  v10[1] = @"SubmissionError";
  v10[2] = @"SubmissionMode";
  v5 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v11[2] = v5;
  v10[3] = @"SubmissionReason";
  v6 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(*(a1 + 32), "submitReasonType")}];
  v10[4] = @"SubmissionStage";
  v11[3] = v6;
  v11[4] = &unk_1F54062D0;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];

  if (v3)
  {
  }

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)generatePLLSubmissionWithPayload:(id)a3
{
  v71 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v61 = os_transaction_create();
  context = objc_autoreleasePoolPush();
  v59 = [(PLSubmissions *)self createWatchdogForSubmissionActivity:@"PLL"];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GenerateOTASubmissionWithPayload"];
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
  v7 = [v6 lastPathComponent];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions generatePLLSubmissionWithPayload:]"];
  [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:638];

  v9 = PLLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v70 = v5;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v10 = [v4 mutableCopy];
  v11 = [v4 objectForKeyedSubscript:@"cache_size"];

  if (!v11)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:10];
    [v10 setObject:v12 forKeyedSubscript:@"cache_size"];
  }

  v13 = [v4 objectForKeyedSubscript:@"path"];
  v14 = [[PLSubmissionConfig alloc] initWithPayload:v10];
  v15 = [(PLSubmissions *)self getLastBatteryTimestampSystem];
  [(PLSubmissionConfig *)v14 setLastBatteryTimestampSystem:v15];

  v16 = [[PLSubmissionFilePLL alloc] initWithConfig:v14];
  v67[0] = @"Type";
  v17 = [(PLSubmissionConfig *)v14 getSubmitReasonTypeToStorageEventOTAType];
  v18 = v17;
  v67[1] = @"Success";
  v19 = MEMORY[0x1E695E118];
  if (!v16)
  {
    v19 = MEMORY[0x1E695E110];
  }

  v68[0] = v17;
  v68[1] = v19;
  v20 = 0x1E695D000uLL;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2];
  v58 = self;
  [(PLSubmissions *)self logOTAStatus:v21];

  v22 = [(PLSubmissionFile *)v16 filePath];
  if (v22)
  {
    v55 = v10;
    v57 = v4;
    v23 = [MEMORY[0x1E696AC08] defaultManager];
    v66 = 0;
    v56 = v13;
    v24 = [v23 moveItemAtPath:v22 toPath:v13 error:&v66];
    v25 = v66;

    if ((v24 & 1) == 0)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error moving file %@", v25];
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      v28 = [v27 lastPathComponent];
      v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions generatePLLSubmissionWithPayload:]"];
      [PLCoreStorage logMessage:v26 fromFile:v28 fromFunction:v29 fromLineNumber:658];

      v30 = PLLogCommon();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v70 = v26;
        _os_log_impl(&dword_1D8611000, v30, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v20 = 0x1E695D000;
    }

    v31 = [MEMORY[0x1E696AC08] defaultManager];
    v32 = [(PLSubmissionFile *)v16 directory];
    v65 = v25;
    v33 = [v31 removeItemAtPath:v32 error:&v65];
    v34 = v65;

    if ((v33 & 1) == 0)
    {
      v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error removing file %@", v34];
      v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      v37 = [v36 lastPathComponent];
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions generatePLLSubmissionWithPayload:]"];
      [PLCoreStorage logMessage:v35 fromFile:v37 fromFunction:v38 fromLineNumber:663];

      v39 = PLLogCommon();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v70 = v35;
        _os_log_impl(&dword_1D8611000, v39, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v20 = 0x1E695D000uLL;
    }

    v4 = v57;
    v40 = [v57 objectForKeyedSubscript:@"user"];
    if ([v40 length])
    {
      v41 = [*(v20 + 3872) dictionaryWithObjectsAndKeys:{v40, *MEMORY[0x1E696A360], 0}];
      v42 = [MEMORY[0x1E696AC08] defaultManager];
      v64 = v34;
      v43 = [v42 setAttributes:v41 ofItemAtPath:v56 error:&v64];
      v44 = v64;

      if ((v43 & 1) == 0)
      {
        v54 = v41;
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error setting attr %@", v44];
        v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
        v47 = [v46 lastPathComponent];
        v48 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions generatePLLSubmissionWithPayload:]"];
        [PLCoreStorage logMessage:v45 fromFile:v47 fromFunction:v48 fromLineNumber:670];

        v49 = PLLogCommon();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v70 = v45;
          _os_log_impl(&dword_1D8611000, v49, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

        v41 = v54;
      }

      v4 = v57;
    }

    else
    {
      v44 = v34;
    }

    v13 = v56;

    v10 = v55;
  }

  [(PLSubmissionFile *)v16 cleanupTmpDirectory];
  [(PLSubmissions *)v58 stopWatchdogForSubmissionActivity:v59];

  objc_autoreleasePoolPop(context);
  v50 = dispatch_time(0, 60000000000);
  v51 = +[PLUtilities transactionWorkQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PLSubmissions_generatePLLSubmissionWithPayload___block_invoke;
  block[3] = &unk_1E85190B8;
  v63 = v61;
  v52 = v61;
  dispatch_after(v50, v51, block);

  v53 = *MEMORY[0x1E69E9840];
}

- (id)generateMSSSubmissionWithPayload:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = os_transaction_create();
  v6 = objc_autoreleasePoolPush();
  v7 = [(PLSubmissions *)self createWatchdogForSubmissionActivity:@"MSS"];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GenerateMSSSubmissionWithPayload"];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
  v10 = [v9 lastPathComponent];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions generateMSSSubmissionWithPayload:]"];
  [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:687];

  v12 = PLLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&dword_1D8611000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v13 = [v4 mutableCopy];
  v14 = [[PLSubmissionConfig alloc] initWithPayload:v13];
  v15 = [(PLSubmissions *)self getLastBatteryTimestampSystem];
  [(PLSubmissionConfig *)v14 setLastBatteryTimestampSystem:v15];

  v16 = [[PLSubmissionFileMSS alloc] initWithConfig:v14];
  v17 = [(PLSubmissionFile *)v16 filePath];
  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v17, @"microstackshots", 0}];
  }

  else
  {
    v18 = 0;
  }

  [(PLSubmissions *)self stopWatchdogForSubmissionActivity:v7];

  objc_autoreleasePoolPop(v6);
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)getLastBatteryTimestampSystem
{
  v2 = +[PowerlogCore sharedCore];
  v3 = [v2 storage];
  v4 = [v3 lastEntryForKey:@"PLBatteryAgent_EventBackward_Battery"];

  v5 = [v4 entryDate];
  v6 = [v5 convertFromMonotonicToSystem];

  return v6;
}

BOOL __56__PLSubmissions_logTaskingStatus_withAction_withTables___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  logTaskingStatus_withAction_withTables__classDebugEnabled = result;
  return result;
}

- (void)enableHangtracer
{
  v2 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"PLTasking.HangTracerEnableAppActivationLogging", &unk_1F54062E8, @"com.apple.hangtracer", @"mobile", *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(@"com.apple.hangtracer", @"mobile", v2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.hangtracer.pref_changed", 0, 0, 0);
}

- (void)disableHangtracer
{
  v2 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"PLTasking.HangTracerEnableAppActivationLogging", 0, @"com.apple.hangtracer", @"mobile", *MEMORY[0x1E695E898]);
  CFPreferencesSynchronize(@"com.apple.hangtracer", @"mobile", v2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.hangtracer.pref_changed", 0, 0, 0);
}

- (void)logTaskingTablesTurnedOn:(id)a3
{
  v4 = a3;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __42__PLSubmissions_logTaskingTablesTurnedOn___block_invoke;
    v15 = &__block_descriptor_40_e5_v8__0lu32l8;
    v16 = v5;
    if (logTaskingTablesTurnedOn__defaultOnce != -1)
    {
      dispatch_once(&logTaskingTablesTurnedOn__defaultOnce, &block);
    }

    if (logTaskingTablesTurnedOn__classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TaskingTablesTurnedOn=%@", v4, block, v13, v14, v15, v16];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions logTaskingTablesTurnedOn:]"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:745];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  v11 = [(PLSubmissions *)self storageOperator];
  [v11 logEventNoneAdditionalTablesTurnedOn:v4];
}

BOOL __42__PLSubmissions_logTaskingTablesTurnedOn___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  logTaskingTablesTurnedOn__classDebugEnabled = result;
  return result;
}

- (void)logOTAStatus:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [v4 stringWithFormat:@"OTAStatus=%@", v5];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
  v8 = [v7 lastPathComponent];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions logOTAStatus:]"];
  [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:750];

  v10 = PLLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v11 = [(PLSubmissions *)self storageOperator];
  [v11 logEventPointOTA:v5];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)clearTaskingDRConfig
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, v0, v1, "Error trying to mark DRConfig as completed: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)rejectTaskingDRConfig
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, v0, v1, "Error trying to reject DRConfig: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)taskingCleanup
{
  [(PLSubmissions *)self disableHangtracer];
  +[PLSubmissionConfig clearTaskingDefaults];

  [(PLSubmissions *)self clearTaskingDRConfig];
}

- (int)checkTaskingCompletionStatus
{
  v2 = [PLDefaults objectForKey:@"PLTaskingOnDemandStartDate"];
  v3 = [MEMORY[0x1E695DF00] monotonicDate];
  if (+[PLDefaults debugEnabled])
  {
    v4 = objc_opt_class();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v4;
    if (checkTaskingCompletionStatus_defaultOnce != -1)
    {
      dispatch_once(&checkTaskingCompletionStatus_defaultOnce, block);
    }

    if (checkTaskingCompletionStatus_classDebugEnabled == 1)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"taskingStartDate=%@, now=%@", v2, v3];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions checkTaskingCompletionStatus]"];
      [PLCoreStorage logMessage:v5 fromFile:v7 fromFunction:v8 fromLineNumber:793];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
      }
    }
  }

  if ([v2 compare:v3] == 1)
  {
    v10 = 1;
    PLADClientAddValueForScalarKey();
    AnalyticsSendEventLazy();
    if (+[PLDefaults debugEnabled])
    {
      v11 = objc_opt_class();
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke_2;
      v26[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v26[4] = v11;
      if (checkTaskingCompletionStatus_defaultOnce_281 != -1)
      {
        dispatch_once(&checkTaskingCompletionStatus_defaultOnce_281, v26);
      }

      if (checkTaskingCompletionStatus_classDebugEnabled_282 == 1)
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Abort Tasking: monotonic time moved back"];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
        v14 = [v13 lastPathComponent];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions checkTaskingCompletionStatus]"];
        [PLCoreStorage logMessage:v12 fromFile:v14 fromFunction:v15 fromLineNumber:801];

        v16 = PLLogCommon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }

      v10 = 1;
    }
  }

  else
  {
    [v3 timeIntervalSinceDate:v2];
    if (v17 >= 604800.0)
    {
      PLADClientAddValueForScalarKey();
      AnalyticsSendEventLazy();
      if (+[PLDefaults debugEnabled])
      {
        v18 = objc_opt_class();
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke_2_301;
        v25[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v25[4] = v18;
        if (checkTaskingCompletionStatus_defaultOnce_299 != -1)
        {
          dispatch_once(&checkTaskingCompletionStatus_defaultOnce_299, v25);
        }

        if (checkTaskingCompletionStatus_classDebugEnabled_300 == 1)
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Abort Tasking: 7 days since tasking start"];
          v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
          v21 = [v20 lastPathComponent];
          v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions checkTaskingCompletionStatus]"];
          [PLCoreStorage logMessage:v19 fromFile:v21 fromFunction:v22 fromLineNumber:812];

          v23 = PLLogCommon();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      v10 = 2;
    }

    else
    {
      PLADClientAddValueForScalarKey();
      AnalyticsSendEventLazy();
      v10 = 0;
    }
  }

  return v10;
}

BOOL __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  checkTaskingCompletionStatus_classDebugEnabled = result;
  return result;
}

BOOL __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  checkTaskingCompletionStatus_classDebugEnabled_282 = result;
  return result;
}

BOOL __45__PLSubmissions_checkTaskingCompletionStatus__block_invoke_2_301(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  checkTaskingCompletionStatus_classDebugEnabled_300 = result;
  return result;
}

- (void)taskingModeSafeguard
{
  if (+[PLDefaults taskMode])
  {
    [PLDefaults doubleForKey:@"PLTaskingRestartCount" ifNotSet:0.0];
    v4 = v3 + 1.0;
    if (+[PLDefaults debugEnabled])
    {
      v5 = objc_opt_class();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__PLSubmissions_taskingModeSafeguard__block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v5;
      if (taskingModeSafeguard_defaultOnce != -1)
      {
        dispatch_once(&taskingModeSafeguard_defaultOnce, block);
      }

      if (taskingModeSafeguard_classDebugEnabled == 1)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"powerlog restartCount=%f", *&v4];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
        v8 = [v7 lastPathComponent];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions taskingModeSafeguard]"];
        [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:828];

        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    if (v4 <= 10.0)
    {
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
      [PLDefaults setObject:v17 forKey:@"PLTaskingRestartCount" saveToDisk:1];
    }

    else
    {
      PLADClientAddValueForScalarKey();
      AnalyticsSendEventLazy();
      [(PLSubmissions *)self logTaskingStatus:4 withAction:2];
      if (+[PLDefaults debugEnabled])
      {
        v11 = objc_opt_class();
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __37__PLSubmissions_taskingModeSafeguard__block_invoke_2;
        v18[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v18[4] = v11;
        if (taskingModeSafeguard_defaultOnce_337 != -1)
        {
          dispatch_once(&taskingModeSafeguard_defaultOnce_337, v18);
        }

        if (taskingModeSafeguard_classDebugEnabled_338 == 1)
        {
          v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"restartCount over limit, exiting tasking mode"];
          v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
          v14 = [v13 lastPathComponent];
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions taskingModeSafeguard]"];
          [PLCoreStorage logMessage:v12 fromFile:v14 fromFunction:v15 fromLineNumber:835];

          v16 = PLLogCommon();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
          }
        }
      }

      PowerlogControlSwitchMode();
    }
  }
}

BOOL __37__PLSubmissions_taskingModeSafeguard__block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  taskingModeSafeguard_classDebugEnabled = result;
  return result;
}

BOOL __37__PLSubmissions_taskingModeSafeguard__block_invoke_2(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  taskingModeSafeguard_classDebugEnabled_338 = result;
  return result;
}

- (void)taskingModeSetup
{
  v27 = *MEMORY[0x1E69E9840];
  self->_taskingStarted = 0;
  if (!+[PLDefaults taskMode])
  {
LABEL_21:
    v21 = *MEMORY[0x1E69E9840];
    return;
  }

  if (![PLDefaults objectExistsForKey:@"PLTaskingOnDemandStartDate"])
  {
    v4 = dispatch_time(0, 10000000000);
    v5 = [(PLSubmissions *)self workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33__PLSubmissions_taskingModeSetup__block_invoke;
    block[3] = &unk_1E85190B8;
    block[4] = self;
    dispatch_after(v4, v5, block);

    PLADClientAddValueForScalarKey();
    AnalyticsSendEventLazy();
    [PLSubmissionConfig submitTaskingDefaultsCheckStateToCA:@"OnDemandTaskingStart"];
    v6 = [MEMORY[0x1E695DF00] monotonicDate];
    [PLDefaults setObject:v6 forKey:@"PLTaskingOnDemandStartDate" saveToDisk:1];
    if (+[PLDefaults debugEnabled])
    {
      v7 = objc_opt_class();
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __33__PLSubmissions_taskingModeSetup__block_invoke_2_357;
      v23[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v23[4] = v7;
      if (taskingModeSetup_defaultOnce != -1)
      {
        dispatch_once(&taskingModeSetup_defaultOnce, v23);
      }

      if (taskingModeSetup_classDebugEnabled == 1)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"starting on demand logging with startTime=%@", v6];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
        v10 = [v9 lastPathComponent];
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions taskingModeSetup]"];
        [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:871];

        v12 = PLLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }
    }

    v13 = +[PLCoreStorage additionalTables];
    v14 = PLLogSubmission();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v13;
      _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "AdditionalTables: %@", buf, 0xCu);
    }

    [(PLSubmissions *)self logTaskingStatus:0 withAction:0 withTables:v13];
    v15 = +[PLEntryKey PLEntryKeyStringsForTasking];
    [(PLSubmissions *)self logTaskingTablesTurnedOn:v15];
    [(PLSubmissions *)self enableHangtracer];
    +[PLEntryKey PLEntryKeyStringsForTaskingReset];
    self->_taskingStarted = 1;
    if ([PLDefaults objectExistsForKey:@"PLTaskingFiles"])
    {
      v16 = [PLDefaults objectForKey:@"PLTaskingFiles"];
      v17 = [v16 containsObject:@"PLL-Upgrade"];

      if (v17)
      {
        v18 = PLLogSubmission();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_INFO, "Upgrade powerlog requested", buf, 2u);
        }

        v19 = dispatch_time(0, 10000000000);
        v20 = [(PLSubmissions *)self workQueue];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __33__PLSubmissions_taskingModeSetup__block_invoke_362;
        v22[3] = &unk_1E85190B8;
        v22[4] = self;
        dispatch_after(v19, v20, v22);
      }
    }

    goto LABEL_21;
  }

  v3 = *MEMORY[0x1E69E9840];

  [(PLSubmissions *)self logTaskingStatus:0 withAction:3];
}

void __33__PLSubmissions_taskingModeSetup__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getCurrentDRConfig];
  v1 = v2;
  AnalyticsSendEventLazy();
}

id __33__PLSubmissions_taskingModeSetup__block_invoke_2(id *a1)
{
  v1 = a1;
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"SubmissionConfigUUID";
  v2 = [a1[4] configUUID];
  if (v2)
  {
    v1 = [v1[4] configUUID];
    v3 = [v1 UUIDString];
  }

  else
  {
    v3 = @"UNKNOWN";
  }

  v9[0] = v3;
  v9[1] = &unk_1F54061C8;
  v8[1] = @"SubmissionError";
  v8[2] = @"SubmissionMode";
  v4 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults mode](PLDefaults, "mode")}];
  v9[2] = v4;
  v9[3] = &unk_1F5406210;
  v8[3] = @"SubmissionReason";
  v8[4] = @"SubmissionStage";
  v9[4] = &unk_1F5406300;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];

  if (v2)
  {
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

BOOL __33__PLSubmissions_taskingModeSetup__block_invoke_2_357(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  taskingModeSetup_classDebugEnabled = result;
  return result;
}

void __33__PLSubmissions_taskingModeSetup__block_invoke_362(uint64_t a1)
{
  v3 = [*(a1 + 32) getCurrentDRConfig];
  v2 = [[PLSubmissionConfig alloc] initWithReasonType:4 DRConfig:v3];
  if (v2)
  {
    [*(a1 + 32) submitWithTaskingConfig:v2];
  }
}

- (id)createWatchdogForSubmissionActivity:(id)a3
{
  v4 = a3;
  v5 = [PLTimer alloc];
  v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:3600.0];
  v7 = dispatch_get_global_queue(2, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PLSubmissions_createWatchdogForSubmissionActivity___block_invoke;
  v11[3] = &unk_1E851AF48;
  v12 = v4;
  v13 = self;
  v8 = v4;
  v9 = [(PLTimer *)v5 initWithFireDate:v6 withInterval:0 withTolerance:0 repeats:v7 withUserInfo:v11 withQueue:0.0 withBlock:0.0];

  return v9;
}

uint64_t __53__PLSubmissions_createWatchdogForSubmissionActivity___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[ERROR] Watchdog fired %@", *(a1 + 32)];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
  v4 = [v3 lastPathComponent];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions createWatchdogForSubmissionActivity:]_block_invoke"];
  [PLCoreStorage logMessage:v2 fromFile:v4 fromFunction:v5 fromLineNumber:911];

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v10 = v2;
    _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [*(a1 + 40) sendSubmissionIssueSignature:*(a1 + 32)];
  result = [PLUtilities exitWithReason:1002];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)stopWatchdogForSubmissionActivity:(id)a3
{
  v3 = a3;
  [v3 setTimerActive:0];
  [v3 invalidate];
}

- (void)sendSubmissionIssueSignature:(id)a3
{
  v7 = a3;
  v3 = objc_alloc_init(MEMORY[0x1E69D4F78]);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 processName];
    v6 = [v3 signatureWithDomain:@"PowerlogSubmission" type:@"Timeout" subType:v7 subtypeContext:&stru_1F539D228 detectedProcess:v5 triggerThresholdValues:@"3600"];

    [v3 snapshotWithSignature:v6 duration:0 events:0 payload:0 actions:&__block_literal_global_384 reply:600.0];
  }
}

void __46__PLSubmissions_sendSubmissionIssueSignature___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69D50C8]];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69D50B8]];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SDRDiagnosticReporter response = %@, sessionID = %@", v2, v5];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
    v8 = [v7 lastPathComponent];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions sendSubmissionIssueSignature:]_block_invoke"];
    [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:936];

    v10 = PLLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SDRDiagnosticReporter dampened"];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Storage/PLSubmissions.m"];
    v12 = [v11 lastPathComponent];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLSubmissions sendSubmissionIssueSignature:]_block_invoke"];
    [PLCoreStorage logMessage:v5 fromFile:v12 fromFunction:v13 fromLineNumber:939];

    v6 = PLLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)initSubmissionQueue
{
  v82 = *MEMORY[0x1E69E9840];
  v2 = PLLogSubmission();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "Initializing submission queue", buf, 2u);
  }

  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"PLSubmissionConfig"];
  v6 = [v3 enumeratorAtPath:v5];

  v7 = 0x1E696A000uLL;
  v57 = [MEMORY[0x1E695DF70] array];
  v58 = [MEMORY[0x1E695DFA8] set];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v71 objects:v81 count:16];
  v59 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = *v72;
    do
    {
      v12 = 0;
      do
      {
        if (*v72 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v71 + 1) + 8 * v12);
        v14 = NSTemporaryDirectory();
        v15 = [v14 stringByAppendingPathComponent:@"PLSubmissionConfig"];
        v16 = [v15 stringByAppendingPathComponent:v13];

        v70 = 0;
        v17 = [*(v7 + 3080) defaultManager];
        LODWORD(v14) = [v17 fileExistsAtPath:v16 isDirectory:&v70];

        if (v14 && (v70 & 1) == 0)
        {
          v18 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v16];
          v19 = MEMORY[0x1E696ACD0];
          v20 = objc_opt_class();
          v69 = 0;
          v21 = [v19 unarchivedObjectOfClass:v20 fromData:v18 error:&v69];
          v22 = v69;
          if (v22)
          {
            v23 = PLLogSubmission();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v78 = v16;
              v79 = 2112;
              v80 = v22;
              _os_log_error_impl(&dword_1D8611000, v23, OS_LOG_TYPE_ERROR, "Failed to read record from file: %@, error: %@", buf, 0x16u);
            }

            goto LABEL_18;
          }

          v24 = [*(v7 + 3080) defaultManager];
          v25 = [v21 filePath];
          v26 = [v24 fileExistsAtPath:v25];

          if (v26)
          {
            [v57 addObject:v21];
            v27 = [v21 tagUUID];
            [v58 addObject:v27];
            v22 = v18;
            v7 = 0x1E696A000;
          }

          else
          {
            v23 = PLLogSubmission();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v28 = [v21 filePath];
              *buf = 138412546;
              v78 = v28;
              v79 = 2112;
              v80 = v21;
              _os_log_error_impl(&dword_1D8611000, v23, OS_LOG_TYPE_ERROR, "File %@ does not exist for record %@", buf, 0x16u);
            }

            v7 = 0x1E696A000uLL;
LABEL_18:

            v27 = v21;
            v21 = v18;
          }

          v8 = v59;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v71 objects:v81 count:16];
    }

    while (v10);
  }

  [*(v7 + 3080) defaultManager];
  v30 = v29 = v7;
  v68 = 0;
  v31 = [v30 contentsOfDirectoryAtPath:@"/tmp/powerlog/" error:&v68];
  v32 = v68;

  if (v32)
  {
    v33 = PLLogSubmission();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v78 = v32;
      _os_log_impl(&dword_1D8611000, v33, OS_LOG_TYPE_DEFAULT, "Failed to read contents at tmp: %@", buf, 0xCu);
    }
  }

  else
  {
    v55 = v31;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v34 = v31;
    v35 = [v34 countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = v29;
      v38 = *v65;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v65 != v38)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(*(&v64 + 1) + 8 * i);
          v41 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v40];
          if (v41)
          {
            v42 = [@"/tmp/powerlog/" stringByAppendingPathComponent:v40];
            v70 = 0;
            v43 = [*(v37 + 3080) defaultManager];
            v44 = [v43 fileExistsAtPath:v42 isDirectory:&v70];

            if (v44 && v70 == 1 && ([v40 containsString:@"cloud"] & 1) == 0)
            {
              v45 = [v40 lastPathComponent];
              if (([v58 containsObject:v45] & 1) == 0)
              {
                v46 = PLLogSubmission();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v78 = v45;
                  _os_log_impl(&dword_1D8611000, v46, OS_LOG_TYPE_DEFAULT, "Removing temporary files for: %@", buf, 0xCu);
                }

                [(PLSubmissions *)self cleanupTemporarySubmissionFilesForTag:v45];
              }
            }

            v37 = 0x1E696A000;
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v64 objects:v76 count:16];
      }

      while (v36);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v33 = v57;
    v47 = [v33 countByEnumeratingWithState:&v60 objects:v75 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v61;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v61 != v49)
          {
            objc_enumerationMutation(v33);
          }

          v51 = *(*(&v60 + 1) + 8 * j);
          v52 = PLLogSubmission();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            v53 = [v51 tagUUID];
            *buf = 138412290;
            v78 = v53;
            _os_log_impl(&dword_1D8611000, v52, OS_LOG_TYPE_DEFAULT, "Initialized and enqueued record from disk: %@", buf, 0xCu);
          }

          [(PLSubmissions *)self enqueueSubmissionRecord:v51];
        }

        v48 = [v33 countByEnumeratingWithState:&v60 objects:v75 count:16];
      }

      while (v48);
    }

    v8 = v59;
    v32 = 0;
    v31 = v55;
  }

  v54 = *MEMORY[0x1E69E9840];
}

- (void)cleanupTemporarySubmissionFilesForTag:(id)a3
{
  v4 = a3;
  v5 = [PLSubmissionRecord getDASubmissionDirPathForTag:v4];
  [(PLSubmissions *)self removeFileAtPath:v5];

  v6 = [PLSubmissionRecord getCKSubmissionDirPathForTag:v4];

  [(PLSubmissions *)self removeFileAtPath:v6];
}

- (void)persistSubmissionInfo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = NSTemporaryDirectory();
    v5 = [v4 stringByAppendingPathComponent:@"PLSubmissionConfig"];
    v6 = [v3 tagUUID];
    v7 = [v5 stringByAppendingPathComponent:v6];

    if ([PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:v7])
    {
      v13 = 0;
      v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v13];
      v9 = v13;
      if (v9)
      {
        v10 = PLLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [PLSubmissions persistSubmissionInfo:];
        }
      }

      else
      {
        v10 = [v7 stringByAppendingPathComponent:@"record"];
        if (([v8 writeToFile:v10 atomically:1] & 1) == 0)
        {
          v11 = PLLogCommon();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [PLSubmissions persistSubmissionInfo:];
          }
        }
      }
    }

    else
    {
      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v15 = v7;
        _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Failed to create dir: %@", buf, 0xCu);
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)logSubmissionStateToAnalytics:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 stringWithFormat:@"%@.%@", @"com.apple.powerlog.iCloudTaskingSubmission", v4];
  PLADClientAddValueForScalarKey();
  AnalyticsSendEventLazy();
}

id __47__PLSubmissions_logSubmissionStateToAnalytics___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"state";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)emitCollisionEvent:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v10 = v3;
    v4 = [MEMORY[0x1E695DF90] dictionary];
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"TaskingBlobCollision"];
    v5 = [v10 configUUID];

    if (v5)
    {
      v6 = [v10 configUUID];
      v7 = [v6 UUIDString];
      [v4 setObject:v7 forKeyedSubscript:@"DPTaskingUUID"];
    }

    v8 = [v10 payloadDictionaryRepresentation];
    v9 = [v8 objectForKeyedSubscript:@"PLTaskingRequest"];

    if (v9)
    {
      [v4 setObject:v9 forKeyedSubscript:@"TaskingReason"];
    }

    _submitTaskingCAEventPayload(v4, @"Collision with DA tasking");

    v3 = v10;
  }
}

- (void)emitBlobDetectedEvent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = v4;
    if (![(PLSubmissions *)self internalSubmissionBehavior])
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      [v5 setObject:@"TaskingBlobDetected" forKeyedSubscript:@"TaskingState"];
      if ([v11 isDRTasking])
      {
        v6 = [v11 configUUID];

        if (v6)
        {
          v7 = [v11 configUUID];
          v8 = [v7 UUIDString];
          [v5 setObject:v8 forKeyedSubscript:@"DPTaskingUUID"];
        }
      }

      v9 = [v11 request];

      if (v9)
      {
        v10 = [v11 request];
        [v5 setObject:v10 forKeyedSubscript:@"TaskingReason"];
      }

      _submitTaskingCAEventPayload(v5, @"Tasking blob detected");
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (void)emitBlobVerifiedEvent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v13 = v4;
    if (![(PLSubmissions *)self internalSubmissionBehavior])
    {
      v5 = [MEMORY[0x1E695DF90] dictionary];
      [v5 setObject:@"TaskingBlobVerified" forKeyedSubscript:@"TaskingState"];
      if ([v13 isDRTasking])
      {
        v6 = [v13 configUUID];

        if (v6)
        {
          v7 = [v13 configUUID];
          v8 = [v7 UUIDString];
          [v5 setObject:v8 forKeyedSubscript:@"DPTaskingUUID"];
        }
      }

      v9 = [v13 blobFailureReason];

      if (v9)
      {
        v10 = [v13 blobFailureReason];
        [v5 setObject:v10 forKeyedSubscript:@"TaskingBlobFailureReason"];
      }

      v11 = [v13 request];

      if (v11)
      {
        v12 = [v13 request];
        [v5 setObject:v12 forKeyedSubscript:@"TaskingReason"];
      }

      _submitTaskingCAEventPayload(v5, @"Tasking blob verified");
    }
  }

  MEMORY[0x1EEE66BB8]();
}

- (PLStorageOperator)storageOperator
{
  WeakRetained = objc_loadWeakRetained(&self->_storageOperator);

  return WeakRetained;
}

void __58__PLSubmissions_XPCScheduling__submitRecord_withActivity___block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1D8611000, v0, OS_LOG_TYPE_DEBUG, "Record %@ completed: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)configFromMonitor:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 teamID];
  OUTLINED_FUNCTION_2();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1D8611000, a3, OS_LOG_TYPE_ERROR, "Error getting current config from DRConfigMonitor <%@> : %@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleDRConfigUpdate:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, v0, v1, "DRConfig error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)generateOTASubmissionAndSendTaskingEndSubmission:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Nothing to submit for reason %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)prepareAndEnqueueSubmissionFilesWithConfig:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "Not submitting submission record to DiagnosticPipeline due to missing info", buf, 2u);
}

- (void)submitRecordToDiagnosticPipeline:withConfig:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, v0, v1, "Error occurred when submitting to DiagnosticPipeline: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)persistSubmissionInfo:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0(&dword_1D8611000, v0, v1, "Failed to serialize record: %@, error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)persistSubmissionInfo:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, v0, v1, "Failed to write record %@ to file", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end