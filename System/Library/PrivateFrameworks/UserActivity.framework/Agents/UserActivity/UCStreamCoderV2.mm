@interface UCStreamCoderV2
- (UCStreamCoderV2)initWithInputStream:(id)stream outputStream:(id)outputStream;
- (id)fetchDataForType:(id)type;
- (id)packMessage:(id)message;
- (id)unpackMessage:(id)message;
- (void)calculateTimeRemaining;
- (void)cancelReceive;
- (void)completedReceivingPasteboardWithError:(id)error;
- (void)dealloc;
- (void)filePackagerError:(id)error;
- (void)handleHeartbeat:(id)heartbeat;
- (void)handlePasteboardAuxInfoReceived:(id)received;
- (void)handlePasteboardDataRequest:(id)request;
- (void)handlePasteboardDataResponse:(id)response;
- (void)handlePasteboardFileRequest:(id)request;
- (void)handlePasteboardFileResponse:(id)response;
- (void)handlePasteboardInfoRequest:(id)request;
- (void)handlePasteboardInfoResponse:(id)response;
- (void)packager:(id)packager gotData:(id)data forPacket:(int64_t)packet;
- (void)processPasteboardInfo:(id)info;
- (void)receivedPasteboardInfo:(id)info withError:(id)error;
- (void)recvStop:(id)stop;
- (void)removeObject:(id)object;
- (void)removeReceivedItems:(id)items;
- (void)sendCompletedWithError:(id)error;
- (void)sendFileArchiveRequest;
- (void)sendHeartbeat;
- (void)sendPasteboard:(id)pasteboard withCompletion:(id)completion;
- (void)sendPasteboardDataRequest;
- (void)sendPasteboardDataResponse;
- (void)sendPasteboardInfoRequest;
- (void)sendPasteboardInfoResponse;
- (void)sendStopWithError:(int64_t)error;
- (void)sendTotalSendSize;
- (void)setState:(int64_t)state;
- (void)storeObject:(id)object;
- (void)streams:(id)streams didReadMessage:(id)message withTag:(int64_t)tag;
- (void)streams:(id)streams didWriteMessageWithTag:(int64_t)tag;
- (void)streamsDidClose:(id)close withError:(id)error;
@end

@implementation UCStreamCoderV2

- (UCStreamCoderV2)initWithInputStream:(id)stream outputStream:(id)outputStream
{
  streamCopy = stream;
  outputStreamCopy = outputStream;
  v28.receiver = self;
  v28.super_class = UCStreamCoderV2;
  v8 = [(UCStreamCoderV2 *)&v28 init];
  if (v8)
  {
    v9 = [[UAStreamHandler alloc] initWithInputStream:streamCopy outputStream:outputStreamCopy delegate:v8];
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

    streamHandler = [(UCStreamCoderV2 *)v8 streamHandler];
    [streamHandler start];

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

  streamHandler = [(UCStreamCoderV2 *)self streamHandler];
  [streamHandler stop];

  v5.receiver = self;
  v5.super_class = UCStreamCoderV2;
  [(UCStreamCoderV2 *)&v5 dealloc];
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    v5 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = sub_100018758(self->_state);
      v7 = sub_100018758(state);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[CODERV2] State: %@ -> %@", &v8, 0x16u);
    }

    self->_state = state;
  }
}

- (void)storeObject:(id)object
{
  objectCopy = object;
  objects = [(UCStreamCoderV2 *)self objects];
  objc_sync_enter(objects);
  objects2 = [(UCStreamCoderV2 *)self objects];
  [objects2 addObject:objectCopy];

  objc_sync_exit(objects);
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  objects = [(UCStreamCoderV2 *)self objects];
  objc_sync_enter(objects);
  objects2 = [(UCStreamCoderV2 *)self objects];
  [objects2 removeObject:objectCopy];

  objc_sync_exit(objects);
}

- (void)streamsDidClose:(id)close withError:(id)error
{
  errorCopy = error;
  v6 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[CODERV2] Streams closed: %{public}@", &v8, 0xCu);
  }

  receivedInfo = [(UCStreamCoderV2 *)self receivedInfo];
  [(UCStreamCoderV2 *)self receivedPasteboardInfo:receivedInfo withError:errorCopy];

  [(UCStreamCoderV2 *)self completedReceivingPasteboardWithError:errorCopy];
  [(UCStreamCoderV2 *)self sendCompletedWithError:errorCopy];
}

