@interface UASharedPasteboardOutputStreamManager
- (UASharedPasteboardOutputStreamManager)initWithOutputStream:(id)a3 inputStream:(id)a4 pasteboard:(id)a5;
- (id)headerForData:(id)a3;
- (void)sendTypes:(id)a3 completionHandler:(id)a4;
- (void)shutdownStream;
- (void)shutdownTimerFired:(id)a3;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation UASharedPasteboardOutputStreamManager

- (UASharedPasteboardOutputStreamManager)initWithOutputStream:(id)a3 inputStream:(id)a4 pasteboard:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = UASharedPasteboardOutputStreamManager;
  v11 = [(UASharedPasteboardOutputStreamManager *)&v19 init];
  v12 = v11;
  if (v11)
  {
    [(UASharedPasteboardOutputStreamManager *)v11 setStream:v8];
    [(UASharedPasteboardOutputStreamManager *)v12 setInStream:v9];
    [(UASharedPasteboardOutputStreamManager *)v12 setPbwrapper:v10];
    v13 = [(UASharedPasteboardOutputStreamManager *)v12 pbwrapper];
    v14 = [v13 pbinfo];
    v15 = [v14 dataFile];
    [(UASharedPasteboardOutputStreamManager *)v12 setDataFile:v15];

    v16 = [(UASharedPasteboardOutputStreamManager *)v12 pbwrapper];
    v17 = [v16 pbinfo];
    [v17 setDataFile:0];
  }

  return v12;
}

- (void)sendTypes:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(UASharedPasteboardOutputStreamManager *)self setDataSent:0];
  [(UASharedPasteboardOutputStreamManager *)self setTypesToSend:v6];
  [(UASharedPasteboardOutputStreamManager *)self setSendErrorHandler:v7];

  v8 = [(UASharedPasteboardOutputStreamManager *)self pbwrapper];
  v9 = [NSKeyedArchiver archivedDataWithRootObject:v8 requiringSecureCoding:1 error:0];

  v10 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(UASharedPasteboardOutputStreamManager *)self pbwrapper];
    v23 = 138412290;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Sending pboard info: %@", &v23, 0xCu);
  }

  v12 = [(UASharedPasteboardOutputStreamManager *)self headerForData:v9];
  [(UASharedPasteboardOutputStreamManager *)self setCurrentSendData:v12];

  v13 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = @"All";
    if (v6)
    {
      v14 = v6;
    }

    v23 = 138412290;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[OUT STREAM] Starting to send types: %@", &v23, 0xCu);
  }

  v15 = [(UASharedPasteboardOutputStreamManager *)self stream];
  [v15 setDelegate:self];

  v16 = [(UASharedPasteboardOutputStreamManager *)self inStream];
  [v16 setDelegate:self];

  v17 = [(UASharedPasteboardOutputStreamManager *)self stream];
  v18 = +[NSRunLoop mainRunLoop];
  [v17 scheduleInRunLoop:v18 forMode:NSRunLoopCommonModes];

  v19 = [(UASharedPasteboardOutputStreamManager *)self stream];
  [v19 open];

  v20 = [(UASharedPasteboardOutputStreamManager *)self inStream];
  v21 = +[NSRunLoop mainRunLoop];
  [v20 scheduleInRunLoop:v21 forMode:NSRunLoopCommonModes];

  v22 = [(UASharedPasteboardOutputStreamManager *)self inStream];
  [v22 open];
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

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = [(UASharedPasteboardOutputStreamManager *)self stream];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    if (a4 == 8)
    {
      v39 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v47 = 8;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "[OUT STREAM] Unexpected event code: %lu", buf, 0xCu);
      }

      [(UASharedPasteboardOutputStreamManager *)self shutdownStream];
      v35 = [(UASharedPasteboardOutputStreamManager *)self sendErrorHandler];
      v40 = [(UASharedPasteboardOutputStreamManager *)self dataSent];
      v41 = [NSError errorWithDomain:UAContinuityErrorDomain code:-127 userInfo:0];
LABEL_25:
      v38 = v41;
      v35[2](v35, v40, v41);
LABEL_26:

