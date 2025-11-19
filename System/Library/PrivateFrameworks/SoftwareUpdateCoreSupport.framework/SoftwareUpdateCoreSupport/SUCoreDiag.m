@interface SUCoreDiag
+ (id)sharedDiag;
- (SUCoreDiag)initWithAppendedDomain:(id)a3 appendingDumpFilename:(id)a4;
- (id)_copyTrackedStatsClearingAfter:(BOOL)a3 droppingMatchedIndications:(int64_t)a4;
- (id)_dumpMaskToString:(int64_t)a3;
- (id)copyTrackedStatsClearingAfter:(BOOL)a3 droppingMatchedIndications:(int64_t)a4;
- (id)loadDump:(id)a3;
- (int64_t)allIndications;
- (void)_appendToHistory:(id)a3;
- (void)_dumpEvent:(id)a3;
- (void)_dumpToFile:(id)a3 dumpingDict:(id)a4 forReason:(id)a5;
- (void)_dumpTracked:(id)a3 dumpingTo:(int64_t)a4 usingFilename:(id)a5 clearingStatistics:(BOOL)a6 clearingHistory:(BOOL)a7;
- (void)_logTrackedError:(id)a3 fromLocation:(id)a4 forReason:(id)a5 withResult:(int64_t)a6 withError:(id)a7;
- (void)collectTrackedStatsClearingAfter:(BOOL)a3 droppingMatchedIndications:(int64_t)a4 completion:(id)a5;
- (void)dumpTracked:(id)a3 dumpingTo:(int64_t)a4 usingFilename:(id)a5 clearingStatistics:(BOOL)a6 clearingHistory:(BOOL)a7;
- (void)trackAnomaly:(id)a3 forReason:(id)a4 withResult:(int64_t)a5 withError:(id)a6;
- (void)trackBegin:(id)a3 atLevel:(int)a4 forModule:(id)a5 withIdentifier:(id)a6;
- (void)trackEnd:(id)a3 atLevel:(int)a4 forModule:(id)a5 withIdentifier:(id)a6 withResult:(int64_t)a7 withError:(id)a8;
- (void)trackError:(id)a3 forReason:(id)a4 withResult:(int64_t)a5 withError:(id)a6;
- (void)trackFailure:(id)a3 forReason:(id)a4 withResult:(int64_t)a5 withError:(id)a6;
- (void)trackFault:(id)a3 forReason:(id)a4 withResult:(int64_t)a5 withError:(id)a6;
- (void)trackLastReportedUUID:(id)a3;
- (void)trackStateEvent:(id)a3 previousState:(id)a4 handlingEvent:(id)a5 nextState:(id)a6 performingAction:(id)a7 withInfo:(id)a8;
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

- (SUCoreDiag)initWithAppendedDomain:(id)a3 appendingDumpFilename:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v35.receiver = self;
  v35.super_class = SUCoreDiag;
  v9 = [(SUCoreDiag *)&v35 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_uniqueInstanceName, a3);
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = +[SUCore sharedCore];
    v13 = [v12 commonDomain];
    v14 = [v11 initWithFormat:@"%@.%@.%@", v13, @"core.diag.tracking", v7];

    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
    trackingQueue = v10->_trackingQueue;
    v10->_trackingQueue = v17;

    v19 = v10->_trackingQueue;
    v20 = +[SUCoreLog sharedLogger];
    v21 = [v20 oslog];

    if (v19)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v37 = v14;
        _os_log_impl(&dword_1E0F71000, v21, OS_LOG_TYPE_DEFAULT, "[DIAG] DISPATCH: created dispatch queue domain(%{public}@)", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDiag *)v14 initWithAppendedDomain:v21 appendingDumpFilename:v22, v23, v24, v25, v26, v27];
    }

    v28 = objc_opt_new();
    trackingHistory = v10->_trackingHistory;
    v10->_trackingHistory = v28;

    v30 = objc_alloc_init(SUCoreDiagStats);
    trackStats = v10->_trackStats;
    v10->_trackStats = v30;

    objc_storeStrong(&v10->_appendingDumpFilename, a4);
    lastReportedUUID = v10->_lastReportedUUID;
    v10->_lastReportedUUID = 0;

    v10->_isSharedDiag = 0;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)trackBegin:(id)a3 atLevel:(int)a4 forModule:(id)a5 withIdentifier:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_not_V2(v13);

  v14 = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SUCoreDiag_trackBegin_atLevel_forModule_withIdentifier___block_invoke;
  block[3] = &unk_1E86FD258;
  v19 = v10;
  v20 = v12;
  v23 = a4;
  v21 = self;
  v22 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  dispatch_sync(v14, block);
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

