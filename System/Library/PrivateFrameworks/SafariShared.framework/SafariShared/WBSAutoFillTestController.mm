@interface WBSAutoFillTestController
- (void)cleanSuiteWithCompletionHandler:(id)a3;
- (void)prepareSuiteWithCompletionHandler:(id)a3;
- (void)runTest:(id)a3 bundle:(id)a4 storeResultsIn:(id)a5 tryCount:(unint64_t)a6 completionHandler:(id)a7;
@end

@implementation WBSAutoFillTestController

- (void)runTest:(id)a3 bundle:(id)a4 storeResultsIn:(id)a5 tryCount:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = v12;
  v17 = [(WBSPageTestController *)self delegate];
  if (v17)
  {
    [v16 viewportSize];
    v19 = v18;
    v21 = v20;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke;
    v22[3] = &unk_1E7FB6AD0;
    v29 = v15;
    v23 = v17;
    v24 = self;
    v25 = v16;
    v26 = v13;
    v27 = v25;
    v30 = a6;
    v28 = v14;
    [v23 pageTestController:self resizeViewport:v22 completionHandler:{v19, v21}];
  }

  else
  {
    (*(v15 + 2))(v15, 0);
  }
}

void __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 80) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) pageURL];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7FB6AA8;
    v10 = *(a1 + 56);
    v7 = *(a1 + 64);
    v16 = *(a1 + 88);
    v8 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = *(a1 + 72);
    v15 = *(a1 + 80);
    v14 = *(a1 + 48);
    [v4 pageTestController:v5 navigateAndCaptureFormsMetadataForURL:v6 completionHandler:v9];
  }
}

void __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = WBS_LOG_CHANNEL_PREFIXTest();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2_cold_1(a1, v7, v6);
  }

  v8 = *(a1 + 80);
  v9 = WBS_LOG_CHANNEL_PREFIXTest();
  v10 = v9;
  if (v8 <= 2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = [v11 identifier];
      v14 = [*(a1 + 40) identifier];
      *buf = 138543618;
      v69 = v13;
      v70 = 2114;
      v71 = v14;
      _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_DEFAULT, "Error has been detected for test %{public}@/%{public}@. Retrying.", buf, 0x16u);
    }

    v15 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_10;
    block[3] = &unk_1E7FB6A80;
    v49 = *(a1 + 40);
    v16 = v49.i64[0];
    v61 = vextq_s8(v49, v49, 8uLL);
    v62 = *(a1 + 32);
    v17 = *(a1 + 56);
    v19 = *(a1 + 72);
    v18 = *(a1 + 80);
    v63 = v17;
    v65 = v18;
    v64 = v19;
    dispatch_after(v15, MEMORY[0x1E69E96A0], block);

    goto LABEL_21;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2_cold_2(a1, v10);
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_9:
    if (!v5)
    {
      goto LABEL_18;
    }
  }

  v20 = objc_alloc(MEMORY[0x1E695DEF0]);
  v21 = [*(a1 + 64) expectedResultsURL];
  v59 = 0;
  v22 = [v20 initWithContentsOfURL:v21 options:1 error:&v59];
  v23 = v59;

  if (v23)
  {
    [*(a1 + 56) reportError:v23 descriptiveResultsName:@"form metadata" forStage:@"AutoFill" forTest:*(a1 + 64) inBundle:*(a1 + 32)];
  }

  v24 = [WBSFormAutoFillTestSupport stringRepresentationFromMetadataProvider:v5];
  v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v22 encoding:4];
  v26 = [v25 isEqualToString:v24];
  if ((v26 & 1) == 0 && *(a1 + 80) <= 2uLL)
  {
    v27 = WBS_LOG_CHANNEL_PREFIXTest();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v25;
      v28 = *(a1 + 32);
      v29 = v27;
      v30 = [v28 identifier];
      v31 = [*(a1 + 40) identifier];
      *buf = 138543618;
      v69 = v30;
      v70 = 2114;
      v71 = v31;
      _os_log_impl(&dword_1BB6F3000, v29, OS_LOG_TYPE_DEFAULT, "Test %{public}@/%{public}@ expected and actual results differed. Retrying.", buf, 0x16u);

      v25 = v50;
    }

    v32 = dispatch_time(0, 2000000000);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_14;
    v53[3] = &unk_1E7FB6A80;
    v51 = *(a1 + 40);
    v33 = v51.i64[0];
    v54 = vextq_s8(v51, v51, 8uLL);
    v55 = *(a1 + 32);
    v34 = *(a1 + 56);
    v36 = *(a1 + 72);
    v35 = *(a1 + 80);
    v56 = v34;
    v58 = v35;
    v57 = v36;
    dispatch_after(v32, MEMORY[0x1E69E96A0], v53);

    goto LABEL_21;
  }

  v52 = v25;
  v37 = *(a1 + 56);
  v38 = [v24 dataUsingEncoding:4];
  [*(a1 + 64) expectedResultsURL];
  v39 = v48 = v23;
  [v39 lastPathComponent];
  v47 = v24;
  v41 = v40 = v5;
  [*MEMORY[0x1E6982F40] identifier];
  v43 = v42 = v22;
  [v37 reportActualResults:v38 expectedResults:v42 expectedResultsName:v41 descriptiveResultsName:@"form metadata" uniformTypeIdentifier:v43 forStage:*(a1 + 64) forTest:*(a1 + 32) inBundle:?];

  v44 = *(a1 + 56);
  v66 = @"overall";
  v45 = [MEMORY[0x1E696AD98] numberWithInt:v26];
  v67 = v45;
  v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  [v44 reportPerformance:v46 forStage:@"AutoFill" forTest:*(a1 + 64) inBundle:*(a1 + 32)];

  v5 = v40;
LABEL_18:
  if (v6)
  {
    [*(a1 + 56) reportError:v6 descriptiveResultsName:@"form metadata" forStage:@"AutoFill" forTest:*(a1 + 64) inBundle:*(a1 + 32)];
  }

  (*(*(a1 + 72) + 16))();
LABEL_21:
}

- (void)prepareSuiteWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(WBSPageTestController *)self delegate];
  v6 = v5;
  if (v5)
  {
    [v5 pageTestControllerInitializeApp:self completionHandler:v4];
  }

  else
  {
    v4[2](v4, 0);
  }
}

- (void)cleanSuiteWithCompletionHandler:(id)a3
{
  v5 = a3;
  v4 = [(WBSPageTestController *)self delegate];
  [v4 pageTestControllerTerminateApp:self];

  v5[2](v5, 0);
}

void __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 identifier];
  v8 = [*(a1 + 40) identifier];
  v9 = 138543874;
  v10 = v7;
  v11 = 2114;
  v12 = v8;
  v13 = 2114;
  v14 = a3;
  _os_log_error_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_ERROR, "Test %{public}@/%{public}@ reported error: %{public}@", &v9, 0x20u);
}

void __86__WBSAutoFillTestController_runTest_bundle_storeResultsIn_tryCount_completionHandler___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  v6 = [*(a1 + 40) identifier];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_ERROR, "Too many consecutive errors for test %{public}@/%{public}@. Failing.", &v7, 0x16u);
}

@end