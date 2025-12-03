@interface RPTTestRunner
+ (void)playInteraction:(id)interaction completionHandler:(id)handler;
+ (void)runTestWithParameters:(id)parameters;
+ (void)runTestWithParameters:(id)parameters delegate:(id)delegate;
+ (void)runTestWithParameters:(id)parameters resultHandler:(id)handler;
- (BOOL)_isReadyForRunningParameters:(id)parameters error:(id *)error;
- (BOOL)_managePPTLifetimeEvent:(int64_t)event forParameters:(id)parameters;
- (BOOL)_startSerializedRunnerWithError:(id *)error;
- (BOOL)checkTestRequirementsWithError:(id *)error;
- (RPTTestRunner)initWithInteractionOptions:(id)options;
- (RPTTestRunnerDelegate)delegate;
- (void)_endSerializedRunner;
- (void)_failWithParameters:(id)parameters error:(id)error;
- (void)_finishWithParameters:(id)parameters;
- (void)_runTestWithParameters:(id)parameters;
- (void)_runTestWithParameters:(id)parameters retries:(int64_t)retries;
- (void)playInteraction:(id)interaction completionHandler:(id)handler;
- (void)runTestWithParameters:(id)parameters;
- (void)runTestWithParameters:(id)parameters resultHandler:(id)handler;
@end

@implementation RPTTestRunner

+ (void)playInteraction:(id)interaction completionHandler:(id)handler
{
  handlerCopy = handler;
  interactionCopy = interaction;
  v8 = [self alloc];
  v10 = +[RPTInteractionOptions defaultForPlatform];
  v9 = [v8 initWithInteractionOptions:v10];
  [v9 playInteraction:interactionCopy completionHandler:handlerCopy];
}

+ (void)runTestWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [self alloc];
  v6 = +[RPTInteractionOptions defaultForPlatform];
  v7 = [v5 initWithInteractionOptions:v6];

  [v7 runTestWithParameters:parametersCopy];
}

+ (void)runTestWithParameters:(id)parameters resultHandler:(id)handler
{
  handlerCopy = handler;
  parametersCopy = parameters;
  v8 = [self alloc];
  v9 = +[RPTInteractionOptions defaultForPlatform];
  v10 = [v8 initWithInteractionOptions:v9];

  [v10 runTestWithParameters:parametersCopy resultHandler:handlerCopy];
}

+ (void)runTestWithParameters:(id)parameters delegate:(id)delegate
{
  delegateCopy = delegate;
  parametersCopy = parameters;
  v8 = [self alloc];
  v9 = +[RPTInteractionOptions defaultForPlatform];
  v10 = [v8 initWithInteractionOptions:v9];

  [v10 setDelegate:delegateCopy];
  [v10 runTestWithParameters:parametersCopy];
}

- (RPTTestRunner)initWithInteractionOptions:(id)options
{
  v17 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = RPTTestRunner;
  v5 = [(RPTTestRunner *)&v14 init];
  if (v5)
  {
    if (optionsCopy)
    {
      v6 = optionsCopy;
    }

    else
    {
      v6 = +[RPTInteractionOptions defaultForPlatform];
    }

    interactionOptions = v5->_interactionOptions;
    v5->_interactionOptions = v6;

    v8 = +[RPTSettings processEnvironment];
    settings = v5->_settings;
    v5->_settings = v8;

    v10 = objc_alloc_init(getRCPInlinePlayerClass());
    inlinePlayer = v5->_inlinePlayer;
    v5->_inlinePlayer = v10;

    v12 = RPTLogTestRunning();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = optionsCopy;
      _os_log_impl(&dword_261A17000, v12, OS_LOG_TYPE_DEFAULT, "RPT: [RPTTestRunner initWithOptions:]", buf, 0xCu);
    }
  }

  return v5;
}

- (void)playInteraction:(id)interaction completionHandler:(id)handler
{
  v5 = [RPTInteractionTestParameters interactionTestParametersWithTestName:0 interaction:interaction duration:handler completionHandler:1.0];
  [(RPTTestRunner *)self runTestWithParameters:v5];
}

