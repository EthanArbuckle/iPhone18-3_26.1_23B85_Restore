@interface UAPBStreamCoderV1
- (UAPBStreamCoderV1)initWithInputStream:(id)a3 outputStream:(id)a4;
- (id)headerForData:(id)a3;
- (id)trimFirstBytes:(unint64_t)a3 ofData:(id)a4;
- (void)cancelReceive;
- (void)dealloc;
- (void)processReceivedData;
- (void)receivePasteboardToFile:(id)a3 withProgress:(id)a4 infoReceivedHandler:(id)a5 completionHandler:(id)a6 returnInfoEarly:(BOOL)a7;
- (void)receivedDataBack:(id)a3;
- (void)sendNextChunk;
- (void)sendPasteboard:(id)a3 withCompletion:(id)a4;
- (void)shutdownTimerFired:(id)a3;
- (void)streamDoneWithInfo:(id)a3 error:(id)a4;
- (void)streams:(id)a3 didReadRawData:(id)a4;
- (void)streamsDidClose:(id)a3 withError:(id)a4;
- (void)streamsDidWriteRawDataBuffer:(id)a3;
@end

@implementation UAPBStreamCoderV1

- (UAPBStreamCoderV1)initWithInputStream:(id)a3 outputStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = UAPBStreamCoderV1;
  v8 = [(UAPBStreamCoderV1 *)&v11 init];
  if (v8)
  {
    v9 = [[UAStreamHandler alloc] initWithInputStream:v6 outputStream:v7 delegate:v8];
    [(UAPBStreamCoderV1 *)v8 setStreamHandler:v9];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(UAPBStreamCoderV1 *)self streamHandler];
  [v3 stop];

  v4.receiver = self;
  v4.super_class = UAPBStreamCoderV1;
  [(UAPBStreamCoderV1 *)&v4 dealloc];
}

- (void)streams:(id)a3 didReadRawData:(id)a4
{
  v6 = a4;
  if ([(UAPBStreamCoderV1 *)self isSendMode])
  {
    [(UAPBStreamCoderV1 *)self receivedDataBack:v6];
  }

  else
  {
    v5 = [(UAPBStreamCoderV1 *)self receivedData];
    [v5 appendData:v6];

    -[UAPBStreamCoderV1 setBytesReceived:](self, "setBytesReceived:", [v6 length] + -[UAPBStreamCoderV1 bytesReceived](self, "bytesReceived"));
    -[UAPBStreamCoderV1 setTotalBytesReceived:](self, "setTotalBytesReceived:", [v6 length] + -[UAPBStreamCoderV1 totalBytesReceived](self, "totalBytesReceived"));
    [(UAPBStreamCoderV1 *)self processReceivedData];
  }
}

- (void)streamsDidWriteRawDataBuffer:(id)a3
{
  if ([(UAPBStreamCoderV1 *)self isSendMode])
  {

    [(UAPBStreamCoderV1 *)self sendNextChunk];
  }
}

- (void)streamsDidClose:(id)a3 withError:(id)a4
{
  v6 = a4;
  v5 = [(UAPBStreamCoderV1 *)self isSendMode];
  if (v6 && (v5 & 1) == 0)
  {
    v5 = [(UAPBStreamCoderV1 *)self streamDoneWithInfo:0 error:v6];
  }

  _objc_release_x1(v5);
}

- (void)receivePasteboardToFile:(id)a3 withProgress:(id)a4 infoReceivedHandler:(id)a5 completionHandler:(id)a6 returnInfoEarly:(BOOL)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = sub_100001A30(@"pasteboard-streams");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Starting to receive pasteboard", buf, 2u);
  }

  [(UAPBStreamCoderV1 *)self setProgress:v12];
  objc_initWeak(buf, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000631B0;
  v20[3] = &unk_1000C5FF8;
  v16 = v13;
  v21 = v16;
  v17 = v14;
  v22 = v17;
  objc_copyWeak(&v23, buf);
  [(UAPBStreamCoderV1 *)self setRecvHandler:v20];
  v18 = objc_alloc_init(NSMutableData);
  [(UAPBStreamCoderV1 *)self setReceivedData:v18];

  [(UAPBStreamCoderV1 *)self setFile:v11];
  [(UAPBStreamCoderV1 *)self setState:0];
  [(UAPBStreamCoderV1 *)self setExpectedLength:7];
  v19 = [(UAPBStreamCoderV1 *)self streamHandler];
  [v19 start];

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

- (void)streamDoneWithInfo:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if ([(UAPBStreamCoderV1 *)v8 state]!= 3)
  {
    v9 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Done with input stream: %@, %@", &v14, 0x16u);
    }

    v10 = [(UAPBStreamCoderV1 *)v8 streamHandler];
    v11 = [@"PBDONE" dataUsingEncoding:4];
    [v10 writeRawData:v11];

    v12 = [(UAPBStreamCoderV1 *)v8 streamHandler];
    [v12 stop];

    v13 = [(UAPBStreamCoderV1 *)v8 recvHandler];
    (v13)[2](v13, v6, v7);

    [(UAPBStreamCoderV1 *)v8 setState:3];
  }

  objc_sync_exit(v8);
}

