@interface UICloudSharingActivity
@end

@implementation UICloudSharingActivity

void __71___UICloudSharingActivity__isURLEligibleForSharing_isInitial_isFolder___block_invoke(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"com.apple.CloudDocs.SharingV1"];
  if (v4)
  {
  }

  else
  {
    v5 = [v3 objectForKeyedSubscript:@"com.apple.CloudDocs.private.SharingOperation"];

    if (!v5)
    {
      goto LABEL_13;
    }
  }

  *(*(a1[6] + 8) + 24) = 1;
  v6 = a1[4];
  v8 = *MEMORY[0x1E695DC68];
  v24[0] = *MEMORY[0x1E695DCC8];
  v7 = v24[0];
  v24[1] = v8;
  v10 = *MEMORY[0x1E695DBA0];
  v25 = *MEMORY[0x1E695DB78];
  v9 = v25;
  v26 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  v12 = [v6 promisedItemResourceValuesForKeys:v11 error:0];

  v13 = [v12 objectForKeyedSubscript:v7];
  LODWORD(v11) = [v13 BOOLValue];

  v14 = [v12 objectForKeyedSubscript:v9];
  v15 = [v14 BOOLValue];

  v16 = a1[5];
  v17 = [v12 objectForKeyedSubscript:v8];
  v18 = [v16 eligibleTypeForActivity:v17];

  v19 = [v12 objectForKeyedSubscript:v10];
  v20 = [v19 BOOLValue];

  if (v11)
  {
    v21 = a1[7];
    if (v21)
    {
      *v21 = 0;
    }
  }

  else if (v18)
  {
    v22 = a1[7];
    if (v22)
    {
      *v22 = 1;
    }
  }

  v23 = a1[8];
  if (v23)
  {
    *v23 = (v20 ^ 1) & v15;
  }

LABEL_13:
}

void __64___UICloudSharingActivity__prepareWithActivityItems_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * v6);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isFileURL])
        {
          v8 = v7;
          if ([*(a1 + 32) _isURLEligibleForSharing:v8 isInitial:0 isFolder:0])
          {
            if ([*(a1 + 32) activityItemIsInSharedFolder])
            {
              objc_initWeak(&location, *(a1 + 32));
              v9 = MEMORY[0x1E69CDE78];
              v10[0] = MEMORY[0x1E69E9820];
              v10[1] = 3221225472;
              v10[2] = __64___UICloudSharingActivity__prepareWithActivityItems_completion___block_invoke_2;
              v10[3] = &unk_1E71F9CF8;
              v10[4] = *(a1 + 32);
              v11 = v8;
              objc_copyWeak(&v13, &location);
              v12 = *(a1 + 40);
              [v9 findOriginatingSharedItemForSubitemURL:v11 completionHandler:v10];

              objc_destroyWeak(&v13);
              objc_destroyWeak(&location);
            }

            else
            {
              [*(a1 + 32) _showSharingControllerForURL:v8 completion:*(a1 + 40)];
            }

            goto LABEL_17;
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  (*(*(a1 + 40) + 16))();
LABEL_17:
}

void __64___UICloudSharingActivity__prepareWithActivityItems_completion___block_invoke_2(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = share_sheet_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __64___UICloudSharingActivity__prepareWithActivityItems_completion___block_invoke_2_cold_1(a1, v6, v7);
    }

    v5 = a1[5];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64___UICloudSharingActivity__prepareWithActivityItems_completion___block_invoke_40;
  block[3] = &unk_1E71F9CD0;
  objc_copyWeak(&v12, a1 + 7);
  v10 = v5;
  v11 = a1[6];
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v12);
}

void __64___UICloudSharingActivity__prepareWithActivityItems_completion___block_invoke_40(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _showSharingControllerForURL:*(a1 + 32) completion:*(a1 + 40)];
}

void __64___UICloudSharingActivity__prepareWithActivityItems_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 138412802;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_18B359000, log, OS_LOG_TYPE_ERROR, "%@: could not find the originating shared item URL, falling back to item URL:%@ : %@", &v5, 0x20u);
}

@end