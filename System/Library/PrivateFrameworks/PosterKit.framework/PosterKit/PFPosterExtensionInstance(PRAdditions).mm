@interface PFPosterExtensionInstance(PRAdditions)
- (id)pr_assetUpdaterWithError:()PRAdditions;
- (id)pr_refreshConfigurationOperationQueue;
- (id)pr_refreshConfigurationOperations;
- (id)pr_reloadDescriptorOperationQueue;
- (id)pr_reloadDescriptorOperations;
- (id)pr_updateDescriptors:()PRAdditions sessionInfo:;
- (id)pr_updateSuggestions:()PRAdditions forConfiguration:sessionInfo:;
- (void)pr_acquireAssetUpdaterWithBlock:()PRAdditions;
- (void)pr_addRefreshConfigurationOperation:()PRAdditions waitUntilFinished:;
- (void)pr_addReloadDescriptorOperation:()PRAdditions;
@end

@implementation PFPosterExtensionInstance(PRAdditions)

- (id)pr_reloadDescriptorOperationQueue
{
  key = a2;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = objc_getAssociatedObject(selfCopy, a2);
  if (!v4)
  {
    instanceIdentifier = [selfCopy instanceIdentifier];
    uUIDString = [instanceIdentifier UUIDString];

    processIdentity = [selfCopy processIdentity];
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.posterboard.reloadDescriptorsQueue-%@-%@", uUIDString, processIdentity];
    [v4 setName:v8];

    [v4 setQualityOfService:25];
    [v4 setMaxConcurrentOperationCount:1];
    objc_setAssociatedObject(selfCopy, &key, v4, 1);
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)pr_refreshConfigurationOperationQueue
{
  key = a2;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = objc_getAssociatedObject(selfCopy, a2);
  if (!v4)
  {
    instanceIdentifier = [selfCopy instanceIdentifier];
    uUIDString = [instanceIdentifier UUIDString];

    processIdentity = [selfCopy processIdentity];
    v4 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.posterboard.refreshConfigurationQueue-%@-%@", uUIDString, processIdentity];
    [v4 setName:v8];

    [v4 setQualityOfService:25];
    [v4 setMaxConcurrentOperationCount:1];
    objc_setAssociatedObject(selfCopy, &key, v4, 1);
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)pr_assetUpdaterWithError:()PRAdditions
{
  v2 = [self bootupExtensionInstanceWithError:?];
  v3 = v2;
  if (v2)
  {
    v4 = MEMORY[0x1E698E620];
    [v2 auditToken];
    v5 = [v4 tokenFromAuditToken:&v11];
    v6 = MEMORY[0x1E69C7640];
    processIdentity = [self processIdentity];
    v8 = [v6 targetWithProcessIdentity:processIdentity];

    v9 = [PRUpdatingService updatingServiceWithProcess:v3 auditToken:v5 target:v8];
    [self addInstanceObserver:v9];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)pr_acquireAssetUpdaterWithBlock:()PRAdditions
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __74__PFPosterExtensionInstance_PRAdditions__pr_acquireAssetUpdaterWithBlock___block_invoke;
  v6[3] = &unk_1E7844E28;
  v5 = v4;
  v6[4] = self;
  v7 = v5;
  objc_copyWeak(&v8, &location);
  [self bootupExtensionInstance:v6];
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

- (id)pr_reloadDescriptorOperations
{
  pr_reloadDescriptorOperationQueue = [self pr_reloadDescriptorOperationQueue];
  operations = [pr_reloadDescriptorOperationQueue operations];

  return operations;
}

- (void)pr_addReloadDescriptorOperation:()PRAdditions
{
  v4 = a3;
  pr_refreshConfigurationOperationQueue = [self pr_refreshConfigurationOperationQueue];
  [pr_refreshConfigurationOperationQueue addOperation:v4];
}

- (id)pr_refreshConfigurationOperations
{
  pr_refreshConfigurationOperationQueue = [self pr_refreshConfigurationOperationQueue];
  operations = [pr_refreshConfigurationOperationQueue operations];

  return operations;
}

- (void)pr_addRefreshConfigurationOperation:()PRAdditions waitUntilFinished:
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  pr_refreshConfigurationOperationQueue = [self pr_refreshConfigurationOperationQueue];
  v9[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  [pr_refreshConfigurationOperationQueue addOperations:v8 waitUntilFinished:a4];
}

- (id)pr_updateDescriptors:()PRAdditions sessionInfo:
{
  v73 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v40 = a4;
  v6 = PRLogUpdatingService();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v41;
    _os_log_impl(&dword_1A8AA7000, v6, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: starting for descriptors: %{pubic}@", &buf, 0xCu);
  }

  v7 = MEMORY[0x1E69C5268];
  pr_reloadDescriptorOperationQueue = [self pr_reloadDescriptorOperationQueue];
  v43 = [v7 operationQueueSchedulerWithOperationQueue:pr_reloadDescriptorOperationQueue qualityOfService:4];

  v9 = objc_alloc_init(MEMORY[0x1E69C5260]);
  future = [v9 future];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke;
  v63[3] = &unk_1E7843070;
  v39 = v11;
  v64 = v39;
  v12 = v10;
  v65 = v12;
  v13 = MEMORY[0x1AC574C60](v63);
  v14 = objc_opt_new();
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_26;
  v59[3] = &unk_1E7844E70;
  v15 = v14;
  v60 = v15;
  v16 = v9;
  v61 = v16;
  v17 = v13;
  v62 = v17;
  v18 = MEMORY[0x1AC574C60](v59);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__5;
  v71 = __Block_byref_object_dispose__5;
  v72 = 0;
  extension = [self extension];
  posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];

  v21 = PRLogUpdatingService();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v66 = 138543362;
    v67 = posterExtensionBundleIdentifier;
    _os_log_impl(&dword_1A8AA7000, v21, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: creating finishTask assertion for bundle: %{public}@", v66, 0xCu);
  }

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_29;
  v55[3] = &unk_1E7844EC0;
  p_buf = &buf;
  v22 = posterExtensionBundleIdentifier;
  v56 = v22;
  v23 = v18;
  v57 = v23;
  [v12 mutateUserInfo:v55];
  v24 = PRLogUpdatingService();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *v66 = 0;
    _os_log_impl(&dword_1A8AA7000, v24, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: acquiring finishTask assertion", v66, 2u);
  }

  v25 = *(*(&buf + 1) + 40);
  v54 = 0;
  [v25 acquireWithError:&v54];
  v26 = v54;
  if (v26)
  {
    v27 = PRLogUpdatingService();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PFPosterExtensionInstance(PRAdditions) pr_updateDescriptors:sessionInfo:];
    }
  }

  else
  {
    v27 = PRLogUpdatingService();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *v66 = 0;
      _os_log_impl(&dword_1A8AA7000, v27, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: finishTask assertion acquired successfully", v66, 2u);
    }
  }

  v28 = PRLogUpdatingService();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *v66 = 0;
    _os_log_impl(&dword_1A8AA7000, v28, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: scheduling work on operation queue", v66, 2u);
  }

  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_34;
  v46[3] = &unk_1E7844FB0;
  v46[4] = self;
  v29 = v23;
  v52 = v29;
  v30 = v12;
  v47 = v30;
  v31 = v22;
  v48 = v31;
  v32 = v41;
  v49 = v32;
  v33 = v40;
  v50 = v33;
  v34 = v16;
  v51 = v34;
  v35 = v17;
  v53 = v35;
  [v43 performBlock:v46];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __75__PFPosterExtensionInstance_PRAdditions__pr_updateDescriptors_sessionInfo___block_invoke_70;
  v44[3] = &unk_1E7844E98;
  v36 = v29;
  v45 = v36;
  v37 = [future timeoutAfter:v44 cleanup:300.0];

  _Block_object_dispose(&buf, 8);

  return future;
}

