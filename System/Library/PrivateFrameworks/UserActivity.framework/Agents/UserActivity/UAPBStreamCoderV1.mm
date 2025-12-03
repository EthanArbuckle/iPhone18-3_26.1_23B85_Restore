@interface UAPBStreamCoderV1
- (UAPBStreamCoderV1)initWithInputStream:(id)stream outputStream:(id)outputStream;
- (id)headerForData:(id)data;
- (id)trimFirstBytes:(unint64_t)bytes ofData:(id)data;
- (void)cancelReceive;
- (void)dealloc;
- (void)processReceivedData;
- (void)receivePasteboardToFile:(id)file withProgress:(id)progress infoReceivedHandler:(id)handler completionHandler:(id)completionHandler returnInfoEarly:(BOOL)early;
- (void)receivedDataBack:(id)back;
- (void)sendNextChunk;
- (void)sendPasteboard:(id)pasteboard withCompletion:(id)completion;
- (void)shutdownTimerFired:(id)fired;
- (void)streamDoneWithInfo:(id)info error:(id)error;
- (void)streams:(id)streams didReadRawData:(id)data;
- (void)streamsDidClose:(id)close withError:(id)error;
- (void)streamsDidWriteRawDataBuffer:(id)buffer;
@end

@implementation UAPBStreamCoderV1

- (UAPBStreamCoderV1)initWithInputStream:(id)stream outputStream:(id)outputStream
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  v11.receiver = self;
  v11.super_class = UAPBStreamCoderV1;
  v8 = [(UAPBStreamCoderV1 *)&v11 init];
  if (v8)
  {
    v9 = [[UAStreamHandler alloc] initWithInputStream:streamCopy outputStream:outputStreamCopy delegate:v8];
    [(UAPBStreamCoderV1 *)v8 setStreamHandler:v9];
  }

  return v8;
}

- (void)dealloc
{
  streamHandler = [(UAPBStreamCoderV1 *)self streamHandler];
  [streamHandler stop];

  v4.receiver = self;
  v4.super_class = UAPBStreamCoderV1;
  [(UAPBStreamCoderV1 *)&v4 dealloc];
}

- (void)streams:(id)streams didReadRawData:(id)data
{
  dataCopy = data;
  if ([(UAPBStreamCoderV1 *)self isSendMode])
  {
    [(UAPBStreamCoderV1 *)self receivedDataBack:dataCopy];
  }

  else
  {
    receivedData = [(UAPBStreamCoderV1 *)self receivedData];
    [receivedData appendData:dataCopy];

    -[UAPBStreamCoderV1 setBytesReceived:](self, "setBytesReceived:", [dataCopy length] + -[UAPBStreamCoderV1 bytesReceived](self, "bytesReceived"));
    -[UAPBStreamCoderV1 setTotalBytesReceived:](self, "setTotalBytesReceived:", [dataCopy length] + -[UAPBStreamCoderV1 totalBytesReceived](self, "totalBytesReceived"));
    [(UAPBStreamCoderV1 *)self processReceivedData];
  }
}

- (void)streamsDidWriteRawDataBuffer:(id)buffer
{
  if ([(UAPBStreamCoderV1 *)self isSendMode])
  {

    [(UAPBStreamCoderV1 *)self sendNextChunk];
  }
}

- (void)streamsDidClose:(id)close withError:(id)error
{
  errorCopy = error;
  isSendMode = [(UAPBStreamCoderV1 *)self isSendMode];
  if (errorCopy && (isSendMode & 1) == 0)
  {
    isSendMode = [(UAPBStreamCoderV1 *)self streamDoneWithInfo:0 error:errorCopy];
  }

  _objc_release_x1(isSendMode);
}

- (void)receivePasteboardToFile:(id)file withProgress:(id)progress infoReceivedHandler:(id)handler completionHandler:(id)completionHandler returnInfoEarly:(BOOL)early
{
  fileCopy = file;
  progressCopy = progress;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v15 = sub_100001A30(@"pasteboard-streams");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Starting to receive pasteboard", buf, 2u);
  }

  [(UAPBStreamCoderV1 *)self setProgress:progressCopy];
  objc_initWeak(buf, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000631B0;
  v20[3] = &unk_1000C5FF8;
  v16 = handlerCopy;
  v21 = v16;
  v17 = completionHandlerCopy;
  v22 = v17;
  objc_copyWeak(&v23, buf);
  [(UAPBStreamCoderV1 *)self setRecvHandler:v20];
  v18 = objc_alloc_init(NSMutableData);
  [(UAPBStreamCoderV1 *)self setReceivedData:v18];

  [(UAPBStreamCoderV1 *)self setFile:fileCopy];
  [(UAPBStreamCoderV1 *)self setState:0];
  [(UAPBStreamCoderV1 *)self setExpectedLength:7];
  streamHandler = [(UAPBStreamCoderV1 *)self streamHandler];
  [streamHandler start];

  [(UAPBStreamCoderV1 *)self setStreamStartTime:mach_absolute_time()];
  objc_destroyWeak(&v23);

  objc_destroyWeak(buf);
}