- (BOOL)_isReadyForRunningParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  delegate = [(RPTTestRunner *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(RPTTestRunner *)self delegate];
    v9 = [delegate2 testRunner:self isReadyForRunningParameters:parametersCopy];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)_runTestWithParameters:(id)parameters retries:(int64_t)retries
{
  v19[3] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v17 = 0;
  v7 = [(RPTTestRunner *)self _isReadyForRunningParameters:parametersCopy error:&v17];
  v8 = v17;
  v9 = v8;
  if (v7)
  {
    [(RPTTestRunner *)self _runTestWithParameters:parametersCopy];
  }

  else if (retries < 1)
  {
    if (!v8)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = *MEMORY[0x277CCA470];
      v18[0] = *MEMORY[0x277CCA460];
      v18[1] = v12;
      v19[0] = @"App not ready to test";
      v19[1] = @"Client reported not ready to test.";
      v18[2] = *MEMORY[0x277CCA498];
      v19[2] = @"Check your client code.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
      v9 = [v11 errorWithDomain:@"com.apple.RecapPerformanceTesting" code:4 userInfo:v13];
    }

    [(RPTTestRunner *)self _failWithParameters:parametersCopy error:v9];
  }

  else
  {
    v10 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__RPTTestRunner__runTestWithParameters_retries___block_invoke;
    block[3] = &unk_279AF39C8;
    block[4] = self;
    v15 = parametersCopy;
    retriesCopy = retries;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
  }
}

- (void)runTestWithParameters:(id)parameters
{
  v7 = 0;
  parametersCopy = parameters;
  v5 = [(RPTTestRunner *)self _startSerializedRunnerWithError:&v7];
  v6 = v7;
  if (v5)
  {
    [(RPTTestRunner *)self _runTestWithParameters:parametersCopy retries:10];
  }

  else
  {
    [(RPTTestRunner *)self _failWithParameters:parametersCopy error:v6];
  }
}

- (void)_runTestWithParameters:(id)parameters
{
  v43 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v5 = RPTLogTestRunning();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = parametersCopy;
    _os_log_impl(&dword_261A17000, v5, OS_LOG_TYPE_DEFAULT, "RPT: [RPTTestRunner runTestWithParameters:]", &buf, 0xCu);
  }

  testName = [parametersCopy testName];
  settings = [(RPTTestRunner *)self settings];
  recapOverrideFileURL = [settings recapOverrideFileURL];
  v9 = recapOverrideFileURL != 0;

  v10 = RPTLogTestRunning();
  if (os_signpost_enabled(v10))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = testName;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "RunTestWithParameters", "<testName>=%{public, name=testName}@", &buf, 0xCu);
  }

  v37 = 0;
  v11 = [(RPTTestRunner *)self checkTestRequirementsWithError:&v37];
  v12 = v37;
  if (v11)
  {
    v13 = RPTLogTestRunning();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      testName2 = [parametersCopy testName];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = testName2;
      _os_log_impl(&dword_261A17000, v13, OS_LOG_TYPE_DEFAULT, "RPT: PrepareForTest begin %{public}@", &buf, 0xCu);
    }

    v15 = RPTLogTestRunning();
    if (os_signpost_enabled(v15))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = testName;
      _os_signpost_emit_with_name_impl(&dword_261A17000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PrepareForTest", "<testName>=%{public, name=testName}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__0;
    v41 = __Block_byref_object_dispose__0;
    v42 = 0;
    v16 = makeRCPPlayerPlaybackOptions();
    interactionOptions = [(RPTTestRunner *)self interactionOptions];
    RCPSyntheticEventStreamClass = getRCPSyntheticEventStreamClass();
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke;
    v32[3] = &unk_279AF39F0;
    v36 = v9;
    p_buf = &buf;
    v19 = interactionOptions;
    v33 = v19;
    v20 = parametersCopy;
    v34 = v20;
    v21 = [RCPSyntheticEventStreamClass eventStreamWithEventActions:v32];
    inlinePlayer = [(RPTTestRunner *)self inlinePlayer];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_2;
    v24[3] = &unk_279AF3AE0;
    v25 = v20;
    v26 = 0;
    v31 = v9;
    selfCopy = self;
    v30 = &buf;
    v23 = v19;
    v28 = v23;
    v29 = testName;
    [inlinePlayer playEventStream:v21 options:v16 completion:v24];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    [(RPTTestRunner *)self _failWithParameters:parametersCopy error:v12];
  }
}

