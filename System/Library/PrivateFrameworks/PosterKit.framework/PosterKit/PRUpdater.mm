@interface PRUpdater
- (BOOL)shouldAcceptConnection:(id)connection;
- (PRUpdater)initWithDelegate:(id)delegate;
- (void)_dequeueNextCallOutIfPossible;
- (void)_disconnect:(id)_disconnect;
- (void)_enqueueCallOut:(id)out;
- (void)updateConfiguration:(id)configuration sessionInfo:(id)info completion:(id)completion;
- (void)updateDescriptors:(id)descriptors sessionInfo:(id)info completion:(id)completion;
- (void)updateSuggestionDescriptors:(id)descriptors forConfiguration:(id)configuration sessionInfo:(id)info completion:(id)completion;
@end

@implementation PRUpdater

- (PRUpdater)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    [PRUpdater initWithDelegate:a2];
  }

  v7 = delegateCopy;
  v17.receiver = self;
  v17.super_class = PRUpdater;
  v8 = [(PRUpdater *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_delegate, delegate);
    Serial = BSDispatchQueueCreateSerial();
    queue = v9->_queue;
    v9->_queue = Serial;

    v12 = [MEMORY[0x1E695DFA8] set];
    lock_connections = v9->_lock_connections;
    v9->_lock_connections = v12;

    array = [MEMORY[0x1E695DF70] array];
    lock_callOutBlocks = v9->_lock_callOutBlocks;
    v9->_lock_callOutBlocks = array;
  }

  return v9;
}

- (BOOL)shouldAcceptConnection:(id)connection
{
  connectionCopy = connection;
  os_unfair_lock_lock(&self->_lock);
  if ([(NSMutableSet *)self->_lock_connections containsObject:connectionCopy])
  {
    [PRUpdater shouldAcceptConnection:a2];
  }

  [(NSMutableSet *)self->_lock_connections addObject:connectionCopy];
  os_unfair_lock_unlock(&self->_lock);
  objc_initWeak(&location, connectionCopy);
  [connectionCopy _setQueue:self->_queue];
  v6 = +[PRUpdatingService interfaceToExtension];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__PRUpdater_shouldAcceptConnection___block_invoke;
  v8[3] = &unk_1E7843AD0;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [connectionCopy setInvalidationHandler:v8];
  [connectionCopy activate];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return 1;
}

void __36__PRUpdater_shouldAcceptConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = PRSLogPosterContents();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __36__PRUpdater_shouldAcceptConnection___block_invoke_cold_1();
  }

  [*(a1 + 32) _disconnect:WeakRetained];
}

