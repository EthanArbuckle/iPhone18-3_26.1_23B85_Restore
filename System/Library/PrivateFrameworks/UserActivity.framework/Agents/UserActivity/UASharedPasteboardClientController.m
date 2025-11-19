@interface UASharedPasteboardClientController
- (BOOL)isScreenWatcherPresent;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)localReflection;
- (UASharedPasteboardClientController)initWithManager:(id)a3 name:(id)a4;
- (id)currentPasteboardActivityInfo;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)localPBStatus;
- (id)uuid;
- (void)advertiser:(id)a3 didReceiveInputStream:(id)a4 outputStream:(id)a5;
- (void)clearLocalPasteboardInformation;
- (void)clearLocalPasteboardTypes:(id)a3;
- (void)dealloc;
- (void)fetchRemoteDeviceName:(id)a3;
- (void)fetchRemotePasteboardForProcess:(int)a3 withCompletion:(id)a4;
- (void)fetchRemotePasteboardStatus:(id)a3;
- (void)fetchRemotePasteboardTypesForProcess:(int)a3 withCompletion:(id)a4;
- (void)getLocalPasteboardInfoData:(id)a3;
- (void)hideProgressUI:(BOOL)a3;
- (void)localPasteboardTypesDidChange:(id)a3 forGeneration:(unint64_t)a4;
- (void)receivePasteboardStreamData:(id)a3 version:(int64_t)a4 withCompletion:(id)a5;
- (void)removeLocalPasteboardFromAdvertisers:(id)a3;
- (void)setReturnPasteboardDataEarlyWithCompletion:(id)a3;
- (void)setScreenWatcherPresent:(BOOL)a3;
- (void)showProgressUI:(id)a3;
- (void)startConnection:(int)a3;
- (void)startServiceForPasteVersion:(int64_t)a3 handler:(id)a4;
@end

@implementation UASharedPasteboardClientController

- (id)eligibleAdvertiseableItemsInOrder
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UASharedPasteboardClientController *)self currentPasteboardActivityInfo];
    v5 = [v4 allObjects];
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[PBOARD CONTROLLER] Return Client Items in Order: %@", &v9, 0xCu);
  }

  v6 = [(UASharedPasteboardClientController *)self currentPasteboardActivityInfo];
  v7 = [v6 allObjects];

  return v7;
}

- (id)currentPasteboardActivityInfo
{
  if ([(UASharedPasteboardClientController *)self advertiseTypes])
  {
    v3 = objc_alloc_init(UASharedPasteboardActivityInfo);
    [(UASharedPasteboardActivityInfo *)v3 setActivityType:@"com.apple.continuitypasteboard"];
    [(UASharedPasteboardActivityInfo *)v3 setType:1];
    v4 = objc_alloc_init(NSMutableSet);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(UASharedPasteboardClientController *)self currentLocalTypes];
    v6 = [v5 items];

    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) types];
          v12 = [v11 allKeys];
          [v4 addObjectsFromArray:v12];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    [(UASharedPasteboardActivityInfo *)v3 setGeneration:[(UASharedPasteboardClientController *)self currentLocalGeneration]];
    [(UASharedPasteboardActivityInfo *)v3 setPasteboardTypes:v4];
    [(UASharedPasteboardActivityInfo *)v3 setEligibleForHandoff:1];
    v13 = [(UASharedPasteboardClientController *)self uuid];
    [(UASharedPasteboardActivityInfo *)v3 setUuid:v13];

    v14 = [NSSet setWithObject:v3];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (UASharedPasteboardClientController)initWithManager:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  v40.receiver = self;
  v40.super_class = UASharedPasteboardClientController;
  v8 = [(UAClientController *)&v40 initWithManager:v6 name:v7];
  if (v8)
  {
    v9 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Creating pboard client controller", buf, 2u);
    }

    v10 = dispatch_queue_create("com.apple.coreservices.uasharedpboardclientq", &_dispatch_queue_attr_concurrent);
    [(UASharedPasteboardClientController *)v8 setClientq:v10];

    v11 = [NSXPCListener alloc];
    v12 = UASharedPasteboardManagerServiceName();
    v13 = [v11 initWithMachServiceName:v12];
    [(UASharedPasteboardClientController *)v8 setXpclistener:v13];

    v14 = [(UASharedPasteboardClientController *)v8 xpclistener];
    [v14 setDelegate:v8];

    v15 = [NSXPCListener alloc];
    v16 = UASharedPasteboardAUXServiceName();
    v17 = [v15 initWithMachServiceName:v16];
    [(UASharedPasteboardClientController *)v8 setAuxlistener:v17];

    v18 = [(UASharedPasteboardClientController *)v8 auxlistener];
    [v18 setDelegate:v8];

    v19 = objc_alloc_init(NSMutableSet);
    [(UASharedPasteboardClientController *)v8 setControlConnections:v19];

    v20 = [NSXPCListener alloc];
    v21 = UASharedPasteboardControllServiceName();
    v22 = [v20 initWithMachServiceName:v21];
    [(UASharedPasteboardClientController *)v8 setControlListener:v22];

    v23 = [(UASharedPasteboardClientController *)v8 controlListener];
    [v23 setDelegate:v8];

    v24 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.coreservices.uauseractivitypasteboardclient.xpc" options:0];
    [(UASharedPasteboardClientController *)v8 setClientNotificationConnection:v24];

    v25 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UAPasteboardClientProtocol];
    v26 = [(UASharedPasteboardClientController *)v8 clientNotificationConnection];
    [v26 setRemoteObjectInterface:v25];

    v27 = [(UASharedPasteboardClientController *)v8 clientNotificationConnection];
    [v27 setInterruptionHandler:&stru_1000C5398];

    objc_initWeak(buf, v8);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10002A444;
    v37[3] = &unk_1000C4EB8;
    objc_copyWeak(&v38, buf);
    v28 = [(UASharedPasteboardClientController *)v8 clientNotificationConnection];
    [v28 setInvalidationHandler:v37];

    v29 = objc_alloc_init(NSMutableSet);
    [(UASharedPasteboardClientController *)v8 setCoders:v29];

    [(UASharedPasteboardClientController *)v8 setRemoteAvailable:0];
    v30 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/UserActivity.framework"];
    [(UASharedPasteboardClientController *)v8 setUaBundle:v30];

    v31 = [(UASharedPasteboardClientController *)v8 uaBundle];
    [v31 load];

    v32 = [(UASharedPasteboardClientController *)v8 xpclistener];
    [v32 resume];

    v33 = [(UASharedPasteboardClientController *)v8 auxlistener];
    [v33 resume];

    v34 = [(UASharedPasteboardClientController *)v8 controlListener];
    [v34 resume];

    v35 = [(UASharedPasteboardClientController *)v8 clientNotificationConnection];
    [v35 resume];

    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(UASharedPasteboardClientController *)self clientConnection];
  [v3 invalidate];

  v4 = [(UASharedPasteboardClientController *)self clientNotificationConnection];
  [v4 invalidate];

  v5 = [(UASharedPasteboardClientController *)self xpclistener];
  [v5 invalidate];

  v6.receiver = self;
  v6.super_class = UASharedPasteboardClientController;
  [(UASharedPasteboardClientController *)&v6 dealloc];
}

