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
      +[TSUAssertionHandler _atomicIncrementAssertCount];
      if (TSUAssertCat_init_token != -1)
      {
        sub_10015C93C();
      }

      if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
      {
        sub_10015C964();
      }

      v22 = [NSString stringWithUTF8String:"[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
      [TSUAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:70 isFatal:0 description:"invalid nil value for '%{public}s'", "sourceReadChannel"];

      +[TSUAssertionHandler logBacktraceThrottled];
      if (blockCopy)
      {
LABEL_4:
        if (size)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015C9F8();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015CA20();
    }

    v24 = [NSString stringWithUTF8String:"[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
    v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:71 isFatal:0 description:"invalid nil value for '%{public}s'", "streamReadChannelBlock"];

    +[TSUAssertionHandler logBacktraceThrottled];
    if (size)
    {
LABEL_5:
      if (channelCopy && blockCopy)
      {
        v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v16 = dispatch_queue_create("TSUBufferedReadChannel.Read", v15);
        v17 = *(v14 + 1);
        *(v14 + 1) = v16;

        dispatch_queue_set_specific(*(v14 + 1), off_1001E9BC0, off_1001E9BC0, 0);
        objc_storeStrong(v14 + 2, channel);
        *(v14 + 3) = size;
        *(v14 + 4) = 0x7FFFFFFFFFFFFFFFLL;
        v18 = [infosCopy copy];
        v19 = *(v14 + 7);
        *(v14 + 7) = v18;

        v20 = objc_retainBlock(blockCopy);
        v21 = *(v14 + 8);
        *(v14 + 8) = v20;

        *(v14 + 12) = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_24;
      }

LABEL_23:

      v14 = 0;
      goto LABEL_24;
    }

LABEL_18:
    +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015CAB4();
    }

    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      sub_10015CADC();
    }

    v26 = [NSString stringWithUTF8String:"[TSUBufferedReadChannel initWithReadChannel:sourceReadBufferSize:blockInfos:streamReadChannelBlock:]"];
    v27 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v26 file:v27 lineNumber:72 isFatal:0 description:"Buffer size too small: %zu", 0];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_23;
  }

LABEL_24:

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
  v3 = off_1001E9BC0;
  if (dispatch_get_specific(off_1001E9BC0) == v3)
  {
    goto LABEL_3;
  }

  v4 = objc_opt_class();
  v5 = +[NSThread currentThread];
  threadDictionary = [v5 threadDictionary];
  v7 = [threadDictionary objectForKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];
  v8 = TSUDynamicCast(v4, v7);
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
  {
LABEL_3:

    [(TSUBufferedReadChannel *)self _close];
  }

  else
  {
    readQueue = self->_readQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008F04C;
    block[3] = &unk_1001C5A68;
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
  *&self->_sourceOffset = xmmword_10017D210;
  *&self->_streamOutputOffset = xmmword_10017D210;
  self->_streamOutputLength = 0;
  v11 = [(NSArray *)self->_blockInfos count];
  if (!v11)
  {
    v17 = 0;
    goto LABEL_33;
  }

  v12 = v11;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = self->_blockInfos;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v53 count:16];
  if (!v13)
  {
    v17 = 0;
    goto LABEL_32;
  }

  v14 = v13;
  decodedLength = 0;
  v16 = 0;
  v17 = 0;
  v37 = *v40;
  lengthCopy = length;
  v35 = offsetCopy;
  do
  {
    v18 = 0;
    do
    {
      if (*v40 != v37)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v39 + 1) + 8 * v18);
      v16 += [v19 decodedLength];
      if (decodedLength)
      {
        [v17 addObject:v19];
        self->_sourceLength += [v19 encodedLength];
        decodedLength = &decodedLength[[v19 decodedLength]];
        decodedLength2 = [v19 decodedLength] + self->_streamOutputOutstandingLength;
      }

      else
      {
        if (v16 <= offsetCopy)
        {
          self->_sourceOffset += [v19 encodedLength];
          decodedLength = 0;
          self->_streamOutputOffset += [v19 decodedLength];
          goto LABEL_23;
        }

        if (v17)
        {
          v21 = +[TSUAssertionHandler _atomicIncrementAssertCount];
          if (TSUAssertCat_init_token != -1)
          {
            sub_10015CB70();
          }

          v22 = TSUAssertCat_log_t;
          if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
          {
            *buf = 67110146;
            v44 = v21;
            v45 = 2082;
            v46 = "[TSUBufferedReadChannel _resetStreamReadChannelIfNeededForOffset:length:]";
            v47 = 2082;
            v48 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m";
            v49 = 1024;
            v50 = 149;
            v51 = 2082;
            v52 = "blockInfos";
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d expected nil value for '%{public}s'", buf, 0x2Cu);
          }

          v23 = [NSString stringWithUTF8String:"[TSUBufferedReadChannel _resetStreamReadChannelIfNeededForOffset:length:]"];
          v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
          [TSUAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:149 isFatal:0 description:"expected nil value for '%{public}s'", "blockInfos"];

          +[TSUAssertionHandler logBacktraceThrottled];
          length = lengthCopy;
        }

        v25 = [[NSMutableArray alloc] initWithCapacity:v12];

        [v25 addObject:v19];
        self->_sourceLength = [v19 encodedLength];
        decodedLength = [v19 decodedLength];
        decodedLength2 = [v19 decodedLength];
        v17 = v25;
        offsetCopy = v35;
      }

      self->_streamOutputOutstandingLength = decodedLength2;
      if (decodedLength > length)
      {
        goto LABEL_32;
      }

