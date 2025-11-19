@interface PPSSafeguardController
+ (id)sharedInstance;
- (BOOL)debug_forceEligibility;
- (BOOL)debug_installDate;
- (BOOL)debug_treatAsTestDevice;
- (BOOL)handleTask:(id)a3;
- (BOOL)isTestDeviceForSafeguard;
- (BOOL)upload:(BOOL *)a3;
- (PPSSafeguardController)init;
- (id)eligibilityRange;
- (id)installDate;
- (id)lastSubmissionDate;
- (id)startDate;
- (id)stopDate;
- (id)todayRange;
- (id)uploadRange;
- (id)workQueue;
- (unint64_t)isEligible;
- (void)configureWithDefaultValues;
- (void)configureWithDictionary:(id)a3;
- (void)registerDataCollectionActivity;
- (void)setupDRTasking;
- (void)unregisterDataCollectionActivity;
@end

@implementation PPSSafeguardController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[PPSSafeguardController sharedInstance];
  }

  v3 = sharedInstance_result;

  return v3;
}

uint64_t __40__PPSSafeguardController_sharedInstance__block_invoke()
{
  sharedInstance_result = objc_alloc_init(PPSSafeguardController);

  return MEMORY[0x1EEE66BB8]();
}

- (void)registerDataCollectionActivity
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __56__PPSSafeguardController_registerDataCollectionActivity__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleTask:v3];
}

- (PPSSafeguardController)init
{
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd](PLUtilities, "isPerfPowerMetricd") || !+[PLPlatform internalBuild])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PPSSafeguardController;
    v3 = [(PPSSafeguardController *)&v7 init];
    v4 = v3;
    if (v3)
    {
      [(PPSSafeguardController *)v3 setupDRTasking];
    }

    self = v4;
    v5 = self;
  }

  return v5;
}

- (BOOL)upload:(BOOL *)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = PLLogSubmission();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "Performing safeguard submission...", buf, 2u);
  }

  v5 = [[PLSubmissionConfig alloc] initWithReasonType:2 DRConfig:0];
  v6 = [(PPSSafeguardController *)self dataDuration];
  if (v6 != 86400)
  {
    v7 = v6;
    v8 = [(PLSubmissionConfig *)v5 endDate];
    v9 = [v8 dateByAddingTimeInterval:-v7];
    [(PLSubmissionConfig *)v5 setStartDate:v9];

    v10 = PLLogSubmission();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PPSSafeguardController upload:];
    }
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [(PLSubmissionConfig *)v5 splitBySubmissionType];
  v52 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (!v52)
  {
    v45 = 1;
    goto LABEL_44;
  }

  v49 = v5;
  v51 = *v57;
  while (2)
  {
    for (i = 0; i != v52; ++i)
    {
      if (*v57 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v56 + 1) + 8 * i);
      v13 = [[PLSubmissionFilePLL alloc] initWithConfig:v12];
      v14 = v13;
      if (v13)
      {
        [(PLSubmissionFilePLL *)v13 submit];
        v15 = PLLogSubmission();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "Finished preparing PLL", buf, 2u);
        }

        if (*a3)
        {
          p_super = PLLogSubmission();
          if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, p_super, OS_LOG_TYPE_INFO, "Task expired after Powerlog generation", buf, 2u);
          }

          goto LABEL_43;
        }
      }

      v16 = [[PLSubmissionFileMSS alloc] initWithConfig:v12];
      p_super = &v16->super.super;
      if (v16)
      {
        [(PLSubmissionFileMSS *)v16 submit];
        v18 = PLLogSubmission();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_DEFAULT, "Finished preparing MSS", buf, 2u);
        }

        if (*a3)
        {
          v46 = PLLogSubmission();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1D8611000, v46, OS_LOG_TYPE_INFO, "Task expired after Microstackshots generation", buf, 2u);
          }