- (id)uuid
{
  if (qword_1000E5C78 != -1)
  {
    sub_10007BD3C();
  }

  v3 = qword_1000E5C70;

  return v3;
}

- (BOOL)localReflection
{
  v2 = +[UAUserActivityDefaults sharedDefaults];
  v3 = [v2 localPasteboardRefection];

  return v3;
}

- (BOOL)isScreenWatcherPresent
{
  v2 = self;
  objc_sync_enter(v2);
  screenWatcherPresent = v2->_screenWatcherPresent;
  objc_sync_exit(v2);

  return screenWatcherPresent;
}

- (void)setScreenWatcherPresent:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_screenWatcherPresent != v3)
  {
    v4->_screenWatcherPresent = v3;
    if (v3)
    {
      v5 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Screen sharing session started, disabling universal clipboard", buf, 2u);
      }

      [(UASharedPasteboardClientController *)v4 setRemotePasteboardAvalibility:0 withDataRequester:0];
      [(UASharedPasteboardClientController *)v4 clearLocalPasteboardInformation];
    }

    else
    {
      v6 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] No more screen sharing sessions, enabling universal clipboard", v7, 2u);
      }
    }
  }

  objc_sync_exit(v4);
}

- (void)startConnection:(int)a3
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Process %d requested for UC to disable", v5, 8u);
  }
}

- (void)setReturnPasteboardDataEarlyWithCompletion:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(UASharedPasteboardClientController *)v4 remoteGeneration];

  if (v5)
  {
    v6 = [(UASharedPasteboardClientController *)v4 remoteGeneration];
    [v6 setReturnEarly:1];

    v7 = [(UASharedPasteboardClientController *)v4 remoteGeneration];
    v8[2](v8, [v7 state] == 5);
  }

  else
  {
    v8[2](v8, 1);
  }

  objc_sync_exit(v4);
}

- (void)fetchRemotePasteboardStatus:(id)a3
{
  v5 = a3;
  v6 = [(UASharedPasteboardClientController *)self remoteGeneration];
  (*(a3 + 2))(v5, v6 != 0);
}

- (void)fetchRemoteDeviceName:(id)a3
{
  v5 = a3;
  v9 = [(UASharedPasteboardClientController *)self remoteGeneration];
  v6 = [v9 dataRequester];
  v7 = [v6 peer];
  v8 = [v7 name];
  (*(a3 + 2))(v5, v8);
}

