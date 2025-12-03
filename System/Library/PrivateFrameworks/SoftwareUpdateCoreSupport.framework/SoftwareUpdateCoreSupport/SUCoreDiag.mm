@interface SUCoreDiag
+ (id)sharedDiag;
- (SUCoreDiag)initWithAppendedDomain:(id)domain appendingDumpFilename:(id)filename;
- (id)_copyTrackedStatsClearingAfter:(BOOL)after droppingMatchedIndications:(int64_t)indications;
- (id)_dumpMaskToString:(int64_t)string;
- (id)copyTrackedStatsClearingAfter:(BOOL)after droppingMatchedIndications:(int64_t)indications;
- (id)loadDump:(id)dump;
- (int64_t)allIndications;
- (void)_appendToHistory:(id)history;
- (void)_dumpEvent:(id)event;
- (void)_dumpToFile:(id)file dumpingDict:(id)dict forReason:(id)reason;
- (void)_dumpTracked:(id)tracked dumpingTo:(int64_t)to usingFilename:(id)filename clearingStatistics:(BOOL)statistics clearingHistory:(BOOL)history;
- (void)_logTrackedError:(id)error fromLocation:(id)location forReason:(id)reason withResult:(int64_t)result withError:(id)withError;
- (void)collectTrackedStatsClearingAfter:(BOOL)after droppingMatchedIndications:(int64_t)indications completion:(id)completion;
- (void)dumpTracked:(id)tracked dumpingTo:(int64_t)to usingFilename:(id)filename clearingStatistics:(BOOL)statistics clearingHistory:(BOOL)history;
- (void)trackAnomaly:(id)anomaly forReason:(id)reason withResult:(int64_t)result withError:(id)error;
- (void)trackBegin:(id)begin atLevel:(int)level forModule:(id)module withIdentifier:(id)identifier;
- (void)trackEnd:(id)end atLevel:(int)level forModule:(id)module withIdentifier:(id)identifier withResult:(int64_t)result withError:(id)error;
- (void)trackError:(id)error forReason:(id)reason withResult:(int64_t)result withError:(id)withError;
- (void)trackFailure:(id)failure forReason:(id)reason withResult:(int64_t)result withError:(id)error;
- (void)trackFault:(id)fault forReason:(id)reason withResult:(int64_t)result withError:(id)error;
- (void)trackLastReportedUUID:(id)d;
- (void)trackStateEvent:(id)event previousState:(id)state handlingEvent:(id)handlingEvent nextState:(id)nextState performingAction:(id)action withInfo:(id)info;
@end

@implementation SUCoreDiag

+ (id)sharedDiag
{
  if (sharedDiag_diagOnce != -1)
  {
    +[SUCoreDiag sharedDiag];
  }

  v3 = sharedDiag_diag;

  return v3;
}

uint64_t __24__SUCoreDiag_sharedDiag__block_invoke()
{
  v0 = [[SUCoreDiag alloc] initWithAppendedDomain:@"shared" appendingDumpFilename:@"SUDiagDump.plist"];
  v1 = sharedDiag_diag;
  sharedDiag_diag = v0;

  v2 = sharedDiag_diag;

  return [v2 setIsSharedDiag:1];
}

- (SUCoreDiag)initWithAppendedDomain:(id)domain appendingDumpFilename:(id)filename
{
  v38 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  filenameCopy = filename;
  v35.receiver = self;
  v35.super_class = SUCoreDiag;
  v9 = [(SUCoreDiag *)&v35 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uniqueInstanceName, domain);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = +[SUCore sharedCore];
    commonDomain = [v12 commonDomain];
    domainCopy = [v11 initWithFormat:@"%@.%@.%@", commonDomain, @"core.diag.tracking", domainCopy];

    uTF8String = [domainCopy UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(uTF8String, v16);
    trackingQueue = v10->_trackingQueue;
    v10->_trackingQueue = v17;

    v19 = v10->_trackingQueue;
    v20 = +[SUCoreLog sharedLogger];
    oslog = [v20 oslog];

    if (v19)
    {
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = domainCopy;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[DIAG] DISPATCH: created dispatch queue domain(%{public}@)", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDiag *)domainCopy initWithAppendedDomain:oslog appendingDumpFilename:v22, v23, v24, v25, v26, v27];
    }

    v28 = objc_opt_new();
    trackingHistory = v10->_trackingHistory;
    v10->_trackingHistory = v28;

    v30 = objc_alloc_init(SUCoreDiagStats);
    trackStats = v10->_trackStats;
    v10->_trackStats = v30;

    objc_storeStrong(&v10->_appendingDumpFilename, filename);
    lastReportedUUID = v10->_lastReportedUUID;
    v10->_lastReportedUUID = 0;

    v10->_isSharedDiag = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)trackBegin:(id)begin atLevel:(int)level forModule:(id)module withIdentifier:(id)identifier
{
  beginCopy = begin;
  moduleCopy = module;
  identifierCopy = identifier;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_not_V2(trackingQueue);

  trackingQueue2 = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SUCoreDiag_trackBegin_atLevel_forModule_withIdentifier___block_invoke;
  block[3] = &unk_1E86FD258;
  v19 = beginCopy;
  v20 = identifierCopy;
  levelCopy = level;
  selfCopy = self;
  v22 = moduleCopy;
  v15 = moduleCopy;
  v16 = identifierCopy;
  v17 = beginCopy;
  dispatch_sync(trackingQueue2, block);
}

void __58__SUCoreDiag_trackBegin_atLevel_forModule_withIdentifier___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [[SUCoreDiagPoint alloc] initOfType:1 fromLocation:*(a1 + 32) forReason:*(a1 + 40) withCode:0 withError:0];
  [*(a1 + 48) _appendToHistory:v2];
  v3 = [*(a1 + 48) trackStats];
  [v3 setBeginCount:{objc_msgSend(v3, "beginCount") + 1}];

  if (*(a1 + 64) < 1)
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 56);
  v5 = *(a1 + 40);
  v6 = +[SUCoreLog sharedLogger];
  v7 = [v6 oslog];

  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (!v5)
    {
      if (v8)
      {
        v19 = *(a1 + 32);
        *v25 = 138543362;
        *&v25[4] = v19;
        v12 = "%{public}@...";
        v13 = v7;
        v14 = 12;
        goto LABEL_14;
      }

      goto LABEL_15;
    }

    if (!v8)
    {
      goto LABEL_15;
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    *v25 = 138543618;
    *&v25[4] = v15;
    *&v25[12] = 2114;
    *&v25[14] = v16;
    v12 = "%{public}@... (%{public}@)";
LABEL_11:
    v13 = v7;
    v14 = 22;
    goto LABEL_14;
  }

  if (!v5)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    v17 = *(a1 + 56);
    v18 = *(a1 + 32);
    *v25 = 138543618;
    *&v25[4] = v17;
    *&v25[12] = 2114;
    *&v25[14] = v18;
    v12 = "[%{public}@]%{public}@...";
    goto LABEL_11;
  }

  if (v8)
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    *v25 = 138543874;
    *&v25[4] = v9;
    *&v25[12] = 2114;
    *&v25[14] = v10;
    *&v25[22] = 2114;
    v26 = v11;
    v12 = "[%{public}@]%{public}@... (%{public}@)";
    v13 = v7;
    v14 = 32;