- (void)processReceivedData
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UAPBStreamCoderV1 *)self receivedData];
    v71 = 134217984;
    v72 = [v4 length];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[CODER_V1] Processing Received data with length: %ld", &v71, 0xCu);
  }

  v5 = [(UAPBStreamCoderV1 *)self receivedData];
  v6 = [v5 length];

  if (!v6)
  {
    return;
  }

  v7 = [(UAPBStreamCoderV1 *)self state];
  if (v7 != 2)
  {
    if (v7 != 1)
    {
      if (v7)
      {
        return;
      }

      v8 = [(UAPBStreamCoderV1 *)self receivedData];
      v9 = [v8 bytes];

      if (*v9 == 61 && v9[1] == 61 && v9[2] == 61)
      {
        v10 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v71) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[CODER_V1] Receiving Header Info", &v71, 2u);
        }

        [(UAPBStreamCoderV1 *)self setExpectedLength:(*(v9 + 3) + 3)];
        [(UAPBStreamCoderV1 *)self setState:1];
        [(UAPBStreamCoderV1 *)self setBytesReceived:[(UAPBStreamCoderV1 *)self bytesReceived]- 7];
        [(UAPBStreamCoderV1 *)self setReceivedDelem:0];
        v11 = [(UAPBStreamCoderV1 *)self receivedData];
        v12 = [(UAPBStreamCoderV1 *)self trimFirstBytes:7 ofData:v11];
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
      v11 = [NSError errorWithDomain:v46 code:-122 userInfo:v47];

      v48 = self;
      v49 = 0;
      v50 = v11;
LABEL_56:
      [(UAPBStreamCoderV1 *)v48 streamDoneWithInfo:v49 error:v50];
      goto LABEL_57;
    }

    v13 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v71) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "[CODER_V1] Receiving Header", &v71, 2u);
    }

    v14 = [(UAPBStreamCoderV1 *)self receivedData];
    v15 = [v14 bytes];

    if (*v15 == 61 && v15[1] == 61 && v15[2] == 61)
    {
      v16 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v71) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Started receiving header", &v71, 2u);
      }

      v17 = [(UAPBStreamCoderV1 *)self receivedData];
      v18 = [(UAPBStreamCoderV1 *)self trimFirstBytes:3 ofData:v17];
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

    v35 = [(UAPBStreamCoderV1 *)self bytesReceived];
    if (v35 >= [(UAPBStreamCoderV1 *)self expectedLength])
    {
      v36 = [(UAPBStreamCoderV1 *)self receivedData];
      v11 = [v36 subdataWithRange:{0, -[UAPBStreamCoderV1 expectedLength](self, "expectedLength")}];

      v12 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v11 error:0];
      v37 = [v12 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
      [(UAPBStreamCoderV1 *)self setRecvRap:v37];

      [(UAPBStreamCoderV1 *)self setState:2];
      v38 = [(UAPBStreamCoderV1 *)self recvRap];
      v39 = [v38 pbinfo];
      -[UAPBStreamCoderV1 setExpectedLength:](self, "setExpectedLength:", [v39 dataSize] + 3);

      -[UAPBStreamCoderV1 setBytesReceived:](self, "setBytesReceived:", -[UAPBStreamCoderV1 bytesReceived](self, "bytesReceived") - [v11 length]);
      [(UAPBStreamCoderV1 *)self setReceivedDelem:0];
      [v12 finishDecoding];
      v40 = [v11 length];
      v41 = [(UAPBStreamCoderV1 *)self receivedData];
      v42 = [(UAPBStreamCoderV1 *)self trimFirstBytes:v40 ofData:v41];
      [(UAPBStreamCoderV1 *)self setReceivedData:v42];

      v43 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [(UAPBStreamCoderV1 *)self recvRap];
        v71 = 138412290;
        v72 = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Received Header: %@", &v71, 0xCu);
      }

      goto LABEL_34;
    }

    return;
  }

  if ([(UAPBStreamCoderV1 *)self receivedDelem])
  {
    v19 = [(UAPBStreamCoderV1 *)self progress];
    [v19 setCompletedUnitCount:{-[UAPBStreamCoderV1 bytesReceived](self, "bytesReceived")}];

    v20 = [UADiagnosticUtils absoluteToNSec:mach_absolute_time() - [(UAPBStreamCoderV1 *)self streamStartTime]]/ 1000000000.0;
    v21 = [(UAPBStreamCoderV1 *)self bytesReceived]/ v20;
    v22 = [(UAPBStreamCoderV1 *)self progress];
    v23 = [NSNumber numberWithDouble:v21];
    [v22 setUserInfoObject:v23 forKey:NSProgressThroughputKey];

    v24 = [(UAPBStreamCoderV1 *)self expectedLength];
    v25 = (v24 - [(UAPBStreamCoderV1 *)self bytesReceived]) / v21;
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
      v29 = [(UAPBStreamCoderV1 *)self progress];
      v30 = [NSNumber numberWithDouble:*&qword_1000E5DD8];
      [v29 setUserInfoObject:v30 forKey:NSProgressEstimatedTimeRemainingKey];

LABEL_47:
    }
  }

  else
  {
    v51 = [(UAPBStreamCoderV1 *)self receivedData];
    v52 = [v51 bytes];

    if (*v52 != 61 || v52[1] != 61 || v52[2] != 61)
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
      v29 = [NSError errorWithDomain:v59 code:-122 userInfo:v60];

      [(UAPBStreamCoderV1 *)self streamDoneWithInfo:0 error:v29];
      goto LABEL_47;
    }

    v53 = [(UAPBStreamCoderV1 *)self progress];
    [v53 setTotalUnitCount:{-[UAPBStreamCoderV1 expectedLength](self, "expectedLength")}];

    v54 = [(UAPBStreamCoderV1 *)self progress];
    [v54 setCompletedUnitCount:{-[UAPBStreamCoderV1 bytesReceived](self, "bytesReceived")}];

    v55 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v71) = 0;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Started receiving data file", &v71, 2u);
    }

    v56 = [(UAPBStreamCoderV1 *)self receivedData];
    v57 = [(UAPBStreamCoderV1 *)self trimFirstBytes:3 ofData:v56];
    [(UAPBStreamCoderV1 *)self setReceivedData:v57];

    [(UAPBStreamCoderV1 *)self setReceivedDelem:1];
  }

  v61 = [(UAPBStreamCoderV1 *)self receivedData];
  v62 = [v61 length];

  if (v62)
  {
    v63 = [(UAPBStreamCoderV1 *)self file];
    v64 = [(UAPBStreamCoderV1 *)self receivedData];
    [v63 writeData:v64];

    v65 = [(UAPBStreamCoderV1 *)self receivedData];
    [v65 setLength:0];
  }

  v66 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
  {
    v67 = [(UAPBStreamCoderV1 *)self bytesReceived];
    v68 = [(UAPBStreamCoderV1 *)self expectedLength];
    v71 = 134218240;
    v72 = v67;
    v73 = 2048;
    v74 = v68;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "[CODER_V1] Recived %ld of %ld", &v71, 0x16u);
  }

  v69 = [(UAPBStreamCoderV1 *)self bytesReceived];
  if (v69 >= [(UAPBStreamCoderV1 *)self expectedLength])
  {
    v70 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v71) = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[CODER_V1] Received data file", &v71, 2u);
    }

    v11 = [(UAPBStreamCoderV1 *)self recvRap];
    v48 = self;
    v49 = v11;
    v50 = 0;
    goto LABEL_56;
  }
}