- (void)streams:(id)streams didReadMessage:(id)message withTag:(int64_t)tag
{
  messageCopy = message;
  v8 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_100018BB8(tag);
    v11 = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "[CODERV2] Reveived message for tag %{public}@", &v11, 0xCu);
  }

  watchdog = [(UCStreamCoderV2 *)self watchdog];
  [watchdog poke];

  if (tag > 6)
  {
    if (tag > 8)
    {
      if (tag == 9)
      {
        [(UCStreamCoderV2 *)self handlePasteboardAuxInfoReceived:messageCopy];
      }

      else if (tag == 10)
      {
        [(UCStreamCoderV2 *)self handleHeartbeat:messageCopy];
      }
    }

    else if (tag == 7)
    {
      [(UCStreamCoderV2 *)self handlePasteboardFileRequest:messageCopy];
    }

    else
    {
      [(UCStreamCoderV2 *)self handlePasteboardFileResponse:messageCopy];
    }
  }

  else if (tag > 4)
  {
    if (tag == 5)
    {
      [(UCStreamCoderV2 *)self handlePasteboardDataRequest:messageCopy];
    }

    else
    {
      [(UCStreamCoderV2 *)self handlePasteboardDataResponse:messageCopy];
    }
  }

  else if (tag == 3)
  {
    [(UCStreamCoderV2 *)self handlePasteboardInfoRequest:messageCopy];
  }

  else if (tag == 4)
  {
    [(UCStreamCoderV2 *)self handlePasteboardInfoResponse:messageCopy];
  }
}

- (void)streams:(id)streams didWriteMessageWithTag:(int64_t)tag
{
  streamsCopy = streams;
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = sub_100018BB8(tag);
    v26 = 138543362;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[CODERV2] Did write tag %{public}@", &v26, 0xCu);
  }

  watchdog = [(UCStreamCoderV2 *)self watchdog];
  [watchdog poke];

  state = [(UCStreamCoderV2 *)self state];
  if (state == 2)
  {
    v11 = 3;
  }

  else
  {
    if (state != 5)
    {
      goto LABEL_8;
    }

    v11 = 1;
  }

  [(UCStreamCoderV2 *)self setState:v11];
LABEL_8:
  if (tag)
  {
    if (tag == 8)
    {
      archiveQueue = [(UCStreamCoderV2 *)self archiveQueue];
      objc_sync_enter(archiveQueue);
      archiveQueue2 = [(UCStreamCoderV2 *)self archiveQueue];
      firstObject = [archiveQueue2 firstObject];

      if (firstObject)
      {
        v19 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v26 = 138543362;
          v27 = firstObject;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[CODERV2] Requesting delivery for %{public}@", &v26, 0xCu);
        }

        archivePackagers = [(UCStreamCoderV2 *)self archivePackagers];
        v21 = [archivePackagers objectForKeyedSubscript:firstObject];

        deliverNextPacket = [v21 deliverNextPacket];
        v23 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v26 = 67109120;
          LODWORD(v27) = deliverNextPacket;
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

      objc_sync_exit(archiveQueue);
    }

    else if (tag == 6)
    {
      v12 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v26) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[CODERV2] Did write data chunk", &v26, 2u);
      }

      filePackager = [(UCStreamCoderV2 *)self filePackager];
      deliverNextPacket2 = [filePackager deliverNextPacket];

      if ((deliverNextPacket2 & 1) == 0)
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
    streamHandler = [(UCStreamCoderV2 *)self streamHandler];
    [streamHandler stop];
  }
}

- (void)sendStopWithError:(int64_t)error
{
  v5 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[CODERV2] Stopping", v10, 2u);
  }

  [(UCStreamCoderV2 *)self setState:8];
  if (error)
  {
    v11 = @"error";
    v6 = [NSNumber numberWithInteger:error];
    v12 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    v8 = [(UCStreamCoderV2 *)self packMessage:v7];
    streamHandler = [(UCStreamCoderV2 *)self streamHandler];
    [streamHandler writeMessage:v8 tag:0];
  }
}

- (void)recvStop:(id)stop
{
  v4 = [(UCStreamCoderV2 *)self unpackMessage:stop];
  v5 = [v4 objectForKeyedSubscript:@"error"];
  integerValue = [v5 integerValue];

  v7 = [NSError alloc];
  v8 = [v7 initWithDomain:UAContinuityErrorDomain code:integerValue userInfo:0];
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
  streamHandler = [(UCStreamCoderV2 *)self streamHandler];
  [streamHandler stop];
}

- (void)handlePasteboardInfoRequest:(id)request
{
  requestCopy = request;
  [(UCStreamCoderV2 *)self setState:4];
  v5 = [(UCStreamCoderV2 *)self unpackMessage:requestCopy];

  [(UCStreamCoderV2 *)self sendPasteboardInfoResponse];
}

- (void)handlePasteboardDataRequest:(id)request
{
  requestCopy = request;
  [(UCStreamCoderV2 *)self setState:4];
  v5 = [(UCStreamCoderV2 *)self unpackMessage:requestCopy];

  [(UCStreamCoderV2 *)self sendPasteboardDataResponse];
}

