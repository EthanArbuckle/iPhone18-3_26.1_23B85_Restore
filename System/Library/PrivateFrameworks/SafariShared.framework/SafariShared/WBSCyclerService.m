@interface WBSCyclerService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (WBSCyclerService)init;
- (id)_descriptionForErrorCode:(int64_t)a3;
- (id)_errorWithCode:(int64_t)a3;
- (id)_startCyclingFromBeginning:(BOOL)a3;
- (void)_finishedWithResult:(int64_t)a3 error:(id)a4;
- (void)_postFinishNotificationWithError:(id)a3;
- (void)_setMaximumIterationCount:(unint64_t)a3 reply:(id)a4;
- (void)_setSeed:(unint64_t)a3 reply:(id)a4;
- (void)_setTestSuiteName:(id)a3 reply:(id)a4;
- (void)fetchLogsWithReply:(id)a3;
- (void)fetchStatusWithReply:(id)a3;
- (void)sendRequestToTestSuite:(id)a3 reply:(id)a4;
- (void)setTestTargetEndpoint:(id)a3 reply:(id)a4;
- (void)setValue:(id)a3 forConfigurationKey:(id)a4 reply:(id)a5;
- (void)startCyclingFromBeginning:(BOOL)a3 reply:(id)a4;
- (void)stopCyclingWithReply:(id)a3;
@end

@implementation WBSCyclerService

- (WBSCyclerService)init
{
  v7.receiver = self;
  v7.super_class = WBSCyclerService;
  v2 = [(WBSCyclerService *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.internal.safaricyclerd"];
    xpcListener = v2->_xpcListener;
    v2->_xpcListener = v3;

    [(NSXPCListener *)v2->_xpcListener setDelegate:v2];
    [(NSXPCListener *)v2->_xpcListener resume];
    v2->_maximumIterationCount = 0;
    v5 = v2;
  }

  return v2;
}

- (void)setTestTargetEndpoint:(id)a3 reply:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(WBSCyclerTestRunner *)self->_testRunner isRunning])
  {
    v8 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService setTestTargetEndpoint:reply:];
    }

    v9 = [(WBSCyclerService *)self _errorWithCode:0];
    v7[2](v7, v9);
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Received endpoint %{public}@ for test target", buf, 0xCu);
    }

    v11 = [[WBSCyclerTestTargetProxyController alloc] initWithEndpoint:v6];
    testTargetProxyController = self->_testTargetProxyController;
    p_testTargetProxyController = &self->_testTargetProxyController;
    *p_testTargetProxyController = v11;

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke;
    v14[3] = &unk_1E7FB86B8;
    objc_copyWeak(&v15, &location);
    [*p_testTargetProxyController setDisconnectionHandler:v14];
    v7[2](v7, 0);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke_2;
  block[3] = &unk_1E7FB86B8;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke_2_cold_1();
    }

    [WeakRetained[5] requestStop];
    v3 = WeakRetained[5];
    WeakRetained[5] = 0;

    v4 = WeakRetained[2];
    WeakRetained[2] = 0;

    v5 = [WeakRetained _errorWithCode:3];
    [WeakRetained _finishedWithResult:1 error:v5];
  }
}

- (void)setValue:(id)a3 forConfigurationKey:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(WBSCyclerTestRunner *)self->_testRunner isRunning])
  {
    v11 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService setValue:forConfigurationKey:reply:];
    }

    v12 = self;
    v13 = 0;
  }

  else
  {
    if ([v9 isEqualToString:@"test-suite"])
    {
      [(WBSCyclerService *)self _setTestSuiteName:v8 reply:v10];
      goto LABEL_12;
    }

    if ([v9 isEqualToString:@"seed"])
    {
      -[WBSCyclerService _setSeed:reply:](self, "_setSeed:reply:", [v8 integerValue], v10);
      goto LABEL_12;
    }

    if ([v9 isEqualToString:@"maximum-iterations"])
    {
      -[WBSCyclerService _setMaximumIterationCount:reply:](self, "_setMaximumIterationCount:reply:", [v8 integerValue], v10);
      goto LABEL_12;
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && [(objc_class *)self->_testSuiteClass setValue:v8 forConfigurationKey:v9])
    {
      v10[2](v10, 0);
      goto LABEL_12;
    }

    v12 = self;
    v13 = 7;
  }

  v14 = [(WBSCyclerService *)v12 _errorWithCode:v13];
  (v10)[2](v10, v14);

