@interface ICAVAssetDownloadURLSession
- (ICAVAssetDownloadURLSession)initWithConfiguration:(id)configuration maxConcurrentRequests:(unint64_t)requests qualityOfService:(int64_t)service;
- (id)_createURLSessionTaskForRequest:(id)request usingSession:(id)session;
- (void)URLSession:(id)session aggregateAssetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load forMediaSelection:(id)selection;
- (void)dealloc;
- (void)enqueueAVDownloadRequest:(id)request toDestination:(id)destination withAVURLAsset:(id)asset options:(id)options completionHandler:(id)handler;
- (void)enqueueAVDownloadRequest:(id)request toDestination:(id)destination withOptions:(id)options completionHandler:(id)handler;
- (void)enqueueAVDownloadRequest:(id)request withOptions:(id)options completionHandler:(id)handler;
- (void)enqueueAggregateAssetDownloadRequest:(id)request toDestination:(id)destination withAVURLAsset:(id)asset options:(id)options completionHandler:(id)handler;
- (void)enqueueAggregateAssetDownloadRequest:(id)request toDestination:(id)destination withOptions:(id)options resourceLoaderDelegate:(id)delegate completionHandler:(id)handler;
- (void)mediaServicesWereLost:(id)lost;
- (void)mediaServicesWereReset:(id)reset;
@end

@implementation ICAVAssetDownloadURLSession

- (id)_createURLSessionTaskForRequest:(id)request usingSession:(id)session
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  sessionCopy = session;
  avDownloadOptions = [requestCopy avDownloadOptions];
  if (avDownloadOptions)
  {
    avDownloadOptions2 = [requestCopy avDownloadOptions];
    dictionary = [avDownloadOptions2 mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  responseDataURL = [requestCopy responseDataURL];
  [dictionary setObject:responseDataURL forKeyedSubscript:*MEMORY[0x1E69872A0]];

  type = [requestCopy type];
  if (type == 5)
  {
    avURLAsset = [requestCopy avURLAsset];
    v19 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy3 = self;
      v27 = 2114;
      v28 = avURLAsset;
      v29 = 2114;
      v30 = dictionary;
      _os_log_impl(&dword_1B4491000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating aggregateAssetDownloadTask with urlAsset: %{public}@, options %{public}@", buf, 0x20u);
    }

    allMediaSelections = [avURLAsset allMediaSelections];
    v18 = [sessionCopy aggregateAssetDownloadTaskWithURLAsset:avURLAsset mediaSelections:allMediaSelections assetTitle:@"Aggregate Media Download" assetArtworkData:0 options:dictionary];
  }

  else
  {
    if (type != 3)
    {
      v24.receiver = self;
      v24.super_class = ICAVAssetDownloadURLSession;
      v18 = [(ICURLSession *)&v24 _createURLSessionTaskForRequest:requestCopy usingSession:sessionCopy];
      goto LABEL_19;
    }

    v13 = +[ICDeviceInfo currentDeviceInfo];
    isWatch = [v13 isWatch];

    if (isWatch)
    {
      v15 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        currentURLRequest = [requestCopy currentURLRequest];
        *buf = 138543618;
        selfCopy3 = self;
        v27 = 2114;
        v28 = currentURLRequest;
        _os_log_impl(&dword_1B4491000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating downloadTask with URLRequest: %{public}@", buf, 0x16u);
      }

      avURLAsset = [requestCopy currentURLRequest];
      v18 = [sessionCopy downloadTaskWithRequest:avURLAsset];
      goto LABEL_18;
    }

    avURLAsset = [requestCopy avURLAsset];
    v21 = os_log_create("com.apple.amp.iTunesCloud", "Default_Oversize");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      selfCopy3 = self;
      v27 = 2114;
      v28 = avURLAsset;
      v29 = 2114;
      v30 = dictionary;
      _os_log_impl(&dword_1B4491000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Creating assetDownloadTask with urlAsset: %{public}@, options %{public}@", buf, 0x20u);
    }

    allMediaSelections = [avURLAsset URL];
    responseDataURL2 = [requestCopy responseDataURL];
    v18 = [sessionCopy _AVAssetDownloadTaskWithURL:allMediaSelections destinationURL:responseDataURL2 options:dictionary];
  }

LABEL_18:
LABEL_19:

  return v18;
}

- (void)URLSession:(id)session aggregateAssetDownloadTask:(id)task didLoadTimeRange:(id *)range totalTimeRangesLoaded:(id)loaded timeRangeExpectedToLoad:(id *)load forMediaSelection:(id)selection
{
  sessionCopy = session;
  taskCopy = task;
  loadedCopy = loaded;
  selectionCopy = selection;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __150__ICAVAssetDownloadURLSession_URLSession_aggregateAssetDownloadTask_didLoadTimeRange_totalTimeRangesLoaded_timeRangeExpectedToLoad_forMediaSelection___block_invoke;
  v19[3] = &unk_1E7BF6598;
  v19[4] = &v20;
  [loadedCopy enumerateObjectsUsingBlock:v19];
  var1 = load->var1;
  Seconds = CMTimeGetSeconds(&var1);
  [(ICURLSession *)self _updateProgressForSessionTask:taskCopy withTotalBytesWritten:v21[3] totalBytesExpectedToWrite:Seconds];
  _Block_object_dispose(&v20, 8);
}

void __150__ICAVAssetDownloadURLSession_URLSession_aggregateAssetDownloadTask_didLoadTimeRange_totalTimeRangesLoaded_timeRangeExpectedToLoad_forMediaSelection___block_invoke(uint64_t a1, void *a2)
{
  memset(v4, 0, sizeof(v4));
  [a2 getValue:v4];
  v3 = v4[1];
  *(*(*(a1 + 32) + 8) + 24) += CMTimeGetSeconds(&v3);
}

- (void)enqueueAggregateAssetDownloadRequest:(id)request toDestination:(id)destination withAVURLAsset:(id)asset options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  destinationCopy = destination;
  requestCopy = request;
  [requestCopy setType:5];
  [requestCopy setCompletionHandler:handlerCopy];

  [requestCopy setResponseDataURL:destinationCopy];
  [requestCopy setAVURLAsset:assetCopy];

  [requestCopy setAVDownloadOptions:optionsCopy];
  [(ICURLSession *)self _enqueueRequest:requestCopy];
}

