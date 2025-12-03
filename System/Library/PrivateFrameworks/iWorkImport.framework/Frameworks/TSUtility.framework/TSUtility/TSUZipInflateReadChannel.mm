@interface TSUZipInflateReadChannel
- (BOOL)processData:(id)data inflateResult:(int *)result CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler;
- (TSUZipInflateReadChannel)initWithReadChannel:(id)channel uncompressedSize:(unint64_t)size CRC:(unsigned int)c validateCRC:(BOOL)rC;
- (void)close;
- (void)dealloc;
- (void)handleFailureWithHandler:(id)handler error:(id)error;
- (void)prepareBuffer;
- (void)readWithHandler:(id)handler;
@end

@implementation TSUZipInflateReadChannel

- (TSUZipInflateReadChannel)initWithReadChannel:(id)channel uncompressedSize:(unint64_t)size CRC:(unsigned int)c validateCRC:(BOOL)rC
{
  channelCopy = channel;
  v15.receiver = self;
  v15.super_class = TSUZipInflateReadChannel;
  v12 = [(TSUZipInflateReadChannel *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_readChannel, channel);
    v13->_stream.next_in = 0;
    v13->_remainingUncompressedSize = size;
    v13->_CRC = c;
    v13->_validateCRC = rC;
    v13->_stream.avail_in = 0;
    v13->_stream.avail_out = 0;
    v13->_stream.next_out = 0;
    v13->_stream.zfree = 0;
    v13->_stream.opaque = 0;
    v13->_stream.zalloc = 0;
    if (inflateInit2_(&v13->_stream, -15, "1.2.12", 112))
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_2771143D8();
      }

      v13 = 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  [(TSUZipInflateReadChannel *)self close];
  inflateEnd(&self->_stream);
  free(self->_outBuffer);
  v3.receiver = self;
  v3.super_class = TSUZipInflateReadChannel;
  [(TSUZipInflateReadChannel *)&v3 dealloc];
}

- (void)prepareBuffer
{
  if (self->_outBuffer)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipInflateReadChannel prepareBuffer]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipInflateReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:80 isFatal:0 description:"expected nil value for '%{public}s'", "_outBuffer"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  remainingUncompressedSize = self->_remainingUncompressedSize;
  if (remainingUncompressedSize >= 0x40000)
  {
    v6 = 0x40000;
  }

  else
  {
    v6 = self->_remainingUncompressedSize;
  }

  if (remainingUncompressedSize)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x40000;
  }

  self->_outBufferSize = v7;
  v8 = malloc_type_malloc(v7, 0x100004077774924uLL);
  self->_outBuffer = v8;
  self->_stream.avail_out = self->_outBufferSize;
  self->_stream.next_out = v8;
}

- (void)readWithHandler:(id)handler
{
  handlerCopy = handler;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 1;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 1;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = crc32(0, 0, 0);
  readChannel = self->_readChannel;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770BC428;
  v7[3] = &unk_27A702910;
  v9 = v19;
  v7[4] = self;
  v6 = handlerCopy;
  v8 = v6;
  v10 = v15;
  v11 = v17;
  v12 = v13;
  [(TSUStreamReadChannel *)readChannel readWithHandler:v7];

  _Block_object_dispose(v13, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

- (BOOL)processData:(id)data inflateResult:(int *)result CRC:(unsigned int *)c isDone:(BOOL)done handler:(id)handler
{
  doneCopy = done;
  dataCopy = data;
  handlerCopy = handler;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 1;
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = sub_2770BC724;
  applier[3] = &unk_27A702938;
  v20 = &v23;
  resultCopy = result;
  applier[4] = self;
  cCopy = c;
  v14 = handlerCopy;
  v19 = v14;
  dispatch_data_apply(dataCopy, applier);
  v15 = *(v24 + 24);
  if (!self->_validateCRC || (v24[3] & 1) == 0)
  {
    goto LABEL_10;
  }

  if (doneCopy)
  {
    if (!c)
    {
LABEL_9:
      v15 = 1;
LABEL_10:
      if ((v15 & 1) == 0 || !doneCopy || *result == 1)
      {
        if (v15)
        {
          v16 = 1;
          goto LABEL_21;
        }

LABEL_20:
        [(TSUZipInflateReadChannel *)self handleFailureWithHandler:v14 error:0];
        v16 = *(v24 + 24);
        goto LABEL_21;
      }

      if (TSUDefaultCat_init_token != -1)
      {
        sub_277114428();
      }

LABEL_19:
      *(v24 + 24) = 0;
      goto LABEL_20;
    }

LABEL_8:
    if (self->_CRC != *c)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_277114400();
      }

      goto LABEL_19;
    }

    goto LABEL_9;
  }

  v16 = 1;
  if (c && *result == 1)
  {
    goto LABEL_8;
  }

LABEL_21:

  _Block_object_dispose(&v23, 8);
  return v16 & 1;
}

- (void)handleFailureWithHandler:(id)handler error:(id)error
{
  if (error)
  {
    v5 = *(handler + 2);
    handlerCopy = handler;
    v5();
  }

  else
  {
    v6 = MEMORY[0x277CCA9B8];
    handlerCopy2 = handler;
    handlerCopy = [v6 tsu_fileReadUnknownErrorWithUserInfo:0];
    (*(handler + 2))(handlerCopy2, 1, 0);
  }
}

- (void)close
{
  [(TSUStreamReadChannel *)self->_readChannel close];
  readChannel = self->_readChannel;
  self->_readChannel = 0;
}

@end