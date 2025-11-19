@interface TSPDirectoryPackageDataWriter
- (BOOL)flushPendingWritesReturningError:(id *)a3;
- (BOOL)writeData:(id)a3 toRelativePath:(id)a4 allowEncryption:(BOOL)a5 error:(id *)a6;
- (CGDataConsumer)newCGDataConsumerAtRelativePath:(id)a3;
- (TSPDirectoryPackageDataWriter)init;
- (TSPDirectoryPackageDataWriter)initWithURL:(id)a3;
- (id)targetDataURLForPath:(id)a3;
@end

@implementation TSPDirectoryPackageDataWriter

- (TSPDirectoryPackageDataWriter)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C5CD8);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSPDirectoryPackageDataWriter init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackageDataWriter.mm";
    v15 = 1024;
    v16 = 14;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSPDirectoryPackageDataWriter init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackageDataWriter.mm"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:14 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPDirectoryPackageDataWriter init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPDirectoryPackageDataWriter)initWithURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TSPDirectoryPackageDataWriter;
  v5 = [(TSPDirectoryPackageDataWriter *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    URL = v5->_URL;
    v5->_URL = v6;
  }

  return v5;
}

- (id)targetDataURLForPath:(id)a3
{
  v3 = [(NSURL *)self->_URL URLByAppendingPathComponent:a3 isDirectory:0];

  return v3;
}

- (BOOL)writeData:(id)a3 toRelativePath:(id)a4 allowEncryption:(BOOL)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if (v10)
  {
    if (v9)
    {
      v11 = [(TSPDirectoryPackageDataWriter *)self targetDataURLForPath:v10];
      v12 = +[NSFileManager defaultManager];
      v13 = [v11 URLByDeletingLastPathComponent];
      v26 = 0;
      v14 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v26];
      v15 = v26;

      if (v14)
      {
        v16 = [v9 writeToURL:v11 options:0 error:a6];
      }

      else
      {
        if (TSUDefaultCat_init_token != -1)
        {
          sub_100150ED4();
        }

        v19 = TSUDefaultCat_log_t;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v22 = objc_opt_class();
          v23 = NSStringFromClass(v22);
          v24 = [v15 domain];
          v25 = [v15 code];
          *buf = 138413314;
          v28 = v11;
          v29 = 2114;
          v30 = v23;
          v31 = 2114;
          v32 = v24;
          v33 = 2048;
          v34 = v25;
          v35 = 2112;
          v36 = v15;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Couldn't create directory at URL %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
        }

        if (a6)
        {
          v20 = v15;
          v16 = 0;
          *a6 = v15;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150EFC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150F10();
    }

    v17 = [NSString stringWithUTF8String:"[TSPDirectoryPackageDataWriter writeData:toRelativePath:allowEncryption:error:]"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackageDataWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:31 isFatal:0 description:"Path should be defined."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v16 = 0;
  }

  return v16;
}

- (CGDataConsumer)newCGDataConsumerAtRelativePath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(TSPDirectoryPackageDataWriter *)self targetDataURLForPath:v4];
    v6 = CGDataConsumerCreateWithURL(v5);
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150FA4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150FB8();
    }

    v7 = [NSString stringWithUTF8String:"[TSPDirectoryPackageDataWriter newCGDataConsumerAtRelativePath:]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackageDataWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:57 isFatal:0 description:"Path should be defined."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v6 = 0;
  }

  return v6;
}

- (BOOL)flushPendingWritesReturningError:(id *)a3
{
  v3 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001C5D58);
  }

  v4 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v11 = v3;
    v12 = 2082;
    v13 = "[TSPDirectoryPackageDataWriter flushPendingWritesReturningError:]";
    v14 = 2082;
    v15 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackageDataWriter.mm";
    v16 = 1024;
    v17 = 66;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v5 = [NSString stringWithUTF8String:"[TSPDirectoryPackageDataWriter flushPendingWritesReturningError:]"];
  v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackageDataWriter.mm"];
  [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:66 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v7 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSPDirectoryPackageDataWriter flushPendingWritesReturningError:]"];
  v8 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

@end