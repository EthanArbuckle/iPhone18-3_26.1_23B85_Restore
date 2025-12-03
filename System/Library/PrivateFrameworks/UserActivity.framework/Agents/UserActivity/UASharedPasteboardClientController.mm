@interface UASharedPasteboardClientController
- (BOOL)isScreenWatcherPresent;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)localReflection;
- (UASharedPasteboardClientController)initWithManager:(id)manager name:(id)name;
- (id)currentPasteboardActivityInfo;
- (id)eligibleAdvertiseableItemsInOrder;
- (id)localPBStatus;
- (id)uuid;
- (void)advertiser:(id)advertiser didReceiveInputStream:(id)stream outputStream:(id)outputStream;
- (void)clearLocalPasteboardInformation;
- (void)clearLocalPasteboardTypes:(id)types;
- (void)dealloc;
- (void)fetchRemoteDeviceName:(id)name;
- (void)fetchRemotePasteboardForProcess:(int)process withCompletion:(id)completion;
- (void)fetchRemotePasteboardStatus:(id)status;
- (void)fetchRemotePasteboardTypesForProcess:(int)process withCompletion:(id)completion;
- (void)getLocalPasteboardInfoData:(id)data;
- (void)hideProgressUI:(BOOL)i;
- (void)localPasteboardTypesDidChange:(id)change forGeneration:(unint64_t)generation;
- (void)receivePasteboardStreamData:(id)data version:(int64_t)version withCompletion:(id)completion;
- (void)removeLocalPasteboardFromAdvertisers:(id)advertisers;
- (void)setReturnPasteboardDataEarlyWithCompletion:(id)completion;
- (void)setScreenWatcherPresent:(BOOL)present;
- (void)showProgressUI:(id)i;
- (void)startConnection:(int)connection;
- (void)startServiceForPasteVersion:(int64_t)version handler:(id)handler;
@end

@implementation UASharedPasteboardClientController

- (id)eligibleAdvertiseableItemsInOrder
{
  v3 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    currentPasteboardActivityInfo = [(UASharedPasteboardClientController *)self currentPasteboardActivityInfo];
    allObjects = [currentPasteboardActivityInfo allObjects];
    v9 = 138412290;
    v10 = allObjects;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[PBOARD CONTROLLER] Return Client Items in Order: %@", &v9, 0xCu);
  }

  currentPasteboardActivityInfo2 = [(UASharedPasteboardClientController *)self currentPasteboardActivityInfo];
  allObjects2 = [currentPasteboardActivityInfo2 allObjects];

  return allObjects2;
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
    currentLocalTypes = [(UASharedPasteboardClientController *)self currentLocalTypes];
    items = [currentLocalTypes items];

    v7 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(items);
          }

          types = [*(*(&v16 + 1) + 8 * i) types];
          allKeys = [types allKeys];
          [v4 addObjectsFromArray:allKeys];
        }

        v8 = [items countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    [(UASharedPasteboardActivityInfo *)v3 setGeneration:[(UASharedPasteboardClientController *)self currentLocalGeneration]];
    [(UASharedPasteboardActivityInfo *)v3 setPasteboardTypes:v4];
    [(UASharedPasteboardActivityInfo *)v3 setEligibleForHandoff:1];
    uuid = [(UASharedPasteboardClientController *)self uuid];
    [(UASharedPasteboardActivityInfo *)v3 setUuid:uuid];

    v14 = [NSSet setWithObject:v3];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (UASharedPasteboardClientController)initWithManager:(id)manager name:(id)name
{
  managerCopy = manager;
  nameCopy = name;
  v40.receiver = self;
  v40.super_class = UASharedPasteboardClientController;
  v8 = [(UAClientController *)&v40 initWithManager:managerCopy name:nameCopy];
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

    xpclistener = [(UASharedPasteboardClientController *)v8 xpclistener];
    [xpclistener setDelegate:v8];

    v15 = [NSXPCListener alloc];
    v16 = UASharedPasteboardAUXServiceName();
    v17 = [v15 initWithMachServiceName:v16];
    [(UASharedPasteboardClientController *)v8 setAuxlistener:v17];

    auxlistener = [(UASharedPasteboardClientController *)v8 auxlistener];
    [auxlistener setDelegate:v8];

    v19 = objc_alloc_init(NSMutableSet);
    [(UASharedPasteboardClientController *)v8 setControlConnections:v19];

    v20 = [NSXPCListener alloc];
    v21 = UASharedPasteboardControllServiceName();
    v22 = [v20 initWithMachServiceName:v21];
    [(UASharedPasteboardClientController *)v8 setControlListener:v22];

    controlListener = [(UASharedPasteboardClientController *)v8 controlListener];
    [controlListener setDelegate:v8];

    v24 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.coreservices.uauseractivitypasteboardclient.xpc" options:0];
    [(UASharedPasteboardClientController *)v8 setClientNotificationConnection:v24];

    v25 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UAPasteboardClientProtocol];
    clientNotificationConnection = [(UASharedPasteboardClientController *)v8 clientNotificationConnection];
    [clientNotificationConnection setRemoteObjectInterface:v25];

    clientNotificationConnection2 = [(UASharedPasteboardClientController *)v8 clientNotificationConnection];
    [clientNotificationConnection2 setInterruptionHandler:&stru_1000C5398];

    objc_initWeak(buf, v8);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10002A444;
    v37[3] = &unk_1000C4EB8;
    objc_copyWeak(&v38, buf);
    clientNotificationConnection3 = [(UASharedPasteboardClientController *)v8 clientNotificationConnection];
    [clientNotificationConnection3 setInvalidationHandler:v37];

    v29 = objc_alloc_init(NSMutableSet);
    [(UASharedPasteboardClientController *)v8 setCoders:v29];

    [(UASharedPasteboardClientController *)v8 setRemoteAvailable:0];
    v30 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/UserActivity.framework"];
    [(UASharedPasteboardClientController *)v8 setUaBundle:v30];

    uaBundle = [(UASharedPasteboardClientController *)v8 uaBundle];
    [uaBundle load];

    xpclistener2 = [(UASharedPasteboardClientController *)v8 xpclistener];
    [xpclistener2 resume];

    auxlistener2 = [(UASharedPasteboardClientController *)v8 auxlistener];
    [auxlistener2 resume];

    controlListener2 = [(UASharedPasteboardClientController *)v8 controlListener];
    [controlListener2 resume];

    clientNotificationConnection4 = [(UASharedPasteboardClientController *)v8 clientNotificationConnection];
    [clientNotificationConnection4 resume];

    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
  }

  return v8;
}

