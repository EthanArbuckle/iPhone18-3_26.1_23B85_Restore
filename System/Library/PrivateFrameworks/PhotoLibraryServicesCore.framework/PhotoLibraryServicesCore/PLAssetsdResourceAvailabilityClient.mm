@interface PLAssetsdResourceAvailabilityClient
- (id)sendMakeResourceAvailableRequest:(id)request reply:(id)reply;
- (id)sendResourceRepairRequest:(id)request errorCodes:(id)codes reply:(id)reply;
- (id)sendResourceRepairRequestForAsset:(id)asset errorCodes:(id)codes reply:(id)reply;
- (id)sendVideoRequest:(id)request reply:(id)reply;
- (void)sendMakeResourceUnavailableRequest:(id)request;
- (void)setSharedMemoryForCacheMetricsCollector:(id)collector;
@end

@implementation PLAssetsdResourceAvailabilityClient

- (void)setSharedMemoryForCacheMetricsCollector:(id)collector
{
  v28 = *MEMORY[0x1E69E9840];
  collectorCopy = collector;
  v24 = 0u;
  *sel = 0u;
  v23 = 0u;
  v6 = +[PLXPCMessageLogger enabled];
  LOBYTE(v23) = v6;
  if (v6)
  {
    v7 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: setSharedMemoryForCacheMetricsCollector:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v8 = *(&v23 + 1);
    *(&v23 + 1) = v7;

    os_activity_scope_enter(v7, (&v24 + 8));
  }

  if (!collectorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceAvailabilityClient.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"sharedData"}];
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3254779904;
  v16[2] = __79__PLAssetsdResourceAvailabilityClient_setSharedMemoryForCacheMetricsCollector___block_invoke_16;
  v16[3] = &unk_1F1F721A8;
  v18 = v23;
  v19 = *(&v23 + 1);
  v20 = v24;
  v21 = *sel;
  v22 = a2;
  v10 = collectorCopy;
  v17 = v10;
  [proxyFactory remoteObjectProxyWithErrorHandler:&__block_literal_global_1711 handler:v16];

  if (v23 == 1)
  {
    os_activity_scope_leave((&v24 + 8));
  }

  if (v24)
  {
    v11 = PLRequestGetLog();
    v12 = v11;
    v13 = v24;
    if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v27 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v12, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __79__PLAssetsdResourceAvailabilityClient_setSharedMemoryForCacheMetricsCollector___block_invoke_16(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 40) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v13 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v14[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 88));
      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", &v11, 0xCu);
    }
  }

  [v3 initializeSharedMemoryForCacheMetricsCollector:*(a1 + 32)];
}

void __79__PLAssetsdResourceAvailabilityClient_setSharedMemoryForCacheMetricsCollector___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdResourceAvailabilityClient setSharedMemoryForCacheMetricsCollector:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1AA9BD000, v3, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  v4 = PLCacheMetricsCollectorGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdResourceAvailabilityClient setSharedMemoryForCacheMetricsCollector:]_block_invoke";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }
}

