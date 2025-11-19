@interface TSUIOUtils
+ (CGDataProvider)newCGDataProviderForInputStream:(id)a3 outInfo:(void *)a4 outCallbacks:(const CGDataProviderSequentialCallbacks *)a5;
+ (CGDataProvider)newCGDataProviderForReadChannel:(id)a3 length:(unint64_t)a4 outInfo:(void *)a5 outCallbacks:(const CGDataProviderSequentialCallbacks *)a6;
+ (void)readAllFromChannel:(id)a3 completion:(id)a4;
+ (void)readAllFromChannel:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 completion:(id)a6;
+ (void)readFromOffsetAndWait:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 handler:(id)a6;
+ (void)readWithHandlerAndWait:(id)a3 handler:(id)a4;
@end

@implementation TSUIOUtils

+ (void)readAllFromChannel:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_10015D00C();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10015D020();
  }

  v12 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSUIOUtils readAllFromChannel:offset:length:completion:]");
  v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUIOUtils.m"];
  [TSUAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:78 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];

  +[TSUAssertionHandler logBacktraceThrottled];
  if (!v11)
  {
LABEL_9:
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015D0B4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015D0DC();
    }

    v14 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSUIOUtils readAllFromChannel:offset:length:completion:]");
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUIOUtils.m"];
    [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:79 isFatal:0 description:"invalid nil value for '%{public}s'", "completion"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

LABEL_14:
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = sub_100091044;
  v21[4] = sub_100091054;
  v16 = &_dispatch_data_empty;
  v22 = &_dispatch_data_empty;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10009105C;
  v18[3] = &unk_1001CD618;
  v20 = v21;
  v17 = v11;
  v19 = v17;
  [v9 readFromOffset:a4 length:a5 handler:v18];

  _Block_object_dispose(v21, 8);
}

+ (void)readAllFromChannel:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    sub_10015D170();
  }

  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    sub_10015D184();
  }

  v8 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSUIOUtils readAllFromChannel:completion:]");
  v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUIOUtils.m"];
  [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:103 isFatal:0 description:"invalid nil value for '%{public}s'", "readChannel"];

  +[TSUAssertionHandler logBacktraceThrottled];
  if (!v7)
  {
LABEL_9:
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015D218();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015D240();
    }

    v10 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSUIOUtils readAllFromChannel:completion:]");
    v11 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUIOUtils.m"];
    [TSUAssertionHandler handleFailureInFunction:v10 file:v11 lineNumber:104 isFatal:0 description:"invalid nil value for '%{public}s'", "completion"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

LABEL_14:
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100091044;
  v17[4] = sub_100091054;
  v12 = &_dispatch_data_empty;
  v18 = &_dispatch_data_empty;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10009149C;
  v14[3] = &unk_1001CD618;
  v16 = v17;
  v13 = v7;
  v15 = v13;
  [v5 readWithHandler:v14];

  _Block_object_dispose(v17, 8);
}

+ (CGDataProvider)newCGDataProviderForInputStream:(id)a3 outInfo:(void *)a4 outCallbacks:(const CGDataProviderSequentialCallbacks *)a5
{
  if (!a3)
  {
    return 0;
  }

  v7 = a3;
  CFRetain(v7);
  if (a4)
  {
    *a4 = v7;
  }

  if (a5)
  {
    *a5 = &unk_1001CD678;
  }

  Sequential = CGDataProviderCreateSequential(v7, &unk_1001CD678);

  return Sequential;
}

+ (CGDataProvider)newCGDataProviderForReadChannel:(id)a3 length:(unint64_t)a4 outInfo:(void *)a5 outCallbacks:(const CGDataProviderSequentialCallbacks *)a6
{
  if (!a3)
  {
    return 0;
  }

  v10 = a3;
  v11 = [[TSUReadChannelInputStreamAdapter alloc] initWithReadChannel:v10 length:a4];

  if ([(TSUReadChannelInputStreamAdapter *)v11 canSeek])
  {
    v12 = [a1 newCGDataProviderForInputStream:v11 outInfo:a5 outCallbacks:a6];
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015D2D4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015D2E8();
    }

    v13 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[TSUIOUtils newCGDataProviderForReadChannel:length:outInfo:outCallbacks:]");
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUIOUtils.m"];
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:160 isFatal:0 description:"Need a seekable input stream for CGDataProvider"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v12 = 0;
  }

  return v12;
}

+ (void)readWithHandlerAndWait:(id)a3 handler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100091890;
  v9[3] = &unk_1001CD6C8;
  v11 = v5;
  v7 = dispatch_semaphore_create(0);
  v10 = v7;
  v8 = v5;
  [v6 readWithHandler:v9];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

+ (void)readFromOffsetAndWait:(id)a3 offset:(int64_t)a4 length:(unint64_t)a5 handler:(id)a6
{
  v9 = a6;
  v10 = a3;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000919D8;
  v13[3] = &unk_1001CD6C8;
  v15 = v9;
  v11 = dispatch_semaphore_create(0);
  v14 = v11;
  v12 = v9;
  [v10 readFromOffset:a4 length:a5 handler:v13];

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
}

@end