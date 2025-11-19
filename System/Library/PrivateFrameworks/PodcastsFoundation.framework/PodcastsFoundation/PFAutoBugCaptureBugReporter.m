@interface PFAutoBugCaptureBugReporter
+ (id)sharedInstance;
- (BOOL)_timeSinceLastSimilarReport:(id)a3 hasExceededElapsedTimeThreshold:(double)a4;
- (BOOL)canSubmitNewReport:(id)a3 withMinimumElapsedTime:(double)a4;
- (PFAutoBugCaptureBugReporter)init;
- (id)_lastSubmissionTimeForReport:(id)a3;
- (id)_processName;
- (void)_executeSubmitBugReport:(id)a3 userInfo:(id)a4 withMaximumSubmissionCadence:(double)a5;
- (void)_reportSignature:(id)a3 forReport:(id)a4;
- (void)_scheduleSubmissionOfBugReport:(id)a3 withUserInfo:(id)a4;
- (void)_setLastSubmissionTime:(id)a3 forReport:(id)a4;
- (void)_submitBugReport:(id)a3 withUserInfo:(id)a4;
- (void)submitBugReport:(id)a3 userInfo:(id)a4 withMaximumSubmissionCadence:(double)a5;
@end

@implementation PFAutoBugCaptureBugReporter

+ (id)sharedInstance
{
  if (sharedInstance_dispatchToken != -1)
  {
    +[PFAutoBugCaptureBugReporter sharedInstance];
  }

  v3 = sharedInstance_singleton;

  return v3;
}

uint64_t __45__PFAutoBugCaptureBugReporter_sharedInstance__block_invoke()
{
  sharedInstance_singleton = objc_alloc_init(PFAutoBugCaptureBugReporter);

  return MEMORY[0x1EEE66BB8]();
}

- (PFAutoBugCaptureBugReporter)init
{
  v9.receiver = self;
  v9.super_class = PFAutoBugCaptureBugReporter;
  v2 = [(PFAutoBugCaptureBugReporter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Podcasts.AutoBugCapture", 0);
    reportQueue = v2->_reportQueue;
    v2->_reportQueue = v3;

    v5 = v2->_reportQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__PFAutoBugCaptureBugReporter_init__block_invoke;
    block[3] = &unk_1E8568E28;
    v8 = v2;
    dispatch_sync(v5, block);
  }

  return v2;
}

void __35__PFAutoBugCaptureBugReporter_init__block_invoke(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getSDRDiagnosticReporterClass_softClass;
  v11 = getSDRDiagnosticReporterClass_softClass;
  if (!getSDRDiagnosticReporterClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getSDRDiagnosticReporterClass_block_invoke;
    v7[3] = &unk_1E856B060;
    v7[4] = &v8;
    __getSDRDiagnosticReporterClass_block_invoke(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  v4 = objc_alloc_init(v2);
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;
}

- (void)submitBugReport:(id)a3 userInfo:(id)a4 withMaximumSubmissionCadence:(double)a5
{
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    reportQueue = self->_reportQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__PFAutoBugCaptureBugReporter_submitBugReport_userInfo_withMaximumSubmissionCadence___block_invoke;
    v11[3] = &unk_1E856B500;
    v11[4] = self;
    v12 = v8;
    v14 = a5;
    v13 = v9;
    dispatch_async(reportQueue, v11);
  }

  else
  {
    [PFAutoBugCaptureBugReporter submitBugReport:userInfo:withMaximumSubmissionCadence:];
  }
}

uint64_t __85__PFAutoBugCaptureBugReporter_submitBugReport_userInfo_withMaximumSubmissionCadence___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) canSubmitNewReport:*(a1 + 40) withMinimumElapsedTime:*(a1 + 56)];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v3 _executeSubmitBugReport:v4 userInfo:v5 withMaximumSubmissionCadence:v6];
  }

  return result;
}

- (BOOL)canSubmitNewReport:(id)a3 withMinimumElapsedTime:(double)a4
{
  v6 = a3;
  if (isRunningUnitTests())
  {
    [PFAutoBugCaptureBugReporter canSubmitNewReport:withMinimumElapsedTime:];
    v7 = 0;
  }

  else
  {
    v7 = ([v6 forceSubmissionAttempt] & 1) != 0 || -[PFAutoBugCaptureBugReporter _timeSinceLastSimilarReport:hasExceededElapsedTimeThreshold:](self, "_timeSinceLastSimilarReport:hasExceededElapsedTimeThreshold:", v6, a4);
  }

  return v7;
}

- (BOOL)_timeSinceLastSimilarReport:(id)a3 hasExceededElapsedTimeThreshold:(double)a4
{
  v5 = [(PFAutoBugCaptureBugReporter *)self _lastSubmissionTimeForReport:a3];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF00] now];
    [v6 timeIntervalSinceDate:v5];
    v8 = v7 > a4;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_lastSubmissionTimeForReport:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v5 = [v3 standardUserDefaults];
  v6 = [v4 signature];

  v7 = [v5 objectForKey:v6];

  return v7;
}