- (void)localPasteboardTypesDidChange:(id)a3 forGeneration:(unint64_t)a4
{
  v6 = a3;
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = a4;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Got type update from client, gen: %lu, %@", buf, 0x16u);
  }

  if ([(UASharedPasteboardClientController *)self isScreenWatcherPresent])
  {
    v8 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "[PBOARD CONTROLLER] Ignoring type updates, screen sharing session in progress";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v10 = +[UAUserActivityDefaults sharedDefaults];
  v11 = [v10 clipboardSharingEnabled];

  if ((v11 & 1) == 0)
  {
    v8 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "[PBOARD CONTROLLER] Ignoring type updates, clipboard sharing disabled";
      goto LABEL_15;
    }

LABEL_21:

    goto LABEL_22;
  }

  if ([(UASharedPasteboardClientController *)self currentLocalGeneration]<= a4)
  {
    if ([(UASharedPasteboardClientController *)self currentLocalGeneration]< a4)
    {
      v12 = +[UASharedPasteboardDataManager sharedInstance];
      [v12 cleanupCloneDir];
    }

    [(UASharedPasteboardClientController *)self setCurrentLocalTypes:v6];
    [(UASharedPasteboardClientController *)self setCurrentLocalGeneration:a4];
    [(UASharedPasteboardClientController *)self setHasFetchedLocalData:0];
    if ([(UASharedPasteboardClientController *)self localReflection])
    {
      v13 = +[UASharedPasteboardDataManager sharedInstance];
      v14 = [v13 createFileForLocalPasteboardBlob];

      v15 = +[UASharedPasteboardDataManager sharedInstance];
      v16 = [v15 fileURLForCloneItems];

      v17 = [(UASharedPasteboardClientController *)self clientConnection];
      v18 = v17;
      if (v17)
      {
        [v17 auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v19 = sub_100029ED8(v16, buf);

      v20 = [(UASharedPasteboardClientController *)self clientConnection];
      v21 = [v20 remoteObjectProxy];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10002B230;
      v31[3] = &unk_1000C53E0;
      v31[4] = self;
      [v21 writeLocalPasteboardToFile:v14 itemDir:v16 extension:v19 withCompletion:v31];
    }

    [(UASharedPasteboardClientController *)self setAdvertiseTypes:1];
    v22 = [(UACornerActionManagerHandler *)self manager];
    [v22 scheduleUpdatingAdvertisableItems];

    v23 = [(UASharedPasteboardClientController *)self localTimeout];

    if (v23)
    {
      v24 = [(UASharedPasteboardClientController *)self localTimeout];
      [v24 invalidate];
    }

    v25 = +[UAUserActivityDefaults sharedDefaults];
    [v25 localPasteboardAvalibilityTimeout];
    v27 = v26;

    v28 = [NSTimer timerWithTimeInterval:self target:"clearLocalPasteboardTypes:" selector:0 userInfo:0 repeats:v27];
    [(UASharedPasteboardClientController *)self setLocalTimeout:v28];

    v29 = +[NSRunLoop mainRunLoop];
    v30 = [(UASharedPasteboardClientController *)self localTimeout];
    [v29 addTimer:v30 forMode:NSRunLoopCommonModes];

    v8 = +[UASharedPasteboardDataManager sharedInstance];
    [v8 cleanupItemsDir];
    goto LABEL_21;
  }

LABEL_22:
}

- (void)clearLocalPasteboardInformation
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Clear local pasteboard info: from client", v5, 2u);
  }

  [(UASharedPasteboardClientController *)self setCurrentLocalGeneration:0];
  [(UASharedPasteboardClientController *)self clearLocalPasteboardTypes:0];
  v4 = +[UADiagnosticManager sharedManager];
  [v4 submitLocalPasteboardInfoWasCleared];
}

- (void)clearLocalPasteboardTypes:(id)a3
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Remove Local Types Fired", v15, 2u);
  }

  v5 = [(UASharedPasteboardClientController *)self pasteAdvertiser];
  [v5 stop];

  [(UASharedPasteboardClientController *)self setPasteAdvertiser:0];
  [(UASharedPasteboardClientController *)self setCurrentLocalTypes:0];
  [(UASharedPasteboardClientController *)self setCurrentLocalPasteboard:0];
  [(UASharedPasteboardClientController *)self setCurrentLocalPasteboardSize:0];
  v6 = [(UASharedPasteboardClientController *)self localInfo];

  if (!v6)
  {
    [(UASharedPasteboardClientController *)self setPboardInfoToSend:0];
  }

  if ([(UASharedPasteboardClientController *)self localReflection])
  {
    [(UASharedPasteboardClientController *)self setRemotePasteboardAvalibility:0 withDataRequester:0];
  }

  v7 = [(UASharedPasteboardClientController *)self localTimeout];
  [v7 invalidate];

  v8 = [(UACornerActionManagerHandler *)self manager];
  [v8 scheduleUpdatingAdvertisableItems];

  v9 = +[UAUserActivityDefaults sharedDefaults];
  [v9 localPasteboardAvalibilityClearedTimeout];
  v11 = v10;

  v12 = [NSTimer timerWithTimeInterval:self target:"removeLocalPasteboardFromAdvertisers:" selector:0 userInfo:0 repeats:v11];
  [(UASharedPasteboardClientController *)self setLocalTimeout:v12];

  v13 = +[NSRunLoop mainRunLoop];
  v14 = [(UASharedPasteboardClientController *)self localTimeout];
  [v13 addTimer:v14 forMode:NSRunLoopCommonModes];
}

