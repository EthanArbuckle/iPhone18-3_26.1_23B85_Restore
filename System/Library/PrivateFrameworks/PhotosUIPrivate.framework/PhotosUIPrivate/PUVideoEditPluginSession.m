@interface PUVideoEditPluginSession
- (id)videoDataSource;
- (unint64_t)pluginManagerMediaType;
- (void)loadItemProviderWithSupportedAdjustmentData:(id)a3 loadHandler:(id)a4;
- (void)setAllowLoopingVideoExtensions:(BOOL)a3;
@end

@implementation PUVideoEditPluginSession

- (void)loadItemProviderWithSupportedAdjustmentData:(id)a3 loadHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PUVideoEditPluginSession *)self videoDataSource];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__92844;
  v28[4] = __Block_byref_object_dispose__92845;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__92844;
  v26[4] = __Block_byref_object_dispose__92845;
  v27 = 0;
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __84__PUVideoEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke;
  v23[3] = &unk_1E7B7FBC0;
  v25 = v28;
  v10 = v9;
  v24 = v10;
  [v8 editPluginSession:self loadPlaceholderImageWithHandler:v23];
  dispatch_group_enter(v10);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __84__PUVideoEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_2;
  v20[3] = &unk_1E7B7FBE8;
  v22 = v26;
  v11 = v10;
  v21 = v11;
  [v8 editPluginSession:self loadVideoURLWithHandler:v20];
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PUVideoEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_3;
  block[3] = &unk_1E7B7FC38;
  v19 = v28;
  block[4] = self;
  v16 = v6;
  v17 = v7;
  v18 = v26;
  v13 = v7;
  v14 = v6;
  dispatch_group_notify(v11, v12, block);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);
}

void __84__PUVideoEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __84__PUVideoEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __84__PUVideoEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) asset];
  if ([*(*(*(a1 + 56) + 8) + 40) isFileURL])
  {
    v3 = [*(*(*(a1 + 56) + 8) + 40) path];
    v4 = PLGetSandboxExtensionToken();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v6 = *MEMORY[0x1E69791B8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __84__PUVideoEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_4;
  v9[3] = &unk_1E7B7FC10;
  v10 = v2;
  v13 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  v11 = *(a1 + 40);
  v12 = v4;
  v7 = v4;
  v8 = v2;
  [v5 registerItemForTypeIdentifier:v6 loadHandler:v9];
  (*(*(a1 + 48) + 16))();
}

void __84__PUVideoEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4 = a2;
  v12 = UIImageJPEGRepresentation(v3, 0.899999976);
  v5 = objc_alloc_init(MEMORY[0x1E6979110]);
  [v5 setMediaType:{objc_msgSend(*(a1 + 32), "mediaType")}];
  [v5 setMediaSubtypes:{objc_msgSend(*(a1 + 32), "mediaSubtypes")}];
  if ([*(a1 + 32) isAdjusted])
  {
    v6 = [MEMORY[0x1E6987E28] assetWithURL:*(*(*(a1 + 64) + 8) + 40)];
    v7 = [*(a1 + 32) mediaSubtypes];
    v8 = [MEMORY[0x1E69BE540] isHFRVideoAVAsset:v6];
    v9 = 0x20000;
    if (!v8)
    {
      v9 = 0;
    }

    [v5 setMediaSubtypes:v7 & 0xFFFFFFFFFFFDFFFFLL | v9];
  }

  [v5 setPlaybackStyle:{objc_msgSend(*(a1 + 32), "playbackStyle")}];
  v10 = [*(a1 + 32) creationDate];
  [v5 setCreationDate:v10];

  v11 = [*(a1 + 32) location];
  [v5 setLocation:v11];

  [v5 setAdjustmentData:*(a1 + 40)];
  [v5 setPlaceholderImageData:v12];
  [v5 setVideoURL:*(*(*(a1 + 64) + 8) + 40)];
  [v5 setVideoPathSandboxExtensionToken:*(a1 + 48)];
  v4[2](v4, v5, 0);
}

- (id)videoDataSource
{
  v4 = [(PUEditPluginSession *)self dataSource];
  if (([v4 conformsToProtocol:&unk_1F2C63F20] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUVideoEditPluginSession.m" lineNumber:51 description:@"data source must conform to PUVideoEditPluginSessionDataSource"];
  }

  return v4;
}

- (unint64_t)pluginManagerMediaType
{
  if ([(PUVideoEditPluginSession *)self allowLoopingVideoExtensions])
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (void)setAllowLoopingVideoExtensions:(BOOL)a3
{
  if (self->_allowLoopingVideoExtensions != a3)
  {
    self->_allowLoopingVideoExtensions = a3;
    [(PUEditPluginSession *)self updatePluginManager];
  }
}

@end