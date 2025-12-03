@interface TSUCompressionReadChannel
- (TSUCompressionReadChannel)initWithReadChannel:(id)channel compressionAlgorithm:(int)algorithm operation:(int)operation;
- (void)close;
- (void)dealloc;
- (void)readWithHandler:(id)handler;
@end

@implementation TSUCompressionReadChannel

- (TSUCompressionReadChannel)initWithReadChannel:(id)channel compressionAlgorithm:(int)algorithm operation:(int)operation
{
  v5 = *&operation;
  v6 = *&algorithm;
  channelCopy = channel;
  v15.receiver = self;
  v15.super_class = TSUCompressionReadChannel;
  v10 = [(TSUCompressionReadChannel *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_readChannel, channel);
    v12 = [[TSUStreamCompression alloc] initWithAlgorithm:v6 operation:v5];
    compressor = v11->_compressor;
    v11->_compressor = v12;
  }

  return v11;
}

- (void)dealloc
{
  if (self->_readChannel)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUCompressionReadChannel dealloc]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUCompressionReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:31 isFatal:0 description:"Failed to close read channel prior to dealloc"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v5.receiver = self;
  v5.super_class = TSUCompressionReadChannel;
  [(TSUCompressionReadChannel *)&v5 dealloc];
}

- (void)close
{
  [(TSUStreamReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;

  compressor = self->_compressor;
  self->_compressor = 0;
}

- (void)readWithHandler:(id)handler
{
  handlerCopy = handler;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 1;
  v5 = self->_compressor;
  readChannel = self->_readChannel;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_277046ABC;
  v9[3] = &unk_27A701B88;
  v12 = v13;
  v7 = v5;
  v10 = v7;
  v8 = handlerCopy;
  v11 = v8;
  [(TSUStreamReadChannel *)readChannel readWithHandler:v9];

  _Block_object_dispose(v13, 8);
}

@end