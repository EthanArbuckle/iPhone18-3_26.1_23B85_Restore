@interface PHAWallpaperSuggestionUpgradeSession
- (BOOL)beginUpgradeSessionAtURL:(id)a3;
- (BOOL)endUpgradeSessionAtURL:(id)a3;
- (PHAWallpaperSuggestionUpgradeSession)init;
- (id)upgradeSessionURLForPosterConfiguration:(id)a3;
- (void)fetchPosterConfigurationWithAssetDirectory:(id)a3 completion:(id)a4;
- (void)refreshPosterConfiguration:(id)a3 withSessionURL:(id)a4 completion:(id)a5;
- (void)upgradePosterConfiguration:(id)a3 options:(id)a4 completion:(id)a5;
- (void)upgradePosterConfiguration:(id)a3 withSessionURL:(id)a4 localIdentifier:(id)a5 options:(id)a6 completion:(id)a7;
- (void)upgradePosterConfiguration:(id)a3 withSessionURL:(id)a4 options:(id)a5 completion:(id)a6;
- (void)upgradePosterConfigurationWithAssetDirectory:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation PHAWallpaperSuggestionUpgradeSession

- (void)refreshPosterConfiguration:(id)a3 withSessionURL:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277D3E9E8];
  v11 = a4;
  v12 = objc_alloc_init(v10);
  v13 = [v11 path];

  [v12 setIdentifier:v13];
  posterService = self->_posterService;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__PHAWallpaperSuggestionUpgradeSession_refreshPosterConfiguration_withSessionURL_completion___block_invoke;
  v17[3] = &unk_2788B1A28;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v15 = v9;
  v16 = v8;
  [(PRSService *)posterService refreshPosterConfiguration:v16 sessionInfo:v12 completion:v17];
}

void __93__PHAWallpaperSuggestionUpgradeSession_refreshPosterConfiguration_withSessionURL_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 24);
  if (!v5)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v11 = a1[5];
    v9 = v7;
    v10 = [v11 serverUUID];
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&dword_22FA28000, v9, OS_LOG_TYPE_ERROR, "Error refreshing poster configuration %{public}@: %{public}@", &v12, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = a1[5];
    v9 = v7;
    v10 = [v8 serverUUID];
    v12 = 138543362;
    v13 = v10;
    _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, "Successfully refreshed poster configuration %{public}@", &v12, 0xCu);
LABEL_4:
  }

LABEL_6:
  (*(a1[6] + 16))();
}

- (BOOL)endUpgradeSessionAtURL:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__PHAWallpaperSuggestionUpgradeSession_endUpgradeSessionAtURL___block_invoke;
  block[3] = &unk_2788B1AC8;
  block[4] = self;
  v6 = v4;
  v22 = v6;
  v23 = &v24;
  dispatch_sync(queue, block);
  if (*(v25 + 24) == 1)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v20 = 0;
    v8 = [v7 removeItemAtURL:v6 error:&v20];
    v9 = v20;

    v10 = self->_loggingConnection;
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = [v6 path];
        *buf = 138543362;
        v29 = v12;
        _os_log_impl(&dword_22FA28000, v11, OS_LOG_TYPE_INFO, "Successfully removed temporary poster configuration data at %{public}@", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v19 = [v6 path];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_22FA28000, v11, OS_LOG_TYPE_ERROR, "Failed to remove temporary poster configuration data at %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v9 = self->_loggingConnection;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [v6 path];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_22FA28000, v9, OS_LOG_TYPE_ERROR, "END upgrade called with unknown session at %{public}@", buf, 0xCu);
    }
  }

  v14 = self->_loggingConnection;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [v6 path];
    v16 = *(v25 + 24);
    *buf = 138543618;
    v29 = v15;
    v30 = 1024;
    v31 = v16;
    _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_INFO, "END upgrade session at %{public}@ (success=%d)", buf, 0x12u);
  }

  v17 = *(v25 + 24);
  _Block_object_dispose(&v24, 8);

  return v17 & 1;
}

