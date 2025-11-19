@interface UCStreamCoderV2
- (UCStreamCoderV2)initWithInputStream:(id)a3 outputStream:(id)a4;
- (id)fetchDataForType:(id)a3;
- (id)packMessage:(id)a3;
- (id)unpackMessage:(id)a3;
- (void)calculateTimeRemaining;
- (void)cancelReceive;
- (void)completedReceivingPasteboardWithError:(id)a3;
- (void)dealloc;
- (void)filePackagerError:(id)a3;
- (void)handleHeartbeat:(id)a3;
- (void)handlePasteboardAuxInfoReceived:(id)a3;
- (void)handlePasteboardDataRequest:(id)a3;
- (void)handlePasteboardDataResponse:(id)a3;
- (void)handlePasteboardFileRequest:(id)a3;
- (void)handlePasteboardFileResponse:(id)a3;
- (void)handlePasteboardInfoRequest:(id)a3;
- (void)handlePasteboardInfoResponse:(id)a3;
- (void)packager:(id)a3 gotData:(id)a4 forPacket:(int64_t)a5;
- (void)processPasteboardInfo:(id)a3;
- (void)receivedPasteboardInfo:(id)a3 withError:(id)a4;
- (void)recvStop:(id)a3;
- (void)removeObject:(id)a3;
- (void)removeReceivedItems:(id)a3;
- (void)sendCompletedWithError:(id)a3;
- (void)sendFileArchiveRequest;
- (void)sendHeartbeat;
- (void)sendPasteboard:(id)a3 withCompletion:(id)a4;
- (void)sendPasteboardDataRequest;
- (void)sendPasteboardDataResponse;
- (void)sendPasteboardInfoRequest;
- (void)sendPasteboardInfoResponse;
- (void)sendStopWithError:(int64_t)a3;
- (void)sendTotalSendSize;
- (void)setState:(int64_t)a3;
- (void)storeObject:(id)a3;
- (void)streams:(id)a3 didReadMessage:(id)a4 withTag:(int64_t)a5;
- (void)streams:(id)a3 didWriteMessageWithTag:(int64_t)a4;
- (void)streamsDidClose:(id)a3 withError:(id)a4;
@end

@implementation UCStreamCoderV2

- (UCStreamCoderV2)initWithInputStream:(id)a3 outputStream:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = UCStreamCoderV2;
  v8 = [(UCStreamCoderV2 *)&v28 init];
  if (v8)
  {
    v9 = [[UAStreamHandler alloc] initWithInputStream:v6 outputStream:v7 delegate:v8];
    [(UCStreamCoderV2 *)v8 setStreamHandler:v9];

    v10 = objc_alloc_init(NSMutableDictionary);
    [(UCStreamCoderV2 *)v8 setArchivePackagers:v10];

    v11 = objc_alloc_init(NSMutableArray);
    [(UCStreamCoderV2 *)v8 setArchiveQueue:v11];

    v12 = objc_alloc_init(NSMutableArray);
    [(UCStreamCoderV2 *)v8 setRequestedArchives:v12];

    v13 = objc_alloc_init(NSMutableDictionary);
    [(UCStreamCoderV2 *)v8 setUuidItemMap:v13];

    v14 = objc_alloc_init(NSMutableArray);
    [(UCStreamCoderV2 *)v8 setObjects:v14];

    v15 = [(UCStreamCoderV2 *)v8 streamHandler];
    [v15 start];

    [(UCStreamCoderV2 *)v8 setState:0];
    v16 = +[UAUserActivityDefaults sharedDefaults];
    [v16 pasteboardStreamWatchdogTimeout];
    v18 = v17;

    objc_initWeak(&location, v8);
    v19 = [UADispatchWatchdog alloc];
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_10001847C;
    v25 = &unk_1000C4EB8;
    objc_copyWeak(&v26, &location);
    v20 = [(UADispatchWatchdog *)v19 initWithName:@"UC Stream Watchdog" timeout:&v22 block:v18];
    [(UCStreamCoderV2 *)v8 setWatchdog:v20, v22, v23, v24, v25];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)dealloc
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[CODERV2] dealloc", buf, 2u);
  }

  v4 = [(UCStreamCoderV2 *)self streamHandler];
  [v4 stop];

  v5.receiver = self;
  v5.super_class = UCStreamCoderV2;
  [(UCStreamCoderV2 *)&v5 dealloc];
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    v5 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_100018758(self->_state);
      v7 = sub_100018758(a3);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[CODERV2] State: %@ -> %@", &v8, 0x16u);
    }

    self->_state = a3;
  }
}

- (void)storeObject:(id)a3
{
  v6 = a3;
  v4 = [(UCStreamCoderV2 *)self objects];
  objc_sync_enter(v4);
  v5 = [(UCStreamCoderV2 *)self objects];
  [v5 addObject:v6];

  objc_sync_exit(v4);
}

- (void)removeObject:(id)a3
{
  v6 = a3;
  v4 = [(UCStreamCoderV2 *)self objects];
  objc_sync_enter(v4);
  v5 = [(UCStreamCoderV2 *)self objects];
  [v5 removeObject:v6];

  objc_sync_exit(v4);
}

- (void)streamsDidClose:(id)a3 withError:(id)a4
{
  v5 = a4;
  v6 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[CODERV2] Streams closed: %{public}@", &v8, 0xCu);
  }

  v7 = [(UCStreamCoderV2 *)self receivedInfo];
  [(UCStreamCoderV2 *)self receivedPasteboardInfo:v7 withError:v5];

  [(UCStreamCoderV2 *)self completedReceivingPasteboardWithError:v5];
  [(UCStreamCoderV2 *)self sendCompletedWithError:v5];
}

