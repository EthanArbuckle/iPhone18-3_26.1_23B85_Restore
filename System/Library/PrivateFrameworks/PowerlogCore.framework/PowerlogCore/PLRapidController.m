@interface PLRapidController
+ (BOOL)deferActivity:(id)a3;
+ (BOOL)diagnosticLogSubmissionEnabled;
+ (BOOL)finishActivity:(id)a3 withStatus:(int64_t)a4;
+ (BOOL)randomBoolWithYesPercentage:(double)a3;
+ (id)allTablesInDB:(id)a3;
+ (id)appsToKeep:(id)a3;
+ (id)dataCollectionCriterion;
+ (id)sharedInstance;
+ (id)trimConditionsForTables:(id)a3 trimDate:(id)a4;
+ (int)hangTypeFromStr:(id)a3;
+ (void)cleanup;
+ (void)dropDataFromDB:(id)a3 withConfig:(id)a4;
+ (void)dropTablesFromDB:(id)a3 withConfig:(id)a4;
+ (void)offsetTimestampsInDB:(id)a3 withConfig:(id)a4 withBaseTimestamp:(double)a5;
+ (void)roundDataInDB:(id)a3 withConfig:(id)a4;
- (BOOL)copyDB;
- (BOOL)packageDB:(id)a3;
- (BOOL)prepareMSSLog;
- (BOOL)preparePerfPowerlog:(id)a3 shouldDefer:(BOOL *)a4;
- (BOOL)shouldDoRapidCollection;
- (PLRapidController)init;
- (id)configFromMonitor:(id)a3;
- (id)generateContextDictionary:(id)a3;
- (id)generateDummyPayload;
- (id)logGenerationStats;
- (id)packageAllLogs;
- (id)setupConnection;
- (id)topAppsRunTime;
- (id)uploadLog:(id)a3;
- (void)addMDLogContext:(id)a3;
- (void)addMSSContext:(id)a3;
- (void)completeTaskingConfig:(id)a3;
- (void)dropAppVersions:(id)a3;
- (void)dropDuplicateRows:(id)a3;
- (void)generateDummyPayload;
- (void)handleDRConfigUpdate:(id)a3 error:(id)a4;
- (void)handleXPCActivityCallback:(id)a3;
- (void)initializeSamplingPercentage;
- (void)initializeTaskingParams;
- (void)logHangSignposts:(id)a3 toDB:(id)a4;
- (void)logSignpostDataToDB:(id)a3;
- (void)logToCADataUploadState:(id)a3;
- (void)logToCALogGenerationStats:(id)a3;
- (void)persistActivityState;
- (void)prepareMSSLog;
- (void)pruneDB:(id)a3 withConfig:(id)a4;
- (void)registerDataCollectionActivity;
- (void)rejectTaskingConfig:(id)a3;
- (void)resetActivity;
- (void)setLogCreationStartDate;
- (void)setMDLogCompressedFilePath;
- (void)setMDLogFilePath;
- (void)setMSSCompressedFilePath;
- (void)setMSSFilePath;
- (void)setupDRTasking;
- (void)stopDRTasking;
- (void)trimAndFilterDB:(id)a3 withConfig:(id)a4;
@end

@implementation PLRapidController

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PLRapidController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_instance_1;

  return v2;
}

uint64_t __35__PLRapidController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance_instance_1 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (PLRapidController)init
{
  if (+[PLUtilities isPowerlogHelperd](PLUtilities, "isPowerlogHelperd") || +[PLUtilities isPerfPowerMetricd])
  {
    v3 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PLRapidController;
    v4 = [(PLRapidController *)&v7 init];
    v5 = v4;
    if (v4)
    {
      [(PLRapidController *)v4 setupDRTasking];
    }

    self = v5;
    v3 = self;
  }

  return v3;
}

- (void)initializeSamplingPercentage
{
  v15 = *MEMORY[0x1E69E9840];
  if (+[PLPlatform internalBuild])
  {
    v3 = 100.0;
  }

  else
  {
    v4 = +[PLPlatform seedBuild];
    v3 = 0.2;
    if (v4)
    {
      v3 = 20.0;
    }
  }

  [(PLRapidController *)self setSamplingPercentage:v3];
  [PLDefaults doubleForKey:@"RapidSamplingPercentage" ifNotSet:-1.0];
  v6 = v5;
  [PLDefaults doubleForKey:@"RapidTaskedSamplingPercentage" ifNotSet:-1.0];
  if (v6 >= 0.0)
  {
    v9 = RapidLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v6;
      _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Overriding sampling percentage with manual override = %f", &v13, 0xCu);
    }
  }

  else
  {
    v8 = v7;
    if (v7 < 0.0)
    {
      goto LABEL_13;
    }

    v9 = RapidLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = v8;
      _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Overriding sampling percentage with tasking override = %f", &v13, 0xCu);
    }

    v6 = v8;
  }

  [(PLRapidController *)self setSamplingPercentage:v6];
LABEL_13:
  v10 = RapidLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [(PLRapidController *)self samplingPercentage];
    v13 = 134217984;
    v14 = v11;
    _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "RAPID sampling percentage: %f", &v13, 0xCu);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)initializeTaskingParams
{
  v3 = [PLDefaults objectForKey:@"RapidTaskingConfigUUID"];
  [(PLRapidController *)self setConfigUUID:v3];

  v4 = [PLDefaults objectForKey:@"RapidTaskingRequest"];
  [(PLRapidController *)self setTaskingRequestReason:v4];
}

- (void)persistActivityState
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PLRapidController stage](self, "stage")}];
  [PLDefaults setObject:v3 forKey:@"RapidStage" saveToDisk:1];

  v4 = [(PLRapidController *)self logCreationStartDate];
  [PLDefaults setObject:v4 forKey:@"RapidStartDate" saveToDisk:1];

  [PLDefaults doubleForKey:@"RapidDeferralCount" ifNotSet:0.0];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v5 + 1.0];
  [PLDefaults setObject:v6 forKey:@"RapidDeferralCount" saveToDisk:1];

  v7 = [(PLRapidController *)self logCreationResumeDate];
  [v7 timeIntervalSinceNow];
  v9 = v8;

  [PLDefaults doubleForKey:@"RapidProcessingTime" ifNotSet:0.0];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v10 - v9];
  [PLDefaults setObject:v11 forKey:@"RapidProcessingTime" saveToDisk:1];
}

- (void)resetActivity
{
  [PLDefaults setObject:0 forKey:@"RapidStage" saveToDisk:1];
  [PLDefaults setObject:0 forKey:@"RapidStartDate" saveToDisk:1];
  [PLDefaults setObject:0 forKey:@"RapidDeferralCount" saveToDisk:1];

  [PLDefaults setObject:0 forKey:@"RapidProcessingTime" saveToDisk:1];
}

- (void)registerDataCollectionActivity
{
  v3 = RapidLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Register XPC activity", buf, 2u);
  }

  v4 = *MEMORY[0x1E69E9C50];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __51__PLRapidController_registerDataCollectionActivity__block_invoke;
  handler[3] = &unk_1E8519FA8;
  handler[4] = self;
  xpc_activity_register("com.apple.RAPID.DataCollectionActivity", v4, handler);
}

