@interface TSPDataCopyProviderConcrete
- (NSInputStream)inputStream;
- (NSURL)URL;
- (TSPDataCopyProviderConcrete)initWithDocumentURL:(id)a3 error:(id *)a4;
- (TSUReadChannel)readChannel;
- (id)inputStreamForRange:(_NSRange)a3;
- (void)cleanUp;
@end

@implementation TSPDataCopyProviderConcrete

- (TSPDataCopyProviderConcrete)initWithDocumentURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25.receiver = self;
  v25.super_class = TSPDataCopyProviderConcrete;
  v7 = [(TSPDataCopyProviderConcrete *)&v25 init];
  if (!v7)
  {
    v11 = 0;
    goto LABEL_14;
  }

  v8 = +[NSFileManager defaultManager];
  v9 = v8;
  if (v6)
  {
    v24 = 0;
    v10 = [v8 URLForDirectory:99 inDomain:1 appropriateForURL:v6 create:1 error:&v24];
    v11 = v24;

    if (v10)
    {
LABEL_4:
      directory = v7->_directory;
      v7->_directory = v10;
      v13 = v10;

      goto LABEL_14;
    }
  }

  else
  {
    v23 = 0;
    v14 = [v8 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v23];
    v15 = v23;

    if (!v14)
    {
      goto LABEL_10;
    }

    v16 = +[NSUUID UUID];
    v17 = [v16 UUIDString];
    v10 = [v14 URLByAppendingPathComponent:v17];

    if (v10)
    {
      v18 = +[NSFileManager defaultManager];
      v22 = v15;
      v19 = [v18 createDirectoryAtURL:v10 withIntermediateDirectories:1 attributes:0 error:&v22];
      v11 = v22;

      if (v19)
      {
        goto LABEL_4;
      }
    }

    else
    {
LABEL_10:
      v11 = v15;
    }
  }

  if (a4)
  {
    v20 = v11;
    v7 = 0;
    *a4 = v11;
  }

  else
  {
    v7 = 0;
  }

LABEL_14:

  return v7;
}

- (void)cleanUp
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(TSPDataCopyProviderConcrete *)self directory];
  [v3 removeItemAtURL:v4 error:0];

  [(TSPDataCopyProviderConcrete *)self setURLInternal:0];
  [(TSPDataCopyProviderConcrete *)self setReadChannelInternal:0];

  [(TSPDataCopyProviderConcrete *)self setInputStreamInternal:0];
}

- (NSURL)URL
{
  v2 = [(TSPDataCopyProviderConcrete *)self URLInternal];
  if (!v2)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150C34();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150C48();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v4, v5, v6, v7, v8, v9, v10, "[TSPDataCopyProviderConcrete URL]");
    v11 = [NSString stringWithUTF8String:"[TSPDataCopyProviderConcrete URL]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:55 isFatal:1 description:"invalid nil value for '%{public}s'", "URL", "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m", 55, "URL"];

    TSUCrashBreakpoint();
    abort();
  }

  return v2;
}

- (TSUReadChannel)readChannel
{
  v2 = [(TSPDataCopyProviderConcrete *)self readChannelInternal];
  if (!v2)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150CDC();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150CF0();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v4, v5, v6, v7, v8, v9, v10, "[TSPDataCopyProviderConcrete readChannel]");
    v11 = [NSString stringWithUTF8String:"[TSPDataCopyProviderConcrete readChannel]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:61 isFatal:1 description:"invalid nil value for '%{public}s'", "readChannel", "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m", 61, "readChannel"];

    TSUCrashBreakpoint();
    abort();
  }

  return v2;
}

- (NSInputStream)inputStream
{
  v2 = [(TSPDataCopyProviderConcrete *)self inputStreamInternal];
  if (!v2)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150D84();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150D98();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v4, v5, v6, v7, v8, v9, v10, "[TSPDataCopyProviderConcrete inputStream]");
    v11 = [NSString stringWithUTF8String:"[TSPDataCopyProviderConcrete inputStream]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:67 isFatal:1 description:"invalid nil value for '%{public}s'", "inputStream", "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m", 67, "inputStream"];

    TSUCrashBreakpoint();
    abort();
  }

  return v2;
}

- (id)inputStreamForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [TSUReadChannelInputStreamAdapter alloc];
  v7 = [(TSPDataCopyProviderConcrete *)self readChannelInternal];
  v8 = [(TSUReadChannelInputStreamAdapter *)v6 initWithReadChannel:v7 length:location + length closeChannelOnClose:0];

  if (location)
  {
    v9 = [[SFUOffsetInputStream alloc] initWithInputStream:v8 initialOffset:location];

    v8 = v9;
  }

  v10 = [[SFUReadChannelNSInputStreamAdaptor alloc] initWithSFUInputStream:v8];
  if (!v10)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100150E2C();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100150E40();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", v13, v14, v15, v16, v17, v18, v19, "[TSPDataCopyProviderConcrete inputStreamForRange:]");
    v20 = [NSString stringWithUTF8String:"[TSPDataCopyProviderConcrete inputStreamForRange:]"];
    v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m"];
    [TSUAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:83 isFatal:1 description:"invalid nil value for '%{public}s'", "inputStream", "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDataCopyProvider.m", 83, "inputStream"];

    TSUCrashBreakpoint();
    abort();
  }

  v11 = v10;

  return v11;
}

@end