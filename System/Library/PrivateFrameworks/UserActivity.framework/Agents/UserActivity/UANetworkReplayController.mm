@interface UANetworkReplayController
+ (BOOL)createConnection:(id)connection host:(id)host port:(int64_t)port;
- (BOOL)processCommand:(id)command;
- (BOOL)sendResponse:(id)response;
- (BOOL)terminate;
- (UANetworkReplayController)initWithManager:(id)manager inputStream:(id)stream outputStream:(id)outputStream name:(id)name;
- (UANetworkReplayController)initWithManager:(id)manager service:(id)service;
- (id)statusString;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation UANetworkReplayController

- (UANetworkReplayController)initWithManager:(id)manager inputStream:(id)stream outputStream:(id)outputStream name:(id)name
{
  managerCopy = manager;
  streamCopy = stream;
  outputStreamCopy = outputStream;
  nameCopy = name;
  if (nameCopy)
  {
    nameCopy = [NSString stringWithFormat:@"From %@", nameCopy];
  }

  else
  {
    nameCopy = @"From host";
  }

  v22.receiver = self;
  v22.super_class = UANetworkReplayController;
  v15 = [(UAActivityReplay *)&v22 initWithManager:managerCopy name:nameCopy];
  if (nameCopy)
  {
  }

  if (v15)
  {
    [(UANetworkReplayController *)v15 setPeerName:nameCopy];
    if (nameCopy)
    {
      v16 = nameCopy;
    }

    else
    {
      v16 = @"?";
    }

    pairedPeer = [(UAActivityReplay *)v15 pairedPeer];
    [pairedPeer setName:v16];

    v18 = +[NSMutableData data];
    [(UANetworkReplayController *)v15 setReadBuffer:v18];

    [(UANetworkReplayController *)v15 setInputStream:streamCopy];
    [(UANetworkReplayController *)v15 setOutputStream:outputStreamCopy];
    [streamCopy setDelegate:v15];
    [outputStreamCopy setDelegate:v15];
    v19 = +[NSRunLoop mainRunLoop];
    [streamCopy scheduleInRunLoop:v19 forMode:NSRunLoopCommonModes];

    v20 = +[NSRunLoop mainRunLoop];
    [outputStreamCopy scheduleInRunLoop:v20 forMode:NSRunLoopCommonModes];

    [streamCopy open];
    [outputStreamCopy open];
  }

  return v15;
}