- (void)trackEnd:(id)a3 atLevel:(int)a4 forModule:(id)a5 withIdentifier:(id)a6 withResult:(int64_t)a7 withError:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_not_V2(v18);

  v19 = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__SUCoreDiag_trackEnd_atLevel_forModule_withIdentifier_withResult_withError___block_invoke;
  block[3] = &unk_1E86FD280;
  v25 = v14;
  v26 = v16;
  v27 = v17;
  v28 = self;
  v31 = a4;
  v29 = v15;
  v30 = a7;
  v20 = v15;
  v21 = v17;
  v22 = v16;
  v23 = v14;
  dispatch_sync(v19, block);
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

- (void)trackError:(id)a3 forReason:(id)a4 withResult:(int64_t)a5 withError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SUCoreDiag_trackError_forReason_withResult_withError___block_invoke;
  block[3] = &unk_1E86FD2A8;
  v18 = v10;
  v19 = v11;
  v21 = self;
  v22 = a5;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
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

- (void)trackAnomaly:(id)a3 forReason:(id)a4 withResult:(int64_t)a5 withError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SUCoreDiag_trackAnomaly_forReason_withResult_withError___block_invoke;
  block[3] = &unk_1E86FD2A8;
  v18 = v10;
  v19 = v11;
  v21 = self;
  v22 = a5;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
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

- (void)trackFailure:(id)a3 forReason:(id)a4 withResult:(int64_t)a5 withError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__SUCoreDiag_trackFailure_forReason_withResult_withError___block_invoke;
  block[3] = &unk_1E86FD2A8;
  v18 = v10;
  v19 = v11;
  v21 = self;
  v22 = a5;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
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

- (void)trackFault:(id)a3 forReason:(id)a4 withResult:(int64_t)a5 withError:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SUCoreDiag_trackFault_forReason_withResult_withError___block_invoke;
  block[3] = &unk_1E86FD2A8;
  v18 = v10;
  v19 = v11;
  v21 = self;
  v22 = a5;
  v20 = v12;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, block);
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

- (void)trackStateEvent:(id)a3 previousState:(id)a4 handlingEvent:(id)a5 nextState:(id)a6 performingAction:(id)a7 withInfo:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__SUCoreDiag_trackStateEvent_previousState_handlingEvent_nextState_performingAction_withInfo___block_invoke;
  block[3] = &unk_1E86FD2D0;
  v28 = v19;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = self;
  v21 = v18;
  v22 = v17;
  v23 = v16;
  v24 = v15;
  v25 = v14;
  v26 = v19;
  dispatch_async(v20, block);
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

- (void)trackLastReportedUUID:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreDiag *)self trackingQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__SUCoreDiag_trackLastReportedUUID___block_invoke;
  v7[3] = &unk_1E86FC150;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
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
  v2 = [(SUCoreDiag *)self trackStats];
  v3 = [v2 allIndications];

  return v3;
}