- (void)updateDescriptors:(id)descriptors sessionInfo:(id)info completion:(id)completion
{
  descriptorsCopy = descriptors;
  infoCopy = info;
  completionCopy = completion;
  v12 = MEMORY[0x1E698E620];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v14 = [v12 tokenFromNSXPCConnection:currentConnection];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke;
  v19[3] = &unk_1E78459C8;
  v23 = completionCopy;
  v24 = a2;
  v19[4] = self;
  v20 = descriptorsCopy;
  v21 = v14;
  v22 = infoCopy;
  v15 = infoCopy;
  v16 = v14;
  v17 = descriptorsCopy;
  v18 = completionCopy;
  [(PRUpdater *)self _enqueueCallOut:v19];
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2;
  v38[3] = &unk_1E7845978;
  v8 = v7;
  v9 = *(a1 + 64);
  v45 = *(a1 + 72);
  v10 = *(a1 + 32);
  v39 = v8;
  v40 = v10;
  v43 = v9;
  v11 = v6;
  v44 = v11;
  v41 = *(a1 + 40);
  v42 = *(a1 + 48);
  v12 = MEMORY[0x1AC574C60](v38);
  v13 = dispatch_time(0, 0x14F46B0000);
  v14 = [MEMORY[0x1E69C51F0] sharedWorkloop];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_54;
  block[3] = &unk_1E78459A0;
  v15 = v8;
  v35 = v15;
  v36 = *(a1 + 64);
  v16 = v11;
  v37 = v16;
  dispatch_after(v13, v14, block);

  if ([*(a1 + 48) hasEntitlement:@"com.apple.runningboard.posterkit.host"])
  {
    v28 = v16;
    v29 = v5;
    v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v18 = *(a1 + 40);
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v31;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [[PRPosterDescriptor alloc] _initWithPath:*(*(&v30 + 1) + 8 * i)];
          v24 = [v23 identifier];
          [v17 setObject:v23 forKey:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v30 objects:v46 count:16];
      }

      while (v20);
    }

    v5 = v29;
    if (objc_opt_respondsToSelector())
    {
      v25 = [[PRUpdatingSessionInfo alloc] _initWithInfo:?];
      [v29 updateDescriptors:v17 withSessionInfo:v25 completion:v12];

      v16 = v28;
    }

    else
    {
      v16 = v28;
      if (objc_opt_respondsToSelector())
      {
        [v29 updateDescriptors:v17 completion:v12];
      }

      else
      {
        v27 = [MEMORY[0x1E696ABC0] pr_errorWithCode:2];
        (v12)[2](v12, 0, v27);
      }
    }
  }

  else
  {
    if ([*(a1 + 48) isInvalid])
    {
      v26 = 5;
    }

    else
    {
      v26 = 6;
    }

    v17 = [MEMORY[0x1E696ABC0] pr_errorWithCode:v26];
    (v12)[2](v12, 0, v17);
  }
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v53 = a1;
  if ([*(a1 + 32) signal])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
    if (v8)
    {
      NSClassFromString(&cfstr_Nsarray.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_1(v53);
      }
    }

    context = v7;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v63 objects:v74 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v64;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v64 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v63 + 1) + 8 * i);
          NSClassFromString(&cfstr_Prposterdescri_6.isa);
          if (!v14)
          {
            __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_3(v53);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_2(v53);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v63 objects:v74 count:16];
      }

      while (v11);
    }

    if (v8)
    {
      if (v6)
      {
        v15 = PRSLogPosterContents();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_4();
        }
      }

      v16 = [v9 count];
      v49 = [MEMORY[0x1E695DF70] arrayWithCapacity:v16];
      v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:v16];
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v9;
      v17 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
      if (v17)
      {
        v18 = v17;
        v52 = *v60;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v60 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v59 + 1) + 8 * j);
            v21 = [v20 _path];
            v22 = [v21 descriptorIdentifier];
            if (![v22 length])
            {
              __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_6(v20, v53);
            }

            v23 = v53[6];
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_42;
            v57[3] = &unk_1E7845950;
            v24 = v22;
            v58 = v24;
            v25 = [v23 bs_firstObjectPassingTest:v57];
            v26 = v25;
            if (v21)
            {
              v27 = v25 == 0;
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              v28 = [v21 role];
              v29 = [v26 role];
              v30 = [v28 isEqual:v29];

              if ((v30 & 1) == 0)
              {
                __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_5(v20, v53);
              }
            }

            v31 = [v21 serverIdentity];

            if (v31)
            {
              [v51 addObject:v21];
            }

            else
            {
              v32 = v53[7];
              v56 = 0;
              v33 = [v21 extendContentsReadAccessToAuditToken:v32 error:&v56];
              v34 = v56;
              if (v33)
              {
                v35 = [v21 extendValidityForReason:@"updateDescriptors-result"];
                if (v35)
                {
                  [v49 addObject:v35];
                }

                [v51 addObject:v33];
              }

              else
              {
                v35 = PRSLogPosterContents();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
                {
                  v48 = [MEMORY[0x1E696AAE8] mainBundle];
                  v47 = [v48 bundleIdentifier];
                  *buf = 138412802;
                  v68 = v47;
                  v69 = 2112;
                  v70 = v34;
                  v71 = 2112;
                  v72 = v20;
                  _os_log_fault_impl(&dword_1A8AA7000, v35, OS_LOG_TYPE_FAULT, "PRUpdater %@ failed to extend access of replacement descriptor to server with error=%@ : %@", buf, 0x20u);
                }
              }
            }
          }

          v18 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
        }

        while (v18);
      }

      v36 = [v49 count];
      v37 = objc_alloc(MEMORY[0x1E69C5180]);
      v38 = v37;
      if (v36)
      {
        v39 = [MEMORY[0x1E69C51F0] sharedWorkloop];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_52;
        v54[3] = &unk_1E7843688;
        v55 = v49;
        v40 = v51;
        v41 = [v38 initWithPaths:v51 queue:v39 invalidationHandler:v54];
      }

      else
      {
        v40 = v51;
        v41 = [v37 initWithPaths:v51];
      }

      v6 = v44;
      v5 = v45;
      v43 = context;
      (*(v53[8] + 16))();
      (*(v53[9] + 16))();
    }

    else
    {
      v42 = PRSLogPosterContents();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_7();
      }

      (*(v53[8] + 16))();
      (*(v53[9] + 16))();
      v43 = context;
    }

    objc_autoreleasePoolPop(v43);
  }
}