- (UANetworkReplayController)initWithManager:(id)manager service:(id)service
{
  managerCopy = manager;
  serviceCopy = service;
  name = [serviceCopy name];
  if (name)
  {
    name2 = [serviceCopy name];
  }

  else
  {
    name2 = @"Net";
  }

  v21.receiver = self;
  v21.super_class = UANetworkReplayController;
  v10 = [(UAActivityReplay *)&v21 initWithManager:managerCopy name:name2];
  if (name)
  {
  }

  if (v10)
  {
    v11 = +[NSMutableData data];
    [(UANetworkReplayController *)v10 setReadBuffer:v11];

    v19 = 0;
    v20 = 0;
    if ([serviceCopy getInputStream:&v20 outputStream:&v19])
    {
      name3 = [serviceCopy name];
      v13 = [name3 copy];
      [(UANetworkReplayController *)v10 setPeerName:v13];

      [(UANetworkReplayController *)v10 setInputStream:v20];
      [(UANetworkReplayController *)v10 setOutputStream:v19];
      [v20 setDelegate:v10];
      [v19 setDelegate:v10];
      v14 = v20;
      v15 = +[NSRunLoop mainRunLoop];
      [v14 scheduleInRunLoop:v15 forMode:NSRunLoopCommonModes];

      v16 = v19;
      v17 = +[NSRunLoop mainRunLoop];
      [v16 scheduleInRunLoop:v17 forMode:NSRunLoopCommonModes];

      [v20 open];
      [v19 open];
    }
  }

  return v10;
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  queue = [(UAActivityReplay *)selfCopy queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005FFE0;
  block[3] = &unk_1000C5F80;
  v12 = selfCopy;
  eventCopy = event;
  v11 = streamCopy;
  v9 = streamCopy;
  dispatch_async(queue, block);

  objc_sync_exit(selfCopy);
}

- (BOOL)processCommand:(id)command
{
  commandCopy = command;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    peerName = [(UANetworkReplayController *)self peerName];
    peerUUID = [(UANetworkReplayController *)self peerUUID];
    uUIDString = [peerUUID UUIDString];
    *buf = 138478339;
    v76 = commandCopy;
    v77 = 2113;
    v78 = peerName;
    v79 = 2114;
    v80 = uUIDString;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "COMMAND: %{private}@, from %{private}@/%{public}@", buf, 0x20u);
  }

  queue = [(UAActivityReplay *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = [NSScanner scannerWithString:commandCopy];
  v11 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v73 = 0;
  v12 = [v10 scanUpToCharactersFromSet:v11 intoString:&v73];
  v13 = v73;

  v14 = 0;
  if (v12 && v13)
  {
    uppercaseString = [v13 uppercaseString];

    if (([uppercaseString isEqual:@"HANDOFF"] & 1) != 0 || objc_msgSend(uppercaseString, "isEqual:", @"VERSION"))
    {
      v72 = 0.0;
      v17 = 0;
      if ([v10 scanString:@"v" intoString:0])
      {
        v17 = 0;
        if ([v10 scanDouble:&v72])
        {
          v16 = v72;
          if (v72 >= 53.0)
          {
            v18 = +[NSCharacterSet whitespaceCharacterSet];
            v71 = 0;
            v19 = [v10 scanUpToCharactersFromSet:v18 intoString:&v71];
            v20 = v71;

            v17 = 0;
            if (v19)
            {
              v17 = [[NSUUID alloc] initWithUUIDString:v20];
            }
          }
        }
      }

      if ([uppercaseString isEqual:{@"HANDOFF", v16}])
      {
        v21 = sub_100001A30(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          peerName2 = [(UANetworkReplayController *)self peerName];
          uUIDString2 = [v17 UUIDString];
          [(UACornerActionManagerHandler *)self manager];
          v65 = v63 = commandCopy;
          [v65 uuid];
          v24 = v61 = v10;
          uUIDString3 = [v24 UUIDString];
          uuid = [(UACornerActionManagerHandler *)self uuid];
          [uuid UUIDString];
          v28 = v27 = uppercaseString;
          *buf = 138478595;
          v76 = peerName2;
          v77 = 2114;
          v78 = uUIDString2;
          v79 = 2114;
          v80 = uUIDString3;
          v81 = 2114;
          v82 = v28;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "NETWORK: Responding to peer %{private}@/%{public}@ with our UUID, %{public}@, to establish connection from controllerUUID=%{public}@.", buf, 0x2Au);

          uppercaseString = v27;
          v10 = v61;

          commandCopy = v63;
        }

        v29 = uppercaseString;
        if (v17)
        {
          [(UANetworkReplayController *)self setPeerUUID:v17];
        }

        else
        {
          v30 = +[NSUUID UUID];
          [(UANetworkReplayController *)self setPeerUUID:v30];
        }

        manager = [(UACornerActionManagerHandler *)self manager];
        uuid2 = [manager uuid];
        uUIDString4 = [uuid2 UUIDString];
        v34 = [NSString stringWithFormat:@"VERSION v%g %@\n", 0x4081380000000000, uUIDString4];
        [(UANetworkReplayController *)self sendResponse:v34];

        uppercaseString = v29;
      }

      manager2 = [(UACornerActionManagerHandler *)self manager];
      uuid3 = [manager2 uuid];
      v37 = [v17 isEqual:uuid3];

      if (v37)
      {
        v38 = sub_100001A30(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          uUIDString5 = [v17 UUIDString];
          uuid4 = [(UACornerActionManagerHandler *)self uuid];
          [uuid4 UUIDString];
          v42 = v41 = uppercaseString;
          *buf = 138543618;
          v76 = uUIDString5;
          v77 = 2114;
          v78 = v42;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "NETWORK: Destroying replay handler object because the peer's UUID %{public}@ matched our own, controllerUUID=%{public}@.", buf, 0x16u);

          uppercaseString = v41;
        }

        [(UANetworkReplayController *)self terminate];
      }

      else
      {
        if (!v17)
        {
LABEL_47:
          v14 = 1;
          goto LABEL_48;
        }

        v60 = uppercaseString;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        manager3 = [(UACornerActionManagerHandler *)self manager];
        handlers = [manager3 handlers];

        v45 = [handlers countByEnumeratingWithState:&v67 objects:v74 count:16];
        if (v45)
        {
          v46 = v45;
          v62 = v10;
          v64 = commandCopy;
          v47 = *v68;
          while (2)
          {
            for (i = 0; i != v46; i = i + 1)
            {
              if (*v68 != v47)
              {
                objc_enumerationMutation(handlers);
              }

              v49 = *(*(&v67 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v50 = v49;
                v51 = sub_100001A30(0);
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543618;
                  v76 = v50;
                  v77 = 2114;
                  v78 = v17;
                  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEBUG, "-- checking replayController %{public}@ against peerUUID=%{public}@", buf, 0x16u);
                }

                if (v50 != self)
                {
                  peerUUID2 = [(UANetworkReplayController *)v50 peerUUID];
                  v53 = [v17 isEqual:peerUUID2];

                  if (v53)
                  {
                    v54 = sub_100001A30(0);
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                    {
                      peerName3 = [(UANetworkReplayController *)v50 peerName];
                      uUIDString6 = [v17 UUIDString];
                      uuid5 = [(UACornerActionManagerHandler *)self uuid];
                      uUIDString7 = [uuid5 UUIDString];
                      *buf = 138412802;
                      v76 = peerName3;
                      v77 = 2114;
                      v78 = uUIDString6;
                      v79 = 2114;
                      v80 = uUIDString7;
                      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "NETWORK: Destroying network replay object to %@ because we already have a different connection to that peerUUID %{public}@, controllerUUID=%{public}@", buf, 0x20u);
                    }

                    [(UANetworkReplayController *)self sendResponse:@"# Terminating connection because we seem to already have a connection to this peer.\nTERMINATE\n"];
                    [(UANetworkReplayController *)self terminate];

                    v17 = 0;
                    goto LABEL_44;
                  }
                }
              }
            }

            v46 = [handlers countByEnumeratingWithState:&v67 objects:v74 count:16];
            if (v46)
            {
              continue;
            }

            break;
          }

LABEL_44:
          v10 = v62;
          commandCopy = v64;
        }

        uppercaseString = v60;
      }

      goto LABEL_47;
    }

    v66.receiver = self;
    v66.super_class = UANetworkReplayController;
    v14 = [(UAActivityReplay *)&v66 processCommand:commandCopy];
  }

  else
  {
    uppercaseString = v13;
  }