void __63__PHAWallpaperSuggestionUpgradeSession_endUpgradeSessionAtURL___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) path];
  LODWORD(v2) = [v2 containsObject:v3];

  if (v2)
  {
    v4 = *(*(a1 + 32) + 40);
    v5 = [*(a1 + 40) path];
    [v4 removeObject:v5];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (BOOL)beginUpgradeSessionAtURL:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__PHAWallpaperSuggestionUpgradeSession_beginUpgradeSessionAtURL___block_invoke;
  block[3] = &unk_2788B1AC8;
  block[4] = self;
  v6 = v4;
  v24 = v6;
  v25 = &v26;
  dispatch_sync(queue, block);
  if (*(v27 + 24) == 1)
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v6 path];
    v9 = [v7 fileExistsAtPath:v8];

    if (v9)
    {
      v10 = [MEMORY[0x277CCAA00] defaultManager];
      v22 = 0;
      v11 = [v10 removeItemAtURL:v6 error:&v22];
      v12 = v22;

      v13 = self->_loggingConnection;
      v14 = v13;
      if (v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v15 = [v6 path];
          *buf = 138543362;
          v31 = v15;
          _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_INFO, "Successfully removed temporary poster configuration data at %{public}@", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = [v6 path];
        *buf = 138543362;
        v31 = v21;
        _os_log_error_impl(&dword_22FA28000, v14, OS_LOG_TYPE_ERROR, "Failed to remove temporary poster configuration data at %{public}@", buf, 0xCu);
      }
    }
  }

  v16 = self->_loggingConnection;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [v6 path];
    v18 = *(v27 + 24);
    *buf = 138543618;
    v31 = v17;
    v32 = 1024;
    v33 = v18;
    _os_log_impl(&dword_22FA28000, v16, OS_LOG_TYPE_INFO, "BEGIN upgrade session at %{public}@ (success=%d)", buf, 0x12u);
  }

  v19 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  return v19 & 1;
}

void __65__PHAWallpaperSuggestionUpgradeSession_beginUpgradeSessionAtURL___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3 = [*(a1 + 40) path];
  LOBYTE(v2) = [v2 containsObject:v3];

  if ((v2 & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 40);
    v5 = [*(a1 + 40) path];
    [v4 addObject:v5];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)upgradeSessionURLForPosterConfiguration:(id)a3
{
  v3 = [a3 serverUUID];
  v4 = [v3 UUIDString];

  v5 = MEMORY[0x277CBEBC0];
  v6 = NSTemporaryDirectory();
  v7 = [v5 fileURLWithPath:v6 isDirectory:1];

  v8 = [v7 URLByAppendingPathComponent:@"UpgradeSessions"];
  v9 = [v8 URLByAppendingPathComponent:v4];

  return v9;
}

- (void)upgradePosterConfiguration:(id)a3 withSessionURL:(id)a4 localIdentifier:(id)a5 options:(id)a6 completion:(id)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [a4 URLByAppendingPathComponent:v13];
  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v40 = 0;
  v18 = [v17 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:&v40];
  v19 = v40;

  if (v18)
  {
    v34 = v19;
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v20 setObject:&unk_2844CC8D0 forKeyedSubscript:@"WallpaperUpgradeMode"];
    v21 = [v14 objectForKeyedSubscript:@"LayoutConfiguration"];
    [v20 setObject:v21 forKeyedSubscript:@"LayoutConfiguration"];

    v22 = [v14 objectForKeyedSubscript:@"LayerStackOptions"];
    [v20 setObject:v22 forKeyedSubscript:@"LayerStackOptions"];

    v23 = [v14 objectForKeyedSubscript:@"AllowedLayoutStrategies"];
    [v20 setObject:v23 forKeyedSubscript:@"AllowedLayoutStrategies"];

    v24 = [v14 objectForKeyedSubscript:@"OverrideEditConfiguration"];
    [v20 setObject:v24 forKeyedSubscript:@"OverrideEditConfiguration"];

    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v26 = loggingConnection;
      v27 = [v12 serverUUID];
      v28 = [v16 path];
      *buf = 138544130;
      v42 = v27;
      v43 = 2114;
      v44 = v13;
      v45 = 2114;
      v46 = v28;
      v47 = 2114;
      v48 = v20;
      _os_log_impl(&dword_22FA28000, v26, OS_LOG_TYPE_DEFAULT, "Upgrading poster configuration %{public}@ with local identifier: %{public}@ to: %{public}@ with options: %{public}@", buf, 0x2Au);
    }

    mediaAnalysisService = self->_mediaAnalysisService;
    v30 = [v12 assetDirectory];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __117__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfiguration_withSessionURL_localIdentifier_options_completion___block_invoke;
    v35[3] = &unk_2788B1AA0;
    v35[4] = self;
    v36 = v12;
    v37 = v13;
    v38 = v16;
    v39 = v15;
    [(VCPMediaAnalysisService *)mediaAnalysisService requestWallpaperUpgradeAtURL:v30 toDestinationURL:v38 withOptions:v20 andCompletionHandler:v35];

    v19 = v34;
  }

  else
  {
    v31 = self->_loggingConnection;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = v31;
      v33 = [v16 path];
      *buf = 138543618;
      v42 = v33;
      v43 = 2114;
      v44 = v19;
      _os_log_error_impl(&dword_22FA28000, v32, OS_LOG_TYPE_ERROR, "Failed to create poster upgrade directory: %{public}@, error: %{public}@", buf, 0x16u);
    }

    (*(v15 + 2))(v15, v19);
  }
}

