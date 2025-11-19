@interface UASharedPasteboardInputStreamManager
- (UASharedPasteboardInputStreamManager)initWithInputStream:(id)a3 outputStream:(id)a4 dataFile:(id)a5;
- (unint64_t)absoluteToNSec:(unint64_t)a3;
- (void)cancel;
- (void)receiveTypes:(id)a3 withProgress:(id)a4 completionHandler:(id)a5;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
- (void)streamDoneWithInfo:(id)a3 error:(id)a4;
@end

@implementation UASharedPasteboardInputStreamManager

- (UASharedPasteboardInputStreamManager)initWithInputStream:(id)a3 outputStream:(id)a4 dataFile:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = UASharedPasteboardInputStreamManager;
  v11 = [(UASharedPasteboardInputStreamManager *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(UASharedPasteboardInputStreamManager *)v11 setStream:v8];
    [(UASharedPasteboardInputStreamManager *)v12 setOutStream:v9];
    [(UASharedPasteboardInputStreamManager *)v12 setFile:v10];
  }

  return v12;
}

- (void)receiveTypes:(id)a3 withProgress:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  [(UASharedPasteboardInputStreamManager *)self setProgress:a4];
  [(UASharedPasteboardInputStreamManager *)self setTypesToReceive:v8];
  [(UASharedPasteboardInputStreamManager *)self setHandler:v9];

  [(UASharedPasteboardInputStreamManager *)self setState:0];
  [(UASharedPasteboardInputStreamManager *)self setExpectedLength:7];
  v10 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"All";
    if (v8)
    {
      v11 = v8;
    }

    v20 = 138412290;
    v21 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Starting to receive types: %@", &v20, 0xCu);
  }

  v12 = [(UASharedPasteboardInputStreamManager *)self stream];
  [v12 setDelegate:self];

  v13 = [(UASharedPasteboardInputStreamManager *)self outStream];
  [v13 setDelegate:self];

  v14 = [(UASharedPasteboardInputStreamManager *)self stream];
  v15 = +[NSRunLoop mainRunLoop];
  [v14 scheduleInRunLoop:v15 forMode:NSRunLoopCommonModes];

  v16 = [(UASharedPasteboardInputStreamManager *)self stream];
  [v16 open];

  v17 = [(UASharedPasteboardInputStreamManager *)self outStream];
  v18 = +[NSRunLoop mainRunLoop];
  [v17 scheduleInRunLoop:v18 forMode:NSRunLoopCommonModes];

  v19 = [(UASharedPasteboardInputStreamManager *)self outStream];
  [v19 open];

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

- (void)streamDoneWithInfo:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if ([(UASharedPasteboardInputStreamManager *)v8 state]!= 3)
  {
    v9 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Done with input stream", v19, 2u);
    }

    v10 = [(UASharedPasteboardInputStreamManager *)v8 outStream];
    v11 = [@"PBDONE" dataUsingEncoding:4];
    [v10 write:objc_msgSend(v11 maxLength:{"bytes"), 6}];

    v12 = [(UASharedPasteboardInputStreamManager *)v8 stream];
    [v12 close];

    v13 = [(UASharedPasteboardInputStreamManager *)v8 stream];
    v14 = +[NSRunLoop mainRunLoop];
    [v13 removeFromRunLoop:v14 forMode:NSRunLoopCommonModes];

    v15 = [(UASharedPasteboardInputStreamManager *)v8 outStream];
    [v15 close];

    v16 = [(UASharedPasteboardInputStreamManager *)v8 outStream];
    v17 = +[NSRunLoop mainRunLoop];
    [v16 removeFromRunLoop:v17 forMode:NSRunLoopCommonModes];

    v18 = [(UASharedPasteboardInputStreamManager *)v8 handler];
    (v18)[2](v18, v6, v7);

    [(UASharedPasteboardInputStreamManager *)v8 setState:3];
  }

  objc_sync_exit(v8);
}

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = [(UASharedPasteboardInputStreamManager *)self progress];
  v8 = [v7 isCancelled];

  if (v8)
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

  v10 = [(UASharedPasteboardInputStreamManager *)self stream];
  v11 = [v6 isEqual:v10];

  if (!v11)
  {
    goto LABEL_74;
  }

  if (a4 == 16)
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

  if (a4 == 8)
  {
    v21 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [(UASharedPasteboardInputStreamManager *)self stream];
      v23 = [v22 streamError];
      *buf = 138412290;
      v76 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[IN STREAM] Stream Event Error: %@", buf, 0xCu);
    }

    v24 = UAContinuityErrorDomain;
    v25 = [(UASharedPasteboardInputStreamManager *)self stream];
    v26 = [v25 streamError];
    v72 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v28 = [NSError errorWithDomain:v24 code:-127 userInfo:v27];

