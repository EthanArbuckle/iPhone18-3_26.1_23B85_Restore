@interface UAStreamHandler
- (BOOL)dataHasMessage:(id)message;
- (BOOL)writeMessage:(id)message tag:(int64_t)tag;
- (BOOL)writeRawData:(id)data;
- (UAStreamHandler)initWithInputStream:(id)stream outputStream:(id)outputStream delegate:(id)delegate;
- (UAStreamHandlerDelegate)delegate;
- (id)trimFirstBytes:(unint64_t)bytes ofData:(id)data;
- (int64_t)handleSpaceAvailable;
- (int64_t)queueCount;
- (int64_t)tryWriteMessage;
- (int64_t)tryWriteRawData;
- (void)_stop;
- (void)handleBytesAvailable;
- (void)handleMessageRead;
- (void)handleOpenCompleted;
- (void)processHeader;
- (void)start;
- (void)stop;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
- (void)tryStop;
@end

@implementation UAStreamHandler

- (UAStreamHandler)initWithInputStream:(id)stream outputStream:(id)outputStream delegate:(id)delegate
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = UAStreamHandler;
  v11 = [(UAStreamHandler *)&v17 init];
  v12 = v11;
  if (v11)
  {
    [(UAStreamHandler *)v11 setDelegate:delegateCopy];
    [(UAStreamHandler *)v12 setInStream:streamCopy];
    [(UAStreamHandler *)v12 setOutStream:outputStreamCopy];
    [(UAStreamHandler *)v12 setInputState:0];
    [(UAStreamHandler *)v12 setOutputMode:0];
    v13 = [[NSMutableArray alloc] initWithCapacity:5];
    [(UAStreamHandler *)v12 setMessageQueue:v13];

    v14 = objc_alloc_init(NSMutableData);
    [(UAStreamHandler *)v12 setInData:v14];

    v15 = objc_alloc_init(NSMutableData);
    [(UAStreamHandler *)v12 setOutputStreamData:v15];

    [(UAStreamHandler *)v12 setByteIndex:0];
    [(UAStreamHandler *)v12 setBytesRead:0];
    [(UAStreamHandler *)v12 setTotalBytesSent:0];
    [(UAStreamHandler *)v12 setTotalBytesReceived:0];
    [(UAStreamHandler *)v12 setInMessage:0];
    [(UAStreamHandler *)v12 setOutMessage:0];
    [(UAStreamHandler *)v12 setStreamError:0];
    [(UAStreamHandler *)v12 setShouldStop:0];
  }

  return v12;
}

- (int64_t)queueCount
{
  messageQueue = [(UAStreamHandler *)self messageQueue];
  v4 = [messageQueue count];

  outMessage = [(UAStreamHandler *)self outMessage];

  if (outMessage)
  {
    return v4 + 1;
  }

  else
  {
    return v4;
  }
}

- (void)start
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v20.version) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[STREAM HAND] Starting Streams", &v20, 2u);
  }

  inStream = [(UAStreamHandler *)self inStream];
  streamStatus = [inStream streamStatus];

  if (!streamStatus)
  {
    v6 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20.version) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[STREAM HAND] Starting Input Stream", &v20, 2u);
    }

    inStream2 = [(UAStreamHandler *)self inStream];
    v8 = +[NSRunLoop mainRunLoop];
    [inStream2 scheduleInRunLoop:v8 forMode:NSDefaultRunLoopMode];

    v9 = [(UAStreamHandler *)self inStream:0];
    CFReadStreamSetClient(v9, 0x1BuLL, sub_100033140, &v20);

    inStream3 = [(UAStreamHandler *)self inStream];
    [inStream3 open];
  }

  outStream = [(UAStreamHandler *)self outStream];
  streamStatus2 = [outStream streamStatus];

  if (!streamStatus2)
  {
    v13 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20.version) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[STREAM HAND] Starting Output Stream", &v20, 2u);
    }

    outStream2 = [(UAStreamHandler *)self outStream];
    v15 = +[NSRunLoop mainRunLoop];
    [outStream2 scheduleInRunLoop:v15 forMode:NSDefaultRunLoopMode];

    outStream3 = [(UAStreamHandler *)self outStream];
    [outStream3 setDelegate:self];

    outStream4 = [(UAStreamHandler *)self outStream];
    [outStream4 open];
  }

  v18 = [[UATimedPowerAssertions alloc] initWithName:@"clipboardReadStream" delta:&_dispatch_main_q queue:60.0];
  [(UAStreamHandler *)self setAssertionForRead:v18];

  v19 = [[UATimedPowerAssertions alloc] initWithName:@"clipboardWriteStream" delta:&_dispatch_main_q queue:60.0];
  [(UAStreamHandler *)self setAssertionForWrite:v19];
}

