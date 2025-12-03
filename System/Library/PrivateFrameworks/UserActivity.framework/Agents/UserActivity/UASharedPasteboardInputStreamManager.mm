@interface UASharedPasteboardInputStreamManager
- (UASharedPasteboardInputStreamManager)initWithInputStream:(id)stream outputStream:(id)outputStream dataFile:(id)file;
- (unint64_t)absoluteToNSec:(unint64_t)sec;
- (void)cancel;
- (void)receiveTypes:(id)types withProgress:(id)progress completionHandler:(id)handler;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
- (void)streamDoneWithInfo:(id)info error:(id)error;
@end

@implementation UASharedPasteboardInputStreamManager

- (UASharedPasteboardInputStreamManager)initWithInputStream:(id)stream outputStream:(id)outputStream dataFile:(id)file
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  fileCopy = file;
  v14.receiver = self;
  v14.super_class = UASharedPasteboardInputStreamManager;
  v11 = [(UASharedPasteboardInputStreamManager *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(UASharedPasteboardInputStreamManager *)v11 setStream:streamCopy];
    [(UASharedPasteboardInputStreamManager *)v12 setOutStream:outputStreamCopy];
    [(UASharedPasteboardInputStreamManager *)v12 setFile:fileCopy];
  }

  return v12;
}

- (void)receiveTypes:(id)types withProgress:(id)progress completionHandler:(id)handler
{
  typesCopy = types;
  handlerCopy = handler;
  [(UASharedPasteboardInputStreamManager *)self setProgress:progress];
  [(UASharedPasteboardInputStreamManager *)self setTypesToReceive:typesCopy];
  [(UASharedPasteboardInputStreamManager *)self setHandler:handlerCopy];

  [(UASharedPasteboardInputStreamManager *)self setState:0];
  [(UASharedPasteboardInputStreamManager *)self setExpectedLength:7];
  v10 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"All";
    if (typesCopy)
    {
      v11 = typesCopy;
    }

    v20 = 138412290;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Starting to receive types: %@", &v20, 0xCu);
  }

  stream = [(UASharedPasteboardInputStreamManager *)self stream];
  [stream setDelegate:self];

  outStream = [(UASharedPasteboardInputStreamManager *)self outStream];
  [outStream setDelegate:self];

  stream2 = [(UASharedPasteboardInputStreamManager *)self stream];
  v15 = +[NSRunLoop mainRunLoop];
  [stream2 scheduleInRunLoop:v15 forMode:NSRunLoopCommonModes];

  stream3 = [(UASharedPasteboardInputStreamManager *)self stream];
  [stream3 open];

  outStream2 = [(UASharedPasteboardInputStreamManager *)self outStream];
  v18 = +[NSRunLoop mainRunLoop];
  [outStream2 scheduleInRunLoop:v18 forMode:NSRunLoopCommonModes];

  outStream3 = [(UASharedPasteboardInputStreamManager *)self outStream];
  [outStream3 open];

  [(UASharedPasteboardInputStreamManager *)self setStreamStartTime:mach_absolute_time()];
}

- (void)cancel
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Input stream canceled", v5, 2u);
  }

  v4 = [NSError errorWithDomain:UAContinuityErrorDomain code:-125 userInfo:0];
  [(UASharedPasteboardInputStreamManager *)self streamDoneWithInfo:0 error:v4];
}

- (void)streamDoneWithInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(UASharedPasteboardInputStreamManager *)selfCopy state]!= 3)
  {
    v9 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Done with input stream", v19, 2u);
    }

    outStream = [(UASharedPasteboardInputStreamManager *)selfCopy outStream];
    v11 = [@"PBDONE" dataUsingEncoding:4];
    [outStream write:objc_msgSend(v11 maxLength:{"bytes"), 6}];

    stream = [(UASharedPasteboardInputStreamManager *)selfCopy stream];
    [stream close];

    stream2 = [(UASharedPasteboardInputStreamManager *)selfCopy stream];
    v14 = +[NSRunLoop mainRunLoop];
    [stream2 removeFromRunLoop:v14 forMode:NSRunLoopCommonModes];

    outStream2 = [(UASharedPasteboardInputStreamManager *)selfCopy outStream];
    [outStream2 close];

    outStream3 = [(UASharedPasteboardInputStreamManager *)selfCopy outStream];
    v17 = +[NSRunLoop mainRunLoop];
    [outStream3 removeFromRunLoop:v17 forMode:NSRunLoopCommonModes];

    handler = [(UASharedPasteboardInputStreamManager *)selfCopy handler];
    (handler)[2](handler, infoCopy, errorCopy);

    [(UASharedPasteboardInputStreamManager *)selfCopy setState:3];
  }

  objc_sync_exit(selfCopy);
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  progress = [(UASharedPasteboardInputStreamManager *)self progress];
  isCancelled = [progress isCancelled];

  if (isCancelled)
  {
    v9 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Paste cancelled, closing stream", buf, 2u);
    }

    [(UASharedPasteboardInputStreamManager *)self cancel];
    goto LABEL_74;
  }

  stream = [(UASharedPasteboardInputStreamManager *)self stream];
  v11 = [streamCopy isEqual:stream];

  if (!v11)
  {
    goto LABEL_74;
  }

  if (event == 16)
  {
    v29 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Stream End Encountered", buf, 2u);
    }

    v28 = [NSError errorWithDomain:UAContinuityErrorDomain code:-127 userInfo:0];
    goto LABEL_30;
  }

  if (event == 8)
  {
    v21 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      stream2 = [(UASharedPasteboardInputStreamManager *)self stream];
      streamError = [stream2 streamError];
      *buf = 138412290;
      v76 = streamError;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[IN STREAM] Stream Event Error: %@", buf, 0xCu);
    }

    v24 = UAContinuityErrorDomain;
    stream3 = [(UASharedPasteboardInputStreamManager *)self stream];
    streamError2 = [stream3 streamError];
    v72 = streamError2;
    v27 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v28 = [NSError errorWithDomain:v24 code:-127 userInfo:v27];

