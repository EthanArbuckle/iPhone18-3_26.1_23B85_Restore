@interface VUIRedownloadEndpointManager
+ (id)sharedInstance;
- (VUIRedownloadEndpointManager)init;
- (void)_performRedownloadWithType:(int64_t)a3 buyParams:(id)a4 completion:(id)a5;
- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)performRedownloadWithType:(int64_t)a3 buyParams:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5;
- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5;
@end

@implementation VUIRedownloadEndpointManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_17 != -1)
  {
    +[VUIRedownloadEndpointManager sharedInstance];
  }

  v3 = sharedInstance_instance_2;

  return v3;
}

void __46__VUIRedownloadEndpointManager_sharedInstance__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIRedownloadEndpointManager");
  v1 = sLogObject_9;
  sLogObject_9 = v0;

  v2 = objc_alloc_init(VUIRedownloadEndpointManager);
  v3 = sharedInstance_instance_2;
  sharedInstance_instance_2 = v2;
}

- (VUIRedownloadEndpointManager)init
{
  v6.receiver = self;
  v6.super_class = VUIRedownloadEndpointManager;
  v2 = [(VUIRedownloadEndpointManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    pendingRedownloadInfos = v2->_pendingRedownloadInfos;
    v2->_pendingRedownloadInfos = v3;
  }

  return v2;
}

- (void)performRedownloadWithType:(int64_t)a3 buyParams:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (a3)
  {
    v10 = [(VUIRedownloadEndpointManager *)self initialRedownloadInProgress];
    v11 = sLogObject_9;
    v12 = os_log_type_enabled(sLogObject_9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Not starting redownload for download yet since initial one is already in progress.  Will start when initial one is done", buf, 2u);
      }

      v13 = objc_alloc_init(VUIRedownloadInfo);
      [(VUIRedownloadInfo *)v13 setBuyParams:v8];
      [(VUIRedownloadInfo *)v13 setRedownloadType:a3];
      [(VUIRedownloadInfo *)v13 setCompletion:v9];
      v14 = [(VUIRedownloadEndpointManager *)self pendingRedownloadInfos];
      [v14 addObject:v13];
    }

    else
    {
      if (v12)
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "Starting initial redownload for download", buf, 2u);
      }

      [(VUIRedownloadEndpointManager *)self setInitialRedownloadInProgress:1];
      objc_initWeak(buf, self);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __79__VUIRedownloadEndpointManager_performRedownloadWithType_buyParams_completion___block_invoke;
      v15[3] = &unk_1E87321C8;
      objc_copyWeak(&v17, buf);
      v16 = v9;
      [(VUIRedownloadEndpointManager *)self _performRedownloadWithType:a3 buyParams:v8 completion:v15];

      objc_destroyWeak(&v17);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    [(VUIRedownloadEndpointManager *)self _performRedownloadWithType:0 buyParams:v8 completion:v9];
  }
}

void __79__VUIRedownloadEndpointManager_performRedownloadWithType_buyParams_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setInitialRedownloadInProgress:0];
  if (v6 && [VUIPlaybackUtilities isMPMediaLibraryAssociationError:v6])
  {
    v7 = sLogObject_9;
    if (os_log_type_enabled(sLogObject_9, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [WeakRetained pendingRedownloadInfos];
      v10 = [v9 count];
      *buf = 134217984;
      v56 = v10;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "Initial redownload failed because device is not authorized.  Failing %lu pending redownloads", buf, 0xCu);
    }

    v11 = [WeakRetained pendingRedownloadInfos];
    v12 = [v11 copy];

    v13 = [WeakRetained pendingRedownloadInfos];
    [v13 removeAllObjects];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v50;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v50 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v49 + 1) + 8 * i);
          v20 = [v19 completion];

          if (v20)
          {
            v21 = [v19 completion];
            (v21)[2](v21, 0, v6);
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v16);
    }
  }

  v22 = [WeakRetained pendingRedownloadInfos];
  v23 = [v22 count];

  v24 = sLogObject_9;
  v25 = os_log_type_enabled(sLogObject_9, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    v41 = a1;
    v42 = v6;
    if (v25)
    {
      v26 = v24;
      v27 = [WeakRetained pendingRedownloadInfos];
      v28 = [v27 count];
      *buf = 134217984;
      v56 = v28;
      _os_log_impl(&dword_1E323F000, v26, OS_LOG_TYPE_DEFAULT, "Performing %lu pending redownloads now that initial one is done", buf, 0xCu);
    }

    v29 = [WeakRetained pendingRedownloadInfos];
    v30 = [v29 copy];

    v31 = [WeakRetained pendingRedownloadInfos];
    [v31 removeAllObjects];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v32 = v30;
    v33 = [v32 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v46;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v46 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v45 + 1) + 8 * j);
          v38 = [v37 redownloadType];
          v39 = [v37 buyParams];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __79__VUIRedownloadEndpointManager_performRedownloadWithType_buyParams_completion___block_invoke_32;
          v44[3] = &unk_1E87321A0;
          v44[4] = v37;
          [WeakRetained _performRedownloadWithType:v38 buyParams:v39 completion:v44];
        }

        v34 = [v32 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v34);
    }

    v6 = v42;
    a1 = v41;
  }

  else if (v25)
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "After initial redownload, no further pending redownloads exist", buf, 2u);
  }

  v40 = *(a1 + 32);
  if (v40)
  {
    (*(v40 + 16))(v40, v5, v6);
  }
}

