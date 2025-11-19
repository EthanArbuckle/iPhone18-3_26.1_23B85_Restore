@interface PXDisplayAssetViewPPTPerformer
- (PXDisplayAssetViewPPTPerformer)init;
- (PXDisplayAssetViewPPTPerformer)initWithContainerView:(id)a3 delegate:(id)a4 testOptions:(id)a5;
- (PXPPTDelegate)delegate;
- (void)_createAssetViewWithConfiguration:(id)a3 resultHandler:(id)a4;
- (void)_runScrubbingSubtestWithAssetView:(id)a3 configuration:(id)a4 completionHandler:(id)a5;
- (void)_runSubtestWithName:(id)a3 metrics:(id)a4 configuration:(id)a5 usingBlock:(id)a6 completionHandler:(id)a7;
- (void)_runTestUsingBlock:(id)a3 completionHandler:(id)a4;
- (void)_tearDownAssetView:(id)a3 completionHandler:(id)a4;
- (void)runLocalizedTitleTestWithConfigurations:(id)a3 completionHandler:(id)a4;
- (void)runScrubbingTestWithConfigurations:(id)a3 completionHandler:(id)a4;
@end

@implementation PXDisplayAssetViewPPTPerformer

- (PXPPTDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_tearDownAssetView:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  [a3 removeFromSuperview];
  v5[2](v5, 1, 0);
}

- (void)_createAssetViewWithConfiguration:(id)a3 resultHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 assetViewFactory];
  v9 = v7[2]();

  v8 = [(PXDisplayAssetViewPPTPerformer *)self containerView];
  [v8 bounds];
  [v9 setFrame:?];
  [v8 addSubview:v9];
  v6[2](v6, v9, 0);
}

- (void)_runSubtestWithName:(id)a3 metrics:(id)a4 configuration:(id)a5 usingBlock:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = [(PXDisplayAssetViewPPTPerformer *)self delegate];
  v16 = [(PXDisplayAssetViewPPTPerformer *)self testName];
  v17 = v11;
  [v15 startedSubTest:v17 forTest:v16 withMetrics:v14];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __105__PXDisplayAssetViewPPTPerformer__runSubtestWithName_metrics_configuration_usingBlock_completionHandler___block_invoke;
  v23[3] = &unk_1E774AD10;
  v24 = v15;
  v25 = v17;
  v26 = v16;
  v27 = v12;
  v18 = v13[2];
  v19 = v12;
  v20 = v16;
  v21 = v17;
  v22 = v15;
  v18(v13, v23);
}

void __105__PXDisplayAssetViewPPTPerformer__runSubtestWithName_metrics_configuration_usingBlock_completionHandler___block_invoke(void *a1, int a2, void *a3)
{
  v4 = a1[4];
  if (a2)
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = a3;
    [v4 finishedSubTest:v5 forTest:v6];
  }

  else
  {
    [v4 failedTest:a1[6] withFailureFormat:@"test %@ subtest %@ failed with error: %@", a1[6], a1[5], a3];
  }

  (*(a1[7] + 16))();
}

- (void)_runTestUsingBlock:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXDisplayAssetViewPPTPerformer *)self delegate];
  v9 = [(PXDisplayAssetViewPPTPerformer *)self testName];
  [v8 startedTest:v9];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__PXDisplayAssetViewPPTPerformer__runTestUsingBlock_completionHandler___block_invoke;
  v14[3] = &unk_1E774ACE8;
  v15 = v8;
  v16 = v9;
  v17 = v6;
  v10 = v7[2];
  v11 = v6;
  v12 = v9;
  v13 = v8;
  v10(v7, v14);
}

void __71__PXDisplayAssetViewPPTPerformer__runTestUsingBlock_completionHandler___block_invoke(void *a1, int a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a3;
  v8 = v7;
  if (a2)
  {
    [v5 finishedTest:v6];
  }

  else
  {
    [v5 failedTest:v6 withFailureFormat:@"test %@ failed with error: %@", v6, v7];
  }

  (*(a1[6] + 16))();
}

- (void)_runScrubbingSubtestWithAssetView:(id)a3 configuration:(id)a4 completionHandler:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 assets];
  if ([v11 count] > 4)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 1;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__248457;
    v19 = __Block_byref_object_dispose__248458;
    v20 = 0;
    [(PXDisplayAssetViewPPTPerformer *)self testIterations];
    v11;
    v9;
    v8;
    v10;
    PXIterateAsynchronously();
  }

  v12 = PLOneUpGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = [v9 label];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "not enough assets for scrubbing subtest %@", &buf, 0xCu);
  }

  (*(v10 + 2))(v10, 1, 0);
}