LABEL_30:
    [(UASharedPasteboardInputStreamManager *)self streamDoneWithInfo:0 error:v28];

    goto LABEL_74;
  }

  if (event != 2)
  {
    goto LABEL_74;
  }

  expectedLength = [(UASharedPasteboardInputStreamManager *)self expectedLength];
  bytesReceived = [(UASharedPasteboardInputStreamManager *)self bytesReceived];
  if (expectedLength - bytesReceived >= 0x10000)
  {
    v14 = 0x10000;
  }

  else
  {
    v14 = expectedLength - bytesReceived;
  }

  if (expectedLength - bytesReceived <= 0)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = v14;
  }

  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [streamCopy read:v16 maxLength:?];
  [(UASharedPasteboardInputStreamManager *)self setBytesReceived:&v17[[(UASharedPasteboardInputStreamManager *)self bytesReceived]]];
  state = [(UASharedPasteboardInputStreamManager *)self state];
  if (state == 2)
  {
    if ([(UASharedPasteboardInputStreamManager *)self receivedDelem])
    {
      progress2 = [(UASharedPasteboardInputStreamManager *)self progress];
      [progress2 setCompletedUnitCount:{-[UASharedPasteboardInputStreamManager bytesReceived](self, "bytesReceived")}];

      v34 = [(UASharedPasteboardInputStreamManager *)self absoluteToNSec:mach_absolute_time() - [(UASharedPasteboardInputStreamManager *)self streamStartTime]]/ 1000000000.0;
      v35 = [(UASharedPasteboardInputStreamManager *)self bytesReceived]/ v34;
      progress3 = [(UASharedPasteboardInputStreamManager *)self progress];
      v37 = [NSNumber numberWithDouble:v35];
      [progress3 setUserInfoObject:v37 forKey:NSProgressThroughputKey];

      expectedLength2 = [(UASharedPasteboardInputStreamManager *)self expectedLength];
      v39 = (expectedLength2 - [(UASharedPasteboardInputStreamManager *)self bytesReceived]) / v35;
      if (*&qword_1000E5DA8 != 0.0)
      {
        v39 = v39 * 0.5 + *&qword_1000E5DA8 * 0.5;
      }

      qword_1000E5DA8 = *&v39;
      v40 = +[UAUserActivityDefaults sharedDefaults];
      [v40 pasteboardUITimeRemainingDelay];
      v42 = v41;

      if (v34 > v42)
      {
        progress4 = [(UASharedPasteboardInputStreamManager *)self progress];
        v44 = [NSNumber numberWithDouble:*&qword_1000E5DA8];
        [progress4 setUserInfoObject:v44 forKey:NSProgressEstimatedTimeRemainingKey];
      }

      v45 = [NSData dataWithBytesNoCopy:v16 length:v17 freeWhenDone:0];
      if (!v45)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (*v16 != 61 || v16[1] != 61 || v16[2] != 61)
      {
        v66 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "[IN STREAM] Error, malformed data received. Did not receive correct delimiter", buf, 2u);
        }

        v67 = UAContinuityErrorDomain;
        v73 = NSLocalizedDescriptionKey;
        v74 = @"Invalid delimiter before pb data";
        v68 = [NSDictionary dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        file = [NSError errorWithDomain:v67 code:-122 userInfo:v68];

        [(UASharedPasteboardInputStreamManager *)self streamDoneWithInfo:0 error:file];
        v45 = 0;
        goto LABEL_67;
      }

      progress5 = [(UASharedPasteboardInputStreamManager *)self progress];
      [progress5 setTotalUnitCount:{-[UASharedPasteboardInputStreamManager expectedLength](self, "expectedLength")}];

      progress6 = [(UASharedPasteboardInputStreamManager *)self progress];
      [progress6 setCompletedUnitCount:{-[UASharedPasteboardInputStreamManager bytesReceived](self, "bytesReceived")}];

      v53 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Started receiving data file", buf, 2u);
      }

      v45 = [NSData dataWithBytesNoCopy:v16 + 3 length:v17 - 3 freeWhenDone:0];
      [(UASharedPasteboardInputStreamManager *)self setReceivedDelem:1];
      if (!v45)
      {
        goto LABEL_68;
      }
    }

    file = [(UASharedPasteboardInputStreamManager *)self file];
    [file writeData:v45];
