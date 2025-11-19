@interface MABrainDownloader
- (MABrainDownloader)initWithMAAsset:(id)a3;
- (void)download:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation MABrainDownloader

- (MABrainDownloader)initWithMAAsset:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MABrainDownloader;
  v6 = [(MABrainDownloader *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.MobileAssetBrain-downloader-callback", v7);
    callbackQueue = v6->_callbackQueue;
    v6->_callbackQueue = v8;

    objc_storeStrong(&v6->_asset, a3);
  }

  return v6;
}

- (void)download:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v9 objectForKeyedSubscript:@"nonDiscetionary"];
  v12 = [v11 BOOLValue];

  [(MAAsset *)self->_asset cancelDownloadSync];
  v13 = objc_alloc_init(MAMsuDownloadOptions);
  [v13 setSessionId:v10];

  [v13 setDiscretionary:v12 ^ 1];
  if ((objc_opt_respondsToSelector() & 1) != 0 && __isPlatformVersionAtLeast(2, 17, 0, 0))
  {
    [v13 setDisableUI:1];
  }

  [v13 setAllowsCellularAccess:1];
  [v13 setAllowsExpensiveAccess:0];
  [v13 setRequiresPowerPluggedIn:0];
  [v13 setCanUseLocalCacheServer:0];
  [v13 setPrefersInfraWiFi:1];
  [v13 setLiveServerCatalogOnly:0];
  [v13 setTimeoutIntervalForResource:900];
  v14 = [v9 objectForKeyedSubscript:@"dawHeader"];

  [v13 setDownloadAuthorizationHeader:v14];
  asset = self->_asset;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = __49__MABrainDownloader_download_options_completion___block_invoke;
  v20[3] = &unk_4B3C20;
  v20[4] = self;
  v16 = v8;
  v21 = v16;
  [(MAAsset *)asset startDownload:v13 completionWithError:v20];
  v17 = _MADLog(@"Brain");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = "discretionary";
    v19 = self->_asset;
    if (v12)
    {
      v18 = "non-discretionary";
    }

    *buf = 136315394;
    v23 = v18;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "[MAB] MobileAssetBrain %s download initiated: %@", buf, 0x16u);
  }
}

void __49__MABrainDownloader_download_options_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v15[0] = NSDebugDescriptionErrorKey;
    v6 = [NSString stringWithFormat:@"Failed to download the MobileAssetBrain asset"];
    v15[1] = NSUnderlyingErrorKey;
    v16[0] = v6;
    v16[1] = v5;
    v7 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v8 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:140 userInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a1 + 32) + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __49__MABrainDownloader_download_options_completion___block_invoke_2;
  block[3] = &unk_4B31D8;
  v10 = *(a1 + 40);
  v13 = v8;
  v14 = v10;
  v11 = v8;
  dispatch_async(v9, block);
}

@end