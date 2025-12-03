@interface SXLayoutPipeline
- (SXLayoutPipeline)initWithLayoutOperationFactory:(id)factory DOMObjectProviderFactory:(id)providerFactory;
- (SXLayoutPipelineDelegate)delegate;
- (void)addProcessor:(id)processor type:(unint64_t)type;
- (void)cancelTasks;
- (void)finalizeLayoutForLayoutOperation:(id)operation task:(id)task DOMObjectProvider:(id)provider;
- (void)layoutWithTask:(id)task;
- (void)removeProcessor:(id)processor type:(unint64_t)type;
@end

@implementation SXLayoutPipeline

- (SXLayoutPipeline)initWithLayoutOperationFactory:(id)factory DOMObjectProviderFactory:(id)providerFactory
{
  factoryCopy = factory;
  providerFactoryCopy = providerFactory;
  v23.receiver = self;
  v23.super_class = SXLayoutPipeline;
  v9 = [(SXLayoutPipeline *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_layoutOperationFactory, factory);
    objc_storeStrong(&v10->_DOMObjectProviderFactory, providerFactory);
    array = [MEMORY[0x1E695DF70] array];
    preProcessors = v10->_preProcessors;
    v10->_preProcessors = array;

    array2 = [MEMORY[0x1E695DF70] array];
    postProcessors = v10->_postProcessors;
    v10->_postProcessors = array2;

    v15 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    layoutOperationQueue = v10->_layoutOperationQueue;
    v10->_layoutOperationQueue = v15;

    v17 = v10->_layoutOperationQueue;
    v18 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v21 = [v18 stringWithFormat:@"com.apple.news.anf-layout (%@)", uUIDString];
    [(NSOperationQueue *)v17 setName:v21];

    [(NSOperationQueue *)v10->_layoutOperationQueue setQualityOfService:25];
    [(NSOperationQueue *)v10->_layoutOperationQueue setMaxConcurrentOperationCount:1];
  }

  return v10;
}

- (void)layoutWithTask:(id)task
{
  v56 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v5 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    identifier = [taskCopy identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifier;
    _os_log_impl(&dword_1D825C000, v6, OS_LOG_TYPE_DEFAULT, "Pipeline receieved new layout task, task-identifier=%{public}@", &buf, 0xCu);
  }

  dOMObjectProviderFactory = [(SXLayoutPipeline *)self DOMObjectProviderFactory];
  createDOMObjectProvider = [dOMObjectProviderFactory createDOMObjectProvider];

  v10 = [taskCopy DOM];
  [createDOMObjectProvider setDOM:v10];

  layoutOperationFactory = [(SXLayoutPipeline *)self layoutOperationFactory];
  v12 = [layoutOperationFactory layoutOperationWithTask:taskCopy DOMObjectProvider:createDOMObjectProvider];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v54 = 0x2020000000;
  v55 = 0;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __35__SXLayoutPipeline_layoutWithTask___block_invoke;
  v46[3] = &unk_1E84FF5C0;
  v46[4] = &buf;
  v14 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithName:@"ANF Layout" expirationHandler:v46];

  *(*(&buf + 1) + 24) = v14;
  objc_initWeak(&location, v12);
  objc_initWeak(&from, self);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __35__SXLayoutPipeline_layoutWithTask___block_invoke_2;
  v38[3] = &unk_1E84FF610;
  objc_copyWeak(&v42, &location);
  objc_copyWeak(&v43, &from);
  v15 = taskCopy;
  v39 = v15;
  v16 = createDOMObjectProvider;
  v40 = v16;
  p_buf = &buf;
  [v12 setCompletionBlock:v38];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __35__SXLayoutPipeline_layoutWithTask___block_invoke_9;
  v34[3] = &unk_1E84FF638;
  objc_copyWeak(&v37, &from);
  v17 = v15;
  v35 = v17;
  v18 = v16;
  v36 = v18;
  [v12 beforeLayout:v34];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __35__SXLayoutPipeline_layoutWithTask___block_invoke_11;
  v30 = &unk_1E84FF638;
  objc_copyWeak(&v33, &from);
  v19 = v17;
  v31 = v19;
  v20 = v18;
  v32 = v20;
  [v12 afterLayout:&v27];
  v21 = [(SXLayoutPipeline *)self layoutOperationQueue:v27];
  [v21 cancelAllOperations];

  v22 = SXLayoutLog;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    identifier2 = [v19 identifier];
    layoutOperationQueue = [(SXLayoutPipeline *)self layoutOperationQueue];
    name = [layoutOperationQueue name];
    *v47 = 138412802;
    v48 = v12;
    v49 = 2114;
    v50 = identifier2;
    v51 = 2114;
    v52 = name;
    _os_log_impl(&dword_1D825C000, v22, OS_LOG_TYPE_DEFAULT, "Adding layout operation: %@, task-identifier= %{public}@, layout-queue: %{public}@", v47, 0x20u);
  }

  layoutOperationQueue2 = [(SXLayoutPipeline *)self layoutOperationQueue];
  [layoutOperationQueue2 addOperation:v12];

  objc_destroyWeak(&v33);
  objc_destroyWeak(&v37);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