- (void)cancelReceive
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Input stream canceled", v5, 2u);
  }

  v4 = [NSError errorWithDomain:UAContinuityErrorDomain code:-125 userInfo:0];
  [(UAPBStreamCoderV1 *)self streamDoneWithInfo:0 error:v4];
}

- (void)streamDoneWithInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(UAPBStreamCoderV1 *)selfCopy state]!= 3)
  {
    v9 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = infoCopy;
      v16 = 2112;
      v17 = errorCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Done with input stream: %@, %@", &v14, 0x16u);
    }

    streamHandler = [(UAPBStreamCoderV1 *)selfCopy streamHandler];
    v11 = [@"PBDONE" dataUsingEncoding:4];
    [streamHandler writeRawData:v11];

    streamHandler2 = [(UAPBStreamCoderV1 *)selfCopy streamHandler];
    [streamHandler2 stop];

    recvHandler = [(UAPBStreamCoderV1 *)selfCopy recvHandler];
    (recvHandler)[2](recvHandler, infoCopy, errorCopy);

    [(UAPBStreamCoderV1 *)selfCopy setState:3];
  }

  objc_sync_exit(selfCopy);
}

- (void)processReceivedData
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    receivedData = [(UAPBStreamCoderV1 *)self receivedData];
    v71 = 134217984;
    v72 = [receivedData length];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[CODER_V1] Processing Received data with length: %ld", &v71, 0xCu);
  }

  receivedData2 = [(UAPBStreamCoderV1 *)self receivedData];
  v6 = [receivedData2 length];

  if (!v6)
  {
    return;
  }

  state = [(UAPBStreamCoderV1 *)self state];
  if (state != 2)
  {
    if (state != 1)
    {
      if (state)
      {
        return;
      }

      receivedData3 = [(UAPBStreamCoderV1 *)self receivedData];
      bytes = [receivedData3 bytes];

      if (*bytes == 61 && bytes[1] == 61 && bytes[2] == 61)
      {
        v10 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v71) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[CODER_V1] Receiving Header Info", &v71, 2u);
        }

        [(UAPBStreamCoderV1 *)self setExpectedLength:(*(bytes + 3) + 3)];
        [(UAPBStreamCoderV1 *)self setState:1];
        [(UAPBStreamCoderV1 *)self setBytesReceived:[(UAPBStreamCoderV1 *)self bytesReceived]- 7];
        [(UAPBStreamCoderV1 *)self setReceivedDelem:0];
        receivedData4 = [(UAPBStreamCoderV1 *)self receivedData];
        v12 = [(UAPBStreamCoderV1 *)self trimFirstBytes:7 ofData:receivedData4];
        [(UAPBStreamCoderV1 *)self setReceivedData:v12];
LABEL_34:

LABEL_57:
        return;
      }

      v45 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v71) = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "[CODER_V1] Error, malformed data received. Have not received message header.", &v71, 2u);
      }

      v46 = UAContinuityErrorDomain;
      v79 = NSLocalizedDescriptionKey;
      v80 = @"Invalid message header";
      v47 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      receivedData4 = [NSError errorWithDomain:v46 code:-122 userInfo:v47];

      selfCopy2 = self;
      v49 = 0;
      v50 = receivedData4;