void __117__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfiguration_withSessionURL_localIdentifier_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 24);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v8 serverUUID];
      v11 = *(a1 + 48);
      v12 = [*(a1 + 56) path];
      v18 = 138543874;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, "Successfully upgraded poster configuration %{public}@ with local identifier: %{public}@ to: %{public}@", &v18, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = *(a1 + 40);
    v14 = v7;
    v15 = [v13 serverUUID];
    v16 = *(a1 + 48);
    v17 = [*(a1 + 56) path];
    v18 = 138544130;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    v24 = 2114;
    v25 = v6;
    _os_log_error_impl(&dword_22FA28000, v14, OS_LOG_TYPE_ERROR, "Failed to upgrade poster configuration %{public}@ with local identifier: %{public}@ to: %{public}@, error: %{public}@", &v18, 0x2Au);
  }

  (*(*(a1 + 64) + 16))();
}

- (void)upgradePosterConfiguration:(id)a3 withSessionURL:(id)a4 options:(id)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v22 = a5;
  v12 = a6;
  v13 = MEMORY[0x277D3B490];
  v14 = [v10 assetDirectory];
  v29 = 0;
  v15 = [v13 loadFromURL:v14 error:&v29];
  v16 = v29;

  if (v15)
  {
    objc_initWeak(location, self);
    v17 = [v15 identifier];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __101__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfiguration_withSessionURL_options_completion___block_invoke;
    v23[3] = &unk_2788B1A78;
    objc_copyWeak(&v28, location);
    v24 = v10;
    v25 = v11;
    v26 = self;
    v27 = v12;
    [(PHAWallpaperSuggestionUpgradeSession *)self upgradePosterConfiguration:v24 withSessionURL:v25 localIdentifier:v17 options:v22 completion:v23];

    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v19 = loggingConnection;
      v20 = [v10 assetDirectory];
      v21 = [v20 path];
      *location = 138543618;
      *&location[4] = v21;
      v31 = 2114;
      v32 = v16;
      _os_log_error_impl(&dword_22FA28000, v19, OS_LOG_TYPE_ERROR, "Failed to load poster configuration from asset directory: '%{public}@', error: %{public}@", location, 0x16u);
    }

    (*(v12 + 2))(v12, 0, v16);
  }
}

void __101__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfiguration_withSessionURL_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 48) + 24);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = v4;
      v12 = [v10 serverUUID];
      *buf = 138543618;
      v21 = v12;
      v22 = 2114;
      v23 = v3;
      _os_log_error_impl(&dword_22FA28000, v11, OS_LOG_TYPE_ERROR, "Failed to upgrade poster configuration %{public}@, error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v6 = [*(a1 + 32) assetDirectory];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __101__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfiguration_withSessionURL_options_completion___block_invoke_2;
    v13[3] = &unk_2788B1A50;
    objc_copyWeak(&v19, (a1 + 64));
    v14 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v15 = v7;
    v16 = v8;
    v17 = 0;
    v18 = v9;
    [WeakRetained fetchPosterConfigurationWithAssetDirectory:v6 completion:v13];

    objc_destroyWeak(&v19);
  }
}

void __101__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfiguration_withSessionURL_options_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __101__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfiguration_withSessionURL_options_completion___block_invoke_3;
    v23[3] = &unk_2788B1A28;
    v23[4] = *(a1 + 48);
    v24 = v8;
    v25 = *(a1 + 64);
    [WeakRetained refreshPosterConfiguration:v24 withSessionURL:v9 completion:v23];
  }

  else
  {
    v10 = [v5 domain];
    v11 = [v10 isEqualToString:@"com.apple.photoanalysis"];

    v12 = *(*(a1 + 48) + 24);
    if (v11)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v14 = v12;
        v15 = [v13 assetDirectory];
        v16 = [v15 path];
        *buf = 138543362;
        v27 = v16;
        _os_log_impl(&dword_22FA28000, v14, OS_LOG_TYPE_DEFAULT, "Poster configuration at: %{public}@ is out of date, discarding...", buf, 0xCu);
      }

      v17 = *(*(a1 + 64) + 16);
    }

    else
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 32);
        v19 = v12;
        v20 = [v18 assetDirectory];
        v21 = [v20 path];
        v22 = *(a1 + 56);
        *buf = 138543618;
        v27 = v21;
        v28 = 2114;
        v29 = v22;
        _os_log_error_impl(&dword_22FA28000, v19, OS_LOG_TYPE_ERROR, "Failed to reload poster configuration at: %{public}@, error: %{public}@", buf, 0x16u);
      }

      v17 = *(*(a1 + 64) + 16);
    }

    v17();
  }
}

