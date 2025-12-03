@interface TSPDirectoryPackageWriterComponentFileWriteChannel
- (TSPDirectoryPackageWriterComponentFileWriteChannel)initWithURL:(id)l handler:(id)handler;
- (void)close;
- (void)writeData:(id)data;
@end

@implementation TSPDirectoryPackageWriterComponentFileWriteChannel

- (TSPDirectoryPackageWriterComponentFileWriteChannel)initWithURL:(id)l handler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = TSPDirectoryPackageWriterComponentFileWriteChannel;
  v8 = [(TSPDirectoryPackageWriterComponentFileWriteChannel *)&v16 init];
  if (v8)
  {
    v9 = [lCopy copy];
    URL = v8->_URL;
    v8->_URL = v9;

    v11 = [handlerCopy copy];
    handler = v8->_handler;
    v8->_handler = v11;

    v13 = [[TSUFileIOChannel alloc] initForStreamWritingURL:v8->_URL error:0];
    writeChannel = v8->_writeChannel;
    v8->_writeChannel = v13;

    if (!v8->_writeChannel)
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)writeData:(id)data
{
  dataCopy = data;
  v5 = atomic_load(&self->_isClosed);
  if (v5)
  {
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_100153454();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_100153468();
    }

    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Already closed", v7, v8, v9, v10, v11, v12, v13, "[TSPDirectoryPackageWriterComponentFileWriteChannel writeData:]");
    v14 = [NSString stringWithUTF8String:"[TSPDirectoryPackageWriterComponentFileWriteChannel writeData:]"];
    v15 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/persistence/src/TSPDirectoryPackageWriter.mm"];
    [TSUAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:278 isFatal:1 description:"Already closed"];

    TSUCrashBreakpoint();
    abort();
  }

  writeChannel = self->_writeChannel;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100020808;
  v16[3] = &unk_1001C6B58;
  v16[4] = self;
  [(TSUFileIOChannel *)writeChannel writeData:dataCopy handler:v16];
}

- (void)close
{
  if ((atomic_exchange(&self->_isClosed, 1u) & 1) == 0)
  {
    v3 = dispatch_semaphore_create(0);
    writeChannel = self->_writeChannel;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100020904;
    v6[3] = &unk_1001C5710;
    v5 = v3;
    v7 = v5;
    [(TSUFileIOChannel *)writeChannel addBarrier:v6];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    [(TSUFileIOChannel *)self->_writeChannel close];
  }
}

@end