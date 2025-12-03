@interface TVRCUpNextController
- (void)_fetchPlayableOpenURLForMediaIdentifier:(id)identifier type:(int64_t)type completion:(id)completion;
- (void)_fetchUpNextInfosWithPaginationToken:(id)token completion:(id)completion;
- (void)_openURL:(id)l completion:(id)completion;
- (void)_openURLString:(id)string completion:(id)completion;
- (void)_playItemForMediaIdentifier:(id)identifier kind:(unint64_t)kind completion:(id)completion;
- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)fetchUpNextInfosWithPaginationToken:(id)token completion:(id)completion;
- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)playItem:(id)item completion:(id)completion;
- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion;
@end

@implementation TVRCUpNextController

- (void)fetchUpNextInfosWithPaginationToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  fetchUpNextInfosImpl = [(TVRCUpNextController *)self fetchUpNextInfosImpl];

  if (fetchUpNextInfosImpl)
  {
    fetchUpNextInfosImpl2 = [(TVRCUpNextController *)self fetchUpNextInfosImpl];
    (fetchUpNextInfosImpl2)[2](fetchUpNextInfosImpl2, tokenCopy, completionCopy);
  }

  else
  {
    [(TVRCUpNextController *)self _fetchUpNextInfosWithPaginationToken:tokenCopy completion:completionCopy];
  }
}

- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = [objc_alloc(MEMORY[0x277D7A950]) initWithItemID:identifierCopy];
  objc_initWeak(&location, v7);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __68__TVRCUpNextController_markAsWatchedWithMediaIdentifier_completion___block_invoke;
  v14 = &unk_279D82430;
  objc_copyWeak(&v17, &location);
  v8 = identifierCopy;
  v15 = v8;
  v9 = completionCopy;
  v16 = v9;
  [v7 setCompletionBlock:&v11];
  wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [wlkDefaultQueue addOperation:v7];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __68__TVRCUpNextController_markAsWatchedWithMediaIdentifier_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained error];
  if (v3)
  {
    v4 = _TVRCRapportLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __68__TVRCUpNextController_markAsWatchedWithMediaIdentifier_completion___block_invoke_cold_1(a1);
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__TVRCUpNextController_markAsWatchedWithMediaIdentifier_completion___block_invoke_1;
  v7[3] = &unk_279D82408;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = [objc_alloc(MEMORY[0x277D7A928]) initWithCanonicalID:identifierCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__TVRCUpNextController_addItemWithMediaIdentifier_completion___block_invoke;
  v10[3] = &unk_279D82458;
  v11 = identifierCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  [v7 makeRequestWithCompletion:v10];
}

void __62__TVRCUpNextController_addItemWithMediaIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _TVRCRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __62__TVRCUpNextController_addItemWithMediaIdentifier_completion___block_invoke_cold_1(a1);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__TVRCUpNextController_addItemWithMediaIdentifier_completion___block_invoke_4;
  v8[3] = &unk_279D82408;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v7 = [objc_alloc(MEMORY[0x277D7A960]) initWithCanonicalID:identifierCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__TVRCUpNextController_removeItemWithMediaIdentifier_completion___block_invoke;
  v10[3] = &unk_279D82458;
  v11 = identifierCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  [v7 makeRequestWithCompletion:v10];
}

void __65__TVRCUpNextController_removeItemWithMediaIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _TVRCRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __65__TVRCUpNextController_removeItemWithMediaIdentifier_completion___block_invoke_cold_1(a1);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__TVRCUpNextController_removeItemWithMediaIdentifier_completion___block_invoke_7;
  v8[3] = &unk_279D82408;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

- (void)playItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  if ([itemCopy hasMediaIdentifierAndKind])
  {
    mediaIdentifier = [itemCopy mediaIdentifier];
    kind = [itemCopy kind];
    -[TVRCUpNextController _playItemForMediaIdentifier:kind:completion:](self, "_playItemForMediaIdentifier:kind:completion:", mediaIdentifier, [kind integerValue], completionCopy);

LABEL_5:
    goto LABEL_9;
  }

  if ([itemCopy hasURL])
  {
    mediaIdentifier = [itemCopy url];
    [(TVRCUpNextController *)self _openURL:mediaIdentifier completion:completionCopy];
    goto LABEL_5;
  }

  v10 = _TVRCRapportLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [TVRCUpNextController playItem:v10 completion:?];
  }

  completionCopy[2](completionCopy, 0);
LABEL_9:
}

- (void)_playItemForMediaIdentifier:(id)identifier kind:(unint64_t)kind completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = 3;
  if (kind != 1)
  {
    v10 = 1;
  }

  if (kind == 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__TVRCUpNextController__playItemForMediaIdentifier_kind_completion___block_invoke;
  v13[3] = &unk_279D82480;
  objc_copyWeak(&v15, &location);
  v12 = completionCopy;
  v14 = v12;
  [(TVRCUpNextController *)self _fetchPlayableOpenURLForMediaIdentifier:identifierCopy type:v11 completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __68__TVRCUpNextController__playItemForMediaIdentifier_kind_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _openURLString:v3 completion:*(a1 + 32)];
}

