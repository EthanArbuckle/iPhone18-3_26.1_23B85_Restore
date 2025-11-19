@interface ICAVAssetDownloadURLSession
- (ICAVAssetDownloadURLSession)initWithConfiguration:(id)a3 maxConcurrentRequests:(unint64_t)a4 qualityOfService:(int64_t)a5;
- (id)_createURLSessionTaskForRequest:(id)a3 usingSession:(id)a4;
- (void)URLSession:(id)a3 aggregateAssetDownloadTask:(id)a4 didLoadTimeRange:(id *)a5 totalTimeRangesLoaded:(id)a6 timeRangeExpectedToLoad:(id *)a7 forMediaSelection:(id)a8;
- (void)dealloc;
- (void)enqueueAVDownloadRequest:(id)a3 toDestination:(id)a4 withAVURLAsset:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)enqueueAVDownloadRequest:(id)a3 toDestination:(id)a4 withOptions:(id)a5 completionHandler:(id)a6;
- (void)enqueueAVDownloadRequest:(id)a3 withOptions:(id)a4 completionHandler:(id)a5;
- (void)enqueueAggregateAssetDownloadRequest:(id)a3 toDestination:(id)a4 withAVURLAsset:(id)a5 options:(id)a6 completionHandler:(id)a7;
- (void)enqueueAggregateAssetDownloadRequest:(id)a3 toDestination:(id)a4 withOptions:(id)a5 resourceLoaderDelegate:(id)a6 completionHandler:(id)a7;
- (void)mediaServicesWereLost:(id)a3;
- (void)mediaServicesWereReset:(id)a3;
@end

@implementation ICAVAssetDownloadURLSession

- (id)_createURLSessionTaskForRequest:(id)a3 usingSession:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 avDownloadOptions];
  if (v8)
  {
    v9 = [v6 avDownloadOptions];
    v10 = [v9 mutableCopy];
  }

  else
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
  }

  v11 = [v6 responseDataURL];
  [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69872A0]];

  v12 = [v6 type];
  if (v12 == 5)
  {
    v17 = [v6 avURLAsset];
    v19 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v26 = self;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating aggregateAssetDownloadTask with urlAsset: %{public}@, options %{public}@", buf, 0x20u);
    }

    v20 = [v17 allMediaSelections];
    v18 = [v7 aggregateAssetDownloadTaskWithURLAsset:v17 mediaSelections:v20 assetTitle:@"Aggregate Media Download" assetArtworkData:0 options:v10];
  }

  else
  {
    if (v12 != 3)
    {
      v24.receiver = self;
      v24.super_class = ICAVAssetDownloadURLSession;
      v18 = [(ICURLSession *)&v24 _createURLSessionTaskForRequest:v6 usingSession:v7];
      goto LABEL_19;
    }

    v13 = +[ICDeviceInfo currentDeviceInfo];
    v14 = [v13 isWatch];

    if (v14)
    {
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [v6 currentURLRequest];
        *buf = 138543618;
        v26 = self;
        v27 = 2114;
        v28 = v16;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating downloadTask with URLRequest: %{public}@", buf, 0x16u);
      }

      v17 = [v6 currentURLRequest];
      v18 = [v7 downloadTaskWithRequest:v17];
      goto LABEL_18;
    }

    v17 = [v6 avURLAsset];
    v21 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v26 = self;
      v27 = 2114;
      v28 = v17;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating assetDownloadTask with urlAsset: %{public}@, options %{public}@", buf, 0x20u);
    }

    v20 = [v17 URL];
    v22 = [v6 responseDataURL];
    v18 = [v7 _AVAssetDownloadTaskWithURL:v20 destinationURL:v22 options:v10];
  }

LABEL_18:
LABEL_19:

  return v18;
}

- (void)URLSession:(id)a3 aggregateAssetDownloadTask:(id)a4 didLoadTimeRange:(id *)a5 totalTimeRangesLoaded:(id)a6 timeRangeExpectedToLoad:(id *)a7 forMediaSelection:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a8;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __150__ICAVAssetDownloadURLSession_URLSession_aggregateAssetDownloadTask_didLoadTimeRange_totalTimeRangesLoaded_timeRangeExpectedToLoad_forMediaSelection___block_invoke;
  v19[3] = &unk_1E7BF6598;
  v19[4] = &v20;
  [v15 enumerateObjectsUsingBlock:v19];
  var1 = a7->var1;
  Seconds = CMTimeGetSeconds(&var1);
  [(ICURLSession *)self _updateProgressForSessionTask:v14 withTotalBytesWritten:v21[3] totalBytesExpectedToWrite:Seconds];
  _Block_object_dispose(&v20, 8);
}