uint64_t __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_42(uint64_t a1, void *a2)
{
  v3 = [a2 descriptorIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_52(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) invalidate];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_54(uint64_t a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) signal];
  v3 = PRSLogPosterContents();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_54_cold_1();
    }

    v5 = *(a1 + 40);
    v6 = MEMORY[0x1E696ABC0];
    v17[0] = *MEMORY[0x1E696A588];
    v17[1] = @"clientBundleIdentifier";
    v18[0] = @"Client timed out";
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v7 bundleIdentifier];
    v9 = v8;
    v10 = @"(null bundleIdentifier)";
    if (v8)
    {
      v10 = v8;
    }

    v18[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v12 = [v6 pr_errorWithCode:7 userInfo:v11];
    (*(v5 + 16))(v5, 0, v12);

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x1E696AAE8] mainBundle];
      v14 = [v13 bundleIdentifier];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "PRUpdater %@ ran successfully", &v15, 0xCu);
    }
  }
}

- (void)updateConfiguration:(id)configuration sessionInfo:(id)info completion:(id)completion
{
  configurationCopy = configuration;
  infoCopy = info;
  completionCopy = completion;
  v12 = MEMORY[0x1E698E620];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v14 = [v12 tokenFromNSXPCConnection:currentConnection];

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke;
  v19[3] = &unk_1E78459C8;
  v23 = completionCopy;
  v24 = a2;
  v19[4] = self;
  v20 = configurationCopy;
  v21 = v14;
  v22 = infoCopy;
  v15 = infoCopy;
  v16 = v14;
  v17 = configurationCopy;
  v18 = completionCopy;
  [(PRUpdater *)self _enqueueCallOut:v19];
}

void __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2;
  v27[3] = &unk_1E78459F0;
  v8 = v7;
  v9 = *(a1 + 64);
  v34 = *(a1 + 72);
  v10 = *(a1 + 32);
  v28 = v8;
  v29 = v10;
  v32 = v9;
  v11 = v6;
  v33 = v11;
  v30 = *(a1 + 40);
  v31 = *(a1 + 48);
  v12 = MEMORY[0x1AC574C60](v27);
  v13 = dispatch_time(0, 0x14F46B0000);
  v14 = [MEMORY[0x1E69C51F0] sharedWorkloop];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_89;
  v23 = &unk_1E78459A0;
  v15 = v8;
  v24 = v15;
  v25 = *(a1 + 64);
  v16 = v11;
  v26 = v16;
  dispatch_after(v13, v14, &v20);

  if ([*(a1 + 48) hasEntitlement:{@"com.apple.runningboard.posterkit.host", v20, v21, v22, v23}])
  {
    if (*(a1 + 40))
    {
      v17 = [[PRPosterConfiguration alloc] _initWithPath:*(a1 + 40)];
      if (objc_opt_respondsToSelector())
      {
        v18 = [[PRUpdatingSessionInfo alloc] _initWithInfo:?];
        [v5 updateConfiguration:v17 withSessionInfo:v18 completion:v12];
LABEL_13:

        goto LABEL_14;
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v18 = [MEMORY[0x1E696ABC0] pr_errorWithCode:2];
        (v12)[2](v12, 0, v18);
        goto LABEL_13;
      }

      [v5 updateConfiguration:v17 completion:v12];
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] pr_errorWithCode:1];
      (v12)[2](v12, 0, v17);
    }
  }

  else
  {
    if ([*(a1 + 48) isInvalid])
    {
      v19 = 5;
    }

    else
    {
      v19 = 6;
    }

    v17 = [MEMORY[0x1E696ABC0] pr_errorWithCode:v19];
    (v12)[2](v12, 0, v17);
  }

