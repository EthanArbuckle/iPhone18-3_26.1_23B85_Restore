@interface PFAutoBugCaptureBugReporter
+ (id)sharedInstance;
- (BOOL)_timeSinceLastSimilarReport:(id)report hasExceededElapsedTimeThreshold:(double)threshold;
- (BOOL)canSubmitNewReport:(id)report withMinimumElapsedTime:(double)time;
- (PFAutoBugCaptureBugReporter)init;
- (id)_lastSubmissionTimeForReport:(id)report;
- (id)_processName;
- (void)_executeSubmitBugReport:(id)report userInfo:(id)info withMaximumSubmissionCadence:(double)cadence;
- (void)_reportSignature:(id)signature forReport:(id)report;
- (void)_scheduleSubmissionOfBugReport:(id)report withUserInfo:(id)info;
- (void)_setLastSubmissionTime:(id)time forReport:(id)report;
- (void)_submitBugReport:(id)report withUserInfo:(id)info;
- (void)submitBugReport:(id)report userInfo:(id)info withMaximumSubmissionCadence:(double)cadence;
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

- (void)submitBugReport:(id)report userInfo:(id)info withMaximumSubmissionCadence:(double)cadence
{
  reportCopy = report;
  infoCopy = info;
  if (reportCopy)
  {
    reportQueue = self->_reportQueue;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __85__PFAutoBugCaptureBugReporter_submitBugReport_userInfo_withMaximumSubmissionCadence___block_invoke;
    v11[3] = &unk_1E856B500;
    v11[4] = self;
    v12 = reportCopy;
    cadenceCopy = cadence;
    v13 = infoCopy;
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

- (BOOL)canSubmitNewReport:(id)report withMinimumElapsedTime:(double)time
{
  reportCopy = report;
  if (isRunningUnitTests())
  {
    [PFAutoBugCaptureBugReporter canSubmitNewReport:withMinimumElapsedTime:];
    v7 = 0;
  }

  else
  {
    v7 = ([reportCopy forceSubmissionAttempt] & 1) != 0 || -[PFAutoBugCaptureBugReporter _timeSinceLastSimilarReport:hasExceededElapsedTimeThreshold:](self, "_timeSinceLastSimilarReport:hasExceededElapsedTimeThreshold:", reportCopy, time);
  }

  return v7;
}

- (BOOL)_timeSinceLastSimilarReport:(id)report hasExceededElapsedTimeThreshold:(double)threshold
{
  v5 = [(PFAutoBugCaptureBugReporter *)self _lastSubmissionTimeForReport:report];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF00] now];
    [v6 timeIntervalSinceDate:v5];
    v8 = v7 > threshold;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (id)_lastSubmissionTimeForReport:(id)report
{
  v3 = MEMORY[0x1E695E000];
  reportCopy = report;
  standardUserDefaults = [v3 standardUserDefaults];
  signature = [reportCopy signature];

  v7 = [standardUserDefaults objectForKey:signature];

  return v7;
}

- (void)_setLastSubmissionTime:(id)time forReport:(id)report
{
  v5 = MEMORY[0x1E695E000];
  reportCopy = report;
  timeCopy = time;
  standardUserDefaults = [v5 standardUserDefaults];
  signature = [reportCopy signature];

  [standardUserDefaults setObject:timeCopy forKey:signature];
}

- (void)_executeSubmitBugReport:(id)report userInfo:(id)info withMaximumSubmissionCadence:(double)cadence
{
  reportCopy = report;
  infoCopy = info;
  v9 = infoCopy;
  if (self->_reporter)
  {
    if (infoCopy)
    {
      objc_initWeak(location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __93__PFAutoBugCaptureBugReporter__executeSubmitBugReport_userInfo_withMaximumSubmissionCadence___block_invoke;
      v12[3] = &unk_1E856B528;
      objc_copyWeak(&v14, location);
      v13 = reportCopy;
      (v9)[2](v9, v12);

      objc_destroyWeak(&v14);
      objc_destroyWeak(location);
    }

    else
    {
      v11 = objc_opt_new();
      [(PFAutoBugCaptureBugReporter *)self _submitBugReport:reportCopy withUserInfo:v11];
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

- (void)_scheduleSubmissionOfBugReport:(id)report withUserInfo:(id)info
{
  reportCopy = report;
  infoCopy = info;
  reportQueue = self->_reportQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__PFAutoBugCaptureBugReporter__scheduleSubmissionOfBugReport_withUserInfo___block_invoke;
  block[3] = &unk_1E856AFB8;
  block[4] = self;
  v12 = reportCopy;
  v13 = infoCopy;
  v9 = infoCopy;
  v10 = reportCopy;
  dispatch_async(reportQueue, block);
}

- (void)_submitBugReport:(id)report withUserInfo:(id)info
{
  v18 = *MEMORY[0x1E69E9840];
  reportCopy = report;
  infoCopy = info;
  reporter = self->_reporter;
  domainString = [reportCopy domainString];
  systemString = [reportCopy systemString];
  errorKindString = [reportCopy errorKindString];
  _processName = [(PFAutoBugCaptureBugReporter *)self _processName];
  v13 = [(SDRDiagnosticReporter *)reporter signatureWithDomain:domainString type:systemString subType:errorKindString detectedProcess:_processName triggerThresholdValues:0];

  if (infoCopy)
  {
    [v13 addEntriesFromDictionary:infoCopy];
  }

  v14 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v16 = 138543362;
    v17 = v13;
    _os_log_impl(&dword_1D8CEC000, v14, OS_LOG_TYPE_INFO, "Automatic bug identified, signature: %{public}@", &v16, 0xCu);
  }

  [(PFAutoBugCaptureBugReporter *)self _reportSignature:v13 forReport:reportCopy];
  v15 = *MEMORY[0x1E69E9840];
}

- (void)_reportSignature:(id)signature forReport:(id)report
{
  reportCopy = report;
  reporter = self->_reporter;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PFAutoBugCaptureBugReporter__reportSignature_forReport___block_invoke;
  v9[3] = &unk_1E856B550;
  v9[4] = self;
  v10 = reportCopy;
  v8 = reportCopy;
  [(SDRDiagnosticReporter *)reporter snapshotWithSignature:signature duration:0 event:0 payload:v9 reply:300.0];
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
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  if (!processName || [(__CFString *)processName isEqualToString:&stru_1F548B930])
  {

    processName = @"com.apple.podcasts";
  }

  return processName;
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