- (void)stop
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[STREAM HAND] Call to stop streams", v6, 2u);
  }

  assertionForRead = [(UAStreamHandler *)self assertionForRead];
  [assertionForRead releaseAssertion];

  [(UAStreamHandler *)self setAssertionForWrite:0];
  assertionForWrite = [(UAStreamHandler *)self assertionForWrite];
  [assertionForWrite releaseAssertion];

  [(UAStreamHandler *)self setAssertionForWrite:0];
  [(UAStreamHandler *)self setShouldStop:1];
  [(UAStreamHandler *)self tryStop];
}

- (void)tryStop
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[STREAM HAND] Trying to stop streams", v8, 2u);
  }

  if ([(UAStreamHandler *)self shouldStop])
  {
    outputStreamData = [(UAStreamHandler *)self outputStreamData];
    if ([outputStreamData length])
    {
LABEL_7:

      return;
    }

    outMessage = [(UAStreamHandler *)self outMessage];
    if (outMessage)
    {

      goto LABEL_7;
    }

    messageQueue = [(UAStreamHandler *)self messageQueue];
    v7 = [messageQueue count];

    if (!v7)
    {
      [(UAStreamHandler *)self _stop];
    }
  }
}

- (void)_stop
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[STREAM HAND] Stoping streams", v14, 2u);
  }

  inStream = [(UAStreamHandler *)self inStream];

  if (inStream)
  {
    inStream2 = [(UAStreamHandler *)self inStream];
    [inStream2 close];

    inStream3 = [(UAStreamHandler *)self inStream];
    [inStream3 setDelegate:0];

    [(UAStreamHandler *)self setInStream:0];
  }

  outStream = [(UAStreamHandler *)self outStream];

  if (outStream)
  {
    outStream2 = [(UAStreamHandler *)self outStream];
    [outStream2 close];

    outStream3 = [(UAStreamHandler *)self outStream];
    [outStream3 setDelegate:0];

    [(UAStreamHandler *)self setOutStream:0];
  }

  delegate = [(UAStreamHandler *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegate2 = [(UAStreamHandler *)self delegate];
    streamError = [(UAStreamHandler *)self streamError];
    [delegate2 streamsDidClose:self withError:streamError];
  }
}

- (BOOL)writeRawData:(id)data
{
  dataCopy = data;
  v5 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    v13 = [dataCopy length];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[STREAM HAND] Write raw data of length: %ld", &v12, 0xCu);
  }

  outputMode = [(UAStreamHandler *)self outputMode];
  if (outputMode == 1)
  {
    v10 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[STREAM HAND] Cannot write raw data, in message mode", &v12, 2u);
    }
  }

  else
  {
    if (![(UAStreamHandler *)self outputMode])
    {
      [(UAStreamHandler *)self setOutputMode:2];
    }

    outputStreamData = [(UAStreamHandler *)self outputStreamData];
    [outputStreamData appendData:dataCopy];

    outStream = [(UAStreamHandler *)self outStream];
    hasSpaceAvailable = [outStream hasSpaceAvailable];

    if (hasSpaceAvailable)
    {
      [(UAStreamHandler *)self tryWriteRawData];
    }
  }

  return outputMode != 1;
}

