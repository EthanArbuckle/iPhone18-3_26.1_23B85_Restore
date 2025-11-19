@interface PFPosterExtensionInstance
@end

@implementation PFPosterExtensionInstance

void __74__PFPosterExtensionInstance_PRAdditions__pr_acquireAssetUpdaterWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = MEMORY[0x1E698E620];
    if (v5)
    {
      [v5 auditToken];
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    v8 = [v7 tokenFromAuditToken:v16];
    v9 = MEMORY[0x1E69C7640];
    v10 = [*(a1 + 32) processIdentity];
    v11 = [v9 targetWithProcessIdentity:v10];

    v12 = [PRUpdatingService updatingServiceWithProcess:v5 auditToken:v8 target:v11];
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained addInstanceObserver:v12];

    v14 = *(a1 + 40);
    v15 = [PRUpdatingService updatingServiceWithProcess:v5 auditToken:v8 target:v11];
    (*(v14 + 16))(v14, v15, 0);
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) signal])
  {
    v2 = PRLogUpdatingService();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v2, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: invalidating all assertions", buf, 2u);
    }

    [*(a1 + 40) mutateUserInfo:&__block_literal_global_35];
    v3 = PRLogUpdatingService();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: all assertions invalidated", v4, 2u);
    }
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"finishTaskInterruptable"];
  if (v3)
  {
    v4 = PRLogUpdatingService();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating finishTaskInterruptable", buf, 2u);
    }

    [v3 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"finishTaskInterruptable"];
  }

  v5 = [v2 objectForKeyedSubscript:@"posterRuntimeAssertion"];
  if (v5)
  {
    v6 = PRLogUpdatingService();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating posterRuntimeAssertion", v10, 2u);
    }

    [v5 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"posterRuntimeAssertion"];
  }

  v7 = [v2 objectForKeyedSubscript:@"posterMemoryAssertion"];
  if (v7)
  {
    v8 = PRLogUpdatingService();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A8AA7000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating posterMemoryAssertion", v9, 2u);
    }

    [v7 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"posterMemoryAssertion"];
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_26(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) signal])
  {
    if (!v3)
    {
      v3 = [MEMORY[0x1E696ABC0] pr_errorWithCode:0];
    }

    v4 = PRLogUpdatingService();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: ended with error:%{public}@", &v5, 0xCu);
    }

    [*(a1 + 40) finishWithError:v3];
    (*(*(a1 + 48) + 16))();
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69C7548];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v4 stringWithFormat:@"Refresh descriptors for '%@'", v5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2;
  v11[3] = &unk_1E7844E98;
  v12 = *(a1 + 40);
  v8 = [v3 pf_finishTaskInterruptableWithExplanation:v7 invalidationHandler:v11];
  [v6 setObject:v8 forKeyedSubscript:@"finishTaskInterruptable"];

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRLogUpdatingService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = PRLogUpdatingService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v2, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: starting work on operation queue", buf, 2u);
  }

  v3 = PRLogUpdatingService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: creating updating service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v43 = 0;
  v5 = [v4 pr_assetUpdaterWithError:&v43];
  v6 = v43;
  if (v5 && [v5 isValid] && !v6)
  {
    v7 = PRLogUpdatingService();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: updating service created successfully", buf, 2u);
    }

    v8 = [v5 auditToken];
    v9 = v8;
    if (v8 && ![v8 isInvalid])
    {
      v14 = PRLogUpdatingService();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A8AA7000, v14, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: audit token validated", buf, 2u);
      }

      v15 = [v5 target];
      if (v15)
      {
        v16 = PRLogUpdatingService();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A8AA7000, v16, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: RBS target obtained", buf, 2u);
        }

        v17 = PRLogUpdatingService();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A8AA7000, v17, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: creating runtime and memory assertions", buf, 2u);
        }

        v18 = *(a1 + 40);
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_47;
        v36[3] = &unk_1E7844F10;
        v37 = v15;
        v42 = *(a1 + 80);
        v38 = v9;
        v39 = *(a1 + 48);
        v19 = v5;
        v40 = v19;
        v41 = 0;
        [v18 mutateUserInfo:v36];

        v20 = [*(a1 + 56) postersOrderedByCreationDate];
        v21 = [v20 array];
        v22 = __PFServerPosterPathFromPFPosterContents();
        v23 = [v21 bs_mapNoNulls:v22];
        v24 = v23;
        v25 = MEMORY[0x1E695E0F0];
        if (v23)
        {
          v25 = v23;
        }

        v26 = v25;

        v27 = PRLogUpdatingService();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v26, "count")}];
          *buf = 138543362;
          v45 = v28;
          _os_log_impl(&dword_1A8AA7000, v27, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: calling updateDescriptors with %{public}@ paths", buf, 0xCu);
        }

        v29 = *(a1 + 64);
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_59;
        v32[3] = &unk_1E7844F88;
        v34 = *(a1 + 80);
        v33 = *(a1 + 72);
        v35 = *(a1 + 88);
        [v19 updateDescriptors:v26 sessionInfo:v29 completion:v32];

        v6 = 0;
      }

      else
      {
        v30 = PFFunctionNameForAddress();
        v6 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

        v31 = PRLogUpdatingService();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_1();
        }

        (*(*(a1 + 80) + 16))(*(a1 + 80));
      }
    }

    else
    {
      v10 = PFFunctionNameForAddress();
      v6 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

      v11 = PRLogUpdatingService();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_2();
      }

      (*(*(a1 + 80) + 16))(*(a1 + 80));
    }
  }

  else
  {
    if (!v6)
    {
      v12 = PFFunctionNameForAddress();
      v6 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v13 = PRLogUpdatingService();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_3();
    }

    (*(*(a1 + 80) + 16))(*(a1 + 80));
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_47(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = MEMORY[0x1E69C7548];
  v6 = *(a1 + 32);
  v7 = *MEMORY[0x1E69C5250];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2_52;
  v46[3] = &unk_1E7844E98;
  v47 = *(a1 + 72);
  v8 = [v5 pf_assertionForTarget:v6 assertionIdentifier:v7 explanation:@"Updating descriptors" invalidationHandler:v46];
  [v3 setObject:v8 forKeyedSubscript:@"posterRuntimeAssertion"];

  v9 = [v3 objectForKeyedSubscript:@"posterRuntimeAssertion"];
  [v4 bs_safeAddObject:v9];

  v10 = MEMORY[0x1E69C7548];
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_53;
  v44[3] = &unk_1E7844E98;
  v45 = *(a1 + 72);
  v14 = [v10 pf_posterUpdateMemoryAssertionForReason:@"Updating descriptors" target:v11 auditToken:v12 posterProviderBundleIdentifier:v13 invalidationHandler:v44];
  [v3 setObject:v14 forKeyedSubscript:@"posterMemoryAssertion"];

  v15 = [v3 objectForKeyedSubscript:@"posterMemoryAssertion"];
  [v4 bs_safeAddObject:v15];

  v16 = PRLogUpdatingService();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138543362;
    v50 = v17;
    _os_log_impl(&dword_1A8AA7000, v16, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: acquiring %{public}@ assertions", buf, 0xCu);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v4;
  v19 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v41;
    while (2)
    {
      v22 = 0;
      do
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v40 + 1) + 8 * v22);
        v39 = 0;
        v24 = [v23 acquireWithError:&v39];
        v25 = v39;
        v26 = v25;
        if ((v24 & 1) == 0)
        {
          v28 = PRLogUpdatingService();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_47_cold_1();
          }

          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_55;
          v35[3] = &unk_1E7844EE8;
          v29 = *(a1 + 72);
          v36 = v26;
          v30 = *(a1 + 56);
          v31 = *(a1 + 64);
          *&v32 = *(a1 + 48);
          *(&v32 + 1) = v29;
          *&v33 = v30;
          *(&v33 + 1) = v31;
          v37 = v33;
          v38 = v32;
          v34 = v26;
          dispatch_async(MEMORY[0x1E69E96A0], v35);

          v27 = v18;
          goto LABEL_16;
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  v27 = PRLogUpdatingService();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v27, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: all assertions acquired successfully", buf, 2u);
  }

LABEL_16:
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2_52(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRLogUpdatingService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_2_52_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PRLogUpdatingService();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_53_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_55(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 64);

    v2(v3);
  }

  else
  {
    v5 = PFFunctionNameForAddress();
    v4 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    (*(v1 + 16))(v1, v4);
  }
}