- (void)dealloc
{
  clientConnection = [(UASharedPasteboardClientController *)self clientConnection];
  [clientConnection invalidate];

  clientNotificationConnection = [(UASharedPasteboardClientController *)self clientNotificationConnection];
  [clientNotificationConnection invalidate];

  xpclistener = [(UASharedPasteboardClientController *)self xpclistener];
  [xpclistener invalidate];

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
  localPasteboardRefection = [v2 localPasteboardRefection];

  return localPasteboardRefection;
}

- (BOOL)isScreenWatcherPresent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  screenWatcherPresent = selfCopy->_screenWatcherPresent;
  objc_sync_exit(selfCopy);

  return screenWatcherPresent;
}

- (void)setScreenWatcherPresent:(BOOL)present
{
  presentCopy = present;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_screenWatcherPresent != presentCopy)
  {
    selfCopy->_screenWatcherPresent = presentCopy;
    if (presentCopy)
    {
      v5 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Screen sharing session started, disabling universal clipboard", buf, 2u);
      }

      [(UASharedPasteboardClientController *)selfCopy setRemotePasteboardAvalibility:0 withDataRequester:0];
      [(UASharedPasteboardClientController *)selfCopy clearLocalPasteboardInformation];
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

  objc_sync_exit(selfCopy);
}

- (void)startConnection:(int)connection
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = connection;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Process %d requested for UC to disable", v5, 8u);
  }
}

- (void)setReturnPasteboardDataEarlyWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  remoteGeneration = [(UASharedPasteboardClientController *)selfCopy remoteGeneration];

  if (remoteGeneration)
  {
    remoteGeneration2 = [(UASharedPasteboardClientController *)selfCopy remoteGeneration];
    [remoteGeneration2 setReturnEarly:1];

    remoteGeneration3 = [(UASharedPasteboardClientController *)selfCopy remoteGeneration];
    completionCopy[2](completionCopy, [remoteGeneration3 state] == 5);
  }

  else
  {
    completionCopy[2](completionCopy, 1);
  }

  objc_sync_exit(selfCopy);
}

- (void)fetchRemotePasteboardStatus:(id)status
{
  statusCopy = status;
  remoteGeneration = [(UASharedPasteboardClientController *)self remoteGeneration];
  (*(status + 2))(statusCopy, remoteGeneration != 0);
}

- (void)fetchRemoteDeviceName:(id)name
{
  nameCopy = name;
  remoteGeneration = [(UASharedPasteboardClientController *)self remoteGeneration];
  dataRequester = [remoteGeneration dataRequester];
  peer = [dataRequester peer];
  name = [peer name];
  (*(name + 2))(nameCopy, name);
}