LABEL_67:

LABEL_68:
    bytesReceived2 = [(UASharedPasteboardInputStreamManager *)self bytesReceived];
    if (bytesReceived2 < [(UASharedPasteboardInputStreamManager *)self expectedLength])
    {
      goto LABEL_73;
    }

    v70 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Received data file", buf, 2u);
    }

    pbwrapper = [(UASharedPasteboardInputStreamManager *)self pbwrapper];
    [(UASharedPasteboardInputStreamManager *)self streamDoneWithInfo:pbwrapper error:0];
LABEL_72:

    goto LABEL_73;
  }

  if (state != 1)
  {
    if (state)
    {
      goto LABEL_74;
    }

    if (*v16 == 61 && v16[1] == 61 && v16[2] == 61)
    {
      v19 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[IN STREAM] Receiving Header Info", buf, 2u);
      }

      [(UASharedPasteboardInputStreamManager *)self setExpectedLength:(*(v16 + 3) + 3)];
      [(UASharedPasteboardInputStreamManager *)self setState:1];
      [(UASharedPasteboardInputStreamManager *)self setBytesReceived:0];
      v20 = objc_alloc_init(NSMutableData);
      [(UASharedPasteboardInputStreamManager *)self setReceivedData:v20];

      [(UASharedPasteboardInputStreamManager *)self setReceivedDelem:0];
      goto LABEL_74;
    }

    v48 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "[IN STREAM] Error, malformed data received. Have not received message header.", buf, 2u);
    }

    v49 = UAContinuityErrorDomain;
    v79 = NSLocalizedDescriptionKey;
    v80 = @"Invalid message header";
    v50 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    v45 = [NSError errorWithDomain:v49 code:-122 userInfo:v50];

    [(UASharedPasteboardInputStreamManager *)self streamDoneWithInfo:0 error:v45];
LABEL_73:

    goto LABEL_74;
  }

  v30 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "[IN STREAM] Receiving Header", buf, 2u);
  }

  if (*v16 == 61 && v16[1] == 61 && v16[2] == 61)
  {
    v31 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Started receiving header", buf, 2u);
    }

    receivedData = [(UASharedPasteboardInputStreamManager *)self receivedData];
    [receivedData appendBytes:v16 + 3 length:v17 - 3];

    [(UASharedPasteboardInputStreamManager *)self setReceivedDelem:1];
  }

  else if ([(UASharedPasteboardInputStreamManager *)self receivedDelem])
  {
    receivedData2 = [(UASharedPasteboardInputStreamManager *)self receivedData];
    [receivedData2 appendBytes:v16 length:v17];
  }

  else
  {
    v54 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "[IN STREAM] Error, malformed data received. Did not receive correct delimiter", buf, 2u);
    }

    v55 = UAContinuityErrorDomain;
    v77 = NSLocalizedDescriptionKey;
    v78 = @"Invalid delimiter before pbinfo";
    v56 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    v57 = [NSError errorWithDomain:v55 code:-122 userInfo:v56];

    [(UASharedPasteboardInputStreamManager *)self streamDoneWithInfo:0 error:v57];
  }

  bytesReceived3 = [(UASharedPasteboardInputStreamManager *)self bytesReceived];
  if (bytesReceived3 == [(UASharedPasteboardInputStreamManager *)self expectedLength])
  {
    v59 = [NSKeyedUnarchiver alloc];
    receivedData3 = [(UASharedPasteboardInputStreamManager *)self receivedData];
    v45 = [v59 initForReadingFromData:receivedData3 error:0];

    v61 = [v45 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [(UASharedPasteboardInputStreamManager *)self setPbwrapper:v61];

    [(UASharedPasteboardInputStreamManager *)self setState:2];
    pbwrapper2 = [(UASharedPasteboardInputStreamManager *)self pbwrapper];
    pbinfo = [pbwrapper2 pbinfo];
    -[UASharedPasteboardInputStreamManager setExpectedLength:](self, "setExpectedLength:", [pbinfo dataSize] + 3);

    [(UASharedPasteboardInputStreamManager *)self setBytesReceived:0];
    [(UASharedPasteboardInputStreamManager *)self setReceivedDelem:0];
    [v45 finishDecoding];
    pbwrapper = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(pbwrapper, OS_LOG_TYPE_DEFAULT))
    {
      pbwrapper3 = [(UASharedPasteboardInputStreamManager *)self pbwrapper];
      *buf = 138412290;
      v76 = pbwrapper3;
      _os_log_impl(&_mh_execute_header, pbwrapper, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Received Header: %@", buf, 0xCu);
    }

    goto LABEL_72;
  }

LABEL_74:
}

- (unint64_t)absoluteToNSec:(unint64_t)sec
{
  v4 = dword_1000E5DB4;
  if (!dword_1000E5DB4)
  {
    mach_timebase_info(&dword_1000E5DB0);
    v4 = dword_1000E5DB4;
  }

  return dword_1000E5DB0 * sec / v4;
}

@end