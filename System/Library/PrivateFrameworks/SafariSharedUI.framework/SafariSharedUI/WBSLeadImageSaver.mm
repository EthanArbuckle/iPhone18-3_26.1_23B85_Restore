@interface WBSLeadImageSaver
+ (void)saveLeadImageFromWebView:(id)view toLeadImageCacheRegisteredWithMetadataManager:(id)manager completionHandler:(id)handler;
@end

@implementation WBSLeadImageSaver

+ (void)saveLeadImageFromWebView:(id)view toLeadImageCacheRegisteredWithMetadataManager:(id)manager completionHandler:(id)handler
{
  viewCopy = view;
  managerCopy = manager;
  handlerCopy = handler;
  v10 = objc_alloc_init(MEMORY[0x1E696ECE0]);
  v11 = v10;
  if (v10)
  {
    [v10 setShouldFetchSubresources:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __110__WBSLeadImageSaver_saveLeadImageFromWebView_toLeadImageCacheRegisteredWithMetadataManager_completionHandler___block_invoke;
    aBlock[3] = &unk_1E8285E60;
    v28 = handlerCopy;
    v27 = managerCopy;
    v12 = _Block_copy(aBlock);
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__11;
    v24 = __Block_byref_object_dispose__11;
    v25 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __110__WBSLeadImageSaver_saveLeadImageFromWebView_toLeadImageCacheRegisteredWithMetadataManager_completionHandler___block_invoke_4;
    v17[3] = &unk_1E8285E88;
    v18 = v12;
    v19 = &v20;
    v13 = v12;
    v14 = [v11 _startFetchingMetadataForWebView:viewCopy isNonAppInitiated:1 completionHandler:v17];
    v15 = v21[5];
    v21[5] = v14;

    _Block_object_dispose(&v20, 8);
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v16);
  }
}

void __110__WBSLeadImageSaver_saveLeadImageFromWebView_toLeadImageCacheRegisteredWithMetadataManager_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 images];
    v9 = [v8 firstObject];
    v10 = [v9 URL];

    if (v10)
    {
      v11 = [WBSLeadImageCacheRequest requestWithURL:v10];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __110__WBSLeadImageSaver_saveLeadImageFromWebView_toLeadImageCacheRegisteredWithMetadataManager_completionHandler___block_invoke_2;
      v15[3] = &unk_1E8285E38;
      v12 = *(a1 + 32);
      v17 = *(a1 + 40);
      v16 = v10;
      [v12 preloadRequest:v11 withPriority:0 responseHandler:v15];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v13 = *(a1 + 40);
    if (v6)
    {
      (*(v13 + 16))(*(a1 + 40), 0, v6);
    }

    else
    {
      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:5 userInfo:0];
      (*(v13 + 16))(v13, 0, v14);
    }
  }
}

void __110__WBSLeadImageSaver_saveLeadImageFromWebView_toLeadImageCacheRegisteredWithMetadataManager_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 thumbnail];

  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = *(v4 + 16);
    v7 = *(a1 + 40);

    v6(v7, v5, 0);
  }

  else
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:5 userInfo:0];
    (*(v4 + 16))(v4, 0, v8);
  }
}

@end