- (BOOL)writeMessage:(id)message tag:(int64_t)tag
{
  messageCopy = message;
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    tagCopy = tag;
    v21 = 2048;
    v22 = [messageCopy length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[STREAM HAND] Write message tagged %ld of length: %ld", buf, 0x16u);
  }

  outputMode = [(UAStreamHandler *)self outputMode];
  if (outputMode != 2)
  {
    if (![(UAStreamHandler *)self outputMode])
    {
      [(UAStreamHandler *)self setOutputMode:1];
    }

    v18 = 67;
    v9 = [[NSMutableData alloc] initWithBytes:&v18 length:1];
    v17 = 1;
    [v9 appendBytes:&v17 length:1];
    *buf = bswap32(tag);
    [v9 appendBytes:buf length:4];
    v16 = bswap32([messageCopy length]);
    [v9 appendBytes:&v16 length:4];
    [v9 appendData:messageCopy];
    messageQueue = [(UAStreamHandler *)self messageQueue];
    objc_sync_enter(messageQueue);
    messageQueue2 = [(UAStreamHandler *)self messageQueue];
    [messageQueue2 addObject:v9];

    objc_sync_exit(messageQueue);
    outStream = [(UAStreamHandler *)self outStream];
    if ([outStream hasSpaceAvailable])
    {
    }

    else
    {
      shouldTryWrite = [(UAStreamHandler *)self shouldTryWrite];

      if ((shouldTryWrite & 1) == 0)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    [(UAStreamHandler *)self tryWriteMessage];
    goto LABEL_13;
  }

  v13 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[STREAM HAND] Cannot write message, in raw data mode", buf, 2u);
  }

LABEL_14:
  return outputMode != 2;
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  selfCopy = self;
  v8 = selfCopy;
  if (event <= 3)
  {
    if (event == 1)
    {
      [(UAStreamHandler *)selfCopy handleOpenCompleted];
    }

    else if (event == 2)
    {
      [(UAStreamHandler *)selfCopy handleBytesAvailable];
    }
  }

  else if (event == 4)
  {
    if ([(UAStreamHandler *)selfCopy handleSpaceAvailable])
    {
      v9 = v8;
      v10 = 0;
    }

    else
    {
      v14 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[STREAM HAND] Did not write anything, setting flag", &v15, 2u);
      }

      v9 = v8;
      v10 = 1;
    }

    [(UAStreamHandler *)v9 setShouldTryWrite:v10];
  }

  else
  {
    if (event == 8)
    {
      streamError = [streamCopy streamError];
      [(UAStreamHandler *)v8 setStreamError:streamError];

      v12 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        streamError2 = [(UAStreamHandler *)v8 streamError];
        v15 = 138543618;
        v16 = streamCopy;
        v17 = 2114;
        v18 = streamError2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[STREAM HAND] Received error on stream %{public}@: %{public}@", &v15, 0x16u);
      }
    }

    else if (event != 16)
    {
      goto LABEL_20;
    }

    [(UAStreamHandler *)v8 _stop];
  }

LABEL_20:
}

- (void)handleOpenCompleted
{
  inStream = [(UAStreamHandler *)self inStream];
  if ([inStream streamStatus] <= 1)
  {
  }

  else
  {
    outStream = [(UAStreamHandler *)self outStream];
    streamStatus = [outStream streamStatus];

    if (streamStatus >= 2)
    {
      v5 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[STREAM HAND] Both Streams opened", buf, 2u);
      }
    }
  }
}

