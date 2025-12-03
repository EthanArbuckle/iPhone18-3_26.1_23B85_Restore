@interface TSUBufferedReadChannel
- (TSUBufferedReadChannel)initWithReadChannel:(id)channel sourceReadBufferSize:(unint64_t)size blockInfos:(id)infos streamReadChannelBlock:(id)block;
- (id)_currentDataIntersectionWithOffset:(int64_t)offset length:(unint64_t)length isReadDone:(BOOL *)done;
- (void)_close;
- (void)_closeStreamReadChannel;
- (void)_readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)_resetStreamReadChannelIfNeededForOffset:(int64_t)offset length:(unint64_t)length;
- (void)close;
- (void)dealloc;
- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler;
- (void)setStreamReadChannelSourceHandler:(id)handler;
@end

@implementation TSUBufferedReadChannel

- (TSUBufferedReadChannel)initWithReadChannel:(id)channel sourceReadBufferSize:(unint64_t)size blockInfos:(id)infos streamReadChannelBlock:(id)block
{
  channelCopy = channel;
  infosCopy = infos;
  blockCopy = block;
  v29.receiver = self;
  v29.super_class = TSUBufferedReadChannel;
  v14 = [(TSUBufferedReadChannel *)&v29 init];
  if (v14)
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
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
      [TSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:70 isFatal:0 description:"invalid nil value for '%{public}s'", "sourceReadChannel"];

      +[TSUAssertionHandler logBacktraceThrottled];
      if (blockCopy)
      {
LABEL_4:
        if (size)
        {
LABEL_5:
          if (channelCopy && blockCopy)
          {
            v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v16 = dispatch_queue_create("TSUBufferedReadChannel.Read", v15);
            v17 = *(v14 + 1);
            *(v14 + 1) = v16;

            dispatch_queue_set_specific(*(v14 + 1), qword_280A62C00, qword_280A62C00, 0);
            objc_storeStrong(v14 + 2, channel);
            *(v14 + 3) = size;
            *(v14 + 4) = 0x7FFFFFFFFFFFFFFFLL;
            v18 = [infosCopy copy];
            v19 = *(v14 + 7);
            *(v14 + 7) = v18;

            v20 = _Block_copy(blockCopy);
            v21 = *(v14 + 8);
            *(v14 + 8) = v20;

            *(v14 + 12) = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_12;
          }

LABEL_11:

          v14 = 0;
          goto LABEL_12;
        }

LABEL_10:
        v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
        [TSUAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:72 isFatal:0 description:"Buffer size too small: %zu", 0];

        +[TSUAssertionHandler logBacktraceThrottled];
        goto LABEL_11;
      }
    }

    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
    v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:71 isFatal:0 description:"invalid nil value for '%{public}s'", "streamReadChannelBlock"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (size)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_12:

  return v14;
}

- (void)dealloc
{
  [(TSUBufferedReadChannel *)self _close];
  v3.receiver = self;
  v3.super_class = TSUBufferedReadChannel;
  [(TSUBufferedReadChannel *)&v3 dealloc];
}

