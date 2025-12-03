@interface UASharedPasteboardOutputStreamManager
- (UASharedPasteboardOutputStreamManager)initWithOutputStream:(id)stream inputStream:(id)inputStream pasteboard:(id)pasteboard;
- (id)headerForData:(id)data;
- (void)sendTypes:(id)types completionHandler:(id)handler;
- (void)shutdownStream;
- (void)shutdownTimerFired:(id)fired;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation UASharedPasteboardOutputStreamManager

- (UASharedPasteboardOutputStreamManager)initWithOutputStream:(id)stream inputStream:(id)inputStream pasteboard:(id)pasteboard
{
  streamCopy = stream;
  inputStreamCopy = inputStream;
  pasteboardCopy = pasteboard;
  v19.receiver = self;
  v19.super_class = UASharedPasteboardOutputStreamManager;
  v11 = [(UASharedPasteboardOutputStreamManager *)&v19 init];
  v12 = v11;
  if (v11)
  {
    [(UASharedPasteboardOutputStreamManager *)v11 setStream:streamCopy];
    [(UASharedPasteboardOutputStreamManager *)v12 setInStream:inputStreamCopy];
    [(UASharedPasteboardOutputStreamManager *)v12 setPbwrapper:pasteboardCopy];
    pbwrapper = [(UASharedPasteboardOutputStreamManager *)v12 pbwrapper];
    pbinfo = [pbwrapper pbinfo];
    dataFile = [pbinfo dataFile];
    [(UASharedPasteboardOutputStreamManager *)v12 setDataFile:dataFile];

    pbwrapper2 = [(UASharedPasteboardOutputStreamManager *)v12 pbwrapper];
    pbinfo2 = [pbwrapper2 pbinfo];
    [pbinfo2 setDataFile:0];
  }

  return v12;
}

- (void)sendTypes:(id)types completionHandler:(id)handler
{
  typesCopy = types;
  handlerCopy = handler;
  [(UASharedPasteboardOutputStreamManager *)self setDataSent:0];
  [(UASharedPasteboardOutputStreamManager *)self setTypesToSend:typesCopy];
  [(UASharedPasteboardOutputStreamManager *)self setSendErrorHandler:handlerCopy];

  pbwrapper = [(UASharedPasteboardOutputStreamManager *)self pbwrapper];
  v9 = [NSKeyedArchiver archivedDataWithRootObject:pbwrapper requiringSecureCoding:1 error:0];

  v10 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    pbwrapper2 = [(UASharedPasteboardOutputStreamManager *)self pbwrapper];
    v23 = 138412290;
    v24 = pbwrapper2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Sending pboard info: %@", &v23, 0xCu);
  }

  v12 = [(UASharedPasteboardOutputStreamManager *)self headerForData:v9];
  [(UASharedPasteboardOutputStreamManager *)self setCurrentSendData:v12];

  v13 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = @"All";
    if (typesCopy)
    {
      v14 = typesCopy;
    }

    v23 = 138412290;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[OUT STREAM] Starting to send types: %@", &v23, 0xCu);
  }

  stream = [(UASharedPasteboardOutputStreamManager *)self stream];
  [stream setDelegate:self];

  inStream = [(UASharedPasteboardOutputStreamManager *)self inStream];
  [inStream setDelegate:self];

  stream2 = [(UASharedPasteboardOutputStreamManager *)self stream];
  v18 = +[NSRunLoop mainRunLoop];
  [stream2 scheduleInRunLoop:v18 forMode:NSRunLoopCommonModes];

  stream3 = [(UASharedPasteboardOutputStreamManager *)self stream];
  [stream3 open];

  inStream2 = [(UASharedPasteboardOutputStreamManager *)self inStream];
  v21 = +[NSRunLoop mainRunLoop];
  [inStream2 scheduleInRunLoop:v21 forMode:NSRunLoopCommonModes];

  inStream3 = [(UASharedPasteboardOutputStreamManager *)self inStream];
  [inStream3 open];
}