- (void)handlePasteboardFileRequest:(id)request
{
  requestCopy = request;
  [(UCStreamCoderV2 *)self setState:4];
  selfCopy = self;
  v33 = requestCopy;
  v34 = [(UCStreamCoderV2 *)self unpackMessage:requestCopy];
  v36 = [v34 objectForKeyedSubscript:@"uuid"];
  v5 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = v36;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[CODERV2] Archvie requested for UUID: %@", buf, 0xCu);
  }

  archivePackagers = [(UCStreamCoderV2 *)self archivePackagers];
  allKeys = [archivePackagers allKeys];
  v8 = [allKeys containsObject:v36];

  if (v8)
  {
    goto LABEL_15;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  sendingInfo = [(UCStreamCoderV2 *)self sendingInfo];
  pbinfo = [sendingInfo pbinfo];
  obj = [pbinfo items];

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
        types = [v15 types];
        allKeys2 = [types allKeys];
        v18 = [allKeys2 containsObject:@"public.file-url"];

        if (v18)
        {
          types2 = [v15 types];
          v20 = [types2 objectForKeyedSubscript:@"public.file-url"];
          uuid = [v20 uuid];
          uUIDString = [uuid UUIDString];
          v23 = [uUIDString isEqualToString:v36];

          v12 |= v23;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v11);

    if (v12)
    {
      requestedArchives = [(UCStreamCoderV2 *)selfCopy requestedArchives];
      objc_sync_enter(requestedArchives);
      requestedArchives2 = [(UCStreamCoderV2 *)selfCopy requestedArchives];
      [requestedArchives2 addObject:v36];

      objc_sync_exit(requestedArchives);
LABEL_15:
      archiveQueue = [(UCStreamCoderV2 *)selfCopy archiveQueue];
      objc_sync_enter(archiveQueue);
      archiveQueue2 = [(UCStreamCoderV2 *)selfCopy archiveQueue];
      [archiveQueue2 addObject:v36];

      archiveQueue3 = [(UCStreamCoderV2 *)selfCopy archiveQueue];
      firstObject = [archiveQueue3 firstObject];

      if ([firstObject isEqualToString:v36])
      {
        archivePackagers2 = [(UCStreamCoderV2 *)selfCopy archivePackagers];
        v31 = [archivePackagers2 objectForKeyedSubscript:v36];
        [v31 deliverNextPacket];

        v32 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v44 = v36;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[CODERV2] Delivering file packets for UUID: %@", buf, 0xCu);
        }
      }

      objc_sync_exit(archiveQueue);
      goto LABEL_23;
    }
  }

  else
  {
  }

  archiveQueue = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(archiveQueue, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v44 = v36;
    _os_log_impl(&_mh_execute_header, archiveQueue, OS_LOG_TYPE_ERROR, "[CODERV2] File requested with invalid UUID: %{public}@", buf, 0xCu);
  }

LABEL_23:
}

- (void)handlePasteboardInfoResponse:(id)response
{
  responseCopy = response;
  [(UCStreamCoderV2 *)self setState:7];
  v5 = [(UCStreamCoderV2 *)self unpackMessage:responseCopy];

  v6 = [v5 objectForKeyedSubscript:@"data"];
  if (v6)
  {
    v7 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v6 error:0];
    v8 = [v7 decodeObjectOfClass:objc_opt_class() forKey:NSKeyedArchiveRootObjectKey];
    [(UCStreamCoderV2 *)self setReceivedInfo:v8];

    progress = [(UCStreamCoderV2 *)self progress];
    [progress setCompletedUnitCount:0];

    v10 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[CODERV2] Received pasteboard info, requesting data", &v15, 2u);
    }

    [(UCStreamCoderV2 *)self sendPasteboardDataRequest];
    receivedInfo = [(UCStreamCoderV2 *)self receivedInfo];
    [(UCStreamCoderV2 *)self processPasteboardInfo:receivedInfo];
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

