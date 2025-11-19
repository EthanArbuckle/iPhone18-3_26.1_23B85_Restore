@interface TSPAVAssetResourceLoaderDelegate
+ (BOOL)shouldDisableEntireLengthAvailableOnDemand;
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
- (TSPAVAssetResourceLoaderDelegate)init;
- (TSPAVAssetResourceLoaderDelegate)initWithData:(id)a3;
- (void)_provideContentInformationToLoadingRequest:(id)a3;
- (void)_provideDataToLoadingRequest:(id)a3;
- (void)_provideNextDataBlockToLoadingRequest:(id)a3 completion:(id)a4;
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

- (TSPAVAssetResourceLoaderDelegate)initWithData:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = TSPAVAssetResourceLoaderDelegate;
  v6 = [(TSPAVAssetResourceLoaderDelegate *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
    v7->_dataLength = [v5 length];
    v8 = [v5 digestString];
    v9 = [NSString stringWithFormat:@"TSPAVAssetResourceLoaderDelegate.DelegateQueue[%@]", v8];
    v10 = [v9 UTF8String];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(v10, v11);
    delegateQueue = v7->_delegateQueue;
    v7->_delegateQueue = v12;

    v14 = [NSString stringWithFormat:@"TSPAVAssetResourceLoaderDelegate.RequestHandlingQueue[%@]", v8];
    v15 = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create(v15, v16);
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

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v5 = a4;
  if (([v5 isCancelled] & 1) == 0)
  {
    v6 = [v5 contentInformationRequest];

    if (v6)
    {
      [(TSPAVAssetResourceLoaderDelegate *)self _provideContentInformationToLoadingRequest:v5];
    }

    v7 = [v5 dataRequest];

    if (v7)
    {
      [(TSPAVAssetResourceLoaderDelegate *)self _provideDataToLoadingRequest:v5];
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

- (void)_provideContentInformationToLoadingRequest:(id)a3
{
  v4 = a3;
  requestHandlingQueue = self->_requestHandlingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000906C;
  v7[3] = &unk_1001C52C8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(requestHandlingQueue, v7);
}

- (void)_provideDataToLoadingRequest:(id)a3
{
  v4 = a3;
  requestHandlingQueue = self->_requestHandlingQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000091EC;
  v7[3] = &unk_1001C52C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(requestHandlingQueue, v7);
}

- (void)_provideNextDataBlockToLoadingRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isCancelled])
  {
    v7[2](v7);
  }

  else
  {
    v8 = [v6 dataRequest];
    if (!v8)
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

    v11 = [v8 currentOffset];
    v12 = [v8 requestedLength];
    v13 = [v8 requestedOffset];
    dataLength = self->_dataLength;
    v15 = dataLength < v11;
    v16 = dataLength - v11;
    if (v15 || (v16 >= v13 + v12 - v11 ? (v17 = v13 + v12 - v11) : (v17 = v16), v17 >= 0x20000 ? (v18 = 0x20000) : (v18 = v17), !v17))
    {
      [v6 finishLoading];
      v7[2](v7);
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
      v24 = v6;
      v25 = self;
      v26 = v7;
      v28 = v17;
      v29 = v18;
      [(TSUReadChannel *)readChannel readFromOffset:v11 length:v18 handler:v23];

      _Block_object_dispose(v30, 8);
    }
  }
}

@end