LABEL_27:
      goto LABEL_28;
    }

    if (a4 == 4)
    {
      v9 = [(UASharedPasteboardOutputStreamManager *)self currentSendData];
      if (!v9 || (v10 = v9, v11 = -[UASharedPasteboardOutputStreamManager byteIndex](self, "byteIndex"), -[UASharedPasteboardOutputStreamManager currentSendData](self, "currentSendData"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 length], v12, v10, v11 >= v13))
      {
        v14 = [(UASharedPasteboardOutputStreamManager *)self dataFile];
        v15 = [v14 readDataOfLength:0x10000];
        [(UASharedPasteboardOutputStreamManager *)self setCurrentSendData:v15];

        [(UASharedPasteboardOutputStreamManager *)self setByteIndex:0];
        v16 = [(UASharedPasteboardOutputStreamManager *)self currentSendData];
        v17 = [v16 length];

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

          v35 = +[NSRunLoop mainRunLoop];
          v44 = [(UASharedPasteboardOutputStreamManager *)self backupTimer];
          [v35 addTimer:v44 forMode:NSRunLoopCommonModes];

          goto LABEL_27;
        }
      }

      v18 = [(UASharedPasteboardOutputStreamManager *)self currentSendData];
      v19 = [v18 length];

      if (v19)
      {
        v20 = [(UASharedPasteboardOutputStreamManager *)self currentSendData];
        v21 = [v20 bytes];

        v22 = [(UASharedPasteboardOutputStreamManager *)self byteIndex];
        v23 = [(UASharedPasteboardOutputStreamManager *)self currentSendData];
        v24 = [v23 length];

        v25 = [(UASharedPasteboardOutputStreamManager *)self byteIndex];
        if (v24 - v25 >= 0x10000)
        {
          v26 = 0x10000;
        }

        else
        {
          v26 = v24 - v25;
        }

        v27 = [v6 write:&v21[v22] maxLength:v26];
        if (v27 != -1)
        {
          v28 = v27;
          [(UASharedPasteboardOutputStreamManager *)self setDataSent:&v27[[(UASharedPasteboardOutputStreamManager *)self dataSent]]];
          [(UASharedPasteboardOutputStreamManager *)self setByteIndex:&v28[[(UASharedPasteboardOutputStreamManager *)self byteIndex]]];
          goto LABEL_28;
        }

        [(UASharedPasteboardOutputStreamManager *)self shutdownStream];
        v35 = [(UASharedPasteboardOutputStreamManager *)self sendErrorHandler];
        v40 = [(UASharedPasteboardOutputStreamManager *)self dataSent];
        v41 = [v6 streamError];
        goto LABEL_25;
      }
    }
  }

  else
  {
    v29 = [(UASharedPasteboardOutputStreamManager *)self inStream];
    v30 = [v6 isEqual:v29];

    if (v30 && (a4 == 16 || a4 == 2))
    {
      v31 = [v6 read:v45 maxLength:10];
      if ((v31 & 0x8000000000000000) == 0)
      {
        v32 = v31;
        v33 = [NSString alloc];
        v34 = [NSData dataWithBytes:v45 length:v32];
        v35 = [v33 initWithData:v34 encoding:4];

        v36 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v35;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Got data back: %@", buf, 0xCu);
        }

        v37 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Stream End Encountered, shutting down", buf, 2u);
        }

        [(UASharedPasteboardOutputStreamManager *)self shutdownStream];
        v38 = [(UASharedPasteboardOutputStreamManager *)self sendErrorHandler];
        v38[2](v38, [(UASharedPasteboardOutputStreamManager *)self dataSent], 0);
        goto LABEL_26;
      }
    }
  }

LABEL_28:
}

- (void)shutdownTimerFired:(id)a3
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[OUT STREAM] Stream Timer Fired, shutting down", v6, 2u);
  }

  [(UASharedPasteboardOutputStreamManager *)self shutdownStream];
  v5 = [(UASharedPasteboardOutputStreamManager *)self sendErrorHandler];
  v5[2](v5, [(UASharedPasteboardOutputStreamManager *)self dataSent], 0);
}

- (void)shutdownStream
{
  v3 = [(UASharedPasteboardOutputStreamManager *)self backupTimer];
  [v3 invalidate];

  v4 = [(UASharedPasteboardOutputStreamManager *)self stream];
  [v4 close];

  v5 = [(UASharedPasteboardOutputStreamManager *)self stream];
  v6 = +[NSRunLoop mainRunLoop];
  [v5 removeFromRunLoop:v6 forMode:NSRunLoopCommonModes];

  v7 = [(UASharedPasteboardOutputStreamManager *)self inStream];
  [v7 close];

  v9 = [(UASharedPasteboardOutputStreamManager *)self inStream];
  v8 = +[NSRunLoop mainRunLoop];
  [v9 removeFromRunLoop:v8 forMode:NSRunLoopCommonModes];
}

@end