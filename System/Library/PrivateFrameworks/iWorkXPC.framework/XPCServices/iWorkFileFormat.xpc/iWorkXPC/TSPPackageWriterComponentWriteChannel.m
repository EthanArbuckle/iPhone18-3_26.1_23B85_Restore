@interface TSPPackageWriterComponentWriteChannel
- (TSPPackageWriterComponentWriteChannel)initWithArchiveWriter:(id)a3;
- (void)writeData:(id)a3;
@end

@implementation TSPPackageWriterComponentWriteChannel

- (TSPPackageWriterComponentWriteChannel)initWithArchiveWriter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSPPackageWriterComponentWriteChannel;
  v6 = [(TSPPackageWriterComponentWriteChannel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archiveWriter, a3);
  }

  return v7;
}

- (void)writeData:(id)a3
{
  v4 = a3;
  v5 = atomic_load(&self->_isClosed);
  v17 = v4;
  if (v5)
  {
    v6 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100152184();
    }

    v7 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100152198(v6, v7);
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Channel is closed", v8, v9, v10, v11, v12, v13, v14, "[TSPPackageWriterComponentWriteChannel writeData:]");
    v15 = [NSString stringWithUTF8String:"[TSPPackageWriterComponentWriteChannel writeData:]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPPackageWriterComponentWriteChannel.mm"];
    [TSUAssertionHandler handleFailureInFunction:v15 file:v16 lineNumber:30 isFatal:1 description:"Channel is closed"];

    TSUCrashBreakpoint();
    abort();
  }

  [(TSUZipWriter *)self->_archiveWriter addData:v4];
}

@end