@interface UANetworkReplayController
+ (BOOL)createConnection:(id)a3 host:(id)a4 port:(int64_t)a5;
- (BOOL)processCommand:(id)a3;
- (BOOL)sendResponse:(id)a3;
- (BOOL)terminate;
- (UANetworkReplayController)initWithManager:(id)a3 inputStream:(id)a4 outputStream:(id)a5 name:(id)a6;
- (UANetworkReplayController)initWithManager:(id)a3 service:(id)a4;
- (id)statusString;
- (void)stream:(id)a3 handleEvent:(unint64_t)a4;
@end

@implementation UANetworkReplayController

- (UANetworkReplayController)initWithManager:(id)a3 inputStream:(id)a4 outputStream:(id)a5 name:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v13)
  {
    v14 = [NSString stringWithFormat:@"From %@", v13];
  }

  else
  {
    v14 = @"From host";
  }

  v22.receiver = self;
  v22.super_class = UANetworkReplayController;
  v15 = [(UAActivityReplay *)&v22 initWithManager:v10 name:v14];
  if (v13)
  {
  }

  if (v15)
  {
    [(UANetworkReplayController *)v15 setPeerName:v13];
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = @"?";
    }

    v17 = [(UAActivityReplay *)v15 pairedPeer];
    [v17 setName:v16];

    v18 = +[NSMutableData data];
    [(UANetworkReplayController *)v15 setReadBuffer:v18];

    [(UANetworkReplayController *)v15 setInputStream:v11];
    [(UANetworkReplayController *)v15 setOutputStream:v12];
    [v11 setDelegate:v15];
    [v12 setDelegate:v15];
    v19 = +[NSRunLoop mainRunLoop];
    [v11 scheduleInRunLoop:v19 forMode:NSRunLoopCommonModes];

    v20 = +[NSRunLoop mainRunLoop];
    [v12 scheduleInRunLoop:v20 forMode:NSRunLoopCommonModes];

    [v11 open];
    [v12 open];
  }

  return v15;
}