- (void)streams:(id)a3 didReadMessage:(id)a4 withTag:(int64_t)a5
{
  v7 = a4;
  v8 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_100018BB8(a5);
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[CODERV2] Reveived message for tag %{public}@", &v11, 0xCu);
  }

  v10 = [(UCStreamCoderV2 *)self watchdog];
  [v10 poke];

  if (a5 > 6)
  {
    if (a5 > 8)
    {
      if (a5 == 9)
      {
        [(UCStreamCoderV2 *)self handlePasteboardAuxInfoReceived:v7];
      }

      else if (a5 == 10)
      {
        [(UCStreamCoderV2 *)self handleHeartbeat:v7];
      }
    }

    else if (a5 == 7)
    {
      [(UCStreamCoderV2 *)self handlePasteboardFileRequest:v7];
    }

    else
    {
      [(UCStreamCoderV2 *)self handlePasteboardFileResponse:v7];
    }
  }

  else if (a5 > 4)
  {
    if (a5 == 5)
    {
      [(UCStreamCoderV2 *)self handlePasteboardDataRequest:v7];
    }

    else
    {
      [(UCStreamCoderV2 *)self handlePasteboardDataResponse:v7];
    }
  }

  else if (a5 == 3)
  {
    [(UCStreamCoderV2 *)self handlePasteboardInfoRequest:v7];
  }

  else if (a5 == 4)
  {
    [(UCStreamCoderV2 *)self handlePasteboardInfoResponse:v7];
  }
}

- (void)streams:(id)a3 didWriteMessageWithTag:(int64_t)a4
{
  v6 = a3;
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = sub_100018BB8(a4);
    v26 = 138543362;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[CODERV2] Did write tag %{public}@", &v26, 0xCu);
  }

  v9 = [(UCStreamCoderV2 *)self watchdog];
  [v9 poke];

  v10 = [(UCStreamCoderV2 *)self state];
  if (v10 == 2)
  {
    v11 = 3;
  }

  else
  {
    if (v10 != 5)
    {
      goto LABEL_8;
    }

    v11 = 1;
  }

  [(UCStreamCoderV2 *)self setState:v11];
LABEL_8:
  if (a4)
  {
    if (a4 == 8)
    {
      v16 = [(UCStreamCoderV2 *)self archiveQueue];
      objc_sync_enter(v16);
      v17 = [(UCStreamCoderV2 *)self archiveQueue];
      v18 = [v17 firstObject];

      if (v18)
      {
        v19 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v26 = 138543362;
          v27 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[CODERV2] Requesting delivery for %{public}@", &v26, 0xCu);
        }

        v20 = [(UCStreamCoderV2 *)self archivePackagers];
        v21 = [v20 objectForKeyedSubscript:v18];

        v22 = [v21 deliverNextPacket];
        v23 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v26 = 67109120;
          LODWORD(v27) = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "[CODERV2] Req result: %d", &v26, 8u);
        }
      }

      else
      {
        v25 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "[CODERV2] Done sending archive chunks", &v26, 2u);
        }

        [(UCStreamCoderV2 *)self setState:1];
      }

      objc_sync_exit(v16);
    }

    else if (a4 == 6)
    {
      v12 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[CODERV2] Did write data chunk", &v26, 2u);
      }

      v13 = [(UCStreamCoderV2 *)self filePackager];
      v14 = [v13 deliverNextPacket];

      if ((v14 & 1) == 0)
      {
        v15 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "[CODERV2] Done writting pasteboard data chunks", &v26, 2u);
        }

        [(UCStreamCoderV2 *)self setState:1];
      }
    }
  }

  else
  {
    v24 = [(UCStreamCoderV2 *)self streamHandler];
    [v24 stop];
  }
}

- (void)sendStopWithError:(int64_t)a3
{
  v5 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[CODERV2] Stopping", v10, 2u);
  }

  [(UCStreamCoderV2 *)self setState:8];
  if (a3)
  {
    v11 = @"error";
    v6 = [NSNumber numberWithInteger:a3];
    v12 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    v8 = [(UCStreamCoderV2 *)self packMessage:v7];
    v9 = [(UCStreamCoderV2 *)self streamHandler];
    [v9 writeMessage:v8 tag:0];
  }
}

- (void)recvStop:(id)a3
{
  v4 = [(UCStreamCoderV2 *)self unpackMessage:a3];
  v5 = [v4 objectForKeyedSubscript:@"error"];
  v6 = [v5 integerValue];

  v7 = [NSError alloc];
  v8 = [v7 initWithDomain:UAContinuityErrorDomain code:v6 userInfo:0];
  v9 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Received stop message with error: %@", &v11, 0xCu);
  }

  [(UCStreamCoderV2 *)self receivedPasteboardInfo:0 withError:v8];
  [(UCStreamCoderV2 *)self completedReceivingPasteboardWithError:v8];
  [(UCStreamCoderV2 *)self sendCompletedWithError:v8];
  v10 = [(UCStreamCoderV2 *)self streamHandler];
  [v10 stop];
}

- (void)handlePasteboardInfoRequest:(id)a3
{
  v4 = a3;
  [(UCStreamCoderV2 *)self setState:4];
  v5 = [(UCStreamCoderV2 *)self unpackMessage:v4];

  [(UCStreamCoderV2 *)self sendPasteboardInfoResponse];
}

