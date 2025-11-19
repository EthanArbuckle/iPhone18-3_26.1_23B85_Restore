@interface WFCloudKitWebServiceAssetDownloadOperation
- (WFCloudKitItem)item;
- (WFCloudKitWebServiceAssetDownloadOperation)initWithAssetURL:(id)a3 item:(id)a4 key:(id)a5;
- (void)start;
@end

@implementation WFCloudKitWebServiceAssetDownloadOperation

- (WFCloudKitItem)item
{
  WeakRetained = objc_loadWeakRetained(&self->_item);

  return WeakRetained;
}

- (void)start
{
  v18 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = WFCloudKitWebServiceAssetDownloadOperation;
  [(WFCloudKitAsyncOperation *)&v11 start];
  v3 = getWFCloudKitWSLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(WFCloudKitWebServiceAssetDownloadOperation *)self item];
    v5 = [(WFCloudKitWebServiceAssetDownloadOperation *)self key];
    *buf = 136315650;
    v13 = "[WFCloudKitWebServiceAssetDownloadOperation start]";
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_INFO, "%s Asset fetch operation starting: %@ %@", buf, 0x20u);
  }

  v6 = [MEMORY[0x1E696AF78] wf_sharedSession];
  v7 = [(WFCloudKitWebServiceAssetDownloadOperation *)self assetURL];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__WFCloudKitWebServiceAssetDownloadOperation_start__block_invoke;
  v10[3] = &unk_1E837AEE8;
  v10[4] = self;
  v8 = [v6 downloadTaskWithURL:v7 completionHandler:v10];
  [v8 resume];

  v9 = *MEMORY[0x1E69E9840];
}

void __51__WFCloudKitWebServiceAssetDownloadOperation_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = WFEnforceClass_47426(v5, v6);

  if (v11 && [v7 statusCode] == 200)
  {
    v8 = [MEMORY[0x1E6996E20] fileWithURL:v11 options:5];
    v9 = [*(a1 + 32) item];
    v10 = [*(a1 + 32) key];
    [v9 willChangeValueForKey:v10];
    [v9 setValue:v8 forKey:v10];
    [v9 didChangeValueForKey:v10];
  }

  [*(a1 + 32) finishExecuting];
}

- (WFCloudKitWebServiceAssetDownloadOperation)initWithAssetURL:(id)a3 item:(id)a4 key:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = WFCloudKitWebServiceAssetDownloadOperation;
  v12 = [(WFCloudKitWebServiceAssetDownloadOperation *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetURL, a3);
    objc_storeWeak(&v13->_item, v10);
    objc_storeStrong(&v13->_key, a5);
    v14 = v13;
  }

  return v13;
}

@end