- (void)sendPasteboard:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v33 = a4;
  [(UAPBStreamCoderV1 *)self setIsSendMode:1];
  v34 = v6;
  [(UAPBStreamCoderV1 *)self setSendRap:v6];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  val = self;
  v7 = [(UAPBStreamCoderV1 *)self sendRap];
  v8 = [v7 pbinfo];
  v9 = [v8 items];

  v10 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v10)
  {
    v11 = *v41;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v40 + 1) + 8 * i);
        v14 = [v13 types];
        v15 = [v14 allKeys];
        v16 = [v15 containsObject:@"public.file-url"];

        if (v16)
        {
          v17 = [v13 types];
          v18 = [v17 mutableCopy];

          [v18 removeObjectForKey:@"public.file-url"];
          [v18 removeObjectForKey:@"com.apple.security.sandbox-extension-dict"];
          [v18 removeObjectForKey:@"com.apple.finder.noderef"];
          [v13 setTypes:v18];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v10);
  }

  objc_initWeak(&location, val);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100064508;
  v36[3] = &unk_1000C6020;
  v19 = v33;
  v37 = v19;
  objc_copyWeak(&v38, &location);
  [(UAPBStreamCoderV1 *)val setSendErrorHandler:v36];
  v20 = [v34 pbinfo];
  v21 = [v20 dataFile];
  [(UAPBStreamCoderV1 *)val setDataFile:v21];

  v22 = [(UAPBStreamCoderV1 *)val sendRap];
  v23 = [v22 pbinfo];
  [v23 setDataFile:0];

  [(UAPBStreamCoderV1 *)val setDataSent:0];
  v24 = [(UAPBStreamCoderV1 *)val sendRap];
  v25 = [NSKeyedArchiver archivedDataWithRootObject:v24 requiringSecureCoding:1 error:0];

  v26 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(UAPBStreamCoderV1 *)val sendRap];
    *buf = 138412290;
    v45 = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Sending pboard info: %@", buf, 0xCu);
  }

  v28 = [(UAPBStreamCoderV1 *)val headerForData:v25];
  [(UAPBStreamCoderV1 *)val setCurrentSendData:v28];

  v29 = [(UAPBStreamCoderV1 *)val streamHandler];
  v30 = [(UAPBStreamCoderV1 *)val currentSendData];
  [v29 writeRawData:v30];

  v31 = [(UAPBStreamCoderV1 *)val currentSendData];
  -[UAPBStreamCoderV1 setDataSent:](val, "setDataSent:", [v31 length] + -[UAPBStreamCoderV1 dataSent](val, "dataSent"));

  [(UAPBStreamCoderV1 *)val setCurrentSendData:0];
  v32 = [(UAPBStreamCoderV1 *)val streamHandler];
  [v32 start];

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

