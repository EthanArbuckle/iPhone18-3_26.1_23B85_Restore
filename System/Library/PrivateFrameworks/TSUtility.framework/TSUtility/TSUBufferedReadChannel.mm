@interface TSUBufferedReadChannel
- (TSUBufferedReadChannel)initWithReadChannel:(id)channel sourceReadBufferSize:(unint64_t)size streamReadChannelBlock:(id)block;
- (id)_currentDataIntersectionWithOffset:(int64_t)offset length:(unint64_t)length isReadDone:(BOOL *)done;
- (void)_closeStreamReadChannel;
- (void)_readFromOffset:(int64_t)offset length:(unint64_t)length queue:(id)queue handler:(id)handler;
- (void)_resetStreamReadChannel;
- (void)close;
- (void)dealloc;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length queue:(id)queue handler:(id)handler;
- (void)setStreamReadChannelSourceQueue:(id)queue handler:(id)handler;
@end

@implementation TSUBufferedReadChannel

- (TSUBufferedReadChannel)initWithReadChannel:(id)channel sourceReadBufferSize:(unint64_t)size streamReadChannelBlock:(id)block
{
  channelCopy = channel;
  blockCopy = block;
  v28.receiver = self;
  v28.super_class = TSUBufferedReadChannel;
  v11 = [(TSUBufferedReadChannel *)&v28 init];
  if (v11)
  {
    if (channelCopy)
    {
      if (blockCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v18 = +[TSUAssertionHandler currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:streamReadChannelBlock:]"];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUBufferedReadChannel.m"];
      [v18 handleFailureInFunction:v19 file:v20 lineNumber:60 description:{@"invalid nil value for '%s'", "sourceReadChannel"}];

      if (blockCopy)
      {
LABEL_4:
        if (size)
        {
LABEL_5:
          if (channelCopy && blockCopy)
          {
            v12 = dispatch_semaphore_create(1);
            readSemaphore = v11->_readSemaphore;
            v11->_readSemaphore = v12;

            objc_storeStrong(&v11->_sourceReadChannel, channel);
            v11->_sourceReadBufferSize = size;
            v14 = dispatch_queue_create("com.apple.iwork.TSUBufferedReadChannel.SourceRead", 0);
            sourceReadQueue = v11->_sourceReadQueue;
            v11->_sourceReadQueue = v14;

            v16 = _Block_copy(blockCopy);
            streamReadChannelBlock = v11->_streamReadChannelBlock;
            v11->_streamReadChannelBlock = v16;

            [(TSUBufferedReadChannel *)v11 _resetStreamReadChannel];
            goto LABEL_12;
          }

LABEL_11:

          v11 = 0;
          goto LABEL_12;
        }

LABEL_10:
        v24 = +[TSUAssertionHandler currentHandler];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:streamReadChannelBlock:]"];
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUBufferedReadChannel.m"];
        [v24 handleFailureInFunction:v25 file:v26 lineNumber:62 description:{@"Buffer size too small: %zu", 0}];

        goto LABEL_11;
      }
    }

    v21 = +[TSUAssertionHandler currentHandler];
    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:streamReadChannelBlock:]"];
    v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUBufferedReadChannel.m"];
    [v21 handleFailureInFunction:v22 file:v23 lineNumber:61 description:{@"invalid nil value for '%s'", "streamReadChannelBlock"}];

    if (size)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_12:

  return v11;
}

- (void)dealloc
{
  [(TSUBufferedReadChannel *)self close];
  v3.receiver = self;
  v3.super_class = TSUBufferedReadChannel;
  [(TSUBufferedReadChannel *)&v3 dealloc];
}

- (void)close
{
  [(TSUBufferedReadChannel *)self _closeStreamReadChannel];
  [(TSUReadChannel *)self->_sourceReadChannel close];
  sourceReadChannel = self->_sourceReadChannel;
  self->_sourceReadChannel = 0;

  streamReadChannelSourceQueue = self->_streamReadChannelSourceQueue;
  self->_streamReadChannelSourceQueue = 0;

  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = 0;
}

- (void)_closeStreamReadChannel
{
  [(TSUStreamReadChannel *)self->_streamReadChannel close];
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = 0;
}