void __100__PXDisplayAssetViewPPTPerformer__runScrubbingSubtestWithAssetView_configuration_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "index") % *(a1 + 80)}];
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __100__PXDisplayAssetViewPPTPerformer__runScrubbingSubtestWithAssetView_configuration_completionHandler___block_invoke_2;
  v12[3] = &unk_1E774AC70;
  v13 = *(a1 + 56);
  v14 = v4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__PXDisplayAssetViewPPTPerformer__runScrubbingSubtestWithAssetView_configuration_completionHandler___block_invoke_4;
  v9[3] = &unk_1E774AC98;
  v10 = v3;
  v11 = *(a1 + 64);
  v7 = v3;
  v8 = v4;
  [v6 _runSubtestWithName:@"Scrub-Latency" metrics:&unk_1F19119E0 configuration:v5 usingBlock:v12 completionHandler:v9];
}

void __100__PXDisplayAssetViewPPTPerformer__runScrubbingSubtestWithAssetView_configuration_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setAsset:*(a1 + 40)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__PXDisplayAssetViewPPTPerformer__runScrubbingSubtestWithAssetView_configuration_completionHandler___block_invoke_3;
  block[3] = &unk_1E774C250;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __100__PXDisplayAssetViewPPTPerformer__runScrubbingSubtestWithAssetView_configuration_completionHandler___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    [*(a1 + 32) next];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    [*(a1 + 32) stop];
  }
}

- (void)runLocalizedTitleTestWithConfigurations:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTPerformer.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"configurations != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTPerformer.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__PXDisplayAssetViewPPTPerformer_runLocalizedTitleTestWithConfigurations_completionHandler___block_invoke;
  v13[3] = &unk_1E774AC70;
  v14 = v7;
  v15 = self;
  v10 = v7;
  [(PXDisplayAssetViewPPTPerformer *)self _runTestUsingBlock:v13 completionHandler:v9];
}

void __92__PXDisplayAssetViewPPTPerformer_runLocalizedTitleTestWithConfigurations_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__248457;
  v29 = __Block_byref_object_dispose__248458;
  v30 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(a1 + 32);
  v15 = [obj countByEnumeratingWithState:&v21 objects:v37 count:16];
  if (v15)
  {
    v14 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v21 + 1) + 8 * i);
        v4 = [v3 assets];
        for (j = 0; j < [*(a1 + 40) testIterations]; ++j)
        {
          v5 = [v4 count];
          if (v5 >= 5)
          {
            goto LABEL_12;
          }

          v6 = PLOneUpGetLog();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            v7 = [v3 label];
            *buf = 138412290;
            v36 = v7;
            _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "not enough assets for localized title subtest %@", buf, 0xCu);
          }

          if (v5 > 0)
          {
LABEL_12:
            for (k = 0; k != v5; ++k)
            {
              v9 = [v4 objectAtIndexedSubscript:k];
              v10 = *(a1 + 40);
              v19[0] = MEMORY[0x1E69E9820];
              v19[1] = 3221225472;
              v19[2] = __92__PXDisplayAssetViewPPTPerformer_runLocalizedTitleTestWithConfigurations_completionHandler___block_invoke_49;
              v19[3] = &unk_1E774AC20;
              v11 = v9;
              v20 = v11;
              v18[0] = MEMORY[0x1E69E9820];
              v18[1] = 3221225472;
              v18[2] = __92__PXDisplayAssetViewPPTPerformer_runLocalizedTitleTestWithConfigurations_completionHandler___block_invoke_2;
              v18[3] = &unk_1E774AC48;
              v18[4] = &v31;
              v18[5] = &v25;
              [v10 _runSubtestWithName:@"Title-Latency" metrics:&unk_1F19119C8 configuration:v3 usingBlock:v19 completionHandler:v18];
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v21 objects:v37 count:16];
    }

    while (v15);
  }

  v12[2](v12, *(v32 + 24), v26[5]);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
}

void __92__PXDisplayAssetViewPPTPerformer_runLocalizedTitleTestWithConfigurations_completionHandler___block_invoke_49(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [PXDisplayAssetView localizedTitleForAsset:v2];
  v3[2](v3, 1, 0);
}

void __92__PXDisplayAssetViewPPTPerformer_runLocalizedTitleTestWithConfigurations_completionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
  }
}