- (id)copyTrackedStatsClearingAfter:(BOOL)a3 droppingMatchedIndications:(int64_t)a4
{
  v7 = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_not_V2(v7);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__5;
  v17 = __Block_byref_object_dispose__5;
  v18 = 0;
  v8 = [(SUCoreDiag *)self trackingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__SUCoreDiag_copyTrackedStatsClearingAfter_droppingMatchedIndications___block_invoke;
  v11[3] = &unk_1E86FD2F8;
  v11[4] = self;
  v11[5] = &v13;
  v12 = a3;
  v11[6] = a4;
  dispatch_sync(v8, v11);

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

- (void)collectTrackedStatsClearingAfter:(BOOL)a3 droppingMatchedIndications:(int64_t)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(SUCoreDiag *)self trackingQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__SUCoreDiag_collectTrackedStatsClearingAfter_droppingMatchedIndications_completion___block_invoke;
  v11[3] = &unk_1E86FD320;
  v14 = a3;
  v12 = v8;
  v13 = a4;
  v11[4] = self;
  v10 = v8;
  dispatch_async(v9, v11);
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

- (void)dumpTracked:(id)a3 dumpingTo:(int64_t)a4 usingFilename:(id)a5 clearingStatistics:(BOOL)a6 clearingHistory:(BOOL)a7
{
  v12 = a3;
  v13 = a5;
  v14 = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_not_V2(v14);

  v15 = [(SUCoreDiag *)self trackingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__SUCoreDiag_dumpTracked_dumpingTo_usingFilename_clearingStatistics_clearingHistory___block_invoke;
  block[3] = &unk_1E86FD348;
  block[4] = self;
  v19 = v12;
  v20 = v13;
  v21 = a4;
  v22 = a6;
  v23 = a7;
  v16 = v13;
  v17 = v12;
  dispatch_sync(v15, block);
}

- (id)loadDump:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v5 = +[SUCore sharedCore];
    v6 = [v5 commonFilesystemBaseDir];
    v3 = [v4 initWithFormat:@"%@%@/%@", v6, @"/DiagDump", @"SUDiagDump.plist"];
  }

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v7 contentsAtPath:v3];
  if (!v8)
  {
    v20 = +[SUCoreLog sharedLogger];
    v19 = [v20 oslog];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDiag *)v3 loadDump:v19, v21, v22, v23, v24, v25, v26];
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
    v19 = [v18 oslog];

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDiag loadDump:];
    }

LABEL_11:
  }

  v27 = v16;

  return v16;
}

- (void)_appendToHistory:(id)a3
{
  v12 = a3;
  v4 = [(SUCoreDiag *)self trackingHistory];

  if (!v4)
  {
    v5 = objc_opt_new();
    [(SUCoreDiag *)self setTrackingHistory:v5];
  }

  v6 = [(SUCoreDiag *)self trackingHistory];
  [v6 addObject:v12];

  v7 = [(SUCoreDiag *)self trackingHistory];
  v8 = [v7 count];

  if (v8 >= 0x81)
  {
    do
    {
      v9 = [(SUCoreDiag *)self trackingHistory];
      [v9 removeObjectAtIndex:0];

      v10 = [(SUCoreDiag *)self trackingHistory];
      v11 = [v10 count];
    }

    while (v11 > 0x80);
  }
}

- (void)_logTrackedError:(id)a3 fromLocation:(id)a4 forReason:(id)a5 withResult:(int64_t)a6 withError:(id)a7
{
  v36 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = +[SUCoreLog sharedLogger];
  v16 = [v15 oslog];

  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
  if (v13 | v14)
  {
    if (v13)
    {
      if (!v14)
      {
        if (!v17)
        {
          goto LABEL_13;
        }

        v26 = 138544130;
        v27 = v11;
        v28 = 2114;
        v29 = v12;
        v30 = 2114;
        v31 = v13;
        v32 = 2048;
        v33 = a6;
        v18 = "[DIAG_ERROR] %{public}@: %{public}@, reason=%{public}@ result=%ld";
        v19 = v16;
        v20 = 42;
        goto LABEL_4;
      }

      if (!v17)
      {
        goto LABEL_13;
      }

      v21 = [v14 checkedDescription];
      v26 = 138544386;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
      v30 = 2114;
      v31 = v13;
      v32 = 2048;
      v33 = a6;
      v34 = 2114;
      v35 = v21;
      v22 = "[DIAG_ERROR] %{public}@: %{public}@, reason=%{public}@ result=%ld error:%{public}@";
      v23 = v16;
      v24 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_13;
      }

      v21 = [v14 checkedDescription];
      v26 = 138544130;
      v27 = v11;
      v28 = 2114;
      v29 = v12;
      v30 = 2048;
      v31 = a6;
      v32 = 2114;
      v33 = v21;
      v22 = "[DIAG_ERROR] %{public}@: %{public}@, result=%ld error:%{public}@";
      v23 = v16;
      v24 = 42;
    }

    _os_log_error_impl(&dword_1E0F71000, v23, OS_LOG_TYPE_ERROR, v22, &v26, v24);

    goto LABEL_13;
  }

  if (v17)
  {
    v26 = 138543874;
    v27 = v11;
    v28 = 2114;
    v29 = v12;
    v30 = 2048;
    v31 = a6;
    v18 = "[DIAG_ERROR] %{public}@: %{public}@, result=%ld";
    v19 = v16;
    v20 = 32;
LABEL_4:
    _os_log_error_impl(&dword_1E0F71000, v19, OS_LOG_TYPE_ERROR, v18, &v26, v20);
  }