- (void)handlePasteboardDataResponse:(id)response
{
  responseCopy = response;
  [(UCStreamCoderV2 *)self setState:7];
  v5 = [(UCStreamCoderV2 *)self unpackMessage:responseCopy];

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
  progress = [(UCStreamCoderV2 *)self progress];
  [progress setCompletedUnitCount:{-[UCStreamCoderV2 bytesReceived](self, "bytesReceived")}];

  [(UCStreamCoderV2 *)self calculateTimeRemaining];
  receivingDataFile = [(UCStreamCoderV2 *)self receivingDataFile];
  v21 = 0;
  v12 = [receivingDataFile writeData:v6 error:&v21];
  v13 = v21;

  if (v12)
  {
    v14 = [v5 objectForKeyedSubscript:@"packetNum"];
    v15 = [v5 objectForKeyedSubscript:@"totalNum"];

    if (v14 == v15)
    {
      if ([(UCStreamCoderV2 *)self returnInfoEarly])
      {
        receivedInfo = [(UCStreamCoderV2 *)self receivedInfo];
        [(UCStreamCoderV2 *)self receivedPasteboardInfo:receivedInfo withError:0];
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

- (void)handlePasteboardFileResponse:(id)response
{
  responseCopy = response;
  [(UCStreamCoderV2 *)self setState:7];
  v5 = [(UCStreamCoderV2 *)self unpackMessage:responseCopy];

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
  progress = [(UCStreamCoderV2 *)self progress];
  [progress setCompletedUnitCount:{-[UCStreamCoderV2 bytesReceived](self, "bytesReceived")}];

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
      uUIDString = [v9 UUIDString];
      *buf = 138412290;
      v38 = uUIDString;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "[CODERV2] Received all data for archive: %@", buf, 0xCu);
    }

    v26 = +[UASharedPasteboardDataManager sharedInstance];
    [v26 finishWritingArchiveForUUID:v9];

    v27 = +[UASharedPasteboardDataManager sharedInstance];
    v28 = [v27 fileURLForPasteboardItem:v9];

    v29 = [UCExtractor alloc];
    uUIDString2 = [v9 UUIDString];
    v31 = [(UCExtractor *)v29 initWithDestinationURL:v28 forArchiveUUID:uUIDString2];

    [(UCStreamCoderV2 *)self storeObject:v31];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10001A25C;
    v33[3] = &unk_1000C4EE0;
    v34 = v9;
    selfCopy = self;
    v36 = v31;
    v32 = v31;
    [(UCExtractor *)v32 extractArchiveWithCompletion:v33];
  }
}

- (void)handlePasteboardAuxInfoReceived:(id)received
{
  v4 = [(UCStreamCoderV2 *)self unpackMessage:received];
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
    progress = [(UCStreamCoderV2 *)self progress];
    [progress setTotalUnitCount:{objc_msgSend(v5, "integerValue")}];
  }
}

- (void)handleHeartbeat:(id)heartbeat
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[CODERV2] Sending heartbeat", v6, 2u);
  }

  watchdog = [(UCStreamCoderV2 *)self watchdog];
  [watchdog poke];
}

- (void)sendPasteboardInfoRequest
{
  v4 = [(UCStreamCoderV2 *)self packMessage:&off_1000CC808];
  [(UCStreamCoderV2 *)self setState:2];
  streamHandler = [(UCStreamCoderV2 *)self streamHandler];
  [streamHandler writeMessage:v4 tag:3];
}

- (void)sendPasteboardInfoResponse
{
  v3 = objc_alloc_init(NSMutableDictionary);
  sendingInfo = [(UCStreamCoderV2 *)self sendingInfo];

  if (sendingInfo)
  {
    sendingInfo2 = [(UCStreamCoderV2 *)self sendingInfo];
    v6 = [NSKeyedArchiver archivedDataWithRootObject:sendingInfo2 requiringSecureCoding:1 error:0];

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
  streamHandler = [(UCStreamCoderV2 *)self streamHandler];
  [streamHandler writeMessage:v7 tag:4];
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
  streamHandler = [(UCStreamCoderV2 *)self streamHandler];
  [streamHandler writeMessage:v4 tag:5];
}

- (void)sendFileArchiveRequest
{
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  receivedInfo = [(UCStreamCoderV2 *)self receivedInfo];
  pbinfo = [receivedInfo pbinfo];
  items = [pbinfo items];

  v6 = [items countByEnumeratingWithState:&v26 objects:v34 count:16];
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
          objc_enumerationMutation(items);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        types = [v11 types];
        allKeys = [types allKeys];
        v14 = [allKeys containsObject:@"public.file-url"];

        if (v14)
        {
          types2 = [v11 types];
          v16 = [types2 objectForKeyedSubscript:@"public.file-url"];
          uuid = [v16 uuid];
          uUIDString = [uuid UUIDString];

          v19 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = v25;
            v33 = uUIDString;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[CODERV2] Requesting archive for UUID: %{public}@", buf, 0xCu);
          }

          v20 = +[UASharedPasteboardDataManager sharedInstance];
          v21 = [[NSUUID alloc] initWithUUIDString:uUIDString];
          [v20 createTmpArchiveFileWithUUID:v21];

          v30[0] = @"supportsCompression";
          v30[1] = @"uuid";
          v31[0] = &__kCFBooleanFalse;
          v31[1] = uUIDString;
          v22 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
          v23 = [(UCStreamCoderV2 *)self packMessage:v22];
          [(UCStreamCoderV2 *)self setState:2];
          streamHandler = [(UCStreamCoderV2 *)self streamHandler];
          [streamHandler writeMessage:v23 tag:7];
        }
      }

      v8 = [items countByEnumeratingWithState:&v26 objects:v34 count:16];
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
  sendingDataFile = [(UCStreamCoderV2 *)self sendingDataFile];
  sendingInfo = [(UCStreamCoderV2 *)self sendingInfo];
  pbinfo = [sendingInfo pbinfo];
  v8 = -[UCFilePackager initWithFile:fileSize:packetSize:options:receiver:](v4, "initWithFile:fileSize:packetSize:options:receiver:", sendingDataFile, [pbinfo dataSize], 0x10000, 0, self);
  [(UCStreamCoderV2 *)self setFilePackager:v8];

  filePackager = [(UCStreamCoderV2 *)self filePackager];
  [filePackager setTag:6];

  filePackager2 = [(UCStreamCoderV2 *)self filePackager];
  [filePackager2 deliverNextPacket];

  [(UCStreamCoderV2 *)self setState:6];
}