- (void)handlePasteboardDataRequest:(id)a3
{
  v4 = a3;
  [(UCStreamCoderV2 *)self setState:4];
  v5 = [(UCStreamCoderV2 *)self unpackMessage:v4];

  [(UCStreamCoderV2 *)self sendPasteboardDataResponse];
}

- (void)handlePasteboardFileRequest:(id)a3
{
  v4 = a3;
  [(UCStreamCoderV2 *)self setState:4];
  v35 = self;
  v33 = v4;
  v34 = [(UCStreamCoderV2 *)self unpackMessage:v4];
  v36 = [v34 objectForKeyedSubscript:@"uuid"];
  v5 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = v36;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[CODERV2] Archvie requested for UUID: %@", buf, 0xCu);
  }

  v6 = [(UCStreamCoderV2 *)self archivePackagers];
  v7 = [v6 allKeys];
  v8 = [v7 containsObject:v36];

  if (v8)
  {
    goto LABEL_15;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v9 = [(UCStreamCoderV2 *)self sendingInfo];
  v10 = [v9 pbinfo];
  obj = [v10 items];

  v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v11)
  {
    v12 = 0;
    v13 = *v39;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        v16 = [v15 types];
        v17 = [v16 allKeys];
        v18 = [v17 containsObject:@"public.file-url"];

        if (v18)
        {
          v19 = [v15 types];
          v20 = [v19 objectForKeyedSubscript:@"public.file-url"];
          v21 = [v20 uuid];
          v22 = [v21 UUIDString];
          v23 = [v22 isEqualToString:v36];

          v12 |= v23;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v11);

    if (v12)
    {
      v24 = [(UCStreamCoderV2 *)v35 requestedArchives];
      objc_sync_enter(v24);
      v25 = [(UCStreamCoderV2 *)v35 requestedArchives];
      [v25 addObject:v36];

      objc_sync_exit(v24);
LABEL_15:
      v26 = [(UCStreamCoderV2 *)v35 archiveQueue];
      objc_sync_enter(v26);
      v27 = [(UCStreamCoderV2 *)v35 archiveQueue];
      [v27 addObject:v36];

      v28 = [(UCStreamCoderV2 *)v35 archiveQueue];
      v29 = [v28 firstObject];

      if ([v29 isEqualToString:v36])
      {
        v30 = [(UCStreamCoderV2 *)v35 archivePackagers];
        v31 = [v30 objectForKeyedSubscript:v36];
        [v31 deliverNextPacket];

        v32 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v44 = v36;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[CODERV2] Delivering file packets for UUID: %@", buf, 0xCu);
        }
      }

      objc_sync_exit(v26);
      goto LABEL_23;
    }
  }

  else
  {
  }

  v26 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v44 = v36;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "[CODERV2] File requested with invalid UUID: %{public}@", buf, 0xCu);
  }

LABEL_23:
}

- (void)handlePasteboardInfoResponse:(id)a3
{
  v4 = a3;
  [(UCStreamCoderV2 *)self setState:7];
  v5 = [(UCStreamCoderV2 *)self unpackMessage:v4];

  v6 = [v5 objectForKeyedSubscript:@"data"];
  if (v6)
  {
    v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:0];
    v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [(UCStreamCoderV2 *)self setReceivedInfo:v8];

    v9 = [(UCStreamCoderV2 *)self progress];
    [v9 setCompletedUnitCount:0];

    v10 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[CODERV2] Received pasteboard info, requesting data", &v15, 2u);
    }

    [(UCStreamCoderV2 *)self sendPasteboardDataRequest];
    v11 = [(UCStreamCoderV2 *)self receivedInfo];
    [(UCStreamCoderV2 *)self processPasteboardInfo:v11];
  }

  else
  {
    v12 = UAContinuityErrorDomain;
    v17 = NSLocalizedDescriptionKey;
    v18 = @"Invalid message header";
    v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v7 = [NSError errorWithDomain:v12 code:-122 userInfo:v13];

    [(UCStreamCoderV2 *)self receivedPasteboardInfo:0 withError:v7];
    [(UCStreamCoderV2 *)self completedReceivingPasteboardWithError:v7];
    v14 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[CODERV2] Error receiving pasteboard info: %{public}@", &v15, 0xCu);
    }

    [(UCStreamCoderV2 *)self sendStopWithError:0];
  }
}