LABEL_13:

  v25 = *MEMORY[0x1E69E9840];
}

- (id)_dumpMaskToString:(int64_t)a3
{
  v3 = a3;
  if (a3)
  {
    v4 = @"LOG_ARCHIVE";
    if ((a3 & 2) != 0)
    {
      [@"LOG_ARCHIVE" stringByAppendingString:@"|STDOUT"];

      if ((v3 & 4) != 0)
      {
        goto LABEL_13;
      }
    }

    else if ((a3 & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if ((a3 & 2) != 0)
  {
    v4 = @"STDOUT";
    if ((a3 & 4) != 0)
    {
LABEL_13:
      [(__CFString *)v4 stringByAppendingString:@"|FILE"];

      if ((v3 & 8) == 0)
      {
        return v4;
      }

      goto LABEL_8;
    }

LABEL_7:
    if ((v3 & 8) == 0)
    {
      return v4;
    }

LABEL_8:
    [(__CFString *)v4 stringByAppendingString:@"|EVENT_REPORTER"];

    return v4;
  }

  if ((a3 & 4) != 0)
  {
    v4 = @"FILE";
    if ((a3 & 8) == 0)
    {
      return v4;
    }

    goto LABEL_8;
  }

  return (@"EVENT_REPORTER" & (a3 << 60 >> 63));
}

- (void)_dumpTracked:(id)a3 dumpingTo:(int64_t)a4 usingFilename:(id)a5 clearingStatistics:(BOOL)a6 clearingHistory:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v78 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_V2(v14);

  v15 = [(SUCoreDiag *)self _dumpMaskToString:a4];
  v16 = +[SUCoreLog sharedLogger];
  v17 = [v16 oslog];

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"NO";
    *buf = 138544386;
    v69 = v12;
    if (v8)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    if (v7)
    {
      v18 = @"YES";
    }

    v70 = 2114;
    v71 = v15;
    v72 = 2114;
    v73 = v13;
    v74 = 2114;
    v75 = v19;
    v76 = 2114;
    v77 = v18;
    _os_log_impl(&dword_1E0F71000, v17, OS_LOG_TYPE_DEFAULT, "[DIAG] dump tracked with reason=%{public}@ dumpToMask=%{public}@ filename=%{public}@ clearStatistics=%{public}@ clearHistory=%{public}@", buf, 0x34u);
  }

  if ((a4 & 2) != 0)
  {
    v20 = @"NO";
    if (v8)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    if (v7)
    {
      v20 = @"YES";
    }

    NSLog(@"[DIAG] dump tracked with reason=%@ dumpToMask=%@ filename=%@ clearStatistics=%@ clearHistory=%@", v12, v15, v13, v21, v20);
  }

  if ((a4 & 4) != 0)
  {
    v22 = objc_opt_new();
    if ((a4 & 8) != 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v23 = 0;
    if (!a4)
    {
      goto LABEL_55;
    }

    goto LABEL_20;
  }

  v22 = 0;
  if ((a4 & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v23 = objc_opt_new();
LABEL_20:
  if (v12)
  {
    [v22 setSafeObject:v12 forKey:@"reportReason"];
    [v23 setSafeObject:v12 forKey:@"reportReason"];
  }

  v66 = v7;
  v67 = v23;
  v24 = [(SUCoreDiag *)self lastReportedUUID];

  if (v24)
  {
    v25 = [(SUCoreDiag *)self lastReportedUUID];
    [v22 setSafeObject:v25 forKey:@"UUID"];

    v26 = [(SUCoreDiag *)self lastReportedUUID];
    [v23 setSafeObject:v26 forKey:@"UUID"];

    if (a4)
    {
      v27 = +[SUCoreLog sharedLogger];
      v28 = [v27 oslog];

      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(SUCoreDiag *)self lastReportedUUID];
        *buf = 138543362;
        v69 = v29;
        _os_log_impl(&dword_1E0F71000, v28, OS_LOG_TYPE_DEFAULT, "[DIAG] DUMP_UUID: %{public}@", buf, 0xCu);
      }
    }

    if ((a4 & 2) != 0)
    {
      v30 = [(SUCoreDiag *)self lastReportedUUID];
      NSLog(@"[DIAG] DUMP_UUID: %@", v30);
    }
  }

  v31 = [(SUCoreDiag *)self trackStats];

  if (v31)
  {
    v32 = [(SUCoreDiag *)self trackStats];
    v33 = v22;
    [v22 setSafeObject:v32 forKey:@"reportStats"];

    v34 = [(SUCoreDiag *)self trackStats];
    v35 = [v34 summary];
    [v67 setSafeObject:v35 forKey:@"reportStats"];

    if (a4)
    {
      v36 = +[SUCoreLog sharedLogger];
      v37 = [v36 oslog];

      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = [(SUCoreDiag *)self trackStats];
        *buf = 138543362;
        v69 = v38;
        _os_log_impl(&dword_1E0F71000, v37, OS_LOG_TYPE_DEFAULT, "[DIAG] DUMP_STATS:\n%{public}@", buf, 0xCu);
      }
    }

    v22 = v33;
    if ((a4 & 2) != 0)
    {
      v39 = [(SUCoreDiag *)self trackStats];
      NSLog(@"[DIAG] DUMP_STATS:\n%@", v39);
    }
  }

  v65 = v8;
  v40 = [(SUCoreDiag *)self trackingHistory];
  v41 = [v40 count];

  v7 = v66;
  if (v41)
  {
    v42 = [(SUCoreDiag *)self trackingHistory];
    [v22 setSafeObject:v42 forKey:?];

    v43 = [(SUCoreDiag *)self trackingHistory];
    v44 = [v43 count];

    if (v44)
    {
      v61 = v22;
      v62 = v15;
      v63 = v13;
      v64 = v12;
      v45 = 0;
      v46 = 0;
      do
      {
        v47 = [(SUCoreDiag *)self trackingHistory];
        v48 = [v47 objectAtIndexedSubscript:v46];

        v49 = objc_alloc(MEMORY[0x1E696AEC0]);
        v50 = [v48 summary];
        v51 = v50;
        if (v45)
        {
          v52 = [v49 initWithFormat:@", [%04lu:%@]", v46, v50];

          v53 = [v45 stringByAppendingString:v52];

          v51 = v52;
          v45 = v53;
        }

        else
        {
          v45 = [v49 initWithFormat:@"[%04lu:%@]", v46, v50];
        }

        if (a4)
        {
          v54 = +[SUCoreLog sharedLogger];
          v55 = [v54 oslog];

          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v69 = v46;
            v70 = 2114;
            v71 = v48;
            _os_log_impl(&dword_1E0F71000, v55, OS_LOG_TYPE_DEFAULT, "[DIAG] DUMP_HISTORY[%04lu]: %{public}@", buf, 0x16u);
          }
        }

        if ((a4 & 2) != 0)
        {
          NSLog(@"[DIAG] DUMP_HISTORY[%04lu]: %@", v46, v48);
        }

        ++v46;
        v56 = [(SUCoreDiag *)self trackingHistory];
        v57 = [v56 count];
      }

      while (v46 < v57);
      v13 = v63;
      v12 = v64;
      v7 = v66;
      v22 = v61;
      v15 = v62;
      if (v45)
      {
        [v67 setSafeObject:v45 forKey:@"reportHistory"];
      }
    }
  }

  if ((a4 & 4) != 0)
  {
    [(SUCoreDiag *)self _dumpToFile:v13 dumpingDict:v22 forReason:v12];
  }

  v8 = v65;
  v23 = v67;
  if ((a4 & 8) != 0)
  {
    [(SUCoreDiag *)self _dumpEvent:v67];
  }

LABEL_55:
  if (v8)
  {
    v58 = objc_alloc_init(SUCoreDiagStats);
    [(SUCoreDiag *)self setTrackStats:v58];
  }

  if (v7)
  {
    v59 = [(SUCoreDiag *)self trackingHistory];
    [v59 removeAllObjects];
  }

  v60 = *MEMORY[0x1E69E9840];
}

