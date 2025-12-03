@interface REMSuggestedAttributesPerformer
- (REMSuggestedAttributesPerformer)initWithQueue:(id)queue store:(id)store;
- (id)q_resolveSuggestedAttributesPerformerWithReason:(id)reason errorHandler:(id)handler;
- (id)q_syncSuggestedAttributesPerformerWithReason:(id)reason errorHandler:(id)handler;
- (id)resultFromPerformingSwiftInvocation:(id)invocation parametersData:(id)data storages:(id)storages error:(id *)error;
- (void)preWarmModels;
@end

@implementation REMSuggestedAttributesPerformer

- (REMSuggestedAttributesPerformer)initWithQueue:(id)queue store:(id)store
{
  queueCopy = queue;
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = REMSuggestedAttributesPerformer;
  v9 = [(REMSuggestedAttributesPerformer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    nonUserInteractiveStore = [storeCopy nonUserInteractiveStore];
    store = v10->_store;
    v10->_store = nonUserInteractiveStore;
  }

  return v10;
}

- (void)preWarmModels
{
  queue = [(REMSuggestedAttributesPerformer *)self queue];
  dispatch_assert_queue_V2(queue);

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__REMSuggestedAttributesPerformer_preWarmModels__block_invoke;
  v5[3] = &unk_1E7507B30;
  v6 = 0;
  v4 = [(REMSuggestedAttributesPerformer *)self q_syncSuggestedAttributesPerformerWithReason:@"preWarmModels" errorHandler:v5];
  [v4 preWarmModels];
}

void __48__REMSuggestedAttributesPerformer_preWarmModels__block_invoke(uint64_t a1)
{
  v2 = +[REMLogStore utility];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __48__REMSuggestedAttributesPerformer_preWarmModels__block_invoke_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }
}

- (id)resultFromPerformingSwiftInvocation:(id)invocation parametersData:(id)data storages:(id)storages error:(id *)error
{
  v67 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  dataCopy = data;
  storagesCopy = storages;
  queue = [(REMSuggestedAttributesPerformer *)self queue];
  dispatch_assert_queue_V2(queue);

  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__7;
  v59 = __Block_byref_object_dispose__7;
  v60 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__7;
  v53 = __Block_byref_object_dispose__7;
  v54 = 0;
  v12 = _os_activity_create(&dword_19A0DB000, "REMSuggestedAttributesPerformer swiftInvocation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  v13 = +[REMSignpost database];
  v14 = os_signpost_id_generate(v13);
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    name = [invocationCopy name];
    v18 = name;
    v19 = [name cStringUsingEncoding:1];
    *buf = 136446210;
    v62 = v19;
    _os_signpost_emit_with_name_impl(&dword_19A0DB000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "REMStore.invocation", " enableTelemetry=YES Name=%{public, signpost.telemetry:string1, Name=InvocationName}s}d", buf, 0xCu);
  }

  v20 = +[REMLogStore read];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [invocationCopy name];
    v22 = [dataCopy length];
    v23 = [storagesCopy count];
    *buf = 138543874;
    v62 = name2;
    v63 = 2048;
    v64 = v22;
    v65 = 2048;
    v66 = v23;
    _os_log_impl(&dword_19A0DB000, v20, OS_LOG_TYPE_DEFAULT, "INVOCATION START {name: %{public}@, parametersData.length %ld, storages.count: %ld}", buf, 0x20u);
  }

  v24 = MEMORY[0x1E696AEC0];
  name3 = [invocationCopy name];
  v26 = [v24 stringWithFormat:@"swInv_%@", name3];

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __101__REMSuggestedAttributesPerformer_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke;
  v45[3] = &unk_1E7507BF0;
  v27 = invocationCopy;
  v46 = v27;
  v47 = &v55;
  v28 = [(REMSuggestedAttributesPerformer *)self q_syncSuggestedAttributesPerformerWithReason:v26 errorHandler:v45];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __101__REMSuggestedAttributesPerformer_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_7;
  v41[3] = &unk_1E7508D38;
  v29 = v27;
  v42 = v29;
  v43 = &v49;
  v44 = &v55;
  [v28 performSwiftInvocation:v29 withParametersData:dataCopy storages:storagesCopy completion:v41];
  if (error)
  {
    *error = v56[5];
  }

  v30 = v16;
  v31 = v30;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    resultStorages = [v50[5] resultStorages];
    v33 = [resultStorages count];
    resultData = [v50[5] resultData];
    v35 = [resultData length];
    *buf = 134349312;
    v62 = v33;
    v63 = 2050;
    v64 = v35;
    _os_signpost_emit_with_name_impl(&dword_19A0DB000, v31, OS_SIGNPOST_INTERVAL_END, v14, "REMStore.invocation", " enableTelemetry=YES ResultCount=%{public, signpost.telemetry:number1, Name:ResultCount}ld DataSize=%{public, signpost.telemetry:number2, Name:DataSize}ld", buf, 0x16u);
  }

  v36 = v50[5];
  os_activity_scope_leave(&state);

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  v37 = *MEMORY[0x1E69E9840];

  return v36;
}