- (void)handlePasteboardDataResponse:(id)a3
{
  v4 = a3;
  [(UCStreamCoderV2 *)self setState:7];
  v5 = [(UCStreamCoderV2 *)self unpackMessage:v4];

  v6 = [v5 objectForKeyedSubscript:@"data"];
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 objectForKeyedSubscript:@"packetNum"];
    v9 = [v5 objectForKeyedSubscript:@"totalNum"];
    *buf = 138543618;
    v25 = v8;
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[CODERV2] Received pasteboard data response (%{public}@/%{public}@)", buf, 0x16u);
  }

  -[UCStreamCoderV2 setBytesReceived:](self, "setBytesReceived:", [v6 length] + -[UCStreamCoderV2 bytesReceived](self, "bytesReceived"));
  v10 = [(UCStreamCoderV2 *)self progress];
  [v10 setCompletedUnitCount:{-[UCStreamCoderV2 bytesReceived](self, "bytesReceived")}];

  [(UCStreamCoderV2 *)self calculateTimeRemaining];
  v11 = [(UCStreamCoderV2 *)self receivingDataFile];
  v21 = 0;
  v12 = [v11 writeData:v6 error:&v21];
  v13 = v21;

  if (v12)
  {
    v14 = [v5 objectForKeyedSubscript:@"packetNum"];
    v15 = [v5 objectForKeyedSubscript:@"totalNum"];

    if (v14 == v15)
    {
      if ([(UCStreamCoderV2 *)self returnInfoEarly])
      {
        v16 = [(UCStreamCoderV2 *)self receivedInfo];
        [(UCStreamCoderV2 *)self receivedPasteboardInfo:v16 withError:0];
      }

      if ([(UCStreamCoderV2 *)self remoteHasFiles])
      {
        [(UCStreamCoderV2 *)self sendFileArchiveRequest];
      }

      else
      {
        [(UCStreamCoderV2 *)self completedReceivingPasteboardWithError:0];
      }
    }
  }

  else
  {
    v17 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[CODERV2] Error writing data to file: %{public}@", buf, 0xCu);
    }

    v18 = UAContinuityErrorDomain;
    v22 = NSUnderlyingErrorKey;
    v23 = v13;
    v19 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v20 = [NSError errorWithDomain:v18 code:-128 userInfo:v19];

    [(UCStreamCoderV2 *)self completedReceivingPasteboardWithError:v20];
    [(UCStreamCoderV2 *)self sendStopWithError:0];
  }
}

- (void)handlePasteboardFileResponse:(id)a3
{
  v4 = a3;
  [(UCStreamCoderV2 *)self setState:7];
  v5 = [(UCStreamCoderV2 *)self unpackMessage:v4];

  v6 = [v5 objectForKeyedSubscript:@"data"];
  v7 = [NSUUID alloc];
  v8 = [v5 objectForKeyedSubscript:@"uuid"];
  v9 = [v7 initWithUUIDString:v8];

  v10 = [v5 objectForKeyedSubscript:@"packetNum"];
  v11 = [v5 objectForKeyedSubscript:@"totalNum"];
  if (sub_10003F738([v10 intValue], objc_msgSend(v11, "intValue")))
  {
    [v10 floatValue];
    v13 = v12;
    [v11 floatValue];
    v15 = v14;
    v16 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 objectForKeyedSubscript:@"uuid"];
      v18 = [v5 objectForKeyedSubscript:@"packetNum"];
      v19 = [v5 objectForKeyedSubscript:@"totalNum"];
      *buf = 138413058;
      v38 = v17;
      v39 = 2048;
      v40 = ((v13 / v15) * 100.0);
      v41 = 2114;
      v42 = v18;
      v43 = 2114;
      v44 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[CODERV2] Received pasteboard file response %@ %ld%% (%{public}@/%{public}@)", buf, 0x2Au);
    }
  }

  -[UCStreamCoderV2 setBytesReceived:](self, "setBytesReceived:", [v6 length] + -[UCStreamCoderV2 bytesReceived](self, "bytesReceived"));
  v20 = [(UCStreamCoderV2 *)self progress];
  [v20 setCompletedUnitCount:{-[UCStreamCoderV2 bytesReceived](self, "bytesReceived")}];

  [(UCStreamCoderV2 *)self calculateTimeRemaining];
  v21 = +[UASharedPasteboardDataManager sharedInstance];
  [v21 writeArchiveData:v6 forItem:v9];

  v22 = [v5 objectForKeyedSubscript:@"packetNum"];
  v23 = [v5 objectForKeyedSubscript:@"totalNum"];

  if (v22 == v23)
  {
    v24 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [v9 UUIDString];
      *buf = 138412290;
      v38 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[CODERV2] Received all data for archive: %@", buf, 0xCu);
    }

    v26 = +[UASharedPasteboardDataManager sharedInstance];
    [v26 finishWritingArchiveForUUID:v9];

    v27 = +[UASharedPasteboardDataManager sharedInstance];
    v28 = [v27 fileURLForPasteboardItem:v9];

    v29 = [UCExtractor alloc];
    v30 = [v9 UUIDString];
    v31 = [(UCExtractor *)v29 initWithDestinationURL:v28 forArchiveUUID:v30];

    [(UCStreamCoderV2 *)self storeObject:v31];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10001A25C;
    v33[3] = &unk_1000C4EE0;
    v34 = v9;
    v35 = self;
    v36 = v31;
    v32 = v31;
    [(UCExtractor *)v32 extractArchiveWithCompletion:v33];
  }
}

- (void)handlePasteboardAuxInfoReceived:(id)a3
{
  v4 = [(UCStreamCoderV2 *)self unpackMessage:a3];
  v5 = [v4 objectForKeyedSubscript:@"totalSize"];
  if (v5)
  {
    v6 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[CODERV2] Total expected data length: %{public}@", &v8, 0xCu);
    }

    -[UCStreamCoderV2 setExpectedLength:](self, "setExpectedLength:", [v5 integerValue]);
    v7 = [(UCStreamCoderV2 *)self progress];
    [v7 setTotalUnitCount:{objc_msgSend(v5, "integerValue")}];
  }
}

- (void)handleHeartbeat:(id)a3
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CODERV2] Sending heartbeat", v6, 2u);
  }

  v5 = [(UCStreamCoderV2 *)self watchdog];
  [v5 poke];
}

- (void)sendPasteboardInfoRequest
{
  v4 = [(UCStreamCoderV2 *)self packMessage:&off_1000CC808];
  [(UCStreamCoderV2 *)self setState:2];
  v3 = [(UCStreamCoderV2 *)self streamHandler];
  [v3 writeMessage:v4 tag:3];
}