void __101__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfiguration_withSessionURL_options_completion___block_invoke_3(void *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[4] + 24);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v9 = v7;
      v10 = [v8 serverUUID];
      v11 = [v5 assetDirectory];
      v16 = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, "Successfully refreshed poster configuration %{public}@ to: %{public}@", &v16, 0x16u);
    }

    v12 = *(a1[6] + 16);
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[5];
      v14 = v7;
      v15 = [v13 serverUUID];
      v16 = 138543618;
      v17 = v15;
      v18 = 2114;
      v19 = v6;
      _os_log_error_impl(&dword_22FA28000, v14, OS_LOG_TYPE_ERROR, "Failed to refresh poster configuration %{public}@, error: %{public}@", &v16, 0x16u);
    }

    v12 = *(a1[6] + 16);
  }

  v12();
}

- (void)upgradePosterConfiguration:(id)a3 options:(id)a4 completion:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PHAWallpaperSuggestionUpgradeSession *)self upgradeSessionURLForPosterConfiguration:v8];
  if ([(PHAWallpaperSuggestionUpgradeSession *)self beginUpgradeSessionAtURL:v11])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __86__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfiguration_options_completion___block_invoke;
    v16[3] = &unk_2788B1C60;
    v16[4] = self;
    v17 = v11;
    v18 = v10;
    [(PHAWallpaperSuggestionUpgradeSession *)self upgradePosterConfiguration:v8 withSessionURL:v17 options:v9 completion:v16];
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
    {
      v13 = loggingConnection;
      v14 = [v11 path];
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_22FA28000, v13, OS_LOG_TYPE_DEFAULT, "Poster configuration upgrade session already in progress at %{public}@, aborting...", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CCA9B8] pl_analysisErrorWithCode:14 localizedDescription:@"Poster configuration upgrade session already in progress"];
    (*(v10 + 2))(v10, 0, v15);
  }
}

void __86__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfiguration_options_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a3;
  [v4 endUpgradeSessionAtURL:v5];
  (*(a1[6] + 16))();
}

- (void)fetchPosterConfigurationWithAssetDirectory:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v9 = loggingConnection;
    v10 = [v6 path];
    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, "Fetching poster configuration with asset directory: %{public}@", buf, 0xCu);
  }

  posterService = self->_posterService;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __94__PHAWallpaperSuggestionUpgradeSession_fetchPosterConfigurationWithAssetDirectory_completion___block_invoke;
  v14[3] = &unk_2788B1A00;
  v14[4] = self;
  v15 = v6;
  v16 = v7;
  v12 = v7;
  v13 = v6;
  [(PRSService *)posterService fetchPosterConfigurationsForExtension:@"com.apple.PhotosUIPrivate.PhotosPosterProvider" completion:v14];
}