- (void)removeLocalPasteboardFromAdvertisers:(id)a3
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Remove Local Timer Fired", v7, 2u);
  }

  [(UASharedPasteboardClientController *)self setAdvertiseTypes:0];
  v5 = [(UASharedPasteboardClientController *)self localTimeout];
  [v5 invalidate];

  [(UASharedPasteboardClientController *)self setLocalTimeout:0];
  v6 = [(UACornerActionManagerHandler *)self manager];
  [v6 scheduleUpdatingAdvertisableItems];
}

- (void)fetchRemotePasteboardTypesForProcess:(int)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Pasteboard types fetch requested", buf, 2u);
  }

  if ([(UASharedPasteboardClientController *)self localReflection])
  {
    v7 = objc_alloc_init(UASharedPasteboardInfo);
    v8 = [(UASharedPasteboardClientController *)self currentLocalPasteboard];
    [(UASharedPasteboardClientController *)v7 setItems:v8];

    v5[2](v5, v7, 0);
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    v9 = [(UASharedPasteboardClientController *)v7 remoteGeneration];

    if (v9)
    {
      v10 = [(UASharedPasteboardClientController *)v7 remoteGeneration];
      v11 = [v10 state];

      v12 = [(UASharedPasteboardClientController *)v7 remoteGeneration];
      if (v11 < 3)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10002B880;
        v14[3] = &unk_1000C5448;
        v14[4] = v7;
        v15 = v5;
        [v12 requestRemoteTypeInfo:v14];

        v12 = v15;
      }

      else
      {
        v13 = [v12 pbInfo];
        v5[2](v5, v13, 0);
      }
    }

    else
    {
      v5[2](v5, 0, 0);
    }

    objc_sync_exit(v7);
  }
}

- (void)fetchRemotePasteboardForProcess:(int)a3 withCompletion:(id)a4
{
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x2020000000;
  v80 = 0;
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_10002C310;
  v76[3] = &unk_1000C5470;
  v78 = v79;
  v76[4] = self;
  v56 = a4;
  v77 = v56;
  v55 = objc_retainBlock(v76);
  v6 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v86) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Pasteboard data fetch requested for pid: %d", buf, 8u);
  }

  if (![(UASharedPasteboardClientController *)self localReflection])
  {
    v10 = self;
    objc_sync_enter(v10);
    val = v10;
    v11 = [(UASharedPasteboardClientController *)v10 remoteGeneration];
    LODWORD(v10) = [v11 state] == 5;

    if (v10)
    {
      v12 = [(UASharedPasteboardClientController *)val remoteGeneration];
      v53 = [v12 pbInfo];

      v13 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = *&v53;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Already have remote data, using it: %@", buf, 0xCu);
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = [v53 items];
      v60 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
      if (v60)
      {
        v59 = *v73;
        do
        {
          v61 = 0;
          do
          {
            if (*v73 != v59)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v72 + 1) + 8 * v61);
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v15 = [v14 types];
            v16 = [v15 countByEnumeratingWithState:&v68 objects:v83 count:16];
            if (v16)
            {
              v17 = *v69;
              do
              {
                v18 = 0;
                do
                {
                  if (*v69 != v17)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v19 = *(*(&v68 + 1) + 8 * v18);
                  v20 = +[UASharedPasteboardDataManager sharedInstance];
                  v21 = [v20 remotePasteboardBlobForReading];
                  v22 = [v14 types];
                  v23 = [v22 objectForKeyedSubscript:v19];
                  [v23 setDataFile:v21];

                  v18 = v18 + 1;
                }

                while (v16 != v18);
                v16 = [v15 countByEnumeratingWithState:&v68 objects:v83 count:16];
              }

              while (v16);
            }

            v61 = v61 + 1;
          }

          while (v61 != v60);
          v60 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
        }

        while (v60);
      }

      v24 = +[UASharedPasteboardDataManager sharedInstance];
      v25 = [v24 remotePasteboardBlobForReading];
      [v53 setDataFile:v25];

      (*(v56 + 2))(v56, v53, 0);
    }

    else
    {
      v26 = [(UASharedPasteboardClientController *)val remoteGeneration];
      v27 = [v26 state] == 6;

      if (v27)
      {
        v54 = [NSError errorWithDomain:UAContinuityErrorDomain code:-125 userInfo:0];
        (*(v56 + 2))(v56, 0, v54);

LABEL_32:
        objc_sync_exit(val);
        goto LABEL_33;
      }

      v28 = [(UASharedPasteboardClientController *)val remoteGeneration];

      if (!v28)
      {
        (v55[2])(v55, 0, 0);
        goto LABEL_32;
      }

      v29 = [(UASharedPasteboardClientController *)val remoteGeneration];
      v30 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Requesting data from remote device", buf, 2u);
      }

      [(UASharedPasteboardClientController *)val setPasteFetchStartTime:mach_absolute_time()];
      v31 = objc_alloc_init(UARemotePasteboardWasRequestedEvent);
      [(UASharedPasteboardClientController *)val setPasteInfo:v31];

      v32 = [(UASharedPasteboardClientController *)val remoteGeneration];
      v33 = [v32 dataRequester];
      v34 = [v33 peer];
      v35 = [v34 modelIdentifier];
      v36 = [(UASharedPasteboardClientController *)val pasteInfo];
      [v36 setRemoteDeviceType:v35];

      v37 = +[UAUserActivityDefaults sharedDefaults];
      [v37 pasteboardShowUIDelay];
      v39 = v38;

      v40 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v86 = v39;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Starting timer to show UI in %lf sec", buf, 0xCu);
      }

      v41 = [NSTimer timerWithTimeInterval:val target:"showProgressUI:" selector:0 userInfo:0 repeats:v39];
      [(UASharedPasteboardClientController *)val setShowUITimer:v41];

      v42 = +[NSRunLoop mainRunLoop];
      v43 = [(UASharedPasteboardClientController *)val showUITimer];
      [v42 addTimer:v43 forMode:NSRunLoopCommonModes];

      objc_initWeak(buf, val);
      v44 = [NSProgress alloc];
      v45 = +[NSProgress currentProgress];
      v81 = NSProgressCategoryKey;
      v82 = @"UASharedPasteboard";
      v46 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v47 = [v44 initWithParent:v45 userInfo:v46];
      [(UASharedPasteboardClientController *)val setFetchProgress:v47];

      v48 = [(UASharedPasteboardClientController *)val fetchProgress];
      [v48 setKind:NSProgressKindFile];

      v49 = [(UASharedPasteboardClientController *)val fetchProgress];
      [v49 setCancellable:1];

      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10002C408;
      v65[3] = &unk_1000C5498;
      objc_copyWeak(&v67, buf);
      v50 = v55;
      v66 = v50;
      v51 = [(UASharedPasteboardClientController *)val fetchProgress];
      [v51 setCancellationHandler:v65];

      v52 = [(UASharedPasteboardClientController *)val fetchProgress];
      [v52 _publish];

      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_10002C6AC;
      v62[3] = &unk_1000C54C0;
      v62[4] = val;
      v64 = v50;
      v63 = v29;
      v53 = v63;
      [v63 requestRemotePasteboardData:v62];

      objc_destroyWeak(&v67);
      objc_destroyWeak(buf);
    }

    goto LABEL_32;
  }

  val = objc_alloc_init(UASharedPasteboardInfo);
  v7 = +[UASharedPasteboardDataManager sharedInstance];
  v8 = [v7 localPasteboardBlobForReading];
  [(UASharedPasteboardClientController *)val setDataFile:v8];

  v9 = [(UASharedPasteboardClientController *)self currentLocalPasteboard];
  [(UASharedPasteboardClientController *)val setItems:v9];

  [(UASharedPasteboardClientController *)val setDataSize:[(UASharedPasteboardClientController *)self currentLocalPasteboardSize]];
  (*(v56 + 2))(v56, val, 0);