- (void)sendTotalSendSize
{
  v7 = @"totalSize";
  v3 = [NSNumber numberWithInteger:[(UCStreamCoderV2 *)self totalSendSize]];
  v8 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v5 = [(UCStreamCoderV2 *)self packMessage:v4];
  streamHandler = [(UCStreamCoderV2 *)self streamHandler];
  [streamHandler writeMessage:v5 tag:9];
}

- (void)sendHeartbeat
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[CODERV2] Sending heartbeat", v7, 2u);
  }

  watchdog = [(UCStreamCoderV2 *)self watchdog];
  [watchdog poke];

  streamHandler = [(UCStreamCoderV2 *)self streamHandler];
  v6 = [@"UCHB" dataUsingEncoding:1];
  [streamHandler writeMessage:v6 tag:10];
}

- (void)cancelReceive
{
  [(UCStreamCoderV2 *)self sendStopWithError:-125];
  v4 = [NSError errorWithDomain:UAContinuityErrorDomain code:-125 userInfo:0];
  [(UCStreamCoderV2 *)self receivedPasteboardInfo:0 withError:v4];
  [(UCStreamCoderV2 *)self completedReceivingPasteboardWithError:v4];
  watchdog = [(UCStreamCoderV2 *)self watchdog];
  [watchdog cancel];
}

- (void)receivedPasteboardInfo:(id)info withError:(id)error
{
  infoCopy = info;
  errorCopy = error;
  itemsLockedSem = [(UCStreamCoderV2 *)self itemsLockedSem];
  if (itemsLockedSem)
  {
    v9 = dispatch_time(0, 1000000000);
    if (dispatch_semaphore_wait(itemsLockedSem, v9))
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

  selfCopy = self;
  objc_sync_enter(selfCopy);
  infoRecvHandler = [(UCStreamCoderV2 *)selfCopy infoRecvHandler];

  if (infoRecvHandler)
  {
    if (errorCopy)
    {
      receivedInfo = [(UCStreamCoderV2 *)selfCopy receivedInfo];
      [(UCStreamCoderV2 *)selfCopy removeReceivedItems:receivedInfo];
    }

    v14 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "[CODERV2] Calling received info handler", v18, 2u);
    }

    infoRecvHandler2 = [(UCStreamCoderV2 *)selfCopy infoRecvHandler];
    (infoRecvHandler2)[2](infoRecvHandler2, infoCopy, errorCopy);

    [(UCStreamCoderV2 *)selfCopy setInfoRecvHandler:0];
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

  objc_sync_exit(selfCopy);
}

- (void)completedReceivingPasteboardWithError:(id)error
{
  errorCopy = error;
  receivedInfo = [(UCStreamCoderV2 *)self receivedInfo];
  [(UCStreamCoderV2 *)self receivedPasteboardInfo:receivedInfo withError:errorCopy];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  fileRecvHandler = [(UCStreamCoderV2 *)selfCopy fileRecvHandler];

  if (fileRecvHandler)
  {
    if (errorCopy)
    {
      receivedInfo2 = [(UCStreamCoderV2 *)selfCopy receivedInfo];
      [(UCStreamCoderV2 *)selfCopy removeReceivedItems:receivedInfo2];
    }

    v9 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[CODERV2] Calling pasteboard received handler", buf, 2u);
    }

    fileRecvHandler2 = [(UCStreamCoderV2 *)selfCopy fileRecvHandler];
    streamHandler = [(UCStreamCoderV2 *)selfCopy streamHandler];
    (fileRecvHandler2)[2](fileRecvHandler2, selfCopy, [streamHandler totalBytesReceived], errorCopy);

    [(UCStreamCoderV2 *)selfCopy setFileRecvHandler:0];
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

  objc_sync_exit(selfCopy);
  watchdog = [(UCStreamCoderV2 *)selfCopy watchdog];
  [watchdog cancel];
}

