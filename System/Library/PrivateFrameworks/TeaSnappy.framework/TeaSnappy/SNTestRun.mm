@interface SNTestRun
- (BOOL)waitForCommitToFinish;
- (SNTestRun)initWithTestCase:(id)case testSuite:(id)suite;
- (int64_t)orientation;
- (void)runTestWithContext:(id)context testCoordinator:(id)coordinator completion:(id)completion;
- (void)runTestWithContext:(id)context testName:(id)name testCoordinator:(id)coordinator completion:(id)completion;
- (void)setupWithContext:(id)context completion:(id)completion;
@end

@implementation SNTestRun

- (int64_t)orientation
{
  testCase = [(SNTestRun *)self testCase];
  v4 = [testCase conformsToProtocol:&unk_287E95B68];

  if (!v4)
  {
    return 1;
  }

  testCase2 = [(SNTestRun *)self testCase];
  orientation = [testCase2 orientation];

  return orientation;
}

- (BOOL)waitForCommitToFinish
{
  testCase = [(SNTestRun *)self testCase];
  v4 = [testCase conformsToProtocol:&unk_287E95B68];

  if (!v4)
  {
    return 0;
  }

  testCase2 = [(SNTestRun *)self testCase];
  waitForCommitToFinish = [testCase2 waitForCommitToFinish];

  return waitForCommitToFinish;
}

- (SNTestRun)initWithTestCase:(id)case testSuite:(id)suite
{
  caseCopy = case;
  suiteCopy = suite;
  v12.receiver = self;
  v12.super_class = SNTestRun;
  v9 = [(SNTestRun *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_testCase, case);
    objc_storeStrong(&v10->_testSuite, suite);
  }

  return v10;
}

- (void)setupWithContext:(id)context completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v8 = objc_alloc_init(SNTestChain);
  testSuite = [(SNTestRun *)self testSuite];

  if (testSuite)
  {
    v20 = completionCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    testSuite2 = [(SNTestRun *)self testSuite];
    testSetupList = [testSuite2 testSetupList];

    v12 = [testSetupList countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      do
      {
        v15 = 0;
        do
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(testSetupList);
          }

          v16 = *(*(&v25 + 1) + 8 * v15);
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __41__SNTestRun_setupWithContext_completion___block_invoke;
          v23[3] = &unk_279D94118;
          v23[4] = v16;
          v24 = contextCopy;
          [(SNTestChain *)v8 addLink:v23];

          ++v15;
        }

        while (v13 != v15);
        v13 = [testSetupList countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    completionCopy = v20;
  }

  testCase = [(SNTestRun *)self testCase];
  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __41__SNTestRun_setupWithContext_completion___block_invoke_2;
    v21[3] = &unk_279D94118;
    v21[4] = self;
    v22 = contextCopy;
    [(SNTestChain *)v8 addLink:v21];
  }

  [(SNTestChain *)v8 runWithCompletion:completionCopy];

  v19 = *MEMORY[0x277D85DE8];
}

void __41__SNTestRun_setupWithContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 testCase];
  [v5 setupTestWithContext:*(a1 + 40) completion:v4];
}

- (void)runTestWithContext:(id)context testCoordinator:(id)coordinator completion:(id)completion
{
  completionCopy = completion;
  coordinatorCopy = coordinator;
  contextCopy = context;
  testCase = [(SNTestRun *)self testCase];
  testName = [testCase testName];
  [(SNTestRun *)self runTestWithContext:contextCopy testName:testName testCoordinator:coordinatorCopy completion:completionCopy];
}

- (void)runTestWithContext:(id)context testName:(id)name testCoordinator:(id)coordinator completion:(id)completion
{
  contextCopy = context;
  nameCopy = name;
  coordinatorCopy = coordinator;
  completionCopy = completion;
  v14 = objc_alloc_init(SNTestChain);
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __68__SNTestRun_runTestWithContext_testName_testCoordinator_completion___block_invoke;
  v21 = &unk_279D941B8;
  selfCopy = self;
  v23 = contextCopy;
  v24 = coordinatorCopy;
  v25 = nameCopy;
  v15 = nameCopy;
  v16 = coordinatorCopy;
  v17 = contextCopy;
  [(SNTestChain *)v14 addLink:&v18];
  [(SNTestChain *)v14 runWithCompletion:completionCopy, v18, v19, v20, v21, selfCopy];
}