LABEL_43:
          v5 = v49;

          v45 = 0;
          goto LABEL_44;
        }
      }

      v19 = [[PLSubmissionFileSP alloc] initWithConfig:v12];
      v20 = v19;
      if (v19)
      {
        [(PLSubmissionFile *)v19 submit];
      }

      v21 = MEMORY[0x1E696AEC0];
      v22 = [v12 tagUUID];
      v23 = [v21 stringWithFormat:@"%@Powerlog_%@/", @"/tmp/powerlog/cloud/", v22];

      v24 = [MEMORY[0x1E696AC08] defaultManager];
      v25 = [v24 contentsOfDirectoryAtPath:v23 error:0];

      if (v25 && [v25 count])
      {
        v26 = MEMORY[0x1E6999F68];
        v27 = [MEMORY[0x1E695DFF8] fileURLWithPath:v23];
        v28 = [v26 archiveDirectoryAt:v27 deleteOriginal:1];

        v29 = [v28 path];
        [v12 setFilePath:v29];

        v30 = PLLogSubmission();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v43 = [v12 filePath];
          v44 = [v25 count];
          *buf = 138412546;
          v61 = v43;
          v62 = 1024;
          v63 = v44;
          _os_log_debug_impl(&dword_1D8611000, v30, OS_LOG_TYPE_DEBUG, "File to upload generated at %@ with %d files included.", buf, 0x12u);
        }
      }

      v31 = [v12 filePath];
      if (v31)
      {
        v32 = v31;
        v33 = [v12 ckTagConfig];
        if (v33)
        {
          v34 = v33;
          v35 = [v12 tagUUID];

          if (v35)
          {
            v36 = objc_alloc_init(PPSSubmissionRecord);
            v37 = [v12 contextDictionary];
            [(PPSSubmissionRecord *)v36 setContextDictionary:v37];

            [(PPSSubmissionRecord *)v36 setIsExpedited:1];
            v38 = MEMORY[0x1E695DFF8];
            v39 = [v12 filePath];
            v40 = [v38 fileURLWithPath:v39];
            [(PPSSubmissionRecord *)v36 setFilePath:v40];

            [(PPSSubmissionRecord *)v36 setFileType:@"gz"];
            v41 = [v12 submissionCategory];
            [(PPSSubmissionRecord *)v36 setIssueCategory:v41];

            v42 = [v12 getSubmitReasonTypeToReasonLog];
            [(PPSSubmissionRecord *)v36 setIssueDescription:v42];

            [(PPSSubmissionRecord *)v36 setRecordType:@"attachment"];
            [(PPSSubmissionRecord *)v36 setTargetContainer:@"com.apple.perfpowerservices.tasking"];
            [PPSSubmissionUtilities submit:v36];
            goto LABEL_34;
          }
        }

        else
        {
        }
      }

      v36 = PLLogSubmission();
      if (os_log_type_enabled(&v36->super, OS_LOG_TYPE_ERROR))
      {
        [(PPSSafeguardController *)&v54 upload:v55, &v36->super];
      }

LABEL_34:
    }

    v52 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v52)
    {
      continue;
    }

    break;
  }

  v45 = 1;
  v5 = v49;
LABEL_44:

  v47 = *MEMORY[0x1E69E9840];
  return v45;
}

- (unint64_t)isEligible
{
  v36 = *MEMORY[0x1E69E9840];
  if ([(PPSSafeguardController *)self isEnabled])
  {
    if ([(PPSSafeguardController *)self debug_forceEligibility])
    {
      v3 = PLLogSubmission();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "Forcing eligibility...", &v32, 2u);
      }

      v4 = 0;
      goto LABEL_42;
    }

    if ([(PPSSafeguardController *)self excludeTestDevices]&& [(PPSSafeguardController *)self isTestDeviceForSafeguard])
    {
      v3 = PLLogSubmission();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v32) = 0;
        _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "Excluding test device", &v32, 2u);
      }

      v4 = 5;
      goto LABEL_42;
    }

    v3 = [(PPSSafeguardController *)self installDate];
    v5 = PLLogSubmission();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v32 = 138412290;
      v33 = *&v3;
      _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_INFO, "Date/time of last OS install: %@", &v32, 0xCu);
    }

    v6 = [(PPSSafeguardController *)self todayRange];
    v7 = [(PPSSafeguardController *)self lastSubmissionDate];
    v8 = [v6 containsDate:v7];

    v9 = PLLogSubmission();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v10)
      {
        v11 = [(PPSSafeguardController *)self lastSubmissionDate];
        v32 = 138412290;
        v33 = *&v11;
        _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_INFO, "Safeguard submission already performed on '%@'", &v32, 0xCu);
      }

      v4 = 2;
      goto LABEL_41;
    }

    if (v10)
    {
      LOWORD(v32) = 0;
      _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_INFO, "Device has not yet performed upload", &v32, 2u);
    }

    v9 = [(PPSSafeguardController *)self currentDate];
    v12 = [(PPSSafeguardController *)self eligibilityRange];
    if (([v12 containsDate:v9] & 1) == 0)
    {
      v14 = PLLogSubmission();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v26 = [v12 startDate];
        v27 = [v12 endDate];
        v32 = 138412546;
        v33 = *&v26;
        v34 = 2112;
        v35 = *&v27;
        _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_INFO, "No install within eligibility range: ['%@', '%@']", &v32, 0x16u);
      }

      v4 = 3;
      goto LABEL_40;
    }

    v13 = [(PPSSafeguardController *)self uploadRange];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 containsDate:v9];
      v16 = PLLogSubmission();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
      if (v15)
      {
        if (v17)
        {
          v18 = [v12 startDate];
          v19 = [v12 endDate];
          v32 = 138412546;
          v33 = *&v18;
          v34 = 2112;
          v35 = *&v19;
          _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "Device is within eligibility range: ['%@', '%@']", &v32, 0x16u);
        }

        v20 = [MEMORY[0x1E695DF00] date];
        [v20 timeIntervalSinceDate:v3];
        v22 = v21;

        [(PPSSafeguardController *)self minimumLiveOnTime];
        v24 = v23;
        v16 = PLLogSubmission();
        v25 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
        if (v24 <= 0.0 || v22 >= v24)
        {
          if (v25)
          {
            v32 = 134218240;
            v33 = v24;
            v34 = 2048;
            v35 = v22;
            _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "Device meets minimum LiveOn time of '%f': %f", &v32, 0x16u);
          }

          v4 = 0;
        }

        else
        {
          if (v25)
          {
            v32 = 134218240;
            v33 = v22;
            v34 = 2048;
            v35 = v24;
            _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "Current LiveOn time '%f' does not yet meet minimum time required '%f'", &v32, 0x16u);
          }

          v4 = 4;
        }

        goto LABEL_39;
      }

      if (v17)
      {
        v28 = [v14 startDate];
        v29 = [v14 endDate];
        v32 = 138412546;
        v33 = *&v28;
        v34 = 2112;
        v35 = *&v29;
        _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "Not currently within upload range: ['%@', '%@']", &v32, 0x16u);
      }
    }

    else
    {
      v16 = PLLogSubmission();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [(PPSSafeguardController *)v16 isEligible];
      }
    }

    v4 = 6;