- (void)handleBytesAvailable
{
  if (![(UAStreamHandler *)self inputState])
  {
    v3 = 10 - [(UAStreamHandler *)self bytesRead];
    goto LABEL_5;
  }

  if ([(UAStreamHandler *)self inputState]!= 2)
  {
    if ([(UAStreamHandler *)self inputState]!= 1)
    {
      return;
    }

    inMessageLength = [(UAStreamHandler *)self inMessageLength];
    bytesRead = [(UAStreamHandler *)self bytesRead];
    v6 = inMessageLength - bytesRead;
    v3 = 0x10000;
    if ((inMessageLength - bytesRead) >= 0x10000)
    {
      v6 = 0x10000;
    }

    if (inMessageLength == bytesRead)
    {
      goto LABEL_11;
    }

    v3 = v6;
LABEL_5:
    if (v3 < 1)
    {
      return;
    }

    goto LABEL_11;
  }

  v3 = 0x10000;
LABEL_11:
  v7 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  inStream = [(UAStreamHandler *)self inStream];
  v9 = [inStream read:v7 maxLength:v3];

  if (v9 >= 1)
  {
    inData = [(UAStreamHandler *)self inData];
    [inData appendBytes:v7 length:v9];

    [(UAStreamHandler *)self setBytesRead:[(UAStreamHandler *)self bytesRead]+ v9];
    [(UAStreamHandler *)self setTotalBytesReceived:[(UAStreamHandler *)self totalBytesReceived]+ v9];
    if ([(UAStreamHandler *)self inputState])
    {
      if ([(UAStreamHandler *)self inputState]== 1)
      {
        bytesRead2 = [(UAStreamHandler *)self bytesRead];
        if (bytesRead2 == [(UAStreamHandler *)self inMessageLength])
        {
          [(UAStreamHandler *)self handleMessageRead];
        }

        else if (self->_bytesRead > self->_inMessageLength)
        {
          [(UAStreamHandler *)self _stop];
        }
      }
    }

    else if ([(UAStreamHandler *)self bytesRead]== 10)
    {
      inData2 = [(UAStreamHandler *)self inData];
      v13 = [(UAStreamHandler *)self dataHasMessage:inData2];

      if (v13)
      {
        [(UAStreamHandler *)self processHeader];
      }

      else
      {
        [(UAStreamHandler *)self setInputState:2];
      }
    }

    if ([(UAStreamHandler *)self inputState]== 2)
    {
      inData3 = [(UAStreamHandler *)self inData];
      v15 = [inData3 copy];

      inData4 = [(UAStreamHandler *)self inData];
      [inData4 setLength:0];

      delegate = [(UAStreamHandler *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        delegate2 = [(UAStreamHandler *)self delegate];
        [delegate2 streams:self didReadRawData:v15];
      }
    }

    assertionForRead = [(UAStreamHandler *)self assertionForRead];
    [assertionForRead updateTimeUntilAssertionRelease:60.0];
  }
}

- (void)processHeader
{
  inData = [(UAStreamHandler *)self inData];
  -[UAStreamHandler setInMessageTag:](self, "setInMessageTag:", bswap32(*([inData bytes] + 2)));

  inData2 = [(UAStreamHandler *)self inData];
  -[UAStreamHandler setInMessageLength:](self, "setInMessageLength:", bswap32(*([inData2 bytes] + 6)));

  [(UAStreamHandler *)self setBytesRead:[(UAStreamHandler *)self bytesRead]- 10];
  [(UAStreamHandler *)self setInputState:1];
  inData3 = [(UAStreamHandler *)self inData];
  [inData3 setLength:0];
}

- (BOOL)dataHasMessage:(id)message
{
  messageCopy = message;
  v4 = *[messageCopy bytes];
  bytes = [messageCopy bytes];

  return v4 == 67 && bytes[1] == 1;
}

- (void)handleMessageRead
{
  inData = [(UAStreamHandler *)self inData];
  v4 = [inData copy];
  [(UAStreamHandler *)self setInMessage:v4];

  delegate = [(UAStreamHandler *)self delegate];
  inMessage = [(UAStreamHandler *)self inMessage];
  [delegate streams:self didReadMessage:inMessage withTag:{-[UAStreamHandler inMessageTag](self, "inMessageTag")}];

  [(UAStreamHandler *)self setBytesRead:0];
  [(UAStreamHandler *)self setInMessageTag:0];
  [(UAStreamHandler *)self setInMessageLength:0];
  inData2 = [(UAStreamHandler *)self inData];
  [inData2 setLength:0];

  [(UAStreamHandler *)self setInputState:0];
}

- (int64_t)handleSpaceAvailable
{
  if ([(UAStreamHandler *)self outputMode]== 1)
  {

    return [(UAStreamHandler *)self tryWriteMessage];
  }

  else if ([(UAStreamHandler *)self outputMode]== 2)
  {

    return [(UAStreamHandler *)self tryWriteRawData];
  }

  else
  {
    return 0;
  }
}

- (int64_t)tryWriteRawData
{
  outputStreamData = [(UAStreamHandler *)self outputStreamData];
  v4 = [outputStreamData length];

  if (v4)
  {
    outStream = [(UAStreamHandler *)self outStream];
    outputStreamData2 = [(UAStreamHandler *)self outputStreamData];
    bytes = [outputStreamData2 bytes];
    outputStreamData3 = [(UAStreamHandler *)self outputStreamData];
    v9 = [outStream write:bytes maxLength:{objc_msgSend(outputStreamData3, "length")}];

    v10 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v20 = 134217984;
      v21 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "[STREAM HAND] Wrote %ld raw bytes to output stream", &v20, 0xCu);
    }

    if (v9 >= 1)
    {
      [(UAStreamHandler *)self setTotalBytesSent:[(UAStreamHandler *)self totalBytesSent]+ v9];
      outputStreamData4 = [(UAStreamHandler *)self outputStreamData];
      v12 = [(UAStreamHandler *)self trimFirstBytes:v9 ofData:outputStreamData4];
      [(UAStreamHandler *)self setOutputStreamData:v12];

      outputStreamData5 = [(UAStreamHandler *)self outputStreamData];
      v14 = [outputStreamData5 length];

      if (!v14)
      {
        delegate = [(UAStreamHandler *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          delegate2 = [(UAStreamHandler *)self delegate];
          [delegate2 streamsDidWriteRawDataBuffer:self];
        }
      }

      assertionForWrite = [(UAStreamHandler *)self assertionForWrite];
      [assertionForWrite updateTimeUntilAssertionRelease:60.0];
    }
  }

  else
  {
    v9 = 0;
  }

  [(UAStreamHandler *)self tryStop];
  return v9;
}