void __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PRLogUpdatingService();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_59_cold_1();
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_39;
  }

  v43 = a1;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = [v5 paths];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    *buf = 138543362;
    v59 = v11;
    _os_log_impl(&dword_1A8AA7000, v8, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: updateDescriptors completed, processing %{public}@ paths", buf, 0xCu);
  }

  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v44 = v5;
  obj = [v5 paths];
  v14 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v54;
LABEL_9:
    v17 = 0;
    while (1)
    {
      if (*v54 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v53 + 1) + 8 * v17);
      if ([v18 isServerPosterPath])
      {
        break;
      }

      v22 = [v18 descriptorIdentifier];
      v23 = [v22 length];

      if (v23)
      {
        v24 = PRLogUpdatingService();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v18 descriptorIdentifier];
          *buf = 138543362;
          v59 = v25;
          _os_log_impl(&dword_1A8AA7000, v24, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: processing changed poster path: %{public}@", buf, 0xCu);
        }

        v26 = MEMORY[0x1E69C5178];
        v27 = [v18 descriptorIdentifier];
        v28 = [v18 role];
        v21 = [v26 temporaryDescriptorPathWithIdentifier:v27 role:v28];

        v52 = 0;
        LOBYTE(v26) = [v21 copyContentsOfPath:v18 error:&v52];
        v29 = v52;
        if ((v26 & 1) == 0)
        {
          v38 = PRLogUpdatingService();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_59_cold_2();
          }

          v39 = MEMORY[0x1E698E5F8];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_64;
          v48[3] = &unk_1E7844F38;
          v49 = v12;
          v40 = v43[5];
          v50 = v29;
          v51 = v40;
          v41 = v29;
          v42 = [v39 responderWithHandler:v48];
          v5 = v44;
          [v44 invalidateWithResponder:v42];

          v6 = 0;
          goto LABEL_38;
        }

        v30 = [objc_alloc(MEMORY[0x1E69C4FF0]) _initWithPath:v21];
        [v13 addObject:v30];
        [v12 addObject:v21];

        goto LABEL_21;
      }