- (void)enqueueAggregateAssetDownloadRequest:(id)request toDestination:(id)destination withOptions:(id)options resourceLoaderDelegate:(id)delegate completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x1E69E9840];
  v11 = MEMORY[0x1E6988168];
  handlerCopy = handler;
  delegateCopy = delegate;
  optionsCopy = options;
  destinationCopy = destination;
  requestCopy = request;
  urlRequest = [requestCopy urlRequest];
  v18 = [urlRequest URL];
  v23 = *MEMORY[0x1E6987BF0];
  v24[0] = &unk_1F2C92200;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  v20 = [v11 URLAssetWithURL:v18 options:v19];

  resourceLoader = [v20 resourceLoader];
  [resourceLoader setDelegate:delegateCopy queue:MEMORY[0x1E69E96A0]];

  [(ICAVAssetDownloadURLSession *)self enqueueAggregateAssetDownloadRequest:requestCopy toDestination:destinationCopy withAVURLAsset:v20 options:optionsCopy completionHandler:handlerCopy];
}

- (void)enqueueAVDownloadRequest:(id)request toDestination:(id)destination withAVURLAsset:(id)asset options:(id)options completionHandler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  assetCopy = asset;
  destinationCopy = destination;
  requestCopy = request;
  [requestCopy setType:3];
  [requestCopy setAVDownloadOptions:optionsCopy];

  [requestCopy setCompletionHandler:handlerCopy];
  [requestCopy setResponseDataURL:destinationCopy];

  [requestCopy setAVURLAsset:assetCopy];
  [(ICURLSession *)self _enqueueRequest:requestCopy];
}

- (void)enqueueAVDownloadRequest:(id)request toDestination:(id)destination withOptions:(id)options completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  v10 = MEMORY[0x1E6988168];
  handlerCopy = handler;
  optionsCopy = options;
  destinationCopy = destination;
  requestCopy = request;
  urlRequest = [requestCopy urlRequest];
  v16 = [urlRequest URL];
  v19 = *MEMORY[0x1E6987BF0];
  v20[0] = &unk_1F2C92200;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v18 = [v10 URLAssetWithURL:v16 options:v17];

  [(ICAVAssetDownloadURLSession *)self enqueueAVDownloadRequest:requestCopy toDestination:destinationCopy withAVURLAsset:v18 options:optionsCopy completionHandler:handlerCopy];
}

- (void)enqueueAVDownloadRequest:(id)request withOptions:(id)options completionHandler:(id)handler
{
  v8 = MEMORY[0x1E695DFF8];
  handlerCopy = handler;
  optionsCopy = options;
  requestCopy = request;
  v12 = NSTemporaryDirectory();
  v13 = MEMORY[0x1E696AEC0];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v16 = [v13 stringWithFormat:@"tmp.%@", uUIDString];
  v17 = [v12 stringByAppendingPathComponent:v16];
  v18 = [v8 fileURLWithPath:v17];

  [(ICAVAssetDownloadURLSession *)self enqueueAVDownloadRequest:requestCopy toDestination:v18 withOptions:optionsCopy completionHandler:handlerCopy];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICAVAssetDownloadURLSession;
  [(ICURLSession *)&v4 dealloc];
}

- (void)mediaServicesWereReset:(id)reset
{
  v4 = MEMORY[0x1E696ABC0];
  userInfo = [reset userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E6987368]];
  v6 = [v4 msv_errorWithDomain:@"ICError" code:-8302 underlyingError:v5 debugDescription:@"Media Services were reset"];
  [(ICURLSession *)self cancelPendingRequestsWithError:v6];
}

- (void)mediaServicesWereLost:(id)lost
{
  v4 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"ICError" code:-8302 debugDescription:@"Media Services were lost"];
  [(ICURLSession *)self cancelPendingRequestsWithError:v4];
}

- (ICAVAssetDownloadURLSession)initWithConfiguration:(id)configuration maxConcurrentRequests:(unint64_t)requests qualityOfService:(int64_t)service
{
  v9.receiver = self;
  v9.super_class = ICAVAssetDownloadURLSession;
  v5 = [(ICURLSession *)&v9 initWithConfiguration:configuration maxConcurrentRequests:requests qualityOfService:service];
  if (v5)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_mediaServicesWereLost_ name:*MEMORY[0x1E6958110] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel_mediaServicesWereReset_ name:*MEMORY[0x1E6987370] object:0];
  }

  return v5;
}

@end