- (void)removeReceivedItems:(id)items
{
  itemsCopy = items;
  pbinfo = [itemsCopy pbinfo];
  items = [pbinfo items];
  v5 = [items count];

  if (v5)
  {
    v6 = 0;
    do
    {
      pbinfo2 = [itemsCopy pbinfo];
      items2 = [pbinfo2 items];
      v9 = [items2 objectAtIndexedSubscript:v6];

      types = [v9 types];
      allKeys = [types allKeys];
      v12 = [allKeys containsObject:@"public.file-url"];

      if (v12)
      {
        types2 = [v9 types];
        v14 = [types2 objectForKeyedSubscript:@"public.file-url"];
        uuid = [v14 uuid];

        v16 = +[UASharedPasteboardDataManager sharedInstance];
        [v16 cleanupForItem:uuid];
      }

      ++v6;
      pbinfo3 = [itemsCopy pbinfo];
      items3 = [pbinfo3 items];
      v19 = [items3 count];
    }

    while (v19 > v6);
  }
}

- (void)processPasteboardInfo:(id)info
{
  infoCopy = info;
  pbinfo = [infoCopy pbinfo];
  items = [pbinfo items];
  v7 = [items count];

  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v35 = v37;
    *&v8 = 67109378;
    v34 = v8;
    do
    {
      pbinfo2 = [infoCopy pbinfo];
      items2 = [pbinfo2 items];
      v13 = [items2 objectAtIndexedSubscript:v9];

      types = [v13 types];
      allKeys = [types allKeys];
      v16 = [allKeys containsObject:@"public.file-url"];

      if (v16)
      {
        types2 = [v13 types];
        v18 = [types2 objectForKeyedSubscript:@"public.file-url"];
        uuid = [v18 uuid];

        v20 = sub_100001A30(@"pasteboard-server");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          uUIDString = [uuid UUIDString];
          *buf = v34;
          v40 = v9;
          v41 = 2112;
          v42 = uUIDString;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "[CODERV2] Item %d has public.file-url with uuid: %@", buf, 0x12u);
        }

        v10 = (v10 + 1);

        v22 = +[UASharedPasteboardDataManager sharedInstance];
        [v22 createTmpArchiveFileWithUUID:uuid];

        [(UCStreamCoderV2 *)self setRemoteHasFiles:1];
        v23 = [NSNumber numberWithInt:v9];
        uuidItemMap = [(UCStreamCoderV2 *)self uuidItemMap];
        uUIDString2 = [uuid UUIDString];
        [uuidItemMap setObject:v23 forKeyedSubscript:uUIDString2];

        v26 = +[UASharedPasteboardDataManager sharedInstance];
        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v37[0] = sub_10001B880;
        v37[1] = &unk_1000C4F00;
        v38 = v9;
        [v26 obtainLockForItem:uuid completion:v36];
      }

      ++v9;
      pbinfo3 = [infoCopy pbinfo];
      items3 = [pbinfo3 items];
      v29 = [items3 count];
    }

    while (v29 > v9);
  }

  else
  {
    v10 = 0;
  }

  progress = [(UCStreamCoderV2 *)self progress];
  v31 = [NSNumber numberWithInt:v10];
  [progress setUserInfoObject:v31 forKey:@"numFiles"];

  itemsLockedSem = [(UCStreamCoderV2 *)self itemsLockedSem];
  v33 = itemsLockedSem;
  if (itemsLockedSem)
  {
    dispatch_semaphore_signal(itemsLockedSem);
  }
}

- (void)calculateTimeRemaining
{
  v3 = [UADiagnosticUtils absoluteToNSec:mach_absolute_time() - [(UCStreamCoderV2 *)self streamStartTime]]/ 1000000000.0;
  v4 = [(UCStreamCoderV2 *)self bytesReceived]/ v3;
  progress = [(UCStreamCoderV2 *)self progress];
  v6 = [NSNumber numberWithDouble:v4];
  [progress setUserInfoObject:v6 forKey:NSProgressThroughputKey];

  expectedLength = [(UCStreamCoderV2 *)self expectedLength];
  v8 = (expectedLength - [(UCStreamCoderV2 *)self bytesReceived]) / v4;
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
    progress2 = [(UCStreamCoderV2 *)self progress];
    v12 = [NSNumber numberWithDouble:*&qword_1000E5C00];
    [progress2 setUserInfoObject:v12 forKey:NSProgressEstimatedTimeRemainingKey];
  }
}