- (void)sendNextChunk
{
  v3 = [(UAPBStreamCoderV1 *)self dataFile];
  v4 = [v3 readDataOfLength:0x10000];

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

    v8 = [(UAPBStreamCoderV1 *)self streamHandler];
    [v8 writeRawData:v4];
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

    v8 = +[NSRunLoop mainRunLoop];
    v10 = [(UAPBStreamCoderV1 *)self backupTimer];
    [v8 addTimer:v10 forMode:NSRunLoopCommonModes];
  }
}

- (void)receivedDataBack:(id)a3
{
  v4 = a3;
  v5 = [[NSString alloc] initWithData:v4 encoding:4];

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
    v8 = [(UAPBStreamCoderV1 *)self dataSent];
    v9 = [(UAPBStreamCoderV1 *)self streamHandler];
    v10 = [v9 totalBytesSent];
    v15 = 134218240;
    v16 = v8;
    v17 = 2048;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Data sent: %ld - %ld", &v15, 0x16u);
  }

  v11 = [(UAPBStreamCoderV1 *)self streamHandler];
  [v11 stop];

  v12 = [(UAPBStreamCoderV1 *)self backupTimer];
  [v12 invalidate];

  v13 = [(UAPBStreamCoderV1 *)self sendErrorHandler];
  v14 = [(UAPBStreamCoderV1 *)self streamHandler];
  (v13)[2](v13, [v14 totalBytesSent], 0);
}

- (void)shutdownTimerFired:(id)a3
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Stream Timer Fired, shutting down", v8, 2u);
  }

  v5 = [(UAPBStreamCoderV1 *)self streamHandler];
  [v5 stop];

  v6 = [(UAPBStreamCoderV1 *)self sendErrorHandler];
  v7 = [(UAPBStreamCoderV1 *)self streamHandler];
  (v6)[2](v6, [v7 totalBytesSent], 0);
}

- (id)trimFirstBytes:(unint64_t)a3 ofData:(id)a4
{
  v5 = a4;
  v6 = [v5 subdataWithRange:{a3, objc_msgSend(v5, "length") - a3}];

  v7 = [NSMutableData dataWithData:v6];

  return v7;
}

- (id)headerForData:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableData);
  v6 = [v3 length];
  [v4 appendBytes:"===" length:3];
  [v4 appendBytes:&v6 length:4];
  [v4 appendBytes:"===" length:3];
  [v4 appendData:v3];

  [v4 appendBytes:"===" length:3];

  return v4;
}

@end