LABEL_12:
}

- (void)startCyclingFromBeginning:(BOOL)a3 reply:(id)a4
{
  v5 = a3;
  v7 = a4;
  v8 = [(WBSCyclerService *)self _startCyclingFromBeginning:v5];
  (*(a4 + 2))(v7, v8);
}

- (void)stopCyclingWithReply:(id)a3
{
  testRunner = self->_testRunner;
  v5 = a3;
  if ([(WBSCyclerTestRunner *)testRunner isRunning])
  {
    [(WBSCyclerTestRunner *)self->_testRunner requestStop];
    v6 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Submitted request to stop cycling", v9, 2u);
    }

    v5[2](v5, 0);
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService stopCyclingWithReply:];
    }

    v8 = [(WBSCyclerService *)self _errorWithCode:1];
    v5[2](v5, v8);

    v5 = v8;
  }
}

- (void)sendRequestToTestSuite:(id)a3 reply:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (![(WBSCyclerTestRunner *)self->_testRunner isRunning])
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService sendRequestToTestSuite:reply:];
    }

    v11 = [(WBSCyclerService *)self _errorWithCode:1];
    v7[2](v7, v11);
    goto LABEL_7;
  }

  [(WBSCyclerTestRunner *)self->_testRunner handleRequest:v6 completionHandler:v7];
  v8 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    testRunner = self->_testRunner;
    v10 = v8;
    v11 = [(WBSCyclerTestRunner *)testRunner testSuite];
    v13 = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Submitted request %{public}@ to test suite %{public}@", &v13, 0x16u);

LABEL_7:
  }
}

- (void)fetchStatusWithReply:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(WBSCyclerTestSuite *)self->_testSuite iterationCounter];
    v6 = [v5 iterationCount];
  }

  else
  {
    v6 = 0;
  }

  if (self->_lastTestStart)
  {
    lastTestEnd = self->_lastTestEnd;
    v8 = lastTestEnd;
    if (!lastTestEnd)
    {
      v8 = [MEMORY[0x1E695DF00] now];
    }

    [v8 timeIntervalSince1970];
    v10 = v9;
    [(NSDate *)self->_lastTestStart timeIntervalSince1970];
    v12 = v10 - v11;
    if (!lastTestEnd)
    {
    }
  }

  else
  {
    v12 = 0.0;
  }

  v13 = [WBSCyclerStatus alloc];
  v14 = NSStringFromClass(self->_testSuiteClass);
  v15 = [(WBSCyclerStatus *)v13 initWithActiveTestSuiteName:v14 seed:+[WBSCyclerRandomnessUtilities isConnectedToTestTarget:"seed"]isRunning:self->_testTargetProxyController != 0 iterationCount:[(WBSCyclerTestRunner *)self->_testRunner isRunning] executionTime:v6, v12];

  v4[2](v4, v15, 0);
}

- (void)fetchLogsWithReply:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v5 = getOSLogStoreClass_softClass;
  v26 = getOSLogStoreClass_softClass;
  if (!getOSLogStoreClass_softClass)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __getOSLogStoreClass_block_invoke;
    v22[3] = &unk_1E7FB6EC8;
    v22[4] = &v23;
    __getOSLogStoreClass_block_invoke(v22);
    v5 = v24[3];
  }

  v6 = v5;
  _Block_object_dispose(&v23, 8);
  v21 = 0;
  v7 = [v5 storeWithScope:1 error:&v21];
  v8 = v21;
  if (v8)
  {
    v9 = v8;
    v10 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(WBSCyclerService *)v10 fetchLogsWithReply:v9];
    }

    v4[2](v4, 0, v9);
  }

  else
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"category = 'Cycler' AND timestamp >= %@", self->_lastTestStart];
    v20 = 0;
    v12 = [v7 entriesEnumeratorWithOptions:0 position:0 predicate:v11 error:&v20];
    v9 = v20;
    v13 = [v12 allObjects];
    v14 = objc_opt_new();
    v15 = [MEMORY[0x1E695DFE8] localTimeZone];
    [v14 setTimeZone:v15];

    [v14 setDateFormat:@"yyyy-MM-dd hh:mm:ss.SSSZ"];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __39__WBSCyclerService_fetchLogsWithReply___block_invoke;
    v18[3] = &unk_1E7FC52B8;
    v19 = v14;
    v16 = v14;
    v17 = [v13 safari_mapObjectsUsingBlock:v18];
    (v4)[2](v4, v17, 0);
  }
}