LABEL_48:

  return v14;
}

- (BOOL)sendResponse:(id)response
{
  responseCopy = response;
  uTF8String = [responseCopy UTF8String];
  v6 = strlen(uTF8String);
  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100009684(responseCopy);
    uuid = [(UACornerActionManagerHandler *)self uuid];
    uUIDString = [uuid UUIDString];
    peerName = [(UANetworkReplayController *)self peerName];
    v22 = 138478339;
    v23 = v8;
    v24 = 2114;
    v25 = uUIDString;
    v26 = 2113;
    v27 = peerName;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "COMMANDRESPONSE: %{private}@ (controllerUUID=%{public}@ peerName=%{private}@)", &v22, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  writeBuffer = [(UANetworkReplayController *)selfCopy writeBuffer];
  if ([writeBuffer length])
  {
    v14 = 0;
  }

  else
  {
    outputStream = [(UANetworkReplayController *)selfCopy outputStream];
    v14 = [outputStream write:uTF8String maxLength:strlen(uTF8String)];
  }

  v16 = v6 <= v14;
  v17 = v6 - v14;
  if (!v16)
  {
    writeBuffer2 = [(UANetworkReplayController *)selfCopy writeBuffer];
    v19 = writeBuffer2 == 0;

    if (v19)
    {
      writeBuffer3 = [NSMutableData dataWithBytes:&v14[uTF8String] length:v17];
      [(UANetworkReplayController *)selfCopy setWriteBuffer:writeBuffer3];
    }

    else
    {
      writeBuffer3 = [(UANetworkReplayController *)selfCopy writeBuffer];
      [writeBuffer3 appendBytes:&v14[uTF8String] length:v17];
    }
  }

  objc_sync_exit(selfCopy);

  return 1;
}

- (id)statusString
{
  if ([(UACornerActionManagerHandler *)self terminated])
  {
    v3 = @"TERMINATED";
  }

  else
  {
    v3 = &stru_1000C67D0;
  }

  name = [(UACornerActionManagerHandler *)self name];
  peerName = [(UANetworkReplayController *)self peerName];
  peerUUID = [(UANetworkReplayController *)self peerUUID];
  uUIDString = [peerUUID UUIDString];
  uuid = [(UACornerActionManagerHandler *)self uuid];
  uUIDString2 = [uuid UUIDString];
  v10 = [NSString stringWithFormat:@"NetworkReplay:%@%@ peer:%@/%@ %@", v3, name, peerName, uUIDString, uUIDString2];

  return v10;
}

- (BOOL)terminate
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    uuid = [(UACornerActionManagerHandler *)self uuid];
    uUIDString = [uuid UUIDString];
    *buf = 138543362;
    v11 = uUIDString;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "controllerUUID=%{public}@", buf, 0xCu);
  }

  [(UACornerActionManagerHandler *)self suspend];
  queue = [(UAActivityReplay *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000617A4;
  block[3] = &unk_1000C4CC0;
  block[4] = self;
  dispatch_async(queue, block);

  v8.receiver = self;
  v8.super_class = UANetworkReplayController;
  return [(UAActivityReplay *)&v8 terminate];
}

+ (BOOL)createConnection:(id)connection host:(id)host port:(int64_t)port
{
  v15 = 0;
  v16 = 0;
  hostCopy = host;
  connectionCopy = connection;
  [NSStream getStreamsToHostWithName:hostCopy port:port inputStream:&v16 outputStream:&v15];
  v9 = v16;
  v10 = v15;
  v11 = [UANetworkReplayController alloc];
  port = [NSString stringWithFormat:@"%@/%ld", hostCopy, port];
  v13 = [(UANetworkReplayController *)v11 initWithManager:connectionCopy inputStream:v9 outputStream:v10 name:port];

  [(UANetworkReplayController *)v13 setPeerName:hostCopy];
  [connectionCopy addHandler:v13];

  return 1;
}

@end