@interface TSPPackageWriterComponentWriteChannel
- (TSPPackageWriterComponentWriteChannel)initWithArchiveWriter:(id)writer;
- (void)writeData:(id)data;
@end

@implementation TSPPackageWriterComponentWriteChannel

- (TSPPackageWriterComponentWriteChannel)initWithArchiveWriter:(id)writer
{
  writerCopy = writer;
  v9.receiver = self;
  v9.super_class = TSPPackageWriterComponentWriteChannel;
  v6 = [(TSPPackageWriterComponentWriteChannel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archiveWriter, writer);
  }

  return v7;
}

- (void)writeData:(id)data
{
  dataCopy = data;
  v5 = atomic_load(&self->_isClosed);
  if (v5)
  {
    TSUSetCrashReporterInfo();
    v6 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSPPackageWriterComponentWriteChannel writeData:]", "[TSPPackageWriterComponentWriteChannel writeData:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriterComponentWriteChannel.mm", 30);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPPackageWriterComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v8, v10, 30, 1, "Channel is closed");

    TSUCrashBreakpoint();
    abort();
  }

  objc_msgSend_addData_(self->_archiveWriter, v4, dataCopy);
}

@end