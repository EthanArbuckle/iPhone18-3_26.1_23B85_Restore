@interface PLPhotoAnalysisWallpaperService
- (PLPhotoAnalysisWallpaperService)initWithServiceProvider:(id)a3;
- (void)upgradePosterConfigurationWithAssetDirectory:(id)a3 options:(id)a4 reply:(id)a5;
@end

@implementation PLPhotoAnalysisWallpaperService

- (void)upgradePosterConfigurationWithAssetDirectory:(id)a3 options:(id)a4 reply:(id)a5
{
  v8 = a5;
  serviceProvider = self->_serviceProvider;
  v10 = a4;
  v11 = a3;
  v12 = [(PLPhotoAnalysisServiceProvider *)serviceProvider wallpaperService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__PLPhotoAnalysisWallpaperService_upgradePosterConfigurationWithAssetDirectory_options_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = v8;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__PLPhotoAnalysisWallpaperService_upgradePosterConfigurationWithAssetDirectory_options_reply___block_invoke_2;
  v16[3] = &unk_1E75774A8;
  v17 = v13;
  v15 = v13;
  [v14 upgradePosterConfigurationWithAssetDirectory:v11 options:v10 reply:v16];
}

- (PLPhotoAnalysisWallpaperService)initWithServiceProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLPhotoAnalysisWallpaperService;
  v6 = [(PLPhotoAnalysisWallpaperService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceProvider, a3);
  }

  return v7;
}

@end