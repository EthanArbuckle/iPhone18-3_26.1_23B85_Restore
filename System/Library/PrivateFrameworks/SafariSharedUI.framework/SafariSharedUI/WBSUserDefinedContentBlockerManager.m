@interface WBSUserDefinedContentBlockerManager
@end

@implementation WBSUserDefinedContentBlockerManager

void __124__WBSUserDefinedContentBlockerManager_ScribbleUtilities__getAllPaintingAvoidanceSelectorsThatApplyToHost_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __124__WBSUserDefinedContentBlockerManager_ScribbleUtilities__getAllPaintingAvoidanceSelectorsThatApplyToHost_completionHandler___block_invoke_2;
  aBlock[3] = &unk_1E8286508;
  v5 = v4;
  v16 = v5;
  v6 = _Block_copy(aBlock);
  v7 = [v3 actions];

  v6[2](v6, v7);
  v8 = [*(a1 + 32) didLoadGlobalContentBlockerActions];
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = [*(a1 + 32) cachedGlobalContentBlockerActions];
    v6[2](v6, v10);

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __124__WBSUserDefinedContentBlockerManager_ScribbleUtilities__getAllPaintingAvoidanceSelectorsThatApplyToHost_completionHandler___block_invoke_3;
    v11[3] = &unk_1E8286530;
    v13 = v6;
    v14 = *(a1 + 40);
    v12 = v5;
    [v9 getGlobalContentBlockerWithCompletionHandler:v11];
  }
}

void __124__WBSUserDefinedContentBlockerManager_ScribbleUtilities__getAllPaintingAvoidanceSelectorsThatApplyToHost_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) allSelectorsIncludingShadowHosts];
        if ([v8 count])
        {
          [*(a1 + 32) addObjectsFromArray:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

uint64_t __124__WBSUserDefinedContentBlockerManager_ScribbleUtilities__getAllPaintingAvoidanceSelectorsThatApplyToHost_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = [a2 actions];
  (*(v3 + 16))(v3, v4);

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

@end