LABEL_14:
    _os_log_impl(&dword_1E0F71000, v13, OS_LOG_TYPE_DEFAULT, v12, v25, v14);
  }

LABEL_15:

LABEL_16:
  v20 = [SUCoreSimulate sharedSimulator:*v25];
  v21 = v20;
  if (*(a1 + 56))
  {
    v22 = *(a1 + 56);
  }

  else
  {
    v22 = @"!";
  }

  v23 = [v20 begin:v22 atFunction:*(a1 + 32)];

  v24 = *MEMORY[0x1E69E9840];
}

- (void)trackEnd:(id)end atLevel:(int)level forModule:(id)module withIdentifier:(id)identifier withResult:(int64_t)result withError:(id)error
{
  endCopy = end;
  moduleCopy = module;
  identifierCopy = identifier;
  errorCopy = error;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_not_V2(trackingQueue);

  trackingQueue2 = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__SUCoreDiag_trackEnd_atLevel_forModule_withIdentifier_withResult_withError___block_invoke;
  block[3] = &unk_1E86FD280;
  v25 = endCopy;
  v26 = identifierCopy;
  v27 = errorCopy;
  selfCopy = self;
  levelCopy = level;
  v29 = moduleCopy;
  resultCopy = result;
  v20 = moduleCopy;
  v21 = errorCopy;
  v22 = identifierCopy;
  v23 = endCopy;
  dispatch_sync(trackingQueue2, block);
}

void __77__SUCoreDiag_trackEnd_atLevel_forModule_withIdentifier_withResult_withError___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = [[SUCoreDiagPoint alloc] initOfType:2 fromLocation:*(a1 + 32) forReason:*(a1 + 40) withCode:*(a1 + 72) withError:*(a1 + 48)];
  [*(a1 + 56) _appendToHistory:v2];
  if (!*(a1 + 72) && !*(a1 + 48))
  {
    v22 = [*(a1 + 56) trackStats];
    [v22 setEndSuccessCount:{objc_msgSend(v22, "endSuccessCount") + 1}];

    if (*(a1 + 80) < 1)
    {
      goto LABEL_34;
    }

    v23 = *(a1 + 64);
    v24 = *(a1 + 40);
    v25 = +[SUCoreLog sharedLogger];
    v9 = [v25 oslog];

    v26 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (v24)
      {
        if (!v26)
        {
          goto LABEL_33;
        }

        v27 = *(a1 + 64);
        v28 = *(a1 + 32);
        v29 = *(a1 + 40);
        *v48 = 138543874;
        *&v48[4] = v27;
        *&v48[12] = 2114;
        *&v48[14] = v28;
        *&v48[22] = 2114;
        v49 = v29;
        v30 = "...[%{public}@]%{public}@ (%{public}@) | SUCCESS";
        v31 = v9;
        v32 = 32;
LABEL_32:
        _os_log_impl(&dword_1E0F71000, v31, OS_LOG_TYPE_DEFAULT, v30, v48, v32);
        goto LABEL_33;
      }

      if (!v26)
      {
        goto LABEL_33;
      }

      v40 = *(a1 + 64);
      v41 = *(a1 + 32);
      *v48 = 138543618;
      *&v48[4] = v40;
      *&v48[12] = 2114;
      *&v48[14] = v41;
      v30 = "...[%{public}@]%{public}@ | SUCCESS";
    }

    else
    {
      if (!v24)
      {
        if (!v26)
        {
          goto LABEL_33;
        }

        v42 = *(a1 + 32);
        *v48 = 138543362;
        *&v48[4] = v42;
        v30 = "...%{public}@ | SUCCESS";
        v31 = v9;
        v32 = 12;
        goto LABEL_32;
      }

      if (!v26)
      {
        goto LABEL_33;
      }

      v38 = *(a1 + 32);
      v39 = *(a1 + 40);
      *v48 = 138543618;
      *&v48[4] = v38;
      *&v48[12] = 2114;
      *&v48[14] = v39;
      v30 = "...%{public}@ (%{public}@) | SUCCESS";
    }

    v31 = v9;
    v32 = 22;
    goto LABEL_32;
  }

  v3 = [*(a1 + 56) trackStats];
  [v3 setEndFailCount:{objc_msgSend(v3, "endFailCount") + 1}];

  if ([v2 checkedIndications])
  {
    v4 = [*(a1 + 56) trackStats];
    [v4 setEndFailIndicationsCount:{objc_msgSend(v4, "endFailIndicationsCount") + 1}];

    v5 = [*(a1 + 56) trackStats];
    [v5 setEndFailAllIndications:{objc_msgSend(v5, "endFailAllIndications") | objc_msgSend(v2, "checkedIndications")}];
  }

  if (*(a1 + 80) >= 1)
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 40);
    v8 = +[SUCoreLog sharedLogger];
    v9 = [v8 oslog];

    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v7)
      {
        if (v10)
        {
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          v13 = *(a1 + 64);
          v14 = *(a1 + 72);
          v15 = [*(a1 + 48) checkedDescription];
          *v48 = 138544386;
          *&v48[4] = v13;
          *&v48[12] = 2114;
          *&v48[14] = v11;
          *&v48[22] = 2114;
          v49 = v12;
          *v50 = 2048;
          *&v50[2] = v14;
          *&v50[10] = 2114;
          *&v50[12] = v15;
          v16 = "[DIAG_END] ...[%{public}@]%{public}@ (%{public}@) | result=%ld error:%{public}@";
          v17 = v9;
          v18 = 52;
LABEL_23:
          _os_log_error_impl(&dword_1E0F71000, v17, OS_LOG_TYPE_ERROR, v16, v48, v18);
        }

LABEL_33:

        goto LABEL_34;
      }

      if (!v10)
      {
        goto LABEL_33;
      }

      v33 = *(a1 + 32);
      v34 = *(a1 + 64);
      v35 = *(a1 + 72);
      v15 = [*(a1 + 48) checkedDescription];
      *v48 = 138544130;
      *&v48[4] = v34;
      *&v48[12] = 2114;
      *&v48[14] = v33;
      *&v48[22] = 2048;
      v49 = v35;
      *v50 = 2114;
      *&v50[2] = v15;
      v16 = "[DIAG_END] ...[%{public}@]%{public}@ | result=%ld error:%{public}@";
    }

    else
    {
      if (!v7)
      {
        if (v10)
        {
          v36 = *(a1 + 32);
          v37 = *(a1 + 72);
          v15 = [*(a1 + 48) checkedDescription];
          *v48 = 138543874;
          *&v48[4] = v36;
          *&v48[12] = 2048;
          *&v48[14] = v37;
          *&v48[22] = 2114;
          v49 = v15;
          v16 = "[DIAG_END] ...%{public}@ | result=%ld error:%{public}@";
          v17 = v9;
          v18 = 32;
          goto LABEL_23;
        }

        goto LABEL_33;
      }

      if (!v10)
      {
        goto LABEL_33;
      }

      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v21 = *(a1 + 72);
      v15 = [*(a1 + 48) checkedDescription];
      *v48 = 138544130;
      *&v48[4] = v19;
      *&v48[12] = 2114;
      *&v48[14] = v20;
      *&v48[22] = 2048;
      v49 = v21;
      *v50 = 2114;
      *&v50[2] = v15;
      v16 = "[DIAG_END] ...%{public}@ (%{public}@) | result=%ld error:%{public}@";
    }

    v17 = v9;
    v18 = 42;
    goto LABEL_23;
  }