LABEL_14:
}

void __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) signal])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
    if (!v8)
    {
      v21 = PRSLogPosterContents();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_cold_5();
      }

      (*(*(a1 + 64) + 16))();
      (*(*(a1 + 72) + 16))();
      goto LABEL_24;
    }

    v9 = v8;
    NSClassFromString(&cfstr_Prposterconfig.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_cold_1(a1);
    }

    if (v6)
    {
      v10 = PRSLogPosterContents();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_cold_2();
      }
    }

    v11 = [v9 _path];
    v12 = [v11 role];
    v13 = [*(a1 + 48) role];
    v14 = [v12 isEqual:v13];

    if ((v14 & 1) == 0)
    {
      __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_cold_3(v9, a1);
    }

    v15 = [v11 serverIdentity];

    if (v15)
    {
      if (!v11)
      {
        v19 = 0;
        v20 = 0;
        v18 = 0;
LABEL_23:
        (*(*(a1 + 64) + 16))();
        (*(*(a1 + 72) + 16))();

LABEL_24:
        objc_autoreleasePoolPop(v7);
        goto LABEL_25;
      }
    }

    else
    {
      v22 = *(a1 + 56);
      v30 = 0;
      v20 = [v11 extendContentsReadAccessToAuditToken:v22 error:&v30];
      v17 = v30;
      if (!v20)
      {

        v27 = PRSLogPosterContents();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_cold_4();
        }

        v19 = 0;
        v20 = 0;
        v18 = 0;
        goto LABEL_22;
      }

      v23 = [v11 extendValidityForReason:@"updateConfiguration-result"];

      if (v23)
      {
        v24 = objc_alloc(MEMORY[0x1E69C5180]);
        v32[0] = v20;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
        v26 = [MEMORY[0x1E69C51F0] sharedWorkloop];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_87;
        v28[3] = &unk_1E7843688;
        v19 = v23;
        v29 = v19;
        v18 = [v24 initWithPaths:v25 queue:v26 invalidationHandler:v28];

        v17 = v29;
        goto LABEL_22;
      }

      v11 = v20;
    }

    v16 = objc_alloc(MEMORY[0x1E69C5180]);
    v31 = v11;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v18 = [v16 initWithPaths:v17];
    v19 = 0;
    v20 = v11;
LABEL_22:

    goto LABEL_23;
  }

LABEL_25:
}

void __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_89(uint64_t a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) signal];
  v3 = PRSLogPosterContents();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_89_cold_1();
    }

    v5 = *(a1 + 40);
    v6 = MEMORY[0x1E696ABC0];
    v17[0] = *MEMORY[0x1E696A588];
    v17[1] = @"clientBundleIdentifier";
    v18[0] = @"Client timed out";
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v7 bundleIdentifier];
    v9 = v8;
    v10 = @"(null bundleIdentifier)";
    if (v8)
    {
      v10 = v8;
    }

    v18[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v12 = [v6 pr_errorWithCode:7 userInfo:v11];
    (*(v5 + 16))(v5, 0, v12);

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x1E696AAE8] mainBundle];
      v14 = [v13 bundleIdentifier];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "PRUpdater %@ ran updateConfiguration successfully", &v15, 0xCu);
    }
  }
}

- (void)updateSuggestionDescriptors:(id)descriptors forConfiguration:(id)configuration sessionInfo:(id)info completion:(id)completion
{
  descriptorsCopy = descriptors;
  configurationCopy = configuration;
  infoCopy = info;
  completionCopy = completion;
  v15 = MEMORY[0x1E698E620];
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  v17 = [v15 tokenFromNSXPCConnection:currentConnection];

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke;
  v23[3] = &unk_1E7845A60;
  v28 = completionCopy;
  v29 = a2;
  v23[4] = self;
  v24 = descriptorsCopy;
  v25 = v17;
  v26 = configurationCopy;
  v27 = infoCopy;
  v18 = infoCopy;
  v19 = configurationCopy;
  v20 = v17;
  v21 = descriptorsCopy;
  v22 = completionCopy;
  [(PRUpdater *)self _enqueueCallOut:v23];
}