- (id)pr_updateSuggestions:()PRAdditions forConfiguration:sessionInfo:
{
  v8 = a3;
  v9 = a4;
  v42 = a5;
  v10 = MEMORY[0x1E69C5268];
  pr_reloadDescriptorOperationQueue = [self pr_reloadDescriptorOperationQueue];
  v44 = [v10 operationQueueSchedulerWithOperationQueue:pr_reloadDescriptorOperationQueue qualityOfService:4];

  v12 = objc_alloc_init(MEMORY[0x1E69C5260]);
  future = [v12 future];
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke;
  v72[3] = &unk_1E7843070;
  v41 = v13;
  v73 = v41;
  v15 = v14;
  v74 = v15;
  v16 = MEMORY[0x1AC574C60](v72);
  v17 = objc_opt_new();
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_74;
  v68[3] = &unk_1E7844E70;
  v40 = v17;
  v69 = v40;
  v18 = v12;
  v70 = v18;
  v19 = v16;
  v71 = v19;
  v20 = MEMORY[0x1AC574C60](v68);
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__5;
  v66 = __Block_byref_object_dispose__5;
  v67 = 0;
  extension = [self extension];
  posterExtensionBundleIdentifier = [extension posterExtensionBundleIdentifier];

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_75;
  v58[3] = &unk_1E7844EC0;
  v61 = &v62;
  v23 = posterExtensionBundleIdentifier;
  v59 = v23;
  v24 = v20;
  v60 = v24;
  [v15 mutateUserInfo:v58];
  v25 = v63[5];
  v57 = 0;
  [v25 acquireWithError:&v57];
  v26 = v57;
  if (v26)
  {
    v27 = PRLogUpdatingService();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [PFPosterExtensionInstance(PRAdditions) pr_updateSuggestions:forConfiguration:sessionInfo:];
    }
  }

  v28 = PRLogUpdatingService();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A8AA7000, v28, OS_LOG_TYPE_DEFAULT, "pr_updateDescriptors:sessionInfo: scheduling work on operation queue", buf, 2u);
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_79;
  v47[3] = &unk_1E7845000;
  v47[4] = self;
  v29 = v24;
  v54 = v29;
  v30 = v15;
  v48 = v30;
  v31 = v23;
  v49 = v31;
  v32 = v9;
  v50 = v32;
  v33 = v8;
  v51 = v33;
  v34 = v42;
  v52 = v34;
  v35 = v18;
  v53 = v35;
  v36 = v19;
  v55 = v36;
  [v44 performBlock:v47];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __92__PFPosterExtensionInstance_PRAdditions__pr_updateSuggestions_forConfiguration_sessionInfo___block_invoke_8;
  v45[3] = &unk_1E7844E98;
  v37 = v29;
  v46 = v37;
  v38 = [future timeoutAfter:v45 cleanup:300.0];

  _Block_object_dispose(&v62, 8);

  return future;
}

@end