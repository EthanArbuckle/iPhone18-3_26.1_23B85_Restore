@interface PLIntensiveResourceTask
+ (id)taskForDeferredFinalizationForAsset:(id)a3 resourceRecipe:(id)a4 options:(id)a5 preCompletionBlock:(id)a6;
+ (id)taskForGeneratingDeferredAdjustmentForAsset:(id)a3 trackingIdentifier:(id)a4 imageConversionClient:(id)a5 videoConversionClient:(id)a6 reason:(id)a7 clientBundleID:(id)a8 allowCancellationByService:(BOOL)a9;
- (BOOL)_lock_transitionToState:(unint64_t)a3;
- (BOOL)addResponder:(id)a3;
- (NSProgress)progress;
- (NSString)description;
- (PLIntensiveResourceTask)initWithAssetUUID:(id)a3 resourceRecipeID:(unsigned int)a4 trackingIdentifier:(id)a5 startBlock:(id)a6;
- (PLIntensiveResourceTask)initWithIdentifier:(id)a3 trackingIdentifier:(id)a4 startBlock:(id)a5;
- (PLIntensiveResourceTaskDelegate)delegate;
- (void)finishWithResult:(id)a3;
- (void)start;
- (void)taskResponderDidCancel:(id)a3;
@end

@implementation PLIntensiveResourceTask

+ (id)taskForDeferredFinalizationForAsset:(id)a3 resourceRecipe:(id)a4 options:(id)a5 preCompletionBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v10;
  v14 = [PLIntensiveResourceTask alloc];
  v15 = [v9 uuid];
  v16 = [v13 recipeID];
  v17 = [v11 taskIdentifier];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __119__PLIntensiveResourceTask_Constructors__taskForDeferredFinalizationForAsset_resourceRecipe_options_preCompletionBlock___block_invoke;
  v24[3] = &unk_1E75787A8;
  v25 = v13;
  v26 = v9;
  v27 = v11;
  v28 = v12;
  v18 = v12;
  v19 = v11;
  v20 = v9;
  v21 = v13;
  v22 = [(PLIntensiveResourceTask *)v14 initWithAssetUUID:v15 resourceRecipeID:v16 trackingIdentifier:v17 startBlock:v24];

  return v22;
}

id __119__PLIntensiveResourceTask_Constructors__taskForDeferredFinalizationForAsset_resourceRecipe_options_preCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v12 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __119__PLIntensiveResourceTask_Constructors__taskForDeferredFinalizationForAsset_resourceRecipe_options_preCompletionBlock___block_invoke_2;
  v9[3] = &unk_1E7578780;
  v6 = *(a1 + 48);
  v10 = *(a1 + 56);
  objc_copyWeak(&v11, &location);
  [v4 _generateAndStoreOutsideOfTaskManagementForAsset:v5 options:v6 progress:&v12 completion:v9];
  v7 = v12;
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);

  return v7;
}

void __119__PLIntensiveResourceTask_Constructors__taskForDeferredFinalizationForAsset_resourceRecipe_options_preCompletionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 16);
  v11 = a3;
  v10(v9, a2, a4, a5);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = PLVoidResultFromResultAndError();

  [WeakRetained finishWithResult:v12];
}

+ (id)taskForGeneratingDeferredAdjustmentForAsset:(id)a3 trackingIdentifier:(id)a4 imageConversionClient:(id)a5 videoConversionClient:(id)a6 reason:(id)a7 clientBundleID:(id)a8 allowCancellationByService:(BOOL)a9
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a4;
  v20 = [PLIntensiveResourceTask alloc];
  v21 = [v14 uuid];
  v22 = [v14 fullSizeRenderResourceRecipeID];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __197__PLIntensiveResourceTask_Constructors__taskForGeneratingDeferredAdjustmentForAsset_trackingIdentifier_imageConversionClient_videoConversionClient_reason_clientBundleID_allowCancellationByService___block_invoke;
  v30[3] = &unk_1E7578758;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v34 = v17;
  v36 = a9;
  v35 = v18;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  v26 = v15;
  v27 = v14;
  v28 = [(PLIntensiveResourceTask *)v20 initWithAssetUUID:v21 resourceRecipeID:v22 trackingIdentifier:v19 startBlock:v30];

  return v28;
}

id __197__PLIntensiveResourceTask_Constructors__taskForGeneratingDeferredAdjustmentForAsset_trackingIdentifier_imageConversionClient_videoConversionClient_reason_clientBundleID_allowCancellationByService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 64);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __197__PLIntensiveResourceTask_Constructors__taskForGeneratingDeferredAdjustmentForAsset_trackingIdentifier_imageConversionClient_videoConversionClient_reason_clientBundleID_allowCancellationByService___block_invoke_2;
  v12[3] = &unk_1E7578730;
  objc_copyWeak(&v13, &location);
  v10 = [v4 generateDeferredAdjustmentWithImageConversionClient:v5 videoConversionClient:v6 reason:v7 allowCancellationByService:v8 clientBundleID:v9 completion:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v10;
}

void __197__PLIntensiveResourceTask_Constructors__taskForGeneratingDeferredAdjustmentForAsset_trackingIdentifier_imageConversionClient_videoConversionClient_reason_clientBundleID_allowCancellationByService___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = PLVoidResultFromResultAndError();

  [WeakRetained finishWithResult:v5];
}