void __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2;
  v28[3] = &unk_1E7845A18;
  v8 = v7;
  v29 = v8;
  v33 = *(a1 + 72);
  v9 = v6;
  v10 = *(a1 + 80);
  v34 = v9;
  v35 = v10;
  v11 = *(a1 + 40);
  v30 = *(a1 + 32);
  v31 = v11;
  v32 = *(a1 + 48);
  v12 = MEMORY[0x1AC574C60](v28);
  v13 = dispatch_time(0, 0x14F46B0000);
  v14 = [MEMORY[0x1E69C51F0] sharedWorkloop];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_106;
  v24 = &unk_1E78459A0;
  v15 = v8;
  v25 = v15;
  v26 = *(a1 + 72);
  v16 = v9;
  v27 = v16;
  dispatch_after(v13, v14, &v21);

  if ([*(a1 + 48) hasEntitlement:{@"com.apple.runningboard.posterkit.host", v21, v22, v23, v24}])
  {
    v17 = [[PRPosterConfiguration alloc] _initWithPath:*(a1 + 56)];
    v18 = [*(a1 + 40) bs_mapNoNulls:&__block_literal_global_48];
    if (objc_opt_respondsToSelector())
    {
      v19 = [[PRUpdatingSessionInfo alloc] _initWithInfo:?];
      [v5 updateSuggestionDescriptors:v18 forConfiguration:v17 withSessionInfo:v19 completion:v12];
    }

    else
    {
      v19 = [MEMORY[0x1E696ABC0] pr_errorWithCode:2];
      (v12)[2](v12, 0, v19);
    }
  }

  else
  {
    if ([*(a1 + 48) isInvalid])
    {
      v20 = 5;
    }

    else
    {
      v20 = 6;
    }

    v17 = [MEMORY[0x1E696ABC0] pr_errorWithCode:v20];
    (v12)[2](v12, 0, v17);
  }
}