LABEL_34:
  v43 = [SUCoreSimulate sharedSimulator:*v48];
  v44 = v43;
  if (*(a1 + 64))
  {
    v45 = *(a1 + 64);
  }

  else
  {
    v45 = @"!";
  }

  v46 = [v43 end:v45 atFunction:*(a1 + 32)];

  v47 = *MEMORY[0x1E69E9840];
}

- (void)trackError:(id)error forReason:(id)reason withResult:(int64_t)result withError:(id)withError
{
  errorCopy = error;
  reasonCopy = reason;
  withErrorCopy = withError;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SUCoreDiag_trackError_forReason_withResult_withError___block_invoke;
  block[3] = &unk_1E86FD2A8;
  v18 = errorCopy;
  v19 = reasonCopy;
  selfCopy = self;
  resultCopy = result;
  v20 = withErrorCopy;
  v14 = withErrorCopy;
  v15 = reasonCopy;
  v16 = errorCopy;
  dispatch_async(trackingQueue, block);
}

void __56__SUCoreDiag_trackError_forReason_withResult_withError___block_invoke(uint64_t a1)
{
  v6 = [[SUCoreDiagPoint alloc] initOfType:4 fromLocation:*(a1 + 32) forReason:*(a1 + 40) withCode:*(a1 + 64) withError:*(a1 + 48)];
  [*(a1 + 56) _appendToHistory:v6];
  v2 = [*(a1 + 56) trackStats];
  [v2 setErrorCount:{objc_msgSend(v2, "errorCount") + 1}];

  if ([v6 checkedIndications])
  {
    v3 = [*(a1 + 56) trackStats];
    [v3 setErrorIndicationsCount:{objc_msgSend(v3, "errorIndicationsCount") + 1}];

    v4 = [*(a1 + 56) trackStats];
    [v4 setErrorAllIndications:{objc_msgSend(v4, "errorAllIndications") | objc_msgSend(v6, "checkedIndications")}];
  }

  if ([*(a1 + 56) isSharedDiag])
  {
    [*(a1 + 56) _logTrackedError:@"ERROR" fromLocation:*(a1 + 32) forReason:*(a1 + 40) withResult:*(a1 + 64) withError:*(a1 + 48)];
  }

  else
  {
    v5 = +[SUCoreDiag sharedDiag];
    [v5 trackError:*(a1 + 32) forReason:*(a1 + 40) withResult:*(a1 + 64) withError:*(a1 + 48)];
  }
}

- (void)trackAnomaly:(id)anomaly forReason:(id)reason withResult:(int64_t)result withError:(id)error
{
  anomalyCopy = anomaly;
  reasonCopy = reason;
  errorCopy = error;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SUCoreDiag_trackAnomaly_forReason_withResult_withError___block_invoke;
  block[3] = &unk_1E86FD2A8;
  v18 = anomalyCopy;
  v19 = reasonCopy;
  selfCopy = self;
  resultCopy = result;
  v20 = errorCopy;
  v14 = errorCopy;
  v15 = reasonCopy;
  v16 = anomalyCopy;
  dispatch_async(trackingQueue, block);
}

void __58__SUCoreDiag_trackAnomaly_forReason_withResult_withError___block_invoke(uint64_t a1)
{
  v6 = [[SUCoreDiagPoint alloc] initOfType:8 fromLocation:*(a1 + 32) forReason:*(a1 + 40) withCode:*(a1 + 64) withError:*(a1 + 48)];
  [*(a1 + 56) _appendToHistory:v6];
  v2 = [*(a1 + 56) trackStats];
  [v2 setAnomalyCount:{objc_msgSend(v2, "anomalyCount") + 1}];

  if ([v6 checkedIndications])
  {
    v3 = [*(a1 + 56) trackStats];
    [v3 setAnomalyIndicationsCount:{objc_msgSend(v3, "anomalyIndicationsCount") + 1}];

    v4 = [*(a1 + 56) trackStats];
    [v4 setAnomalyAllIndications:{objc_msgSend(v4, "anomalyAllIndications") | objc_msgSend(v6, "checkedIndications")}];
  }

  if ([*(a1 + 56) isSharedDiag])
  {
    [*(a1 + 56) _logTrackedError:@"ANOMALY" fromLocation:*(a1 + 32) forReason:*(a1 + 40) withResult:*(a1 + 64) withError:*(a1 + 48)];
  }

  else
  {
    v5 = +[SUCoreDiag sharedDiag];
    [v5 trackAnomaly:*(a1 + 32) forReason:*(a1 + 40) withResult:*(a1 + 64) withError:*(a1 + 48)];
  }
}

- (void)trackFailure:(id)failure forReason:(id)reason withResult:(int64_t)result withError:(id)error
{
  failureCopy = failure;
  reasonCopy = reason;
  errorCopy = error;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SUCoreDiag_trackFailure_forReason_withResult_withError___block_invoke;
  block[3] = &unk_1E86FD2A8;
  v18 = failureCopy;
  v19 = reasonCopy;
  selfCopy = self;
  resultCopy = result;
  v20 = errorCopy;
  v14 = errorCopy;
  v15 = reasonCopy;
  v16 = failureCopy;
  dispatch_async(trackingQueue, block);
}

void __58__SUCoreDiag_trackFailure_forReason_withResult_withError___block_invoke(uint64_t a1)
{
  v6 = [[SUCoreDiagPoint alloc] initOfType:16 fromLocation:*(a1 + 32) forReason:*(a1 + 40) withCode:*(a1 + 64) withError:*(a1 + 48)];
  [*(a1 + 56) _appendToHistory:v6];
  v2 = [*(a1 + 56) trackStats];
  [v2 setFailureCount:{objc_msgSend(v2, "failureCount") + 1}];

  if ([v6 checkedIndications])
  {
    v3 = [*(a1 + 56) trackStats];
    [v3 setFailureIndicationsCount:{objc_msgSend(v3, "failureIndicationsCount") + 1}];

    v4 = [*(a1 + 56) trackStats];
    [v4 setFailureAllIndications:{objc_msgSend(v4, "failureAllIndications") | objc_msgSend(v6, "checkedIndications")}];
  }

  if ([*(a1 + 56) isSharedDiag])
  {
    [*(a1 + 56) _logTrackedError:@"FAILURE" fromLocation:*(a1 + 32) forReason:*(a1 + 40) withResult:*(a1 + 64) withError:*(a1 + 48)];
  }

  [*(a1 + 56) _dumpTracked:@"FAILURE" dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];
  if (([*(a1 + 56) isSharedDiag] & 1) == 0)
  {
    v5 = +[SUCoreDiag sharedDiag];
    [v5 trackFailure:*(a1 + 32) forReason:*(a1 + 40) withResult:*(a1 + 64) withError:*(a1 + 48)];
  }
}

- (void)trackFault:(id)fault forReason:(id)reason withResult:(int64_t)result withError:(id)error
{
  faultCopy = fault;
  reasonCopy = reason;
  errorCopy = error;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SUCoreDiag_trackFault_forReason_withResult_withError___block_invoke;
  block[3] = &unk_1E86FD2A8;
  v18 = faultCopy;
  v19 = reasonCopy;
  selfCopy = self;
  resultCopy = result;
  v20 = errorCopy;
  v14 = errorCopy;
  v15 = reasonCopy;
  v16 = faultCopy;
  dispatch_async(trackingQueue, block);
}