- (void)localPasteboardTypesDidChange:(id)change forGeneration:(unint64_t)generation
{
  changeCopy = change;
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = generation;
    *&buf[12] = 2112;
    *&buf[14] = changeCopy;
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
  clipboardSharingEnabled = [v10 clipboardSharingEnabled];

  if ((clipboardSharingEnabled & 1) == 0)
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

  if ([(UASharedPasteboardClientController *)self currentLocalGeneration]<= generation)
  {
    if ([(UASharedPasteboardClientController *)self currentLocalGeneration]< generation)
    {
      v12 = +[UASharedPasteboardDataManager sharedInstance];
      [v12 cleanupCloneDir];
    }

    [(UASharedPasteboardClientController *)self setCurrentLocalTypes:changeCopy];
    [(UASharedPasteboardClientController *)self setCurrentLocalGeneration:generation];
    [(UASharedPasteboardClientController *)self setHasFetchedLocalData:0];
    if ([(UASharedPasteboardClientController *)self localReflection])
    {
      v13 = +[UASharedPasteboardDataManager sharedInstance];
      createFileForLocalPasteboardBlob = [v13 createFileForLocalPasteboardBlob];

      v15 = +[UASharedPasteboardDataManager sharedInstance];
      fileURLForCloneItems = [v15 fileURLForCloneItems];

      clientConnection = [(UASharedPasteboardClientController *)self clientConnection];
      v18 = clientConnection;
      if (clientConnection)
      {
        [clientConnection auditToken];
      }

      else
      {
        memset(buf, 0, 32);
      }

      v19 = sub_100029ED8(fileURLForCloneItems, buf);

      clientConnection2 = [(UASharedPasteboardClientController *)self clientConnection];
      remoteObjectProxy = [clientConnection2 remoteObjectProxy];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10002B230;
      v31[3] = &unk_1000C53E0;
      v31[4] = self;
      [remoteObjectProxy writeLocalPasteboardToFile:createFileForLocalPasteboardBlob itemDir:fileURLForCloneItems extension:v19 withCompletion:v31];
    }

    [(UASharedPasteboardClientController *)self setAdvertiseTypes:1];
    manager = [(UACornerActionManagerHandler *)self manager];
    [manager scheduleUpdatingAdvertisableItems];

    localTimeout = [(UASharedPasteboardClientController *)self localTimeout];

    if (localTimeout)
    {
      localTimeout2 = [(UASharedPasteboardClientController *)self localTimeout];
      [localTimeout2 invalidate];
    }

    v25 = +[UAUserActivityDefaults sharedDefaults];
    [v25 localPasteboardAvalibilityTimeout];
    v27 = v26;

    v28 = [NSTimer timerWithTimeInterval:self target:"clearLocalPasteboardTypes:" selector:0 userInfo:0 repeats:v27];
    [(UASharedPasteboardClientController *)self setLocalTimeout:v28];

    v29 = +[NSRunLoop mainRunLoop];
    localTimeout3 = [(UASharedPasteboardClientController *)self localTimeout];
    [v29 addTimer:localTimeout3 forMode:NSRunLoopCommonModes];

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

- (void)clearLocalPasteboardTypes:(id)types
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Remove Local Types Fired", v15, 2u);
  }

  pasteAdvertiser = [(UASharedPasteboardClientController *)self pasteAdvertiser];
  [pasteAdvertiser stop];

  [(UASharedPasteboardClientController *)self setPasteAdvertiser:0];
  [(UASharedPasteboardClientController *)self setCurrentLocalTypes:0];
  [(UASharedPasteboardClientController *)self setCurrentLocalPasteboard:0];
  [(UASharedPasteboardClientController *)self setCurrentLocalPasteboardSize:0];
  localInfo = [(UASharedPasteboardClientController *)self localInfo];

  if (!localInfo)
  {
    [(UASharedPasteboardClientController *)self setPboardInfoToSend:0];
  }

  if ([(UASharedPasteboardClientController *)self localReflection])
  {
    [(UASharedPasteboardClientController *)self setRemotePasteboardAvalibility:0 withDataRequester:0];
  }

  localTimeout = [(UASharedPasteboardClientController *)self localTimeout];
  [localTimeout invalidate];

  manager = [(UACornerActionManagerHandler *)self manager];
  [manager scheduleUpdatingAdvertisableItems];

  v9 = +[UAUserActivityDefaults sharedDefaults];
  [v9 localPasteboardAvalibilityClearedTimeout];
  v11 = v10;

  v12 = [NSTimer timerWithTimeInterval:self target:"removeLocalPasteboardFromAdvertisers:" selector:0 userInfo:0 repeats:v11];
  [(UASharedPasteboardClientController *)self setLocalTimeout:v12];

  v13 = +[NSRunLoop mainRunLoop];
  localTimeout2 = [(UASharedPasteboardClientController *)self localTimeout];
  [v13 addTimer:localTimeout2 forMode:NSRunLoopCommonModes];
}