LABEL_39:

LABEL_40:
LABEL_41:

    goto LABEL_42;
  }

  v3 = PLLogSubmission();
  v4 = 1;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v32) = 0;
    v4 = 1;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_INFO, "Disabled for eligiblity", &v32, 2u);
  }

LABEL_42:

  v30 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isTestDeviceForSafeguard
{
  if ([(PPSSafeguardController *)self debug_treatAsTestDevice])
  {
    return 1;
  }

  v3 = +[PLUtilities automatedDeviceGroup];
  v4 = [v3 length];

  +[PLFileStats totalLogDuration];
  return v5 < 86400.0 && v4 != 0;
}

- (BOOL)handleTask:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3020000000;
  v29 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __37__PPSSafeguardController_handleTask___block_invoke;
  v25[3] = &unk_1E8519E68;
  v25[4] = &v26;
  [v4 setExpirationHandler:v25];
  v5 = [(PPSSafeguardController *)self isEligible];
  v6 = v5;
  if (v5 > 6)
  {
    goto LABEL_18;
  }

  if (((1 << v5) & 0x6E) != 0)
  {
    [v4 setTaskCompleted];
LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  if (v5)
  {
LABEL_18:
    v23 = PLLogSubmission();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v31 = v6;
      _os_log_impl(&dword_1D8611000, v23, OS_LOG_TYPE_INFO, "Postponing safeguard submission with status '%lud'", buf, 0xCu);
    }

    goto LABEL_4;
  }

  v7 = [(PPSSafeguardController *)self upload:v27 + 5];
LABEL_5:
  [(PPSSafeguardController *)self reportEventToCA:v6 didUpload:v7];
  if (v4)
  {
    if (v7)
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = [(PPSSafeguardController *)self currentDate];
      [v9 timeIntervalSince1970];
      v10 = [v8 numberWithDouble:?];
      [PLDefaults setObject:v10 forKey:@"PPSSafeguardDefaultLastSubmissionTime"];

      [v4 setTaskCompleted];
    }

    else
    {
      v11 = PLLogSubmission();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_INFO, "Deferring safeguard submission...", buf, 2u);
      }

      v24 = 0;
      v12 = [v4 setTaskExpiredWithRetryAfter:&v24 error:0.0];
      v13 = v24;
      if ((v12 & 1) == 0)
      {
        v14 = PLLogSubmission();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(PPSSafeguardController *)v13 handleTask:v14, v15, v16, v17, v18, v19, v20];
        }

        [v4 setTaskCompleted];
      }
    }
  }

  _Block_object_dispose(&v26, 8);

  v21 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)workQueue
{
  v2 = objc_opt_class();

  return [PLUtilities workQueueForClass:v2];
}