void __150__ICAVAssetDownloadURLSession_URLSession_aggregateAssetDownloadTask_didLoadTimeRange_totalTimeRangesLoaded_timeRangeExpectedToLoad_forMediaSelection___block_invoke(uint64_t a1, void *a2)
{
  memset(v4, 0, sizeof(v4));
  [a2 getValue:v4];
  v3 = v4[1];
  *(*(*(a1 + 32) + 8) + 24) += CMTimeGetSeconds(&v3);
}

- (void)enqueueAggregateAssetDownloadRequest:(id)a3 toDestination:(id)a4 withAVURLAsset:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  [v16 setType:5];
  [v16 setCompletionHandler:v12];

  [v16 setResponseDataURL:v15];
  [v16 setAVURLAsset:v14];

  [v16 setAVDownloadOptions:v13];
  [(ICURLSession *)self _enqueueRequest:v16];
}

- (void)enqueueAggregateAssetDownloadRequest:(id)a3 toDestination:(id)a4 withOptions:(id)a5 resourceLoaderDelegate:(id)a6 completionHandler:(id)a7
{
  v24[1] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E6988168];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v16 urlRequest];
  v18 = [v17 URL];
  v23 = *MEMORY[0x1E6987BF0];
  v24[0] = &unk_1F2C92200;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v20 = [v11 URLAssetWithURL:v18 options:v19];

  v21 = [v20 resourceLoader];
  [v21 setDelegate:v13 queue:MEMORY[0x1E69E96A0]];

  [(ICAVAssetDownloadURLSession *)self enqueueAggregateAssetDownloadRequest:v16 toDestination:v15 withAVURLAsset:v20 options:v14 completionHandler:v12];
}

- (void)enqueueAVDownloadRequest:(id)a3 toDestination:(id)a4 withAVURLAsset:(id)a5 options:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  [v16 setType:3];
  [v16 setAVDownloadOptions:v13];

  [v16 setCompletionHandler:v12];
  [v16 setResponseDataURL:v15];

  [v16 setAVURLAsset:v14];
  [(ICURLSession *)self _enqueueRequest:v16];
}

- (void)enqueueAVDownloadRequest:(id)a3 toDestination:(id)a4 withOptions:(id)a5 completionHandler:(id)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E6988168];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = [v14 urlRequest];
  v16 = [v15 URL];
  v19 = *MEMORY[0x1E6987BF0];
  v20[0] = &unk_1F2C92200;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v18 = [v10 URLAssetWithURL:v16 options:v17];

  [(ICAVAssetDownloadURLSession *)self enqueueAVDownloadRequest:v14 toDestination:v13 withAVURLAsset:v18 options:v12 completionHandler:v11];
}

- (void)enqueueAVDownloadRequest:(id)a3 withOptions:(id)a4 completionHandler:(id)a5
{
  v8 = MEMORY[0x1E695DFF8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = NSTemporaryDirectory();
  v13 = MEMORY[0x1E696AEC0];
  v14 = [MEMORY[0x1E696AFB0] UUID];
  v15 = [v14 UUIDString];
  v16 = [v13 stringWithFormat:@"tmp.%@", v15];
  v17 = [v12 stringByAppendingPathComponent:v16];
  v18 = [v8 fileURLWithPath:v17];

  [(ICAVAssetDownloadURLSession *)self enqueueAVDownloadRequest:v11 toDestination:v18 withOptions:v10 completionHandler:v9];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICAVAssetDownloadURLSession;
  [(ICURLSession *)&v4 dealloc];
}

- (void)mediaServicesWereReset:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v7 = [a3 userInfo];
  v5 = [v7 objectForKeyedSubscript:*MEMORY[0x1E6987368]];
  v6 = [v4 msv_errorWithDomain:@"ICError" code:-8302 underlyingError:v5 debugDescription:@"Media Services were reset"];
  [(ICURLSession *)self cancelPendingRequestsWithError:v6];
}

- (void)mediaServicesWereLost:(id)a3
{
  v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8302 debugDescription:@"Media Services were lost"];
  [(ICURLSession *)self cancelPendingRequestsWithError:v4];
}

- (ICAVAssetDownloadURLSession)initWithConfiguration:(id)a3 maxConcurrentRequests:(unint64_t)a4 qualityOfService:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = ICAVAssetDownloadURLSession;
  v5 = [(ICURLSession *)&v9 initWithConfiguration:a3 maxConcurrentRequests:a4 qualityOfService:a5];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v5 selector:sel_mediaServicesWereLost_ name:*MEMORY[0x1E6958110] object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v5 selector:sel_mediaServicesWereReset_ name:*MEMORY[0x1E6987370] object:0];
  }

  return v5;
}

@end