LABEL_22:
      if (v15 == ++v17)
      {
        v15 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
        if (v15)
        {
          goto LABEL_9;
        }

        goto LABEL_24;
      }
    }

    v19 = PRLogUpdatingService();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 descriptorIdentifier];
      *buf = 138543362;
      v59 = v20;
      _os_log_impl(&dword_1A8AA7000, v19, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: processing unchanged server poster path: %{public}@", buf, 0xCu);
    }

    v21 = [objc_alloc(MEMORY[0x1E69C5010]) _initWithPath:v18];
    [v13 addObject:v21];
LABEL_21:

    goto LABEL_22;
  }

LABEL_24:

  v31 = PRLogUpdatingService();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
    *buf = 138543362;
    v59 = v32;
    _os_log_impl(&dword_1A8AA7000, v31, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: processed all paths, creating collection with %{public}@ descriptors", buf, 0xCu);
  }

  obj = [objc_alloc(MEMORY[0x1E69C5018]) initWithSet:v13];
  v33 = PRLogUpdatingService();
  v5 = v44;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v33, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: delivering successful result", buf, 2u);
  }

  [v43[4] finishWithResult:obj];
  v34 = PRLogUpdatingService();
  v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
  v6 = 0;
  if (v44)
  {
    if (v35)
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v34, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: invalidating paths assertion", buf, 2u);
    }

    v36 = MEMORY[0x1E698E5F8];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_68;
    v46[3] = &unk_1E7844F60;
    v47 = v43[6];
    v37 = [v36 responderWithHandler:v46];
    [v44 invalidateWithResponder:v37];
  }

  else
  {
    if (v35)
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v34, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: no paths assertion to invalidate", buf, 2u);
    }

    (*(v43[6] + 2))();
  }

LABEL_38:

LABEL_39:
}