void __51__PLRapidController_registerDataCollectionActivity__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = RapidLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "XPC activity handler invoked", buf, 2u);
  }

  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v10 = RapidLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "XPC activity stats -> run", v11, 2u);
    }

    [*(a1 + 32) handleXPCActivityCallback:v3];
  }

  else if (!state)
  {
    v6 = RapidLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "XPC activity state -> check-in", v12, 2u);
    }

    v7 = xpc_activity_copy_criteria(v3);
    v8 = v7;
    if (!v7 || !xpc_dictionary_get_count(v7))
    {
      v9 = +[PLRapidController dataCollectionCriterion];
      xpc_activity_set_criteria(v3, v9);
    }
  }
}

- (void)handleXPCActivityCallback:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [PLDefaults doubleForKey:@"RapidStage" ifNotSet:-1.0];
  [(PLRapidController *)self setStage:v5];
  [(PLRapidController *)self initializeSamplingPercentage];
  [(PLRapidController *)self initializeTaskingParams];
  if ([(PLRapidController *)self stage]!= -1)
  {
    goto LABEL_4;
  }

  [(PLRapidController *)self logToCADataUploadState:@"CheckShouldUpload"];
  if ([(PLRapidController *)self shouldDoRapidCollection])
  {
    [(PLRapidController *)self setStage:[(PLRapidController *)self stage]+ 1];
    [(PLRapidController *)self logToCADataUploadState:@"LogGenerationStart"];
LABEL_4:
    [(PLRapidController *)self setLogCreationStartDate];
    v6 = RapidLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PLRapidController *)self logCreationStartDate];
      *buf = 138412290;
      v21 = v7;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "Log generation started at %@", buf, 0xCu);
    }

    v19 = 0;
    v8 = [(PLRapidController *)self preparePerfPowerlog:v4 shouldDefer:&v19];
    if (v19 == 1)
    {
      [(PLRapidController *)self persistActivityState];
      [PLRapidController deferActivity:v4];
    }

    else
    {
      v9 = v8;
      [(PLRapidController *)self prepareMSSLog];
      [(PLRapidController *)self setStage:6];
      v10 = [MEMORY[0x1E695DF00] date];
      [(PLRapidController *)self setLogCreationEndDate:v10];

      v11 = RapidLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(PLRapidController *)self logCreationEndDate];
        *buf = 138412546;
        v21 = v12;
        v22 = 1024;
        v23 = v9;
        _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "Log generation ended at %@ success: %d", buf, 0x12u);
      }

      if (v9)
      {
        v13 = [(PLRapidController *)self packageAllLogs];
        if (v13)
        {
          [(PLRapidController *)self logToCADataUploadState:@"LogGenerationComplete"];
        }
      }

      else
      {
        v13 = 0;
      }

      [(PLRapidController *)self logToCADataUploadState:@"LogSubmitToDPAttempt"];
      v14 = [(PLRapidController *)self uploadLog:v13];
      [(PLRapidController *)self resetActivity];
      if (v14)
      {
        v15 = RapidLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [PLRapidController handleXPCActivityCallback:];
        }

        v16 = 3;
      }

      else
      {
        [(PLRapidController *)self logToCADataUploadState:@"LogSubmitToDPSuccess"];
        if (v13)
        {
          v16 = 0;
        }

        else
        {
          v16 = 3;
        }
      }

      [PLRapidController finishActivity:v4 withStatus:v16];
    }

    goto LABEL_25;
  }

  v17 = RapidLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_DEFAULT, "Device should not upload today!", buf, 2u);
  }

  [PLRapidController finishActivity:v4 withStatus:2];
LABEL_25:

  v18 = *MEMORY[0x1E69E9840];
}

+ (id)dataCollectionCriterion
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = RapidLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "Preparing data collection criterion", &v12, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9D88], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9C40], 0);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9DC0], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9C78], 1);
  xpc_dictionary_set_BOOL(v3, *MEMORY[0x1E69E9D00], 1);
  v4 = [PLDefaults objectForKey:@"RapidActivityInterval" ifNotSet:0];
  if (v4)
  {
    v5 = RapidLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Overriding RAPID activity interval to %@ secs", &v12, 0xCu);
    }

    v6 = *MEMORY[0x1E69E9CB0];
    v7 = [v4 unsignedIntValue];
    v8 = v3;
    v9 = v6;
  }

  else
  {
    xpc_dictionary_set_int64(v3, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CC0]);
    v9 = *MEMORY[0x1E69E9C98];
    v7 = *MEMORY[0x1E69E9CE0];
    v8 = v3;
  }

  xpc_dictionary_set_int64(v8, v9, v7);
  xpc_dictionary_set_string(v3, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (BOOL)finishActivity:(id)a3 withStatus:(int64_t)a4
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = xpc_activity_set_completion_status();
    v6 = RapidLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134218240;
      v10 = a4;
      v11 = 1024;
      v12 = v5;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "XPC activity set state to DONE, status: %ld success: %d", &v9, 0x12u);
    }

    +[PLRapidController cleanup];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (BOOL)deferActivity:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = xpc_activity_set_state(a3, 3);
    v4 = RapidLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "XPC activity set state to DEFER, success: %d", v7, 8u);
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)shouldDoRapidCollection
{
  v3 = RapidLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Device upload check", v6, 2u);
  }

  v4 = +[PLRapidController diagnosticLogSubmissionEnabled];
  if (v4)
  {
    [(PLRapidController *)self samplingPercentage];
    LOBYTE(v4) = [PLRapidController randomBoolWithYesPercentage:?];
  }

  return v4;
}

+ (BOOL)diagnosticLogSubmissionEnabled
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = DiagnosticLogSubmissionEnabled();
  v3 = RapidLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "DNU upload: %d", v6, 8u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

+ (BOOL)randomBoolWithYesPercentage:(double)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = arc4random() * 100.0 * 2.32830644e-10;
  v5 = RapidLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4 < a3;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Coin toss upload: %d", v8, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4 < a3;
}

- (BOOL)preparePerfPowerlog:(id)a3 shouldDefer:(BOOL *)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(PLRapidController *)self stage]<= 4)
  {
    v8 = RapidLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Preparing perfpowerlog", &v17, 2u);
    }

    [(PLRapidController *)self setMDLogFilePath];
    [(PLRapidController *)self setMDLogCompressedFilePath];
    [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:@"/tmp/rapid/"];
    [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:@"/tmp/rapid/rapid_archive"];
    v9 = getRapidAllowblocklist();
    if ([(PLRapidController *)self stage]> 4)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      while (!*a4)
      {
        if (!v10)
        {
          if ([(PLRapidController *)self stage]< 1)
          {
            v10 = 0;
          }

          else
          {
            v10 = [(PLRapidController *)self setupConnection];
            if (!v10)
            {
              goto LABEL_36;
            }
          }
        }

        v11 = [(PLRapidController *)self stage];
        if (v11 <= 1)
        {
          if (v11)
          {
            if (v11 == 1)
            {
              [(PLRapidController *)self pruneDB:v10 withConfig:v9];
            }
          }

          else if (![(PLRapidController *)self copyDB])
          {
            goto LABEL_36;
          }
        }

        else if (v11 == 2)
        {
          [(PLRapidController *)self logSignpostDataToDB:v10];
        }

        else if (v11 == 3)
        {
          [(PLRapidController *)self trimAndFilterDB:v10 withConfig:v9];
        }

        else if (v11 == 4 && ![(PLRapidController *)self packageDB:v10])
        {
LABEL_36:
          v7 = 0;
          goto LABEL_34;
        }

        [(PLRapidController *)self setStage:[(PLRapidController *)self stage]+ 1];
        *a4 = xpc_activity_should_defer(v6);
        if ([(PLRapidController *)self stage]>= 5)
        {
          break;
        }
      }
    }

    if ([(PLRapidController *)self stage]== 5)
    {
      v12 = [(PLRapidController *)self mdLogCompressedFilePath];
      v13 = [PLFileStats fileSizeAtPath:v12];

      if (v13 > ([PLDefaults longForKey:@"RapidTaskedUploadSizeLimit" ifNotSet:2048000]* 0.7))
      {
        v14 = RapidLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 134217984;
          v18 = v13;
          _os_log_impl(&dword_1D8611000, v14, OS_LOG_TYPE_DEFAULT, "MDLog size = %lld, skipping MSS upload", &v17, 0xCu);
        }

        *a4 = 0;
        [(PLRapidController *)self setStage:6];
      }
    }

    v7 = 1;