- (void)close
{
  v3 = qword_280A62C00;
  if (dispatch_get_specific(qword_280A62C00) == v3 || (v4 = objc_opt_class(), [MEMORY[0x277CCACC8] currentThread], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "threadDictionary"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", @"TSUBufferedReadChannelInvokingHandler"), v7 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(v4, v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "BOOLValue"), v8, v7, v6, v5, v9))
  {

    [(TSUBufferedReadChannel *)self _close];
  }

  else
  {
    readQueue = self->_readQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2770D8690;
    block[3] = &unk_27A7023D8;
    block[4] = self;
    dispatch_sync(readQueue, block);
  }
}

- (void)_close
{
  [(TSUBufferedReadChannel *)self _closeStreamReadChannel];
  [(TSUReadChannel *)self->_sourceReadChannel close];
  sourceReadChannel = self->_sourceReadChannel;
  self->_sourceReadChannel = 0;

  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = 0;
}

- (void)_closeStreamReadChannel
{
  [(TSUStreamReadChannel *)self->_streamReadChannel close];
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = 0;
}

- (void)_resetStreamReadChannelIfNeededForOffset:(int64_t)offset length:(unint64_t)length
{
  offsetCopy = offset;
  v43 = *MEMORY[0x277D85DE8];
  streamOutputOffset = self->_streamOutputOffset;
  if (streamOutputOffset <= offset)
  {
    streamOutputOutstandingLength = self->_streamOutputOutstandingLength;
    v9 = streamOutputOutstandingLength + streamOutputOffset;
    if (streamOutputOutstandingLength == -1 || v9 > offset)
    {
      return;
    }
  }

  [(TSUBufferedReadChannel *)self _closeStreamReadChannel];
  *&self->_sourceOffset = xmmword_2771363A0;
  *&self->_streamOutputOffset = xmmword_2771363A0;
  self->_streamOutputLength = 0;
  v11 = [(NSArray *)self->_blockInfos count];
  if (!v11)
  {
    v16 = 0;
    goto LABEL_29;
  }

  v12 = v11;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v13 = self->_blockInfos;
  v36 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v36)
  {
    v16 = 0;
    goto LABEL_28;
  }

  v14 = 0;
  decodedLength = 0;
  v16 = 0;
  v35 = *v39;
  v33 = v13;
  do
  {
    v17 = 0;
    do
    {
      if (*v39 != v35)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v38 + 1) + 8 * v17);
      v14 += [v18 decodedLength];
      if (decodedLength)
      {
        [v16 addObject:v18];
        self->_sourceLength += [v18 encodedLength];
        decodedLength += [v18 decodedLength];
        decodedLength2 = self->_streamOutputOutstandingLength + [v18 decodedLength];
      }

      else
      {
        if (v14 <= offsetCopy)
        {
          self->_sourceOffset += [v18 encodedLength];
          decodedLength = 0;
          self->_streamOutputOffset += [v18 decodedLength];
          goto LABEL_19;
        }

        if (v16)
        {
          [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _resetStreamReadChannelIfNeededForOffset:length:]"];
          v34 = v16;
          v20 = offsetCopy;
          v22 = v21 = length;
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
          [TSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:149 isFatal:0 description:"expected nil value for '%{public}s'", "blockInfos"];

          length = v21;
          offsetCopy = v20;
          v16 = v34;
          +[TSUAssertionHandler logBacktraceThrottled];
        }

        v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12];

        [v24 addObject:v18];
        self->_sourceLength = [v18 encodedLength];
        decodedLength = [v18 decodedLength];
        decodedLength2 = [v18 decodedLength];
        v16 = v24;
        v13 = v33;
      }

      self->_streamOutputOutstandingLength = decodedLength2;
      if (decodedLength > length)
      {
        goto LABEL_28;
      }

LABEL_19:
      if (!--v12)
      {
        self->_sourceLength = -1;
        self->_streamOutputOutstandingLength = -1;
      }

      ++v17;
    }

    while (v36 != v17);
    v25 = [(NSArray *)v13 countByEnumeratingWithState:&v38 objects:v42 count:16];
    v36 = v25;
  }

  while (v25);
LABEL_28:

LABEL_29:
  currentStreamOutputData = self->_currentStreamOutputData;
  self->_currentStreamOutputData = 0;

  self->_isStreamOutputDone = 0;
  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = 0;

  streamReadChannelBlock = self->_streamReadChannelBlock;
  v29 = [[TSUBufferedReadChannelHelper alloc] initWithBufferedReadChannel:self];
  v30 = streamReadChannelBlock[2](streamReadChannelBlock, v29, v16);
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = v30;

  v32 = self->_streamReadChannel;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = sub_2770D8AF4;
  v37[3] = &unk_27A7031D0;
  v37[4] = self;
  [(TSUStreamReadChannel *)v32 readWithHandler:v37];
}

