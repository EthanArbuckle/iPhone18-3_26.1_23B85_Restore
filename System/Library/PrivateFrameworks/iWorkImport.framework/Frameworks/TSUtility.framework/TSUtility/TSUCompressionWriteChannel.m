@interface TSUCompressionWriteChannel
- (TSUCompressionWriteChannel)initWithWriteChannel:(id)a3 compressionAlgorithm:(int)a4 operation:(int)a5;
- (void)close;
- (void)dealloc;
- (void)flushWithCompletion:(id)a3;
- (void)writeData:(id)a3 handler:(id)a4;
@end

@implementation TSUCompressionWriteChannel

- (TSUCompressionWriteChannel)initWithWriteChannel:(id)a3 compressionAlgorithm:(int)a4 operation:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v9 = a3;
  v15.receiver = self;
  v15.super_class = TSUCompressionWriteChannel;
  v10 = [(TSUCompressionWriteChannel *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_writeChannel, a3);
    v12 = [[TSUStreamCompression alloc] initWithAlgorithm:v6 operation:v5];
    compressor = v11->_compressor;
    v11->_compressor = v12;
  }

  return v11;
}

- (void)dealloc
{
  if (self->_writeChannel)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCompressionWriteChannel dealloc]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCompressionWriteChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:31 isFatal:0 description:"Failed to close write channel prior to dealloc"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5.receiver = self;
  v5.super_class = TSUCompressionWriteChannel;
  [(TSUCompressionWriteChannel *)&v5 dealloc];
}

- (void)close
{
  [(TSUStreamCompression *)self->_compressor didFinishProcessing];
  [(TSUStreamWriteChannel *)self->_writeChannel close];
  writeChannel = self->_writeChannel;
  self->_writeChannel = 0;

  compressor = self->_compressor;
  self->_compressor = 0;
}

- (void)flushWithCompletion:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v7 = a3;
  v5 = [v4 stringWithUTF8String:"-[TSUCompressionWriteChannel flushWithCompletion:]"];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCompressionWriteChannel.m"];
  [TSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:54 isFatal:0 description:"Flushing Compression write channel does not flush what's buffered in the compressor."];

  +[TSUAssertionHandler logBacktraceThrottled];
  [(TSUStreamWriteChannel *)self->_writeChannel flushWithCompletion:v7];
}

- (void)writeData:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 1;
  v8 = self->_writeChannel;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_27706D830;
  v12[3] = &unk_27A701DC0;
  v15 = v16;
  v9 = v8;
  v13 = v9;
  v10 = v7;
  v14 = v10;
  [(TSUStreamCompression *)self->_compressor setHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_27706DA14;
  v11[3] = &unk_27A701B60;
  v11[4] = self;
  dispatch_data_apply(v6, v11);

  _Block_object_dispose(v16, 8);
}

@end