uint64_t __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_64(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) removeAllObjects];
  return (*(*(a1 + 48) + 16))();
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) signal])
  {
    v2 = PRLogUpdatingService();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v2, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: invalidating all assertions", buf, 2u);
    }

    [*(a1 + 40) mutateUserInfo:&__block_literal_global_73];
    v3 = PRLogUpdatingService();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: all assertions invalidated", v4, 2u);
    }
  }
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_71(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"finishTaskInterruptable"];
  if (v3)
  {
    v4 = PRLogUpdatingService();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating finishTaskInterruptable", buf, 2u);
    }

    [v3 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"finishTaskInterruptable"];
  }

  v5 = [v2 objectForKeyedSubscript:@"posterRuntimeAssertion"];
  if (v5)
  {
    v6 = PRLogUpdatingService();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "Invalidating posterRuntimeAssertion", v10, 2u);
    }

    [v5 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"posterRuntimeAssertion"];
  }

  v7 = [v2 objectForKeyedSubscript:@"posterMemoryAssertion"];
  if (v7)
  {
    v8 = PRLogUpdatingService();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A8AA7000, v8, OS_LOG_TYPE_DEFAULT, "Invalidating posterMemoryAssertion", v9, 2u);
    }

    [v7 invalidate];
    [v2 setObject:0 forKeyedSubscript:@"posterMemoryAssertion"];
  }
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_74(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) signal])
  {
    if (!v3)
    {
      v3 = [MEMORY[0x1E696ABC0] pr_errorWithCode:0];
    }

    v4 = PRLogUpdatingService();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "pr_updateSuggestions:forConfiguration:sessionInfo: ended with error:%{public}@", &v5, 0xCu);
    }

    [*(a1 + 40) finishWithError:v3];
    (*(*(a1 + 48) + 16))();
  }
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_75(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69C7548];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v4 stringWithFormat:@"Refresh suggestion descriptors for '%@'", v5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_2;
  v11[3] = &unk_1E7844E98;
  v12 = *(a1 + 40);
  v8 = [v3 pf_finishTaskInterruptableWithExplanation:v7 invalidationHandler:v11];
  [v6 setObject:v8 forKeyedSubscript:@"finishTaskInterruptable"];

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_79(uint64_t a1)
{
  v2 = PRLogUpdatingService();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v2, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: starting work on operation queue", buf, 2u);
  }

  v3 = PRLogUpdatingService();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v3, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: creating updating service", buf, 2u);
  }

  v4 = *(a1 + 32);
  v42 = 0;
  v5 = [v4 pr_assetUpdaterWithError:&v42];
  v6 = v42;
  if (v5 && [v5 isValid] && !v6)
  {
    v7 = PRLogUpdatingService();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A8AA7000, v7, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: updating service created successfully", buf, 2u);
    }

    v8 = [v5 auditToken];
    v9 = v8;
    if (v8 && ![v8 isInvalid])
    {
      v14 = PRLogUpdatingService();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A8AA7000, v14, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: audit token validated", buf, 2u);
      }

      v15 = [v5 target];
      if (v15)
      {
        v16 = PRLogUpdatingService();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A8AA7000, v16, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: RBS target obtained", buf, 2u);
        }

        v17 = objc_opt_new();
        v18 = *(a1 + 40);
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_80;
        v35[3] = &unk_1E7844F10;
        v36 = v15;
        v41 = *(a1 + 88);
        v37 = v17;
        v38 = v9;
        v39 = *(a1 + 48);
        v19 = v5;
        v40 = v19;
        v20 = v17;
        [v18 mutateUserInfo:v35];

        v21 = [*(a1 + 56) _path];
        v22 = *(a1 + 64);
        v23 = __PFServerPosterPathFromPFPosterContents();
        v24 = [v22 bs_mapNoNulls:v23];
        v25 = v24;
        v26 = MEMORY[0x1E695E0F0];
        if (v24)
        {
          v26 = v24;
        }

        v27 = v26;

        v28 = *(a1 + 72);
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_5;
        v31[3] = &unk_1E7844F88;
        v33 = *(a1 + 88);
        v32 = *(a1 + 80);
        v34 = *(a1 + 96);
        [v19 updateSuggestionDescriptors:v27 forConfiguration:v21 sessionInfo:v28 completion:v31];

        v6 = 0;
      }

      else
      {
        v29 = PFFunctionNameForAddress();
        v6 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

        v30 = PRLogUpdatingService();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_1();
        }

        (*(*(a1 + 88) + 16))(*(a1 + 88));
      }
    }

    else
    {
      v10 = PFFunctionNameForAddress();
      v6 = PFGeneralErrorFromObjectWithLocalizedFailureReason();

      v11 = PRLogUpdatingService();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_2();
      }

      (*(*(a1 + 88) + 16))(*(a1 + 88));
    }
  }

  else
  {
    if (!v6)
    {
      v12 = PFFunctionNameForAddress();
      v6 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    v13 = PRLogUpdatingService();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34_cold_3();
    }

    (*(*(a1 + 88) + 16))(*(a1 + 88));
  }
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_80(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E69C7548];
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x1E69C5250];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_2_84;
  v39[3] = &unk_1E7844E98;
  v40 = *(a1 + 72);
  v7 = [v4 pf_assertionForTarget:v5 assertionIdentifier:v6 explanation:@"Updating suggestion descriptors" invalidationHandler:v39];
  [v3 setObject:v7 forKeyedSubscript:@"posterRuntimeAssertion"];

  v8 = *(a1 + 40);
  v9 = [v3 objectForKeyedSubscript:@"posterRuntimeAssertion"];
  [v8 bs_safeAddObject:v9];

  v10 = MEMORY[0x1E69C7548];
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_3;
  v37[3] = &unk_1E7844E98;
  v38 = *(a1 + 72);
  v14 = [v10 pf_posterUpdateMemoryAssertionForReason:@"Updating suggestion descriptors" target:v11 auditToken:v12 posterProviderBundleIdentifier:v13 invalidationHandler:v37];
  [v3 setObject:v14 forKeyedSubscript:@"posterMemoryAssertion"];

  v15 = *(a1 + 40);
  v16 = [v3 objectForKeyedSubscript:@"posterMemoryAssertion"];
  [v15 bs_safeAddObject:v16];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = *(a1 + 40);
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * i);
        v32 = 0;
        v23 = [v22 acquireWithError:&v32];
        v24 = v32;
        v25 = v24;
        if ((v23 & 1) == 0)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_4;
          block[3] = &unk_1E7844FD8;
          v31 = *(a1 + 72);
          v28 = *(a1 + 64);
          v29 = v25;
          v30 = *(a1 + 56);
          v26 = v25;
          dispatch_async(MEMORY[0x1E69E96A0], block);

          goto LABEL_11;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 56);
  v3 = PFFunctionNameForAddress();
  v2 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
  (*(v1 + 16))(v1, v2);
}