void __56__SUCoreDiag_trackFault_forReason_withResult_withError___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [[SUCoreDiagPoint alloc] initOfType:32 fromLocation:*(a1 + 32) forReason:*(a1 + 40) withCode:*(a1 + 64) withError:*(a1 + 48)];
  [*(a1 + 56) _appendToHistory:v2];
  v3 = [*(a1 + 56) trackStats];
  [v3 setFaultCount:{objc_msgSend(v3, "faultCount") + 1}];

  if ([v2 checkedIndications])
  {
    v4 = [*(a1 + 56) trackStats];
    [v4 setFaultIndicationsCount:{objc_msgSend(v4, "faultIndicationsCount") + 1}];

    v5 = [*(a1 + 56) trackStats];
    [v5 setFaultAllIndications:{objc_msgSend(v5, "faultAllIndications") | objc_msgSend(v2, "checkedIndications")}];
  }

  [*(a1 + 56) _dumpTracked:@"FAULT" dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];
  if ([*(a1 + 56) isSharedDiag])
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = +[SUCoreLog sharedLogger];
    v9 = [v8 oslog];

    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
    if (v7)
    {
      if (v6)
      {
        if (v10)
        {
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          v13 = *(a1 + 64);
          v14 = [*(a1 + 48) checkedDescription];
          v24 = 138544130;
          v25 = v11;
          v26 = 2114;
          v27 = v12;
          v28 = 2048;
          v29 = v13;
          v30 = 2114;
          v31 = v14;
          v15 = "[DIAG_FAULT] FAULT:%{public}@, reason=%{public}@ result=%ld error:%{public}@";
          v16 = v9;
          v17 = 42;
LABEL_13:
          _os_log_fault_impl(&dword_1E0F71000, v16, OS_LOG_TYPE_FAULT, v15, &v24, v17);
        }
      }

      else if (v10)
      {
        v21 = *(a1 + 32);
        v22 = *(a1 + 40);
        v23 = *(a1 + 64);
        v24 = 138543874;
        v25 = v21;
        v26 = 2114;
        v27 = v22;
        v28 = 2048;
        v29 = v23;
        _os_log_fault_impl(&dword_1E0F71000, v9, OS_LOG_TYPE_FAULT, "[DIAG_FAULT] FAULT:%{public}@, reason=%{public}@ result=%ld", &v24, 0x20u);
      }
    }

    else if (v6)
    {
      if (v10)
      {
        v19 = *(a1 + 32);
        v20 = *(a1 + 64);
        v14 = [*(a1 + 48) checkedDescription];
        v24 = 138543874;
        v25 = v19;
        v26 = 2048;
        v27 = v20;
        v28 = 2114;
        v29 = v14;
        v15 = "[DIAG_FAULT] FAULT:%{public}@, result=%ld error:%{public}@";
        v16 = v9;
        v17 = 32;
        goto LABEL_13;
      }
    }

    else if (v10)
    {
      __56__SUCoreDiag_trackFault_forReason_withResult_withError___block_invoke_cold_1((a1 + 32), (a1 + 64), v9);
    }
  }

  else
  {
    v9 = +[SUCoreDiag sharedDiag];
    [v9 trackFault:*(a1 + 32) forReason:*(a1 + 40) withResult:*(a1 + 64) withError:*(a1 + 48)];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)trackStateEvent:(id)event previousState:(id)state handlingEvent:(id)handlingEvent nextState:(id)nextState performingAction:(id)action withInfo:(id)info
{
  eventCopy = event;
  stateCopy = state;
  handlingEventCopy = handlingEvent;
  nextStateCopy = nextState;
  actionCopy = action;
  infoCopy = info;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__SUCoreDiag_trackStateEvent_previousState_handlingEvent_nextState_performingAction_withInfo___block_invoke;
  block[3] = &unk_1E86FD2D0;
  v28 = infoCopy;
  v29 = eventCopy;
  v30 = stateCopy;
  v31 = handlingEventCopy;
  v32 = nextStateCopy;
  v33 = actionCopy;
  selfCopy = self;
  v21 = actionCopy;
  v22 = nextStateCopy;
  v23 = handlingEventCopy;
  v24 = stateCopy;
  v25 = eventCopy;
  v26 = infoCopy;
  dispatch_async(trackingQueue, block);
}

void __94__SUCoreDiag_trackStateEvent_previousState_handlingEvent_nextState_performingAction_withInfo___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = *(a1 + 32);
  if (isKindOfClass)
  {
    v5 = v4;
  }

  else
  {
    v5 = [v4 description];
  }

  v6 = v5;
  v7 = [[SUCoreDiagPoint alloc] initStateEventForFSM:*(a1 + 40) previousState:*(a1 + 48) fsmEvent:*(a1 + 56) nextState:*(a1 + 64) fsmAction:*(a1 + 72) eventInfo:v5];
  [*(a1 + 80) _appendToHistory:v7];
  v8 = [*(a1 + 80) trackStats];
  [v8 setStateEventCount:{objc_msgSend(v8, "stateEventCount") + 1}];

  if ([*(a1 + 80) isSharedDiag])
  {
    v9 = +[SUCoreLog sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v7;
      _os_log_impl(&dword_1E0F71000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@", &v13, 0xCu);
    }
  }

  else
  {
    v11 = +[SUCoreDiag sharedDiag];
    [v11 trackStateEvent:*(a1 + 40) previousState:*(a1 + 48) handlingEvent:*(a1 + 56) nextState:*(a1 + 64) performingAction:*(a1 + 72) withInfo:*(a1 + 32)];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)trackLastReportedUUID:(id)d
{
  dCopy = d;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SUCoreDiag_trackLastReportedUUID___block_invoke;
  v7[3] = &unk_1E86FC150;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(trackingQueue, v7);
}

void __36__SUCoreDiag_trackLastReportedUUID___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLastReportedUUID:*(a1 + 40)];
  if (([*(a1 + 32) isSharedDiag] & 1) == 0)
  {
    v2 = +[SUCoreDiag sharedDiag];
    [v2 trackLastReportedUUID:*(a1 + 40)];
  }
}

- (int64_t)allIndications
{
  trackStats = [(SUCoreDiag *)self trackStats];
  allIndications = [trackStats allIndications];

  return allIndications;
}

- (id)copyTrackedStatsClearingAfter:(BOOL)after droppingMatchedIndications:(int64_t)indications
{
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_not_V2(trackingQueue);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  trackingQueue2 = [(SUCoreDiag *)self trackingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__SUCoreDiag_copyTrackedStatsClearingAfter_droppingMatchedIndications___block_invoke;
  v11[3] = &unk_1E86FD2F8;
  v11[4] = self;
  v11[5] = &v13;
  afterCopy = after;
  v11[6] = indications;
  dispatch_sync(trackingQueue2, v11);

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v9;
}

uint64_t __71__SUCoreDiag_copyTrackedStatsClearingAfter_droppingMatchedIndications___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyTrackedStatsClearingAfter:*(a1 + 56) droppingMatchedIndications:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)collectTrackedStatsClearingAfter:(BOOL)after droppingMatchedIndications:(int64_t)indications completion:(id)completion
{
  completionCopy = completion;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__SUCoreDiag_collectTrackedStatsClearingAfter_droppingMatchedIndications_completion___block_invoke;
  v11[3] = &unk_1E86FD320;
  afterCopy = after;
  v12 = completionCopy;
  indicationsCopy = indications;
  v11[4] = self;
  v10 = completionCopy;
  dispatch_async(trackingQueue, v11);
}