- (void)removeLocalPasteboardFromAdvertisers:(id)advertisers
{
  v4 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Remove Local Timer Fired", v7, 2u);
  }

  [(UASharedPasteboardClientController *)self setAdvertiseTypes:0];
  localTimeout = [(UASharedPasteboardClientController *)self localTimeout];
  [localTimeout invalidate];

  [(UASharedPasteboardClientController *)self setLocalTimeout:0];
  manager = [(UACornerActionManagerHandler *)self manager];
  [manager scheduleUpdatingAdvertisableItems];
}

- (void)fetchRemotePasteboardTypesForProcess:(int)process withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Pasteboard types fetch requested", buf, 2u);
  }

  if ([(UASharedPasteboardClientController *)self localReflection])
  {
    selfCopy = objc_alloc_init(UASharedPasteboardInfo);
    currentLocalPasteboard = [(UASharedPasteboardClientController *)self currentLocalPasteboard];
    [(UASharedPasteboardClientController *)selfCopy setItems:currentLocalPasteboard];

    completionCopy[2](completionCopy, selfCopy, 0);
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    remoteGeneration = [(UASharedPasteboardClientController *)selfCopy remoteGeneration];

    if (remoteGeneration)
    {
      remoteGeneration2 = [(UASharedPasteboardClientController *)selfCopy remoteGeneration];
      state = [remoteGeneration2 state];

      remoteGeneration3 = [(UASharedPasteboardClientController *)selfCopy remoteGeneration];
      if (state < 3)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10002B880;
        v14[3] = &unk_1000C5448;
        v14[4] = selfCopy;
        v15 = completionCopy;
        [remoteGeneration3 requestRemoteTypeInfo:v14];

        remoteGeneration3 = v15;
      }

      else
      {
        pbInfo = [remoteGeneration3 pbInfo];
        completionCopy[2](completionCopy, pbInfo, 0);
      }
    }

    else
    {
      completionCopy[2](completionCopy, 0, 0);
    }

    objc_sync_exit(selfCopy);
  }
}