- (void)sendPasteboardInfoResponse
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(UCStreamCoderV2 *)self sendingInfo];

  if (v4)
  {
    v5 = [(UCStreamCoderV2 *)self sendingInfo];
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];

    [v3 setObject:v6 forKeyedSubscript:@"data"];
  }

  v7 = [(UCStreamCoderV2 *)self packMessage:v3];
  v8 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[CODERV2] Sending pasteboard info", v10, 2u);
  }

  [(UCStreamCoderV2 *)self setState:5];
  v9 = [(UCStreamCoderV2 *)self streamHandler];
  [v9 writeMessage:v7 tag:4];
}

- (void)sendPasteboardDataRequest
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CODERV2] Sending pasteboard data request", v6, 2u);
  }

  v4 = [(UCStreamCoderV2 *)self packMessage:&off_1000CC830];
  [(UCStreamCoderV2 *)self setState:2];
  v5 = [(UCStreamCoderV2 *)self streamHandler];
  [v5 writeMessage:v4 tag:5];
}

- (void)sendFileArchiveRequest
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [(UCStreamCoderV2 *)self receivedInfo];
  v4 = [v3 pbinfo];
  v5 = [v4 items];

  v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    *&v7 = 138543362;
    v25 = v7;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [v11 types];
        v13 = [v12 allKeys];
        v14 = [v13 containsObject:@"public.file-url"];

        if (v14)
        {
          v15 = [v11 types];
          v16 = [v15 objectForKeyedSubscript:@"public.file-url"];
          v17 = [v16 uuid];
          v18 = [v17 UUIDString];

          v19 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = v25;
            v33 = v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[CODERV2] Requesting archive for UUID: %{public}@", buf, 0xCu);
          }

          v20 = +[UASharedPasteboardDataManager sharedInstance];
          v21 = [[NSUUID alloc] initWithUUIDString:v18];
          [v20 createTmpArchiveFileWithUUID:v21];

          v30[0] = @"supportsCompression";
          v30[1] = @"uuid";
          v31[0] = &__kCFBooleanFalse;
          v31[1] = v18;
          v22 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
          v23 = [(UCStreamCoderV2 *)self packMessage:v22];
          [(UCStreamCoderV2 *)self setState:2];
          v24 = [(UCStreamCoderV2 *)self streamHandler];
          [v24 writeMessage:v23 tag:7];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }
}

- (void)sendPasteboardDataResponse
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CODERV2] Building file packager to send pasteboard data", v11, 2u);
  }

  v4 = [UCFilePackager alloc];
  v5 = [(UCStreamCoderV2 *)self sendingDataFile];
  v6 = [(UCStreamCoderV2 *)self sendingInfo];
  v7 = [v6 pbinfo];
  v8 = -[UCFilePackager initWithFile:fileSize:packetSize:options:receiver:](v4, "initWithFile:fileSize:packetSize:options:receiver:", v5, [v7 dataSize], 0x10000, 0, self);
  [(UCStreamCoderV2 *)self setFilePackager:v8];

  v9 = [(UCStreamCoderV2 *)self filePackager];
  [v9 setTag:6];

  v10 = [(UCStreamCoderV2 *)self filePackager];
  [v10 deliverNextPacket];

  [(UCStreamCoderV2 *)self setState:6];
}

- (void)sendTotalSendSize
{
  v7 = @"totalSize";
  v3 = [NSNumber numberWithInteger:[(UCStreamCoderV2 *)self totalSendSize]];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v5 = [(UCStreamCoderV2 *)self packMessage:v4];
  v6 = [(UCStreamCoderV2 *)self streamHandler];
  [v6 writeMessage:v5 tag:9];
}

- (void)sendHeartbeat
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CODERV2] Sending heartbeat", v7, 2u);
  }

  v4 = [(UCStreamCoderV2 *)self watchdog];
  [v4 poke];

  v5 = [(UCStreamCoderV2 *)self streamHandler];
  v6 = [@"UCHB" dataUsingEncoding:1];
  [v5 writeMessage:v6 tag:10];
}

- (void)cancelReceive
{
  [(UCStreamCoderV2 *)self sendStopWithError:-125];
  v4 = [NSError errorWithDomain:UAContinuityErrorDomain code:-125 userInfo:0];
  [(UCStreamCoderV2 *)self receivedPasteboardInfo:0 withError:v4];
  [(UCStreamCoderV2 *)self completedReceivingPasteboardWithError:v4];
  v3 = [(UCStreamCoderV2 *)self watchdog];
  [v3 cancel];
}

- (void)receivedPasteboardInfo:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UCStreamCoderV2 *)self itemsLockedSem];
  if (v8)
  {
    v9 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(v8, v9))
    {
      v10 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[CODERV2] Timout waiting for item lock sememphore", buf, 2u);
      }
    }

    [(UCStreamCoderV2 *)self setItemsLockedSem:0];
  }

  v11 = self;
  objc_sync_enter(v11);
  v12 = [(UCStreamCoderV2 *)v11 infoRecvHandler];

  if (v12)
  {
    if (v7)
    {
      v13 = [(UCStreamCoderV2 *)v11 receivedInfo];
      [(UCStreamCoderV2 *)v11 removeReceivedItems:v13];
    }

    v14 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[CODERV2] Calling received info handler", v18, 2u);
    }

    v15 = [(UCStreamCoderV2 *)v11 infoRecvHandler];
    (v15)[2](v15, v6, v7);

    [(UCStreamCoderV2 *)v11 setInfoRecvHandler:0];
  }

  else
  {
    v16 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[CODERV2] Skipping call to received info handler", v17, 2u);
    }
  }

  objc_sync_exit(v11);
}