uint64_t __40__RPTTestRunner__runTestWithParameters___block_invoke(uint64_t result, void *a2)
{
  if ((*(result + 56) & 1) == 0)
  {
    v3 = result;
    v4 = a2;
    v5 = [[RPTDefaultPointerAndFingerInteroppingComposer alloc] initFromWrapping:v4 interactionOptions:*(v3 + 32)];
    v6 = *(*(v3 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [*(v3 + 32) senderProperties];
    [v4 setSenderProperties:v8];

    v9 = *(v3 + 40);
    v10 = *(*(*(v3 + 48) + 8) + 40);

    return [v9 prepareWithComposer:v10];
  }

  return result;
}

void __40__RPTTestRunner__runTestWithParameters___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = RPTLogTestRunning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) testName];
    *buf = 138543362;
    v19 = v3;
    _os_log_impl(&dword_261A17000, v2, OS_LOG_TYPE_DEFAULT, "RPT: PrepareForTest end %{public}@", buf, 0xCu);
  }

  v4 = RPTLogTestRunning();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PrepareForTest", &unk_261A2A217, buf, 2u);
  }

  v5 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_80;
  block[3] = &unk_279AF3AE0;
  v6 = *(a1 + 40);
  v17 = *(a1 + 80);
  *&v7 = v6;
  *(&v7 + 1) = *(a1 + 48);
  v11 = v7;
  v8 = *(a1 + 32);
  v16 = *(a1 + 72);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v13 = v11;
  v14 = v10;
  v15 = *(a1 + 64);
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

void __40__RPTTestRunner__runTestWithParameters___block_invoke_80(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = makeRCPPlayerPlaybackOptions();
  if (*(a1 + 80) == 1)
  {
    RCPEventStreamClass = getRCPEventStreamClass();
    v4 = [*(a1 + 40) settings];
    v5 = [v4 recapOverrideFileURL];
    v29 = 0;
    v6 = [RCPEventStreamClass eventStreamWithFileURL:v5 error:&v29];
    v7 = v29;

    if (!v6)
    {
      [*(a1 + 40) _failWithParameters:*(a1 + 48) error:v7];
      goto LABEL_12;
    }
  }

  else
  {
    RCPSyntheticEventStreamClass = getRCPSyntheticEventStreamClass();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_2_81;
    v25[3] = &unk_279AF3A18;
    v28 = *(a1 + 72);
    v26 = *(a1 + 56);
    v27 = *(a1 + 48);
    v6 = [RCPSyntheticEventStreamClass eventStreamWithEventActions:v25];

    v7 = v26;
  }

  v9 = RPTLogTestRunning();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 48) testName];
    *buf = 138543362;
    v31 = v10;
    _os_log_impl(&dword_261A17000, v9, OS_LOG_TYPE_DEFAULT, "RPT: PrewarmForTest begin %{public}@", buf, 0xCu);
  }

  v11 = RPTLogTestRunning();
  if (os_signpost_enabled(v11))
  {
    v12 = *(a1 + 64);
    v13 = @"NO";
    if (*(a1 + 80))
    {
      v13 = @"YES";
    }

    *buf = 138543618;
    v31 = v12;
    v32 = 2114;
    v33 = v13;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PrewarmForTest", "<testName>=%{public, name=testName}@ <isOverride>=%{public, name=isOverride}@", buf, 0x16u);
  }

  v14 = [*(a1 + 40) inlinePlayer];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_88;
  v18[3] = &unk_279AF3AB8;
  v15 = *(a1 + 48);
  v16 = *(a1 + 40);
  v19 = v15;
  v20 = v16;
  v17 = *(a1 + 64);
  v24 = *(a1 + 80);
  v21 = v17;
  v22 = v6;
  v23 = v2;
  v7 = v6;
  [v14 prewarmForEventStream:v7 completion:v18];

