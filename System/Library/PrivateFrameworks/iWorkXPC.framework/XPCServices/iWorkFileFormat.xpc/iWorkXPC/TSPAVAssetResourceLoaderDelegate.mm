@interface TSPAVAssetResourceLoaderDelegate
+ (BOOL)shouldDisableEntireLengthAvailableOnDemand;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (TSPAVAssetResourceLoaderDelegate)init;
- (TSPAVAssetResourceLoaderDelegate)initWithData:(id)data;
- (void)_provideContentInformationToLoadingRequest:(id)request;
- (void)_provideDataToLoadingRequest:(id)request;
- (void)_provideNextDataBlockToLoadingRequest:(id)request completion:(id)completion;
- (void)dealloc;
@end

@implementation TSPAVAssetResourceLoaderDelegate

- (TSPAVAssetResourceLoaderDelegate)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C56C8);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPAVAssetResourceLoaderDelegate init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPAVAssetResourceLoaderDelegate.mm";
    v15 = 1024;
    v16 = 21;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPAVAssetResourceLoaderDelegate init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPAVAssetResourceLoaderDelegate.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:21 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPAVAssetResourceLoaderDelegate init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPAVAssetResourceLoaderDelegate)initWithData:(id)data
{
  dataCopy = data;
  v20.receiver = self;
  v20.super_class = TSPAVAssetResourceLoaderDelegate;
  v6 = [(TSPAVAssetResourceLoaderDelegate *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
    v7->_dataLength = [dataCopy length];
    digestString = [dataCopy digestString];
    v9 = [NSString stringWithFormat:@"TSPAVAssetResourceLoaderDelegate.DelegateQueue[%@]", digestString];
    uTF8String = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(uTF8String, v11);
    delegateQueue = v7->_delegateQueue;
    v7->_delegateQueue = v12;

    v14 = [NSString stringWithFormat:@"TSPAVAssetResourceLoaderDelegate.RequestHandlingQueue[%@]", digestString];
    uTF8String2 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(uTF8String2, v16);
    requestHandlingQueue = v7->_requestHandlingQueue;
    v7->_requestHandlingQueue = v17;
  }

  return v7;
}

- (void)dealloc
{
  [(TSUReadChannel *)self->_readChannel close];
  v3.receiver = self;
  v3.super_class = TSPAVAssetResourceLoaderDelegate;
  [(TSPAVAssetResourceLoaderDelegate *)&v3 dealloc];
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  resourceCopy = resource;
  if (([resourceCopy isCancelled] & 1) == 0)
  {
    contentInformationRequest = [resourceCopy contentInformationRequest];

    if (contentInformationRequest)
    {
      [(TSPAVAssetResourceLoaderDelegate *)self _provideContentInformationToLoadingRequest:resourceCopy];
    }

    dataRequest = [resourceCopy dataRequest];

    if (dataRequest)
    {
      [(TSPAVAssetResourceLoaderDelegate *)self _provideDataToLoadingRequest:resourceCopy];
    }
  }

  return 1;
}

+ (BOOL)shouldDisableEntireLengthAvailableOnDemand
{
  if (qword_1001EA9D8 != -1)
  {
    sub_100150618();
  }

  return byte_1001EA9D0;
}

- (void)_provideContentInformationToLoadingRequest:(id)request
{
  requestCopy = request;
  requestHandlingQueue = self->_requestHandlingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000906C;
  v7[3] = &unk_1001C52C8;
  v8 = requestCopy;
  selfCopy = self;
  v6 = requestCopy;
  dispatch_async(requestHandlingQueue, v7);
}

- (void)_provideDataToLoadingRequest:(id)request
{
  requestCopy = request;
  requestHandlingQueue = self->_requestHandlingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000091EC;
  v7[3] = &unk_1001C52C8;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(requestHandlingQueue, v7);
}

- (void)_provideNextDataBlockToLoadingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  if ([requestCopy isCancelled])
  {
    completionCopy[2](completionCopy);
  }

  else
  {
    dataRequest = [requestCopy dataRequest];
    if (!dataRequest)
    {
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015062C();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_100150640();
      }

      v9 = [NSString stringWithUTF8String:"[TSPAVAssetResourceLoaderDelegate _provideNextDataBlockToLoadingRequest:completion:]"];
      v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPAVAssetResourceLoaderDelegate.mm"];
      [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:142 isFatal:0 description:"invalid nil value for '%{public}s'", "dataRequest"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    currentOffset = [dataRequest currentOffset];
    requestedLength = [dataRequest requestedLength];
    requestedOffset = [dataRequest requestedOffset];
    dataLength = self->_dataLength;
    v15 = dataLength < currentOffset;
    v16 = dataLength - currentOffset;
    if (v15 || (v16 >= requestedOffset + requestedLength - currentOffset ? (v17 = requestedOffset + requestedLength - currentOffset) : (v17 = v16), v17 >= 0x20000 ? (v18 = 0x20000) : (v18 = v17), !v17))
    {
      [requestCopy finishLoading];
      completionCopy[2](completionCopy);
    }

    else
    {
      v30[0] = 0;
      v30[1] = v30;
      v30[2] = 0x3032000000;
      v30[3] = sub_100009868;
      v30[4] = sub_100009878;
      v19 = &_dispatch_data_empty;
      v31 = &_dispatch_data_empty;
      readChannel = self->_readChannel;
      if (!readChannel)
      {
        +[TSUAssertionHandler _atomicIncrementAssertCount];
        if (TSUAssertCat_init_token != -1)
        {
          sub_1001506F0();
        }

        if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_100150718();
        }

        v21 = [NSString stringWithUTF8String:"[TSPAVAssetResourceLoaderDelegate _provideNextDataBlockToLoadingRequest:completion:]"];
        v22 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPAVAssetResourceLoaderDelegate.mm"];
        [TSUAssertionHandler handleFailureInFunction:v21 file:v22 lineNumber:162 isFatal:0 description:"invalid nil value for '%{public}s'", "_readChannel"];

        +[TSUAssertionHandler logBacktraceThrottled];
        readChannel = self->_readChannel;
      }

      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000098C4;
      v23[3] = &unk_1001C57A0;
      v27 = v30;
      v24 = requestCopy;
      selfCopy = self;
      v26 = completionCopy;
      v28 = v17;
      v29 = v18;
      [(TSUReadChannel *)readChannel readFromOffset:currentOffset length:v18 handler:v23];

      _Block_object_dispose(v30, 8);
    }
  }
}

@end