id __39__WBSCyclerService_fetchLogsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 date];
  v6 = [v3 stringFromDate:v5];
  v7 = [v4 composedMessage];

  v8 = [v2 stringWithFormat:@"[%@] %@", v6, v7];

  return v8;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = MEMORY[0x1E696B0D0];
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&unk_1F3AAB090];
  [v6 setExportedInterface:v7];

  [v6 setExportedObject:self];
  [v6 resume];

  return 1;
}

- (id)_startCyclingFromBeginning:(BOOL)a3
{
  v3 = a3;
  v36 = *MEMORY[0x1E69E9840];
  if ([(WBSCyclerTestRunner *)self->_testRunner isRunning])
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService _startCyclingFromBeginning:];
    }

    v6 = self;
    v7 = 0;
LABEL_18:
    v21 = [(WBSCyclerService *)v6 _errorWithCode:v7];
    goto LABEL_19;
  }

  if (!self->_testTargetProxyController)
  {
    v19 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService _startCyclingFromBeginning:];
    }

    v6 = self;
    v7 = 2;
    goto LABEL_18;
  }

  testSuiteClass = self->_testSuiteClass;
  if (!testSuiteClass)
  {
    v20 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService _startCyclingFromBeginning:];
    }

    v6 = self;
    v7 = 4;
    goto LABEL_18;
  }

  if (v3)
  {
    v9 = objc_alloc_init(testSuiteClass);
    testSuite = self->_testSuite;
    self->_testSuite = v9;

    v11 = [MEMORY[0x1E695DF00] now];
    lastTestStart = self->_lastTestStart;
    self->_lastTestStart = v11;

    lastTestEnd = self->_lastTestEnd;
    self->_lastTestEnd = 0;

    lastError = self->_lastError;
    self->_lastError = 0;

    if (objc_opt_respondsToSelector())
    {
      v15 = [[WBSCyclerIterationCounter alloc] initWithMaximumIterationCount:self->_maximumIterationCount];
      [(WBSCyclerTestSuite *)self->_testSuite setIterationCounter:v15];
    }

    +[WBSCyclerRandomnessUtilities reseed];
    v16 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_testSuite;
      v18 = v16;
      *buf = 138543618;
      v33 = v17;
      v34 = 2048;
      v35 = +[WBSCyclerRandomnessUtilities seed];
      _os_log_impl(&dword_1BB6F3000, v18, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ with seed %lu", buf, 0x16u);
    }
  }

  else
  {
    v23 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = self->_testSuite;
      *buf = 138543362;
      v33 = v24;
      _os_log_impl(&dword_1BB6F3000, v23, OS_LOG_TYPE_DEFAULT, "Resuming %{public}@", buf, 0xCu);
    }
  }

  v25 = [WBSCyclerTestRunner alloc];
  v26 = self->_testSuite;
  v27 = [(WBSCyclerTestTargetProxyController *)self->_testTargetProxyController testTargetProxy];
  v28 = [(WBSCyclerTestRunner *)v25 initWithTestSuite:v26 target:v27];
  testRunner = self->_testRunner;
  self->_testRunner = v28;

  v30 = self->_testRunner;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __47__WBSCyclerService__startCyclingFromBeginning___block_invoke;
  v31[3] = &unk_1E7FC52E0;
  v31[4] = self;
  [(WBSCyclerTestRunner *)v30 runWithCompletionHandler:v31];
  v21 = 0;
LABEL_19:

  return v21;
}