LABEL_12:
}

void __40__RPTTestRunner__runTestWithParameters___block_invoke_2_81(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v4 = a2;
  [v3 setForwardingTarget:v4];
  v5 = [*(a1 + 32) senderProperties];
  [v4 setSenderProperties:v5];

  v6 = [*(a1 + 40) composerBlock];
  v6[2](v6, *(*(*(a1 + 48) + 8) + 40));
}

void __40__RPTTestRunner__runTestWithParameters___block_invoke_88(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = RPTLogTestRunning();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) testName];
    *buf = 138543362;
    v26 = v5;
    _os_log_impl(&dword_261A17000, v4, OS_LOG_TYPE_DEFAULT, "RPT: PrewarmForTest end %{public}@", buf, 0xCu);
  }

  v6 = RPTLogTestRunning();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PrewarmForTest", &unk_261A2A217, buf, 2u);
  }

  v7 = *(a1 + 40);
  if (v3)
  {
    [v7 _failWithParameters:*(a1 + 32) error:v3];
  }

  else
  {
    if ([v7 _managePPTLifetimeEvent:0 forParameters:*(a1 + 32)])
    {
      v8 = [MEMORY[0x277D75128] sharedApplication];
      [v8 startedTest:*(a1 + 48)];
    }

    v9 = RPTLogTestRunning();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) testName];
      *buf = 138543362;
      v26 = v10;
      _os_log_impl(&dword_261A17000, v9, OS_LOG_TYPE_DEFAULT, "RPT: PerformTest begin %{public}@", buf, 0xCu);
    }

    v11 = RPTLogTestRunning();
    if (os_signpost_enabled(v11))
    {
      v12 = *(a1 + 48);
      v13 = @"NO";
      if (*(a1 + 72))
      {
        v13 = @"YES";
      }

      *buf = 138543618;
      v26 = v12;
      v27 = 2114;
      v28 = v13;
      _os_signpost_emit_with_name_impl(&dword_261A17000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PerformTest", "<testName>=%{public, name=testName}@ <isOverride>=%{public, name=isOverride}@ isAnimation=YES ", buf, 0x16u);
    }

    v14 = [*(a1 + 40) inlinePlayer];
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_90;
    v20[3] = &unk_279AF3A90;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v21 = v17;
    v22 = v18;
    v23 = v19;
    v24 = *(a1 + 72);
    [v14 playEventStream:v15 options:v16 completion:v20];
  }
}

void __40__RPTTestRunner__runTestWithParameters___block_invoke_90(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_2_91;
  v15[3] = &unk_279AF3A40;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v16 = v2;
  v17 = v3;
  v18 = v4;
  v5 = MEMORY[0x2667162B0](v15);
  if (objc_opt_respondsToSelector())
  {
    v6 = RPTLogTestRunning();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) testName];
      *buf = 138543362;
      v20 = v7;
      _os_log_impl(&dword_261A17000, v6, OS_LOG_TYPE_DEFAULT, "RPT: PostEventStreamPerformTest begin %{public}@", buf, 0xCu);
    }

    v8 = RPTLogTestRunning();
    if (os_signpost_enabled(v8))
    {
      v9 = *(a1 + 48);
      v10 = @"NO";
      if (*(a1 + 56))
      {
        v10 = @"YES";
      }

      *buf = 138543618;
      v20 = v9;
      v21 = 2114;
      v22 = v10;
      _os_signpost_emit_with_name_impl(&dword_261A17000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PostEventStreamPerformTest", "<testName>=%{public, name=testName}@ <isOverride>=%{public, name=isOverride}@", buf, 0x16u);
    }

    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __40__RPTTestRunner__runTestWithParameters___block_invoke_94;
    v12[3] = &unk_279AF3A68;
    v13 = v11;
    v14 = v5;
    [v13 waitForPostEventStreamDelayWithHandler:v12];
  }

  else
  {
    v5[2](v5);
  }
}