- (id)sendResourceRepairRequestForAsset:(id)asset errorCodes:(id)codes reply:(id)reply
{
  v33 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  codesCopy = codes;
  replyCopy = reply;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v28) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sendResourceRepairRequestForAsset:errorCodes:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v28 + 1);
    *(&v28 + 1) = v12;

    os_activity_scope_enter(v12, (&v29 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __90__PLAssetsdResourceAvailabilityClient_sendResourceRepairRequestForAsset_errorCodes_reply___block_invoke;
  v26[3] = &unk_1E7932DA8;
  v15 = replyCopy;
  v27 = v15;
  v16 = [proxyFactory remoteObjectProxyWithErrorHandler:v26];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __90__PLAssetsdResourceAvailabilityClient_sendResourceRepairRequestForAsset_errorCodes_reply___block_invoke_7;
  v24[3] = &unk_1E7932DD0;
  v17 = v15;
  v25 = v17;
  v18 = [v16 appyCorrectionsToAssetWithRequest:assetCopy errorCodes:codesCopy reply:v24];

  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v32 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v18;
}

void __90__PLAssetsdResourceAvailabilityClient_sendResourceRepairRequestForAsset_errorCodes_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdResourceAvailabilityClient sendResourceRepairRequestForAsset:errorCodes:reply:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)sendResourceRepairRequest:(id)request errorCodes:(id)codes reply:(id)reply
{
  v33 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  codesCopy = codes;
  replyCopy = reply;
  v29 = 0u;
  *sel = 0u;
  v28 = 0u;
  v11 = +[PLXPCMessageLogger enabled];
  LOBYTE(v28) = v11;
  if (v11)
  {
    v12 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sendResourceRepairRequest:errorCodes:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v13 = *(&v28 + 1);
    *(&v28 + 1) = v12;

    os_activity_scope_enter(v12, (&v29 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __82__PLAssetsdResourceAvailabilityClient_sendResourceRepairRequest_errorCodes_reply___block_invoke;
  v26[3] = &unk_1E7932DA8;
  v15 = replyCopy;
  v27 = v15;
  v16 = [proxyFactory remoteObjectProxyWithErrorHandler:v26];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __82__PLAssetsdResourceAvailabilityClient_sendResourceRepairRequest_errorCodes_reply___block_invoke_5;
  v24[3] = &unk_1E7932DD0;
  v17 = v15;
  v25 = v17;
  v18 = [v16 appyCorrectionsToResourceWithRequest:requestCopy errorCodes:codesCopy reply:v24];

  if (v28 == 1)
  {
    os_activity_scope_leave((&v29 + 8));
  }

  if (v29)
  {
    v19 = PLRequestGetLog();
    v20 = v19;
    v21 = v29;
    if ((v29 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v32 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v20, OS_SIGNPOST_INTERVAL_END, v21, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v18;
}

void __82__PLAssetsdResourceAvailabilityClient_sendResourceRepairRequest_errorCodes_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdResourceAvailabilityClient sendResourceRepairRequest:errorCodes:reply:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (id)sendVideoRequest:(id)request reply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  replyCopy = reply;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sendVideoRequest:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(v9, (&v26 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __62__PLAssetsdResourceAvailabilityClient_sendVideoRequest_reply___block_invoke;
  v23[3] = &unk_1E7932DA8;
  v12 = replyCopy;
  v24 = v12;
  v13 = [proxyFactory remoteObjectProxyWithErrorHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __62__PLAssetsdResourceAvailabilityClient_sendVideoRequest_reply___block_invoke_3;
  v21[3] = &unk_1E792FCD0;
  v14 = v12;
  v22 = v14;
  v15 = [v13 runVideoRequest:requestCopy reply:v21];

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v15;
}

void __62__PLAssetsdResourceAvailabilityClient_sendVideoRequest_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdResourceAvailabilityClient sendVideoRequest:reply:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendMakeResourceUnavailableRequest:(id)request
{
  v17 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v13 = 0u;
  *sel = 0u;
  v11 = 0u;
  v5 = +[PLXPCMessageLogger enabled];
  LOBYTE(v11) = v5;
  if (v5)
  {
    *(&v11 + 1) = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sendMakeResourceUnavailableRequest:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);

    os_activity_scope_enter(*(&v11 + 1), (&v13 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  _unboostingRemoteObjectProxy = [proxyFactory _unboostingRemoteObjectProxy];
  [_unboostingRemoteObjectProxy makeResourceUnavailableWithRequest:requestCopy];

  if (v12 == 1)
  {
    os_activity_scope_leave((&v13 + 8));
  }

  if (v13)
  {
    v8 = PLRequestGetLog();
    v9 = v8;
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v16 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_END, v13, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

- (id)sendMakeResourceAvailableRequest:(id)request reply:(id)reply
{
  v30 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  replyCopy = reply;
  v26 = 0u;
  *sel = 0u;
  v25 = 0u;
  v8 = +[PLXPCMessageLogger enabled];
  LOBYTE(v25) = v8;
  if (v8)
  {
    v9 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: sendMakeResourceAvailableRequest:reply:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v10 = *(&v25 + 1);
    *(&v25 + 1) = v9;

    os_activity_scope_enter(v9, (&v26 + 8));
  }

  proxyFactory = [(PLAssetsdBaseClient *)self proxyFactory];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __78__PLAssetsdResourceAvailabilityClient_sendMakeResourceAvailableRequest_reply___block_invoke;
  v23[3] = &unk_1E7932DA8;
  v12 = replyCopy;
  v24 = v12;
  v13 = [proxyFactory remoteObjectProxyWithErrorHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __78__PLAssetsdResourceAvailabilityClient_sendMakeResourceAvailableRequest_reply___block_invoke_1;
  v21[3] = &unk_1E792FCA8;
  v14 = v12;
  v22 = v14;
  v15 = [v13 makeResourceAvailableWithRequest:requestCopy reply:v21];

  if (v25 == 1)
  {
    os_activity_scope_leave((&v26 + 8));
  }

  if (v26)
  {
    v16 = PLRequestGetLog();
    v17 = v16;
    v18 = v26;
    if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      Name = sel_getName(sel[1]);
      *buf = 136446210;
      v29 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v17, OS_SIGNPOST_INTERVAL_END, v18, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }

  return v15;
}

void __78__PLAssetsdResourceAvailabilityClient_sendMakeResourceAvailableRequest_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "[PLAssetsdResourceAvailabilityClient sendMakeResourceAvailableRequest:reply:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v5, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

@end