- (void)_dumpToFile:(id)a3 dumpingDict:(id)a4 forReason:(id)a5
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_V2(v11);

  v44 = 0;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v44];

  v13 = v44;
  v14 = v13;
  if (!v12 || v13)
  {
    v20 = +[SUCoreLog sharedLogger];
    v21 = [v20 oslog];

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDiag *)v14 _dumpToFile:v21 dumpingDict:v22 forReason:v23, v24, v25, v26, v27];
    }
  }

  else
  {
    if (!v8)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = +[SUCore sharedCore];
      v17 = [v16 commonFilesystemBaseDir];
      v18 = [(SUCoreDiag *)self appendingDumpFilename];
      if (v18)
      {
        v19 = [(SUCoreDiag *)self appendingDumpFilename];
        v8 = [v15 initWithFormat:@"%@%@/%@", v17, @"/DiagDump", v19];
      }

      else
      {
        v8 = [v15 initWithFormat:@"%@%@/%@", v17, @"/DiagDump", @"SUDiagDump.plist"];
      }
    }

    v28 = [MEMORY[0x1E696AC08] defaultManager];
    if ([v28 fileExistsAtPath:v8])
    {
      v43 = 0;
      v29 = [v28 removeItemAtPath:v8 error:&v43];
      v30 = v43;
      if ((v29 & 1) == 0)
      {
        v31 = +[SUCoreLog sharedLogger];
        v32 = [v31 oslog];

        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v48 = v9;
          v49 = 2114;
          v50 = v8;
          v51 = 2114;
          v52 = v30;
          _os_log_error_impl(&dword_1E0F71000, v32, OS_LOG_TYPE_ERROR, "[DIAG_ERROR] ANOMALY: [%@] could not remove pre-existing dump file: %{public}@, error: %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v30 = 0;
    }

    v33 = [v8 stringByDeletingLastPathComponent];
    if (v33)
    {
      v42 = v30;
      v34 = [v28 createDirectoryAtPath:v33 withIntermediateDirectories:1 attributes:0 error:&v42];
      v21 = v42;

      if ((v34 & 1) == 0 && (!v21 || [v21 code]!= 17))
      {
        v35 = +[SUCoreLog sharedLogger];
        v36 = [v35 oslog];

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [SUCoreDiag _dumpToFile:dumpingDict:forReason:];
        }
      }
    }

    else
    {
      v21 = v30;
    }

    v45 = *MEMORY[0x1E696A3A0];
    v46 = *MEMORY[0x1E696A3A8];
    v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v38 = [v28 createFileAtPath:v8 contents:v12 attributes:v37];

    if ((v38 & 1) == 0)
    {
      v39 = +[SUCoreLog sharedLogger];
      v40 = [v39 oslog];

      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [SUCoreDiag _dumpToFile:dumpingDict:forReason:];
      }
    }
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)_dumpEvent:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    [v3 setSafeObject:@"coreDiagReport" forKey:@"event"];
    v5 = +[SUCoreEventReporter sharedReporter];
    [v5 sendEvent:v4];
  }

  else
  {
    v6 = +[SUCoreLog sharedLogger];
    v5 = [v6 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDiag _dumpEvent:v5];
    }
  }
}