LABEL_33:

  _Block_object_dispose(v79, 8);
}

- (void)receivePasteboardStreamData:(id)a3 version:(int64_t)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(UASharedPasteboardClientController *)self pasteInfo];
  [v10 setUsedStreams:1];

  if (objc_opt_class())
  {
    v11 = [[SFCompanionAdvertiser alloc] initWithServiceType:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D0A8;
  block[3] = &unk_1000C5560;
  v19 = v9;
  v20 = a4;
  block[4] = self;
  v17 = v11;
  v18 = v8;
  v13 = v9;
  v14 = v8;
  v15 = v11;
  dispatch_async(v12, block);
}

- (void)getLocalPasteboardInfoData:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(UASharedPasteboardInfoWrapper);
  v6 = [(UASharedPasteboardClientController *)self currentLocalTypes];
  [(UASharedPasteboardInfoWrapper *)v5 setPbinfo:v6];

  [(UASharedPasteboardInfoWrapper *)v5 setProtocolVersion:2];
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[PBOARD CONTROLLER] Archiving pbinfo: %@", &v9, 0xCu);
  }

  v8 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  v4[2](v4, v8, 0);
}

- (void)startServiceForPasteVersion:(int64_t)a3 handler:(id)a4
{
  v6 = a4;
  [(UASharedPasteboardClientController *)self setLocalSendStartTime:mach_absolute_time()];
  v7 = objc_alloc_init(UARemotePasteboardDidSendLocalEvent);
  [(UASharedPasteboardClientController *)self setLocalInfo:v7];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10002EF74;
  v33[3] = &unk_1000C52F8;
  v33[4] = self;
  v8 = v6;
  v34 = v8;
  v9 = objc_retainBlock(v33);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10002F1D0;
  v30[3] = &unk_1000C5588;
  v32 = a3;
  v30[4] = self;
  v10 = v8;
  v31 = v10;
  v11 = objc_retainBlock(v30);
  if ([(UASharedPasteboardClientController *)self hasFetchedLocalData])
  {
    v12 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Pasteboard data alread fetched sending now", buf, 2u);
    }

    v13 = [(UASharedPasteboardClientController *)self pboardInfoToSend];
    v14 = [v13 pbinfo];
    v15 = [v14 dataSize];
    v16 = +[UAUserActivityDefaults sharedDefaults];
    v17 = [v16 pasteboardEmbeddedPayloadSizeLimitInBytes];

    if (v15 >= v17)
    {
      (v11[2])(v11);
    }

    else
    {
      (v9[2])(v9);
    }
  }

  else
  {
    v18 = [(UASharedPasteboardClientController *)self pboardFetchSem];

    if (!v18)
    {
      v19 = dispatch_semaphore_create(0);
      [(UASharedPasteboardClientController *)self setPboardFetchSem:v19];
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002F430;
    v25[3] = &unk_1000C5600;
    v25[4] = self;
    v26 = v10;
    v27 = v9;
    v28 = v11;
    v20 = objc_retainBlock(v25);
    v21 = [(UASharedPasteboardClientController *)self clientq];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10002FFB4;
    v23[3] = &unk_1000C52F8;
    v23[4] = self;
    v24 = v20;
    v22 = v20;
    dispatch_async(v21, v23);
  }
}