- (void)_resetStreamReadChannel
{
  [(TSUBufferedReadChannel *)self _closeStreamReadChannel];
  self->_sourceOffset = 0;
  self->_streamOutputOffset = 0;
  self->_streamOutputLength = 0;
  currentStreamOutputData = self->_currentStreamOutputData;
  self->_currentStreamOutputData = 0;

  self->_isStreamOutputDone = 0;
  v4 = dispatch_queue_create("com.apple.iwork.TSUBufferedReadChannel.StreamOutput", 0);
  streamReadChannelOutputQueue = self->_streamReadChannelOutputQueue;
  self->_streamReadChannelOutputQueue = v4;

  streamReadChannelSourceQueue = self->_streamReadChannelSourceQueue;
  self->_streamReadChannelSourceQueue = 0;

  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = 0;

  streamReadChannelBlock = self->_streamReadChannelBlock;
  v9 = [[TSUBufferedReadChannelHelper alloc] initWithBufferedReadChannel:self];
  v10 = streamReadChannelBlock[2](streamReadChannelBlock, v9);
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = v10;

  v12 = self->_streamReadChannel;
  v13 = self->_streamReadChannelOutputQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __49__TSUBufferedReadChannel__resetStreamReadChannel__block_invoke;
  v14[3] = &unk_279D66828;
  v14[4] = self;
  [(TSUStreamReadChannel *)v12 readWithQueue:v13 handler:v14];
}

void __49__TSUBufferedReadChannel__resetStreamReadChannel__block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  data = a3;
  v7 = a4;
  v8 = v7;
  v9 = *(a1 + 32);
  if ((*(v9 + 96) & 1) == 0)
  {
    if (v7)
    {
      v10 = +[TSUAssertionHandler currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _resetStreamReadChannel]_block_invoke"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUBufferedReadChannel.m"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:129 description:{@"Error reading from filter TSUStreamReadChannel: %@", v8}];

      a2 = 1;
    }

    else
    {
      if (!data)
      {
        goto LABEL_5;
      }

      *(v9 + 112) += dispatch_data_get_size(data);
      v13 = *(a1 + 32);
      v14 = *(v13 + 120);
      if (v14)
      {
        concat = dispatch_data_create_concat(v14, data);
        v16 = *(a1 + 32);
        v10 = *(v16 + 120);
        *(v16 + 120) = concat;
      }

      else
      {
        v17 = data;
        v10 = *(v13 + 120);
        *(v13 + 120) = v17;
      }
    }

LABEL_5:
    *(*(a1 + 32) + 96) = a2;
  }
}

- (void)setStreamReadChannelSourceQueue:(id)queue handler:(id)handler
{
  objc_storeStrong(&self->_streamReadChannelSourceQueue, queue);
  queueCopy = queue;
  handlerCopy = handler;
  v8 = _Block_copy(handlerCopy);

  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = v8;
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  v11 = handlerCopy;
  if (self->_sourceReadChannelError)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __62__TSUBufferedReadChannel_readFromOffset_length_queue_handler___block_invoke;
    v15[3] = &unk_279D66388;
    v15[4] = self;
    v16 = handlerCopy;
    queueCopy = queue;
    dispatch_async(queueCopy, v15);

    queueCopy2 = v16;
  }

  else
  {
    readSemaphore = self->_readSemaphore;
    queueCopy2 = queue;
    dispatch_semaphore_wait(readSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    [(TSUBufferedReadChannel *)self _readFromOffset:offset length:length queue:queueCopy2 handler:v11];
  }
}

