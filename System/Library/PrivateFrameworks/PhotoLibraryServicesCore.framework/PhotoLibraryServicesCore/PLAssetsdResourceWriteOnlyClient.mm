@interface PLAssetsdResourceWriteOnlyClient
- (void)saveAssetWithJobDictionary:(id)a3 imageSurface:(__IOSurface *)a4 previewImageSurface:(__IOSurface *)a5 completionHandler:(id)a6;
@end

@implementation PLAssetsdResourceWriteOnlyClient

- (void)saveAssetWithJobDictionary:(id)a3 imageSurface:(__IOSurface *)a4 previewImageSurface:(__IOSurface *)a5 completionHandler:(id)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  v13 = +[PLXPCMessageLogger enabled];
  LOBYTE(v43) = v13;
  if (v13)
  {
    v14 = _os_activity_create(&dword_1AA9BD000, "PLXPC Client: saveAssetWithJobDictionary:imageSurface:previewImageSurface:completionHandler:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v15 = *(&v43 + 1);
    *(&v43 + 1) = v14;

    os_activity_scope_enter(v14, (&v44 + 8));
  }

  if (!v12)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"PLAssetsdResourceWriteOnlyClient.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];
  }

  v16 = objc_autoreleasePoolPush();
  v17 = [v11 objectForKey:@"callStack"];
  if (v17)
  {
    v18 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = NSStringFromSelector(a2);
      *buf = 138412546;
      v47 = v19;
      v48 = 2112;
      v49 = v17;
      _os_log_impl(&dword_1AA9BD000, v18, OS_LOG_TYPE_DEFAULT, "##### %@ %@", buf, 0x16u);
    }

    v20 = [MEMORY[0x1E695DFD8] setWithObject:@"callStack"];
    _PLJobLogDictionary(v11, 0, v20);
  }

  if (a4)
  {
    CFRetain(a4);
  }

  if (a5)
  {
    CFRetain(a5);
  }

  v21 = [(PLAssetsdBaseClient *)self proxyFactory];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __114__PLAssetsdResourceWriteOnlyClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke;
  v39[3] = &unk_1E79326F0;
  v41 = a4;
  v42 = a5;
  v40 = v12;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3254779904;
  v29[2] = __114__PLAssetsdResourceWriteOnlyClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke_13;
  v29[3] = &unk_1F1F72500;
  v32 = v43;
  v33 = *(&v43 + 1);
  v34 = v44;
  v35 = v45;
  v36 = a2;
  v22 = v11;
  v30 = v22;
  v37 = a4;
  v38 = a5;
  v23 = v40;
  v31 = v23;
  [v21 remoteObjectProxyWithErrorHandler:v39 handler:v29];

  objc_autoreleasePoolPop(v16);
  if (v43 == 1)
  {
    os_activity_scope_leave((&v44 + 8));
  }

  if (v44)
  {
    v24 = PLRequestGetLog();
    v25 = v24;
    v26 = v44;
    if ((v44 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      Name = sel_getName(*(&v45 + 1));
      *buf = 136446210;
      v47 = Name;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v25, OS_SIGNPOST_INTERVAL_END, v26, "PLXPC Sync", "%{public}s", buf, 0xCu);
    }
  }
}

void __114__PLAssetsdResourceWriteOnlyClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLGatekeeperXPCGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[PLAssetsdResourceWriteOnlyClient saveAssetWithJobDictionary:imageSurface:previewImageSurface:completionHandler:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_1AA9BD000, v4, OS_LOG_TYPE_ERROR, "Error getting remote object proxy for %s: %@", &v7, 0x16u);
  }

  v5 = a1[5];
  v6 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  (*(a1[4] + 16))();
}

void __114__PLAssetsdResourceWriteOnlyClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke_13(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a1 + 48) == 1)
  {
    v4 = PLRequestGetLog();
    v5 = os_signpost_id_generate(v4);
    v20 = @"SignpostId";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];
    v21[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v3 set_userInfo:v7];

    v8 = v4;
    v9 = v8;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v10 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      v19 = v10;
      _os_signpost_emit_with_name_impl(&dword_1AA9BD000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PLXPC Async", "%{public}@", buf, 0xCu);
    }
  }

  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __114__PLAssetsdResourceWriteOnlyClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke_16;
  v16[3] = &unk_1E7932720;
  v13 = *(a1 + 32);
  v17 = *(a1 + 40);
  [v3 saveAssetWithDataAndPorts:v13 imageSurface:v11 previewImageSurface:v12 reply:v16];
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

void __114__PLAssetsdResourceWriteOnlyClient_saveAssetWithJobDictionary_imageSurface_previewImageSurface_completionHandler___block_invoke_16(uint64_t a1, int a2, void *a3, int a4, int a5, void *a6)
{
  v16 = a3;
  v11 = a6;
  v12 = *(a1 + 32);
  if (!a2)
  {
    if (a4)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = 42001;
    }

    else
    {
      if (!a5)
      {
        (*(v12 + 16))(v12, 0, 0, v11);
        goto LABEL_9;
      }

      v13 = MEMORY[0x1E696ABC0];
      v14 = 42002;
    }

    v15 = [v13 errorWithDomain:@"com.apple.photos.error" code:v14 userInfo:0];
    (*(v12 + 16))(v12, 0, 0, v15);

    goto LABEL_9;
  }

  (*(v12 + 16))(v12, 1, v16, 0);
LABEL_9:
}

@end