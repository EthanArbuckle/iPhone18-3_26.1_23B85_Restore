@interface _CSCompressionEngine
+ (id)processDataWithFunction:(int64_t)function algorithm:(int64_t)algorithm content:(id)content progressBlock:(id)block;
- (BOOL)_initializeStream;
- (BOOL)_processIncomingData:(const void *)data length:(unint64_t)length flags:(int)flags;
- (_CSCompressionEngine)initWithFunction:(int64_t)function algorithm:(int64_t)algorithm destination:(id)destination;
- (_CSStreamingDestination)destination;
- (unint64_t)_deliverDestinationContent;
- (void)_decodeEngineFunction:(int64_t)function algorithm:(int64_t)algorithm;
- (void)_gatherReadSinkContent:(id)content;
- (void)dealloc;
- (void)sourceContentFinished;
- (void)writeSourceContent:(id)content;
@end

@implementation _CSCompressionEngine

+ (id)processDataWithFunction:(int64_t)function algorithm:(int64_t)algorithm content:(id)content progressBlock:(id)block
{
  contentCopy = content;
  blockCopy = block;
  v11 = [[_CSCompressionEngine alloc] initWithFunction:function algorithm:algorithm destination:0];
  v12 = [contentCopy length];
  bytes = [contentCopy bytes];
  if (v12)
  {
    v14 = bytes;
    v15 = 0;
    while (1)
    {
      v16 = &v12[-v15] >= 0x10000 ? 0x10000 : &v12[-v15];
      if (![(_CSCompressionEngine *)v11 _processIncomingData:&v14[v15] length:v16 flags:0])
      {
        break;
      }

      v15 += v16;
      if (blockCopy)
      {
        blockCopy[2](blockCopy, v15);
      }

      if (v15 >= v12)
      {
        goto LABEL_10;
      }
    }

    sinkContent = 0;
  }

  else
  {
LABEL_10:
    [(_CSCompressionEngine *)v11 sourceContentFinished];
    sinkContent = [(_CSCompressionEngine *)v11 sinkContent];
  }

  return sinkContent;
}

- (_CSCompressionEngine)initWithFunction:(int64_t)function algorithm:(int64_t)algorithm destination:(id)destination
{
  destinationCopy = destination;
  v15.receiver = self;
  v15.super_class = _CSCompressionEngine;
  v9 = [(_CSCompressionEngine *)&v15 init];
  v10 = v9;
  if (v9)
  {
    sinkContent = v9->_sinkContent;
    v9->_sinkContent = 0;

    [(_CSCompressionEngine *)v10 _decodeEngineFunction:function algorithm:algorithm];
    objc_storeWeak(&v10->_destination, destinationCopy);
    v12 = [[NSMutableData alloc] initWithLength:0x10000];
    destinationBuffer = v10->_destinationBuffer;
    v10->_destinationBuffer = v12;

    if (![(_CSCompressionEngine *)v10 _initializeStream])
    {

      v10 = 0;
    }
  }

  return v10;
}

- (void)writeSourceContent:(id)content
{
  contentCopy = content;
  contentCopy2 = content;
  bytes = [contentCopy2 bytes];
  v8 = [contentCopy2 length];

  [(_CSCompressionEngine *)self _processIncomingData:bytes length:v8 flags:0];
}

- (void)sourceContentFinished
{
  [(_CSCompressionEngine *)self _processIncomingData:0 length:0 flags:1];
  WeakRetained = objc_loadWeakRetained(&self->_destination);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained sinkContentFinished];
    WeakRetained = v4;
  }
}

- (void)dealloc
{
  compression_stream_destroy(self->_stream);
  free(self->_stream);
  self->_stream = 0;
  v3.receiver = self;
  v3.super_class = _CSCompressionEngine;
  [(_CSCompressionEngine *)&v3 dealloc];
}

- (void)_decodeEngineFunction:(int64_t)function algorithm:(int64_t)algorithm
{
  if (function)
  {
    if (function != 1)
    {
      goto LABEL_6;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  self->_operation = v4;
LABEL_6:
  if (algorithm <= 3)
  {
    self->_algorithm = dword_10037D170[algorithm];
  }
}

- (void)_gatherReadSinkContent:(id)content
{
  contentCopy = content;
  sinkContent = self->_sinkContent;
  v8 = contentCopy;
  if (!sinkContent)
  {
    v6 = [[NSMutableData alloc] initWithCapacity:0x10000];
    v7 = self->_sinkContent;
    self->_sinkContent = v6;

    contentCopy = v8;
    sinkContent = self->_sinkContent;
  }

  [(NSMutableData *)sinkContent appendData:contentCopy];
}

- (unint64_t)_deliverDestinationContent
{
  var1 = self->_stream->var1;
  v3 = 0x10000 - var1;
  if (var1 != 0x10000)
  {
    [(NSMutableData *)self->_destinationBuffer setLength:0x10000 - var1];
    WeakRetained = objc_loadWeakRetained(&self->_destination);
    v6 = WeakRetained;
    destinationBuffer = self->_destinationBuffer;
    if (WeakRetained)
    {
      [WeakRetained receiveSinkContent:destinationBuffer];
    }

    else
    {
      [(_CSCompressionEngine *)self _gatherReadSinkContent:destinationBuffer];
    }

    [(NSMutableData *)self->_destinationBuffer setLength:0x10000];
    self->_stream->var0 = [(NSMutableData *)self->_destinationBuffer mutableBytes];
    self->_stream->var1 = 0x10000;
  }

  return v3;
}

- (BOOL)_initializeStream
{
  if (self->_stream)
  {
    sub_100357A7C(a2, self);
  }

  v3 = malloc_type_malloc(0x28uLL, 0x10D00405C4BD7A1uLL);
  self->_stream = v3;
  v3->var0 = "";
  stream = self->_stream;
  stream->var1 = 0;
  stream->var2 = "";
  v5 = self->_stream;
  v5->src_size = 0;
  return compression_stream_init(v5, self->_operation, self->_algorithm) == COMPRESSION_STATUS_OK;
}

- (BOOL)_processIncomingData:(const void *)data length:(unint64_t)length flags:(int)flags
{
  self->_stream->var0 = [(NSMutableData *)self->_destinationBuffer mutableBytes];
  stream = self->_stream;
  stream->var1 = 0x10000;
  stream->var2 = data;
  self->_stream->var3 = length;
  if (!length && (flags & 1) == 0)
  {
    return 1;
  }

  while (1)
  {
    while (1)
    {
      v12 = compression_stream_process(self->_stream, flags);
      WeakRetained = objc_loadWeakRetained(&self->_destination);
      v14 = WeakRetained;
      if (v12)
      {
        break;
      }

      v11 = self->_stream->var3 | [(_CSCompressionEngine *)self _deliverDestinationContent];

      if (!v11)
      {
        return 1;
      }
    }

    if (v12 == COMPRESSION_STATUS_ERROR)
    {
      break;
    }

    if (v12 == COMPRESSION_STATUS_END)
    {
      [(_CSCompressionEngine *)self _deliverDestinationContent];
      v10 = 1;
      goto LABEL_13;
    }
  }

  if (WeakRetained)
  {
    [WeakRetained receiveSinkContent:0];
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (_CSStreamingDestination)destination
{
  WeakRetained = objc_loadWeakRetained(&self->_destination);

  return WeakRetained;
}

@end