- (void)setupDRTasking
{
  v3 = objc_alloc(MEMORY[0x1E699A070]);
  v4 = [(PPSSafeguardController *)self workQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__PPSSafeguardController_setupDRTasking__block_invoke;
  v7[3] = &unk_1E8519E90;
  v7[4] = self;
  v5 = [v3 initWithTeamID:@"perfpowerservices.safeguard.config" targetQueue:v4 configProcessingBlock:v7];
  drConfigMonitor = self->_drConfigMonitor;
  self->_drConfigMonitor = v5;
}

void __40__PPSSafeguardController_setupDRTasking__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = PLLogSubmission();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __40__PPSSafeguardController_setupDRTasking__block_invoke_cold_1(v6, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v5 teamID];
        v16 = [v5 configUUID];
        v17 = [v5 receivedDate];
        *buf = 138412802;
        v32 = v15;
        v33 = 2112;
        v34 = v16;
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "DRConfig for teamID <%@> received: %@, receive time: %@", buf, 0x20u);
      }

      v18 = *(a1 + 32);
      v19 = [v5 payloadDictionaryRepresentation];
      [v18 configureWithDictionary:v19];

      v20 = [*(a1 + 32) drConfigMonitor];
      v21 = [v5 configUUID];
      v30 = 0;
      [v20 markCompletedConfigUUID:v21 errorOut:&v30];
      v8 = v30;

      if (v8)
      {
        v22 = PLLogSubmission();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          __40__PPSSafeguardController_setupDRTasking__block_invoke_cold_2(v8, v22, v23, v24, v25, v26, v27, v28);
        }
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)configureWithDefaultValues
{
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterDataDuration"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterExcludeTestDevices"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterStartHour"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterStopHour"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterIsEnabled"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterMinimumLiveOnTime"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardParameterEligibilityDuration"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardDebugParameterForceEligibility"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardDebugParameterInstallDate"];
  [PLDefaults setObject:0 forKey:@"PPSSafeguardDebugParameterTreatAsTestDevice"];

  [PLDefaults setObject:0 forKey:@"PPSSafeguardDefaultLastSubmissionTime"];
}