LABEL_34:
  }

  else
  {
    v7 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)setupConnection
{
  v12 = 0;
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PLRapidController *)self mdLogFilePath];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v12];

  if (v5 && v12 != 1)
  {
    v8 = [PLSQLiteConnection alloc];
    v9 = [(PLRapidController *)self mdLogFilePath];
    v7 = [(PLSQLiteConnection *)v8 initWithFilePath:v9];
  }

  else
  {
    v6 = RapidLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1D8611000, v6, OS_LOG_TYPE_DEFAULT, "Expected file, but not found. Resetting stage, try next time!", v11, 2u);
    }

    [(PLRapidController *)self setFailureReason:@"SetupConnectionFileMissing"];
    v7 = 0;
  }

  return v7;
}

- (BOOL)copyDB
{
  v3 = RapidLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Copy DB", v10, 2u);
  }

  v4 = +[PowerlogCore sharedCore];
  v5 = [v4 storage];
  v6 = [v5 connection];

  v7 = [(PLRapidController *)self mdLogFilePath];
  v8 = [v6 copyDatabaseToPath:v7];

  if ((v8 & 1) == 0)
  {
    [(PLRapidController *)self setFailureReason:@"CopyDB"];
  }

  return v8;
}

- (void)pruneDB:(id)a3 withConfig:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = RapidLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Prune DB", v9, 2u);
  }

  [v7 beginTransaction];
  [PLRapidController dropTablesFromDB:v7 withConfig:v6];
  [PLRapidController dropDataFromDB:v7 withConfig:v6];

  [(PLRapidController *)self dropAppVersions:v7];
  [v7 endTransaction];
}

- (void)trimAndFilterDB:(id)a3 withConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = RapidLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Trim DB", buf, 2u);
  }

  [v6 beginTransaction];
  v9 = [(PLRapidController *)self logCreationStartDate];
  v10 = [v9 convertFromSystemToMonotonic];

  v11 = [v10 dateByAddingTimeInterval:-86400.0];
  v12 = MEMORY[0x1E695DFD8];
  v13 = [v7 allKeys];
  v14 = [v12 setWithArray:v13];

  v15 = [PLRapidController trimConditionsForTables:v14 trimDate:v11];
  [v6 trimAllTablesFromDate:v11 toDate:v10 withTableFilters:v15];
  v16 = RapidLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_1D8611000, v16, OS_LOG_TYPE_DEFAULT, "Time Offsetting", v19, 2u);
  }

  [v11 timeIntervalSince1970];
  [PLRapidController offsetTimestampsInDB:v6 withConfig:v7 withBaseTimestamp:?];
  v17 = RapidLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1D8611000, v17, OS_LOG_TYPE_DEFAULT, "Rounding", v18, 2u);
  }

  [PLRapidController roundDataInDB:v6 withConfig:v7];
  [(PLRapidController *)self dropDuplicateRows:v6];
  [v6 endTransaction];
}

- (BOOL)packageDB:(id)a3
{
  v4 = a3;
  v5 = RapidLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Attribute", buf, 2u);
  }

  v6 = [v4 performQuery:{@"CREATE TABLE attributes(name TEXT PRIMARY KEY, value) WITHOUT ROWID"}];
  v7 = [v4 performQuery:{@"INSERT INTO attributes (name, value) VALUES (LogType, RAPID);"}];
  v8 = RapidLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Vacuum", v15, 2u);
  }

  [v4 fullVacuum];
  [v4 closeConnection];
  v9 = RapidLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1D8611000, v9, OS_LOG_TYPE_DEFAULT, "Compress DB", v14, 2u);
  }

  v10 = [(PLRapidController *)self mdLogFilePath];
  v11 = [(PLRapidController *)self mdLogCompressedFilePath];
  v12 = [PLUtilities compressWithSource:v10 withDestination:v11 withLevel:6];

  if (!v12)
  {
    [(PLRapidController *)self setFailureReason:@"CompressDB"];
  }

  return v12;
}

+ (void)dropTablesFromDB:(id)a3 withConfig:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [PLRapidController allTablesInDB:v5];
  v8 = MEMORY[0x1E695DFD8];
  v9 = [v6 allKeys];
  v10 = [v8 setWithArray:v9];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__PLRapidController_dropTablesFromDB_withConfig___block_invoke;
  v14[3] = &unk_1E851AD90;
  v15 = v10;
  v16 = v6;
  v17 = v5;
  v11 = v5;
  v12 = v6;
  v13 = v10;
  [v7 enumerateObjectsUsingBlock:v14];
}

void __49__PLRapidController_dropTablesFromDB_withConfig___block_invoke(id *a1, void *a2)
{
  v9 = [a2 objectForKeyedSubscript:@"name"];
  v3 = [a1[4] containsObject:v9];
  v4 = [a1[5] objectForKeyedSubscript:v9];
  v5 = [v4 objectForKeyedSubscript:@"isIHA"];
  if ([v5 BOOLValue])
  {
    v6 = +[PLUtilities isHealthDataSubmissionAllowed];
  }

  else
  {
    v6 = 1;
  }

  if ((v3 & v6 & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP TABLE '%@'", v9];;
    if (v7)
    {
      v8 = [a1[6] performQuery:v7];
    }
  }
}

+ (void)dropDataFromDB:(id)a3 withConfig:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__PLRapidController_dropDataFromDB_withConfig___block_invoke;
  v7[3] = &unk_1E851ADE0;
  v8 = v5;
  v6 = v5;
  [a4 enumerateKeysAndObjectsUsingBlock:v7];
}

void __47__PLRapidController_dropDataFromDB_withConfig___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"drop"];
  if (v6)
  {
    v7 = [v5 containsString:@"_Aggregate_"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PLRapidController_dropDataFromDB_withConfig___block_invoke_2;
    v8[3] = &unk_1E851ADB8;
    v12 = v7;
    v9 = v5;
    v10 = *(a1 + 32);
    v11 = @"ALTER TABLE %@ DROP COLUMN %@";
    [v6 enumerateObjectsUsingBlock:v8];
  }
}

void __47__PLRapidController_dropDataFromDB_withConfig___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 56) == 1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DROP INDEX IF EXISTS Index_%@_%@", *(a1 + 32), v3];
    v5 = [*(a1 + 40) performQuery:v4];

    v3 = v8;
  }

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:*(a1 + 48), *(a1 + 32), v3];
  v7 = [*(a1 + 40) performQuery:v6];
}