- (void)sendPasteboard:(id)pasteboard withCompletion:(id)completion
{
  pasteboardCopy = pasteboard;
  completionCopy = completion;
  selfCopy = self;
  [(UCStreamCoderV2 *)self setSendingInfo:pasteboardCopy];
  v66 = pasteboardCopy;
  pbinfo = [pasteboardCopy pbinfo];
  dataFile = [pbinfo dataFile];
  [(UCStreamCoderV2 *)self setSendingDataFile:dataFile];

  pbinfo2 = [v66 pbinfo];
  -[UCStreamCoderV2 setTotalSendSize:](self, "setTotalSendSize:", [pbinfo2 dataSize] + -[UCStreamCoderV2 totalSendSize](self, "totalSendSize"));

  sendingInfo = [(UCStreamCoderV2 *)self sendingInfo];
  pbinfo3 = [sendingInfo pbinfo];
  [pbinfo3 setDataFile:0];

  [(UCStreamCoderV2 *)self setSendErrorHandler:completionCopy];
  objc_initWeak(&location, self);
  v12 = &_dispatch_main_q;
  v13 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  [(UCStreamCoderV2 *)self setHeartBeatTrigger:v13];

  heartBeatTrigger = [(UCStreamCoderV2 *)self heartBeatTrigger];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10001C54C;
  handler[3] = &unk_1000C4EB8;
  objc_copyWeak(&v82, &location);
  dispatch_source_set_event_handler(heartBeatTrigger, handler);

  heartBeatTrigger2 = [(UCStreamCoderV2 *)self heartBeatTrigger];
  dispatch_source_set_timer(heartBeatTrigger2, 0, 0x12A05F200uLL, 0x12A05F200uLL);

  heartBeatTrigger3 = [(UCStreamCoderV2 *)self heartBeatTrigger];
  dispatch_activate(heartBeatTrigger3);

  watchdog = [(UCStreamCoderV2 *)self watchdog];
  [watchdog start];

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
  sendingInfo2 = [(UCStreamCoderV2 *)self sendingInfo];
  pbinfo4 = [sendingInfo2 pbinfo];
  obj = [pbinfo4 items];

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
        types = [v23 types];
        allKeys = [types allKeys];
        v26 = [allKeys containsObject:@"public.file-url"];

        if (v26)
        {
          v27 = sub_100001A30(@"pasteboard-server");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[CODERV2] Sending pasteboard with files", buf, 2u);
          }

          types2 = [v23 types];
          v29 = [types2 objectForKeyedSubscript:@"public.file-url"];
          uuid = [v29 uuid];

          types3 = [v23 types];
          v31 = [types3 objectForKeyedSubscript:@"public.file-url"];
          v32 = [(UCStreamCoderV2 *)selfCopy fetchDataForType:v31];

          types4 = [v23 types];
          v34 = [types4 objectForKeyedSubscript:@"com.apple.security.sandbox-extension-dict"];
          v35 = [(UCStreamCoderV2 *)selfCopy fetchDataForType:v34];

          v36 = [NSURL URLWithDataRepresentation:v32 relativeToURL:0];
          v37 = [NSPropertyListSerialization propertyListWithData:v35 options:0 format:0 error:0];
          if (v37)
          {
            path = [v36 path];
            v39 = [v37 objectForKeyedSubscript:path];
            v40 = sub_100001A30(@"pasteboard-server");
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138478083;
              v85 = v39;
              v86 = 2113;
              v87 = path;
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
            path2 = [v36 path];
            v49 = +[UASharedPasteboardDataManager sharedInstance];
            fileURLForCloneItems = [v49 fileURLForCloneItems];
            path3 = [fileURLForCloneItems path];
            v52 = [path2 hasPrefix:path3];

            if (!v52)
            {
              v64 = sub_100001A30(@"pasteboard-server");
              if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "[CODERV2] Error getting sandbox info", buf, 2u);
              }

              [(UCStreamCoderV2 *)selfCopy sendStopWithError:-122];
              goto LABEL_39;
            }

            path = sub_100001A30(&stru_1000C67D0);
            if (os_log_type_enabled(path, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, path, OS_LOG_TYPE_INFO, "[CODERV2] Archiving item in our clone dir, no need for sandbox ext", buf, 2u);
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
          uUIDString = [uuid UUIDString];
          v56 = [(UCArchiver *)v54 initWithURL:v36 typeUUID:uUIDString];

          [(UCStreamCoderV2 *)selfCopy storeObject:v56];
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 3221225472;
          v72[2] = sub_10001C58C;
          v72[3] = &unk_1000C4F28;
          v72[4] = selfCopy;
          v57 = v36;
          v73 = v57;
          v58 = uuid;
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

  objects = [(UCStreamCoderV2 *)selfCopy objects];
  v61 = [objects count] == 0;

  if (v61)
  {
    v62 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v63 = [NSNumber numberWithInteger:[(UCStreamCoderV2 *)selfCopy totalSendSize]];
      *buf = 138412290;
      v85 = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "[CODERV2] No files to archive, total send size: %@", buf, 0xCu);
    }

    [(UCStreamCoderV2 *)selfCopy sendTotalSendSize];
  }

  [(UCStreamCoderV2 *)selfCopy setState:1];
LABEL_39:
  objc_destroyWeak(&v82);
  objc_destroyWeak(&location);
}