void __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v30 = a1;
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v31 = v5;
    obj = [v5 paths];
    v8 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v41;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          if ([v12 isServerPosterPath])
          {
            v13 = [objc_alloc(MEMORY[0x1E69C5010]) _initWithPath:v12];
            [v7 addObject:v13];
          }

          else
          {
            v14 = v6;
            v15 = MEMORY[0x1E69C4FF0];
            v16 = [v12 descriptorIdentifier];
            v17 = [v12 role];
            v13 = [v15 mutableDescriptorWithIdentifier:v16 role:v17];

            v18 = [v13 _path];
            v39 = 0;
            v19 = [v18 copyContentsOfPath:v12 error:&v39];
            v20 = v39;

            if (!v19)
            {
              v26 = MEMORY[0x1E698E5F8];
              v35[0] = MEMORY[0x1E69E9820];
              v35[1] = 3221225472;
              v35[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_6;
              v35[3] = &unk_1E7844F38;
              v6 = v14;
              v36 = v14;
              v27 = *(v30 + 40);
              v37 = v20;
              v38 = v27;
              v28 = v20;
              v29 = [v26 responderWithHandler:v35];
              v5 = v31;
              [v31 invalidateWithResponder:v29];

              v25 = obj;
              goto LABEL_17;
            }

            [v7 addObject:v13];
            v6 = v14;
            [v14 addObject:v12];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v21 = *(v30 + 32);
    v22 = [v7 copy];
    [v21 finishWithResult:v22];

    v5 = v31;
    if (v31)
    {
      v23 = MEMORY[0x1E698E5F8];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_7;
      v33[3] = &unk_1E7844F60;
      v34 = *(v30 + 48);
      v24 = [v23 responderWithHandler:v33];
      [v31 invalidateWithResponder:v24];

      v25 = v34;
LABEL_17:
    }

    else
    {
      (*(*(v30 + 48) + 16))();
    }
  }
}

uint64_t __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_6(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  [*(a1 + 32) removeAllObjects];
  return (*(*(a1 + 48) + 16))();
}

@end