@interface CSDRouteManager
+ (CSDRouteManager)sharedInstance;
- (BOOL)_isAnyAudioDevicePreferred;
- (BOOL)hasInEarRouteInTipiWithAndSmartRoutedToCompanionWatch;
- (BOOL)hasInEarRouteInTipiWithCompanionWatch;
- (BOOL)isAnyBluetoothHeadphoneRouteAvailableForAnyCall;
- (BOOL)isAnyRouteAvailableWithUniqueIdentifier:(id)identifier forCall:(id)call;
- (BOOL)isAnyVehicleRouteAvailableForAnyCall;
- (BOOL)isAnyVehicleRouteAvailableForCall:(id)call;
- (BOOL)isCarModeActive;
- (BOOL)isCarPlayRouteAvailable;
- (BOOL)isEligibleRouteAvailable;
- (BOOL)isEligibleRouteAvailableForCall:(id)call;
- (CSDRouteManager)init;
- (id)_audioRouteCollectionForCall:(id)call;
- (id)preferredAndActiveRouteForCall:(id)call;
- (id)preferredRouteForCall:(id)call;
- (void)_initializeAudioRouteCollections;
- (void)_initializeAutomaticCarDNDStatusIfNecessary;
- (void)_postNotificationName:(id)name;
- (void)_updateCarPlayDeviceConnected;
- (void)_updatePickableRoutes;
- (void)aaDevicesDidChange;
- (void)carPlayIsConnectedChanged:(id)changed;
- (void)dealloc;
- (void)mediaServicesWereResetNotification:(id)notification;
- (void)pickableRoutesDidChangeNotification:(id)notification;
- (void)preferredExternalRouteDidChangeNotification:(id)notification;
@end

@implementation CSDRouteManager

- (void)_updatePickableRoutes
{
  queue = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  audioRouteCollections = [(CSDRouteManager *)self audioRouteCollections];
  allValues = [audioRouteCollections allValues];

  v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    updatePickableRoutes = 0;
    v9 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        if (updatePickableRoutes)
        {
          updatePickableRoutes = 1;
        }

        else
        {
          updatePickableRoutes = [*(*(&v11 + 1) + 8 * i) updatePickableRoutes];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);

    if (updatePickableRoutes)
    {
      [(CSDRouteManager *)self _postNotificationName:@"CSDRouteManagerRoutesChangedNotification"];
    }
  }

  else
  {
  }
}

- (BOOL)hasInEarRouteInTipiWithCompanionWatch
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100041FD0;
  v5[3] = &unk_10061C1E0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

+ (CSDRouteManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100154400;
  block[3] = &unk_10061A860;
  block[4] = self;
  if (qword_1006ACDE0 != -1)
  {
    dispatch_once(&qword_1006ACDE0, block);
  }

  v2 = qword_1006ACDD8;

  return v2;
}