- (void)dropAppVersions:(id)a3
{
  v8 = a3;
  v4 = [(PLRapidController *)self topAppsRunTime];
  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"delete from PLApplicationAgent_EventNone_AllApps"];
  v6 = [PLRapidController appsToKeep:v4];
  [v5 appendString:v6];

  v7 = [v8 performQuery:v5];
}

+ (id)appsToKeep:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 count])
  {
    v5 = &stru_1F539D228;
    goto LABEL_13;
  }

  v4 = [MEMORY[0x1E698B570] defaultService];
  if ([v4 autoUpdateEnabled])
  {
  }

  else
  {
    v6 = [v3 count];

    if (v6 >= 3)
    {
      v11 = [v3 count];
      v9 = [v3 objectAtIndexedSubscript:arc4random_uniform(v11)];
      v12 = [v3 objectAtIndexedSubscript:arc4random_uniform(v11)];
      v13 = RapidLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v9;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_1D8611000, v13, OS_LOG_TYPE_DEFAULT, "Report app version data for: %@, %@", buf, 0x16u);
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@" where AppBundleId not in ('%@', '%@')", v9, v12];

      goto LABEL_12;
    }
  }

  v7 = RapidLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = v3;
    _os_log_impl(&dword_1D8611000, v7, OS_LOG_TYPE_DEFAULT, "Report app version data for all top 3rd party apps: %@", buf, 0xCu);
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = [v3 componentsJoinedByString:{@"', '"}];
  v10 = [v8 stringWithFormat:@" where AppBundleId not in ('%@')", v9];
LABEL_12:

  v5 = v10;
LABEL_13:

  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)topAppsRunTime
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = +[PowerlogCore sharedCore];
  v5 = [v4 storage];
  v6 = [v5 connection];

  v7 = [(PLRapidController *)self logCreationStartDate];
  v8 = [v7 convertFromSystemToMonotonic];

  v9 = [v8 dateByAddingTimeInterval:-86400.0];
  v10 = MEMORY[0x1E696AEC0];
  [v9 timeIntervalSince1970];
  v12 = v11;
  [v8 timeIntervalSince1970];
  v14 = [v10 stringWithFormat:@"select distinct AppBundleId as app from PLApplicationAgent_EventNone_AllApps                              where AppIs3rdParty = 1 OR AppBundleId NOT like '%%com.apple.%%' AND AppBundleId in                              (select BundleID from PLAppTimeService_Aggregate_AppRunTime where timestamp >= %f AND timestamp < %f                               group by BundleID having SUM(ScreenOnTime) > %d                             )", v12, v13, 60];;
  v23 = v6;
  v15 = [v6 performQuery:v14];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v24 + 1) + 8 * i) objectForKeyedSubscript:@"app"];
        [v3 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v17);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)dropDuplicateRows:(id)a3
{
  v3 = a3;
  v4 = RapidLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "Drop Duplicate Rows", v6, 2u);
  }

  v5 = [v3 performQuery:@"DELETE from PLBBAgent_EventPoint_TelephonyActivity where ID in (SELECT ID FROM PLBBAgent_EventPoint_TelephonyActivity t1 WHERE EXISTS (SELECT * FROM PLBBAgent_EventPoint_TelephonyActivity t2 WHERE t2.airplaneMode IS t1.airplaneMode and t2.callStatus IS t1.callStatus and t2.campedRat IS t1.campedRat and t2.signalBars IS t1.signalBars and t2.subsId IS t1.subsId AND t2.ID = (SELECT MAX(ID) FROM PLBBAgent_EventPoint_TelephonyActivity t3 WHERE t3.ID < t1.ID)));"];
}

+ (void)offsetTimestampsInDB:(id)a3 withConfig:(id)a4 withBaseTimestamp:(double)a5
{
  v7 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PLRapidController_offsetTimestampsInDB_withConfig_withBaseTimestamp___block_invoke;
  v9[3] = &unk_1E851AE30;
  v12 = a5;
  v10 = @"UPDATE %@ SET timestamp = timestamp - %f, ";
  v11 = v7;
  v8 = v7;
  [a4 enumerateKeysAndObjectsUsingBlock:v9];
}

void __71__PLRapidController_offsetTimestampsInDB_withConfig_withBaseTimestamp___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 objectForKeyedSubscript:@"timeOffset"];
  v7 = [MEMORY[0x1E696AD60] stringWithFormat:a1[4], v5, a1[6]];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__PLRapidController_offsetTimestampsInDB_withConfig_withBaseTimestamp___block_invoke_2;
  v12[3] = &unk_1E851AE08;
  v13 = v7;
  v14 = a1[6];
  v8 = v7;
  [v6 enumerateObjectsUsingBlock:v12];
  v9 = a1[5];
  v10 = [v8 substringToIndex:{objc_msgSend(v8, "length") - 2}];
  v11 = [v9 performQuery:v10];
}

+ (void)roundDataInDB:(id)a3 withConfig:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PLRapidController_roundDataInDB_withConfig___block_invoke;
  v7[3] = &unk_1E851ADE0;
  v8 = v5;
  v6 = v5;
  [a4 enumerateKeysAndObjectsUsingBlock:v7];
}

void __46__PLRapidController_roundDataInDB_withConfig___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"roundNearest"];
  v8 = [v6 objectForKeyedSubscript:@"roundNearestThresholded"];

  if (v7 | v8)
  {
    v9 = [MEMORY[0x1E696AD60] stringWithFormat:@"UPDATE %@ SET ", v5];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __46__PLRapidController_roundDataInDB_withConfig___block_invoke_2;
    v18[3] = &unk_1E851AE58;
    v19 = @"((cast(%@ as int) + %d) / %d) * %d";
    v10 = v9;
    v20 = v10;
    [v7 enumerateKeysAndObjectsUsingBlock:v18];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __46__PLRapidController_roundDataInDB_withConfig___block_invoke_3;
    v15[3] = &unk_1E851AE80;
    v16 = @"((cast(%@ as int) + %d) / %d) * %d";
    v17 = v10;
    v11 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v15];
    v12 = *(a1 + 32);
    v13 = [v11 substringToIndex:{objc_msgSend(v11, "length") - 2}];
    v14 = [v12 performQuery:v13];
  }
}

void __46__PLRapidController_roundDataInDB_withConfig___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 intValue];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:*(a1 + 32), v5, (v6 / 2), v6, v6];
  [*(a1 + 40) appendFormat:@"%@ =  %@, ", v5, v7];
}

void __46__PLRapidController_roundDataInDB_withConfig___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 componentsSeparatedByString:{@", "}];
  if ([v7 count] == 2)
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v8 intValue];

    v10 = [v7 objectAtIndexedSubscript:1];
    v11 = [v10 intValue];

    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:*(a1 + 32), v5, (v11 / 2), v11, v11];
    [*(a1 + 40) appendFormat:@"%@ =  (%@ > %d) * %@ + (%@ <= %d) * (%@, "), v5, v5, v9, v12, v5, v9, v5];
  }

  else
  {
    v13 = RapidLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __46__PLRapidController_roundDataInDB_withConfig___block_invoke_3_cold_1();
    }
  }
}