void __94__PHAWallpaperSuggestionUpgradeSession_fetchPosterConfigurationWithAssetDirectory_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      *buf = 134217984;
      v38 = [v5 count];
      _os_log_impl(&dword_22FA28000, v9, OS_LOG_TYPE_DEFAULT, "Successfully fetched %lu poster configurations", buf, 0xCu);

      v7 = *(a1 + 32);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __94__PHAWallpaperSuggestionUpgradeSession_fetchPosterConfigurationWithAssetDirectory_completion___block_invoke_22;
    aBlock[3] = &unk_2788B19B0;
    aBlock[4] = v7;
    v10 = _Block_copy(aBlock);
    v11 = v10[2](v10, *(a1 + 40));
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __94__PHAWallpaperSuggestionUpgradeSession_fetchPosterConfigurationWithAssetDirectory_completion___block_invoke_24;
    v32[3] = &unk_2788B19D8;
    v12 = v10;
    v35 = v12;
    v13 = v11;
    v33 = v13;
    v34 = *(a1 + 40);
    v14 = [v5 indexOfObjectPassingTest:v32];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 40);
        v29 = v15;
        v30 = [v28 path];
        *buf = 138543362;
        v38 = v30;
        _os_log_error_impl(&dword_22FA28000, v29, OS_LOG_TYPE_ERROR, "Couldn't find poster configuration with asset directory: %{public}@", buf, 0xCu);
      }

      v16 = MEMORY[0x277CCA9B8];
      v17 = MEMORY[0x277CCACA8];
      v18 = [*(a1 + 40) path];
      v19 = [v17 stringWithFormat:@"Couldn't find poster configuration with asset directory: %@", v18];
      v20 = [v16 pl_analysisErrorWithCode:9 localizedDescription:v19];

      v21 = *(*(a1 + 48) + 16);
    }

    else
    {
      v20 = [v5 objectAtIndexedSubscript:v14];
      v22 = *(*(a1 + 32) + 24);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
        v24 = [v20 assetDirectory];
        [v24 path];
        v25 = v31 = v6;
        v26 = [v20 serverUUID];
        v27 = [v26 UUIDString];
        *buf = 138543618;
        v38 = v25;
        v39 = 2114;
        v40 = v27;
        _os_log_impl(&dword_22FA28000, v23, OS_LOG_TYPE_DEFAULT, "Found poster configuration with asset directory: %{public}@, identifier: %{public}@", buf, 0x16u);

        v6 = v31;
      }

      v21 = *(*(a1 + 48) + 16);
    }

    v21();
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v38 = v6;
      _os_log_error_impl(&dword_22FA28000, v8, OS_LOG_TYPE_ERROR, "Failed to fetch poster configurations: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

id __94__PHAWallpaperSuggestionUpgradeSession_fetchPosterConfigurationWithAssetDirectory_completion___block_invoke_22(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0;
  v4 = *MEMORY[0x277CBE808];
  v9 = 0;
  [v3 getResourceValue:&v10 forKey:v4 error:&v9];
  v5 = v10;
  v6 = v9;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v3;
      _os_log_error_impl(&dword_22FA28000, v7, OS_LOG_TYPE_ERROR, "Failed to get resource identifier for URL: %{public}@", buf, 0xCu);
    }
  }

  return v5;
}

uint64_t __94__PHAWallpaperSuggestionUpgradeSession_fetchPosterConfigurationWithAssetDirectory_completion___block_invoke_24(void *a1, void *a2)
{
  v3 = [a2 assetDirectory];
  v4 = (*(a1[6] + 16))();
  v5 = v4;
  v6 = a1[4];
  if (v6)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v6 = a1[5];
    v4 = v3;
  }

  v8 = [v4 isEqual:v6];

  return v8;
}

- (void)upgradePosterConfigurationWithAssetDirectory:(id)a3 options:(id)a4 completion:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
  {
    v12 = loggingConnection;
    v13 = [v8 path];
    *buf = 138543362;
    v24 = v13;
    _os_log_impl(&dword_22FA28000, v12, OS_LOG_TYPE_INFO, "Request to upgrade poster configuration at: %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __104__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfigurationWithAssetDirectory_options_completion___block_invoke;
  v17[3] = &unk_2788B1988;
  objc_copyWeak(&v22, buf);
  v14 = v9;
  v18 = v14;
  v15 = v10;
  v21 = v15;
  v19 = self;
  v16 = v8;
  v20 = v16;
  [(PHAWallpaperSuggestionUpgradeSession *)self fetchPosterConfigurationWithAssetDirectory:v16 completion:v17];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

void __104__PHAWallpaperSuggestionUpgradeSession_upgradePosterConfigurationWithAssetDirectory_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained upgradePosterConfiguration:v5 options:*(a1 + 32) completion:*(a1 + 56)];
  }

  else
  {
    v8 = *(*(a1 + 40) + 24);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v10 = v8;
      v11 = [v9 path];
      v12 = 138543618;
      v13 = v11;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_22FA28000, v10, OS_LOG_TYPE_ERROR, "Failed to load poster configuration at: %{public}@, error: %{public}@", &v12, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (PHAWallpaperSuggestionUpgradeSession)init
{
  v16.receiver = self;
  v16.super_class = PHAWallpaperSuggestionUpgradeSession;
  v2 = [(PHAWallpaperSuggestionUpgradeSession *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3EA00]);
    posterService = v2->_posterService;
    v2->_posterService = v3;

    v5 = [MEMORY[0x277D267E8] analysisService];
    mediaAnalysisService = v2->_mediaAnalysisService;
    v2->_mediaAnalysisService = v5;

    v7 = os_log_create("com.apple.photoanalysisd", "PHAWallpaperSuggestionUpgradeSession");
    loggingConnection = v2->_loggingConnection;
    v2->_loggingConnection = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_UTILITY, 0);

    v11 = dispatch_queue_create("com.apple.PHAWallpaperSuggestionUpgradeSession", v10);
    queue = v2->_queue;
    v2->_queue = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    upgradeSessions = v2->_upgradeSessions;
    v2->_upgradeSessions = v13;
  }

  return v2;
}

@end