void __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v52 = a1;
  if ([*(a1 + 32) signal])
  {
    v7 = objc_autoreleasePoolPush();
    if (v6)
    {
      v8 = a1;
      v9 = *(*(a1 + 64) + 16);
    }

    else
    {
      v10 = v5;
      if (v10)
      {
        NSClassFromString(&cfstr_Nsarray.isa);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_1(a1);
        }
      }

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v62 objects:v73 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v63;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v63 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v62 + 1) + 8 * i);
            NSClassFromString(&cfstr_Prposterdescri_6.isa);
            if (!v16)
            {
              __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_3(v52);
            }

            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_2(v52);
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v62 objects:v73 count:16];
        }

        while (v13);
      }

      if (v10)
      {
        v44 = v7;
        v45 = v5;
        v17 = [v11 count];
        v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:v17];
        v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:v17];
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = v11;
        v18 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
        if (v18)
        {
          v19 = v18;
          v51 = *v59;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v59 != v51)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v58 + 1) + 8 * j);
              v22 = [v21 _path];
              v23 = [v22 descriptorIdentifier];
              if (![v23 length])
              {
                __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_5(v21, v52);
              }

              v24 = v52[6];
              v56[0] = MEMORY[0x1E69E9820];
              v56[1] = 3221225472;
              v56[2] = __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_98;
              v56[3] = &unk_1E7845950;
              v25 = v23;
              v57 = v25;
              v26 = [v24 bs_firstObjectPassingTest:v56];
              v27 = v26;
              if (v22)
              {
                v28 = v26 == 0;
              }

              else
              {
                v28 = 1;
              }

              if (!v28)
              {
                v29 = [v22 role];
                v30 = [v27 role];
                v31 = [v29 isEqual:v30];

                if ((v31 & 1) == 0)
                {
                  __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_4(v21, v52);
                }
              }

              v32 = [v22 serverIdentity];

              if (v32)
              {
                [v50 addObject:v22];
              }

              else
              {
                v33 = v52[7];
                v55 = 0;
                v34 = [v22 extendContentsReadAccessToAuditToken:v33 error:&v55];
                v35 = v55;
                if (v34)
                {
                  v36 = [v22 extendValidityForReason:@"updateSuggestionDescriptors-result"];
                  if (v36)
                  {
                    [v48 addObject:v36];
                  }

                  [v50 addObject:v34];
                }

                else
                {
                  v36 = PRSLogPosterContents();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
                  {
                    v47 = [MEMORY[0x1E696AAE8] mainBundle];
                    v46 = [v47 bundleIdentifier];
                    *buf = 138412802;
                    v67 = v46;
                    v68 = 2112;
                    v69 = v35;
                    v70 = 2112;
                    v71 = v21;
                    _os_log_fault_impl(&dword_1A8AA7000, v36, OS_LOG_TYPE_FAULT, "PRUpdater %@ failed to extend access of replacement suggestion descriptor to server with error=%@ : %@", buf, 0x20u);
                  }
                }
              }
            }

            v19 = [obj countByEnumeratingWithState:&v58 objects:v72 count:16];
          }

          while (v19);
        }

        v37 = [v48 count];
        v38 = objc_alloc(MEMORY[0x1E69C5180]);
        v39 = v38;
        if (v37)
        {
          v40 = [MEMORY[0x1E69C51F0] sharedWorkloop];
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 3221225472;
          v53[2] = __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_105;
          v53[3] = &unk_1E7843688;
          v54 = v48;
          v41 = v50;
          v42 = [v39 initWithPaths:v50 queue:v40 invalidationHandler:v53];
        }

        else
        {
          v41 = v50;
          v42 = [v38 initWithPaths:v50];
        }

        v6 = 0;
        v5 = v45;
        v7 = v44;
        (*(v52[8] + 16))();
        (*(v52[9] + 16))();

        goto LABEL_5;
      }

      v43 = PRSLogPosterContents();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_6();
      }

      v8 = v52;
      v9 = *(v52[8] + 16);
    }

    v9();
    (*(v8[9] + 16))();
LABEL_5:
    objc_autoreleasePoolPop(v7);
  }
}

uint64_t __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_98(uint64_t a1, void *a2)
{
  v3 = [a2 descriptorIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_105(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) invalidate];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_106(uint64_t a1)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) signal];
  v3 = PRSLogPosterContents();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_106_cold_1();
    }

    v5 = *(a1 + 40);
    v6 = MEMORY[0x1E696ABC0];
    v17[0] = *MEMORY[0x1E696A588];
    v17[1] = @"clientBundleIdentifier";
    v18[0] = @"Client timed out";
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v7 bundleIdentifier];
    v9 = v8;
    v10 = @"(null bundleIdentifier)";
    if (v8)
    {
      v10 = v8;
    }

    v18[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v12 = [v6 pr_errorWithCode:7 userInfo:v11];
    (*(v5 + 16))(v5, 0, v12);

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x1E696AAE8] mainBundle];
      v14 = [v13 bundleIdentifier];
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_1A8AA7000, v4, OS_LOG_TYPE_DEFAULT, "PRUpdater updateSuggestionDescriptors for %@ ran successfully", &v15, 0xCu);
    }
  }
}

id __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_107(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[PRPosterDescriptor alloc] _initWithPath:v2];

  return v3;
}

- (void)_enqueueCallOut:(id)out
{
  outCopy = out;
  v5 = objc_autoreleasePoolPush();
  v6 = [outCopy copy];
  os_unfair_lock_lock(&self->_lock);
  lock_callOutBlocks = self->_lock_callOutBlocks;
  v8 = MEMORY[0x1AC574C60](v6);
  [(NSMutableArray *)lock_callOutBlocks addObject:v8];

  os_unfair_lock_unlock(&self->_lock);
  v9 = PRSLogPosterContents();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PRUpdater _enqueueCallOut:];
  }

  objc_autoreleasePoolPop(v5);
  [(PRUpdater *)self _dequeueNextCallOutIfPossible];
}