LABEL_56:
      [(UAPBStreamCoderV1 *)selfCopy2 streamDoneWithInfo:v49 error:v50];
      goto LABEL_57;
    }

    v13 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v71) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[CODER_V1] Receiving Header", &v71, 2u);
    }

    receivedData5 = [(UAPBStreamCoderV1 *)self receivedData];
    bytes2 = [receivedData5 bytes];

    if (*bytes2 == 61 && bytes2[1] == 61 && bytes2[2] == 61)
    {
      v16 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v71) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Started receiving header", &v71, 2u);
      }

      receivedData6 = [(UAPBStreamCoderV1 *)self receivedData];
      v18 = [(UAPBStreamCoderV1 *)self trimFirstBytes:3 ofData:receivedData6];
      [(UAPBStreamCoderV1 *)self setReceivedData:v18];

      [(UAPBStreamCoderV1 *)self setReceivedDelem:1];
      [(UAPBStreamCoderV1 *)self setExpectedLength:[(UAPBStreamCoderV1 *)self expectedLength]- 3];
      [(UAPBStreamCoderV1 *)self setBytesReceived:[(UAPBStreamCoderV1 *)self bytesReceived]- 3];
    }

    else if (![(UAPBStreamCoderV1 *)self receivedDelem])
    {
      v31 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v71) = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "[CODER_V1] Error, malformed data received. Did not receive correct delimiter", &v71, 2u);
      }

      v32 = UAContinuityErrorDomain;
      v77 = NSLocalizedDescriptionKey;
      v78 = @"Invalid delimiter before pbinfo";
      v33 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
      v34 = [NSError errorWithDomain:v32 code:-122 userInfo:v33];

      [(UAPBStreamCoderV1 *)self streamDoneWithInfo:0 error:v34];
    }

    bytesReceived = [(UAPBStreamCoderV1 *)self bytesReceived];
    if (bytesReceived >= [(UAPBStreamCoderV1 *)self expectedLength])
    {
      receivedData7 = [(UAPBStreamCoderV1 *)self receivedData];
      receivedData4 = [receivedData7 subdataWithRange:{0, -[UAPBStreamCoderV1 expectedLength](self, "expectedLength")}];

      v12 = [[NSKeyedUnarchiver alloc] initForReadingFromData:receivedData4 error:0];
      v37 = [v12 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      [(UAPBStreamCoderV1 *)self setRecvRap:v37];

      [(UAPBStreamCoderV1 *)self setState:2];
      recvRap = [(UAPBStreamCoderV1 *)self recvRap];
      pbinfo = [recvRap pbinfo];
      -[UAPBStreamCoderV1 setExpectedLength:](self, "setExpectedLength:", [pbinfo dataSize] + 3);

      -[UAPBStreamCoderV1 setBytesReceived:](self, "setBytesReceived:", -[UAPBStreamCoderV1 bytesReceived](self, "bytesReceived") - [receivedData4 length]);
      [(UAPBStreamCoderV1 *)self setReceivedDelem:0];
      [v12 finishDecoding];
      v40 = [receivedData4 length];
      receivedData8 = [(UAPBStreamCoderV1 *)self receivedData];
      v42 = [(UAPBStreamCoderV1 *)self trimFirstBytes:v40 ofData:receivedData8];
      [(UAPBStreamCoderV1 *)self setReceivedData:v42];

      v43 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        recvRap2 = [(UAPBStreamCoderV1 *)self recvRap];
        v71 = 138412290;
        v72 = recvRap2;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Received Header: %@", &v71, 0xCu);
      }

      goto LABEL_34;
    }

    return;
  }

  if ([(UAPBStreamCoderV1 *)self receivedDelem])
  {
    progress = [(UAPBStreamCoderV1 *)self progress];
    [progress setCompletedUnitCount:{-[UAPBStreamCoderV1 bytesReceived](self, "bytesReceived")}];

    v20 = [UADiagnosticUtils absoluteToNSec:mach_absolute_time() - [(UAPBStreamCoderV1 *)self streamStartTime]]/ 1000000000.0;
    v21 = [(UAPBStreamCoderV1 *)self bytesReceived]/ v20;
    progress2 = [(UAPBStreamCoderV1 *)self progress];
    v23 = [NSNumber numberWithDouble:v21];
    [progress2 setUserInfoObject:v23 forKey:NSProgressThroughputKey];

    expectedLength = [(UAPBStreamCoderV1 *)self expectedLength];
    v25 = (expectedLength - [(UAPBStreamCoderV1 *)self bytesReceived]) / v21;
    if (*&qword_1000E5DD8 != 0.0)
    {
      v25 = v25 * 0.5 + *&qword_1000E5DD8 * 0.5;
    }

    qword_1000E5DD8 = *&v25;
    v26 = +[UAUserActivityDefaults sharedDefaults];
    [v26 pasteboardUITimeRemainingDelay];
    v28 = v27;

    if (v20 > v28)
    {
      progress3 = [(UAPBStreamCoderV1 *)self progress];
      v30 = [NSNumber numberWithDouble:*&qword_1000E5DD8];
      [progress3 setUserInfoObject:v30 forKey:NSProgressEstimatedTimeRemainingKey];

LABEL_47:
    }
  }

  else
  {
    receivedData9 = [(UAPBStreamCoderV1 *)self receivedData];
    bytes3 = [receivedData9 bytes];

    if (*bytes3 != 61 || bytes3[1] != 61 || bytes3[2] != 61)
    {
      v58 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v71) = 0;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_ERROR, "[CODER_V1] Error, malformed data received. Did not receive correct delimiter", &v71, 2u);
      }

      v59 = UAContinuityErrorDomain;
      v75 = NSLocalizedDescriptionKey;
      v76 = @"Invalid delimiter before pb data";
      v60 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      progress3 = [NSError errorWithDomain:v59 code:-122 userInfo:v60];

      [(UAPBStreamCoderV1 *)self streamDoneWithInfo:0 error:progress3];
      goto LABEL_47;
    }

    progress4 = [(UAPBStreamCoderV1 *)self progress];
    [progress4 setTotalUnitCount:{-[UAPBStreamCoderV1 expectedLength](self, "expectedLength")}];

    progress5 = [(UAPBStreamCoderV1 *)self progress];
    [progress5 setCompletedUnitCount:{-[UAPBStreamCoderV1 bytesReceived](self, "bytesReceived")}];

    v55 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v71) = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Started receiving data file", &v71, 2u);
    }

    receivedData10 = [(UAPBStreamCoderV1 *)self receivedData];
    v57 = [(UAPBStreamCoderV1 *)self trimFirstBytes:3 ofData:receivedData10];
    [(UAPBStreamCoderV1 *)self setReceivedData:v57];

    [(UAPBStreamCoderV1 *)self setReceivedDelem:1];
  }

  receivedData11 = [(UAPBStreamCoderV1 *)self receivedData];
  v62 = [receivedData11 length];

  if (v62)
  {
    file = [(UAPBStreamCoderV1 *)self file];
    receivedData12 = [(UAPBStreamCoderV1 *)self receivedData];
    [file writeData:receivedData12];

    receivedData13 = [(UAPBStreamCoderV1 *)self receivedData];
    [receivedData13 setLength:0];
  }

  v66 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
  {
    bytesReceived2 = [(UAPBStreamCoderV1 *)self bytesReceived];
    expectedLength2 = [(UAPBStreamCoderV1 *)self expectedLength];
    v71 = 134218240;
    v72 = bytesReceived2;
    v73 = 2048;
    v74 = expectedLength2;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "[CODER_V1] Recived %ld of %ld", &v71, 0x16u);
  }

  bytesReceived3 = [(UAPBStreamCoderV1 *)self bytesReceived];
  if (bytesReceived3 >= [(UAPBStreamCoderV1 *)self expectedLength])
  {
    v70 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v71) = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Received data file", &v71, 2u);
    }

    receivedData4 = [(UAPBStreamCoderV1 *)self recvRap];
    selfCopy2 = self;
    v49 = receivedData4;
    v50 = 0;
    goto LABEL_56;
  }
}