- (void)sendCompletedWithError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sendErrorHandler = [(UCStreamCoderV2 *)selfCopy sendErrorHandler];

  if (sendErrorHandler)
  {
    v7 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[CODERV2] Calling pasteboard sent handler", buf, 2u);
    }

    sendErrorHandler2 = [(UCStreamCoderV2 *)selfCopy sendErrorHandler];
    streamHandler = [(UCStreamCoderV2 *)selfCopy streamHandler];
    (sendErrorHandler2)[2](sendErrorHandler2, selfCopy, [streamHandler totalBytesSent], errorCopy);

    [(UCStreamCoderV2 *)selfCopy setSendErrorHandler:0];
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

  objc_sync_exit(selfCopy);

  watchdog = [(UCStreamCoderV2 *)selfCopy watchdog];
  [watchdog cancel];

  heartBeatTrigger = [(UCStreamCoderV2 *)selfCopy heartBeatTrigger];
  v13 = heartBeatTrigger;
  if (heartBeatTrigger)
  {
    dispatch_source_cancel(heartBeatTrigger);
    [(UCStreamCoderV2 *)selfCopy setHeartBeatTrigger:0];
  }

  [(UCStreamCoderV2 *)selfCopy setState:8];
}

- (void)packager:(id)packager gotData:(id)data forPacket:(int64_t)packet
{
  packagerCopy = packager;
  dataCopy = data;
  v10 = [packagerCopy tag];
  v11 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v29 = 67109376;
    *v30 = packet;
    *&v30[4] = 2048;
    *&v30[6] = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "[CODERV2] Got data from packager, packet #: %d, tag: %ld", &v29, 0x12u);
  }

  if ([packagerCopy totalPacketCount] == packet)
  {
    v12 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [packagerCopy uuid];
      v29 = 134218242;
      *v30 = v10;
      *&v30[8] = 2114;
      *&v30[10] = uuid;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[CODERV2] Finished sending packages: %ld / %{public}@", &v29, 0x16u);
    }

    filePackager = [(UCStreamCoderV2 *)self filePackager];
    v15 = filePackager == packagerCopy;

    if (v15)
    {
      [(UCStreamCoderV2 *)self setFilePackager:0];
    }

    else
    {
      uuid2 = [packagerCopy uuid];

      if (uuid2)
      {
        archiveQueue = [(UCStreamCoderV2 *)self archiveQueue];
        objc_sync_enter(archiveQueue);
        archivePackagers = [(UCStreamCoderV2 *)self archivePackagers];
        uuid3 = [packagerCopy uuid];
        [archivePackagers setObject:0 forKeyedSubscript:uuid3];

        archiveQueue2 = [(UCStreamCoderV2 *)self archiveQueue];
        uuid4 = [packagerCopy uuid];
        [archiveQueue2 removeObject:uuid4];

        objc_sync_exit(archiveQueue);
      }
    }
  }

  if (v10)
  {
    v22 = objc_alloc_init(NSMutableDictionary);
    v23 = [NSNumber numberWithInteger:packet];
    [v22 setObject:v23 forKeyedSubscript:@"packetNum"];

    v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [packagerCopy totalPacketCount]);
    [v22 setObject:v24 forKeyedSubscript:@"totalNum"];

    [v22 setObject:dataCopy forKeyedSubscript:@"data"];
    uuid5 = [packagerCopy uuid];

    if (uuid5)
    {
      uuid6 = [packagerCopy uuid];
      [v22 setObject:uuid6 forKeyedSubscript:@"uuid"];
    }

    v27 = [(UCStreamCoderV2 *)self packMessage:v22];
    streamHandler = [(UCStreamCoderV2 *)self streamHandler];
    [streamHandler writeMessage:v27 tag:v10];
  }
}

- (void)filePackagerError:(id)error
{
  errorCopy = error;
  v5 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = errorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[CODERV2] Error from packager: %{public}@", &v6, 0xCu);
  }

  [(UCStreamCoderV2 *)self sendStopWithError:-122];
  [(UCStreamCoderV2 *)self sendCompletedWithError:errorCopy];
}

- (id)packMessage:(id)message
{
  v3 = _UACopyPackedDataForObject();

  return v3;
}

- (id)unpackMessage:(id)message
{
  messageCopy = message;
  [messageCopy bytes];
  [messageCopy length];

  v4 = _UACopyUnpackedObjectFromData();

  return v4;
}

- (id)fetchDataForType:(id)type
{
  typeCopy = type;
  sendingDataFile = [(UCStreamCoderV2 *)self sendingDataFile];
  objc_sync_enter(sendingDataFile);
  sendingDataFile2 = [(UCStreamCoderV2 *)self sendingDataFile];
  offset = [typeCopy offset];
  [sendingDataFile2 seekToFileOffset:{objc_msgSend(offset, "unsignedLongLongValue")}];

  sendingDataFile3 = [(UCStreamCoderV2 *)self sendingDataFile];
  v9 = [sendingDataFile3 readDataOfLength:{objc_msgSend(typeCopy, "size")}];

  sendingDataFile4 = [(UCStreamCoderV2 *)self sendingDataFile];
  [sendingDataFile4 seekToFileOffset:0];

  objc_sync_exit(sendingDataFile);

  return v9;
}

@end