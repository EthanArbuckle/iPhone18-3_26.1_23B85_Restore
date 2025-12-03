@interface TSUTemporaryDirectory
- (BOOL)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error;
- (NSString)path;
- (NSURL)URL;
- (TSUTemporaryDirectory)init;
- (TSUTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error;
- (id)initForWritingToURL:(id)l error:(id *)error;
- (void)dealloc;
- (void)removeDirectory;
@end

@implementation TSUTemporaryDirectory

- (TSUTemporaryDirectory)init
{
  v2 = +[TSUAssertionHandler _atomicIncrementAssertCount];
  if (TSUAssertCat_init_token != -1)
  {
    dispatch_once(&TSUAssertCat_init_token, &stru_1001CEB50);
  }

  v3 = TSUAssertCat_log_t;
  if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v10 = v2;
    v11 = 2082;
    v12 = "[TSUTemporaryDirectory init]";
    v13 = 2082;
    v14 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUTemporaryDirectory.m";
    v15 = 1024;
    v16 = 28;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  v4 = [NSString stringWithUTF8String:"[TSUTemporaryDirectory init]"];
  v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUTemporaryDirectory.m"];
  [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:28 isFatal:0 description:"Do not call method"];

  +[TSUAssertionHandler logBacktraceThrottled];
  v6 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[TSUTemporaryDirectory init]"];
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSUTemporaryDirectory)initWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error
{
  signatureCopy = signature;
  subdirectoryCopy = subdirectory;
  v13.receiver = self;
  v13.super_class = TSUTemporaryDirectory;
  v10 = [(TSUTemporaryDirectory *)&v13 init];
  v11 = v10;
  if (v10 && ![(TSUTemporaryDirectory *)v10 _createDirectoryWithSignature:signatureCopy subdirectory:subdirectoryCopy error:error])
  {

    v11 = 0;
  }

  return v11;
}

- (id)initForWritingToURL:(id)l error:(id *)error
{
  lCopy = l;
  v13.receiver = self;
  v13.super_class = TSUTemporaryDirectory;
  v7 = [(TSUTemporaryDirectory *)&v13 init];
  if (v7)
  {
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 URLForDirectory:99 inDomain:1 appropriateForURL:lCopy create:1 error:error];

    path = [v9 path];
    path = v7->_path;
    v7->_path = path;

    if (!v9)
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  if (self->_path && !self->_leak)
  {
    [(TSUTemporaryDirectory *)self removeDirectory];
  }

  v3.receiver = self;
  v3.super_class = TSUTemporaryDirectory;
  [(TSUTemporaryDirectory *)&v3 dealloc];
}

- (NSString)path
{
  path = self->_path;
  if (!path)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100160EC4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100160ED8();
    }

    v4 = [NSString stringWithUTF8String:"[TSUTemporaryDirectory path]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUTemporaryDirectory.m"];
    [TSUAssertionHandler handleFailureInFunction:v4 file:v5 lineNumber:76 isFatal:0 description:"Directory has already been removed"];

    +[TSUAssertionHandler logBacktraceThrottled];
    path = self->_path;
  }

  return path;
}

- (NSURL)URL
{
  path = [(TSUTemporaryDirectory *)self path];
  v3 = [NSURL fileURLWithPath:path isDirectory:1];

  return v3;
}

- (void)removeDirectory
{
  p_path = &self->_path;
  if (self->_path)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = *p_path;
    v13 = 0;
    v5 = [v3 removeItemAtPath:v4 error:&v13];
    v6 = v13;
    v7 = v6;
    if (v5)
    {
    }

    else
    {
      tsu_isNoSuchFileError = [v6 tsu_isNoSuchFileError];

      if ((tsu_isNoSuchFileError & 1) == 0)
      {
        if (TSUDefaultCat_init_token != -1)
        {
          sub_100160F6C();
        }

        v11 = TSUDefaultCat_log_t;
        if (os_log_type_enabled(TSUDefaultCat_log_t, OS_LOG_TYPE_ERROR))
        {
          sub_100160F94(v7, p_path, v11);
        }
      }
    }

    v12 = *p_path;
    *p_path = 0;
  }

  else
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100161020();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100161034();
    }

    v8 = [NSString stringWithUTF8String:"[TSUTemporaryDirectory removeDirectory]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUTemporaryDirectory.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:97 isFatal:0 description:"Directory has already been removed"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }
}

- (BOOL)_createDirectoryWithSignature:(id)signature subdirectory:(id)subdirectory error:(id *)error
{
  signatureCopy = signature;
  subdirectoryCopy = subdirectory;
  if (signatureCopy)
  {
    v10 = signatureCopy;
  }

  else
  {
    v10 = &stru_1001D3878;
  }

  if (qword_1001EB068 != -1)
  {
    sub_1001610C8();
  }

  v11 = [qword_1001EB060 stringByAppendingFormat:@"_%@_%d_%d", v10, CFAbsoluteTimeGetCurrent(), atomic_fetch_add(&dword_1001EB070, 1u) + 1];
  if ([v11 length] >= 0x100)
  {
    v12 = [v11 substringToIndex:255];

    v11 = v12;
  }

  v13 = getenv("CIRRUSEXPORTERTEMPDIR");
  if (v13)
  {
    [NSString stringWithUTF8String:v13];
  }

  else
  {
    NSTemporaryDirectory();
  }
  v14 = ;
  v15 = v14;
  if (subdirectoryCopy)
  {
    v16 = [v14 stringByAppendingPathComponent:subdirectoryCopy];

    v15 = v16;
  }

  v17 = [v15 stringByAppendingPathComponent:v11];
  v18 = +[NSFileManager defaultManager];
  v24 = 0;
  v19 = [v18 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v24];
  v20 = v24;

  objc_storeStrong(&self->_path, v17);
  if (error && (v19 & 1) == 0)
  {
    if (v20)
    {
      v21 = v20;
      *error = v20;
    }

    else
    {
      v22 = [NSError tsu_fileWriteUnknownErrorWithUserInfo:0];
      *error = v22;
    }
  }

  return v19;
}

@end