+ (id)trimConditionsForTables:(id)a3 trimDate:(id)a4
{
  v5 = a3;
  [a4 timeIntervalSince1970];
  v7 = v6;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__PLRapidController_trimConditionsForTables_trimDate___block_invoke;
  v13[3] = &unk_1E851AEA8;
  v17 = v7;
  v14 = @"timestamp is NULL OR timestamp < (SELECT max(timestamp) FROM '%@' WHERE timestamp < %f)";
  v15 = @"(timestampEnd < %f) OR ((timestamp is NULL OR timestamp < %f) AND (timestampEnd is NULL OR timestampEnd < %f))";
  v9 = v8;
  v16 = v9;
  [v5 enumerateObjectsUsingBlock:v13];

  v10 = v16;
  v11 = v9;

  return v9;
}

uint64_t __54__PLRapidController_trimConditionsForTables_trimDate___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  if (([v16 containsString:@"_Array_"] & 1) == 0)
  {
    v3 = [PLEntryKey PLEntryKeyForEntryKey:v16];
    v4 = [v3 entryType];
    if ([v4 isEqualToString:@"EventForward"])
    {
    }

    else
    {
      v5 = [v3 entryKey];
      v6 = [v5 isEqualToString:@"PLConfigAgent_EventNone_Config"];

      if (!v6)
      {
        v8 = [v3 entryType];
        v9 = [v8 isEqualToString:@"EventInterval"];

        if (!v9)
        {
          goto LABEL_7;
        }

        v10 = MEMORY[0x1E696AEC0];
        v11 = *(a1 + 40);
        v12 = *(a1 + 56);
        v13 = +[PLUtilities deviceBootTime];
        [v13 timeIntervalSince1970];
        v7 = [v10 stringWithFormat:v11, v12, v14, *(a1 + 56)];

        if (!v7)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:*(a1 + 32), v16, *(a1 + 56)];
    if (!v7)
    {
LABEL_7:

      goto LABEL_8;
    }

LABEL_6:
    [*(a1 + 48) setObject:v7 forKeyedSubscript:v16];

    goto LABEL_7;
  }

LABEL_8:

  return MEMORY[0x1EEE66BE0]();
}

+ (id)allTablesInDB:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v3 stringWithFormat:@"SELECT name FROM sqlite_master WHERE type=table"];;
  v6 = [v4 performQuery:v5];

  v7 = [v6 mutableCopy];
  [v7 removeObject:&unk_1F540D058];

  return v7;
}

- (void)setLogCreationStartDate
{
  v7 = *MEMORY[0x1E69E9840];
  [a1 stage];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setMDLogFilePath
{
  v3 = [@"/tmp/rapid/" stringByAppendingPathComponent:@"rapid-perfpowerlog.PLSQL"];
  [(PLRapidController *)self setMdLogFilePath:v3];
}

- (void)setMDLogCompressedFilePath
{
  v3 = [(PLRapidController *)self mdLogFilePath];

  if (v3)
  {
    v4 = [(PLRapidController *)self mdLogFilePath];
    v5 = [v4 lastPathComponent];
    v6 = [@"/tmp/rapid/rapid_archive" stringByAppendingPathComponent:v5];
    [(PLRapidController *)self setMdLogCompressedFilePath:v6];

    v9 = [(PLRapidController *)self mdLogCompressedFilePath];
    v7 = [v9 stringByAppendingString:@".gz"];
    [(PLRapidController *)self setMdLogCompressedFilePath:v7];
  }

  else
  {
    v8 = RapidLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLRapidController setMDLogCompressedFilePath];
    }
  }
}

+ (void)cleanup
{
  v2 = [PLDefaults BOOLForKey:@"RapidNoCleanup" ifNotSet:0];
  v3 = RapidLog();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Skipping cleanup!", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Cleanup", buf, 2u);
    }

    *buf = 0;
    v11 = buf;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__14;
    v14 = __Block_byref_object_dispose__14;
    v15 = 0;
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = (v11 + 40);
    obj = *(v11 + 5);
    v7 = [v5 contentsOfDirectoryAtPath:@"/tmp/rapid/" error:&obj];
    objc_storeStrong(v6, obj);

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __28__PLRapidController_cleanup__block_invoke;
    v8[3] = &unk_1E851AED0;
    v8[4] = buf;
    [v7 enumerateObjectsUsingBlock:v8];

    _Block_object_dispose(buf, 8);
  }
}

void __28__PLRapidController_cleanup__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [@"/tmp/rapid/" stringByAppendingPathComponent:a2];
  if (([v3 isEqualToString:@"/tmp/rapid/rapid_archive.tar.gz"] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = *(a1 + 32);
    v5 = a1 + 32;
    v7 = *(v6 + 8);
    obj = *(v7 + 40);
    v8 = [v4 removeItemAtPath:v3 error:&obj];
    objc_storeStrong((v7 + 40), obj);

    if ((v8 & 1) == 0)
    {
      v9 = RapidLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __28__PLRapidController_cleanup__block_invoke_cold_1(v5);
      }
    }
  }
}

- (void)logSignpostDataToDB:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = RapidLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Signpost Logging", &v15, 2u);
  }

  v6 = objc_alloc_init(SignpostReaderHelper);
  v7 = [(PLRapidController *)self logCreationStartDate];
  v8 = [v7 dateByAddingTimeInterval:-86400.0];

  v9 = [(PLRapidController *)self logCreationStartDate];
  v10 = [(SignpostReaderHelper *)v6 generateRapidSignpostSummaryWithStartDate:v8 endDate:v9];

  v11 = RapidLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 allKeys];
    v15 = 138412290;
    v16 = v12;
    _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_DEFAULT, "Signpost result %@", &v15, 0xCu);
  }

  v13 = [v10 objectForKeyedSubscript:@"hangDurations"];
  [(PLRapidController *)self logHangSignposts:v13 toDB:v4];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)logHangSignposts:(id)a3 toDB:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = RapidLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v6 count];
    _os_log_impl(&dword_1D8611000, v8, OS_LOG_TYPE_DEFAULT, "Hangs count %lu", &buf, 0xCu);
  }

  if (v6 && [v6 count])
  {
    [(PLRapidController *)self createHangTableInDB:v7];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x2020000000;
    v16 = 1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__PLRapidController_logHangSignposts_toDB___block_invoke;
    v10[3] = &unk_1E851AEF8;
    v11 = @"INSERT INTO %@ (ID, timestamp, BundleID, HangDuration, HangType) VALUES (%@, %f, '%@', %@, '%@')";
    p_buf = &buf;
    v12 = v7;
    [v6 enumerateObjectsUsingBlock:v10];

    _Block_object_dispose(&buf, 8);
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __43__PLRapidController_logHangSignposts_toDB___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v18 objectForKeyedSubscript:@"startDate"];
  v5 = [v4 convertFromSystemToMonotonic];
  [v5 timeIntervalSince1970];
  v7 = v6;

  v8 = MEMORY[0x1E696AD98];
  v9 = [v18 objectForKeyedSubscript:@"type"];
  v10 = [v8 numberWithInt:{+[PLRapidController hangTypeFromStr:](PLRapidController, "hangTypeFromStr:", v9)}];

  v11 = MEMORY[0x1E696AEC0];
  v12 = *(a1 + 32);
  v13 = [MEMORY[0x1E696AD98] numberWithInt:*(*(*(a1 + 48) + 8) + 24)];
  v14 = [v18 objectForKeyedSubscript:@"bundleID"];
  v15 = [v18 objectForKeyedSubscript:@"duration"];
  v16 = [v11 stringWithFormat:v12, @"Signposts_HangDurations", v13, v7, v14, v15, v10];

  v17 = [*(a1 + 40) performQuery:v16];
  ++*(*(*(a1 + 48) + 8) + 24);

  objc_autoreleasePoolPop(v3);
}

