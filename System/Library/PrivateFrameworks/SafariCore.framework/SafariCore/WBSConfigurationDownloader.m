@interface WBSConfigurationDownloader
- (WBSConfigurationDownloader)initWithFileName:(id)a3 dataTransformer:(id)a4;
- (void)downloadConfigurationWithCompletionHandler:(id)a3;
@end

@implementation WBSConfigurationDownloader

- (WBSConfigurationDownloader)initWithFileName:(id)a3 dataTransformer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = WBSConfigurationDownloader;
  v8 = [(WBSConfigurationDownloader *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transformer, a4);
    v10 = [MEMORY[0x1E695DFF8] URLWithString:@"https://configuration.apple.com/configurations/internetservices/safari/"];
    baseURL = v9->_baseURL;
    v9->_baseURL = v10;

    v12 = [v6 copy];
    fileName = v9->_fileName;
    v9->_fileName = v12;

    v14 = v9;
  }

  return v9;
}

- (void)downloadConfigurationWithCompletionHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x1E695AC78] sharedSession];
  baseURL = self->_baseURL;
  v7 = [(NSString *)self->_fileName stringByAppendingPathExtension:@"plist"];
  v8 = [(NSURL *)baseURL URLByAppendingPathComponent:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__WBSConfigurationDownloader_downloadConfigurationWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7CF1AF0;
  objc_copyWeak(&v14, &location);
  v9 = v4;
  v13 = v9;
  v10 = [v5 dataTaskWithURL:v8 completionHandler:v12];
  dataTask = self->_dataTask;
  self->_dataTask = v10;

  [(NSURLSessionDataTask *)self->_dataTask resume];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void __73__WBSConfigurationDownloader_downloadConfigurationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && (WeakRetained[5] & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v7)
    {
      v6 = [WeakRetained[1] objectFromData:?];
      (*(v5 + 16))(v5, v6);
    }

    else
    {
      (*(v5 + 16))(v5, 0);
    }
  }
}

@end