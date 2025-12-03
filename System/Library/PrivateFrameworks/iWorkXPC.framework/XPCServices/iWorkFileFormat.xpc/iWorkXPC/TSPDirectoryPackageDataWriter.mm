@interface TSPDirectoryPackageDataWriter
- (BOOL)flushPendingWritesReturningError:(id *)error;
- (BOOL)writeData:(id)data toRelativePath:(id)path allowEncryption:(BOOL)encryption error:(id *)error;
- (CGDataConsumer)newCGDataConsumerAtRelativePath:(id)path;
- (TSPDirectoryPackageDataWriter)init;
- (TSPDirectoryPackageDataWriter)initWithURL:(id)l;
- (id)targetDataURLForPath:(id)path;
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

- (TSPDirectoryPackageDataWriter)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = TSPDirectoryPackageDataWriter;
  v5 = [(TSPDirectoryPackageDataWriter *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    URL = v5->_URL;
    v5->_URL = v6;
  }

  return v5;
}

- (id)targetDataURLForPath:(id)path
{
  v3 = [(NSURL *)self->_URL URLByAppendingPathComponent:path isDirectory:0];

  return v3;
}

- (BOOL)writeData:(id)data toRelativePath:(id)path allowEncryption:(BOOL)encryption error:(id *)error
{
  dataCopy = data;
  pathCopy = path;
  if (pathCopy)
  {
    if (dataCopy)
    {
      v11 = [(TSPDirectoryPackageDataWriter *)self targetDataURLForPath:pathCopy];
      v12 = +[NSFileManager defaultManager];
      uRLByDeletingLastPathComponent = [v11 URLByDeletingLastPathComponent];
      v26 = 0;
      v14 = [v12 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v26];
      v15 = v26;

      if (v14)
      {
        v16 = [dataCopy writeToURL:v11 options:0 error:error];
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
          domain = [v15 domain];
          code = [v15 code];
          *buf = 138413314;
          v28 = v11;
          v29 = 2114;
          v30 = v23;
          v31 = 2114;
          v32 = domain;
          v33 = 2048;
          v34 = code;
          v35 = 2112;
          v36 = v15;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Couldn't create directory at URL %@. errorClass=%{public}@, domain=%{public}@, code=%zd (%@) ", buf, 0x34u);
        }

        if (error)
        {
          v20 = v15;
          v16 = 0;
          *error = v15;
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

- (CGDataConsumer)newCGDataConsumerAtRelativePath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v5 = [(TSPDirectoryPackageDataWriter *)self targetDataURLForPath:pathCopy];
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

- (BOOL)flushPendingWritesReturningError:(id *)error
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