void __85__SUCoreDiag_collectTrackedStatsClearingAfter_droppingMatchedIndications_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _copyTrackedStatsClearingAfter:*(a1 + 56) droppingMatchedIndications:*(a1 + 48)];
  v3 = +[SUCore sharedCore];
  v4 = [v3 completionQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__SUCoreDiag_collectTrackedStatsClearingAfter_droppingMatchedIndications_completion___block_invoke_2;
  v7[3] = &unk_1E86FC410;
  v5 = *(a1 + 40);
  v8 = v2;
  v9 = v5;
  v6 = v2;
  dispatch_async(v4, v7);
}

- (void)dumpTracked:(id)tracked dumpingTo:(int64_t)to usingFilename:(id)filename clearingStatistics:(BOOL)statistics clearingHistory:(BOOL)history
{
  trackedCopy = tracked;
  filenameCopy = filename;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_not_V2(trackingQueue);

  trackingQueue2 = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__SUCoreDiag_dumpTracked_dumpingTo_usingFilename_clearingStatistics_clearingHistory___block_invoke;
  block[3] = &unk_1E86FD348;
  block[4] = self;
  v19 = trackedCopy;
  v20 = filenameCopy;
  toCopy = to;
  statisticsCopy = statistics;
  historyCopy = history;
  v16 = filenameCopy;
  v17 = trackedCopy;
  dispatch_sync(trackingQueue2, block);
}

- (id)loadDump:(id)dump
{
  dumpCopy = dump;
  if (!dumpCopy)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = +[SUCore sharedCore];
    commonFilesystemBaseDir = [v5 commonFilesystemBaseDir];
    dumpCopy = [v4 initWithFormat:@"%@%@/%@", commonFilesystemBaseDir, @"/DiagDump", @"SUDiagDump.plist"];
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [defaultManager contentsAtPath:dumpCopy];
  if (!v8)
  {
    v20 = +[SUCoreLog sharedLogger];
    oslog = [v20 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDiag *)dumpCopy loadDump:oslog, v21, v22, v23, v24, v25, v26];
    }

    v17 = 0;
    v16 = 0;
    goto LABEL_11;
  }

  v9 = MEMORY[0x1E696ACD0];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v10 setWithObjects:{v11, v12, v13, v14, objc_opt_class(), 0}];
  v29 = 0;
  v16 = [v9 unarchivedObjectOfClasses:v15 fromData:v8 error:&v29];
  v17 = v29;

  if (!v16 || v17)
  {
    v18 = +[SUCoreLog sharedLogger];
    oslog = [v18 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDiag loadDump:];
    }

LABEL_11:
  }

  v27 = v16;

  return v16;
}

- (void)_appendToHistory:(id)history
{
  historyCopy = history;
  trackingHistory = [(SUCoreDiag *)self trackingHistory];

  if (!trackingHistory)
  {
    v5 = objc_opt_new();
    [(SUCoreDiag *)self setTrackingHistory:v5];
  }

  trackingHistory2 = [(SUCoreDiag *)self trackingHistory];
  [trackingHistory2 addObject:historyCopy];

  trackingHistory3 = [(SUCoreDiag *)self trackingHistory];
  v8 = [trackingHistory3 count];

  if (v8 >= 0x81)
  {
    do
    {
      trackingHistory4 = [(SUCoreDiag *)self trackingHistory];
      [trackingHistory4 removeObjectAtIndex:0];

      trackingHistory5 = [(SUCoreDiag *)self trackingHistory];
      v11 = [trackingHistory5 count];
    }

    while (v11 > 0x80);
  }
}

- (void)_logTrackedError:(id)error fromLocation:(id)location forReason:(id)reason withResult:(int64_t)result withError:(id)withError
{
  v36 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  locationCopy = location;
  reasonCopy = reason;
  withErrorCopy = withError;
  v15 = +[SUCoreLog sharedLogger];
  oslog = [v15 oslog];

  v17 = os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR);
  if (reasonCopy | withErrorCopy)
  {
    if (reasonCopy)
    {
      if (!withErrorCopy)
      {
        if (!v17)
        {
          goto LABEL_13;
        }

        v26 = 138544130;
        v27 = errorCopy;
        v28 = 2114;
        v29 = locationCopy;
        v30 = 2114;
        resultCopy4 = reasonCopy;
        v32 = 2048;
        resultCopy2 = result;
        v18 = "[DIAG_ERROR] %{public}@: %{public}@, reason=%{public}@ result=%ld";
        v19 = oslog;
        v20 = 42;
        goto LABEL_4;
      }

      if (!v17)
      {
        goto LABEL_13;
      }

      checkedDescription = [withErrorCopy checkedDescription];
      v26 = 138544386;
      v27 = errorCopy;
      v28 = 2114;
      v29 = locationCopy;
      v30 = 2114;
      resultCopy4 = reasonCopy;
      v32 = 2048;
      resultCopy2 = result;
      v34 = 2114;
      v35 = checkedDescription;
      v22 = "[DIAG_ERROR] %{public}@: %{public}@, reason=%{public}@ result=%ld error:%{public}@";
      v23 = oslog;
      v24 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_13;
      }

      checkedDescription = [withErrorCopy checkedDescription];
      v26 = 138544130;
      v27 = errorCopy;
      v28 = 2114;
      v29 = locationCopy;
      v30 = 2048;
      resultCopy4 = result;
      v32 = 2114;
      resultCopy2 = checkedDescription;
      v22 = "[DIAG_ERROR] %{public}@: %{public}@, result=%ld error:%{public}@";
      v23 = oslog;
      v24 = 42;
    }

    _os_log_error_impl(&dword_1E0F71000, v23, OS_LOG_TYPE_ERROR, v22, &v26, v24);

    goto LABEL_13;
  }

  if (v17)
  {
    v26 = 138543874;
    v27 = errorCopy;
    v28 = 2114;
    v29 = locationCopy;
    v30 = 2048;
    resultCopy4 = result;
    v18 = "[DIAG_ERROR] %{public}@: %{public}@, result=%ld";
    v19 = oslog;
    v20 = 32;
LABEL_4:
    _os_log_error_impl(&dword_1E0F71000, v19, OS_LOG_TYPE_ERROR, v18, &v26, v20);
  }

LABEL_13:

  v25 = *MEMORY[0x1E69E9840];
}

