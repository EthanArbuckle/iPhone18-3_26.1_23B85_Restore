@interface SBHLibraryCategoryMapProviderDefaultSource
- (SBHLibraryCategoryMapProviderDefaultSource)initWithIconModel:(id)a3;
- (SBHLibraryCategoryMapProviderSourceDelegate)delegate;
- (void)_requestRefresh:(id)a3;
- (void)requestLibraryCategoryMapWithOptions:(unint64_t)a3 existingLibraryCategoryMap:(id)a4 forbiddenApplicationIdentifiers:(id)a5 sessionId:(unint64_t)a6 queue:(id)a7 completion:(id)a8;
@end

@implementation SBHLibraryCategoryMapProviderDefaultSource

- (SBHLibraryCategoryMapProviderDefaultSource)initWithIconModel:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = SBHLibraryCategoryMapProviderDefaultSource;
  v6 = [(SBHLibraryCategoryMapProviderDefaultSource *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_iconModel, a3);
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v7 selector:sel__requestRefresh_ name:@"SBIconModelDidAddIconNotification" object:v7->_iconModel];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v7 selector:sel__requestRefresh_ name:@"SBIconModelWillRemoveIconNotification" object:v7->_iconModel];
  }

  return v7;
}

- (void)requestLibraryCategoryMapWithOptions:(unint64_t)a3 existingLibraryCategoryMap:(id)a4 forbiddenApplicationIdentifiers:(id)a5 sessionId:(unint64_t)a6 queue:(id)a7 completion:(id)a8
{
  v64 = *MEMORY[0x1E69E9840];
  v44 = a5;
  v11 = a7;
  v41 = a8;
  queue = v11;
  BSDispatchQueueAssert();
  v12 = self->_iconModel;
  v42 = [(SBHIconModel *)v12 leafIcons];
  v13 = [v42 allObjects];
  v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_30];

  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v17 = v14;
  v18 = [v17 countByEnumeratingWithState:&v58 objects:v63 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v59;
    v21 = 3000;
    v46 = v17;
    v47 = v12;
    v45 = *v59;
    do
    {
      v22 = 0;
      v48 = v19;
      do
      {
        if (*v59 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v58 + 1) + 8 * v22);
        v24 = [v23 applicationBundleID];
        if (-[SBHIconModel isIconVisible:](v12, "isIconVisible:", v23) && ([v23 isFolderIcon] & 1) == 0 && (objc_msgSend(v23, "isWidgetIcon") & 1) == 0 && (!v24 || (objc_msgSend(v44, "containsObject:", v24) & 1) == 0))
        {
          v49 = v22;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v25 = [v23 iTunesCategoriesOrderedByRelevancy];
          v26 = [v25 countByEnumeratingWithState:&v54 objects:v62 count:16];
          if (!v26)
          {
            v29 = v21;
            goto LABEL_27;
          }

          v27 = v26;
          v50 = v23;
          v28 = *v55;
          v29 = v21;
          while (1)
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v55 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v31 = *(*(&v54 + 1) + 8 * i);
              if (([v15 categoriesContainApplicationIdentifier:v31] & 1) == 0)
              {
                v32 = [v16 objectForKey:v31];
                if (v32)
                {
                  v33 = v32;
                  if (v24)
                  {
                    goto LABEL_19;
                  }

LABEL_21:
                  v36 = [v50 leafIdentifier];
                  [v15 addApplicationIdentifier:v36 forCategoryIdentifier:v33];
                }

                else
                {
                  v34 = [SBHLibraryCategoryIdentifier alloc];
                  v35 = v29++;
                  v33 = [(SBHLibraryCategoryIdentifier *)v34 initWithPredictionCategoryID:v35 localizedDisplayNameKey:v31];
                  [v16 setObject:v33 forKey:v31];
                  if (!v24)
                  {
                    goto LABEL_21;
                  }

LABEL_19:
                  [v15 addApplicationIdentifier:v24 forCategoryIdentifier:v33];
                }

                continue;
              }
            }

            v27 = [v25 countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (!v27)
            {
LABEL_27:
              v21 = v29;

              v17 = v46;
              v12 = v47;
              v20 = v45;
              v19 = v48;
              v22 = v49;
              break;
            }
          }
        }

        ++v22;
      }

      while (v22 != v19);
      v19 = [v17 countByEnumeratingWithState:&v58 objects:v63 count:16];
    }

    while (v19);
  }

  v37 = [v15 categoryIdentifiers];
  v38 = [v37 sortedArrayUsingComparator:&__block_literal_global_9_0];
  [v15 setCategoryIdentifiers:v38];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __169__SBHLibraryCategoryMapProviderDefaultSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_3;
  block[3] = &unk_1E80898D8;
  v52 = v15;
  v53 = v41;
  v39 = v15;
  v40 = v41;
  dispatch_async(queue, block);
}

uint64_t __169__SBHLibraryCategoryMapProviderDefaultSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 leafIdentifier];
  v6 = [v4 leafIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __169__SBHLibraryCategoryMapProviderDefaultSource_requestLibraryCategoryMapWithOptions_existingLibraryCategoryMap_forbiddenApplicationIdentifiers_sessionId_queue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 localizedDisplayName];
  v6 = [v4 localizedDisplayName];

  v7 = [v5 compare:v6 options:64];
  return v7;
}

- (void)_requestRefresh:(id)a3
{
  v4 = [(SBHLibraryCategoryMapProviderDefaultSource *)self delegate];
  [v4 requestLibraryCategoryMapUpdateWithRefreshOptions:6 source:self];
}

- (SBHLibraryCategoryMapProviderSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end