- (void)_readFromOffset:(int64_t)offset length:(unint64_t)length queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v12 = (offset & (offset >> 63)) + length;
  v13 = offset & ~(offset >> 63);
  if (v13 < self->_streamOutputOffset)
  {
    [(TSUBufferedReadChannel *)self _resetStreamReadChannel];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36[0] = 0;
  v14 = [(TSUBufferedReadChannel *)self _currentDataIntersectionWithOffset:v13 length:v12 isReadDone:v36];
  v15 = v14;
  if (v14)
  {
    size = dispatch_data_get_size(v14);
    v13 += size;
    v12 -= size;
  }

  else if (*(v34 + 24) != 1)
  {
LABEL_8:
    currentStreamOutputData = self->_currentStreamOutputData;
    self->_currentStreamOutputData = 0;

    self->_streamOutputOffset += self->_streamOutputLength;
    self->_streamOutputLength = 0;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v28[3] = 0;
    sourceReadChannel = self->_sourceReadChannel;
    sourceReadBufferSize = self->_sourceReadBufferSize;
    sourceReadQueue = self->_sourceReadQueue;
    sourceOffset = self->_sourceOffset;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __63__TSUBufferedReadChannel__readFromOffset_length_queue_handler___block_invoke_2;
    v22[3] = &unk_279D66A78;
    v22[4] = self;
    v23 = queueCopy;
    v24 = handlerCopy;
    v25 = v28;
    v26 = v13;
    v27 = v12;
    [(TSUReadChannel *)sourceReadChannel readFromOffset:sourceOffset length:sourceReadBufferSize queue:sourceReadQueue handler:v22];

    _Block_object_dispose(v28, 8);
    goto LABEL_9;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TSUBufferedReadChannel__readFromOffset_length_queue_handler___block_invoke;
  block[3] = &unk_279D66A00;
  v31 = handlerCopy;
  v32 = &v33;
  v30 = v15;
  dispatch_async(queueCopy, block);

  if ((v34[3] & 1) == 0)
  {
    goto LABEL_8;
  }

  dispatch_semaphore_signal(self->_readSemaphore);
LABEL_9:

  _Block_object_dispose(&v33, 8);
}

void __63__TSUBufferedReadChannel__readFromOffset_length_queue_handler___block_invoke_2(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (*(*(a1 + 32) + 48))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v10 = +[TSUAssertionHandler currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _readFromOffset:length:queue:handler:]_block_invoke_2"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUBufferedReadChannel.m"];
    [v10 handleFailureInFunction:v11 file:v12 lineNumber:211 description:{@"Error reading from source TSUReadChannel: %@", v9}];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__TSUBufferedReadChannel__readFromOffset_length_queue_handler___block_invoke_3;
    block[3] = &unk_279D66388;
    v13 = *(a1 + 40);
    v34 = *(a1 + 48);
    v33 = v9;
    dispatch_async(v13, block);
    objc_storeStrong((*(a1 + 32) + 48), a4);
    dispatch_semaphore_signal(*(*(a1 + 32) + 8));

    v14 = v34;
LABEL_17:

    goto LABEL_18;
  }

  if (v7)
  {
    size = dispatch_data_get_size(v7);
  }

  else
  {
    size = 0;
  }

  *(*(*(a1 + 56) + 8) + 24) += size;
  if (*(*(*(a1 + 56) + 8) + 24) > *(*(a1 + 32) + 24))
  {
    v16 = +[TSUAssertionHandler currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _readFromOffset:length:queue:handler:]_block_invoke_2"];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUBufferedReadChannel.m"];
    [v16 handleFailureInFunction:v17 file:v18 lineNumber:221 description:{@"Received more data than requested: %zu instead of %zu", *(*(*(a1 + 56) + 8) + 24), *(*(a1 + 32) + 24)}];
  }

  if (a2)
  {
    v19 = *(*(*(a1 + 56) + 8) + 24) < *(*(a1 + 32) + 24);
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_13:
    if (!v19)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v19 = 0;
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_14:
  v20 = *(a1 + 32);
  v21 = *(v20 + 72);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __63__TSUBufferedReadChannel__readFromOffset_length_queue_handler___block_invoke_4;
  v29[3] = &unk_279D66A28;
  v29[4] = v20;
  v31 = v19;
  v30 = v7;
  dispatch_async(v21, v29);

LABEL_15:
  if (a2)
  {
    *(*(a1 + 32) + 40) += *(*(*(a1 + 56) + 8) + 24);
    v23 = *(a1 + 32);
    v22 = *(a1 + 40);
    v24 = *(v23 + 72);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __63__TSUBufferedReadChannel__readFromOffset_length_queue_handler___block_invoke_5;
    v25[3] = &unk_279D66A50;
    v25[4] = v23;
    v28 = *(a1 + 64);
    v26 = v22;
    v27 = *(a1 + 48);
    dispatch_async(v24, v25);

    v14 = v26;
    goto LABEL_17;
  }

LABEL_18:
}

void __63__TSUBufferedReadChannel__readFromOffset_length_queue_handler___block_invoke_5(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 88);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TSUBufferedReadChannel__readFromOffset_length_queue_handler___block_invoke_6;
  block[3] = &unk_279D66A50;
  block[4] = v3;
  v8 = *(a1 + 56);
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

- (id)_currentDataIntersectionWithOffset:(int64_t)offset length:(unint64_t)length isReadDone:(BOOL *)done
{
  if (__CFADD__(offset, length))
  {
    v8 = -1;
  }

  else
  {
    v8 = offset + length;
  }

  streamOutputOffset = self->_streamOutputOffset;
  streamOutputLength = self->_streamOutputLength;
  if (streamOutputLength >= ~streamOutputOffset)
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _currentDataIntersectionWithOffset:length:isReadDone:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUBufferedReadChannel.m"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:258 description:{@"Overflow in the output stream: data offset %lli data length %zu", self->_streamOutputOffset, self->_streamOutputLength}];

    streamOutputOffset = self->_streamOutputOffset;
    streamOutputLength = self->_streamOutputLength;
  }

  if (streamOutputOffset <= offset)
  {
    offsetCopy = offset;
  }

  else
  {
    offsetCopy = streamOutputOffset;
  }

  v15 = streamOutputLength + streamOutputOffset;
  if (v8 >= streamOutputLength + streamOutputOffset)
  {
    v16 = streamOutputLength + streamOutputOffset;
  }

  else
  {
    v16 = v8;
  }

  if (v16 <= offsetCopy)
  {
    subrange = 0;
    if (!done)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  subrange = dispatch_data_create_subrange(self->_currentStreamOutputData, offsetCopy - streamOutputOffset, v16 - offsetCopy);
  if (done)
  {
LABEL_16:
    *done = v8 <= v15 || self->_isStreamOutputDone;
  }

LABEL_17:

  return subrange;
}

@end