void __79__VUIRedownloadEndpointManager_performRedownloadWithType_buyParams_completion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) completion];

  if (v6)
  {
    v7 = [*(a1 + 32) completion];
    (v7)[2](v7, v8, v5);
  }
}

- (void)_performRedownloadWithType:(int64_t)a3 buyParams:(id)a4 completion:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = sLogObject_9;
  if (os_log_type_enabled(sLogObject_9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Download";
    if (!a3)
    {
      v11 = @"Streaming";
    }

    *buf = 138412290;
    v23 = v11;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Starting redownload of type %@", buf, 0xCu);
  }

  v12 = [objc_alloc(MEMORY[0x1E698CAE0]) initWithPurchaseType:0 buyParams:v8];
  if (!a3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v12 setURLBagKey:@"redownloadProduct"];
  }

  [v12 setIgnoreRequirePasswordRestriction:1];
  v13 = [MEMORY[0x1E69D5920] activeAccountForMediaType:*MEMORY[0x1E698C4D0]];
  objc_initWeak(buf, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __80__VUIRedownloadEndpointManager__performRedownloadWithType_buyParams_completion___block_invoke;
  v19[3] = &unk_1E87321F0;
  objc_copyWeak(&v21, buf);
  v14 = v12;
  v20 = v14;
  v15 = [v13 continueWithBlock:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __80__VUIRedownloadEndpointManager__performRedownloadWithType_buyParams_completion___block_invoke_47;
  v17[3] = &unk_1E8732218;
  v16 = v9;
  v18 = v16;
  [v15 resultWithCompletion:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

id __80__VUIRedownloadEndpointManager__performRedownloadWithType_buyParams_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v6)
  {
    if (os_log_type_enabled(sLogObject_9, OS_LOG_TYPE_ERROR))
    {
      __80__VUIRedownloadEndpointManager__performRedownloadWithType_buyParams_completion___block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) setAccount:v5];
  }

  v8 = objc_alloc(MEMORY[0x1E698CAF8]);
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x1E698CAF8] createBagForSubProfile];
  v11 = [v8 initWithPurchase:v9 bag:v10];

  [v11 setDelegate:WeakRetained];
  v12 = [v11 performPurchase];

  return v12;
}

