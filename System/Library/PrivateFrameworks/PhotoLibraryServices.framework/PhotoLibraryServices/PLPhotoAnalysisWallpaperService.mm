@interface PLPhotoAnalysisWallpaperService
- (PLPhotoAnalysisWallpaperService)initWithServiceProvider:(id)provider;
- (void)upgradePosterConfigurationWithAssetDirectory:(id)directory options:(id)options reply:(id)reply;
@end

@implementation PLPhotoAnalysisWallpaperService

- (void)upgradePosterConfigurationWithAssetDirectory:(id)directory options:(id)options reply:(id)reply
{
  replyCopy = reply;
  serviceProvider = self->_serviceProvider;
  optionsCopy = options;
  directoryCopy = directory;
  wallpaperService = [(PLPhotoAnalysisServiceProvider *)serviceProvider wallpaperService];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __94__PLPhotoAnalysisWallpaperService_upgradePosterConfigurationWithAssetDirectory_options_reply___block_invoke;
  v18[3] = &unk_1E7577430;
  v13 = replyCopy;
  v19 = v13;
  v14 = [wallpaperService remoteObjectProxyWithErrorHandler:v18];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __94__PLPhotoAnalysisWallpaperService_upgradePosterConfigurationWithAssetDirectory_options_reply___block_invoke_2;
  v16[3] = &unk_1E75774A8;
  v17 = v13;
  v15 = v13;
  [v14 upgradePosterConfigurationWithAssetDirectory:directoryCopy options:optionsCopy reply:v16];
}

- (PLPhotoAnalysisWallpaperService)initWithServiceProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = PLPhotoAnalysisWallpaperService;
  v6 = [(PLPhotoAnalysisWallpaperService *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceProvider, provider);
  }

  return v7;
}

@end