uint64_t __40__RPTTestRunner__runTestWithParameters___block_invoke_2_91(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = RPTLogTestRunning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) testName];
    v12 = 138543362;
    v13 = v3;
    _os_log_impl(&dword_261A17000, v2, OS_LOG_TYPE_DEFAULT, "RPT: PerformTest end %{public}@", &v12, 0xCu);
  }

  v4 = RPTLogTestRunning();
  if (os_signpost_enabled(v4))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PerformTest", &unk_261A2A217, &v12, 2u);
  }

  if ([*(a1 + 40) _managePPTLifetimeEvent:1 forParameters:*(a1 + 32)])
  {
    v5 = [MEMORY[0x277D75128] sharedApplication];
    [v5 finishedTest:*(a1 + 48) waitForCommit:1 extraResults:0];
  }

  v6 = [*(a1 + 32) completionHandler];

  if (v6)
  {
    v7 = [*(a1 + 32) completionHandler];
    v7[2]();
  }

  v8 = RPTLogTestRunning();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) testName];
    v12 = 138543362;
    v13 = v9;
    _os_log_impl(&dword_261A17000, v8, OS_LOG_TYPE_DEFAULT, "RPT: RunTestWithParameters end %{public}@", &v12, 0xCu);
  }

  v10 = RPTLogTestRunning();
  if (os_signpost_enabled(v10))
  {
    LOWORD(v12) = 0;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RunTestWithParameters", &unk_261A2A217, &v12, 2u);
  }

  return [*(a1 + 40) _finishWithParameters:*(a1 + 32)];
}

uint64_t __40__RPTTestRunner__runTestWithParameters___block_invoke_94(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = RPTLogTestRunning();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) testName];
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_261A17000, v2, OS_LOG_TYPE_DEFAULT, "RPT: PostEventStreamPerformTest end %{public}@", &v6, 0xCu);
  }

  v4 = RPTLogTestRunning();
  if (os_signpost_enabled(v4))
  {
    LOWORD(v6) = 0;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PostEventStreamPerformTest", &unk_261A2A217, &v6, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)runTestWithParameters:(id)parameters resultHandler:(id)handler
{
  parametersCopy = parameters;
  if (handler)
  {
    handlerCopy = handler;
    handler = objc_opt_new();
    [handler setResultsHandler:handlerCopy];
  }

  [(RPTTestRunner *)self setDelegate:handler];
  [(RPTTestRunner *)self runTestWithParameters:parametersCopy];
}

- (BOOL)_startSerializedRunnerWithError:(id *)error
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  ++_testIsRunning;
  objc_sync_exit(v4);

  delegate = [(RPTTestRunner *)self delegate];
  objc_setAssociatedObject(self, "RPTTestRunner_delegateKey", delegate, 0x301);

  return 1;
}

- (void)_endSerializedRunner
{
  objc_setAssociatedObject(self, "RPTTestRunner_delegateKey", 0, 0x301);
  obj = objc_opt_class();
  objc_sync_enter(obj);
  --_testIsRunning;
  objc_sync_exit(obj);
}

- (void)_finishWithParameters:(id)parameters
{
  v11 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  delegate = [(RPTTestRunner *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(RPTTestRunner *)self delegate];
    [delegate2 testRunner:self didFinishRunningParameters:parametersCopy];
  }

  v8 = RPTLogTestRunning();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = parametersCopy;
    _os_log_impl(&dword_261A17000, v8, OS_LOG_TYPE_DEFAULT, "RPT: [RPTTestRunner _finishWithParameters:]", &v9, 0xCu);
  }

  [(RPTTestRunner *)self _endSerializedRunner];
}

