@interface BYDaemonProximityController
+ (id)sharedController;
- (BYDaemonProximityControllerDelegate)delegate;
- (id)deviceClassForSharingDeviceClass:(unsigned __int8)class;
- (id)fileTransferSessionTemplate;
- (void)beginAdvertising;
- (void)beginSIMSetupExternalAuthentication;
- (void)endAdvertising;
- (void)endDeviceToDeviceMigration;
- (void)endPairing;
- (void)endSIMSetupExternalAuthentication;
- (void)showMigrationInterfaceOnSource;
- (void)suspendConnectionForSoftwareUpdate:(id)update;
@end

@implementation BYDaemonProximityController

+ (id)sharedController
{
  if (qword_100028C30 != -1)
  {
    sub_100010CD0();
  }

  v3 = qword_100028C38;

  return v3;
}

- (void)beginAdvertising
{
  service = [(BYDaemonProximityController *)self service];

  v4 = _BYLoggingFacility();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (service)
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Already advertising for proximity...", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting advertising for proximity...", buf, 2u);
    }

    v6 = objc_alloc_init(SFDeviceSetupServiceiOS);
    [(BYDaemonProximityController *)self setService:v6];

    v7 = dispatch_queue_create("Proximity Setup Queue", 0);
    service2 = [(BYDaemonProximityController *)self service];
    [service2 setDispatchQueue:v7];

    objc_initWeak(buf, self);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100001F20;
    v20[3] = &unk_100020608;
    objc_copyWeak(&v21, buf);
    service3 = [(BYDaemonProximityController *)self service];
    [service3 setShowPINHandlerEx:v20];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100001FA8;
    v18[3] = &unk_100020630;
    objc_copyWeak(&v19, buf);
    service4 = [(BYDaemonProximityController *)self service];
    [service4 setCompletionHandler:v18];

    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100002020;
    v16[3] = &unk_100020658;
    objc_copyWeak(&v17, buf);
    service5 = [(BYDaemonProximityController *)self service];
    [service5 setProgressHandlerEx:v16];

    objc_copyWeak(&v15, buf);
    v12 = [(BYDaemonProximityController *)self service:_NSConcreteStackBlock];
    [v12 setReceivedObjectHandler:&v14];

    service6 = [(BYDaemonProximityController *)self service];
    [service6 activate];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

- (void)endAdvertising
{
  service = [(BYDaemonProximityController *)self service];

  if (service)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ending advertising for proximity...", v6, 2u);
    }

    service2 = [(BYDaemonProximityController *)self service];
    [service2 invalidate];

    [(BYDaemonProximityController *)self setService:0];
  }
}

- (void)endPairing
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ending pairing...", v5, 2u);
  }

  service = [(BYDaemonProximityController *)self service];
  [service sendSetupAction:1 info:0 responseHandler:0];
}

- (void)beginSIMSetupExternalAuthentication
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning SIM setup external authentication", v5, 2u);
  }

  service = [(BYDaemonProximityController *)self service];
  [service sendSetupAction:9 info:0 responseHandler:0];
}

- (void)endSIMSetupExternalAuthentication
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Ending SIM setup external authentication", v5, 2u);
  }

  service = [(BYDaemonProximityController *)self service];
  [service sendSetupAction:10 info:0 responseHandler:0];
}

- (id)fileTransferSessionTemplate
{
  service = [(BYDaemonProximityController *)self service];
  fileTransferSessionTemplate = [service fileTransferSessionTemplate];

  return fileTransferSessionTemplate;
}

- (void)endDeviceToDeviceMigration
{
  service = [(BYDaemonProximityController *)self service];
  [service sendSetupAction:4 info:0 responseHandler:0];
}

- (void)showMigrationInterfaceOnSource
{
  service = [(BYDaemonProximityController *)self service];
  [service sendSetupAction:3 info:0 responseHandler:0];
}

- (void)suspendConnectionForSoftwareUpdate:(id)update
{
  [(BYDaemonProximityController *)self setSuspendCompletionBlock:update];
  service = [(BYDaemonProximityController *)self service];
  [service sendSetupAction:5 info:0 responseHandler:0];
}

- (id)deviceClassForSharingDeviceClass:(unsigned __int8)class
{
  if ((class - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1000206A0 + (class - 1));
  }
}

- (BYDaemonProximityControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end