- (void)sendPasteboard:(id)pasteboard withCompletion:(id)completion
{
  pasteboardCopy = pasteboard;
  completionCopy = completion;
  [(UAPBStreamCoderV1 *)self setIsSendMode:1];
  v34 = pasteboardCopy;
  [(UAPBStreamCoderV1 *)self setSendRap:pasteboardCopy];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  val = self;
  sendRap = [(UAPBStreamCoderV1 *)self sendRap];
  pbinfo = [sendRap pbinfo];
  items = [pbinfo items];

  v10 = [items countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v10)
  {
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(items);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        types = [v13 types];
        allKeys = [types allKeys];
        v16 = [allKeys containsObject:@"public.file-url"];

        if (v16)
        {
          types2 = [v13 types];
          v18 = [types2 mutableCopy];

          [v18 removeObjectForKey:@"public.file-url"];
          [v18 removeObjectForKey:@"com.apple.security.sandbox-extension-dict"];
          [v18 removeObjectForKey:@"com.apple.finder.noderef"];
          [v13 setTypes:v18];
        }
      }

      v10 = [items countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v10);
  }

  objc_initWeak(&location, val);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100064508;
  v36[3] = &unk_1000C6020;
  v19 = completionCopy;
  v37 = v19;
  objc_copyWeak(&v38, &location);
  [(UAPBStreamCoderV1 *)val setSendErrorHandler:v36];
  pbinfo2 = [v34 pbinfo];
  dataFile = [pbinfo2 dataFile];
  [(UAPBStreamCoderV1 *)val setDataFile:dataFile];

  sendRap2 = [(UAPBStreamCoderV1 *)val sendRap];
  pbinfo3 = [sendRap2 pbinfo];
  [pbinfo3 setDataFile:0];

  [(UAPBStreamCoderV1 *)val setDataSent:0];
  sendRap3 = [(UAPBStreamCoderV1 *)val sendRap];
  v25 = [NSKeyedArchiver archivedDataWithRootObject:sendRap3 requiringSecureCoding:1 error:0];

  v26 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    sendRap4 = [(UAPBStreamCoderV1 *)val sendRap];
    *buf = 138412290;
    v45 = sendRap4;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Sending pboard info: %@", buf, 0xCu);
  }

  v28 = [(UAPBStreamCoderV1 *)val headerForData:v25];
  [(UAPBStreamCoderV1 *)val setCurrentSendData:v28];

  streamHandler = [(UAPBStreamCoderV1 *)val streamHandler];
  currentSendData = [(UAPBStreamCoderV1 *)val currentSendData];
  [streamHandler writeRawData:currentSendData];

  currentSendData2 = [(UAPBStreamCoderV1 *)val currentSendData];
  -[UAPBStreamCoderV1 setDataSent:](val, "setDataSent:", [currentSendData2 length] + -[UAPBStreamCoderV1 dataSent](val, "dataSent"));

  [(UAPBStreamCoderV1 *)val setCurrentSendData:0];
  streamHandler2 = [(UAPBStreamCoderV1 *)val streamHandler];
  [streamHandler2 start];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

