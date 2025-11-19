@interface TSPDirectoryPackageWriterComponentFileWriteChannel
- (TSPDirectoryPackageWriterComponentFileWriteChannel)initWithURL:(id)a3 handler:(id)a4;
- (void)close;
- (void)writeData:(id)a3;
@end

@implementation TSPDirectoryPackageWriterComponentFileWriteChannel

- (TSPDirectoryPackageWriterComponentFileWriteChannel)initWithURL:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = TSPDirectoryPackageWriterComponentFileWriteChannel;
  v10 = [(TSPDirectoryPackageWriterComponentFileWriteChannel *)&v22 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(v6, v8, v9);
    v12 = *(v10 + 1);
    *(v10 + 1) = v11;

    v15 = objc_msgSend_copy(v7, v13, v14);
    v16 = *(v10 + 2);
    *(v10 + 2) = v15;

    v17 = objc_alloc(MEMORY[0x277D811D0]);
    v19 = objc_msgSend_initForStreamWritingURL_error_(v17, v18, *(v10 + 1), 0);
    v20 = *(v10 + 3);
    *(v10 + 3) = v19;

    if (!*(v10 + 3))
    {

      v10 = 0;
    }
  }

  return v10;
}

- (void)writeData:(id)a3
{
  v5 = a3;
  v6 = atomic_load(&self->_isClosed);
  if (v6)
  {
    TSUSetCrashReporterInfo();
    v8 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPDirectoryPackageWriterComponentFileWriteChannel writeData:]", "[TSPDirectoryPackageWriterComponentFileWriteChannel writeData:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageWriter.mm", 278);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDirectoryPackageWriter.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 278, 1, "Already closed");

    TSUCrashBreakpoint();
    abort();
  }

  writeChannel = self->_writeChannel;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2769D6DDC;
  v14[3] = &unk_27A6E3B68;
  v14[4] = self;
  objc_msgSend_writeData_handler_(writeChannel, v4, v5, v14);
}

- (void)close
{
  if ((atomic_exchange(&self->_isClosed, 1u) & 1) == 0)
  {
    v3 = dispatch_semaphore_create(0);
    writeChannel = self->_writeChannel;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = sub_2769D6ED8;
    v9[3] = &unk_27A6E27F8;
    v5 = v3;
    v10 = v5;
    objc_msgSend_addBarrier_(writeChannel, v6, v9);
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    objc_msgSend_close(self->_writeChannel, v7, v8);
  }
}

@end