- (id)headerForData:(id)data
{
  dataCopy = data;
  v4 = objc_alloc_init(NSMutableData);
  v6 = [dataCopy length];
  [v4 appendBytes:"===" length:3];
  [v4 appendBytes:&v6 length:4];
  [v4 appendBytes:"===" length:3];
  [v4 appendData:dataCopy];

  [v4 appendBytes:"===" length:3];

  return v4;
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  stream = [(UASharedPasteboardOutputStreamManager *)self stream];
  v8 = [streamCopy isEqual:stream];

  if (v8)
  {
    if (event == 8)
    {
      v39 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v47 = 8;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "[OUT STREAM] Unexpected event code: %lu", buf, 0xCu);
      }

      [(UASharedPasteboardOutputStreamManager *)self shutdownStream];
      sendErrorHandler = [(UASharedPasteboardOutputStreamManager *)self sendErrorHandler];
      dataSent = [(UASharedPasteboardOutputStreamManager *)self dataSent];
      streamError = [NSError errorWithDomain:UAContinuityErrorDomain code:-127 userInfo:0];
LABEL_25:
      sendErrorHandler2 = streamError;
      sendErrorHandler[2](sendErrorHandler, dataSent, streamError);
LABEL_26:

LABEL_27:
      goto LABEL_28;
    }

    if (event == 4)
    {
      currentSendData = [(UASharedPasteboardOutputStreamManager *)self currentSendData];
      if (!currentSendData || (v10 = currentSendData, v11 = -[UASharedPasteboardOutputStreamManager byteIndex](self, "byteIndex"), -[UASharedPasteboardOutputStreamManager currentSendData](self, "currentSendData"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 length], v12, v10, v11 >= v13))
      {
        dataFile = [(UASharedPasteboardOutputStreamManager *)self dataFile];
        v15 = [dataFile readDataOfLength:0x10000];
        [(UASharedPasteboardOutputStreamManager *)self setCurrentSendData:v15];

        [(UASharedPasteboardOutputStreamManager *)self setByteIndex:0];
        currentSendData2 = [(UASharedPasteboardOutputStreamManager *)self currentSendData];
        v17 = [currentSendData2 length];

        if (!v17)
        {
          v42 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Done sending pasteboard, waiting for end of stream", buf, 2u);
          }

          v43 = [NSTimer timerWithTimeInterval:self target:"shutdownTimerFired:" selector:0 userInfo:0 repeats:30.0];
          [(UASharedPasteboardOutputStreamManager *)self setBackupTimer:v43];

          sendErrorHandler = +[NSRunLoop mainRunLoop];
          backupTimer = [(UASharedPasteboardOutputStreamManager *)self backupTimer];
          [sendErrorHandler addTimer:backupTimer forMode:NSRunLoopCommonModes];

          goto LABEL_27;
        }
      }

      currentSendData3 = [(UASharedPasteboardOutputStreamManager *)self currentSendData];
      v19 = [currentSendData3 length];

      if (v19)
      {
        currentSendData4 = [(UASharedPasteboardOutputStreamManager *)self currentSendData];
        bytes = [currentSendData4 bytes];

        byteIndex = [(UASharedPasteboardOutputStreamManager *)self byteIndex];
        currentSendData5 = [(UASharedPasteboardOutputStreamManager *)self currentSendData];
        v24 = [currentSendData5 length];

        byteIndex2 = [(UASharedPasteboardOutputStreamManager *)self byteIndex];
        if (v24 - byteIndex2 >= 0x10000)
        {
          v26 = 0x10000;
        }

        else
        {
          v26 = v24 - byteIndex2;
        }

        v27 = [streamCopy write:&bytes[byteIndex] maxLength:v26];
        if (v27 != -1)
        {
          v28 = v27;
          [(UASharedPasteboardOutputStreamManager *)self setDataSent:&v27[[(UASharedPasteboardOutputStreamManager *)self dataSent]]];
          [(UASharedPasteboardOutputStreamManager *)self setByteIndex:&v28[[(UASharedPasteboardOutputStreamManager *)self byteIndex]]];
          goto LABEL_28;
        }

        [(UASharedPasteboardOutputStreamManager *)self shutdownStream];
        sendErrorHandler = [(UASharedPasteboardOutputStreamManager *)self sendErrorHandler];
        dataSent = [(UASharedPasteboardOutputStreamManager *)self dataSent];
        streamError = [streamCopy streamError];
        goto LABEL_25;
      }
    }
  }

  else
  {
    inStream = [(UASharedPasteboardOutputStreamManager *)self inStream];
    v30 = [streamCopy isEqual:inStream];

    if (v30 && (event == 16 || event == 2))
    {
      v31 = [streamCopy read:v45 maxLength:10];
      if ((v31 & 0x8000000000000000) == 0)
      {
        v32 = v31;
        v33 = [NSString alloc];
        v34 = [NSData dataWithBytes:v45 length:v32];
        sendErrorHandler = [v33 initWithData:v34 encoding:4];

        v36 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = sendErrorHandler;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Got data back: %@", buf, 0xCu);
        }

        v37 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Stream End Encountered, shutting down", buf, 2u);
        }

        [(UASharedPasteboardOutputStreamManager *)self shutdownStream];
        sendErrorHandler2 = [(UASharedPasteboardOutputStreamManager *)self sendErrorHandler];
        sendErrorHandler2[2](sendErrorHandler2, [(UASharedPasteboardOutputStreamManager *)self dataSent], 0);
        goto LABEL_26;
      }
    }
  }

LABEL_28:
}

- (void)shutdownTimerFired:(id)fired
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Stream Timer Fired, shutting down", v6, 2u);
  }

  [(UASharedPasteboardOutputStreamManager *)self shutdownStream];
  sendErrorHandler = [(UASharedPasteboardOutputStreamManager *)self sendErrorHandler];
  sendErrorHandler[2](sendErrorHandler, [(UASharedPasteboardOutputStreamManager *)self dataSent], 0);
}

- (void)shutdownStream
{
  backupTimer = [(UASharedPasteboardOutputStreamManager *)self backupTimer];
  [backupTimer invalidate];

  stream = [(UASharedPasteboardOutputStreamManager *)self stream];
  [stream close];

  stream2 = [(UASharedPasteboardOutputStreamManager *)self stream];
  v6 = +[NSRunLoop mainRunLoop];
  [stream2 removeFromRunLoop:v6 forMode:NSRunLoopCommonModes];

  inStream = [(UASharedPasteboardOutputStreamManager *)self inStream];
  [inStream close];

  inStream2 = [(UASharedPasteboardOutputStreamManager *)self inStream];
  v8 = +[NSRunLoop mainRunLoop];
  [inStream2 removeFromRunLoop:v8 forMode:NSRunLoopCommonModes];
}

@end