- (void)_setLastSubmissionTime:(id)a3 forReport:(id)a4
{
  v5 = MEMORY[0x1E695E000];
  v6 = a4;
  v7 = a3;
  v9 = [v5 standardUserDefaults];
  v8 = [v6 signature];

  [v9 setObject:v7 forKey:v8];
}

- (void)_executeSubmitBugReport:(id)a3 userInfo:(id)a4 withMaximumSubmissionCadence:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (self->_reporter)
  {
    if (v8)
    {
      objc_initWeak(location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __93__PFAutoBugCaptureBugReporter__executeSubmitBugReport_userInfo_withMaximumSubmissionCadence___block_invoke;
      v12[3] = &unk_1E856B528;
      objc_copyWeak(&v14, location);
      v13 = v7;
      (v9)[2](v9, v12);

      objc_destroyWeak(&v14);
      objc_destroyWeak(location);
    }

    else
    {
      v11 = objc_opt_new();
      [(PFAutoBugCaptureBugReporter *)self _submitBugReport:v7 withUserInfo:v11];
    }
  }

  else
  {
    v10 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_DEFAULT, "Unable to report bug automatically. Unable to load ABC framework.", location, 2u);
    }
  }
}

void __93__PFAutoBugCaptureBugReporter__executeSubmitBugReport_userInfo_withMaximumSubmissionCadence___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _scheduleSubmissionOfBugReport:*(a1 + 32) withUserInfo:v3];
}

- (void)_scheduleSubmissionOfBugReport:(id)a3 withUserInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  reportQueue = self->_reportQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PFAutoBugCaptureBugReporter__scheduleSubmissionOfBugReport_withUserInfo___block_invoke;
  block[3] = &unk_1E856AFB8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(reportQueue, block);
}

- (void)_submitBugReport:(id)a3 withUserInfo:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  reporter = self->_reporter;
  v9 = [v6 domainString];
  v10 = [v6 systemString];
  v11 = [v6 errorKindString];
  v12 = [(PFAutoBugCaptureBugReporter *)self _processName];
  v13 = [(SDRDiagnosticReporter *)reporter signatureWithDomain:v9 type:v10 subType:v11 detectedProcess:v12 triggerThresholdValues:0];

  if (v7)
  {
    [v13 addEntriesFromDictionary:v7];
  }

  v14 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_1D8CEC000, v14, OS_LOG_TYPE_INFO, "Automatic bug identified, signature: %{public}@", &v16, 0xCu);
  }

  [(PFAutoBugCaptureBugReporter *)self _reportSignature:v13 forReport:v6];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_reportSignature:(id)a3 forReport:(id)a4
{
  v6 = a4;
  reporter = self->_reporter;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PFAutoBugCaptureBugReporter__reportSignature_forReport___block_invoke;
  v9[3] = &unk_1E856B550;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(SDRDiagnosticReporter *)reporter snapshotWithSignature:a3 duration:0 event:0 payload:v9 reply:300.0];
}

void __58__PFAutoBugCaptureBugReporter__reportSignature_forReport___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = getkSymptomDiagnosticReplySuccess();
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = getkSymptomDiagnosticReplySuccess();
  v7 = [v3 objectForKeyedSubscript:v6];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E695DF00] now];
    [v9 _setLastSubmissionTime:v10 forReport:*(a1 + 40)];

    v11 = getkSymptomDiagnosticReplySuccess();
    v12 = [v3 objectForKeyedSubscript:v11];

    v13 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_1D8CEC000, v13, OS_LOG_TYPE_INFO, "Bug report accepted, session identifier: %{public}@", &v15, 0xCu);
    }
  }

  else
  {
LABEL_6:
    v12 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v3;
      _os_log_impl(&dword_1D8CEC000, v12, OS_LOG_TYPE_ERROR, "Bug report was rejected. Response: %{public}@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_processName
{
  v2 = [MEMORY[0x1E696AE30] processInfo];
  v3 = [v2 processName];

  if (!v3 || [(__CFString *)v3 isEqualToString:&stru_1F548B930])
  {

    v3 = @"com.apple.podcasts";
  }

  return v3;
}

- (void)submitBugReport:userInfo:withMaximumSubmissionCadence:.cold.1()
{
  v0 = _MTLogCategoryMetrics();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
  }
}

- (void)canSubmitNewReport:withMinimumElapsedTime:.cold.1()
{
  v0 = _MTLogCategoryMetrics();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0(&dword_1D8CEC000, v1, v2, "Cannot submit bug reports while running unit tests", v3, v4, v5, v6, 0);
  }
}

@end