- (void)advertiser:(id)a3 didReceiveInputStream:(id)a4 outputStream:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Received streams, waiting for local data to be available", buf, 2u);
  }

  v12 = [UADiagnosticUtils absoluteToNSec:mach_absolute_time() - [(UASharedPasteboardClientController *)self streamOpenStartTime]];
  v13 = [(UASharedPasteboardClientController *)self localInfo];
  [v13 setStreamOpenDelay:v12];

  v14 = [(UASharedPasteboardClientController *)self pboardFetchSem];

  if (!v14 || ([(UASharedPasteboardClientController *)self pboardFetchSem], v15 = objc_claimAutoreleasedReturnValue(), v16 = dispatch_time(0, 2000000000), v17 = dispatch_semaphore_wait(v15, v16), v15, [(UASharedPasteboardClientController *)self setPboardFetchSem:0], !v17))
  {
    v20 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Local data available, starting out stream", buf, 2u);
    }

    v21 = [(UASharedPasteboardClientController *)self pboardInfoToSend];
    v22 = +[UASharedPasteboardDataManager sharedInstance];
    v23 = [v22 localPasteboardBlobForReading];
    v24 = [v21 pbinfo];
    [v24 setDataFile:v23];

    objc_initWeak(buf, self);
    [(UASharedPasteboardClientController *)self setStreamXferStartTime:mach_absolute_time()];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000306C4;
    v29[3] = &unk_1000C5650;
    objc_copyWeak(&v30, buf);
    v25 = objc_retainBlock(v29);
    if ([(UASharedPasteboardClientController *)self sendingCoderVersion]== 1)
    {
      v26 = [[UAPBStreamCoderV1 alloc] initWithInputStream:v9 outputStream:v10];
      [(UAPBStreamCoderV1 *)v26 sendPasteboard:v21 withCompletion:v25];
      v27 = [(UASharedPasteboardClientController *)self coders];
      objc_sync_enter(v27);
      v28 = [(UASharedPasteboardClientController *)self coders];
      [v28 addObject:v26];
    }

    else
    {
      if ([(UASharedPasteboardClientController *)self sendingCoderVersion]!= 2)
      {
LABEL_15:

        objc_destroyWeak(&v30);
        objc_destroyWeak(buf);

        goto LABEL_16;
      }

      v26 = [[UCStreamCoderV2 alloc] initWithInputStream:v9 outputStream:v10];
      [(UAPBStreamCoderV1 *)v26 sendPasteboard:v21 withCompletion:v25];
      v27 = [(UASharedPasteboardClientController *)self coders];
      objc_sync_enter(v27);
      v28 = [(UASharedPasteboardClientController *)self coders];
      [v28 addObject:v26];
    }

    objc_sync_exit(v27);
    goto LABEL_15;
  }

  v18 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Timeout getting local pasteboard", buf, 2u);
  }

  sub_10002D890(v19, v9, v10);