- (id)_dumpMaskToString:(int64_t)string
{
  stringCopy = string;
  if (string)
  {
    v4 = @"LOG_ARCHIVE";
    if ((string & 2) != 0)
    {
      [@"LOG_ARCHIVE" stringByAppendingString:@"|STDOUT"];

      if ((stringCopy & 4) != 0)
      {
        goto LABEL_13;
      }
    }

    else if ((string & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if ((string & 2) != 0)
  {
    v4 = @"STDOUT";
    if ((string & 4) != 0)
    {
LABEL_13:
      [(__CFString *)v4 stringByAppendingString:@"|FILE"];

      if ((stringCopy & 8) == 0)
      {
        return v4;
      }

      goto LABEL_8;
    }

LABEL_7:
    if ((stringCopy & 8) == 0)
    {
      return v4;
    }

LABEL_8:
    [(__CFString *)v4 stringByAppendingString:@"|EVENT_REPORTER"];

    return v4;
  }

  if ((string & 4) != 0)
  {
    v4 = @"FILE";
    if ((string & 8) == 0)
    {
      return v4;
    }

    goto LABEL_8;
  }

  return (@"EVENT_REPORTER" & (string << 60 >> 63));
}

- (void)_dumpTracked:(id)tracked dumpingTo:(int64_t)to usingFilename:(id)filename clearingStatistics:(BOOL)statistics clearingHistory:(BOOL)history
{
  historyCopy = history;
  statisticsCopy = statistics;
  v78 = *MEMORY[0x1E69E9840];
  trackedCopy = tracked;
  filenameCopy = filename;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_V2(trackingQueue);

  v15 = [(SUCoreDiag *)self _dumpMaskToString:to];
  v16 = +[SUCoreLog sharedLogger];
  oslog = [v16 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    *buf = 138544386;
    v69 = trackedCopy;
    if (statisticsCopy)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    if (historyCopy)
    {
      v18 = @"YES";
    }

    v70 = 2114;
    v71 = v15;
    v72 = 2114;
    v73 = filenameCopy;
    v74 = 2114;
    v75 = v19;
    v76 = 2114;
    v77 = v18;
    _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[DIAG] dump tracked with reason=%{public}@ dumpToMask=%{public}@ filename=%{public}@ clearStatistics=%{public}@ clearHistory=%{public}@", buf, 0x34u);
  }

  if ((to & 2) != 0)
  {
    v20 = @"NO";
    if (statisticsCopy)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    if (historyCopy)
    {
      v20 = @"YES";
    }

    NSLog(@"[DIAG] dump tracked with reason=%@ dumpToMask=%@ filename=%@ clearStatistics=%@ clearHistory=%@", trackedCopy, v15, filenameCopy, v21, v20);
  }

  if ((to & 4) != 0)
  {
    v22 = objc_opt_new();
    if ((to & 8) != 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v23 = 0;
    if (!to)
    {
      goto LABEL_55;
    }

    goto LABEL_20;
  }

  v22 = 0;
  if ((to & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v23 = objc_opt_new();
LABEL_20:
  if (trackedCopy)
  {
    [v22 setSafeObject:trackedCopy forKey:@"reportReason"];
    [v23 setSafeObject:trackedCopy forKey:@"reportReason"];
  }

  v66 = historyCopy;
  v67 = v23;
  lastReportedUUID = [(SUCoreDiag *)self lastReportedUUID];

  if (lastReportedUUID)
  {
    lastReportedUUID2 = [(SUCoreDiag *)self lastReportedUUID];
    [v22 setSafeObject:lastReportedUUID2 forKey:@"UUID"];

    lastReportedUUID3 = [(SUCoreDiag *)self lastReportedUUID];
    [v23 setSafeObject:lastReportedUUID3 forKey:@"UUID"];

    if (to)
    {
      v27 = +[SUCoreLog sharedLogger];
      oslog2 = [v27 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        lastReportedUUID4 = [(SUCoreDiag *)self lastReportedUUID];
        *buf = 138543362;
        v69 = lastReportedUUID4;
        _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[DIAG] DUMP_UUID: %{public}@", buf, 0xCu);
      }
    }

    if ((to & 2) != 0)
    {
      lastReportedUUID5 = [(SUCoreDiag *)self lastReportedUUID];
      NSLog(@"[DIAG] DUMP_UUID: %@", lastReportedUUID5);
    }
  }

  trackStats = [(SUCoreDiag *)self trackStats];

  if (trackStats)
  {
    trackStats2 = [(SUCoreDiag *)self trackStats];
    v33 = v22;
    [v22 setSafeObject:trackStats2 forKey:@"reportStats"];

    trackStats3 = [(SUCoreDiag *)self trackStats];
    summary = [trackStats3 summary];
    [v67 setSafeObject:summary forKey:@"reportStats"];

    if (to)
    {
      v36 = +[SUCoreLog sharedLogger];
      oslog3 = [v36 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        trackStats4 = [(SUCoreDiag *)self trackStats];
        *buf = 138543362;
        v69 = trackStats4;
        _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[DIAG] DUMP_STATS:\n%{public}@", buf, 0xCu);
      }
    }

    v22 = v33;
    if ((to & 2) != 0)
    {
      trackStats5 = [(SUCoreDiag *)self trackStats];
      NSLog(@"[DIAG] DUMP_STATS:\n%@", trackStats5);
    }
  }

  v65 = statisticsCopy;
  trackingHistory = [(SUCoreDiag *)self trackingHistory];
  v41 = [trackingHistory count];

  historyCopy = v66;
  if (v41)
  {
    trackingHistory2 = [(SUCoreDiag *)self trackingHistory];
    [v22 setSafeObject:trackingHistory2 forKey:?];

    trackingHistory3 = [(SUCoreDiag *)self trackingHistory];
    v44 = [trackingHistory3 count];

    if (v44)
    {
      v61 = v22;
      v62 = v15;
      v63 = filenameCopy;
      v64 = trackedCopy;
      v45 = 0;
      v46 = 0;
      do
      {
        trackingHistory4 = [(SUCoreDiag *)self trackingHistory];
        v48 = [trackingHistory4 objectAtIndexedSubscript:v46];

        v49 = objc_alloc(MEMORY[0x1E696AEC0]);
        summary2 = [v48 summary];
        v51 = summary2;
        if (v45)
        {
          v52 = [v49 initWithFormat:@", [%04lu:%@]", v46, summary2];

          v53 = [v45 stringByAppendingString:v52];

          v51 = v52;
          v45 = v53;
        }

        else
        {
          v45 = [v49 initWithFormat:@"[%04lu:%@]", v46, summary2];
        }

        if (to)
        {
          v54 = +[SUCoreLog sharedLogger];
          oslog4 = [v54 oslog];

          if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v69 = v46;
            v70 = 2114;
            v71 = v48;
            _os_log_impl(&dword_1E0F71000, oslog4, OS_LOG_TYPE_DEFAULT, "[DIAG] DUMP_HISTORY[%04lu]: %{public}@", buf, 0x16u);
          }
        }

        if ((to & 2) != 0)
        {
          NSLog(@"[DIAG] DUMP_HISTORY[%04lu]: %@", v46, v48);
        }

        ++v46;
        trackingHistory5 = [(SUCoreDiag *)self trackingHistory];
        v57 = [trackingHistory5 count];
      }

      while (v46 < v57);
      filenameCopy = v63;
      trackedCopy = v64;
      historyCopy = v66;
      v22 = v61;
      v15 = v62;
      if (v45)
      {
        [v67 setSafeObject:v45 forKey:@"reportHistory"];
      }
    }
  }

  if ((to & 4) != 0)
  {
    [(SUCoreDiag *)self _dumpToFile:filenameCopy dumpingDict:v22 forReason:trackedCopy];
  }

  statisticsCopy = v65;
  v23 = v67;
  if ((to & 8) != 0)
  {
    [(SUCoreDiag *)self _dumpEvent:v67];
  }

LABEL_55:
  if (statisticsCopy)
  {
    v58 = objc_alloc_init(SUCoreDiagStats);
    [(SUCoreDiag *)self setTrackStats:v58];
  }

  if (historyCopy)
  {
    trackingHistory6 = [(SUCoreDiag *)self trackingHistory];
    [trackingHistory6 removeAllObjects];
  }

  v60 = *MEMORY[0x1E69E9840];
}

- (void)_dumpToFile:(id)file dumpingDict:(id)dict forReason:(id)reason
{
  v53 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  reasonCopy = reason;
  dictCopy = dict;
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_V2(trackingQueue);

  v44 = 0;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:dictCopy requiringSecureCoding:1 error:&v44];

  v13 = v44;
  v14 = v13;
  if (!v12 || v13)
  {
    v20 = +[SUCoreLog sharedLogger];
    oslog = [v20 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDiag *)v14 _dumpToFile:oslog dumpingDict:v22 forReason:v23, v24, v25, v26, v27];
    }
  }

  else
  {
    if (!fileCopy)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = +[SUCore sharedCore];
      commonFilesystemBaseDir = [v16 commonFilesystemBaseDir];
      appendingDumpFilename = [(SUCoreDiag *)self appendingDumpFilename];
      if (appendingDumpFilename)
      {
        appendingDumpFilename2 = [(SUCoreDiag *)self appendingDumpFilename];
        fileCopy = [v15 initWithFormat:@"%@%@/%@", commonFilesystemBaseDir, @"/DiagDump", appendingDumpFilename2];
      }

      else
      {
        fileCopy = [v15 initWithFormat:@"%@%@/%@", commonFilesystemBaseDir, @"/DiagDump", @"SUDiagDump.plist"];
      }
    }

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager fileExistsAtPath:fileCopy])
    {
      v43 = 0;
      v29 = [defaultManager removeItemAtPath:fileCopy error:&v43];
      v30 = v43;
      if ((v29 & 1) == 0)
      {
        v31 = +[SUCoreLog sharedLogger];
        oslog2 = [v31 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v48 = reasonCopy;
          v49 = 2114;
          v50 = fileCopy;
          v51 = 2114;
          v52 = v30;
          _os_log_error_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_ERROR, "[DIAG_ERROR] ANOMALY: [%@] could not remove pre-existing dump file: %{public}@, error: %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v30 = 0;
    }

    stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
    if (stringByDeletingLastPathComponent)
    {
      v42 = v30;
      v34 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v42];
      oslog = v42;

      if ((v34 & 1) == 0 && (!oslog || [oslog code]!= 17))
      {
        v35 = +[SUCoreLog sharedLogger];
        oslog3 = [v35 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
        {
          [SUCoreDiag _dumpToFile:dumpingDict:forReason:];
        }
      }
    }

    else
    {
      oslog = v30;
    }

    v45 = *MEMORY[0x1E696A3A0];
    v46 = *MEMORY[0x1E696A3A8];
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v38 = [defaultManager createFileAtPath:fileCopy contents:v12 attributes:v37];

    if ((v38 & 1) == 0)
    {
      v39 = +[SUCoreLog sharedLogger];
      oslog4 = [v39 oslog];

      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDiag _dumpToFile:dumpingDict:forReason:];
      }
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)_dumpEvent:(id)event
{
  eventCopy = event;
  v4 = eventCopy;
  if (eventCopy)
  {
    [eventCopy setSafeObject:@"coreDiagReport" forKey:@"event"];
    oslog = +[SUCoreEventReporter sharedReporter];
    [oslog sendEvent:v4];
  }

  else
  {
    v6 = +[SUCoreLog sharedLogger];
    oslog = [v6 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDiag _dumpEvent:oslog];
    }
  }
}