- (void)sendNextChunk
{
  dataFile = [(UAPBStreamCoderV1 *)self dataFile];
  v4 = [dataFile readDataOfLength:0x10000];

  -[UAPBStreamCoderV1 setDataSent:](self, "setDataSent:", [v4 length] + -[UAPBStreamCoderV1 dataSent](self, "dataSent"));
  v5 = [v4 length];
  v6 = sub_100001A30(@"pasteboard-server");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = 134217984;
      v12 = [v4 length];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[CODER_V1] Queuing next chunk to send: %ld", &v11, 0xCu);
    }

    streamHandler = [(UAPBStreamCoderV1 *)self streamHandler];
    [streamHandler writeRawData:v4];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Done queuing chunks, starting shutdown timer", &v11, 2u);
    }

    v9 = [NSTimer timerWithTimeInterval:self target:"shutdownTimerFired:" selector:0 userInfo:0 repeats:30.0];
    [(UAPBStreamCoderV1 *)self setBackupTimer:v9];

    streamHandler = +[NSRunLoop mainRunLoop];
    backupTimer = [(UAPBStreamCoderV1 *)self backupTimer];
    [streamHandler addTimer:backupTimer forMode:NSRunLoopCommonModes];
  }
}

- (void)receivedDataBack:(id)back
{
  backCopy = back;
  v5 = [[NSString alloc] initWithData:backCopy encoding:4];

  v6 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Got data back: %@", &v15, 0xCu);
  }

  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    dataSent = [(UAPBStreamCoderV1 *)self dataSent];
    streamHandler = [(UAPBStreamCoderV1 *)self streamHandler];
    totalBytesSent = [streamHandler totalBytesSent];
    v15 = 134218240;
    v16 = dataSent;
    v17 = 2048;
    v18 = totalBytesSent;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Data sent: %ld - %ld", &v15, 0x16u);
  }

  streamHandler2 = [(UAPBStreamCoderV1 *)self streamHandler];
  [streamHandler2 stop];

  backupTimer = [(UAPBStreamCoderV1 *)self backupTimer];
  [backupTimer invalidate];

  sendErrorHandler = [(UAPBStreamCoderV1 *)self sendErrorHandler];
  streamHandler3 = [(UAPBStreamCoderV1 *)self streamHandler];
  (sendErrorHandler)[2](sendErrorHandler, [streamHandler3 totalBytesSent], 0);
}

- (void)shutdownTimerFired:(id)fired
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Stream Timer Fired, shutting down", v8, 2u);
  }

  streamHandler = [(UAPBStreamCoderV1 *)self streamHandler];
  [streamHandler stop];

  sendErrorHandler = [(UAPBStreamCoderV1 *)self sendErrorHandler];
  streamHandler2 = [(UAPBStreamCoderV1 *)self streamHandler];
  (sendErrorHandler)[2](sendErrorHandler, [streamHandler2 totalBytesSent], 0);
}

- (id)trimFirstBytes:(unint64_t)bytes ofData:(id)data
{
  dataCopy = data;
  v6 = [dataCopy subdataWithRange:{bytes, objc_msgSend(dataCopy, "length") - bytes}];

  v7 = [NSMutableData dataWithData:v6];

  return v7;
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

@end