- (void)fetchRemotePasteboardForProcess:(int)process withCompletion:(id)completion
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
  completionCopy = completion;
  v77 = completionCopy;
  v55 = objc_retainBlock(v76);
  v6 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v86) = process;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Pasteboard data fetch requested for pid: %d", buf, 8u);
  }

  if (![(UASharedPasteboardClientController *)self localReflection])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    val = selfCopy;
    remoteGeneration = [(UASharedPasteboardClientController *)selfCopy remoteGeneration];
    LODWORD(selfCopy) = [remoteGeneration state] == 5;

    if (selfCopy)
    {
      remoteGeneration2 = [(UASharedPasteboardClientController *)val remoteGeneration];
      pbInfo = [remoteGeneration2 pbInfo];

      v13 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v86 = *&pbInfo;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Already have remote data, using it: %@", buf, 0xCu);
      }

      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      obj = [pbInfo items];
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
            types = [v14 types];
            v16 = [types countByEnumeratingWithState:&v68 objects:v83 count:16];
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
                    objc_enumerationMutation(types);
                  }

                  v19 = *(*(&v68 + 1) + 8 * v18);
                  v20 = +[UASharedPasteboardDataManager sharedInstance];
                  remotePasteboardBlobForReading = [v20 remotePasteboardBlobForReading];
                  types2 = [v14 types];
                  v23 = [types2 objectForKeyedSubscript:v19];
                  [v23 setDataFile:remotePasteboardBlobForReading];

                  v18 = v18 + 1;
                }

                while (v16 != v18);
                v16 = [types countByEnumeratingWithState:&v68 objects:v83 count:16];
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
      remotePasteboardBlobForReading2 = [v24 remotePasteboardBlobForReading];
      [pbInfo setDataFile:remotePasteboardBlobForReading2];

      (*(completionCopy + 2))(completionCopy, pbInfo, 0);
    }

    else
    {
      remoteGeneration3 = [(UASharedPasteboardClientController *)val remoteGeneration];
      v27 = [remoteGeneration3 state] == 6;

      if (v27)
      {
        v54 = [NSError errorWithDomain:UAContinuityErrorDomain code:-125 userInfo:0];
        (*(completionCopy + 2))(completionCopy, 0, v54);

LABEL_32:
        objc_sync_exit(val);
        goto LABEL_33;
      }

      remoteGeneration4 = [(UASharedPasteboardClientController *)val remoteGeneration];

      if (!remoteGeneration4)
      {
        (v55[2])(v55, 0, 0);
        goto LABEL_32;
      }

      remoteGeneration5 = [(UASharedPasteboardClientController *)val remoteGeneration];
      v30 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Requesting data from remote device", buf, 2u);
      }

      [(UASharedPasteboardClientController *)val setPasteFetchStartTime:mach_absolute_time()];
      v31 = objc_alloc_init(UARemotePasteboardWasRequestedEvent);
      [(UASharedPasteboardClientController *)val setPasteInfo:v31];

      remoteGeneration6 = [(UASharedPasteboardClientController *)val remoteGeneration];
      dataRequester = [remoteGeneration6 dataRequester];
      peer = [dataRequester peer];
      modelIdentifier = [peer modelIdentifier];
      pasteInfo = [(UASharedPasteboardClientController *)val pasteInfo];
      [pasteInfo setRemoteDeviceType:modelIdentifier];

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
      showUITimer = [(UASharedPasteboardClientController *)val showUITimer];
      [v42 addTimer:showUITimer forMode:NSRunLoopCommonModes];

      objc_initWeak(buf, val);
      v44 = [NSProgress alloc];
      v45 = +[NSProgress currentProgress];
      v81 = NSProgressCategoryKey;
      v82 = @"UASharedPasteboard";
      v46 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      v47 = [v44 initWithParent:v45 userInfo:v46];
      [(UASharedPasteboardClientController *)val setFetchProgress:v47];

      fetchProgress = [(UASharedPasteboardClientController *)val fetchProgress];
      [fetchProgress setKind:NSProgressKindFile];

      fetchProgress2 = [(UASharedPasteboardClientController *)val fetchProgress];
      [fetchProgress2 setCancellable:1];

      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_10002C408;
      v65[3] = &unk_1000C5498;
      objc_copyWeak(&v67, buf);
      v50 = v55;
      v66 = v50;
      fetchProgress3 = [(UASharedPasteboardClientController *)val fetchProgress];
      [fetchProgress3 setCancellationHandler:v65];

      fetchProgress4 = [(UASharedPasteboardClientController *)val fetchProgress];
      [fetchProgress4 _publish];

      v62[0] = _NSConcreteStackBlock;
      v62[1] = 3221225472;
      v62[2] = sub_10002C6AC;
      v62[3] = &unk_1000C54C0;
      v62[4] = val;
      v64 = v50;
      v63 = remoteGeneration5;
      pbInfo = v63;
      [v63 requestRemotePasteboardData:v62];

      objc_destroyWeak(&v67);
      objc_destroyWeak(buf);
    }

    goto LABEL_32;
  }

  val = objc_alloc_init(UASharedPasteboardInfo);
  v7 = +[UASharedPasteboardDataManager sharedInstance];
  localPasteboardBlobForReading = [v7 localPasteboardBlobForReading];
  [(UASharedPasteboardClientController *)val setDataFile:localPasteboardBlobForReading];

  currentLocalPasteboard = [(UASharedPasteboardClientController *)self currentLocalPasteboard];
  [(UASharedPasteboardClientController *)val setItems:currentLocalPasteboard];

  [(UASharedPasteboardClientController *)val setDataSize:[(UASharedPasteboardClientController *)self currentLocalPasteboardSize]];
  (*(completionCopy + 2))(completionCopy, val, 0);
LABEL_33:

  _Block_object_dispose(v79, 8);
}

- (void)receivePasteboardStreamData:(id)data version:(int64_t)version withCompletion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  pasteInfo = [(UASharedPasteboardClientController *)self pasteInfo];
  [pasteInfo setUsedStreams:1];

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
  v19 = completionCopy;
  versionCopy = version;
  block[4] = self;
  v17 = v11;
  v18 = dataCopy;
  v13 = completionCopy;
  v14 = dataCopy;
  v15 = v11;
  dispatch_async(v12, block);
}

- (void)getLocalPasteboardInfoData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(UASharedPasteboardInfoWrapper);
  currentLocalTypes = [(UASharedPasteboardClientController *)self currentLocalTypes];
  [(UASharedPasteboardInfoWrapper *)v5 setPbinfo:currentLocalTypes];

  [(UASharedPasteboardInfoWrapper *)v5 setProtocolVersion:2];
  v7 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[PBOARD CONTROLLER] Archiving pbinfo: %@", &v9, 0xCu);
  }

  v8 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
  dataCopy[2](dataCopy, v8, 0);
}