+ (int)hangTypeFromStr:(id)a3
{
  v14[7] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DFD8]);
  v14[0] = @"Completed Runloop Hang";
  v14[1] = @"Timed Out Runloop Hang";
  v14[2] = @"Debugger Attached Runloop Hang";
  v14[3] = @"Extended Launch Runloop Hang";
  v14[4] = @"App Exit Runloop Hang";
  v14[5] = @"Non-Responsive Task Runloop Hang";
  v14[6] = @"User Switched Away Runloop Hang";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:7];
  v6 = [v4 initWithArray:v5];

  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v13[0] = @"Runloop and Slow Fence Hang";
  v13[1] = @"Blown Fence Hang";
  v13[2] = @"Blown CA Fence Hang";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
  v9 = [v7 initWithArray:v8];

  if ([v3 isEqualToString:@"UIKit-runloop"] & 1) != 0 || (objc_msgSend(v6, "containsObject:", v3))
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
    if (([v3 isEqualToString:@"Fence-hang"] & 1) == 0)
    {
      if ([v9 containsObject:v3])
      {
        v10 = 2;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)prepareMSSLog
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(PLRapidController *)self stage];
  v4 = RapidLog();
  v5 = os_log_type_enabled(&v4->super, OS_LOG_TYPE_DEFAULT);
  if (v3 == 5)
  {
    if (v5)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_1D8611000, &v4->super, OS_LOG_TYPE_DEFAULT, "Preparing MSS", &v22, 2u);
    }

    [(PLRapidController *)self setMSSFilePath];
    [(PLRapidController *)self setMSSCompressedFilePath];
    [PLUtilities createAndChownDirectoryIfDirectoryDoesNotExist:@"/tmp/rapid/rapid_archive/mss"];
    v4 = objc_alloc_init(SignpostReaderHelper);
    v6 = [(PLRapidController *)self logCreationStartDate];
    v7 = [v6 dateByAddingTimeInterval:-86400.0];
    v8 = [(PLRapidController *)self logCreationStartDate];
    v9 = [(PLRapidController *)self mssFilePath];
    v10 = [(SignpostReaderHelper *)v4 generateRapidMSSWithStartDate:v7 endDate:v8 atPath:v9];

    v11 = RapidLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = v10;
      _os_log_impl(&dword_1D8611000, v11, OS_LOG_TYPE_INFO, "generateMSS result: %@", &v22, 0xCu);
    }

    v12 = [v10 objectForKeyedSubscript:@"success"];

    if (v12)
    {
      v13 = [(PLRapidController *)self mssFilePath];
      v14 = [(PLRapidController *)self mssCompressedFilePath];
      v15 = [PLUtilities compressWithSource:v13 withDestination:v14 withLevel:6];

      if (v15)
      {
        v16 = 1;
LABEL_19:

        goto LABEL_20;
      }

      v19 = RapidLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(PLRapidController *)self prepareMSSLog];
      }

      [(PLRapidController *)self setFailureReason:@"CompressMSS"];
    }

    else
    {
      v17 = RapidLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PLRapidController prepareMSSLog];
      }

      v18 = [v10 objectForKeyedSubscript:@"error"];
      [(PLRapidController *)self setFailureReason:v18];
    }

    v16 = 0;
    goto LABEL_19;
  }

  if (v5)
  {
    v22 = 134217984;
    v23 = [(PLRapidController *)self stage];
    _os_log_impl(&dword_1D8611000, &v4->super, OS_LOG_TYPE_DEFAULT, "Skipping MSS preparation, stage = %ld", &v22, 0xCu);
  }

  v16 = 0;
LABEL_20:

  v20 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)setMSSFilePath
{
  v3 = [@"/tmp/rapid/" stringByAppendingPathComponent:@"rapid-microstackshot.txt"];
  [(PLRapidController *)self setMssFilePath:v3];
}

- (void)setMSSCompressedFilePath
{
  v3 = [(PLRapidController *)self mssFilePath];

  if (v3)
  {
    v4 = [(PLRapidController *)self mssFilePath];
    v5 = [v4 lastPathComponent];
    v6 = [@"/tmp/rapid/rapid_archive/mss" stringByAppendingPathComponent:v5];
    [(PLRapidController *)self setMssCompressedFilePath:v6];

    v9 = [(PLRapidController *)self mssCompressedFilePath];
    v7 = [v9 stringByAppendingString:@".gz"];
    [(PLRapidController *)self setMssCompressedFilePath:v7];
  }

  else
  {
    v8 = RapidLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [PLRapidController setMSSCompressedFilePath];
    }
  }
}

- (id)packageAllLogs
{
  v3 = MEMORY[0x1E6999F68];
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/tmp/rapid/rapid_archive"];
  v5 = [v3 archiveDirectoryAt:v4 deleteOriginal:0];

  if (v5)
  {
    v6 = [v5 path];
    [PLUtilities setMobileOwnerForFile:v6];
  }

  else
  {
    [(PLRapidController *)self setFailureReason:@"DEArchiverFailure"];
  }

  v7 = [v5 path];

  return v7;
}

