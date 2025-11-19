@interface MSUUpdateBrainAssetLoader
@end

@implementation MSUUpdateBrainAssetLoader

void __150__MSUUpdateBrainAssetLoader_SUCoreBorderMSUUpdateBrainAssetLoader__SUCoreBorder_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _SUCoreBorder_MSUFunctionAtEnd(@"loadUpdateBrainWithMAOptions", 0);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 simAction];
    if (v9 == 3)
    {
      v30 = *MEMORY[0x277D28998];
      v31 = *MEMORY[0x277D28988];
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v10 = 0;
    }

    else
    {
      if (v9 == 1)
      {
        v10 = [v8 buildErrorWithDescription:@"SUCoreError created by SUCoreBorder_loadUpdateBrainWithMAOptions"];
      }

      else
      {
        v14 = [MEMORY[0x277D64428] sharedDiag];
        v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v8];
        [v14 trackAnomaly:@"SUCoreBorder_loadUpdateBrainWithMAOptions" forReason:v15 withResult:8113 withError:0];

        v10 = 0;
      }

      v13 = 0;
    }

    if (*(a1 + 32))
    {
      v16 = [MEMORY[0x277D643F8] sharedCore];
      v17 = [v16 completionQueue];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __150__MSUUpdateBrainAssetLoader_SUCoreBorderMSUUpdateBrainAssetLoader__SUCoreBorder_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_391;
      v22[3] = &unk_27892C830;
      v25 = *(a1 + 32);
      v23 = v13;
      v24 = v10;
      dispatch_async(v17, v22);

      v18 = v25;
    }

    else
    {
      v19 = [MEMORY[0x277D64460] sharedLogger];
      v18 = [v19 oslog];

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v33 = v13;
        v34 = 2114;
        v35 = v10;
        _os_log_impl(&dword_23193C000, v18, OS_LOG_TYPE_DEFAULT, "loadUpdateBrainWithMAOptions completed (no handler), state=%{public}@ error=%{public}@", buf, 0x16u);
      }
    }
  }

  else if (*(a1 + 32))
  {
    v11 = [MEMORY[0x277D643F8] sharedCore];
    v12 = [v11 completionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __150__MSUUpdateBrainAssetLoader_SUCoreBorderMSUUpdateBrainAssetLoader__SUCoreBorder_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_2;
    block[3] = &unk_27892C830;
    v29 = *(a1 + 32);
    v27 = v5;
    v28 = v6;
    dispatch_async(v12, block);

    v13 = v29;
  }

  else
  {
    v21 = [MEMORY[0x277D64460] sharedLogger];
    v13 = [v21 oslog];

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v33 = v5;
      v34 = 2114;
      v35 = v6;
      _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "loadUpdateBrainWithMAOptions completed (no handler), state=%{public}@ error=%{public}@", buf, 0x16u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end