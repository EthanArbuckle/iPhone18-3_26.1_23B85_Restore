@interface UAStreamHandler
- (BOOL)dataHasMessage:(id)a3;
- (BOOL)writeMessage:(id)a3 tag:(int64_t)a4;
- (BOOL)writeRawData:(id)a3;
- (UAStreamHandler)initWithInputStream:(id)a3 outputStream:(id)a4 delegate:(id)a5;
- (UAStreamHandlerDelegate)delegate;
- (id)trimFirstBytes:(unint64_t)a3 ofData:(id)a4;
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
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)tryStop;
@end

@implementation UAStreamHandler

- (UAStreamHandler)initWithInputStream:(id)a3 outputStream:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = UAStreamHandler;
  v11 = [(UAStreamHandler *)&v17 init];
  v12 = v11;
  if (v11)
  {
    [(UAStreamHandler *)v11 setDelegate:v10];
    [(UAStreamHandler *)v12 setInStream:v8];
    [(UAStreamHandler *)v12 setOutStream:v9];
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
  v3 = [(UAStreamHandler *)self messageQueue];
  v4 = [v3 count];

  v5 = [(UAStreamHandler *)self outMessage];

  if (v5)
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

  v4 = [(UAStreamHandler *)self inStream];
  v5 = [v4 streamStatus];

  if (!v5)
  {
    v6 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20.version) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[STREAM HAND] Starting Input Stream", &v20, 2u);
    }

    v7 = [(UAStreamHandler *)self inStream];
    v8 = +[NSRunLoop mainRunLoop];
    [v7 scheduleInRunLoop:v8 forMode:NSDefaultRunLoopMode];

    v9 = [(UAStreamHandler *)self inStream:0];
    CFReadStreamSetClient(v9, 0x1BuLL, sub_100033140, &v20);

    v10 = [(UAStreamHandler *)self inStream];
    [v10 open];
  }

  v11 = [(UAStreamHandler *)self outStream];
  v12 = [v11 streamStatus];

  if (!v12)
  {
    v13 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20.version) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[STREAM HAND] Starting Output Stream", &v20, 2u);
    }

    v14 = [(UAStreamHandler *)self outStream];
    v15 = +[NSRunLoop mainRunLoop];
    [v14 scheduleInRunLoop:v15 forMode:NSDefaultRunLoopMode];

    v16 = [(UAStreamHandler *)self outStream];
    [v16 setDelegate:self];

    v17 = [(UAStreamHandler *)self outStream];
    [v17 open];
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

  v4 = [(UAStreamHandler *)self assertionForRead];
  [v4 releaseAssertion];

  [(UAStreamHandler *)self setAssertionForWrite:0];
  v5 = [(UAStreamHandler *)self assertionForWrite];
  [v5 releaseAssertion];

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
    v4 = [(UAStreamHandler *)self outputStreamData];
    if ([v4 length])
    {
LABEL_7:

      return;
    }

    v5 = [(UAStreamHandler *)self outMessage];
    if (v5)
    {

      goto LABEL_7;
    }

    v6 = [(UAStreamHandler *)self messageQueue];
    v7 = [v6 count];

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

  v4 = [(UAStreamHandler *)self inStream];

  if (v4)
  {
    v5 = [(UAStreamHandler *)self inStream];
    [v5 close];

    v6 = [(UAStreamHandler *)self inStream];
    [v6 setDelegate:0];

    [(UAStreamHandler *)self setInStream:0];
  }

  v7 = [(UAStreamHandler *)self outStream];

  if (v7)
  {
    v8 = [(UAStreamHandler *)self outStream];
    [v8 close];

    v9 = [(UAStreamHandler *)self outStream];
    [v9 setDelegate:0];

    [(UAStreamHandler *)self setOutStream:0];
  }

  v10 = [(UAStreamHandler *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(UAStreamHandler *)self delegate];
    v13 = [(UAStreamHandler *)self streamError];
    [v12 streamsDidClose:self withError:v13];
  }
}

- (BOOL)writeRawData:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134217984;
    v13 = [v4 length];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "[STREAM HAND] Write raw data of length: %ld", &v12, 0xCu);
  }

  v6 = [(UAStreamHandler *)self outputMode];
  if (v6 == 1)
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

    v7 = [(UAStreamHandler *)self outputStreamData];
    [v7 appendData:v4];

    v8 = [(UAStreamHandler *)self outStream];
    v9 = [v8 hasSpaceAvailable];

    if (v9)
    {
      [(UAStreamHandler *)self tryWriteRawData];
    }
  }

  return v6 != 1;
}