- (id)generateContextDictionary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = [(PLRapidController *)self logGenerationStats];
  [(PLRapidController *)self logToCALogGenerationStats:v5];
  v6 = [v5 mutableCopy];
  v7 = +[PLUtilities supplementalBuildVersion];
  if (v7)
  {
    [v6 setObject:v7 forKeyedSubscript:@"SupplementalBuild"];
  }

  else
  {
    v8 = [MEMORY[0x1E695DFB0] null];
    [v6 setObject:v8 forKeyedSubscript:@"SupplementalBuild"];
  }

  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [v9 objectForKey:*MEMORY[0x1E695D978]];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"unknown";
  }

  [v6 setObject:v12 forKeyedSubscript:@"CurrentCountry"];

  [v6 setObject:@"4" forKeyedSubscript:@"Version"];
  [v6 setObject:@"2" forKeyedSubscript:@"MetadataVersion"];
  v13 = +[PLUtilities automatedDeviceGroup];
  if (v13)
  {
    v14 = MEMORY[0x1E695E118];
  }

  else
  {
    v14 = MEMORY[0x1E695E110];
  }

  [v6 setObject:v14 forKeyedSubscript:@"AutomatedDeviceGroup"];

  v15 = MEMORY[0x1E696AD98];
  [(PLRapidController *)self samplingPercentage];
  v16 = [v15 numberWithDouble:?];
  [v6 setObject:v16 forKeyedSubscript:@"SamplingPercentage"];

  v17 = [v6 objectForKeyedSubscript:@"AutomatedDeviceGroup"];
  v18 = [v17 BOOLValue];

  if (v18)
  {
    v19 = +[PLUtilities automatedDeviceGroup];
    [v6 setObject:v19 forKeyedSubscript:@"AutomatedDeviceGroupRawValue"];
  }

  v20 = [(PLRapidController *)self configUUID];

  if (v20)
  {
    v21 = [(PLRapidController *)self configUUID];
    [v6 setObject:v21 forKeyedSubscript:@"TaskingConfigUUID"];
  }

  v22 = [(PLRapidController *)self taskingRequestReason];

  if (v22)
  {
    v23 = [(PLRapidController *)self taskingRequestReason];
    [v6 setObject:v23 forKeyedSubscript:@"TaskingRequest"];
  }

  [v6 setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"IsValidPayload"];
  if (a3)
  {
    v24 = [v5 objectForKeyedSubscript:@"AllowedUpload"];
    v25 = [v24 BOOLValue];

    v26 = RapidLog();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v27)
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_1D8611000, v26, OS_LOG_TYPE_DEFAULT, "Upload file size within acceptable threshold", &v35, 2u);
      }

      [v6 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsValidPayload"];
      v28 = objc_opt_new();
      [v6 setObject:v28 forKeyedSubscript:@"Files"];

      v29 = [v6 objectForKeyedSubscript:@"Files"];
      [(PLRapidController *)self addMDLogContext:v29];

      v30 = [v6 objectForKeyedSubscript:@"Files"];
      [(PLRapidController *)self addMSSContext:v30];
    }

    else
    {
      if (v27)
      {
        LOWORD(v35) = 0;
        _os_log_impl(&dword_1D8611000, v26, OS_LOG_TYPE_DEFAULT, "Upload file size exceeded", &v35, 2u);
      }

      [v6 setObject:@"PayloadTooLarge" forKeyedSubscript:@"FailureReason"];
    }
  }

  else
  {
    v31 = RapidLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v35) = 0;
      _os_log_impl(&dword_1D8611000, v31, OS_LOG_TYPE_DEFAULT, "Missing uploadFilePath", &v35, 2u);
    }
  }

  v32 = RapidLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v35 = 138412290;
    v36 = v6;
    _os_log_impl(&dword_1D8611000, v32, OS_LOG_TYPE_DEFAULT, "Context Dictionary: %@", &v35, 0xCu);
  }

  v33 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)addMDLogContext:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [(PLRapidController *)self mdLogCompressedFilePath];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    v14 = @"paths";
    v8 = MEMORY[0x1E695DEC8];
    v9 = [(PLRapidController *)self mdLogCompressedFilePath];
    v10 = [v9 lastPathComponent];
    v11 = [v8 arrayWithObjects:{v10, 0}];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    [v4 setObject:v12 forKeyedSubscript:@"perfpowerlog"];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addMSSContext:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [v4 fileExistsAtPath:@"/tmp/rapid/rapid_archive/mss"];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AC08] defaultManager];
    v23 = 0;
    v7 = [v6 contentsOfDirectoryAtPath:@"/tmp/rapid/rapid_archive/mss" error:&v23];
    v8 = v23;

    if ([v7 count])
    {
      v9 = [@"/tmp/rapid/rapid_archive/mss" lastPathComponent];
      v10 = objc_opt_new();
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          v15 = 0;
          do
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [v9 stringByAppendingPathComponent:{*(*(&v19 + 1) + 8 * v15), v19}];
            [v10 addObject:v16];

            ++v15;
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v19 objects:v26 count:16];
        }

        while (v13);
      }

      v24 = @"paths";
      v25 = v10;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      [v3 setObject:v17 forKeyedSubscript:@"mss"];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)uploadLog:(id)a3
{
  v4 = a3;
  v5 = RapidLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Submit log to DP", buf, 2u);
  }

  v6 = [PLDefaults BOOLForKey:@"RapidTagUploadAsTest" ifNotSet:0];
  v7 = @"RAPIDArchive";
  if (v6)
  {
    v7 = @"TestRAPIDArchive";
  }

  v8 = v7;
  v9 = [(PLRapidController *)self generateContextDictionary:v4];
  v10 = [v9 objectForKeyedSubscript:@"IsValidPayload"];
  v11 = [v10 BOOLValue];

  if ((v11 & 1) == 0)
  {
    v12 = [(PLRapidController *)self generateDummyPayload];

    v4 = v12;
  }

  DRSubmitRapidLog();
  v13 = 0;

  return 0;
}

- (id)generateDummyPayload
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 fileExistsAtPath:@"/tmp/rapid/rapid_archive.tar.gz"];

  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v5 = [v4 removeItemAtPath:@"/tmp/rapid/rapid_archive.tar.gz" error:&v10];
  v6 = v10;

  if (v5)
  {

LABEL_4:
    v6 = [@"0" dataUsingEncoding:4];
    v7 = @"/tmp/rapid/rapid_archive.tar.gz";
    [v6 writeToFile:@"/tmp/rapid/rapid_archive.tar.gz" atomically:1];
    [PLUtilities setMobileOwnerForFile:@"/tmp/rapid/rapid_archive.tar.gz"];
    goto LABEL_8;
  }

  v8 = RapidLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [PLRapidController generateDummyPayload];
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (void)logToCADataUploadState:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = RapidLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = @"com.apple.rapid.dataUploadStats";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "CA Event: %@ Payload: %@", buf, 0x16u);
  }

  v7 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();

  v6 = *MEMORY[0x1E69E9840];
}

id __44__PLRapidController_logToCADataUploadState___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v5 = @"state";
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)logGenerationStats
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AD98];
  [PLDefaults doubleForKey:@"RapidDeferralCount" ifNotSet:0.0];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"DeferralCount"];

  v6 = [(PLRapidController *)self failureReason];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"None";
  }

  [v3 setObject:v8 forKeyedSubscript:@"FailureReason"];

  v9 = [(PLRapidController *)self mdLogCompressedFilePath];
  v10 = [PLFileStats fileSizeAtPath:v9];

  v11 = [(PLRapidController *)self mssCompressedFilePath];
  v12 = [PLFileStats fileSizeAtPath:v11];

  v13 = [PLFileStats fileSizeAtPath:@"/tmp/rapid/rapid_archive.tar.gz"];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLRapidController isUploadSizeWithinLimit:](self, "isUploadSizeWithinLimit:", @"/tmp/rapid/rapid_archive.tar.gz"}];
  [v3 setObject:v14 forKeyedSubscript:@"AllowedUpload"];

  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
  [v3 setObject:v15 forKeyedSubscript:@"PerfPowerLogSizeCompressed"];

  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:v12];
  [v3 setObject:v16 forKeyedSubscript:@"MSSSizeCompressed"];

  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:v13];
  [v3 setObject:v17 forKeyedSubscript:@"LogSizeCompressed"];

  v18 = [MEMORY[0x1E696AD98] numberWithLong:{+[PLDefaults longForKey:ifNotSet:](PLDefaults, "longForKey:ifNotSet:", @"RapidTaskedUploadSizeLimit", 2048000)}];
  [v3 setObject:v18 forKeyedSubscript:@"UploadSizeLimit"];

  v19 = [(PLRapidController *)self logCreationEndDate];
  v20 = [(PLRapidController *)self logCreationResumeDate];
  [v19 timeIntervalSinceDate:v20];
  v22 = v21;

  [PLDefaults doubleForKey:@"RapidProcessingTime" ifNotSet:0.0];
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:v22 + v23];
  [v3 setObject:v24 forKeyedSubscript:@"ProcessingTime"];

  v25 = MEMORY[0x1E696AD98];
  v26 = [(PLRapidController *)self logCreationEndDate];
  v27 = [(PLRapidController *)self logCreationStartDate];
  [v26 timeIntervalSinceDate:v27];
  v28 = [v25 numberWithDouble:?];

  [v3 setObject:v28 forKeyedSubscript:@"StartToEndTime"];

  return v3;
}