void __68__SNTestRun_runTestWithContext_testName_testCoordinator_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) testCase];
  v5 = [v4 conformsToProtocol:&unk_287E96AC0];

  v6 = [*(a1 + 32) testCase];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 scrollViewWithContext:*(a1 + 40)];
    if (v8)
    {
      if (objc_opt_respondsToSelector())
      {
        v9 = [v7 scrollDirection];
      }

      else
      {
        v9 = 0;
      }

      if ([MEMORY[0x277D44368] isRecapAvailable])
      {
        [*(a1 + 48) recapScrollTestWithTestName:*(a1 + 56) scrollView:v8];
      }

      else
      {
        v22 = objc_opt_respondsToSelector();
        v24 = *(a1 + 48);
        v23 = *(a1 + 56);
        v25 = [v7 iterations];
        v26 = [v7 offset];
        if (v22)
        {
          [v24 scrollTestWithTestName:v23 scrollView:v8 iterations:v25 offset:v26 numberOfScreens:objc_msgSend(v7 direction:{"numberOfScreens"), v9}];
        }

        else
        {
          [v24 scrollTestWithTestName:v23 scrollView:v8 iterations:v25 offset:v26 direction:v9];
        }
      }

      v3[2](v3, 0);
    }

    else
    {
      v21 = [[SNTestFailure alloc] initWithMessage:@"Failed to retrieve UIScrollView for test"];
      (v3)[2](v3, v21);
    }

    goto LABEL_20;
  }

  v10 = [v6 conformsToProtocol:&unk_287E96B90];

  v11 = [*(a1 + 32) testCase];
  v7 = v11;
  if (v10)
  {
    v12 = *(a1 + 48);
    v13 = [v11 rotateOrientation];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __68__SNTestRun_runTestWithContext_testName_testCoordinator_completion___block_invoke_2;
    v38[3] = &unk_279D94140;
    v39 = *(a1 + 48);
    v40 = *(a1 + 56);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __68__SNTestRun_runTestWithContext_testName_testCoordinator_completion___block_invoke_3;
    v33[3] = &unk_279D94168;
    v34 = *(a1 + 48);
    v14 = *(a1 + 56);
    v15 = *(a1 + 32);
    v35 = v14;
    v36 = v15;
    v37 = v3;
    [v12 rotateToOrientation:v13 beforeRotation:v38 afterRotation:v33];

    v16 = v39;
LABEL_9:

LABEL_20:
    goto LABEL_21;
  }

  v17 = [v11 conformsToProtocol:&unk_287E96C28];

  if (v17)
  {
    v7 = [*(a1 + 32) testCase];
    [*(a1 + 48) startedTestWithTestName:*(a1 + 56)];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __68__SNTestRun_runTestWithContext_testName_testCoordinator_completion___block_invoke_4;
    v28[3] = &unk_279D94190;
    v18 = *(a1 + 40);
    v29 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 32);
    v30 = v19;
    v31 = v20;
    v32 = v3;
    [v7 runTestWithContext:v18 completion:v28];

    v16 = v29;
    goto LABEL_9;
  }

  v27 = [[SNTestFailure alloc] initWithMessage:@"Unsupported test case; Requires specific SNTestCase type"];
  (v3)[2](v3, v27);

LABEL_21:
}

void __68__SNTestRun_runTestWithContext_testName_testCoordinator_completion___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) finishedTestWithTestName:*(a1 + 40) waitForCommit:{objc_msgSend(*(a1 + 48), "waitForCommitToFinish")}];
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 56);
    v5 = [[SNTestFailure alloc] initWithMessage:@"Failed to rotate to expected orientation"];
    (*(v4 + 16))(v4, v5);
  }
}

uint64_t __68__SNTestRun_runTestWithContext_testName_testCoordinator_completion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 56);
  }

  else
  {
    [*(a1 + 32) finishedTestWithTestName:*(a1 + 40) waitForCommit:{objc_msgSend(*(a1 + 48), "waitForCommitToFinish")}];
  }

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

@end