- (void)configureWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = PLLogSubmission();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PPSSafeguardController configureWithDictionary:];
    }

    v5 = [v3 objectForKeyedSubscript:@"PPSSafeguardParameterIsEnabled"];
    if (v5)
    {
      [PLDefaults setObject:v5 forKey:@"PPSSafeguardParameterIsEnabled"];
      v6 = PLLogSubmission();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterIsEnabled";
        v22 = 2112;
        v23 = v5;
        _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v7 = [v3 objectForKeyedSubscript:@"PPSSafeguardParameterDataDuration"];
    if (v7)
    {
      [PLDefaults setObject:v7 forKey:@"PPSSafeguardParameterDataDuration"];
      v8 = PLLogSubmission();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterDataDuration";
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v9 = [v3 objectForKeyedSubscript:@"PPSSafeguardParameterMinimumLiveOnTime"];
    if (v9)
    {
      [PLDefaults setObject:v9 forKey:@"PPSSafeguardParameterMinimumLiveOnTime"];
      v10 = PLLogSubmission();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterMinimumLiveOnTime";
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v11 = [v3 objectForKeyedSubscript:@"PPSSafeguardParameterStartHour"];
    if (v11)
    {
      [PLDefaults setObject:v11 forKey:@"PPSSafeguardParameterStartHour"];
      v12 = PLLogSubmission();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterStartHour";
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_1D8611000, v12, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v13 = [v3 objectForKeyedSubscript:@"PPSSafeguardParameterStopHour"];
    if (v13)
    {
      [PLDefaults setObject:v13 forKey:@"PPSSafeguardParameterStopHour"];
      v14 = PLLogSubmission();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterStopHour";
        v22 = 2112;
        v23 = v13;
        _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v15 = [v3 objectForKeyedSubscript:@"PPSSafeguardParameterEligibilityDuration"];
    if (v15)
    {
      [PLDefaults setObject:v15 forKey:@"PPSSafeguardParameterEligibilityDuration"];
      v16 = PLLogSubmission();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterEligibilityDuration";
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }

    v17 = [v3 objectForKeyedSubscript:@"PPSSafeguardParameterExcludeTestDevices"];
    if (v17)
    {
      [PLDefaults setObject:v17 forKey:@"PPSSafeguardParameterExcludeTestDevices"];
      v18 = PLLogSubmission();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = @"PPSSafeguardParameterExcludeTestDevices";
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_1D8611000, v18, OS_LOG_TYPE_INFO, "Set modified parameter '%@': %@", &v20, 0x16u);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)installDate
{
  v2 = [(PPSSafeguardController *)self debug_installDate];
  v3 = MEMORY[0x1E695DF00];
  if (v2)
  {
    v4 = @"PPSSafeguardDebugParameterInstallDate";
  }

  else
  {
    v4 = @"LastUpgradeSystemTimestamp";
  }

  [PLDefaults doubleForKey:v4 ifNotSet:-1.0];
  v5 = [v3 dateWithTimeIntervalSince1970:?];

  return v5;
}

- (id)lastSubmissionDate
{
  if ([PLDefaults objectExistsForKey:@"PPSSafeguardDefaultLastSubmissionTime"])
  {
    v2 = MEMORY[0x1E695DF00];
    [PLDefaults doubleForKey:@"PPSSafeguardDefaultLastSubmissionTime"];
    v3 = [v2 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)startDate
{
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v5 = [(PPSSafeguardController *)self startHour];
  v6 = [(PPSSafeguardController *)self currentDate];
  v7 = [v4 dateBySettingHour:v5 minute:0 second:0 ofDate:v6 options:0];

  return v7;
}

- (id)stopDate
{
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v5 = [(PPSSafeguardController *)self stopHour];
  v6 = [(PPSSafeguardController *)self currentDate];
  v7 = [v4 dateBySettingHour:v5 minute:0 second:0 ofDate:v6 options:0];

  return v7;
}

- (id)eligibilityRange
{
  v3 = [(PPSSafeguardController *)self eligibilityDuration];
  v4 = [(PPSSafeguardController *)self installDate];
  v5 = [MEMORY[0x1E695DF00] nearestMidnightBeforeDate:v4];
  v6 = [v5 dateByAddingTimeInterval:v3];
  v7 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v5 endDate:v6];

  return v7;
}

- (id)todayRange
{
  v2 = [(PPSSafeguardController *)self currentDate];
  v3 = [MEMORY[0x1E695DF00] nearestMidnightBeforeDate:v2];
  v4 = [MEMORY[0x1E695DF00] nearestMidnightAfterDate:v2];
  v5 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v3 endDate:v4];

  return v5;
}

- (id)uploadRange
{
  v3 = [(PPSSafeguardController *)self startDate];
  v4 = [(PPSSafeguardController *)self stopDate];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v3 endDate:v4];
  }

  return v6;
}

- (BOOL)debug_forceEligibility
{
  v2 = +[PLDefaults debugEnabled];
  if (v2)
  {

    LOBYTE(v2) = [PLDefaults BOOLForKey:@"PPSSafeguardDebugParameterForceEligibility" ifNotSet:0];
  }

  return v2;
}

- (BOOL)debug_installDate
{
  v2 = +[PLDefaults debugEnabled];
  if (v2)
  {

    LOBYTE(v2) = [PLDefaults objectExistsForKey:@"PPSSafeguardDebugParameterInstallDate"];
  }

  return v2;
}

- (BOOL)debug_treatAsTestDevice
{
  v2 = +[PLDefaults debugEnabled];
  if (v2)
  {

    LOBYTE(v2) = [PLDefaults BOOLForKey:@"PPSSafeguardDebugParameterTreatAsTestDevice"];
  }

  return v2;
}

- (void)unregisterDataCollectionActivity
{
  v10 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if ([(PPSSafeguardController *)self isEnabled])
    {
      v3 = [MEMORY[0x1E698E4C0] sharedScheduler];
      v4 = [v3 taskRequestForIdentifier:@"com.apple.perfpowerservices.safeguard"];

      if (v4)
      {
        v5 = PLLogSubmission();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          v8 = 138412290;
          v9 = @"com.apple.perfpowerservices.safeguard";
          _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_INFO, "Unregistering safeguard collection activity ('%@')...", &v8, 0xCu);
        }

        v6 = [MEMORY[0x1E698E4C0] sharedScheduler];
        [v6 deregisterTaskWithIdentifier:@"com.apple.perfpowerservices.safeguard"];
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)upload:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)upload:(os_log_t)log .cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D8611000, log, OS_LOG_TYPE_ERROR, "Cannot submit record to DiagnosticPipeline due to missing info", buf, 2u);
}

- (void)handleTask:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, a2, a3, "Failed to expire task with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __40__PPSSafeguardController_setupDRTasking__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, a2, a3, "DRConfig error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __40__PPSSafeguardController_setupDRTasking__block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3(&dword_1D8611000, a2, a3, "Error trying to mark DRConfig as completed: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)configureWithDictionary:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end