- (CSDRouteManager)init
{
  v15.receiver = self;
  v15.super_class = CSDRouteManager;
  v2 = [(CSDRouteManager *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.routemanager", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    objc_initWeak(&location, v2);
    v5 = objc_alloc_init(AADeviceManager);
    aaDeviceManager = v2->_aaDeviceManager;
    v2->_aaDeviceManager = v5;

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001545F4;
    v12[3] = &unk_10061C888;
    objc_copyWeak(&v13, &location);
    [(AADeviceManager *)v2->_aaDeviceManager setDeviceFoundHandler:v12];
    deviceFoundHandler = [(AADeviceManager *)v2->_aaDeviceManager deviceFoundHandler];
    [(AADeviceManager *)v2->_aaDeviceManager setDeviceLostHandler:deviceFoundHandler];

    [(AADeviceManager *)v2->_aaDeviceManager activateWithCompletion:&stru_10061C8C8];
    v8 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015468C;
    block[3] = &unk_100619D38;
    v11 = v2;
    dispatch_async(v8, block);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDRouteManager;
  [(CSDRouteManager *)&v4 dealloc];
}

- (BOOL)isAnyRouteAvailableWithUniqueIdentifier:(id)identifier forCall:(id)call
{
  identifierCopy = identifier;
  callCopy = call;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  queue = [(CSDRouteManager *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100154AA8;
  v12[3] = &unk_10061C910;
  v12[4] = self;
  v13 = callCopy;
  v14 = identifierCopy;
  v15 = &v16;
  v9 = identifierCopy;
  v10 = callCopy;
  dispatch_sync(queue, v12);

  LOBYTE(self) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return self;
}

- (id)preferredRouteForCall:(id)call
{
  callCopy = call;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100028684;
  v17 = sub_1000328CC;
  v18 = 0;
  provider = [callCopy provider];
  isTinCanProvider = [provider isTinCanProvider];

  if ((isTinCanProvider & 1) == 0)
  {
    queue = [(CSDRouteManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100154C70;
    block[3] = &unk_10061C678;
    v12 = &v13;
    block[4] = self;
    v11 = callCopy;
    dispatch_sync(queue, block);
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (BOOL)isEligibleRouteAvailable
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100154DB4;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)hasInEarRouteInTipiWithAndSmartRoutedToCompanionWatch
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100154FD0;
  v5[3] = &unk_10061C1E0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)isEligibleRouteAvailableForCall:(id)call
{
  callCopy = call;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001551F0;
  block[3] = &unk_10061C678;
  v9 = callCopy;
  v10 = &v11;
  block[4] = self;
  v6 = callCopy;
  dispatch_sync(queue, block);

  LOBYTE(callCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return callCopy;
}

- (id)preferredAndActiveRouteForCall:(id)call
{
  callCopy = call;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100028684;
  v17 = sub_1000328CC;
  v18 = 0;
  provider = [callCopy provider];
  isTinCanProvider = [provider isTinCanProvider];

  if ((isTinCanProvider & 1) == 0)
  {
    queue = [(CSDRouteManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015542C;
    block[3] = &unk_10061C678;
    v12 = &v13;
    block[4] = self;
    v11 = callCopy;
    dispatch_sync(queue, block);
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (BOOL)isAnyVehicleRouteAvailableForCall:(id)call
{
  callCopy = call;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100155598;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = callCopy;
  v10 = &v11;
  v6 = callCopy;
  dispatch_sync(queue, block);

  LOBYTE(callCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return callCopy;
}

- (BOOL)isAnyBluetoothHeadphoneRouteAvailableForAnyCall
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001556EC;
  v5[3] = &unk_10061C1E0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)isCarPlayRouteAvailable
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001558E8;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)isAnyVehicleRouteAvailableForAnyCall
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001559F4;
  v5[3] = &unk_10061C1E0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)isCarModeActive
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100155BF0;
  v5[3] = &unk_10061C1E0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)aaDevicesDidChange
{
  queue = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100155CB0;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)pickableRoutesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  queue = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100155DF4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)preferredExternalRouteDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  queue = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100155F38;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)carPlayIsConnectedChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [changedCopy name];
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  queue = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001560B8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)mediaServicesWereResetNotification:(id)notification
{
  notificationCopy = notification;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [notificationCopy name];
    *buf = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = name;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  queue = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100156238;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_postNotificationName:(id)name
{
  nameCopy = name;
  queue = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:nameCopy object:0];
}

- (id)_audioRouteCollectionForCall:(id)call
{
  callCopy = call;
  queue = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [TUAudioRouteCollectionKey alloc];
  audioCategory = [callCopy audioCategory];
  audioMode = [callCopy audioMode];
  v9 = [v6 initWithCategory:audioCategory mode:audioMode];

  audioRouteCollections = [(CSDRouteManager *)self audioRouteCollections];
  v11 = [audioRouteCollections objectForKeyedSubscript:v9];

  if (!v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      audioRouteCollections2 = [(CSDRouteManager *)self audioRouteCollections];
      audioCategory2 = [callCopy audioCategory];
      audioMode2 = [callCopy audioMode];
      v17 = 138413058;
      v18 = audioRouteCollections2;
      v19 = 2112;
      v20 = audioCategory2;
      v21 = 2112;
      v22 = audioMode2;
      v23 = 2112;
      v24 = callCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] No audio route collection found in audioRouteCollections: %@ for audio category %@ and audio mode %@ for call %@", &v17, 0x2Au);
    }
  }

  return v11;
}

- (BOOL)_isAnyAudioDevicePreferred
{
  queue = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = +[TUCallCenter sharedInstance];
  audioDeviceController = [v3 audioDeviceController];
  devices = [audioDeviceController devices];

  v6 = [devices countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 isPreferredDevice])
        {
          v6 = sub_100004778();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v16 = v9;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found preferred AVAudioDevice: %@", buf, 0xCu);
          }

          LOBYTE(v6) = 1;
          goto LABEL_13;
        }
      }

      v6 = [devices countByEnumeratingWithState:&v11 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v6;
}

- (void)_initializeAudioRouteCollections
{
  queue = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v3 = +[NSMutableArray array];
  if (qword_1006ACE00 != -1)
  {
    sub_1004766B0();
  }

  if (qword_1006ACE10 != -1)
  {
    sub_1004766C4();
  }

  v4 = [TUAudioRouteCollectionKey alloc];
  v5 = [v4 initWithCategory:qword_1006ACDF8 mode:qword_1006ACE08];
  [v3 addObject:v5];

  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    v6 = [[TUAudioRouteCollectionKey alloc] initWithCategory:@"PhoneCall" mode:0];
    [v3 addObject:v6];
  }

  if (+[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls])
  {
    if (qword_1006ACE20 != -1)
    {
      sub_1004766D8();
    }

    v7 = [TUAudioRouteCollectionKey alloc];
    v8 = [v7 initWithCategory:qword_1006ACDF8 mode:qword_1006ACE18];
    [v3 addObject:v8];
  }

  if (+[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls])
  {
    if (qword_1006ACE30 != -1)
    {
      sub_1004766EC();
    }

    v9 = [TUAudioRouteCollectionKey alloc];
    v10 = [v9 initWithCategory:qword_1006ACDF8 mode:qword_1006ACE28];
    [v3 addObject:v10];
  }

  v11 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v3 count]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v3;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        v18 = [CSDAudioRouteCollection alloc];
        category = [v17 category];
        mode = [v17 mode];
        v21 = [(CSDAudioRouteCollection *)v18 initWithCategory:category mode:mode routeManager:self];

        [v11 setObject:v21 forKeyedSubscript:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  [(CSDRouteManager *)self setAudioRouteCollections:v11];
}