LABEL_16:
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 valueForEntitlement:@"com.apple.private.coreservices.useractivityd.sharedpasteboard"];
  v9 = [v8 BOOLValue];

  if ((v9 & 1) == 0)
  {
    v17 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [UAAuditToken alloc];
      if (v7)
      {
        [v7 auditToken];
      }

      else
      {
        *buf = 0u;
        v43 = 0u;
      }

      v30 = [(UAAuditToken *)v18 initWithAuditToken:buf];
      *buf = 138412290;
      *&buf[4] = v30;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] New client connection does not have correct entitlement: %@", buf, 0xCu);
    }

    [v7 invalidate];
    goto LABEL_21;
  }

  v10 = [(UASharedPasteboardClientController *)self xpclistener];
  v11 = [v6 isEqual:v10];

  if (!v11)
  {
    v19 = [(UASharedPasteboardClientController *)self auxlistener];
    v20 = [v6 isEqual:v19];

    if (v20)
    {
      v21 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Received new aux connection: %@", buf, 0xCu);
      }

      [v7 setExportedObject:self];
      v22 = sub_100040C20();
      [v7 setExportedInterface:v22];

      [v7 setInterruptionHandler:&stru_1000C56B8];
      objc_initWeak(buf, self);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000312E4;
      v37[3] = &unk_1000C4EB8;
      objc_copyWeak(&v38, buf);
      [v7 setInvalidationHandler:v37];
      [v7 resume];
      [(UASharedPasteboardClientController *)self setAuxConnection:v7];
      objc_destroyWeak(&v38);
      objc_destroyWeak(buf);
      goto LABEL_17;
    }

    v23 = [(UASharedPasteboardClientController *)self controlListener];
    v24 = [v6 isEqual:v23];

    if (v24)
    {
      [v7 setExportedObject:self];
      v25 = sub_100040CAC();
      [v7 setExportedInterface:v25];

      [v7 setInterruptionHandler:&stru_1000C56D8];
      objc_initWeak(buf, self);
      objc_initWeak(&location, v7);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100031374;
      v33[3] = &unk_1000C5700;
      objc_copyWeak(&v34, buf);
      objc_copyWeak(&v35, &location);
      [v7 setInvalidationHandler:v33];
      [v7 resume];
      v26 = [(UASharedPasteboardClientController *)self controlConnections];
      objc_sync_enter(v26);
      v27 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "New Controller connection, disabling UC", v32, 2u);
      }

      v28 = [(UASharedPasteboardClientController *)self controlConnections];
      [v28 addObject:v7];

      objc_sync_exit(v26);
      [(UASharedPasteboardClientController *)self setScreenWatcherPresent:1];
      objc_destroyWeak(&v35);
      objc_destroyWeak(&v34);
      objc_destroyWeak(&location);
      objc_destroyWeak(buf);
      goto LABEL_17;
    }

LABEL_21:
    v29 = 0;
    goto LABEL_22;
  }

  v12 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Received new client connection: %@", buf, 0xCu);
  }

  v13 = sub_100040A30();
  [v7 setRemoteObjectInterface:v13];

  [v7 setExportedObject:self];
  v14 = sub_100040828();
  [v7 setExportedInterface:v14];

  [v7 setInterruptionHandler:&stru_1000C5670];
  v15 = [(UASharedPasteboardClientController *)self clientConnection];
  objc_initWeak(buf, self);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100031190;
  v39[3] = &unk_1000C5698;
  objc_copyWeak(&v41, buf);
  v16 = v15;
  v40 = v16;
  [v7 setInvalidationHandler:v39];
  [v7 resume];
  [(UASharedPasteboardClientController *)self setClientConnection:v7];

  objc_destroyWeak(&v41);
  objc_destroyWeak(buf);

LABEL_17:
  v29 = 1;
LABEL_22:

  return v29;
}

- (void)showProgressUI:(id)a3
{
  v4 = a3;
  [v4 invalidate];
  v5 = self;
  objc_sync_enter(v5);
  if ([(UASharedPasteboardClientController *)v5 isUIVisible])
  {
    v6 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] show pbui, but already visible, skipping", buf, 2u);
    }

    objc_sync_exit(v5);
  }

  else
  {
    [(UASharedPasteboardClientController *)v5 setIsUIVisible:1];
    objc_sync_exit(v5);

    v7 = +[UAUserActivityDefaults sharedDefaults];
    [v7 pasteboardUIMinimumDurration];
    v9 = v8;

    v10 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v37 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Setting durration time for %lf sec", buf, 0xCu);
    }

    v11 = [NSDate dateWithTimeIntervalSinceNow:v9];
    [(UASharedPasteboardClientController *)v5 setDontHideUIBefore:v11];

    v12 = [(UASharedPasteboardClientController *)v5 remoteGeneration];
    v13 = [v12 dataRequester];
    v14 = [v13 peer];

    v15 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(UACornerActionManagerHandler *)v14 name];
      v17 = [(UASharedPasteboardClientController *)v14 modelIdentifier];
      v18 = [(UASharedPasteboardClientController *)v14 deviceColor];
      *buf = 138412802;
      v37 = *&v16;
      v38 = 2112;
      v39 = v17;
      v40 = 2112;
      v41 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Setup progress UI: %@, %@, %@", buf, 0x20u);
    }

    v19 = objc_alloc_init(NSMutableDictionary);
    v20 = [(UACornerActionManagerHandler *)v14 name];
    v21 = [v20 length] == 0;

    v22 = [(UASharedPasteboardClientController *)v5 uaBundle];
    if (v21)
    {
      v23 = [v22 localizedStringForKey:@"main-label.default-title" value:&stru_1000C67D0 table:@"Localizable"];
      [v19 setObject:v23 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
    }

    else
    {
      v23 = [v22 localizedStringForKey:@"main-label.title" value:&stru_1000C67D0 table:@"Localizable"];
      v24 = [(UACornerActionManagerHandler *)v14 name];
      v25 = [NSString stringWithFormat:v23, v24];
      [v19 setObject:v25 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
    }

    v26 = [(UASharedPasteboardClientController *)v5 uaBundle];
    v27 = [v26 localizedStringForKey:@"cancel-button.title" value:&stru_1000C67D0 table:@"Localizable"];
    [v19 setObject:v27 forKeyedSubscript:kCFUserNotificationDefaultButtonTitleKey];

    [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:kCFUserNotificationAlertTopMostKey];
    [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDismissOnLock];
    [v19 setObject:&__kCFBooleanTrue forKeyedSubscript:SBUserNotificationDisableIdleSleepWhileVisible];
    [v19 setObject:@"com.apple.UserActivity.UASharedPasteboardiOSUI" forKeyedSubscript:SBUserNotificationExtensionIdentifierKey];
    v28 = [NSKeyedArchiver archivedDataWithRootObject:&__NSArray0__struct requiringSecureCoding:1 error:0];
    [v19 setObject:v28 forKeyedSubscript:SBUserNotificationExtensionItemsKey];

    v29 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = *&v19;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Creating notification for progress ui with options: %@", buf, 0xCu);
    }

    error = 0;
    v30 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 3uLL, &error, v19);
    v5->_notificationRef = v30;
    v31 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v37) = error;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Notification creation err: %d", buf, 8u);
    }

    if (error || !v30)
    {
      v33 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240192;
        LODWORD(v37) = error;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Failed to created user notification ref, err=%{public}d", buf, 8u);
      }
    }

    else
    {
      v32 = dispatch_get_global_queue(25, 0);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100031B90;
      block[3] = &unk_1000C5750;
      block[4] = v5;
      block[5] = v30;
      dispatch_async(v32, block);
    }

    v5 = v14;
  }
}