- (void)startServiceForPasteVersion:(int64_t)version handler:(id)handler
{
  handlerCopy = handler;
  [(UASharedPasteboardClientController *)self setLocalSendStartTime:mach_absolute_time()];
  v7 = objc_alloc_init(UARemotePasteboardDidSendLocalEvent);
  [(UASharedPasteboardClientController *)self setLocalInfo:v7];

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10002EF74;
  v33[3] = &unk_1000C52F8;
  v33[4] = self;
  v8 = handlerCopy;
  v34 = v8;
  v9 = objc_retainBlock(v33);
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10002F1D0;
  v30[3] = &unk_1000C5588;
  versionCopy = version;
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

    pboardInfoToSend = [(UASharedPasteboardClientController *)self pboardInfoToSend];
    pbinfo = [pboardInfoToSend pbinfo];
    dataSize = [pbinfo dataSize];
    v16 = +[UAUserActivityDefaults sharedDefaults];
    pasteboardEmbeddedPayloadSizeLimitInBytes = [v16 pasteboardEmbeddedPayloadSizeLimitInBytes];

    if (dataSize >= pasteboardEmbeddedPayloadSizeLimitInBytes)
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
    pboardFetchSem = [(UASharedPasteboardClientController *)self pboardFetchSem];

    if (!pboardFetchSem)
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
    clientq = [(UASharedPasteboardClientController *)self clientq];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10002FFB4;
    v23[3] = &unk_1000C52F8;
    v23[4] = self;
    v24 = v20;
    v22 = v20;
    dispatch_async(clientq, v23);
  }
}

- (void)advertiser:(id)advertiser didReceiveInputStream:(id)stream outputStream:(id)outputStream
{
  advertiserCopy = advertiser;
  streamCopy = stream;
  outputStreamCopy = outputStream;
  v11 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Received streams, waiting for local data to be available", buf, 2u);
  }

  v12 = [UADiagnosticUtils absoluteToNSec:mach_absolute_time() - [(UASharedPasteboardClientController *)self streamOpenStartTime]];
  localInfo = [(UASharedPasteboardClientController *)self localInfo];
  [localInfo setStreamOpenDelay:v12];

  pboardFetchSem = [(UASharedPasteboardClientController *)self pboardFetchSem];

  if (!pboardFetchSem || ([(UASharedPasteboardClientController *)self pboardFetchSem], v15 = objc_claimAutoreleasedReturnValue(), v16 = dispatch_time(0, 2000000000), v17 = dispatch_semaphore_wait(v15, v16), v15, [(UASharedPasteboardClientController *)self setPboardFetchSem:0], !v17))
  {
    v20 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Local data available, starting out stream", buf, 2u);
    }

    pboardInfoToSend = [(UASharedPasteboardClientController *)self pboardInfoToSend];
    v22 = +[UASharedPasteboardDataManager sharedInstance];
    localPasteboardBlobForReading = [v22 localPasteboardBlobForReading];
    pbinfo = [pboardInfoToSend pbinfo];
    [pbinfo setDataFile:localPasteboardBlobForReading];

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
      v26 = [[UAPBStreamCoderV1 alloc] initWithInputStream:streamCopy outputStream:outputStreamCopy];
      [(UAPBStreamCoderV1 *)v26 sendPasteboard:pboardInfoToSend withCompletion:v25];
      coders = [(UASharedPasteboardClientController *)self coders];
      objc_sync_enter(coders);
      coders2 = [(UASharedPasteboardClientController *)self coders];
      [coders2 addObject:v26];
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

      v26 = [[UCStreamCoderV2 alloc] initWithInputStream:streamCopy outputStream:outputStreamCopy];
      [(UAPBStreamCoderV1 *)v26 sendPasteboard:pboardInfoToSend withCompletion:v25];
      coders = [(UASharedPasteboardClientController *)self coders];
      objc_sync_enter(coders);
      coders2 = [(UASharedPasteboardClientController *)self coders];
      [coders2 addObject:v26];
    }

    objc_sync_exit(coders);
    goto LABEL_15;
  }

  v18 = sub_100001A30(@"pasteboard-server");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "[PBOARD CONTROLLER] Timeout getting local pasteboard", buf, 2u);
  }

  sub_10002D890(v19, streamCopy, outputStreamCopy);