- (void)_dequeueNextCallOutIfPossible
{
  v11 = *MEMORY[0x1E69E9840];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v6 = MEMORY[0x1AC574C60](self);
  v7 = 138412546;
  v8 = bundleIdentifier;
  v9 = 2112;
  v10 = v6;
  _os_log_debug_impl(&dword_1A8AA7000, a2, OS_LOG_TYPE_DEBUG, "PRUpdater %@: calling dequeued delegate block %@", &v7, 0x16u);
}

void __42__PRUpdater__dequeueNextCallOutIfPossible__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__PRUpdater__dequeueNextCallOutIfPossible__block_invoke_2;
  block[3] = &unk_1E7843B20;
  objc_copyWeak(&v3, (a1 + 40));
  dispatch_async(v1, block);
  objc_destroyWeak(&v3);
}

void __42__PRUpdater__dequeueNextCallOutIfPossible__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _dequeueNextCallOutIfPossible];
    WeakRetained = v2;
  }
}

- (void)_disconnect:(id)_disconnect
{
  _disconnectCopy = _disconnect;
  os_unfair_lock_lock(&self->_lock);
  if (([(NSMutableSet *)self->_lock_connections containsObject:_disconnectCopy]& 1) == 0)
  {
    [PRUpdater _disconnect:a2];
  }

  [(NSMutableSet *)self->_lock_connections removeObject:_disconnectCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)initWithDelegate:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"delegate", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)shouldAcceptConnection:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"![_lock_connections containsObject:connection]", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __36__PRUpdater_shouldAcceptConnection___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a1 + 80));
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_7();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_2(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a1 + 80));
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_7();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:PRPosterDescriptorClass]", v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_3(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a1 + 80));
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_7();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_bs_assert_object != nil", v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_10();
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_5(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v13 = [a1 descriptorIdentifier];
  v14 = a1;
  v5 = [v4 stringWithFormat:@"replaced descriptor '%@' has changed its role? : %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a2 + 80));
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_7();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_6(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"replacement descriptor doesn't look valid : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a2 + 80));
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_7();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_cold_7()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __54__PRUpdater_updateDescriptors_sessionInfo_completion___block_invoke_2_54_cold_1()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_3();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a1 + 80));
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_7();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:PRPosterConfigurationClass]", v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_10();
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_cold_3(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v13 = [a1 descriptorIdentifier];
  v14 = a1;
  v5 = [v4 stringWithFormat:@"replaced configuration '%@' has changed its role? : %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a2 + 80));
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_7();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_cold_4()
{
  OUTLINED_FUNCTION_10();
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_4_3();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x20u);
}

void __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_cold_5()
{
  OUTLINED_FUNCTION_1();
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __56__PRUpdater_updateConfiguration_sessionInfo_completion___block_invoke_2_89_cold_1()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_3();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

void __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a1 + 80));
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_7();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_2(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a1 + 80));
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_7();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_bs_assert_object isKindOfClass:PRPosterDescriptorClass]", v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_3(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a1 + 80));
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_7();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"_bs_assert_object != nil", v11, v12);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_4(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E696AEC0];
  v13 = [a1 descriptorIdentifier];
  v14 = a1;
  v5 = [v4 stringWithFormat:@"replaced suggestion descriptor '%@' has changed its role? : %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a2 + 80));
    objc_claimAutoreleasedReturnValue();
    v6 = OUTLINED_FUNCTION_7();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v5 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_5(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"replacement suggestion descriptor doesn't look valid : %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(*(a2 + 80));
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_7();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_cold_6()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_10();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __81__PRUpdater_updateSuggestionDescriptors_forConfiguration_sessionInfo_completion___block_invoke_2_106_cold_1()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_4_3();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

- (void)_enqueueCallOut:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v1 bundleIdentifier];
  v7 = MEMORY[0x1AC574C60](v0);
  OUTLINED_FUNCTION_4_3();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

- (void)_disconnect:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_2(&dword_1A8AA7000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[_lock_connections containsObject:connection]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end