LABEL_23:
      if (!--v12)
      {
        self->_sourceLength = -1;
        self->_streamOutputOutstandingLength = -1;
      }

      v18 = v18 + 1;
    }

    while (v14 != v18);
    v26 = [(NSArray *)obj countByEnumeratingWithState:&v39 objects:v53 count:16];
    v14 = v26;
  }

  while (v26);
LABEL_32:

LABEL_33:
  currentStreamOutputData = self->_currentStreamOutputData;
  self->_currentStreamOutputData = 0;

  self->_isStreamOutputDone = 0;
  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = 0;

  streamReadChannelBlock = self->_streamReadChannelBlock;
  v30 = [[TSUBufferedReadChannelHelper alloc] initWithBufferedReadChannel:self];
  v31 = streamReadChannelBlock[2](streamReadChannelBlock, v30, v17);
  streamReadChannel = self->_streamReadChannel;
  self->_streamReadChannel = v31;

  v33 = self->_streamReadChannel;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10008F5B0;
  v38[3] = &unk_1001CD488;
  v38[4] = self;
  [(TSUStreamReadChannel *)v33 readWithHandler:v38];
}

- (void)setStreamReadChannelSourceHandler:(id)handler
{
  v4 = objc_retainBlock(handler);
  streamReadChannelSourceHandler = self->_streamReadChannelSourceHandler;
  self->_streamReadChannelSourceHandler = v4;

  _objc_release_x1(v4, streamReadChannelSourceHandler);
}

- (void)readFromOffset:(int64_t)offset length:(unint64_t)length handler:(id)handler
{
  handlerCopy = handler;
  readQueue = self->_readQueue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10008F8B4;
  v11[3] = &unk_1001C59F0;
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

  v14 = +[NSThread currentThread];
  threadDictionary = [v14 threadDictionary];
  [threadDictionary setObject:&__kCFBooleanTrue forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];

  (*(handlerCopy + 2))(handlerCopy, v31, v12, 0);
  v16 = +[NSThread currentThread];
  threadDictionary2 = [v16 threadDictionary];
  [threadDictionary2 setObject:&__kCFBooleanFalse forKeyedSubscript:@"TSUBufferedReadChannelInvokingHandler"];

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
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_10008FC74;
  v24[3] = &unk_1001CD530;
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
    v11 = +[TSUAssertionHandler _atomicIncrementAssertCount];
    if (TSUAssertCat_init_token != -1)
    {
      sub_10015CF3C();
    }

    v12 = TSUAssertCat_log_t;
    if (os_log_type_enabled(TSUAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      v21 = self->_streamOutputOffset;
      v22 = self->_streamOutputLength;
      *buf = 67110402;
      v24 = v11;
      v25 = 2082;
      v26 = "[TSUBufferedReadChannel _currentDataIntersectionWithOffset:length:isReadDone:]";
      v27 = 2082;
      v28 = "/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m";
      v29 = 1024;
      v30 = 343;
      v31 = 2048;
      v32 = v21;
      v33 = 2048;
      v34 = v22;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Overflow in the output stream: data offset %lli data length %zu", buf, 0x36u);
    }

    v13 = [NSString stringWithUTF8String:"[TSUBufferedReadChannel _currentDataIntersectionWithOffset:length:isReadDone:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkXPC/shared/utility/TSUBufferedReadChannel.m"];
    v15 = self->_streamOutputOffset;
    [TSUAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:343 isFatal:0 description:"Overflow in the output stream: data offset %lli data length %zu", v15, self->_streamOutputLength];

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

  v17 = streamOutputLength + streamOutputOffset;
  if (v8 >= streamOutputLength + streamOutputOffset)
  {
    v18 = streamOutputLength + streamOutputOffset;
  }

  else
  {
    v18 = v8;
  }

  if (v18 <= offsetCopy)
  {
    subrange = 0;
    if (!done)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  subrange = dispatch_data_create_subrange(self->_currentStreamOutputData, offsetCopy - streamOutputOffset, v18 - offsetCopy);
  if (done)
  {
LABEL_20:
    *done = v8 <= v17 || self->_isStreamOutputDone;
  }

LABEL_21:

  return subrange;
}

@end