- (void)completedReceivingPasteboardWithError:(id)a3
{
  v4 = a3;
  v5 = [(UCStreamCoderV2 *)self receivedInfo];
  [(UCStreamCoderV2 *)self receivedPasteboardInfo:v5 withError:v4];

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(UCStreamCoderV2 *)v6 fileRecvHandler];

  if (v7)
  {
    if (v4)
    {
      v8 = [(UCStreamCoderV2 *)v6 receivedInfo];
      [(UCStreamCoderV2 *)v6 removeReceivedItems:v8];
    }

    v9 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[CODERV2] Calling pasteboard received handler", buf, 2u);
    }

    v10 = [(UCStreamCoderV2 *)v6 fileRecvHandler];
    v11 = [(UCStreamCoderV2 *)v6 streamHandler];
    (v10)[2](v10, v6, [v11 totalBytesReceived], v4);

    [(UCStreamCoderV2 *)v6 setFileRecvHandler:0];
    v12 = +[UASharedPasteboardDataManager sharedInstance];
    [v12 cleanupArchiveDir];
  }

  else
  {
    v12 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[CODERV2] Skipping call to pasteboard received handler", v14, 2u);
    }
  }

  objc_sync_exit(v6);
  v13 = [(UCStreamCoderV2 *)v6 watchdog];
  [v13 cancel];
}

- (void)removeReceivedItems:(id)a3
{
  v20 = a3;
  v3 = [v20 pbinfo];
  v4 = [v3 items];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [v20 pbinfo];
      v8 = [v7 items];
      v9 = [v8 objectAtIndexedSubscript:v6];

      v10 = [v9 types];
      v11 = [v10 allKeys];
      v12 = [v11 containsObject:@"public.file-url"];

      if (v12)
      {
        v13 = [v9 types];
        v14 = [v13 objectForKeyedSubscript:@"public.file-url"];
        v15 = [v14 uuid];

        v16 = +[UASharedPasteboardDataManager sharedInstance];
        [v16 cleanupForItem:v15];
      }

      ++v6;
      v17 = [v20 pbinfo];
      v18 = [v17 items];
      v19 = [v18 count];
    }

    while (v19 > v6);
  }
}

- (void)processPasteboardInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 pbinfo];
  v6 = [v5 items];
  v7 = [v6 count];

  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v35 = v37;
    *&v8 = 67109378;
    v34 = v8;
    do
    {
      v11 = [v4 pbinfo];
      v12 = [v11 items];
      v13 = [v12 objectAtIndexedSubscript:v9];

      v14 = [v13 types];
      v15 = [v14 allKeys];
      v16 = [v15 containsObject:@"public.file-url"];

      if (v16)
      {
        v17 = [v13 types];
        v18 = [v17 objectForKeyedSubscript:@"public.file-url"];
        v19 = [v18 uuid];

        v20 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v19 UUIDString];
          *buf = v34;
          v40 = v9;
          v41 = 2112;
          v42 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[CODERV2] Item %d has public.file-url with uuid: %@", buf, 0x12u);
        }

        v10 = (v10 + 1);

        v22 = +[UASharedPasteboardDataManager sharedInstance];
        [v22 createTmpArchiveFileWithUUID:v19];

        [(UCStreamCoderV2 *)self setRemoteHasFiles:1];
        v23 = [NSNumber numberWithInt:v9];
        v24 = [(UCStreamCoderV2 *)self uuidItemMap];
        v25 = [v19 UUIDString];
        [v24 setObject:v23 forKeyedSubscript:v25];

        v26 = +[UASharedPasteboardDataManager sharedInstance];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v37[0] = sub_10001B880;
        v37[1] = &unk_1000C4F00;
        v38 = v9;
        [v26 obtainLockForItem:v19 completion:v36];
      }

      ++v9;
      v27 = [v4 pbinfo];
      v28 = [v27 items];
      v29 = [v28 count];
    }

    while (v29 > v9);
  }

  else
  {
    v10 = 0;
  }

  v30 = [(UCStreamCoderV2 *)self progress];
  v31 = [NSNumber numberWithInt:v10];
  [v30 setUserInfoObject:v31 forKey:@"numFiles"];

  v32 = [(UCStreamCoderV2 *)self itemsLockedSem];
  v33 = v32;
  if (v32)
  {
    dispatch_semaphore_signal(v32);
  }
}

- (void)calculateTimeRemaining
{
  v3 = [UADiagnosticUtils absoluteToNSec:mach_absolute_time() - [(UCStreamCoderV2 *)self streamStartTime]]/ 1000000000.0;
  v4 = [(UCStreamCoderV2 *)self bytesReceived]/ v3;
  v5 = [(UCStreamCoderV2 *)self progress];
  v6 = [NSNumber numberWithDouble:v4];
  [v5 setUserInfoObject:v6 forKey:NSProgressThroughputKey];

  v7 = [(UCStreamCoderV2 *)self expectedLength];
  v8 = (v7 - [(UCStreamCoderV2 *)self bytesReceived]) / v4;
  if (*&qword_1000E5C00 != 0.0)
  {
    v8 = v8 * 0.5 + *&qword_1000E5C00 * 0.5;
  }

  qword_1000E5C00 = *&v8;
  v9 = +[UAUserActivityDefaults sharedDefaults];
  [v9 pasteboardUITimeRemainingDelay];
  v11 = v10;

  if (v3 > v11)
  {
    v13 = [(UCStreamCoderV2 *)self progress];
    v12 = [NSNumber numberWithDouble:*&qword_1000E5C00];
    [v13 setUserInfoObject:v12 forKey:NSProgressEstimatedTimeRemainingKey];
  }
}