- (BOOL)writeMessage:(id)a3 tag:(int64_t)a4
{
  v6 = a3;
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    v20 = a4;
    v21 = 2048;
    v22 = [v6 length];
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[STREAM HAND] Write message tagged %ld of length: %ld", buf, 0x16u);
  }

  v8 = [(UAStreamHandler *)self outputMode];
  if (v8 != 2)
  {
    if (![(UAStreamHandler *)self outputMode])
    {
      [(UAStreamHandler *)self setOutputMode:1];
    }

    v18 = 67;
    v9 = [[NSMutableData alloc] initWithBytes:&v18 length:1];
    v17 = 1;
    [v9 appendBytes:&v17 length:1];
    *buf = bswap32(a4);
    [v9 appendBytes:buf length:4];
    v16 = bswap32([v6 length]);
    [v9 appendBytes:&v16 length:4];
    [v9 appendData:v6];
    v10 = [(UAStreamHandler *)self messageQueue];
    objc_sync_enter(v10);
    v11 = [(UAStreamHandler *)self messageQueue];
    [v11 addObject:v9];

    objc_sync_exit(v10);
    v12 = [(UAStreamHandler *)self outStream];
    if ([v12 hasSpaceAvailable])
    {
    }

    else
    {
      v14 = [(UAStreamHandler *)self shouldTryWrite];

      if ((v14 & 1) == 0)
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
  return v8 != 2;
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = v7;
  if (a4 <= 3)
  {
    if (a4 == 1)
    {
      [(UAStreamHandler *)v7 handleOpenCompleted];
    }

    else if (a4 == 2)
    {
      [(UAStreamHandler *)v7 handleBytesAvailable];
    }
  }

  else if (a4 == 4)
  {
    if ([(UAStreamHandler *)v7 handleSpaceAvailable])
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
    if (a4 == 8)
    {
      v11 = [v6 streamError];
      [(UAStreamHandler *)v8 setStreamError:v11];

      v12 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [(UAStreamHandler *)v8 streamError];
        v15 = 138543618;
        v16 = v6;
        v17 = 2114;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[STREAM HAND] Received error on stream %{public}@: %{public}@", &v15, 0x16u);
      }
    }

    else if (a4 != 16)
    {
      goto LABEL_20;
    }

    [(UAStreamHandler *)v8 _stop];
  }

LABEL_20:
}