- (PLIntensiveResourceTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)taskResponderDidCancel:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__17;
  v14 = __Block_byref_object_dispose__18;
  v15 = 0;
  v8 = MEMORY[0x1E69E9820];
  v5 = v4;
  v9 = v5;
  PLSafeRunWithUnfairLock();
  if (*(v17 + 24) == 1)
  {
    v6 = PLImageManagerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v21 = self;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "[RTM] %@ all responders cancelled, cancelling underlying task", buf, 0xCu);
    }

    v7 = [(PLIntensiveResourceTask *)self delegate:v8];
    [v7 resourceTaskWillCancel:self];

    [v11[5] cancel];
  }

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
}

void __50__PLIntensiveResourceTask_taskResponderDidCancel___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
  if (![*(*(a1 + 32) + 24) count])
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _lock_transitionToState:2];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v2 = *(*(a1 + 32) + 32);
      v3 = (*(*(a1 + 56) + 8) + 40);

      objc_storeStrong(v3, v2);
    }
  }
}

- (BOOL)_lock_transitionToState:(unint64_t)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  lock_state = self->_lock_state;
  if (lock_state == 1)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
LABEL_4:
      self->_lock_state = a3;
      return 1;
    }
  }

  else if (!lock_state && a3 - 1 < 3)
  {
    goto LABEL_4;
  }

  return 0;
}

- (void)finishWithResult:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__17;
  v29 = __Block_byref_object_dispose__18;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __44__PLIntensiveResourceTask_finishWithResult___block_invoke;
  v17 = &unk_1E7578870;
  v18 = self;
  v19 = &v21;
  v20 = &v25;
  PLSafeRunWithUnfairLock();
  if (*(v22 + 24) == 1)
  {
    v5 = [(PLIntensiveResourceTask *)self delegate];
    [v5 resourceTaskDidFinish:self];

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = v26[5];
    v7 = [v6 countByEnumeratingWithState:&v10 objects:v31 count:16];
    if (v7)
    {
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v10 + 1) + 8 * v9++) callCompletionWithResult:{v4, v10}];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v10 objects:v31 count:16];
      }

      while (v7);
    }
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

void __44__PLIntensiveResourceTask_finishWithResult___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _lock_transitionToState:3];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v2 = [*(*(a1 + 32) + 24) copy];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = *(a1 + 32);
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
  }
}

- (void)start
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__117750;
  v10 = __Block_byref_object_dispose__117751;
  v11 = 0;
  PLSafeRunWithUnfairLock();
  v3 = v7[5];
  if (v3)
  {
    v4 = (*(v3 + 16))(v3, self);
    v5 = v4;
    if (v7[5])
    {
      v5 = v4;
      PLSafeRunWithUnfairLock();
    }
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v6, 8);
}

void __32__PLIntensiveResourceTask_start__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __32__PLIntensiveResourceTask_start__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _lock_transitionToState:1])
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      objc_storeStrong((*(a1 + 32) + 32), v2);
      v10 = 0u;
      v11 = 0u;
      v8 = 0u;
      v9 = 0u;
      v3 = *(*(a1 + 32) + 24);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v9;
        do
        {
          v7 = 0;
          do
          {
            if (*v9 != v6)
            {
              objc_enumerationMutation(v3);
            }

            [*(*(&v8 + 1) + 8 * v7++) attachToSourceProgress:{*(a1 + 40), v8}];
          }

          while (v5 != v7);
          v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        }

        while (v5);
      }
    }
  }
}

- (BOOL)addResponder:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5 = a3;
  PLSafeRunWithUnfairLock();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __40__PLIntensiveResourceTask_addResponder___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _lock_canAcceptResponders];
  if (result)
  {
    [*(*(a1 + 32) + 24) addObject:*(a1 + 40)];
    result = [*(a1 + 40) setDelegate:*(a1 + 32)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v3 = *(a1 + 32);
    if (*(v3 + 16) == 1)
    {
      v4 = *(a1 + 40);
      v5 = *(v3 + 32);

      return [v4 attachToSourceProgress:v5];
    }
  }

  return result;
}

- (NSProgress)progress
{
  v2 = PLSafeResultWithUnfairLock();

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> %@", v5, self, self->_identifier];

  return v6;
}

- (PLIntensiveResourceTask)initWithAssetUUID:(id)a3 resourceRecipeID:(unsigned int)a4 trackingIdentifier:(id)a5 startBlock:(id)a6
{
  v7 = *&a4;
  v10 = MEMORY[0x1E696AEC0];
  v11 = a6;
  v12 = a5;
  v13 = a3;
  v14 = PLResourceRecipeIDDescription(v7, 0);
  v15 = [v10 stringWithFormat:@"%@/%u/%@", v13, v7, v14];

  v16 = [(PLIntensiveResourceTask *)self initWithIdentifier:v15 trackingIdentifier:v12 startBlock:v11];
  return v16;
}

- (PLIntensiveResourceTask)initWithIdentifier:(id)a3 trackingIdentifier:(id)a4 startBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLIntensiveResourceTask.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"startBlock"}];
  }

  v24.receiver = self;
  v24.super_class = PLIntensiveResourceTask;
  v12 = [(PLIntensiveResourceTask *)&v24 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    lock_responders = v13->_lock_responders;
    v13->_lock_responders = v14;

    v16 = [v9 copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v18 = [v10 copy];
    trackingIdentifier = v13->_trackingIdentifier;
    v13->_trackingIdentifier = v18;

    v20 = [v11 copy];
    lock_startBlock = v13->_lock_startBlock;
    v13->_lock_startBlock = v20;
  }

  return v13;
}

@end