@interface SNTestRunner
- (BOOL)runExtendedLaunchTest;
- (BOOL)runTest:(id)test options:(id)options fallingBackWith:(id)with;
- (BOOL)runTestRun:(id)run testName:(id)name options:(id)options fallingBackWith:(id)with;
- (SNTestRunner)initWithApplication:(id)application testCoordinator:(id)coordinator testStore:(id)store;
@end

@implementation SNTestRunner

- (BOOL)runExtendedLaunchTest
{
  testStore = [(SNTestRunner *)self testStore];
  extendedLaunchTestRun = [testStore extendedLaunchTestRun];

  if (!extendedLaunchTestRun)
  {
    return 0;
  }

  testStore2 = [(SNTestRunner *)self testStore];
  extendedLaunchTestRun2 = [testStore2 extendedLaunchTestRun];
  testCoordinator = [(SNTestRunner *)self testCoordinator];
  launchTestName = [testCoordinator launchTestName];
  v9 = [(SNTestRunner *)self runTestRun:extendedLaunchTestRun2 testName:launchTestName options:0 fallingBackWith:0];

  return v9;
}

- (SNTestRunner)initWithApplication:(id)application testCoordinator:(id)coordinator testStore:(id)store
{
  applicationCopy = application;
  coordinatorCopy = coordinator;
  storeCopy = store;
  v15.receiver = self;
  v15.super_class = SNTestRunner;
  v12 = [(SNTestRunner *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_application, application);
    objc_storeStrong(&v13->_testCoordinator, coordinator);
    objc_storeStrong(&v13->_testStore, store);
  }

  return v13;
}

- (BOOL)runTest:(id)test options:(id)options fallingBackWith:(id)with
{
  testCopy = test;
  optionsCopy = options;
  withCopy = with;
  testStore = [(SNTestRunner *)self testStore];
  v12 = [testStore testRunForTestName:testCopy];

  if (v12)
  {
    v13 = [(SNTestRunner *)self runTestRun:v12 testName:testCopy options:optionsCopy fallingBackWith:withCopy];
  }

  else
  {
    if (!withCopy)
    {
      v14 = 0;
      goto LABEL_6;
    }

    v13 = withCopy[2](withCopy);
  }

  v14 = v13;
LABEL_6:

  return v14;
}

- (BOOL)runTestRun:(id)run testName:(id)name options:(id)options fallingBackWith:(id)with
{
  runCopy = run;
  nameCopy = name;
  withCopy = with;
  v12 = objc_alloc_init(SNTestChain);
  v13 = [SNTestContext alloc];
  application = [(SNTestRunner *)self application];
  v15 = [(SNTestContext *)v13 initWithApplication:application testName:nameCopy];

  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __60__SNTestRunner_runTestRun_testName_options_fallingBackWith___block_invoke;
  v30[3] = &unk_279D94208;
  v16 = runCopy;
  v31 = v16;
  v17 = v15;
  v32 = v17;
  v33 = withCopy;
  v18 = withCopy;
  [(SNTestChain *)v12 addLink:v30];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __60__SNTestRunner_runTestRun_testName_options_fallingBackWith___block_invoke_3;
  v26[3] = &unk_279D941B8;
  v26[4] = self;
  v27 = v16;
  v28 = v17;
  v19 = nameCopy;
  v29 = v19;
  v20 = v17;
  v21 = v16;
  [(SNTestChain *)v12 addLink:v26];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__SNTestRunner_runTestRun_testName_options_fallingBackWith___block_invoke_5;
  v24[3] = &unk_279D94258;
  v24[4] = self;
  v25 = v19;
  v22 = v19;
  [(SNTestChain *)v12 runWithCompletion:v24];

  return 1;
}

void __60__SNTestRunner_runTestRun_testName_options_fallingBackWith___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__SNTestRunner_runTestRun_testName_options_fallingBackWith___block_invoke_2;
  v7[3] = &unk_279D941E0;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 setupWithContext:v5 completion:v7];
}

void __60__SNTestRunner_runTestRun_testName_options_fallingBackWith___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3 && (v4 = *(a1 + 32)) != 0)
  {
    (*(v4 + 16))(v4, v3);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __60__SNTestRunner_runTestRun_testName_options_fallingBackWith___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] testCoordinator];
  v5 = [v4 requiresRotationForOrientation:{objc_msgSend(a1[5], "orientation")}];

  if (v5)
  {
    v6 = [a1[4] testCoordinator];
    v7 = [a1[5] orientation];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__SNTestRunner_runTestRun_testName_options_fallingBackWith___block_invoke_4;
    v16[3] = &unk_279D94230;
    v8 = a1[5];
    v9 = a1[6];
    *&v10 = a1[7];
    *(&v10 + 1) = a1[4];
    *&v11 = v8;
    *(&v11 + 1) = v9;
    v17 = v11;
    v18 = v10;
    v19 = v3;
    [v6 rotateToOrientation:v7 beforeRotation:0 afterRotation:v16];
  }

  else
  {
    v12 = a1[6];
    v13 = a1[7];
    v14 = a1[5];
    v15 = [a1[4] testCoordinator];
    [v14 runTestWithContext:v12 testName:v13 testCoordinator:v15 completion:v3];
  }
}

void __60__SNTestRunner_runTestRun_testName_options_fallingBackWith___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) testCoordinator];
    v7 = *(a1 + 64);
    v9 = v6;
    [v3 runTestWithContext:v4 testName:v5 testCoordinator:? completion:?];
  }

  else
  {
    v8 = *(a1 + 64);
    v9 = [[SNTestFailure alloc] initWithMessage:@"Failed to rotate to expected orientation before running test case"];
    (*(v8 + 16))(v8);
  }
}

void __60__SNTestRunner_runTestRun_testName_options_fallingBackWith___block_invoke_5(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v7 = [v3 testCoordinator];
    v5 = *(a1 + 40);
    v6 = [v4 message];

    [v7 failedTestWithTestName:v5 failureMessage:v6];
  }
}

@end