- (int64_t)tryWriteMessage
{
  outStream = [(UAStreamHandler *)self outStream];
  objc_sync_enter(outStream);
  outMessage = [(UAStreamHandler *)self outMessage];
  if (outMessage)
  {
  }

  else
  {
    messageQueue = [(UAStreamHandler *)self messageQueue];
    v6 = [messageQueue count];

    if (!v6)
    {
      goto LABEL_17;
    }
  }

  outMessage2 = [(UAStreamHandler *)self outMessage];

  if (!outMessage2)
  {
    messageQueue2 = [(UAStreamHandler *)self messageQueue];
    objc_sync_enter(messageQueue2);
    messageQueue3 = [(UAStreamHandler *)self messageQueue];
    firstObject = [messageQueue3 firstObject];
    [(UAStreamHandler *)self setOutMessage:firstObject];

    messageQueue4 = [(UAStreamHandler *)self messageQueue];
    [messageQueue4 removeObjectAtIndex:0];

    outMessage3 = [(UAStreamHandler *)self outMessage];
    -[UAStreamHandler setOutMessageTag:](self, "setOutMessageTag:", bswap32(*([outMessage3 bytes] + 2)));

    [(UAStreamHandler *)self setByteIndex:0];
    objc_sync_exit(messageQueue2);
  }

  outMessage4 = [(UAStreamHandler *)self outMessage];
  bytes = [outMessage4 bytes];

  byteIndex = [(UAStreamHandler *)self byteIndex];
  outMessage5 = [(UAStreamHandler *)self outMessage];
  v17 = [outMessage5 length];
  byteIndex2 = [(UAStreamHandler *)self byteIndex];

  outStream2 = [(UAStreamHandler *)self outStream];
  v20 = outStream2;
  if (&v17[-byteIndex2] >= 0x10000)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = &v17[-byteIndex2];
  }

  v22 = [outStream2 write:&bytes[byteIndex] maxLength:v21];

  if (v22 < 1)
  {
    if (v22 < 0)
    {
      v33 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        outStream3 = [(UAStreamHandler *)self outStream];
        streamError = [outStream3 streamError];
        v37 = 138543362;
        v38 = streamError;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "[STREAM HAND] Error writing message: %{public}@", &v37, 0xCu);
      }

      goto LABEL_24;
    }

    v29 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[STREAM HAND] Should not be writting 0 data to stream", &v37, 2u);
    }

LABEL_17:
    v22 = 0;
    goto LABEL_25;
  }

  [(UAStreamHandler *)self setByteIndex:[(UAStreamHandler *)self byteIndex]+ v22];
  [(UAStreamHandler *)self setTotalBytesSent:[(UAStreamHandler *)self totalBytesSent]+ v22];
  byteIndex3 = [(UAStreamHandler *)self byteIndex];
  outMessage6 = [(UAStreamHandler *)self outMessage];
  v25 = [outMessage6 length];

  if (byteIndex3 != v25)
  {
    byteIndex4 = [(UAStreamHandler *)self byteIndex];
    outMessage7 = [(UAStreamHandler *)self outMessage];
    v32 = [outMessage7 length];

    if (byteIndex4 <= v32)
    {
      goto LABEL_25;
    }

    v33 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v37) = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "[STREAM HAND] We should not be writting more data than we have!", &v37, 2u);
    }

LABEL_24:

    goto LABEL_25;
  }

  [(UAStreamHandler *)self setOutMessage:0];
  [(UAStreamHandler *)self setByteIndex:0];
  delegate = [(UAStreamHandler *)self delegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    delegate2 = [(UAStreamHandler *)self delegate];
    [delegate2 streams:self didWriteMessageWithTag:{-[UAStreamHandler outMessageTag](self, "outMessageTag")}];
  }

LABEL_25:
  objc_sync_exit(outStream);

  [(UAStreamHandler *)self tryStop];
  return v22;
}

- (id)trimFirstBytes:(unint64_t)bytes ofData:(id)data
{
  dataCopy = data;
  v6 = [dataCopy subdataWithRange:{bytes, objc_msgSend(dataCopy, "length") - bytes}];

  v7 = [NSMutableData dataWithData:v6];

  return v7;
}

- (UAStreamHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end