LABEL_16:
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.coreservices.useractivityd.sharedpasteboard"];
  bOOLValue = [v8 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v17 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [UAAuditToken alloc];
      if (connectionCopy)
      {
        [connectionCopy auditToken];
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

    [connectionCopy invalidate];
    goto LABEL_21;
  }

  xpclistener = [(UASharedPasteboardClientController *)self xpclistener];
  v11 = [listenerCopy isEqual:xpclistener];

  if (!v11)
  {
    auxlistener = [(UASharedPasteboardClientController *)self auxlistener];
    v20 = [listenerCopy isEqual:auxlistener];

    if (v20)
    {
      v21 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = connectionCopy;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Received new aux connection: %@", buf, 0xCu);
      }

      [connectionCopy setExportedObject:self];
      v22 = sub_100040C20();
      [connectionCopy setExportedInterface:v22];

      [connectionCopy setInterruptionHandler:&stru_1000C56B8];
      objc_initWeak(buf, self);
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000312E4;
      v37[3] = &unk_1000C4EB8;
      objc_copyWeak(&v38, buf);
      [connectionCopy setInvalidationHandler:v37];
      [connectionCopy resume];
      [(UASharedPasteboardClientController *)self setAuxConnection:connectionCopy];
      objc_destroyWeak(&v38);
      objc_destroyWeak(buf);
      goto LABEL_17;
    }

    controlListener = [(UASharedPasteboardClientController *)self controlListener];
    v24 = [listenerCopy isEqual:controlListener];

    if (v24)
    {
      [connectionCopy setExportedObject:self];
      v25 = sub_100040CAC();
      [connectionCopy setExportedInterface:v25];

      [connectionCopy setInterruptionHandler:&stru_1000C56D8];
      objc_initWeak(buf, self);
      objc_initWeak(&location, connectionCopy);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_100031374;
      v33[3] = &unk_1000C5700;
      objc_copyWeak(&v34, buf);
      objc_copyWeak(&v35, &location);
      [connectionCopy setInvalidationHandler:v33];
      [connectionCopy resume];
      controlConnections = [(UASharedPasteboardClientController *)self controlConnections];
      objc_sync_enter(controlConnections);
      v27 = sub_100001A30(@"pasteboard-server");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "New Controller connection, disabling UC", v32, 2u);
      }

      controlConnections2 = [(UASharedPasteboardClientController *)self controlConnections];
      [controlConnections2 addObject:connectionCopy];

      objc_sync_exit(controlConnections);
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
    *&buf[4] = connectionCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Received new client connection: %@", buf, 0xCu);
  }

  v13 = sub_100040A30();
  [connectionCopy setRemoteObjectInterface:v13];

  [connectionCopy setExportedObject:self];
  v14 = sub_100040828();
  [connectionCopy setExportedInterface:v14];

  [connectionCopy setInterruptionHandler:&stru_1000C5670];
  clientConnection = [(UASharedPasteboardClientController *)self clientConnection];
  objc_initWeak(buf, self);
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_100031190;
  v39[3] = &unk_1000C5698;
  objc_copyWeak(&v41, buf);
  v16 = clientConnection;
  v40 = v16;
  [connectionCopy setInvalidationHandler:v39];
  [connectionCopy resume];
  [(UASharedPasteboardClientController *)self setClientConnection:connectionCopy];

  objc_destroyWeak(&v41);
  objc_destroyWeak(buf);

LABEL_17:
  v29 = 1;
LABEL_22:

  return v29;
}

- (void)showProgressUI:(id)i
{
  iCopy = i;
  [iCopy invalidate];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(UASharedPasteboardClientController *)selfCopy isUIVisible])
  {
    v6 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] show pbui, but already visible, skipping", buf, 2u);
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    [(UASharedPasteboardClientController *)selfCopy setIsUIVisible:1];
    objc_sync_exit(selfCopy);

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
    [(UASharedPasteboardClientController *)selfCopy setDontHideUIBefore:v11];

    remoteGeneration = [(UASharedPasteboardClientController *)selfCopy remoteGeneration];
    dataRequester = [remoteGeneration dataRequester];
    peer = [dataRequester peer];

    v15 = sub_100001A30(@"pasteboard-server");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name = [(UACornerActionManagerHandler *)peer name];
      modelIdentifier = [(UASharedPasteboardClientController *)peer modelIdentifier];
      deviceColor = [(UASharedPasteboardClientController *)peer deviceColor];
      *buf = 138412802;
      v37 = *&name;
      v38 = 2112;
      v39 = modelIdentifier;
      v40 = 2112;
      v41 = deviceColor;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Setup progress UI: %@, %@, %@", buf, 0x20u);
    }

    v19 = objc_alloc_init(NSMutableDictionary);
    name2 = [(UACornerActionManagerHandler *)peer name];
    v21 = [name2 length] == 0;

    uaBundle = [(UASharedPasteboardClientController *)selfCopy uaBundle];
    if (v21)
    {
      v23 = [uaBundle localizedStringForKey:@"main-label.default-title" value:&stru_1000C67D0 table:@"Localizable"];
      [v19 setObject:v23 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
    }

    else
    {
      v23 = [uaBundle localizedStringForKey:@"main-label.title" value:&stru_1000C67D0 table:@"Localizable"];
      name3 = [(UACornerActionManagerHandler *)peer name];
      v25 = [NSString stringWithFormat:v23, name3];
      [v19 setObject:v25 forKeyedSubscript:kCFUserNotificationAlertHeaderKey];
    }

    uaBundle2 = [(UASharedPasteboardClientController *)selfCopy uaBundle];
    v27 = [uaBundle2 localizedStringForKey:@"cancel-button.title" value:&stru_1000C67D0 table:@"Localizable"];
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
    selfCopy->_notificationRef = v30;
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
      block[4] = selfCopy;
      block[5] = v30;
      dispatch_async(v32, block);
    }

    selfCopy = peer;
  }
}

