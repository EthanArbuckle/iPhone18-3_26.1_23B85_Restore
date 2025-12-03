@interface PLIntensiveResourceTask
+ (id)taskForDeferredFinalizationForAsset:(id)asset resourceRecipe:(id)recipe options:(id)options preCompletionBlock:(id)block;
+ (id)taskForGeneratingDeferredAdjustmentForAsset:(id)asset trackingIdentifier:(id)identifier imageConversionClient:(id)client videoConversionClient:(id)conversionClient reason:(id)reason clientBundleID:(id)d allowCancellationByService:(BOOL)service;
- (BOOL)_lock_transitionToState:(unint64_t)state;
- (BOOL)addResponder:(id)responder;
- (NSProgress)progress;
- (NSString)description;
- (PLIntensiveResourceTask)initWithAssetUUID:(id)d resourceRecipeID:(unsigned int)iD trackingIdentifier:(id)identifier startBlock:(id)block;
- (PLIntensiveResourceTask)initWithIdentifier:(id)identifier trackingIdentifier:(id)trackingIdentifier startBlock:(id)block;
- (PLIntensiveResourceTaskDelegate)delegate;
- (void)finishWithResult:(id)result;
- (void)start;
- (void)taskResponderDidCancel:(id)cancel;
@end

@implementation PLIntensiveResourceTask

+ (id)taskForDeferredFinalizationForAsset:(id)asset resourceRecipe:(id)recipe options:(id)options preCompletionBlock:(id)block
{
  assetCopy = asset;
  recipeCopy = recipe;
  optionsCopy = options;
  blockCopy = block;
  v13 = recipeCopy;
  v14 = [PLIntensiveResourceTask alloc];
  uuid = [assetCopy uuid];
  recipeID = [v13 recipeID];
  taskIdentifier = [optionsCopy taskIdentifier];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __119__PLIntensiveResourceTask_Constructors__taskForDeferredFinalizationForAsset_resourceRecipe_options_preCompletionBlock___block_invoke;
  v24[3] = &unk_1E75787A8;
  v25 = v13;
  v26 = assetCopy;
  v27 = optionsCopy;
  v28 = blockCopy;
  v18 = blockCopy;
  v19 = optionsCopy;
  v20 = assetCopy;
  v21 = v13;
  v22 = [(PLIntensiveResourceTask *)v14 initWithAssetUUID:uuid resourceRecipeID:recipeID trackingIdentifier:taskIdentifier startBlock:v24];

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

+ (id)taskForGeneratingDeferredAdjustmentForAsset:(id)asset trackingIdentifier:(id)identifier imageConversionClient:(id)client videoConversionClient:(id)conversionClient reason:(id)reason clientBundleID:(id)d allowCancellationByService:(BOOL)service
{
  assetCopy = asset;
  clientCopy = client;
  conversionClientCopy = conversionClient;
  reasonCopy = reason;
  dCopy = d;
  identifierCopy = identifier;
  v20 = [PLIntensiveResourceTask alloc];
  uuid = [assetCopy uuid];
  fullSizeRenderResourceRecipeID = [assetCopy fullSizeRenderResourceRecipeID];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __197__PLIntensiveResourceTask_Constructors__taskForGeneratingDeferredAdjustmentForAsset_trackingIdentifier_imageConversionClient_videoConversionClient_reason_clientBundleID_allowCancellationByService___block_invoke;
  v30[3] = &unk_1E7578758;
  v31 = assetCopy;
  v32 = clientCopy;
  v33 = conversionClientCopy;
  v34 = reasonCopy;
  serviceCopy = service;
  v35 = dCopy;
  v23 = dCopy;
  v24 = reasonCopy;
  v25 = conversionClientCopy;
  v26 = clientCopy;
  v27 = assetCopy;
  v28 = [(PLIntensiveResourceTask *)v20 initWithAssetUUID:uuid resourceRecipeID:fullSizeRenderResourceRecipeID trackingIdentifier:identifierCopy startBlock:v30];

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

- (void)taskResponderDidCancel:(id)cancel
{
  v22 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
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
  v5 = cancelCopy;
  v9 = v5;
  PLSafeRunWithUnfairLock();
  if (*(v17 + 24) == 1)
  {
    v6 = PLImageManagerGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
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

- (BOOL)_lock_transitionToState:(unint64_t)state
{
  os_unfair_lock_assert_owner(&self->_lock);
  lock_state = self->_lock_state;
  if (lock_state == 1)
  {
    if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
LABEL_4:
      self->_lock_state = state;
      return 1;
    }
  }

  else if (!lock_state && state - 1 < 3)
  {
    goto LABEL_4;
  }

  return 0;
}

- (void)finishWithResult:(id)result
{
  v32 = *MEMORY[0x1E69E9840];
  resultCopy = result;
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
  selfCopy = self;
  v19 = &v21;
  v20 = &v25;
  PLSafeRunWithUnfairLock();
  if (*(v22 + 24) == 1)
  {
    delegate = [(PLIntensiveResourceTask *)self delegate];
    [delegate resourceTaskDidFinish:self];

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

          [*(*(&v10 + 1) + 8 * v9++) callCompletionWithResult:{resultCopy, v10}];
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

- (BOOL)addResponder:(id)responder
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  responderCopy = responder;
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

- (PLIntensiveResourceTask)initWithAssetUUID:(id)d resourceRecipeID:(unsigned int)iD trackingIdentifier:(id)identifier startBlock:(id)block
{
  v7 = *&iD;
  v10 = MEMORY[0x1E696AEC0];
  blockCopy = block;
  identifierCopy = identifier;
  dCopy = d;
  v14 = PLResourceRecipeIDDescription(v7, 0);
  v15 = [v10 stringWithFormat:@"%@/%u/%@", dCopy, v7, v14];

  v16 = [(PLIntensiveResourceTask *)self initWithIdentifier:v15 trackingIdentifier:identifierCopy startBlock:blockCopy];
  return v16;
}

- (PLIntensiveResourceTask)initWithIdentifier:(id)identifier trackingIdentifier:(id)trackingIdentifier startBlock:(id)block
{
  identifierCopy = identifier;
  trackingIdentifierCopy = trackingIdentifier;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLIntensiveResourceTask.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"startBlock"}];
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

    v16 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v18 = [trackingIdentifierCopy copy];
    trackingIdentifier = v13->_trackingIdentifier;
    v13->_trackingIdentifier = v18;

    v20 = [blockCopy copy];
    lock_startBlock = v13->_lock_startBlock;
    v13->_lock_startBlock = v20;
  }

  return v13;
}

@end