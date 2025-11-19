@interface PUImageEditPluginSession
- (id)imageDataSource;
- (void)loadItemProviderWithSupportedAdjustmentData:(id)a3 loadHandler:(id)a4;
- (void)setAllowLivePhotoExtensions:(BOOL)a3;
- (void)setAllowSpatialPhotoExtensions:(BOOL)a3;
- (void)shouldLaunchPlugin:(id)a3 completion:(id)a4;
@end

@implementation PUImageEditPluginSession

- (void)loadItemProviderWithSupportedAdjustmentData:(id)a3 loadHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "loadItemProviderWithSupportedAdjustmentData", buf, 2u);
  }

  v9 = [(PUImageEditPluginSession *)self imageDataSource];
  v10 = [(PUEditPluginSession *)self asset];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__28466;
  v49[4] = __Block_byref_object_dispose__28467;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__28466;
  v47[4] = __Block_byref_object_dispose__28467;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__28466;
  v45[4] = __Block_byref_object_dispose__28467;
  v46 = 0;
  *buf = 0;
  v40 = buf;
  v41 = 0x3810000000;
  v42 = &unk_1B3DBEC63;
  v43 = *MEMORY[0x1E6960C70];
  v44 = *(MEMORY[0x1E6960C70] + 16);
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke;
  v36[3] = &unk_1E7B7FBC0;
  v38 = v49;
  v12 = v11;
  v37 = v12;
  [v9 editPluginSession:self loadPlaceholderImageWithHandler:v36];
  v13 = [(PUEditPluginSession *)self currentPlugin];
  v14 = [v13 extension];
  v15 = [v14 pu_supportsMediaType:1];

  if (v15 && [(PUImageEditPluginSession *)self allowLivePhotoExtensions])
  {
    dispatch_group_enter(v12);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_2;
    v32[3] = &unk_1E7B77448;
    v34 = v45;
    v35 = buf;
    v33 = v12;
    [v9 editPluginSession:self loadVideoComplementURLWithHandler:v32];
  }

  dispatch_group_enter(v12);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_3;
  v29[3] = &unk_1E7B7FBC0;
  v31 = v47;
  v16 = v12;
  v30 = v16;
  [v9 editPluginSession:self loadDisplaySizeImageWithHandler:v29];
  v17 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_4;
  block[3] = &unk_1E7B774C0;
  v25 = v45;
  v26 = buf;
  v27 = v49;
  v28 = v47;
  block[4] = self;
  v22 = v10;
  v23 = v6;
  v24 = v7;
  v18 = v7;
  v19 = v6;
  v20 = v10;
  dispatch_group_notify(v16, v17, block);

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
}

void __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_2(uint64_t a1, void *a2, __int128 *a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v8 = a2;
  v6 = *(*(a1 + 48) + 8);
  v7 = *a3;
  *(v6 + 48) = *(a3 + 2);
  *(v6 + 32) = v7;
  dispatch_group_leave(*(a1 + 32));
}

void __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_4(uint64_t a1)
{
  v2 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1B36F3000, v2, OS_LOG_TYPE_DEFAULT, "loadItemProviderWithSupportedAdjustmentData; dispatch group complete", buf, 2u);
  }

  v3 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  if (([*(*(*(a1 + 64) + 8) + 40) isFileURL] & 1) == 0)
  {
    objc_initWeak(buf, *(a1 + 32));
    goto LABEL_7;
  }

  v4 = *(*(*(a1 + 72) + 8) + 44);
  objc_initWeak(buf, *(a1 + 32));
  if ((v4 & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    v6 = 0;
    goto LABEL_8;
  }

  v5 = [*(*(*(a1 + 64) + 8) + 40) path];
  v6 = PLGetSandboxExtensionToken();

  v7 = 1;
LABEL_8:
  v8 = *MEMORY[0x1E69791B8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_289;
  v13[3] = &unk_1E7B77498;
  v17 = *(a1 + 80);
  v14 = *(a1 + 40);
  v21 = v7;
  v9 = *(a1 + 48);
  v10 = *(a1 + 64);
  v15 = v9;
  v18 = v10;
  v11 = v6;
  v12 = *(a1 + 72);
  v16 = v11;
  v19 = v12;
  objc_copyWeak(&v20, buf);
  [v3 registerItemForTypeIdentifier:v8 loadHandler:v13];
  (*(*(a1 + 56) + 16))();
  objc_destroyWeak(&v20);

  objc_destroyWeak(buf);
}

void __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_289(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = UIImageJPEGRepresentation(*(*(*(a1 + 56) + 8) + 40), 0.899999976);
  v5 = UIImageJPEGRepresentation(*(*(*(a1 + 64) + 8) + 40), 0.899999976);
  v6 = [*(a1 + 32) mediaSubtypes];
  if (*(a1 + 96))
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_alloc_init(MEMORY[0x1E6979110]);
  [v8 setMediaType:1];
  [v8 setMediaSubtypes:v7 | v6];
  [v8 setPlaybackStyle:{objc_msgSend(*(a1 + 32), "playbackStyle")}];
  v9 = [*(a1 + 32) creationDate];
  [v8 setCreationDate:v9];

  v10 = [*(a1 + 32) location];
  [v8 setLocation:v10];

  [v8 setAdjustmentData:*(a1 + 40)];
  [v8 setPlaceholderImageData:v4];
  [v8 setDisplaySizeImageData:v5];
  [v8 setVideoURL:*(*(*(a1 + 72) + 8) + 40)];
  [v8 setVideoPathSandboxExtensionToken:*(a1 + 48)];
  v11 = *(*(a1 + 80) + 8);
  v21 = *(v11 + 32);
  v22 = *(v11 + 48);
  [v8 setLivePhotoStillDisplayTime:&v21];
  v12 = [*(a1 + 32) accessibilityDescription];
  [v8 setAccessibilityDescription:v12];

  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v14 = [WeakRetained imageDataSource];
  v15 = objc_loadWeakRetained((a1 + 88));
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_2_291;
  v18[3] = &unk_1E7B77470;
  v19 = v8;
  v20 = v3;
  v16 = v3;
  v17 = v8;
  [v14 editPluginSession:v15 loadFullSizeImageWithHandler:v18];
}

uint64_t __84__PUImageEditPluginSession_loadItemProviderWithSupportedAdjustmentData_loadHandler___block_invoke_2_291(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = PLPhotoEditGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEFAULT, "loadItemProviderWithSupportedAdjustmentData; full size image loaded", v11, 2u);
  }

  v9 = PLExifOrientationFromImageOrientation();
  [*(a1 + 32) setFullSizeImageURL:v7];

  [*(a1 + 32) setFullSizeImageURLSandboxExtensionToken:v6];
  [*(a1 + 32) setFullSizeImageExifOrientation:v9];
  return (*(*(a1 + 40) + 16))();
}

