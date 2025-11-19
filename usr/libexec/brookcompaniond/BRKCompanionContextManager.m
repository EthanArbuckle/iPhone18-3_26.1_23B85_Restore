@interface BRKCompanionContextManager
- (BRKCompanionContextManager)initWithBRKIDSService:(id)a3;
- (id)_messageForRegion:(id)a3;
- (void)fetchLocationOfInterest;
- (void)locationManager:(id)a3 didEnter:(id)a4 completion:(id)a5;
- (void)locationManager:(id)a3 didExitRegion:(id)a4;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)monitorLocationOfInterest:(id)a3;
- (void)startMonitoring:(id)a3 forRegion:(id)a4;
- (void)stopMonitoring:(id)a3 forRegionIdentifier:(id)a4;
- (void)stopMonitoringHome;
- (void)stopMonitoringIdentifier:(id)a3;
@end

@implementation BRKCompanionContextManager

- (BRKCompanionContextManager)initWithBRKIDSService:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = BRKCompanionContextManager;
  v6 = [(BRKCompanionContextManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_idsService, a3);
    [(BRKIDSService *)v7->_idsService setCompanionContextManagerDelegate:v7];
    v8 = [CLLocationManager alloc];
    v9 = [NSBundle bundleWithPath:@"/System/Library/LocationBundles/HandwashingLocation.bundle"];
    v10 = [v8 initWithEffectiveBundle:v9 delegate:v7 onQueue:&_dispatch_main_q];
    locationManager = v7->_locationManager;
    v7->_locationManager = v10;

    v12 = [(CLLocationManager *)v7->_locationManager authorizationStatus];
    v13 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "authorizationStatus %d", buf, 8u);
    }

    v14 = +[RTRoutineManager defaultManager];
    routineManager = v7->_routineManager;
    v7->_routineManager = v14;

    v16 = +[BRKSettings settingsForActiveDevice];
    v17 = [v16 isCachedLocationAuthFlowEnabled];

    if (v17)
    {
      [(BRKCompanionContextManager *)v7 stopMonitoringHome];
    }
  }

  return v7;
}

- (void)startMonitoring:(id)a3 forRegion:(id)a4
{
  v5 = a4;
  v6 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[BRKCompanionContextManager startMonitoring:forRegion:]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s DAEMON startMonitoringForRegion: %@", &v7, 0x16u);
  }

  [v5 setConservativeEntry:1];
  [(CLLocationManager *)self->_locationManager startMonitoringForRegion:v5];
}

- (void)stopMonitoring:(id)a3 forRegionIdentifier:(id)a4
{
  v5 = a4;
  v6 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[BRKCompanionContextManager stopMonitoring:forRegionIdentifier:]";
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s DAEMON stopMonitoringForRegion: %@", &v7, 0x16u);
  }

  [(BRKCompanionContextManager *)self stopMonitoringIdentifier:v5];
}

- (id)_messageForRegion:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BRKIDSMessage);
  v5 = [v3 identifier];
  [v4 setIdentifier:v5];

  [v3 center];
  [v4 setLongitude:v6];
  [v3 center];
  [v4 setLatitude:?];
  [v3 radius];
  v8 = v7;

  [v4 setRadius:v8];

  return v4;
}

- (void)stopMonitoringHome
{
  v3 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[BRKCompanionContextManager stopMonitoringHome]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v4, 0xCu);
  }

  [(BRKCompanionContextManager *)self stopMonitoringIdentifier:@"brook-home"];
}

- (void)stopMonitoringIdentifier:(id)a3
{
  v4 = a3;
  v5 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[BRKCompanionContextManager stopMonitoringIdentifier:]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s _locationManager stopMonitoringForRegion: %@", &v9, 0x16u);
  }

  v6 = CLLocationCoordinate2DMake(0.0, 0.0);
  locationManager = self->_locationManager;
  v8 = [[CLCircularRegion alloc] initWithCenter:v4 radius:v6.latitude identifier:{v6.longitude, 0.0}];
  [(CLLocationManager *)locationManager stopMonitoringForRegion:v8];
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(CLLocationManager *)self->_locationManager authorizationStatus];
    v8 = 136315394;
    v9 = "[BRKCompanionContextManager locationManagerDidChangeAuthorization:]";
    v10 = 1024;
    LODWORD(v11) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s %d", &v8, 0x12u);
  }

  if ([(CLLocationManager *)self->_locationManager authorizationStatus]== kCLAuthorizationStatusAuthorizedAlways)
  {
    [(BRKCompanionContextManager *)self fetchLocationOfInterest];
  }

  else
  {
    v6 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[BRKCompanionContextManager locationManagerDidChangeAuthorization:]";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s [_locationManager authorizationStatus] != kCLClientAuthorizationStatusAuthorizedAlways", &v8, 0xCu);
    }

    v7 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[BRKCompanionContextManager locationManagerDidChangeAuthorization:]";
      v10 = 2112;
      v11 = @"brook-home";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s DAEMON stopMonitoringForRegion: %@", &v8, 0x16u);
    }

    [(BRKCompanionContextManager *)self stopMonitoringHome];
  }
}

- (void)fetchLocationOfInterest
{
  v3 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[BRKCompanionContextManager fetchLocationOfInterest]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  routineManager = self->_routineManager;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001858;
  v5[3] = &unk_100008298;
  v5[4] = self;
  [BRKRoutineManager fetchLocationsOfInterestWithSingleRetryOfType:0 routineManager:routineManager withHandler:v5];
}

- (void)monitorLocationOfInterest:(id)a3
{
  v4 = a3;
  v5 = [v4 location];
  [v5 latitude];
  v7 = v6;
  v8 = [v4 location];

  [v8 longitude];
  v10 = CLLocationCoordinate2DMake(v7, v9);

  if (CLLocationCoordinate2DIsValid(v10))
  {
    v11 = [[CLCircularRegion alloc] initWithCenter:@"brook-home" radius:v10.latitude identifier:{v10.longitude, 100.0}];
    v12 = BRKLoggingObjectForDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[BRKCompanionContextManager monitorLocationOfInterest:]";
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s LOCAL startMonitoringForRegion: %@", &v13, 0x16u);
    }

    [v11 setConservativeEntry:1];
    [(CLLocationManager *)self->_locationManager startMonitoringForRegion:v11];
  }
}

- (void)locationManager:(id)a3 didEnter:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v18 = "[BRKCompanionContextManager locationManager:didEnter:completion:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v10 = [(BRKCompanionContextManager *)self _messageForRegion:v8];

  v11 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[BRKCompanionContextManager locationManager:didEnter:completion:]";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s sending IDS message %@", buf, 0x16u);
  }

  idsService = self->_idsService;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100001E4C;
  v15[3] = &unk_1000082C0;
  v13 = v10;
  v16 = v13;
  v14 = [(BRKIDSService *)idsService sendProtobuf:v13 type:5 priority:300 completionHandler:v15 withTimeout:30.0];
  if (v7)
  {
    v7[2](v7);
  }
}

- (void)locationManager:(id)a3 didExitRegion:(id)a4
{
  v5 = a4;
  v6 = BRKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[BRKCompanionContextManager locationManager:didExitRegion:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v7 = [(BRKCompanionContextManager *)self _messageForRegion:v5];

  idsService = self->_idsService;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002084;
  v11[3] = &unk_1000082C0;
  v12 = v7;
  v9 = v7;
  v10 = [(BRKIDSService *)idsService sendProtobuf:v9 type:6 priority:300 completionHandler:v11 withTimeout:30.0];
}

@end