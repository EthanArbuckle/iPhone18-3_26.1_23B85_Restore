@interface TSPZipFileWriteChannel
- (TSPZipFileWriteChannel)init;
- (TSPZipFileWriteChannel)initWithArchiveWriter:(id)a3;
- (void)flushWithCompletion:(id)a3;
- (void)writeData:(id)a3 handler:(id)a4;
@end

@implementation TSPZipFileWriteChannel

- (TSPZipFileWriteChannel)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPZipFileWriteChannel init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPZipFileWriteChannel.mm");
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v8, v3, v5, 20, 0, "Abstract method not overridden by %{public}@", v7);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
  v11 = MEMORY[0x277CBEAD8];
  v12 = MEMORY[0x277CCACA8];
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v16 = objc_msgSend_stringWithFormat_(v12, v15, @"Abstract method not overridden by %@: %s", v14, "[TSPZipFileWriteChannel init]");
  v18 = objc_msgSend_exceptionWithName_reason_userInfo_(v11, v17, *MEMORY[0x277CBE658], v16, 0);
  v19 = v18;

  objc_exception_throw(v18);
}

- (TSPZipFileWriteChannel)initWithArchiveWriter:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = TSPZipFileWriteChannel;
  v6 = [(TSPZipFileWriteChannel *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_archiveWriter, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("TSPZipFileWriteChannel.Writer", v8);
    writerQueue = v7->_writerQueue;
    v7->_writerQueue = v9;
  }

  return v7;
}

- (void)writeData:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = atomic_load(&self->_isClosed);
  if (v8)
  {
    TSUSetCrashReporterInfo();
    v14 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPZipFileWriteChannel writeData:handler:]", "[TSPZipFileWriteChannel writeData:handler:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPZipFileWriteChannel.mm", 40);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPZipFileWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v16, v18, 40, 1, "Channel is closed");

    TSUCrashBreakpoint();
    abort();
  }

  if (v6)
  {
    size = dispatch_data_get_size(v6);
  }

  else
  {
    size = 0;
  }

  archiveWriter = self->_archiveWriter;
  writerQueue = self->_writerQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_276A46D00;
  v20[3] = &unk_27A6E4B18;
  v12 = v7;
  v21 = v12;
  v22 = size;
  objc_msgSend_addData_queue_completion_(archiveWriter, v13, v6, writerQueue, v20);
}

- (void)flushWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSPZipFileWriteChannel flushWithCompletion:]");
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPZipFileWriteChannel.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v7, v9, 57, 0, "Flushing ZIP write channel only adds a barrier.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_276A46EEC;
  v15[3] = &unk_27A6E3480;
  v13 = v4;
  v16 = v13;
  objc_msgSend_addBarrier_(self, v14, v15);
}

@end