void __35__SXLayoutPipeline_layoutWithTask___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __35__SXLayoutPipeline_layoutWithTask___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__SXLayoutPipeline_layoutWithTask___block_invoke_3;
  block[3] = &unk_1E84FF5E8;
  objc_copyWeak(&v11, (a1 + 64));
  v7 = WeakRetained;
  v8 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  v5 = WeakRetained;
  dispatch_sync(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v11);
}

void __35__SXLayoutPipeline_layoutWithTask___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [*(a1 + 32) isCancelled];
  v4 = SXLayoutLog;
  v5 = os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 1) != 0 || !WeakRetained)
  {
    if (v5)
    {
      v11 = *(a1 + 40);
      v12 = v4;
      v13 = [v11 identifier];
      [*(a1 + 32) duration];
      v17 = 138543618;
      v18 = *&v13;
      v19 = 2048;
      v20 = v14 * 1000.0;
      _os_log_impl(&dword_1D825C000, v12, OS_LOG_TYPE_DEFAULT, "Cancelled layout task; dropping result, task-identifier=%{public}@, duration=%fms", &v17, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = v4;
      [v6 duration];
      v9 = v8 * 1000.0;
      [*(a1 + 40) identifier];
      v10 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v17 = 134218242;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_1D825C000, v7, OS_LOG_TYPE_DEFAULT, "Finished layout task in %fms, task-identifier=%{public}@", &v17, 0x16u);
    }

    [WeakRetained finalizeLayoutForLayoutOperation:*(a1 + 32) task:*(a1 + 40) DOMObjectProvider:*(a1 + 48)];
  }

  v15 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 56) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v16 = [MEMORY[0x1E69DC668] sharedApplication];
    [v16 endBackgroundTask:*(*(*(a1 + 56) + 8) + 24)];

    *(*(*(a1 + 56) + 8) + 24) = v15;
  }
}

void __35__SXLayoutPipeline_layoutWithTask___block_invoke_9(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained preProcessors];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    *&v8 = 138412546;
    v17 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = SXLayoutLog;
        if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v15 = v13;
          v16 = [v14 identifier];
          *buf = v17;
          v23 = v12;
          v24 = 2114;
          v25 = v16;
          _os_log_impl(&dword_1D825C000, v15, OS_LOG_TYPE_DEFAULT, "Executing pre-processor: %@, task-identifier= %{public}@", buf, 0x16u);
        }

        [v12 processLayoutTask:*(a1 + 32) layoutBlueprint:v3 DOMObjectProvider:{*(a1 + 40), v17, v18}];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }
}

void __35__SXLayoutPipeline_layoutWithTask___block_invoke_11(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained postProcessors];
  v6 = [v5 copy];

  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    *&v8 = 138412546;
    v17 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        v13 = SXLayoutLog;
        if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *(a1 + 32);
          v15 = v13;
          v16 = [v14 identifier];
          *buf = v17;
          v23 = v12;
          v24 = 2114;
          v25 = v16;
          _os_log_impl(&dword_1D825C000, v15, OS_LOG_TYPE_DEFAULT, "Executing post-processor: %@, task-identifier= %{public}@", buf, 0x16u);
        }

        [v12 processLayoutTask:*(a1 + 32) layoutBlueprint:v3 DOMObjectProvider:{*(a1 + 40), v17, v18}];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)finalizeLayoutForLayoutOperation:(id)operation task:(id)task DOMObjectProvider:(id)provider
{
  providerCopy = provider;
  taskCopy = task;
  operationCopy = operation;
  v11 = [SXLayoutResult alloc];
  layoutBlueprint = [operationCopy layoutBlueprint];
  v13 = [providerCopy DOM];

  [operationCopy duration];
  v15 = v14;

  v17 = [(SXLayoutResult *)v11 initWithLayoutBlueprint:layoutBlueprint DOM:v13 duration:v15];
  delegate = [(SXLayoutPipeline *)self delegate];
  [delegate layoutPipeline:self finishedTask:taskCopy withResult:v17];
}

- (void)addProcessor:(id)processor type:(unint64_t)type
{
  processorCopy = processor;
  if (processorCopy)
  {
    if (type == 1)
    {
      v9 = processorCopy;
      postProcessors = [(SXLayoutPipeline *)self postProcessors];
    }

    else
    {
      if (type)
      {
        goto LABEL_7;
      }

      v9 = processorCopy;
      postProcessors = [(SXLayoutPipeline *)self preProcessors];
    }

    v8 = postProcessors;
    [postProcessors addObject:v9];

    processorCopy = v9;
  }

LABEL_7:
}

- (void)removeProcessor:(id)processor type:(unint64_t)type
{
  processorCopy = processor;
  if (processorCopy)
  {
    if (type == 1)
    {
      v9 = processorCopy;
      postProcessors = [(SXLayoutPipeline *)self postProcessors];
    }

    else
    {
      if (type)
      {
        goto LABEL_7;
      }

      v9 = processorCopy;
      postProcessors = [(SXLayoutPipeline *)self preProcessors];
    }

    v8 = postProcessors;
    [postProcessors removeObject:v9];

    processorCopy = v9;
  }

LABEL_7:
}

- (void)cancelTasks
{
  v3 = SXLayoutLog;
  if (os_log_type_enabled(SXLayoutLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1D825C000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling all layout tasks", v5, 2u);
  }

  layoutOperationQueue = [(SXLayoutPipeline *)self layoutOperationQueue];
  [layoutOperationQueue cancelAllOperations];
}

- (SXLayoutPipelineDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end