- (void)shouldLaunchPlugin:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PUImageEditPluginSession *)self allowSpatialPhotoExtensions])
  {
    v39 = PULocalizedString(@"PLUGIN_DISABLES_SPATIAL_PHOTO_TITLE_FORMAT");
    v37 = [v6 title];
    v8 = PUStringWithValidatedFormat();

    v9 = MEMORY[0x1E69DC650];
    v10 = PULocalizedString(@"PLUGIN_DISABLES_SPATIAL_PHOTO_MESSAGE");
    v11 = [v9 alertControllerWithTitle:v8 message:v10 preferredStyle:{1, v37}];

    v12 = MEMORY[0x1E69DC648];
    v13 = PULocalizedString(@"OK");
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __58__PUImageEditPluginSession_shouldLaunchPlugin_completion___block_invoke;
    v47[3] = &unk_1E7B80980;
    v14 = v6;
    v15 = v7;
    v16 = v7;
    v48 = v16;
    v17 = [v12 actionWithTitle:v13 style:0 handler:v47];
    [v11 addAction:v17];

    v18 = MEMORY[0x1E69DC648];
    v19 = PULocalizedString(@"CANCEL");
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __58__PUImageEditPluginSession_shouldLaunchPlugin_completion___block_invoke_2;
    v45[3] = &unk_1E7B80980;
    v20 = v16;
    v7 = v15;
    v6 = v14;
    v46 = v20;
    v21 = [v18 actionWithTitle:v19 style:1 handler:v45];
    [v11 addAction:v21];

    [(PUEditPluginSession *)self presentAlertController:v11];
    v22 = v48;
  }

  else
  {
    if (!-[PUImageEditPluginSession allowLivePhotoExtensions](self, "allowLivePhotoExtensions") || ([v6 extension], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "pu_supportsMediaType:", 1), v23, (v24 & 1) != 0))
    {
      v40.receiver = self;
      v40.super_class = PUImageEditPluginSession;
      [(PUEditPluginSession *)&v40 shouldLaunchPlugin:v6 completion:v7];
      goto LABEL_7;
    }

    v39 = PULocalizedString(@"PLUGIN_DISABLES_LIVE_PHOTO_TITLE_FORMAT");
    v38 = [v6 title];
    v8 = PUStringWithValidatedFormat();

    v25 = MEMORY[0x1E69DC650];
    v26 = PULocalizedString(@"PLUGIN_DISABLES_LIVE_PHOTO_MESSAGE");
    v11 = [v25 alertControllerWithTitle:v8 message:v26 preferredStyle:{1, v38}];

    v27 = MEMORY[0x1E69DC648];
    v28 = PULocalizedString(@"OK");
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __58__PUImageEditPluginSession_shouldLaunchPlugin_completion___block_invoke_3;
    v43[3] = &unk_1E7B80980;
    v29 = v6;
    v30 = v7;
    v31 = v7;
    v44 = v31;
    v32 = [v27 actionWithTitle:v28 style:0 handler:v43];
    [v11 addAction:v32];

    v33 = MEMORY[0x1E69DC648];
    v34 = PULocalizedString(@"CANCEL");
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __58__PUImageEditPluginSession_shouldLaunchPlugin_completion___block_invoke_4;
    v41[3] = &unk_1E7B80980;
    v35 = v31;
    v7 = v30;
    v6 = v29;
    v42 = v35;
    v36 = [v33 actionWithTitle:v34 style:1 handler:v41];
    [v11 addAction:v36];

    [(PUEditPluginSession *)self presentAlertController:v11];
    v22 = v44;
  }

LABEL_7:
}

- (id)imageDataSource
{
  v4 = [(PUEditPluginSession *)self dataSource];
  if (([v4 conformsToProtocol:&unk_1F2C63308] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PUImageEditPluginSession.m" lineNumber:54 description:@"data source must conform to PUImageEditPluginSessionDataSource"];
  }

  return v4;
}

- (void)setAllowSpatialPhotoExtensions:(BOOL)a3
{
  if (self->_allowSpatialPhotoExtensions != a3)
  {
    self->_allowSpatialPhotoExtensions = a3;
    [(PUEditPluginSession *)self updatePluginManager];
  }
}

- (void)setAllowLivePhotoExtensions:(BOOL)a3
{
  if (self->_allowLivePhotoExtensions != a3)
  {
    self->_allowLivePhotoExtensions = a3;
    [(PUEditPluginSession *)self updatePluginManager];
  }
}

@end