- (void)setStreamReadChannelSourceHandler:(id)handler
{
  v4 = _Block_copy(handler);
  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = v4;

  MEMORY[0x2821F96F8](v4, streamReadChannelSourceHandler);
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  readQueue = self->_readQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2770D8D68;
  v11[3] = &unk_27A7031F8;
  offsetCopy = offset;
  lengthCopy = length;
  v11[4] = self;
  v12 = handlerCopy;
  v10 = handlerCopy;
  dispatch_async(readQueue, v11);
}

- (void)_readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  v9 = (offset & (offset >> 63)) + length;
  v10 = offset & ~(offset >> 63);
  [(TSUBufferedReadChannel *)self _resetStreamReadChannelIfNeededForOffset:v10 length:v9];
  v31 = 0;
  v11 = [(TSUBufferedReadChannel *)self _currentDataIntersectionWithOffset:v10 length:v9 isReadDone:&v31];
  v12 = v11;
  if (v11)
  {
    size = dispatch_data_get_size(v11);
    v10 += size;
    v9 -= size;
  }

  else if (v31 != 1)
  {
    goto LABEL_6;
  }

  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];
  [threadDictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];

  (*(handlerCopy + 2))(handlerCopy, v31, v12, 0);
  currentThread2 = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary2 = [currentThread2 threadDictionary];
  [threadDictionary2 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];

  if (v31)
  {
    dispatch_resume(self->_readQueue);
    goto LABEL_12;
  }

LABEL_6:
  [(TSUBufferedReadChannel *)self _resetStreamReadChannelIfNeededForOffset:v10 length:v9];
  currentStreamOutputData = self->_currentStreamOutputData;
  self->_currentStreamOutputData = 0;

  streamOutputOutstandingLength = self->_streamOutputOutstandingLength;
  streamOutputLength = self->_streamOutputLength;
  self->_streamOutputOffset += streamOutputLength;
  if (streamOutputOutstandingLength != -1)
  {
    self->_streamOutputOutstandingLength = streamOutputOutstandingLength - streamOutputLength;
  }

  self->_streamOutputLength = 0;
  sourceReadChannel = self->_sourceReadChannel;
  sourceOffset = self->_sourceOffset;
  if (self->_sourceLength >= self->_sourceReadBufferSize)
  {
    sourceReadBufferSize = self->_sourceReadBufferSize;
  }

  else
  {
    sourceReadBufferSize = self->_sourceLength;
  }

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v30[3] = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2770D9128;
  v24[3] = &unk_27A703220;
  v24[4] = self;
  v25 = handlerCopy;
  v26 = v30;
  v27 = sourceReadBufferSize;
  v28 = v10;
  v29 = v9;
  [(TSUReadChannel *)sourceReadChannel readFromOffset:sourceOffset length:sourceReadBufferSize handler:v24];

  _Block_object_dispose(v30, 8);
LABEL_12:
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
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUBufferedReadChannel _currentDataIntersectionWithOffset:length:isReadDone:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUBufferedReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:343 isFatal:0 description:"Overflow in the output stream: data offset %lli data length %zu", self->_streamOutputOffset, self->_streamOutputLength];

    +[TSUAssertionHandler logBacktraceThrottled];
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

  v14 = streamOutputLength + streamOutputOffset;
  if (v8 >= streamOutputLength + streamOutputOffset)
  {
    v15 = streamOutputLength + streamOutputOffset;
  }

  else
  {
    v15 = v8;
  }

  if (v15 <= offsetCopy)
  {
    subrange = 0;
    if (!done)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  subrange = dispatch_data_create_subrange(self->_currentStreamOutputData, offsetCopy - streamOutputOffset, v15 - offsetCopy);
  if (done)
  {
LABEL_16:
    *done = v8 <= v14 || self->_isStreamOutputDone;
  }

LABEL_17:

  return subrange;
}

@end