- (void)_initializeAutomaticCarDNDStatusIfNecessary
{
  queue = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(queue);

  automaticCarDNDStatus = [(CSDRouteManager *)self automaticCarDNDStatus];
  if (automaticCarDNDStatus)
  {
  }

  else if (MGGetBoolAnswer())
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting initial state of CarKit's DND assertion", buf, 2u);
    }

    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    v6 = dispatch_semaphore_create(0);
    v7 = objc_alloc_init(CARAutomaticDNDStatus);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100156D40;
    v13[3] = &unk_10061C9B8;
    v15 = buf;
    v8 = v6;
    v14 = v8;
    [v7 fetchAutomaticDNDAssertionWithReply:v13];
    if (dispatch_semaphore_wait(v8, 0x12A05F200uLL))
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Timeout occured fetching CarPlay do not disturb status.", v12, 2u);
      }
    }

    else
    {
      objc_initWeak(v12, self);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100156E38;
      v10[3] = &unk_10061C9E0;
      objc_copyWeak(&v11, v12);
      [v7 setStatusChangeObserver:v10];
      [(CSDRouteManager *)self setAutomaticCarDNDStatus:v7];
      [(CSDRouteManager *)self setCarModeActive:v17[24]];
      objc_destroyWeak(&v11);
      objc_destroyWeak(v12);
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)_updateCarPlayDeviceConnected
{
  queue = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(queue);

  if (MGGetBoolAnswer())
  {
    v4 = +[AVSystemController sharedAVSystemController];
    v5 = [v4 attributeForKey:AVSystemController_CarPlayIsConnectedAttribute];
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = bOOLValue;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating isCarPlayDeviceConnected to %d", v8, 8u);
  }

  [(CSDRouteManager *)self setCarPlayDeviceConnected:bOOLValue];
}

@end