- (void)hideProgressUI:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(UASharedPasteboardClientController *)v4 setIsUIVisible:0];
  objc_sync_exit(v4);

  v5 = 0.0;
  if (!v3)
  {
    v6 = [(UASharedPasteboardClientController *)v4 dontHideUIBefore];
    [v6 timeIntervalSinceNow];
    v8 = v7;

    if (v8 < 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v8;
    }
  }

  v9 = +[UAUserActivityDefaults sharedDefaults];
  [v9 pasteboardHideUIDelay];
  v11 = v10;

  v12 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] Adding hide delay of %lf sec", buf, 0xCu);
  }

  v13 = sub_100001A30(@"pasteboard-server");
  v14 = v5 + v11;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    if (v3)
    {
      v15 = @"YES";
    }

    *buf = 134218242;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Hide progress in %lf sec with fail: %@", buf, 0x16u);
  }

  if (!v3 && v14 < 1.25)
  {
    v16 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[PBOARD CONTROLLER] iOS needs a minimum delay of 1.25 sec, updating delay to 1.25", buf, 2u);
    }

    v14 = 1.25;
  }

  v17 = dispatch_time(0, (v14 * 1000000000.0));
  v18 = [(UASharedPasteboardClientController *)v4 clientq];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032184;
  block[3] = &unk_1000C4CC0;
  block[4] = v4;
  dispatch_after(v17, v18, block);

  v19 = [(UASharedPasteboardClientController *)v4 fetchProgress];
  [v19 _unpublish];
}

- (id)localPBStatus
{
  v3 = objc_alloc_init(NSMutableString);
  if ([(UASharedPasteboardClientController *)self isScreenWatcherPresent])
  {
    v4 = [(UASharedPasteboardClientController *)self controlConnections];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"##### Screen Sharing session in progress, Universal Clipboard is disabled: %lu #####\n", [v4 count]);
    [v3 appendString:v5];
  }

  v6 = [(UASharedPasteboardClientController *)self remoteGeneration];
  if (v6)
  {
    v7 = @"Available";
  }

  else
  {
    v7 = @"Unavailable";
  }

  v8 = [(UASharedPasteboardClientController *)self currentLocalGeneration];
  if ([(UASharedPasteboardClientController *)self isScreenWatcherPresent])
  {
    v9 = @"SCREENSHARING ";
  }

  else
  {
    v9 = &stru_1000C67D0;
  }

  v10 = [(UASharedPasteboardClientController *)self localReflection];
  v11 = @"off";
  if (v10)
  {
    v11 = @"ON";
  }

  [v3 appendFormat:@"##### Continuity Pasteboard: Remote Pasteboard:%@, Local generation=%ld, %@reflection:%@\n", v7, v8, v9, v11];

  v12 = [(UASharedPasteboardClientController *)self currentLocalPasteboard];

  if (v12)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v13 = [(UASharedPasteboardClientController *)self currentLocalPasteboard];
    v14 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v33;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v32 + 1) + 8 * i) description];
          [v3 appendFormat:@"  %@\r\n", v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }
  }

  else
  {
    v19 = [(UASharedPasteboardClientController *)self currentLocalTypes];
    v20 = [v19 items];
    v21 = [v20 count];

    if (v21)
    {
      v22 = 0;
      do
      {
        v23 = [(UASharedPasteboardClientController *)self currentLocalTypes];
        v24 = [v23 items];
        v25 = [v24 objectAtIndexedSubscript:v22];

        v26 = [NSNumber numberWithInt:v22];
        v27 = [v25 description];
        [v3 appendFormat:@"Item: %@ %@\r\n", v26, v27];

        ++v22;
        v28 = [(UASharedPasteboardClientController *)self currentLocalTypes];
        v29 = [v28 items];
        v30 = [v29 count];
      }

      while (v30 > v22);
    }
  }

  return v3;
}

@end