void __101__REMSuggestedAttributesPerformer_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLogStore xpc];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __101__REMSuggestedAttributesPerformer_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_cold_1(a1);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __101__REMSuggestedAttributesPerformer_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = +[REMLogStore read];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __101__REMSuggestedAttributesPerformer_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_7_cold_1(a1);
    }

    v9 = 48;
    v10 = v6;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) name];
      v12 = [v5 resultData];
      v13 = [v12 length];
      v14 = [v5 resultStorages];
      v19 = 138543874;
      v20 = v11;
      v21 = 2048;
      v22 = v13;
      v23 = 2048;
      v24 = [v14 count];
      _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_DEFAULT, "INVOCATION END {name: %{public}@, result.data.length: %ld, result.storages.count: %ld}", &v19, 0x20u);
    }

    v9 = 40;
    v10 = v5;
  }

  v15 = *(*(a1 + v9) + 8);
  v16 = v10;
  v17 = *(v15 + 40);
  *(v15 + 40) = v16;

  v18 = *MEMORY[0x1E69E9840];
}

- (id)q_syncSuggestedAttributesPerformerWithReason:(id)reason errorHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  q_cachedXPCPerformer = [(REMSuggestedAttributesPerformer *)self q_cachedXPCPerformer];

  if (!q_cachedXPCPerformer)
  {
    objc_initWeak(&location, self);
    v9 = [(REMSuggestedAttributesPerformer *)self q_resolveSuggestedAttributesPerformerWithReason:reasonCopy errorHandler:handlerCopy];
    if ([v9 conformsToProtocol:&unk_1F0DC87E8])
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __93__REMSuggestedAttributesPerformer_q_syncSuggestedAttributesPerformerWithReason_errorHandler___block_invoke;
      v16[3] = &unk_1E7508D88;
      objc_copyWeak(&v17, &location);
      v10 = [v9 remoteObjectProxyWithErrorHandler:v16];
      [(REMSuggestedAttributesPerformer *)self setQ_cachedXPCPerformer:v10];

      objc_destroyWeak(&v17);
    }

    else
    {
      [(REMSuggestedAttributesPerformer *)self setQ_cachedXPCPerformer:v9];
    }

    objc_destroyWeak(&location);
  }

  q_cachedXPCPerformer2 = [(REMSuggestedAttributesPerformer *)self q_cachedXPCPerformer];
  if ([q_cachedXPCPerformer2 conformsToProtocol:&unk_1F0DC87E8])
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __93__REMSuggestedAttributesPerformer_q_syncSuggestedAttributesPerformerWithReason_errorHandler___block_invoke_15;
    v14[3] = &unk_1E7507CE0;
    v15 = handlerCopy;
    v12 = [q_cachedXPCPerformer2 synchronousRemoteObjectProxyWithErrorHandler:v14];
  }

  else
  {
    v12 = q_cachedXPCPerformer2;
  }

  return v12;
}

