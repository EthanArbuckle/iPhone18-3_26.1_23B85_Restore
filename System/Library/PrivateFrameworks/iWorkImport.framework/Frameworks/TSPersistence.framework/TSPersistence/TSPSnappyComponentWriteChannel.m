@interface TSPSnappyComponentWriteChannel
- (TSPSnappyComponentWriteChannel)initWithWriteChannel:(id)a3;
- (void)close;
- (void)dealloc;
- (void)writeBlock;
- (void)writeData:(id)a3;
@end

@implementation TSPSnappyComponentWriteChannel

- (TSPSnappyComponentWriteChannel)initWithWriteChannel:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = TSPSnappyComponentWriteChannel;
  v6 = [(TSPSnappyComponentWriteChannel *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("TSPSnappyComponentWriteChannel.Write", v7);
    writeQueue = v6->_writeQueue;
    v6->_writeQueue = v8;

    objc_storeStrong(&v6->_writeChannel, a3);
  }

  return v6;
}

- (void)dealloc
{
  if (self->_writeChannel)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPSnappyComponentWriteChannel dealloc]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPSnappyComponentWriteChannel.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 32, 0, "Didn't close");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10.receiver = self;
  v10.super_class = TSPSnappyComponentWriteChannel;
  [(TSPSnappyComponentWriteChannel *)&v10 dealloc];
}

- (void)writeData:(id)a3
{
  v4 = a3;
  writeQueue = self->_writeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276AFA02C;
  v7[3] = &unk_27A6E2898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(writeQueue, v7);
}

- (void)writeBlock
{
  v3 = &self->_uncompressedBuffer[65520];
  v4 = snappy::MaxCompressedLength(self->_uncompressedLength);
  v5 = malloc_type_malloc(v4 + 4, 0x100004077774924uLL);
  v6 = *(v3 + 2);
  v9[0] = &unk_2885C9960;
  v9[1] = self->_uncompressedBuffer;
  v9[2] = v6;
  v8[0] = &unk_2885C99B0;
  v8[1] = v5 + 4;
  snappy::Compress(v9, v8, v7);
}

- (void)close
{
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276AFA498;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_sync(writeQueue, block);
}

@end