- (void)_failWithParameters:(id)parameters error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  errorCopy = error;
  testName = [parametersCopy testName];
  if (testName)
  {
    v9 = testName;
    v10 = [(RPTTestRunner *)self _managePPTLifetimeEvent:2 forParameters:parametersCopy];

    if (v10)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      testName2 = [parametersCopy testName];
      v13 = [errorCopy debugDescription];
      [mEMORY[0x277D75128] failedTest:testName2 withFailure:v13];
    }
  }

  v14 = RPTLogTestRunning();
  if (os_signpost_enabled(v14))
  {
    v15 = [errorCopy debugDescription];
    v20 = 138412290;
    v21 = v15;
    _os_signpost_emit_with_name_impl(&dword_261A17000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "RunTestWithParameters", "<failure?>=%@", &v20, 0xCu);
  }

  delegate = [(RPTTestRunner *)self delegate];
  v17 = objc_opt_respondsToSelector();

  if (v17)
  {
    delegate2 = [(RPTTestRunner *)self delegate];
    [delegate2 testRunner:self didFailRunningParameters:parametersCopy withError:errorCopy];
  }

  v19 = RPTLogTestRunning();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [(RPTTestRunner *)parametersCopy _failWithParameters:errorCopy error:v19];
  }

  [(RPTTestRunner *)self _endSerializedRunner];
}

- (BOOL)_managePPTLifetimeEvent:(int64_t)event forParameters:(id)parameters
{
  parametersCopy = parameters;
  if (objc_opt_respondsToSelector())
  {
    LODWORD(event) = [parametersCopy managesTestStartAndEnd] ^ 1;
  }

  else
  {
    delegate = [(RPTTestRunner *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(RPTTestRunner *)self delegate];
      LOBYTE(event) = [delegate2 testRunner:self shouldManagePPTLifetimeEvent:event forParamaters:parametersCopy];
    }

    else
    {
      testName = [parametersCopy testName];
      LOBYTE(event) = testName != 0;
    }
  }

  return event;
}

- (BOOL)checkTestRequirementsWithError:(id *)error
{
  v23[3] = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  if (!RecapLibraryCore())
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA470];
    v22[0] = *MEMORY[0x277CCA460];
    v22[1] = v6;
    v23[0] = @"Recap.framework is unavaliable.";
    v23[1] = @"The framework failed to be loaded in via soft-linking.";
    v22[2] = *MEMORY[0x277CCA498];
    v23[2] = @"Check you are on a supported platform.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
    v8 = [v5 errorWithDomain:@"com.apple.RecapPerformanceTesting" code:3 userInfo:v7];
    [v4 addObject:v8];
  }

  v9 = +[RPTEntitlementChecker checkerForCurrentProcess];
  v10 = v9;
  if (v9)
  {
    v19 = 0;
    v11 = [v9 checkWithError:&v19];
    v12 = v19;
    if ((v11 & 1) == 0)
    {
      [v4 addObject:v12];
    }

    v13 = [v4 count];
    v14 = v13 == 0;
    if (error && v13)
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = *MEMORY[0x277CCA578];
      v20[0] = *MEMORY[0x277CCA460];
      v20[1] = v16;
      v21[0] = @"Test running requirements failed.";
      v21[1] = v4;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
      *error = [v15 errorWithDomain:@"com.apple.RecapPerformanceTesting" code:1 userInfo:v17];

      v14 = 0;
    }
  }

  else
  {
    v12 = RPTLogTestRunning();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [RPTTestRunner checkTestRequirementsWithError:v12];
    }

    v14 = 1;
  }

  return v14;
}

- (RPTTestRunnerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_failWithParameters:(os_log_t)log error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_261A17000, log, OS_LOG_TYPE_ERROR, "RPT: [RPTTestRunner _failWithParameters:]", &v3, 0x16u);
}

@end