- (void)sendPasteboard:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v65 = a4;
  v71 = self;
  [(UCStreamCoderV2 *)self setSendingInfo:v6];
  v66 = v6;
  v7 = [v6 pbinfo];
  v8 = [v7 dataFile];
  [(UCStreamCoderV2 *)self setSendingDataFile:v8];

  v9 = [v66 pbinfo];
  -[UCStreamCoderV2 setTotalSendSize:](self, "setTotalSendSize:", [v9 dataSize] + -[UCStreamCoderV2 totalSendSize](self, "totalSendSize"));

  v10 = [(UCStreamCoderV2 *)self sendingInfo];
  v11 = [v10 pbinfo];
  [v11 setDataFile:0];

  [(UCStreamCoderV2 *)self setSendErrorHandler:v65];
  objc_initWeak(&location, self);
  v12 = &_dispatch_main_q;
  v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  [(UCStreamCoderV2 *)self setHeartBeatTrigger:v13];

  v14 = [(UCStreamCoderV2 *)self heartBeatTrigger];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001C54C;
  handler[3] = &unk_1000C4EB8;
  objc_copyWeak(&v82, &location);
  dispatch_source_set_event_handler(v14, handler);

  v15 = [(UCStreamCoderV2 *)self heartBeatTrigger];
  dispatch_source_set_timer(v15, 0, 0x12A05F200uLL, 0x12A05F200uLL);

  v16 = [(UCStreamCoderV2 *)self heartBeatTrigger];
  dispatch_activate(v16);

  v17 = [(UCStreamCoderV2 *)self watchdog];
  [v17 start];

  v18 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[CODERV2] Setup to send pasteboard, waiting", buf, 2u);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v19 = [(UCStreamCoderV2 *)self sendingInfo];
  v20 = [v19 pbinfo];
  obj = [v20 items];

  v21 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
  if (v21)
  {
    v68 = *v78;
    while (2)
    {
      v69 = v21;
      for (i = 0; i != v69; i = i + 1)
      {
        if (*v78 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v77 + 1) + 8 * i);
        v24 = [v23 types];
        v25 = [v24 allKeys];
        v26 = [v25 containsObject:@"public.file-url"];

        if (v26)
        {
          v27 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[CODERV2] Sending pasteboard with files", buf, 2u);
          }

          v28 = [v23 types];
          v29 = [v28 objectForKeyedSubscript:@"public.file-url"];
          v70 = [v29 uuid];

          v30 = [v23 types];
          v31 = [v30 objectForKeyedSubscript:@"public.file-url"];
          v32 = [(UCStreamCoderV2 *)v71 fetchDataForType:v31];

          v33 = [v23 types];
          v34 = [v33 objectForKeyedSubscript:@"com.apple.security.sandbox-extension-dict"];
          v35 = [(UCStreamCoderV2 *)v71 fetchDataForType:v34];

          v36 = [NSURL URLWithDataRepresentation:v32 relativeToURL:0];
          v37 = [NSPropertyListSerialization propertyListWithData:v35 options:0 format:0 error:0];
          if (v37)
          {
            v38 = [v36 path];
            v39 = [v37 objectForKeyedSubscript:v38];
            v40 = sub_100001A30(@"pasteboard-server");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138478083;
              v85 = v39;
              v86 = 2113;
              v87 = v38;
              _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEBUG, "[CODERV2] Got extension data: %{private}@ for path %{private}@", buf, 0x16u);
            }

            v41 = [NSString alloc];
            v42 = v39;
            v43 = [v41 initWithBytes:objc_msgSend(v39 length:"bytes") encoding:{objc_msgSend(v39, "length"), 4}];
            v44 = v43;
            if (v43 && [v43 length] && (v45 = v44, objc_msgSend(v44, "cStringUsingEncoding:", 4)))
            {
              v46 = sandbox_extension_consume();
            }

            else
            {
              v46 = -1;
            }

            v47 = sub_100001A30(@"pasteboard-server");
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v85 = v46;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEBUG, "[CODERV2] Got extension id: %lld", buf, 0xCu);
            }
          }

          else
          {
            v48 = [v36 path];
            v49 = +[UASharedPasteboardDataManager sharedInstance];
            v50 = [v49 fileURLForCloneItems];
            v51 = [v50 path];
            v52 = [v48 hasPrefix:v51];

            if (!v52)
            {
              v64 = sub_100001A30(@"pasteboard-server");
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "[CODERV2] Error getting sandbox info", buf, 2u);
              }

              [(UCStreamCoderV2 *)v71 sendStopWithError:-122];
              goto LABEL_39;
            }

            v38 = sub_100001A30(&stru_1000C67D0);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "[CODERV2] Archiving item in our clone dir, no need for sandbox ext", buf, 2u);
            }

            v46 = -1;
          }

          v53 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v85 = v36;
            _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_INFO, "[CODERV2] Starting to archive %@", buf, 0xCu);
          }

          v54 = [UCArchiver alloc];
          v55 = [v70 UUIDString];
          v56 = [(UCArchiver *)v54 initWithURL:v36 typeUUID:v55];

          [(UCStreamCoderV2 *)v71 storeObject:v56];
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_10001C58C;
          v72[3] = &unk_1000C4F28;
          v72[4] = v71;
          v57 = v36;
          v73 = v57;
          v58 = v70;
          v74 = v58;
          v76 = v46;
          v59 = v56;
          v75 = v59;
          [(UCArchiver *)v59 archiveURLWithCompletion:v72];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v60 = [(UCStreamCoderV2 *)v71 objects];
  v61 = [v60 count] == 0;

  if (v61)
  {
    v62 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v63 = [NSNumber numberWithInteger:[(UCStreamCoderV2 *)v71 totalSendSize]];
      *buf = 138412290;
      v85 = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "[CODERV2] No files to archive, total send size: %@", buf, 0xCu);
    }

    [(UCStreamCoderV2 *)v71 sendTotalSendSize];
  }

  [(UCStreamCoderV2 *)v71 setState:1];