- (UANetworkReplayController)initWithManager:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 name];
  if (v8)
  {
    v9 = [v7 name];
  }

  else
  {
    v9 = @"Net";
  }

  v21.receiver = self;
  v21.super_class = UANetworkReplayController;
  v10 = [(UAActivityReplay *)&v21 initWithManager:v6 name:v9];
  if (v8)
  {
  }

  if (v10)
  {
    v11 = +[NSMutableData data];
    [(UANetworkReplayController *)v10 setReadBuffer:v11];

    v19 = 0;
    v20 = 0;
    if ([v7 getInputStream:&v20 outputStream:&v19])
    {
      v12 = [v7 name];
      v13 = [v12 copy];
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

- (void)stream:(id)a3 handleEvent:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(UAActivityReplay *)v7 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005FFE0;
  block[3] = &unk_1000C5F80;
  v12 = v7;
  v13 = a4;
  v11 = v6;
  v9 = v6;
  dispatch_async(v8, block);

  objc_sync_exit(v7);
}

- (BOOL)processCommand:(id)a3
{
  v4 = a3;
  v5 = sub_100001A30(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(UANetworkReplayController *)self peerName];
    v7 = [(UANetworkReplayController *)self peerUUID];
    v8 = [v7 UUIDString];
    *buf = 138478339;
    v76 = v4;
    v77 = 2113;
    v78 = v6;
    v79 = 2114;
    v80 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "COMMAND: %{private}@, from %{private}@/%{public}@", buf, 0x20u);
  }

  v9 = [(UAActivityReplay *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [NSScanner scannerWithString:v4];
  v11 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v73 = 0;
  v12 = [v10 scanUpToCharactersFromSet:v11 intoString:&v73];
  v13 = v73;

  v14 = 0;
  if (v12 && v13)
  {
    v15 = [v13 uppercaseString];

    if (([v15 isEqual:@"HANDOFF"] & 1) != 0 || objc_msgSend(v15, "isEqual:", @"VERSION"))
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

      if ([v15 isEqual:{@"HANDOFF", v16}])
      {
        v21 = sub_100001A30(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = [(UANetworkReplayController *)self peerName];
          v23 = [v17 UUIDString];
          [(UACornerActionManagerHandler *)self manager];
          v65 = v63 = v4;
          [v65 uuid];
          v24 = v61 = v10;
          v25 = [v24 UUIDString];
          v26 = [(UACornerActionManagerHandler *)self uuid];
          [v26 UUIDString];
          v28 = v27 = v15;
          *buf = 138478595;
          v76 = v22;
          v77 = 2114;
          v78 = v23;
          v79 = 2114;
          v80 = v25;
          v81 = 2114;
          v82 = v28;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "NETWORK: Responding to peer %{private}@/%{public}@ with our UUID, %{public}@, to establish connection from controllerUUID=%{public}@.", buf, 0x2Au);

          v15 = v27;
          v10 = v61;

          v4 = v63;
        }

        v29 = v15;
        if (v17)
        {
          [(UANetworkReplayController *)self setPeerUUID:v17];
        }

        else
        {
          v30 = +[NSUUID UUID];
          [(UANetworkReplayController *)self setPeerUUID:v30];
        }

        v31 = [(UACornerActionManagerHandler *)self manager];
        v32 = [v31 uuid];
        v33 = [v32 UUIDString];
        v34 = [NSString stringWithFormat:@"VERSION v%g %@\n", 0x4081380000000000, v33];
        [(UANetworkReplayController *)self sendResponse:v34];

        v15 = v29;
      }

      v35 = [(UACornerActionManagerHandler *)self manager];
      v36 = [v35 uuid];
      v37 = [v17 isEqual:v36];

      if (v37)
      {
        v38 = sub_100001A30(0);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = [v17 UUIDString];
          v40 = [(UACornerActionManagerHandler *)self uuid];
          [v40 UUIDString];
          v42 = v41 = v15;
          *buf = 138543618;
          v76 = v39;
          v77 = 2114;
          v78 = v42;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "NETWORK: Destroying replay handler object because the peer's UUID %{public}@ matched our own, controllerUUID=%{public}@.", buf, 0x16u);

          v15 = v41;
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

        v60 = v15;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v43 = [(UACornerActionManagerHandler *)self manager];
        v44 = [v43 handlers];

        v45 = [v44 countByEnumeratingWithState:&v67 objects:v74 count:16];
        if (v45)
        {
          v46 = v45;
          v62 = v10;
          v64 = v4;
          v47 = *v68;
          while (2)
          {
            for (i = 0; i != v46; i = i + 1)
            {
              if (*v68 != v47)
              {
                objc_enumerationMutation(v44);
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
                  v52 = [(UANetworkReplayController *)v50 peerUUID];
                  v53 = [v17 isEqual:v52];

                  if (v53)
                  {
                    v54 = sub_100001A30(0);
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                    {
                      v55 = [(UANetworkReplayController *)v50 peerName];
                      v56 = [v17 UUIDString];
                      v57 = [(UACornerActionManagerHandler *)self uuid];
                      v58 = [v57 UUIDString];
                      *buf = 138412802;
                      v76 = v55;
                      v77 = 2114;
                      v78 = v56;
                      v79 = 2114;
                      v80 = v58;
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

            v46 = [v44 countByEnumeratingWithState:&v67 objects:v74 count:16];
            if (v46)
            {
              continue;
            }

            break;
          }

LABEL_44:
          v10 = v62;
          v4 = v64;
        }

        v15 = v60;
      }

      goto LABEL_47;
    }

    v66.receiver = self;
    v66.super_class = UANetworkReplayController;
    v14 = [(UAActivityReplay *)&v66 processCommand:v4];
  }

  else
  {
    v15 = v13;
  }

LABEL_48:

  return v14;
}

- (BOOL)sendResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 UTF8String];
  v6 = strlen(v5);
  v7 = sub_100001A30(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_100009684(v4);
    v9 = [(UACornerActionManagerHandler *)self uuid];
    v10 = [v9 UUIDString];
    v11 = [(UANetworkReplayController *)self peerName];
    v22 = 138478339;
    v23 = v8;
    v24 = 2114;
    v25 = v10;
    v26 = 2113;
    v27 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "COMMANDRESPONSE: %{private}@ (controllerUUID=%{public}@ peerName=%{private}@)", &v22, 0x20u);
  }

  v12 = self;
  objc_sync_enter(v12);
  v13 = [(UANetworkReplayController *)v12 writeBuffer];
  if ([v13 length])
  {
    v14 = 0;
  }

  else
  {
    v15 = [(UANetworkReplayController *)v12 outputStream];
    v14 = [v15 write:v5 maxLength:strlen(v5)];
  }

  v16 = v6 <= v14;
  v17 = v6 - v14;
  if (!v16)
  {
    v18 = [(UANetworkReplayController *)v12 writeBuffer];
    v19 = v18 == 0;

    if (v19)
    {
      v20 = [NSMutableData dataWithBytes:&v14[v5] length:v17];
      [(UANetworkReplayController *)v12 setWriteBuffer:v20];
    }

    else
    {
      v20 = [(UANetworkReplayController *)v12 writeBuffer];
      [v20 appendBytes:&v14[v5] length:v17];
    }
  }

  objc_sync_exit(v12);

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

  v4 = [(UACornerActionManagerHandler *)self name];
  v5 = [(UANetworkReplayController *)self peerName];
  v6 = [(UANetworkReplayController *)self peerUUID];
  v7 = [v6 UUIDString];
  v8 = [(UACornerActionManagerHandler *)self uuid];
  v9 = [v8 UUIDString];
  v10 = [NSString stringWithFormat:@"NetworkReplay:%@%@ peer:%@/%@ %@", v3, v4, v5, v7, v9];

  return v10;
}

- (BOOL)terminate
{
  v3 = sub_100001A30(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UACornerActionManagerHandler *)self uuid];
    v5 = [v4 UUIDString];
    *buf = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "controllerUUID=%{public}@", buf, 0xCu);
  }

  [(UACornerActionManagerHandler *)self suspend];
  v6 = [(UAActivityReplay *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000617A4;
  block[3] = &unk_1000C4CC0;
  block[4] = self;
  dispatch_async(v6, block);

  v8.receiver = self;
  v8.super_class = UANetworkReplayController;
  return [(UAActivityReplay *)&v8 terminate];
}

+ (BOOL)createConnection:(id)a3 host:(id)a4 port:(int64_t)a5
{
  v15 = 0;
  v16 = 0;
  v7 = a4;
  v8 = a3;
  [NSStream getStreamsToHostWithName:v7 port:a5 inputStream:&v16 outputStream:&v15];
  v9 = v16;
  v10 = v15;
  v11 = [UANetworkReplayController alloc];
  v12 = [NSString stringWithFormat:@"%@/%ld", v7, a5];
  v13 = [(UANetworkReplayController *)v11 initWithManager:v8 inputStream:v9 outputStream:v10 name:v12];

  [(UANetworkReplayController *)v13 setPeerName:v7];
  [v8 addHandler:v13];

  return 1;
}

@end