- (void)_setTestSuiteName:(id)a3 reply:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = NSClassFromString(v6);
  if (!v8)
  {
    v12 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService _setTestSuiteName:reply:];
    }

    v13 = self;
    v14 = 5;
    goto LABEL_12;
  }

  v9 = v8;
  if (([(objc_class *)v8 conformsToProtocol:&unk_1F3AA9B78]& 1) == 0)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXCycler();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [WBSCyclerService _setTestSuiteName:reply:];
    }

    v13 = self;
    v14 = 6;
LABEL_12:
    v16 = [(WBSCyclerService *)v13 _errorWithCode:v14];
    v7[2](v7, v16);

    goto LABEL_13;
  }

  self->_testSuiteClass = v9;
  v10 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    testSuiteClass = self->_testSuiteClass;
    v17 = 138543362;
    v18 = testSuiteClass;
    _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "Set test suite to %{public}@", &v17, 0xCu);
  }

  v7[2](v7, 0);
LABEL_13:
}

- (void)_setSeed:(unint64_t)a3 reply:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_INFO, "Seed set to %lu", &v7, 0xCu);
  }

  [WBSCyclerRandomnessUtilities setSeed:a3];
  v5[2](v5, 0);
}

- (void)_setMaximumIterationCount:(unint64_t)a3 reply:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = WBS_LOG_CHANNEL_PREFIXCycler();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_1BB6F3000, v7, OS_LOG_TYPE_INFO, "Set maximum iterations to %lu", &v8, 0xCu);
  }

  self->_maximumIterationCount = a3;
  v6[2](v6, 0);
}

- (void)_finishedWithResult:(int64_t)a3 error:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [MEMORY[0x1E695DF00] now];
  lastTestEnd = self->_lastTestEnd;
  self->_lastTestEnd = v8;

  objc_storeStrong(&self->_lastError, a4);
  switch(a3)
  {
    case 2:
      v13 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [WBSCyclerService _finishedWithResult:error:];
      }

      break;
    case 1:
      v12 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(WBSCyclerService *)self _finishedWithResult:v7 error:v12];
      }

      break;
    case 0:
      v10 = WBS_LOG_CHANNEL_PREFIXCycler();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        testSuite = self->_testSuite;
        v14 = 138543362;
        v15 = testSuite;
        _os_log_impl(&dword_1BB6F3000, v10, OS_LOG_TYPE_INFO, "%{public}@ passed", &v14, 0xCu);
      }

      break;
  }

  [(WBSCyclerService *)self _postFinishNotificationWithError:v7];
}

- (void)_postFinishNotificationWithError:(id)a3
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10[0] = @"errorDomain";
    v4 = a3;
    v5 = [v4 domain];
    v11[0] = v5;
    v10[1] = @"errorCode";
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "code")}];
    v11[1] = v6;
    v10[2] = @"errorLocalizedDescription";
    v7 = [v4 localizedDescription];

    v11[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v9 postNotificationName:@"com.apple.SafariShared.Cycler.DidFinishRunningTest" object:self->_identifier userInfo:v8];
}

- (id)_errorWithCode:(int64_t)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E696A578];
  v5 = [(WBSCyclerService *)self _descriptionForErrorCode:?];
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v7 = [v4 errorWithDomain:@"WBSCyclerServiceErrorDomain" code:a3 userInfo:v6];

  return v7;
}

- (id)_descriptionForErrorCode:(int64_t)a3
{
  if ((a3 - 1) > 6)
  {
    return @"A test is already running";
  }

  else
  {
    return off_1E7FC5318[a3 - 1];
  }
}

- (void)setTestTargetEndpoint:reply:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__WBSCyclerService_setTestTargetEndpoint_reply___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)setValue:forConfigurationKey:reply:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stopCyclingWithReply:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendRequestToTestSuite:reply:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchLogsWithReply:(void *)a1 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_ERROR, "Error reading log store: %{public}@", v5, 0xCu);
}

- (void)_startCyclingFromBeginning:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_startCyclingFromBeginning:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_startCyclingFromBeginning:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setTestSuiteName:reply:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_setTestSuiteName:reply:.cold.2()
{
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_finishedWithResult:(os_log_t)log error:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "%{public}@ failed with error: %{public}@", &v4, 0x16u);
}

@end