LABEL_39:
  objc_destroyWeak(&v82);
  objc_destroyWeak(&location);
}

- (void)sendCompletedWithError:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(UCStreamCoderV2 *)v5 sendErrorHandler];

  if (v6)
  {
    v7 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[CODERV2] Calling pasteboard sent handler", buf, 2u);
    }

    v8 = [(UCStreamCoderV2 *)v5 sendErrorHandler];
    v9 = [(UCStreamCoderV2 *)v5 streamHandler];
    (v8)[2](v8, v5, [v9 totalBytesSent], v4);

    [(UCStreamCoderV2 *)v5 setSendErrorHandler:0];
  }

  else
  {
    v10 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[CODERV2] Skipping call to pasteboard sent handler", v14, 2u);
    }
  }

  objc_sync_exit(v5);

  v11 = [(UCStreamCoderV2 *)v5 watchdog];
  [v11 cancel];

  v12 = [(UCStreamCoderV2 *)v5 heartBeatTrigger];
  v13 = v12;
  if (v12)
  {
    dispatch_source_cancel(v12);
    [(UCStreamCoderV2 *)v5 setHeartBeatTrigger:0];
  }

  [(UCStreamCoderV2 *)v5 setState:8];
}

- (void)packager:(id)a3 gotData:(id)a4 forPacket:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 tag];
  v11 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v29 = 67109376;
    *v30 = a5;
    *&v30[4] = 2048;
    *&v30[6] = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[CODERV2] Got data from packager, packet #: %d, tag: %ld", &v29, 0x12u);
  }

  if ([v8 totalPacketCount] == a5)
  {
    v12 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v8 uuid];
      v29 = 134218242;
      *v30 = v10;
      *&v30[8] = 2114;
      *&v30[10] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[CODERV2] Finished sending packages: %ld / %{public}@", &v29, 0x16u);
    }

    v14 = [(UCStreamCoderV2 *)self filePackager];
    v15 = v14 == v8;

    if (v15)
    {
      [(UCStreamCoderV2 *)self setFilePackager:0];
    }

    else
    {
      v16 = [v8 uuid];

      if (v16)
      {
        v17 = [(UCStreamCoderV2 *)self archiveQueue];
        objc_sync_enter(v17);
        v18 = [(UCStreamCoderV2 *)self archivePackagers];
        v19 = [v8 uuid];
        [v18 setObject:0 forKeyedSubscript:v19];

        v20 = [(UCStreamCoderV2 *)self archiveQueue];
        v21 = [v8 uuid];
        [v20 removeObject:v21];

        objc_sync_exit(v17);
      }
    }
  }

  if (v10)
  {
    v22 = objc_alloc_init(NSMutableDictionary);
    v23 = [NSNumber numberWithInteger:a5];
    [v22 setObject:v23 forKeyedSubscript:@"packetNum"];

    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 totalPacketCount]);
    [v22 setObject:v24 forKeyedSubscript:@"totalNum"];

    [v22 setObject:v9 forKeyedSubscript:@"data"];
    v25 = [v8 uuid];

    if (v25)
    {
      v26 = [v8 uuid];
      [v22 setObject:v26 forKeyedSubscript:@"uuid"];
    }

    v27 = [(UCStreamCoderV2 *)self packMessage:v22];
    v28 = [(UCStreamCoderV2 *)self streamHandler];
    [v28 writeMessage:v27 tag:v10];
  }
}

- (void)filePackagerError:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[CODERV2] Error from packager: %{public}@", &v6, 0xCu);
  }

  [(UCStreamCoderV2 *)self sendStopWithError:-122];
  [(UCStreamCoderV2 *)self sendCompletedWithError:v4];
}

- (id)packMessage:(id)a3
{
  v3 = _UACopyPackedDataForObject();

  return v3;
}

- (id)unpackMessage:(id)a3
{
  v3 = a3;
  [v3 bytes];
  [v3 length];

  v4 = _UACopyUnpackedObjectFromData();

  return v4;
}

- (id)fetchDataForType:(id)a3
{
  v4 = a3;
  v5 = [(UCStreamCoderV2 *)self sendingDataFile];
  objc_sync_enter(v5);
  v6 = [(UCStreamCoderV2 *)self sendingDataFile];
  v7 = [v4 offset];
  [v6 seekToFileOffset:{objc_msgSend(v7, "unsignedLongLongValue")}];

  v8 = [(UCStreamCoderV2 *)self sendingDataFile];
  v9 = [v8 readDataOfLength:{objc_msgSend(v4, "size")}];

  v10 = [(UCStreamCoderV2 *)self sendingDataFile];
  [v10 seekToFileOffset:0];

  objc_sync_exit(v5);

  return v9;
}

@end