- (id)_copyTrackedStatsClearingAfter:(BOOL)after droppingMatchedIndications:(int64_t)indications
{
  afterCopy = after;
  v65 = *MEMORY[0x1E69E9840];
  trackingQueue = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_V2(trackingQueue);

  trackStats = [(SUCoreDiag *)self trackStats];
  v9 = [trackStats copy];

  if (afterCopy)
  {
    v10 = objc_alloc_init(SUCoreDiagStats);
    [(SUCoreDiag *)self setTrackStats:v10];
  }

  if (indications)
  {
    endFailCount = [(SUCoreDiagStats *)v9 endFailCount];
    endFailIndicationsCount = [(SUCoreDiagStats *)v9 endFailIndicationsCount];
    endFailAllIndications = [(SUCoreDiagStats *)v9 endFailAllIndications];
    errorCount = [(SUCoreDiagStats *)v9 errorCount];
    errorIndicationsCount = [(SUCoreDiagStats *)v9 errorIndicationsCount];
    errorAllIndications = [(SUCoreDiagStats *)v9 errorAllIndications];
    anomalyCount = [(SUCoreDiagStats *)v9 anomalyCount];
    anomalyIndicationsCount = [(SUCoreDiagStats *)v9 anomalyIndicationsCount];
    anomalyAllIndications = [(SUCoreDiagStats *)v9 anomalyAllIndications];
    failureCount = [(SUCoreDiagStats *)v9 failureCount];
    failureIndicationsCount = [(SUCoreDiagStats *)v9 failureIndicationsCount];
    failureAllIndications = [(SUCoreDiagStats *)v9 failureAllIndications];
    faultCount = [(SUCoreDiagStats *)v9 faultCount];
    faultIndicationsCount = [(SUCoreDiagStats *)v9 faultIndicationsCount];
    faultAllIndications = [(SUCoreDiagStats *)v9 faultAllIndications];
    v15 = [SUCoreErrorInformation summaryOfIndications:indications];
    endFailAllIndications2 = [(SUCoreDiagStats *)v9 endFailAllIndications];
    v17 = endFailAllIndications2 == indications;
    if (endFailAllIndications2 == indications)
    {
      v18 = +[SUCoreLog sharedLogger];
      oslog = [v18 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        endFailIndicationsCount2 = [(SUCoreDiagStats *)v9 endFailIndicationsCount];
        endFailIndicationsCount3 = [(SUCoreDiagStats *)v9 endFailIndicationsCount];
        v22 = @"endFails";
        *buf = 134218498;
        v58 = endFailIndicationsCount2;
        v59 = 2114;
        if (endFailIndicationsCount3 == 1)
        {
          v22 = @"endFail";
        }

        v60 = v22;
        v61 = 2114;
        v62 = v15;
        _os_log_impl(&dword_1E0F71000, oslog, OS_LOG_TYPE_DEFAULT, "[DIAG_STATS] DROPPED: dropping tracked statistics [%lld %{public}@ matched %{public}@]", buf, 0x20u);
      }

      endFailAllIndications = 0;
      endFailIndicationsCount = 0;
      endFailCount -= [(SUCoreDiagStats *)v9 endFailIndicationsCount];
    }

    if ([(SUCoreDiagStats *)v9 errorAllIndications]== indications)
    {
      v23 = +[SUCoreLog sharedLogger];
      oslog2 = [v23 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        errorIndicationsCount2 = [(SUCoreDiagStats *)v9 errorIndicationsCount];
        errorIndicationsCount3 = [(SUCoreDiagStats *)v9 errorIndicationsCount];
        v27 = @"errors";
        *buf = 134218754;
        v58 = errorIndicationsCount2;
        v59 = 2114;
        if (errorIndicationsCount3 == 1)
        {
          v27 = @"error";
        }

        v60 = v15;
        v61 = 2114;
        v62 = v27;
        v63 = 2114;
        v64 = v15;
        _os_log_impl(&dword_1E0F71000, oslog2, OS_LOG_TYPE_DEFAULT, "[DIAG_STATS] DROPPED: dropping tracked statistics [%lld %{public}@ %{public}@ matched %{public}@]", buf, 0x2Au);
      }

      errorAllIndications = 0;
      errorIndicationsCount = 0;
      errorCount -= [(SUCoreDiagStats *)v9 errorIndicationsCount];
      v17 = 1;
    }

    if ([(SUCoreDiagStats *)v9 anomalyAllIndications]== indications)
    {
      v28 = +[SUCoreLog sharedLogger];
      oslog3 = [v28 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        anomalyIndicationsCount2 = [(SUCoreDiagStats *)v9 anomalyIndicationsCount];
        anomalyIndicationsCount3 = [(SUCoreDiagStats *)v9 anomalyIndicationsCount];
        v32 = @"anomalies";
        *buf = 134218754;
        v58 = anomalyIndicationsCount2;
        v59 = 2114;
        if (anomalyIndicationsCount3 == 1)
        {
          v32 = @"anomaly";
        }

        v60 = v15;
        v61 = 2114;
        v62 = v32;
        v63 = 2114;
        v64 = v15;
        _os_log_impl(&dword_1E0F71000, oslog3, OS_LOG_TYPE_DEFAULT, "[DIAG_STATS] DROPPED: dropping tracked statistics [%lld %{public}@ %{public}@ matched %{public}@]", buf, 0x2Au);
      }

      anomalyAllIndications = 0;
      anomalyIndicationsCount = 0;
      anomalyCount -= [(SUCoreDiagStats *)v9 anomalyIndicationsCount];
      v17 = 1;
    }

    if ([(SUCoreDiagStats *)v9 failureAllIndications]== indications)
    {
      v33 = +[SUCoreLog sharedLogger];
      oslog4 = [v33 oslog];

      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
        failureIndicationsCount2 = [(SUCoreDiagStats *)v9 failureIndicationsCount];
        failureIndicationsCount3 = [(SUCoreDiagStats *)v9 failureIndicationsCount];
        v37 = @"failures";
        *buf = 134218754;
        v58 = failureIndicationsCount2;
        v59 = 2114;
        if (failureIndicationsCount3 == 1)
        {
          v37 = @"failure";
        }

        v60 = v15;
        v61 = 2114;
        v62 = v37;
        v63 = 2114;
        v64 = v15;
        _os_log_impl(&dword_1E0F71000, oslog4, OS_LOG_TYPE_DEFAULT, "[DIAG_STATS] DROPPED: dropping tracked statistics [%lld %{public}@ %{public}@ matched %{public}@]", buf, 0x2Au);
      }

      failureCount -= [(SUCoreDiagStats *)v9 failureIndicationsCount];
      failureAllIndications = 0;
      failureIndicationsCount = 0;
      if ([(SUCoreDiagStats *)v9 faultAllIndications]!= indications)
      {
        goto LABEL_35;
      }
    }

    else if ([(SUCoreDiagStats *)v9 faultAllIndications]!= indications)
    {
      if (!v17)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v38 = +[SUCoreLog sharedLogger];
    oslog5 = [v38 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
    {
      faultIndicationsCount2 = [(SUCoreDiagStats *)v9 faultIndicationsCount];
      faultIndicationsCount3 = [(SUCoreDiagStats *)v9 faultIndicationsCount];
      v42 = @"faults";
      *buf = 134218754;
      v58 = faultIndicationsCount2;
      v59 = 2114;
      if (faultIndicationsCount3 == 1)
      {
        v42 = @"fault";
      }

      v60 = v15;
      v61 = 2114;
      v62 = v42;
      v63 = 2114;
      v64 = v15;
      _os_log_impl(&dword_1E0F71000, oslog5, OS_LOG_TYPE_DEFAULT, "[DIAG_STATS] DROPPED: dropping tracked statistics [%lld %{public}@ %{public}@ matched %{public}@]", buf, 0x2Au);
    }

    faultAllIndications = 0;
    faultIndicationsCount = 0;
    faultCount -= [(SUCoreDiagStats *)v9 faultIndicationsCount];
LABEL_35:
    v43 = [[SUCoreDiagStats alloc] initWithBeginCount:[(SUCoreDiagStats *)v9 beginCount] withEndSuccessCount:[(SUCoreDiagStats *)v9 endSuccessCount] withEndFailCount:endFailCount withEndFailIndicationsCount:endFailIndicationsCount withEndFailAllIndications:endFailAllIndications withErrorCount:errorCount withErrorIndicationsCount:errorIndicationsCount withErrorAllIndications:errorAllIndications withAnomalyCount:anomalyCount withAnomalyIndicationsCount:anomalyIndicationsCount withAnomalyAllIndications:anomalyAllIndications withFailureCount:failureCount withFailureIndicationsCount:failureIndicationsCount withFailureAllIndications:failureAllIndications withFaultCount:faultCount withFaultIndicationsCount:faultIndicationsCount withFaultAllIndications:faultAllIndications withStateEventCount:[(SUCoreDiagStats *)v9 stateEventCount]];

    v9 = v43;
LABEL_36:
  }

  v44 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)initWithAppendedDomain:(uint64_t)a3 appendingDumpFilename:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1(&dword_1E0F71000, a2, a3, "[DIAG_ERROR] ERROR: unable to create dispatch queue domain(%{public}@)", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __56__SUCoreDiag_trackFault_forReason_withResult_withError___block_invoke_cold_1(uint64_t *a1, uint64_t *a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v6 = 138543618;
  v7 = v3;
  v8 = 2048;
  v9 = v4;
  _os_log_fault_impl(&dword_1E0F71000, log, OS_LOG_TYPE_FAULT, "[DIAG_FAULT] FAULT:%{public}@, result=%ld", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)loadDump:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_1E0F71000, v0, v1, "[DIAG_ERROR] ERROR: failed to unarchive encoded data from dump file: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)loadDump:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1(&dword_1E0F71000, a2, a3, "[DIAG_ERROR] ERROR: unable to load encoded data from dump file: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_dumpToFile:(uint64_t)a3 dumpingDict:(uint64_t)a4 forReason:(uint64_t)a5 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_1(&dword_1E0F71000, a2, a3, "[DIAG_ERROR] DUMP_LOSS: unable to encode data for dump to file, error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_dumpToFile:dumpingDict:forReason:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_1E0F71000, v0, v1, "[DIAG_ERROR] ANOMALY: failed to create directory: %{public}@, error: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_dumpToFile:dumpingDict:forReason:.cold.3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_1E0F71000, v0, v1, "[DIAG_ERROR] ANOMALY: [%{public}@] could not create dump file: %{public}@");
  v2 = *MEMORY[0x1E69E9840];
}

@end