- (void)logToCALogGenerationStats:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = RapidLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v9 = @"com.apple.rapid.logGenerationStats";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_DEFAULT, "CA Event: %@ Payload: %@", buf, 0x16u);
  }

  v7 = v3;
  v5 = v3;
  AnalyticsSendEventLazy();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setupDRTasking
{
  v3 = RapidLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Setup DR Tasking Monitor", buf, 2u);
  }

  v4 = objc_alloc(MEMORY[0x1E699A070]);
  v5 = [PLUtilities workQueueForKey:@"PLCoreStorage"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __35__PLRapidController_setupDRTasking__block_invoke;
  v8[3] = &unk_1E8519E90;
  v8[4] = self;
  v6 = [v4 initWithTeamID:@"perfpowerservices.rapid.config" targetQueue:v5 configProcessingBlock:v8];
  [(PLRapidController *)self setTaskingMonitor:v6];

  v7 = [(PLRapidController *)self taskingMonitor];
  [v7 startMonitoring];
}

- (id)configFromMonitor:(id)a3
{
  v3 = a3;
  v9 = 0;
  v4 = [v3 currentConfigSnapshotWithErrorOut:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = RapidLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PLRapidController configFromMonitor:v3];
    }

    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (void)handleDRConfigUpdate:(id)a3 error:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = PLLogSubmission();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PLRapidController handleDRConfigUpdate:error:];
      }

      goto LABEL_33;
    }

    v10 = RapidLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 teamID];
      v12 = [v6 configUUID];
      v13 = [v6 receivedDate];
      v37 = 138412802;
      v38 = v11;
      v39 = 2112;
      v40 = v12;
      v41 = 2112;
      v42 = v13;
      _os_log_impl(&dword_1D8611000, v10, OS_LOG_TYPE_DEFAULT, "DRConfig for teamID <%@> received: %@, receive time: %@", &v37, 0x20u);
    }

    v9 = [v6 payloadDictionaryRepresentation];
    v14 = [v9 objectForKeyedSubscript:@"RAPIDTaskingRequest"];
    v15 = RapidLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412290;
      v38 = v14;
      _os_log_impl(&dword_1D8611000, v15, OS_LOG_TYPE_DEFAULT, "DRConfig TaskingRequestReason: %@", &v37, 0xCu);
    }

    if (!v14)
    {
      [(PLRapidController *)self rejectTaskingConfig:v6];
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    v16 = 0x1E8518000uLL;
    v17 = [v6 configUUID];
    v18 = [v17 UUIDString];
    [PLDefaults setObject:v18 forKey:@"RapidTaskingConfigUUID" saveToDisk:1];

    [PLDefaults setObject:v14 forKey:@"RapidTaskingRequest" saveToDisk:1];
    v19 = [v9 objectForKeyedSubscript:@"RAPIDSamplingPercentage"];
    v20 = RapidLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412290;
      v38 = v19;
      _os_log_impl(&dword_1D8611000, v20, OS_LOG_TYPE_DEFAULT, "DRConfig SamplingPercentage: %@", &v37, 0xCu);
    }

    v21 = &selRef_cacheContent;
    if (v19)
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = v19;
LABEL_22:
        [PLDefaults setObject:v22 forKey:@"RapidTaskedSamplingPercentage" saveToDisk:1];
LABEL_23:
        v29 = [v9 objectForKeyedSubscript:@"RAPIDUploadSizeLimit"];
        v30 = RapidLog();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v37 = 138412290;
          v38 = v29;
          _os_log_impl(&dword_1D8611000, v30, OS_LOG_TYPE_DEFAULT, "DRConfig UploadSizeLimit: %@", &v37, 0xCu);
        }

        if (v29 && (v31 = v21[268], (objc_opt_respondsToSelector() & 1) != 0))
        {
          v32 = *(v16 + 2224);
          v33 = v29;
        }

        else
        {
          v34 = RapidLog();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v37 = 138412290;
            v38 = @"RapidTaskedUploadSizeLimit";
            _os_log_impl(&dword_1D8611000, v34, OS_LOG_TYPE_DEFAULT, "Deleting %@", &v37, 0xCu);
          }

          v32 = *(v16 + 2224);
          v33 = 0;
        }

        [v32 setObject:v33 forKey:@"RapidTaskedUploadSizeLimit" saveToDisk:1];
        [(PLRapidController *)self completeTaskingConfig:v6];

        goto LABEL_32;
      }

      if (objc_opt_respondsToSelector())
      {
        v23 = +[PLGestaltUtilities getHardwareModel];
        v24 = [(__CFString *)v19 objectForKeyedSubscript:v23];
        if (v24)
        {
          v25 = MEMORY[0x1E696AD98];
          v26 = [(__CFString *)v19 objectForKeyedSubscript:v23];
          [v26 doubleValue];
          v27 = [v25 numberWithDouble:?];

          v16 = 0x1E8518000;
        }

        else
        {
          v27 = &unk_1F54061B0;
        }

        v36 = RapidLog();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v37 = 138412546;
          v38 = v23;
          v39 = 2112;
          v40 = v27;
          _os_log_impl(&dword_1D8611000, v36, OS_LOG_TYPE_DEFAULT, "Selecting sampling percentage for HW model '%@': %@", &v37, 0x16u);
        }

        [*(v16 + 2224) setObject:v27 forKey:@"RapidTaskedSamplingPercentage" saveToDisk:1];
        v21 = &selRef_cacheContent;
        goto LABEL_23;
      }
    }

    v28 = RapidLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 138412290;
      v38 = @"RapidTaskedSamplingPercentage";
      _os_log_impl(&dword_1D8611000, v28, OS_LOG_TYPE_DEFAULT, "Deleting %@", &v37, 0xCu);
    }

    v22 = 0;
    goto LABEL_22;
  }

LABEL_34:

  v35 = *MEMORY[0x1E69E9840];
}

- (void)completeTaskingConfig:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = RapidLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 configUUID];
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to mark DRConfig %@ as completed", buf, 0xCu);
  }

  v7 = [(PLRapidController *)self taskingMonitor];
  v8 = [v4 configUUID];
  v12 = 0;
  [v7 markCompletedConfigUUID:v8 errorOut:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = RapidLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PLRapidController completeTaskingConfig:];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)rejectTaskingConfig:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = RapidLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 configUUID];
    *buf = 138412290;
    v14 = v6;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Rejecting DRConfig %@", buf, 0xCu);
  }

  v7 = [(PLRapidController *)self taskingMonitor];
  v8 = [v4 configUUID];
  v12 = 0;
  [v7 rejectConfigUUID:v8 errorOut:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = RapidLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PLRapidController rejectTaskingConfig:];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)stopDRTasking
{
  v3 = RapidLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Stop monitoring DRConfig", v5, 2u);
  }

  v4 = [(PLRapidController *)self taskingMonitor];
  [v4 stopMonitoring];
}

- (void)handleXPCActivityCallback:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __46__PLRapidController_roundDataInDB_withConfig___block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1D8611000, v1, OS_LOG_TYPE_ERROR, "Malformed rule %@ for col %@!", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __28__PLRapidController_cleanup__block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)prepareMSSLog
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 mssFilePath];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)generateDummyPayload
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)configFromMonitor:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 teamID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)handleDRConfigUpdate:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)completeTaskingConfig:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)rejectTaskingConfig:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end