void __93__REMSuggestedAttributesPerformer_q_syncSuggestedAttributesPerformerWithReason_errorHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__REMSuggestedAttributesPerformer_q_syncSuggestedAttributesPerformerWithReason_errorHandler___block_invoke_2;
    block[3] = &unk_1E7508D60;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_async(v4, block);

    objc_destroyWeak(&v6);
  }
}

void __93__REMSuggestedAttributesPerformer_q_syncSuggestedAttributesPerformerWithReason_errorHandler___block_invoke_2(uint64_t a1)
{
  v2 = +[REMLogStore utility];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_DEFAULT, "suggestedAttributesPerformer invalidated. Dropping cache", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setQ_cachedXPCPerformer:0];
}

- (id)q_resolveSuggestedAttributesPerformerWithReason:(id)reason errorHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  v8 = +[REMLogStore utility];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_DEFAULT, "Cache-miss getting suggestedAttributesPerformer. Resolving.", buf, 2u);
  }

  store = [(REMSuggestedAttributesPerformer *)self store];
  daemonController = [store daemonController];

  reasonCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"suggestedAttributesPerformer-%@", reasonCopy];
  v12 = [daemonController syncStorePerformerWithReason:reasonCopy errorHandler:handlerCopy];
  if (v12)
  {
    *buf = 0;
    v20 = buf;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__7;
    v23 = __Block_byref_object_dispose__7;
    v24 = 0;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __96__REMSuggestedAttributesPerformer_q_resolveSuggestedAttributesPerformerWithReason_errorHandler___block_invoke;
    v16[3] = &unk_1E7508DB0;
    v18 = buf;
    v17 = handlerCopy;
    [v12 uncachedSuggestedAttributesPerformerWithReason:reasonCopy completion:v16];
    v13 = *(v20 + 5);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = +[REMLogStore utility];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [REMSuggestedAttributesPerformer q_resolveSuggestedAttributesPerformerWithReason:errorHandler:];
    }

    v13 = 0;
  }

  return v13;
}

void __96__REMSuggestedAttributesPerformer_q_resolveSuggestedAttributesPerformerWithReason_errorHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = +[REMLogStore utility];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __96__REMSuggestedAttributesPerformer_q_resolveSuggestedAttributesPerformerWithReason_errorHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v9 = +[REMLogStore xpc];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __96__REMSuggestedAttributesPerformer_q_resolveSuggestedAttributesPerformerWithReason_errorHandler___block_invoke_cold_2(v9);
    }

    v10 = *(a1 + 32);
    v11 = [REMError internalErrorWithDebugDescription:@"uncachedSuggestedAttributesPerfomer produced no result and no error"];
    (*(v10 + 16))(v10, v11);
  }
}

void __48__REMSuggestedAttributesPerformer_preWarmModels__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_5(&dword_19A0DB000, a2, a3, "XPC error performing suggestedAttributesPerformer.preWarmModel {error: %{public}@}", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __101__REMSuggestedAttributesPerformer_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_19A0DB000, v2, v3, "INVOCATION END ERROR_XPC {name: %{public}@, error: %{public}@}", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

void __101__REMSuggestedAttributesPerformer_resultFromPerformingSwiftInvocation_parametersData_storages_error___block_invoke_7_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) name];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_3(&dword_19A0DB000, v2, v3, "INVOCATION END ERROR {name: %{public}@, error: %@}", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)q_resolveSuggestedAttributesPerformerWithReason:errorHandler:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Failed to get storePerformer for suggestedAttributesPerformer. {action: %@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __96__REMSuggestedAttributesPerformer_q_resolveSuggestedAttributesPerformerWithReason_errorHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "uncachedSuggestedAttributesPerfomer ERROR {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end