- (void)_fetchUpNextInfosWithPaginationToken:(id)token completion:(id)completion
{
  tokenCopy = token;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x277D7A940]) initWithQueryParameters:0];
  objc_initWeak(&location, v8);
  objc_initWeak(&from, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke;
  v11[3] = &unk_279D824D0;
  objc_copyWeak(&v13, &from);
  objc_copyWeak(&v14, &location);
  v9 = completionCopy;
  v12 = v9;
  [v8 setCompletionBlock:v11];
  wlkDefaultQueue = [MEMORY[0x277CCABD8] wlkDefaultQueue];
  [wlkDefaultQueue addOperation:v8];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke(id *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = objc_loadWeakRetained(a1 + 6);
  v4 = v3;
  if (WeakRetained)
  {
    v5 = [v3 error];
    if (v5)
    {
      v6 = _TVRCRapportLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke_cold_1(v5, v6);
      }
    }

    v21 = v4;
    v7 = [v4 response];
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v7;
    v9 = [v7 items];
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v26 + 1) + 8 * i) dictionary];
          v15 = [TVRCUpNextInfo upNextInfoWithDictionary:v14];
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v11);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke_12;
    block[3] = &unk_279D824A8;
    block[4] = WeakRetained;
    v23 = v8;
    v16 = a1[4];
    v24 = v5;
    v25 = v16;
    v17 = v5;
    v18 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v4 = v21;
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke_12(uint64_t a1)
{
  [*(a1 + 32) setUpNextInfos:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 16);

  return v4();
}

- (void)_fetchPlayableOpenURLForMediaIdentifier:(id)identifier type:(int64_t)type completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = [objc_alloc(MEMORY[0x277D7A938]) initWithCanonicalID:identifierCopy];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__TVRCUpNextController__fetchPlayableOpenURLForMediaIdentifier_type_completion___block_invoke;
  v13[3] = &unk_279D824F8;
  objc_copyWeak(&v16, &location);
  v11 = identifierCopy;
  v14 = v11;
  v12 = completionCopy;
  v15 = v12;
  [v10 makeRequestWithCompletion:v13 canonicalType:type];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __80__TVRCUpNextController__fetchPlayableOpenURLForMediaIdentifier_type_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = _TVRCRapportLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __80__TVRCUpNextController__fetchPlayableOpenURLForMediaIdentifier_type_completion___block_invoke_cold_1(a1);
      }
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = [v5 playables];
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
LABEL_10:
        v17 = 0;
        while (1)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          if ([v18 isEntitled] & 1) != 0 || (objc_msgSend(v18, "isEntitledAnywhere"))
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v15)
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }
        }

        v8 = v18;

        if (!v8)
        {
          goto LABEL_20;
        }

        v9 = [v8 playPunchoutURL];
        goto LABEL_6;
      }

LABEL_17:

LABEL_20:
      v8 = _TVRCRapportLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(a1 + 32);
        v20 = [v5 playables];
        *buf = 138543618;
        v29 = v19;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&dword_26CF7F000, v8, OS_LOG_TYPE_DEFAULT, "Failed to find an entitled playable to play %{public}@ - playables=%@", buf, 0x16u);
      }
    }

    v9 = 0;
LABEL_6:

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__TVRCUpNextController__fetchPlayableOpenURLForMediaIdentifier_type_completion___block_invoke_14;
    v21[3] = &unk_279D82408;
    v10 = *(a1 + 40);
    v22 = v9;
    v23 = v10;
    v11 = v9;
    dispatch_async(MEMORY[0x277D85CD0], v21);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_openURLString:(id)string completion:(id)completion
{
  v6 = MEMORY[0x277CBEBC0];
  completionCopy = completion;
  v10 = [v6 URLWithString:string];
  absoluteString = [v10 absoluteString];
  v9 = [absoluteString length];

  if (v9)
  {
    [(TVRCUpNextController *)self _openURL:v10 completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_openURL:(id)l completion:(id)completion
{
  v18[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v7 = objc_alloc_init(MEMORY[0x277CC1F00]);
  v8 = *MEMORY[0x277D0AC30];
  v17[0] = *MEMORY[0x277D0AC58];
  v17[1] = v8;
  v18[0] = MEMORY[0x277CBEC38];
  v18[1] = &unk_287E66C78;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v7 setFrontBoardOptions:v9];

  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__TVRCUpNextController__openURL_completion___block_invoke;
  v14[3] = &unk_279D82520;
  v15 = lCopy;
  v16 = completionCopy;
  v11 = completionCopy;
  v12 = lCopy;
  [defaultWorkspace openURL:v12 configuration:v7 completionHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __44__TVRCUpNextController__openURL_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _TVRCRapportLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __44__TVRCUpNextController__openURL_completion___block_invoke_cold_1(a1);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__TVRCUpNextController__openURL_completion___block_invoke_22;
  v8[3] = &unk_279D82408;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __68__TVRCUpNextController_markAsWatchedWithMediaIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v1, v2, "Error marking %{public}@ as watched: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __62__TVRCUpNextController_addItemWithMediaIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v1, v2, "Error adding to upNext %{public}@: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __65__TVRCUpNextController_removeItemWithMediaIdentifier_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v1, v2, "Error removing %{public}@ from UpNext: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __72__TVRCUpNextController__fetchUpNextInfosWithPaginationToken_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_ERROR, "Error fetching up next infos: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __80__TVRCUpNextController__fetchPlayableOpenURLForMediaIdentifier_type_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v1, v2, "Error requesting playables to play %{public}@: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __44__TVRCUpNextController__openURL_completion___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26CF7F000, v1, v2, "Error attempting to openURL %@: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

@end