- (void)handleOpenCompleted
{
  v6 = [(UAStreamHandler *)self inStream];
  if ([v6 streamStatus] <= 1)
  {
  }

  else
  {
    v3 = [(UAStreamHandler *)self outStream];
    v4 = [v3 streamStatus];

    if (v4 >= 2)
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

    v4 = [(UAStreamHandler *)self inMessageLength];
    v5 = [(UAStreamHandler *)self bytesRead];
    v6 = v4 - v5;
    v3 = 0x10000;
    if ((v4 - v5) >= 0x10000)
    {
      v6 = 0x10000;
    }

    if (v4 == v5)
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
  v8 = [(UAStreamHandler *)self inStream];
  v9 = [v8 read:v7 maxLength:v3];

  if (v9 >= 1)
  {
    v10 = [(UAStreamHandler *)self inData];
    [v10 appendBytes:v7 length:v9];

    [(UAStreamHandler *)self setBytesRead:[(UAStreamHandler *)self bytesRead]+ v9];
    [(UAStreamHandler *)self setTotalBytesReceived:[(UAStreamHandler *)self totalBytesReceived]+ v9];
    if ([(UAStreamHandler *)self inputState])
    {
      if ([(UAStreamHandler *)self inputState]== 1)
      {
        v11 = [(UAStreamHandler *)self bytesRead];
        if (v11 == [(UAStreamHandler *)self inMessageLength])
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
      v12 = [(UAStreamHandler *)self inData];
      v13 = [(UAStreamHandler *)self dataHasMessage:v12];

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
      v14 = [(UAStreamHandler *)self inData];
      v15 = [v14 copy];

      v16 = [(UAStreamHandler *)self inData];
      [v16 setLength:0];

      v17 = [(UAStreamHandler *)self delegate];
      v18 = objc_opt_respondsToSelector();

      if (v18)
      {
        v19 = [(UAStreamHandler *)self delegate];
        [v19 streams:self didReadRawData:v15];
      }
    }

    v20 = [(UAStreamHandler *)self assertionForRead];
    [v20 updateTimeUntilAssertionRelease:60.0];
  }
}

- (void)processHeader
{
  v3 = [(UAStreamHandler *)self inData];
  -[UAStreamHandler setInMessageTag:](self, "setInMessageTag:", bswap32(*([v3 bytes] + 2)));

  v4 = [(UAStreamHandler *)self inData];
  -[UAStreamHandler setInMessageLength:](self, "setInMessageLength:", bswap32(*([v4 bytes] + 6)));

  [(UAStreamHandler *)self setBytesRead:[(UAStreamHandler *)self bytesRead]- 10];
  [(UAStreamHandler *)self setInputState:1];
  v5 = [(UAStreamHandler *)self inData];
  [v5 setLength:0];
}

- (BOOL)dataHasMessage:(id)a3
{
  v3 = a3;
  v4 = *[v3 bytes];
  v5 = [v3 bytes];

  return v4 == 67 && v5[1] == 1;
}

- (void)handleMessageRead
{
  v3 = [(UAStreamHandler *)self inData];
  v4 = [v3 copy];
  [(UAStreamHandler *)self setInMessage:v4];

  v5 = [(UAStreamHandler *)self delegate];
  v6 = [(UAStreamHandler *)self inMessage];
  [v5 streams:self didReadMessage:v6 withTag:{-[UAStreamHandler inMessageTag](self, "inMessageTag")}];

  [(UAStreamHandler *)self setBytesRead:0];
  [(UAStreamHandler *)self setInMessageTag:0];
  [(UAStreamHandler *)self setInMessageLength:0];
  v7 = [(UAStreamHandler *)self inData];
  [v7 setLength:0];

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
  v3 = [(UAStreamHandler *)self outputStreamData];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(UAStreamHandler *)self outStream];
    v6 = [(UAStreamHandler *)self outputStreamData];
    v7 = [v6 bytes];
    v8 = [(UAStreamHandler *)self outputStreamData];
    v9 = [v5 write:v7 maxLength:{objc_msgSend(v8, "length")}];

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
      v11 = [(UAStreamHandler *)self outputStreamData];
      v12 = [(UAStreamHandler *)self trimFirstBytes:v9 ofData:v11];
      [(UAStreamHandler *)self setOutputStreamData:v12];

      v13 = [(UAStreamHandler *)self outputStreamData];
      v14 = [v13 length];

      if (!v14)
      {
        v15 = [(UAStreamHandler *)self delegate];
        v16 = objc_opt_respondsToSelector();

        if (v16)
        {
          v17 = [(UAStreamHandler *)self delegate];
          [v17 streamsDidWriteRawDataBuffer:self];
        }
      }

      v18 = [(UAStreamHandler *)self assertionForWrite];
      [v18 updateTimeUntilAssertionRelease:60.0];
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
  v3 = [(UAStreamHandler *)self outStream];
  objc_sync_enter(v3);
  v4 = [(UAStreamHandler *)self outMessage];
  if (v4)
  {
  }

  else
  {
    v5 = [(UAStreamHandler *)self messageQueue];
    v6 = [v5 count];

    if (!v6)
    {
      goto LABEL_17;
    }
  }

  v7 = [(UAStreamHandler *)self outMessage];

  if (!v7)
  {
    v8 = [(UAStreamHandler *)self messageQueue];
    objc_sync_enter(v8);
    v9 = [(UAStreamHandler *)self messageQueue];
    v10 = [v9 firstObject];
    [(UAStreamHandler *)self setOutMessage:v10];

    v11 = [(UAStreamHandler *)self messageQueue];
    [v11 removeObjectAtIndex:0];

    v12 = [(UAStreamHandler *)self outMessage];
    -[UAStreamHandler setOutMessageTag:](self, "setOutMessageTag:", bswap32(*([v12 bytes] + 2)));

    [(UAStreamHandler *)self setByteIndex:0];
    objc_sync_exit(v8);
  }

  v13 = [(UAStreamHandler *)self outMessage];
  v14 = [v13 bytes];

  v15 = [(UAStreamHandler *)self byteIndex];
  v16 = [(UAStreamHandler *)self outMessage];
  v17 = [v16 length];
  v18 = [(UAStreamHandler *)self byteIndex];

  v19 = [(UAStreamHandler *)self outStream];
  v20 = v19;
  if (&v17[-v18] >= 0x10000)
  {
    v21 = 0x10000;
  }

  else
  {
    v21 = &v17[-v18];
  }

  v22 = [v19 write:&v14[v15] maxLength:v21];

  if (v22 < 1)
  {
    if (v22 < 0)
    {
      v33 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [(UAStreamHandler *)self outStream];
        v35 = [v34 streamError];
        v37 = 138543362;
        v38 = v35;
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
  v23 = [(UAStreamHandler *)self byteIndex];
  v24 = [(UAStreamHandler *)self outMessage];
  v25 = [v24 length];

  if (v23 != v25)
  {
    v30 = [(UAStreamHandler *)self byteIndex];
    v31 = [(UAStreamHandler *)self outMessage];
    v32 = [v31 length];

    if (v30 <= v32)
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
  v26 = [(UAStreamHandler *)self delegate];
  v27 = objc_opt_respondsToSelector();

  if (v27)
  {
    v28 = [(UAStreamHandler *)self delegate];
    [v28 streams:self didWriteMessageWithTag:{-[UAStreamHandler outMessageTag](self, "outMessageTag")}];
  }

LABEL_25:
  objc_sync_exit(v3);

  [(UAStreamHandler *)self tryStop];
  return v22;
}

- (id)trimFirstBytes:(unint64_t)a3 ofData:(id)a4
{
  v5 = a4;
  v6 = [v5 subdataWithRange:{a3, objc_msgSend(v5, "length") - a3}];

  v7 = [NSMutableData dataWithData:v6];

  return v7;
}

- (UAStreamHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end