- (void)hideProgressUI:(BOOL)i
{
  iCopy = i;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(UASharedPasteboardClientController *)selfCopy setIsUIVisible:0];
  objc_sync_exit(selfCopy);

  v5 = 0.0;
  if (!iCopy)
  {
    dontHideUIBefore = [(UASharedPasteboardClientController *)selfCopy dontHideUIBefore];
    [dontHideUIBefore timeIntervalSinceNow];
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
    if (iCopy)
    {
      v15 = @"YES";
    }

    *buf = 134218242;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[PBOARD CONTROLLER] Hide progress in %lf sec with fail: %@", buf, 0x16u);
  }

  if (!iCopy && v14 < 1.25)
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
  clientq = [(UASharedPasteboardClientController *)selfCopy clientq];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100032184;
  block[3] = &unk_1000C4CC0;
  block[4] = selfCopy;
  dispatch_after(v17, clientq, block);

  fetchProgress = [(UASharedPasteboardClientController *)selfCopy fetchProgress];
  [fetchProgress _unpublish];
}

- (id)localPBStatus
{
  v3 = objc_alloc_init(NSMutableString);
  if ([(UASharedPasteboardClientController *)self isScreenWatcherPresent])
  {
    controlConnections = [(UASharedPasteboardClientController *)self controlConnections];
    v5 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"##### Screen Sharing session in progress, Universal Clipboard is disabled: %lu #####\n", [controlConnections count]);
    [v3 appendString:v5];
  }

  remoteGeneration = [(UASharedPasteboardClientController *)self remoteGeneration];
  if (remoteGeneration)
  {
    v7 = @"Available";
  }

  else
  {
    v7 = @"Unavailable";
  }

  currentLocalGeneration = [(UASharedPasteboardClientController *)self currentLocalGeneration];
  if ([(UASharedPasteboardClientController *)self isScreenWatcherPresent])
  {
    v9 = @"SCREENSHARING ";
  }

  else
  {
    v9 = &stru_1000C67D0;
  }

  localReflection = [(UASharedPasteboardClientController *)self localReflection];
  v11 = @"off";
  if (localReflection)
  {
    v11 = @"ON";
  }

  [v3 appendFormat:@"##### Continuity Pasteboard: Remote Pasteboard:%@, Local generation=%ld, %@reflection:%@\n", v7, currentLocalGeneration, v9, v11];

  currentLocalPasteboard = [(UASharedPasteboardClientController *)self currentLocalPasteboard];

  if (currentLocalPasteboard)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    currentLocalPasteboard2 = [(UASharedPasteboardClientController *)self currentLocalPasteboard];
    v14 = [currentLocalPasteboard2 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
            objc_enumerationMutation(currentLocalPasteboard2);
          }

          v18 = [*(*(&v32 + 1) + 8 * i) description];
          [v3 appendFormat:@"  %@\r\n", v18];
        }

        v15 = [currentLocalPasteboard2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v15);
    }
  }

  else
  {
    currentLocalTypes = [(UASharedPasteboardClientController *)self currentLocalTypes];
    items = [currentLocalTypes items];
    v21 = [items count];

    if (v21)
    {
      v22 = 0;
      do
      {
        currentLocalTypes2 = [(UASharedPasteboardClientController *)self currentLocalTypes];
        items2 = [currentLocalTypes2 items];
        v25 = [items2 objectAtIndexedSubscript:v22];

        v26 = [NSNumber numberWithInt:v22];
        v27 = [v25 description];
        [v3 appendFormat:@"Item: %@ %@\r\n", v26, v27];

        ++v22;
        currentLocalTypes3 = [(UASharedPasteboardClientController *)self currentLocalTypes];
        items3 = [currentLocalTypes3 items];
        v30 = [items3 count];
      }

      while (v30 > v22);
    }
  }

  return v3;
}

@end