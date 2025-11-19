@interface CSDRouteManager
+ (CSDRouteManager)sharedInstance;
- (BOOL)_isAnyAudioDevicePreferred;
- (BOOL)hasInEarRouteInTipiWithAndSmartRoutedToCompanionWatch;
- (BOOL)hasInEarRouteInTipiWithCompanionWatch;
- (BOOL)isAnyBluetoothHeadphoneRouteAvailableForAnyCall;
- (BOOL)isAnyRouteAvailableWithUniqueIdentifier:(id)a3 forCall:(id)a4;
- (BOOL)isAnyVehicleRouteAvailableForAnyCall;
- (BOOL)isAnyVehicleRouteAvailableForCall:(id)a3;
- (BOOL)isCarModeActive;
- (BOOL)isCarPlayRouteAvailable;
- (BOOL)isEligibleRouteAvailable;
- (BOOL)isEligibleRouteAvailableForCall:(id)a3;
- (CSDRouteManager)init;
- (id)_audioRouteCollectionForCall:(id)a3;
- (id)preferredAndActiveRouteForCall:(id)a3;
- (id)preferredRouteForCall:(id)a3;
- (void)_initializeAudioRouteCollections;
- (void)_initializeAutomaticCarDNDStatusIfNecessary;
- (void)_postNotificationName:(id)a3;
- (void)_updateCarPlayDeviceConnected;
- (void)_updatePickableRoutes;
- (void)aaDevicesDidChange;
- (void)carPlayIsConnectedChanged:(id)a3;
- (void)dealloc;
- (void)mediaServicesWereResetNotification:(id)a3;
- (void)pickableRoutesDidChangeNotification:(id)a3;
- (void)preferredExternalRouteDidChangeNotification:(id)a3;
@end

@implementation CSDRouteManager

- (void)_updatePickableRoutes
{
  v3 = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(CSDRouteManager *)self audioRouteCollections];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (v8)
        {
          v8 = 1;
        }

        else
        {
          v8 = [*(*(&v11 + 1) + 8 * i) updatePickableRoutes];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);

    if (v8)
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
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100041FD0;
  v5[3] = &unk_10061C1E0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

+ (CSDRouteManager)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100154400;
  block[3] = &unk_10061A860;
  block[4] = a1;
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
    v7 = [(AADeviceManager *)v2->_aaDeviceManager deviceFoundHandler];
    [(AADeviceManager *)v2->_aaDeviceManager setDeviceLostHandler:v7];

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

- (BOOL)isAnyRouteAvailableWithUniqueIdentifier:(id)a3 forCall:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = [(CSDRouteManager *)self queue];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100154AA8;
  v12[3] = &unk_10061C910;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v15 = &v16;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, v12);

  LOBYTE(self) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return self;
}

- (id)preferredRouteForCall:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100028684;
  v17 = sub_1000328CC;
  v18 = 0;
  v5 = [v4 provider];
  v6 = [v5 isTinCanProvider];

  if ((v6 & 1) == 0)
  {
    v7 = [(CSDRouteManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100154C70;
    block[3] = &unk_10061C678;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(v7, block);
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (BOOL)isEligibleRouteAvailable
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100154DB4;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)hasInEarRouteInTipiWithAndSmartRoutedToCompanionWatch
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100154FD0;
  v5[3] = &unk_10061C1E0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)isEligibleRouteAvailableForCall:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001551F0;
  block[3] = &unk_10061C678;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (id)preferredAndActiveRouteForCall:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100028684;
  v17 = sub_1000328CC;
  v18 = 0;
  v5 = [v4 provider];
  v6 = [v5 isTinCanProvider];

  if ((v6 & 1) == 0)
  {
    v7 = [(CSDRouteManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015542C;
    block[3] = &unk_10061C678;
    v12 = &v13;
    block[4] = self;
    v11 = v4;
    dispatch_sync(v7, block);
  }

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

- (BOOL)isAnyVehicleRouteAvailableForCall:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100155598;
  block[3] = &unk_10061AE20;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (BOOL)isAnyBluetoothHeadphoneRouteAvailableForAnyCall
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001556EC;
  v5[3] = &unk_10061C1E0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)isCarPlayRouteAvailable
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001558E8;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)isAnyVehicleRouteAvailableForAnyCall
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001559F4;
  v5[3] = &unk_10061C1E0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)isCarModeActive
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDRouteManager *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100155BF0;
  v5[3] = &unk_10061C1E0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)aaDevicesDidChange
{
  v3 = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100155CB0;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)pickableRoutesDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  v7 = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100155DF4;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)preferredExternalRouteDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  v7 = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100155F38;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)carPlayIsConnectedChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  v7 = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001560B8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)mediaServicesWereResetNotification:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ is handling %@", buf, 0x16u);
  }

  v7 = [(CSDRouteManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100156238;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v7, block);
}

- (void)_postNotificationName:(id)a3
{
  v4 = a3;
  v5 = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:v4 object:0];
}

- (id)_audioRouteCollectionForCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [TUAudioRouteCollectionKey alloc];
  v7 = [v4 audioCategory];
  v8 = [v4 audioMode];
  v9 = [v6 initWithCategory:v7 mode:v8];

  v10 = [(CSDRouteManager *)self audioRouteCollections];
  v11 = [v10 objectForKeyedSubscript:v9];

  if (!v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(CSDRouteManager *)self audioRouteCollections];
      v14 = [v4 audioCategory];
      v15 = [v4 audioMode];
      v17 = 138413058;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] No audio route collection found in audioRouteCollections: %@ for audio category %@ and audio mode %@ for call %@", &v17, 0x2Au);
    }
  }

  return v11;
}

- (BOOL)_isAnyAudioDevicePreferred
{
  v2 = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(v2);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = +[TUCallCenter sharedInstance];
  v4 = [v3 audioDeviceController];
  v5 = [v4 devices];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
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

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v17 count:16];
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
  v2 = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(v2);

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
        v19 = [v17 category];
        v20 = [v17 mode];
        v21 = [(CSDAudioRouteCollection *)v18 initWithCategory:v19 mode:v20 routeManager:self];

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
  v3 = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDRouteManager *)self automaticCarDNDStatus];
  if (v4)
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
  v3 = [(CSDRouteManager *)self queue];
  dispatch_assert_queue_V2(v3);

  if (MGGetBoolAnswer())
  {
    v4 = +[AVSystemController sharedAVSystemController];
    v5 = [v4 attributeForKey:AVSystemController_CarPlayIsConnectedAttribute];
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Updating isCarPlayDeviceConnected to %d", v8, 8u);
  }

  [(CSDRouteManager *)self setCarPlayDeviceConnected:v6];
}

@end