- (id)_copyTrackedStatsClearingAfter:(BOOL)a3 droppingMatchedIndications:(int64_t)a4
{
  v5 = a3;
  v65 = *MEMORY[0x1E69E9840];
  v7 = [(SUCoreDiag *)self trackingQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(SUCoreDiag *)self trackStats];
  v9 = [v8 copy];

  if (v5)
  {
    v10 = objc_alloc_init(SUCoreDiagStats);
    [(SUCoreDiag *)self setTrackStats:v10];
  }

  if (a4)
  {
    v56 = [(SUCoreDiagStats *)v9 endFailCount];
    v53 = [(SUCoreDiagStats *)v9 endFailIndicationsCount];
    v52 = [(SUCoreDiagStats *)v9 endFailAllIndications];
    v55 = [(SUCoreDiagStats *)v9 errorCount];
    v51 = [(SUCoreDiagStats *)v9 errorIndicationsCount];
    v50 = [(SUCoreDiagStats *)v9 errorAllIndications];
    v54 = [(SUCoreDiagStats *)v9 anomalyCount];
    v49 = [(SUCoreDiagStats *)v9 anomalyIndicationsCount];
    v48 = [(SUCoreDiagStats *)v9 anomalyAllIndications];
    v11 = [(SUCoreDiagStats *)v9 failureCount];
    v47 = [(SUCoreDiagStats *)v9 failureIndicationsCount];
    v46 = [(SUCoreDiagStats *)v9 failureAllIndications];
    v12 = [(SUCoreDiagStats *)v9 faultCount];
    v13 = [(SUCoreDiagStats *)v9 faultIndicationsCount];
    v14 = [(SUCoreDiagStats *)v9 faultAllIndications];
    v15 = [SUCoreErrorInformation summaryOfIndications:a4];
    v16 = [(SUCoreDiagStats *)v9 endFailAllIndications];
    v17 = v16 == a4;
    if (v16 == a4)
    {
      v18 = +[SUCoreLog sharedLogger];
      v19 = [v18 oslog];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(SUCoreDiagStats *)v9 endFailIndicationsCount];
        v21 = [(SUCoreDiagStats *)v9 endFailIndicationsCount];
        v22 = @"endFails";
        *buf = 134218498;
        v58 = v20;
        v59 = 2114;
        if (v21 == 1)
        {
          v22 = @"endFail";
        }

        v60 = v22;
        v61 = 2114;
        v62 = v15;
        _os_log_impl(&dword_1E0F71000, v19, OS_LOG_TYPE_DEFAULT, "[DIAG_STATS] DROPPED: dropping tracked statistics [%lld %{public}@ matched %{public}@]", buf, 0x20u);
      }

      v52 = 0;
      v53 = 0;
      v56 -= [(SUCoreDiagStats *)v9 endFailIndicationsCount];
    }

    if ([(SUCoreDiagStats *)v9 errorAllIndications]== a4)
    {
      v23 = +[SUCoreLog sharedLogger];
      v24 = [v23 oslog];

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(SUCoreDiagStats *)v9 errorIndicationsCount];
        v26 = [(SUCoreDiagStats *)v9 errorIndicationsCount];
        v27 = @"errors";
        *buf = 134218754;
        v58 = v25;
        v59 = 2114;
        if (v26 == 1)
        {
          v27 = @"error";
        }

        v60 = v15;
        v61 = 2114;
        v62 = v27;
        v63 = 2114;
        v64 = v15;
        _os_log_impl(&dword_1E0F71000, v24, OS_LOG_TYPE_DEFAULT, "[DIAG_STATS] DROPPED: dropping tracked statistics [%lld %{public}@ %{public}@ matched %{public}@]", buf, 0x2Au);
      }

      v50 = 0;
      v51 = 0;
      v55 -= [(SUCoreDiagStats *)v9 errorIndicationsCount];
      v17 = 1;
    }

    if ([(SUCoreDiagStats *)v9 anomalyAllIndications]== a4)
    {
      v28 = +[SUCoreLog sharedLogger];
      v29 = [v28 oslog];

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(SUCoreDiagStats *)v9 anomalyIndicationsCount];
        v31 = [(SUCoreDiagStats *)v9 anomalyIndicationsCount];
        v32 = @"anomalies";
        *buf = 134218754;
        v58 = v30;
        v59 = 2114;
        if (v31 == 1)
        {
          v32 = @"anomaly";
        }

        v60 = v15;
        v61 = 2114;
        v62 = v32;
        v63 = 2114;
        v64 = v15;
        _os_log_impl(&dword_1E0F71000, v29, OS_LOG_TYPE_DEFAULT, "[DIAG_STATS] DROPPED: dropping tracked statistics [%lld %{public}@ %{public}@ matched %{public}@]", buf, 0x2Au);
      }

      v48 = 0;
      v49 = 0;
      v54 -= [(SUCoreDiagStats *)v9 anomalyIndicationsCount];
      v17 = 1;
    }

    if ([(SUCoreDiagStats *)v9 failureAllIndications]== a4)
    {
      v33 = +[SUCoreLog sharedLogger];
      v34 = [v33 oslog];

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [(SUCoreDiagStats *)v9 failureIndicationsCount];
        v36 = [(SUCoreDiagStats *)v9 failureIndicationsCount];
        v37 = @"failures";
        *buf = 134218754;
        v58 = v35;
        v59 = 2114;
        if (v36 == 1)
        {
          v37 = @"failure";
        }

        v60 = v15;
        v61 = 2114;
        v62 = v37;
        v63 = 2114;
        v64 = v15;
        _os_log_impl(&dword_1E0F71000, v34, OS_LOG_TYPE_DEFAULT, "[DIAG_STATS] DROPPED: dropping tracked statistics [%lld %{public}@ %{public}@ matched %{public}@]", buf, 0x2Au);
      }

      v11 -= [(SUCoreDiagStats *)v9 failureIndicationsCount];
      v46 = 0;
      v47 = 0;
      if ([(SUCoreDiagStats *)v9 faultAllIndications]!= a4)
      {
        goto LABEL_35;
      }
    }

    else if ([(SUCoreDiagStats *)v9 faultAllIndications]!= a4)
    {
      if (!v17)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    v38 = +[SUCoreLog sharedLogger];
    v39 = [v38 oslog];

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [(SUCoreDiagStats *)v9 faultIndicationsCount];
      v41 = [(SUCoreDiagStats *)v9 faultIndicationsCount];
      v42 = @"faults";
      *buf = 134218754;
      v58 = v40;
      v59 = 2114;
      if (v41 == 1)
      {
        v42 = @"fault";
      }

      v60 = v15;
      v61 = 2114;
      v62 = v42;
      v63 = 2114;
      v64 = v15;
      _os_log_impl(&dword_1E0F71000, v39, OS_LOG_TYPE_DEFAULT, "[DIAG_STATS] DROPPED: dropping tracked statistics [%lld %{public}@ %{public}@ matched %{public}@]", buf, 0x2Au);
    }

    v14 = 0;
    v13 = 0;
    v12 -= [(SUCoreDiagStats *)v9 faultIndicationsCount];
LABEL_35:
    v43 = [[SUCoreDiagStats alloc] initWithBeginCount:[(SUCoreDiagStats *)v9 beginCount] withEndSuccessCount:[(SUCoreDiagStats *)v9 endSuccessCount] withEndFailCount:v56 withEndFailIndicationsCount:v53 withEndFailAllIndications:v52 withErrorCount:v55 withErrorIndicationsCount:v51 withErrorAllIndications:v50 withAnomalyCount:v54 withAnomalyIndicationsCount:v49 withAnomalyAllIndications:v48 withFailureCount:v11 withFailureIndicationsCount:v47 withFailureAllIndications:v46 withFaultCount:v12 withFaultIndicationsCount:v13 withFaultAllIndications:v14 withStateEventCount:[(SUCoreDiagStats *)v9 stateEventCount]];

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