- (void)runScrubbingTestWithConfigurations:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTPerformer.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"configurations != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTPerformer.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke;
  v13[3] = &unk_1E774ABF8;
  v14 = v7;
  v15 = self;
  v16 = a2;
  v10 = v7;
  [(PXDisplayAssetViewPPTPerformer *)self _runTestUsingBlock:v13 completionHandler:v9];
}

void __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 1;
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__248457;
  v4[4] = __Block_byref_object_dispose__248458;
  v4[5] = 0;
  [*(a1 + 32) count];
  *(a1 + 32);
  v3;
  PXIterateAsynchronously();
}

void __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(v3, "index")}];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__248457;
  v18[4] = __Block_byref_object_dispose__248458;
  v19 = 0;
  v5 = *(a1 + 40);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke_2;
  v15[3] = &unk_1E774AB08;
  v15[4] = v5;
  v16 = v4;
  v17 = v18;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke_4;
  v9[3] = &unk_1E774AB80;
  v14 = *(a1 + 64);
  v6 = *(a1 + 40);
  v12 = v18;
  v9[4] = v6;
  v7 = v16;
  v10 = v7;
  v8 = v3;
  v11 = v8;
  v13 = *(a1 + 48);
  [v5 _runSubtestWithName:@"ViewCreation" metrics:&unk_1F19119B0 configuration:v7 usingBlock:v15 completionHandler:v9];

  _Block_object_dispose(v18, 8);
}

void __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke_3;
  v8[3] = &unk_1E774AAE0;
  v6 = a1[6];
  v9 = v3;
  v10 = v6;
  v7 = v3;
  [v4 _createAssetViewWithConfiguration:v5 resultHandler:v8];
}

void __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke_4(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = *(a1 + 56);
    v8 = *(*(v7 + 8) + 40);
    if (!v8)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:*(a1 + 80) object:*(a1 + 32) file:@"PXDisplayAssetViewPPTPerformer.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"assetView != nil"}];

      v7 = *(a1 + 56);
      v8 = *(*(v7 + 8) + 40);
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke_5;
    v12[3] = &unk_1E774AB58;
    v12[4] = v9;
    v14 = v7;
    v13 = *(a1 + 48);
    v15 = *(a1 + 64);
    [v9 _runScrubbingSubtestWithAssetView:v8 configuration:v10 completionHandler:v12];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
    [*(a1 + 48) stop];
  }
}

void __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke_5(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(*(*(a1 + 48) + 8) + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke_6;
  v10[3] = &unk_1E774AB30;
  v14 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v13 = *(a1 + 56);
  v11 = v8;
  v12 = v5;
  v9 = v5;
  [v7 _tearDownAssetView:v6 completionHandler:v10];
}

void __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke_6(uint64_t a1, int a2, void *a3)
{
  if (*(a1 + 64) != 1 || a2 == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (*(a1 + 40))
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = a3;
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), v5);
    v6 = a3;
    [*(a1 + 32) stop];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = a3;
    [v7 next];
  }
}

void __87__PXDisplayAssetViewPPTPerformer_runScrubbingTestWithConfigurations_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  (*(*(a1 + 32) + 16))();
}

- (PXDisplayAssetViewPPTPerformer)initWithContainerView:(id)a3 delegate:(id)a4 testOptions:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_11:
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTPerformer.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"delegate != nil"}];

    if (v12)
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTPerformer.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"containerView != nil"}];

  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v12)
  {
    goto LABEL_4;
  }

LABEL_12:
  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTPerformer.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"testOptions != nil"}];

LABEL_4:
  v25.receiver = self;
  v25.super_class = PXDisplayAssetViewPPTPerformer;
  v13 = [(PXDisplayAssetViewPPTPerformer *)&v25 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_containerView, a3);
    objc_storeWeak(&v14->_delegate, v11);
    objc_storeStrong(&v14->_testOptions, a5);
    v15 = [(NSDictionary *)v14->_testOptions objectForKeyedSubscript:@"testName"];
    testName = v14->_testName;
    v14->_testName = v15;

    v17 = [(PXDisplayAssetViewPPTPerformer *)v14 testOptions];
    v18 = [v17 objectForKeyedSubscript:@"iterations"];
    v19 = [v18 integerValue];

    if (v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    v14->_testIterations = v20;
  }

  return v14;
}

- (PXDisplayAssetViewPPTPerformer)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewPPTPerformer.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXDisplayAssetViewPPTPerformer init]"}];

  abort();
}

@end