LABEL_30:
    [(UASharedPasteboardInputStreamManager *)self streamDoneWithInfo:0 error:v28];

    goto LABEL_74;
  }

  if (a4 != 2)
  {
    goto LABEL_74;
  }

  v12 = [(UASharedPasteboardInputStreamManager *)self expectedLength];
  v13 = [(UASharedPasteboardInputStreamManager *)self bytesReceived];
  if (v12 - v13 >= 0x10000)
  {
    v14 = 0x10000;
  }

  else
  {
    v14 = v12 - v13;
  }

  if (v12 - v13 <= 0)
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = v14;
  }

  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v6 read:v16 maxLength:?];
  [(UASharedPasteboardInputStreamManager *)self setBytesReceived:&v17[[(UASharedPasteboardInputStreamManager *)self bytesReceived]]];
  v18 = [(UASharedPasteboardInputStreamManager *)self state];
  if (v18 == 2)
  {
    if ([(UASharedPasteboardInputStreamManager *)self receivedDelem])
    {
      v33 = [(UASharedPasteboardInputStreamManager *)self progress];
      [v33 setCompletedUnitCount:{-[UASharedPasteboardInputStreamManager bytesReceived](self, "bytesReceived")}];

      v34 = [(UASharedPasteboardInputStreamManager *)self absoluteToNSec:mach_absolute_time() - [(UASharedPasteboardInputStreamManager *)self streamStartTime]]/ 1000000000.0;
      v35 = [(UASharedPasteboardInputStreamManager *)self bytesReceived]/ v34;
      v36 = [(UASharedPasteboardInputStreamManager *)self progress];
      v37 = [NSNumber numberWithDouble:v35];
      [v36 setUserInfoObject:v37 forKey:NSProgressThroughputKey];

      v38 = [(UASharedPasteboardInputStreamManager *)self expectedLength];
      v39 = (v38 - [(UASharedPasteboardInputStreamManager *)self bytesReceived]) / v35;
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
        v43 = [(UASharedPasteboardInputStreamManager *)self progress];
        v44 = [NSNumber numberWithDouble:*&qword_1000E5DA8];
        [v43 setUserInfoObject:v44 forKey:NSProgressEstimatedTimeRemainingKey];
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
        v46 = [NSError errorWithDomain:v67 code:-122 userInfo:v68];

        [(UASharedPasteboardInputStreamManager *)self streamDoneWithInfo:0 error:v46];
        v45 = 0;
        goto LABEL_67;
      }

      v51 = [(UASharedPasteboardInputStreamManager *)self progress];
      [v51 setTotalUnitCount:{-[UASharedPasteboardInputStreamManager expectedLength](self, "expectedLength")}];

      v52 = [(UASharedPasteboardInputStreamManager *)self progress];
      [v52 setCompletedUnitCount:{-[UASharedPasteboardInputStreamManager bytesReceived](self, "bytesReceived")}];

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

    v46 = [(UASharedPasteboardInputStreamManager *)self file];
    [v46 writeData:v45];
LABEL_67:

LABEL_68:
    v69 = [(UASharedPasteboardInputStreamManager *)self bytesReceived];
    if (v69 < [(UASharedPasteboardInputStreamManager *)self expectedLength])
    {
      goto LABEL_73;
    }

    v70 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Received data file", buf, 2u);
    }

    v64 = [(UASharedPasteboardInputStreamManager *)self pbwrapper];
    [(UASharedPasteboardInputStreamManager *)self streamDoneWithInfo:v64 error:0];
LABEL_72:

    goto LABEL_73;
  }

  if (v18 != 1)
  {
    if (v18)
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

    v32 = [(UASharedPasteboardInputStreamManager *)self receivedData];
    [v32 appendBytes:v16 + 3 length:v17 - 3];

    [(UASharedPasteboardInputStreamManager *)self setReceivedDelem:1];
  }

  else if ([(UASharedPasteboardInputStreamManager *)self receivedDelem])
  {
    v47 = [(UASharedPasteboardInputStreamManager *)self receivedData];
    [v47 appendBytes:v16 length:v17];
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

  v58 = [(UASharedPasteboardInputStreamManager *)self bytesReceived];
  if (v58 == [(UASharedPasteboardInputStreamManager *)self expectedLength])
  {
    v59 = [NSKeyedUnarchiver alloc];
    v60 = [(UASharedPasteboardInputStreamManager *)self receivedData];
    v45 = [v59 initForReadingFromData:v60 error:0];

    v61 = [v45 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [(UASharedPasteboardInputStreamManager *)self setPbwrapper:v61];

    [(UASharedPasteboardInputStreamManager *)self setState:2];
    v62 = [(UASharedPasteboardInputStreamManager *)self pbwrapper];
    v63 = [v62 pbinfo];
    -[UASharedPasteboardInputStreamManager setExpectedLength:](self, "setExpectedLength:", [v63 dataSize] + 3);

    [(UASharedPasteboardInputStreamManager *)self setBytesReceived:0];
    [(UASharedPasteboardInputStreamManager *)self setReceivedDelem:0];
    [v45 finishDecoding];
    v64 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = [(UASharedPasteboardInputStreamManager *)self pbwrapper];
      *buf = 138412290;
      v76 = v65;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "[IN STREAM] Received Header: %@", buf, 0xCu);
    }

    goto LABEL_72;
  }

LABEL_74:
}

- (unint64_t)absoluteToNSec:(unint64_t)a3
{
  v4 = dword_1000E5DB4;
  if (!dword_1000E5DB4)
  {
    mach_timebase_info(&dword_1000E5DB0);
    v4 = dword_1000E5DB4;
  }

  return dword_1000E5DB0 * a3 / v4;
}

@end