void __80__VUIRedownloadEndpointManager__performRedownloadWithType_buyParams_completion___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v44[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = sLogObject_9;
  if (os_log_type_enabled(sLogObject_9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "Redownload complete", buf, 2u);
  }

  v8 = [v6 userInfo];
  v9 = [v8 vui_dictionaryForKey:*MEMORY[0x1E698C560]];
  v10 = [v9 vui_dictionaryForKey:@"dialog"];

  if (v6)
  {
LABEL_4:
    v11 = [v6 userInfo];
    v12 = [v11 vui_numberForKey:*MEMORY[0x1E698C558]];

    if (v12)
    {
      v13 = [v6 domain];
      v14 = MEMORY[0x1E696AA08];
      if (v13)
      {
        v15 = v13;
        v16 = [v6 userInfo];
        v17 = *v14;
        v18 = [v16 objectForKey:*v14];

        if (!v18)
        {
          v19 = [v6 userInfo];
          v20 = [v19 mutableCopy];

          v21 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = [v21 initWithDomain:*MEMORY[0x1E698C780] code:objc_msgSend(v12 userInfo:{"integerValue"), 0}];
          [v20 setObject:v22 forKey:v17];

          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = [v6 domain];
          v25 = [v23 initWithDomain:v24 code:objc_msgSend(v6 userInfo:{"code"), v20}];

          v6 = v25;
        }
      }

      if ([v12 integerValue] == 5102)
      {
        v43 = *v14;
        v44[0] = v6;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
        v27 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"TVPlaybackErrorDomain" code:812 userInfo:v26];

        v6 = v27;
      }
    }

    if (v10)
    {
      v28 = [v6 userInfo];
      v29 = [v28 mutableCopy];

      [v29 setObject:MEMORY[0x1E695E118] forKey:@"VUIDownloadManagerSuppressErrorDialogKey"];
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v31 = [v6 domain];
      v32 = [v30 initWithDomain:v31 code:objc_msgSend(v6 userInfo:{"code"), v29}];

      v6 = v32;
    }

    if (os_log_type_enabled(sLogObject_9, OS_LOG_TYPE_ERROR))
    {
      __80__VUIRedownloadEndpointManager__performRedownloadWithType_buyParams_completion___block_invoke_47_cold_3();
    }

    v33 = 0;
    goto LABEL_15;
  }

  v36 = [v5 responseDictionary];
  v12 = v36;
  if (!v36)
  {
    v38 = -123007;
    if (os_log_type_enabled(sLogObject_9, OS_LOG_TYPE_ERROR))
    {
      __80__VUIRedownloadEndpointManager__performRedownloadWithType_buyParams_completion___block_invoke_47_cold_2();
    }

LABEL_24:
    v39 = objc_alloc(MEMORY[0x1E696ABC0]);
    v6 = [v39 initWithDomain:VUIStoreMediaItemErrorDomain code:v38 userInfo:0];

    if (!v6)
    {
      v33 = 0;
      goto LABEL_16;
    }

    goto LABEL_4;
  }

  v37 = [v36 objectForKey:@"songList"];
  v33 = [v37 firstObject];

  if (!v33)
  {
    v38 = -123006;
    if (os_log_type_enabled(sLogObject_9, OS_LOG_TYPE_ERROR))
    {
      __80__VUIRedownloadEndpointManager__performRedownloadWithType_buyParams_completion___block_invoke_47_cold_1();
    }

    goto LABEL_24;
  }

  v6 = 0;
LABEL_15:

LABEL_16:
  v40 = v6;
  v41 = *(a1 + 32);
  v34 = v6;
  v35 = v33;
  TVPPerformBlockOnMainThreadIfNeeded();
}

- (void)purchase:(id)a3 handleAuthenticateRequest:(id)a4 completion:(id)a5
{
  v7 = MEMORY[0x1E698C7C8];
  v8 = a5;
  v9 = a4;
  v10 = [v7 alloc];
  v11 = [MEMORY[0x1E698C7C8] createBagForSubProfile];
  v13 = [v10 initWithRequest:v9 bag:v11];

  [v13 setDelegate:self];
  v12 = [v13 performAuthentication];
  [v12 addFinishBlock:v8];
}

- (void)purchase:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v6 = MEMORY[0x1E698CB50];
  v7 = a5;
  v8 = a4;
  v10 = [[v6 alloc] initWithRequest:v8];

  v9 = [v10 present];
  [v9 addFinishBlock:v7];
}

- (void)purchase:(id)a3 handleEngagementRequest:(id)a4 completion:(id)a5
{
  v6 = MEMORY[0x1E698CB58];
  v7 = a5;
  v8 = a4;
  v10 = [[v6 alloc] initWithRequest:v8];

  v9 = [v10 present];
  [v9 addFinishBlock:v7];
}

- (void)authenticateTask:(id)a3 handleDialogRequest:(id)a4 completion:(id)a5
{
  v6 = MEMORY[0x1E698CB50];
  v7 = a5;
  v8 = a4;
  v10 = [[v6 alloc] initWithRequest:v8];

  v9 = [v10 present];
  [v9 addFinishBlock:v7];
}

@end