@interface SSUSBApplicationDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (id)setupWindowWithNewRoot;
- (int64_t)pnpDeviceTypeForType:(unint64_t)a3;
- (void)acquireHUDTransaction;
- (void)activate;
- (void)didRequestEnablingBluetooth;
- (void)didTapToPairPencil;
- (void)dismissBTPrompt;
- (void)dismissChargingStatus;
- (void)dismissUIAnimated:(BOOL)a3;
- (void)dismissUnlockPrompt;
- (void)releaseHUDTransaction;
- (void)setPendingOperation:(unint64_t)a3;
- (void)showChargingStatus;
- (void)showEnableBluetoothPill;
- (void)showPairConsentPrompt;
- (void)showPairingFailure;
- (void)showPairingStarted;
- (void)showSubsequentPairSuccess;
- (void)showUnlockPrompt;
- (void)updatePairedUnlockBannerToUnlocked;
- (void)viewControllerDidDismiss:(id)a3;
@end

@implementation SSUSBApplicationDelegate

- (void)activate
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "activate called.", buf, 2u);
  }

  if (gInitialTransaction)
  {
    v4 = gInitialTransaction;
  }

  else
  {
    v4 = os_transaction_create();
  }

  transaction = self->_transaction;
  self->_transaction = v4;

  v6 = gInitialTransaction;
  gInitialTransaction = 0;

  v7 = objc_alloc_init(SHUDBannerManager);
  bannerManager = self->_bannerManager;
  self->_bannerManager = v7;

  v9 = objc_alloc_init(SHUDManager);
  hudManager = self->_hudManager;
  self->_hudManager = v9;

  objc_initWeak(buf, self);
  objc_initWeak(&location, self->_hudManager);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000038FC;
  v37[3] = &unk_100014510;
  objc_copyWeak(&v38, &location);
  [(SHUDBannerManager *)self->_bannerManager setBannerDidDismissHandler:v37];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10000394C;
  v35[3] = &unk_100014510;
  objc_copyWeak(&v36, &location);
  [(SHUDBannerManager *)self->_bannerManager setBannerButtonDidTap:v35];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_10000399C;
  v33[3] = &unk_100014538;
  objc_copyWeak(&v34, buf);
  [(SHUDManager *)self->_hudManager setBannerRequestHandler:v33];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100003AA4;
  v31[3] = &unk_100014408;
  objc_copyWeak(&v32, buf);
  [(SHUDManager *)self->_hudManager setUpdatePairedUnlockHandler:v31];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100003B74;
  v29[3] = &unk_100014408;
  objc_copyWeak(&v30, buf);
  [(SHUDManager *)self->_hudManager setDismissBannerHandler:v29];
  v11 = objc_alloc_init(CUSystemMonitor);
  systemMonitor = self->_systemMonitor;
  self->_systemMonitor = v11;

  v13 = &_dispatch_main_q;
  [(CUSystemMonitor *)self->_systemMonitor setDispatchQueue:&_dispatch_main_q];

  objc_initWeak(&from, self);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100003C44;
  v26[3] = &unk_100014408;
  objc_copyWeak(&v27, &from);
  [(CUSystemMonitor *)self->_systemMonitor setScreenOnChangedHandler:v26];
  [(CUSystemMonitor *)self->_systemMonitor activateWithCompletion:0];
  v14 = [(SHUDManager *)self->_hudManager currentBannerRequest];
  v15 = v14;
  if (v14 && [v14 type] != 2)
  {
    [(SSUSBApplicationDelegate *)self displayBannerWithModel:v15];
  }

  else
  {
    v16 = +[UIDevice currentDevice];
    v17 = [v16 _supportsPencil];

    if (v17)
    {
      v18 = objc_opt_new();
      orientationObserver = self->_orientationObserver;
      self->_orientationObserver = v18;

      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100003D38;
      v25[3] = &unk_100014560;
      v25[4] = self;
      v20 = objc_retainBlock(v25);
      [(FBSOrientationObserver *)self->_orientationObserver activeInterfaceOrientationWithCompletion:v20];
      [(FBSOrientationObserver *)self->_orientationObserver setHandler:v20];
      v21 = objc_opt_new();
      b332Observer = self->_b332Observer;
      self->_b332Observer = v21;

      [(SFB332SetupObserver *)self->_b332Observer setDispatchQueue:&_dispatch_main_q];
      [(SFB332SetupObserver *)self->_b332Observer setDelegate:self];
      [(SFB332SetupObserver *)self->_b332Observer activate];
    }

    else
    {
      v23 = b332_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SharingHUDService - This device type doesn't need to use SharingHUDService.", v24, 2u);
      }
    }
  }

  objc_destroyWeak(&v27);
  objc_destroyWeak(&from);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = b332_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "didFinishLaunchingWithOptions...", buf, 2u);
  }

  v6 = b332_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "calling block", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004128;
  v9[3] = &unk_1000144E8;
  v9[4] = self;
  [UIApp _performBlockAfterCATransactionCommits:v9];
  v7 = b332_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didFinish!", buf, 2u);
  }

  return 1;
}

- (void)dismissUIAnimated:(BOOL)a3
{
  v4 = b332_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = [(SSUSBApplicationDelegate *)self pendingOperation];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "dismissUI. pendingOperation: (%lu)", &v9, 0xCu);
  }

  v5 = [(B332PillWindow *)self->_b332ChargingWindow rootViewController];
  [v5 dismissViewControllerAnimated:1 completion:&stru_100014580];

  objc_storeWeak(&self->_enableBluetoothVC, 0);
  objc_storeWeak(&self->_lockVC, 0);
  objc_storeWeak(&self->_displayViewController, 0);
  objc_storeWeak(&self->_displayViewControllerPendingDismiss, 0);
  b332ChargingWindow = self->_b332ChargingWindow;
  self->_b332ChargingWindow = 0;

  self->_currentOperation = [(SSUSBApplicationDelegate *)self pendingOperation];
  v7 = [(SSUSBApplicationDelegate *)self pendingOperation];
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      [(SSUSBApplicationDelegate *)self showPairingStarted];
    }

    else if (v7 == 4)
    {
      [(SSUSBApplicationDelegate *)self showPairConsentPrompt];
    }
  }

  else if (v7 == 1)
  {
    [(SSUSBApplicationDelegate *)self showUnlockPrompt];
  }

  else if (v7 == 2)
  {
    [(SSUSBApplicationDelegate *)self showChargingStatus];
  }

  v8 = b332_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setPendingOperation: PendingOperationTypeNone", &v9, 2u);
  }

  self->_pendingOperation = 0;
}

- (void)setPendingOperation:(unint64_t)a3
{
  v5 = b332_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    currentOperation = self->_currentOperation;
    v7 = 134218240;
    v8 = a3;
    v9 = 2048;
    v10 = currentOperation;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setPendingOperation: (%lu), currentOperation: (%lu)", &v7, 0x16u);
  }

  if (self->_currentOperation != a3)
  {
    self->_pendingOperation = a3;
  }
}

- (void)showChargingStatus
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "showChargingStatus", buf, 2u);
  }

  deviceState = self->_deviceState;
  WeakRetained = objc_loadWeakRetained(&self->_displayViewController);
  [WeakRetained setDeviceState:deviceState];

  v6 = self->_deviceState;
  v7 = v6;
  if (v6 && ([(PNPDeviceState *)v6 batteryLevelUnknown]& 1) != 0)
  {
    v8 = objc_loadWeakRetained(&self->_displayViewController);
    [v8 showGenericBatteryUI];
  }

  v9 = objc_loadWeakRetained(&self->_displayViewController);
  if (!v9)
  {
    v10 = [(SSUSBApplicationDelegate *)self setupWindowWithNewRoot];
    if (v10)
    {
      self->_currentOperation = 2;
      sub_100004608();
      v11 = objc_opt_new();
      [v11 setDelegate:self];
      [v11 setAppearanceDelegate:self];
      [v11 setDeviceState:self->_deviceState];
      objc_storeWeak(&self->_displayViewController, v11);
      [v10 presentViewController:v11 animated:1 completion:&stru_1000145A0];
      v12 = self->_deviceState;
      v13 = v12;
      if (v12)
      {
        if (([(PNPDeviceState *)v12 batteryLevelUnknown]& 1) != 0)
        {
          [v11 showGenericBatteryUI];
        }

        else
        {
          [v11 pairingSucceededSubsequently];
        }
      }
    }

    else
    {
      [(SSUSBApplicationDelegate *)self setPendingOperation:2];
      v11 = b332_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "showChargingStatus - bailing", v14, 2u);
      }
    }
  }
}

- (void)dismissChargingStatus
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dismissChargingStatus", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_displayViewController);
  [WeakRetained pairingFailed];

  if (self->_pendingOperation == 2)
  {
    self->_pendingOperation = 0;
  }
}

- (int64_t)pnpDeviceTypeForType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_10000CC90[a3 - 1];
  }
}

- (void)showUnlockPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_displayViewController);
  [WeakRetained pairingFailed];

  v4 = b332_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [(SSUSBApplicationDelegate *)self pendingOperation];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "showUnlockPrompt. Pending type? %lu", &buf, 0xCu);
  }

  v5 = [(SSUSBApplicationDelegate *)self setupWindowWithNewRoot];
  if (v5)
  {
    self->_currentOperation = 1;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v6 = qword_10001C2A0;
    v12 = qword_10001C2A0;
    if (!qword_10001C2A0)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v14 = sub_100005EF4;
      v15 = &unk_1000145E8;
      v16 = &v9;
      sub_100005EF4(&buf);
      v6 = v10[3];
    }

    v7 = v6;
    _Block_object_dispose(&v9, 8);
    v8 = objc_opt_new();
    objc_storeWeak(&self->_lockVC, v8);
    [v8 setAppearanceDelegate:self, v9];
    [v8 setDeviceState:self->_deviceState];
    [v5 presentViewController:v8 animated:0 completion:0];
  }

  else
  {
    [(SSUSBApplicationDelegate *)self setPendingOperation:1];
    v8 = b332_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "showUnlockPrompt - bail", &buf, 2u);
    }
  }
}

- (void)showPairConsentPrompt
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 134217984;
    v18 = [(SSUSBApplicationDelegate *)self pendingOperation];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "showPairConsentPrompt. Pending type? %lu", &v17, 0xCu);
  }

  deviceState = self->_deviceState;
  WeakRetained = objc_loadWeakRetained(&self->_displayViewController);
  [WeakRetained setDeviceState:deviceState];

  v6 = objc_loadWeakRetained(&self->_lockVC);
  if (v6 || (v6 = objc_loadWeakRetained(&self->_enableBluetoothVC)) != 0)
  {

    goto LABEL_6;
  }

  if (self->_b332ChargingWindow)
  {
    v8 = objc_loadWeakRetained(&self->_displayViewController);
    if (!v8 || (v9 = v8, v10 = objc_loadWeakRetained(&self->_displayViewControllerPendingDismiss), v10, v9, v10))
    {
LABEL_6:
      v7 = b332_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "showPairConsentPrompt - bail", &v17, 2u);
      }

      [(SSUSBApplicationDelegate *)self setPendingOperation:4];
      return;
    }
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_displayViewControllerPendingDismiss);

    if (v11)
    {
      goto LABEL_6;
    }
  }

  self->_currentOperation = 4;
  v12 = [(SSUSBApplicationDelegate *)self setupWindowWithNewRoot];
  if (v12)
  {
    sub_100004608();
    v13 = objc_opt_new();
    objc_storeWeak(&self->_displayViewController, v13);
    [v13 setAppearanceDelegate:self];
    [v13 setDelegate:self];
    [v13 setDeviceState:self->_deviceState];
    [v12 presentViewController:v13 animated:0 completion:0];
  }

  v14 = objc_loadWeakRetained(&self->_displayViewController);
  [v14 showPairingPrompt];

  v15 = self->_deviceState;
  v16 = objc_loadWeakRetained(&self->_displayViewController);
  [v16 setDeviceState:v15];
}

- (void)didRequestEnablingBluetooth
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "didRequestEnablingBluetooth.", v4, 2u);
  }

  [(SFB332SetupObserver *)self->_b332Observer enableBluetoothTapped];
}

- (void)didTapToPairPencil
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "didTapToPairPencil.", v5, 2u);
  }

  [(SFB332SetupObserver *)self->_b332Observer pairTapped];
  WeakRetained = objc_loadWeakRetained(&self->_displayViewController);
  [WeakRetained showGenericBatteryUI];
}

- (void)showEnableBluetoothPill
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "showEnableBluetoothPill.", v8, 2u);
  }

  v4 = [(SSUSBApplicationDelegate *)self setupWindowWithNewRoot];
  if (v4)
  {
    [(B332PillWindow *)self->_b332ChargingWindow makeKeyAndVisible];
    v9 = 0;
    v10 = &v9;
    v11 = 0x2050000000;
    v5 = qword_10001C2A8;
    v12 = qword_10001C2A8;
    if (!qword_10001C2A8)
    {
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100005F4C;
      v8[3] = &unk_1000145E8;
      v8[4] = &v9;
      sub_100005F4C(v8);
      v5 = v10[3];
    }

    v6 = v5;
    _Block_object_dispose(&v9, 8);
    v7 = objc_opt_new();
    objc_storeWeak(&self->_enableBluetoothVC, v7);
    [v7 setAppearanceDelegate:self];
    [v7 setDeviceState:self->_deviceState];
    [v7 setDelegate:self];
    [v4 presentViewController:v7 animated:0 completion:0];
  }

  else
  {
    v7 = b332_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "showEnableBluetoothPill - bail", v8, 2u);
    }
  }
}

- (void)dismissUnlockPrompt
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dismissUnlockPrompt", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_lockVC);
  [WeakRetained dismissPill];

  objc_storeWeak(&self->_lockVC, 0);
  if (self->_pendingOperation == 1)
  {
    self->_pendingOperation = 0;
  }
}

- (void)dismissBTPrompt
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dismissBTPrompt", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_enableBluetoothVC);
  [WeakRetained dismissPill];

  objc_storeWeak(&self->_enableBluetoothVC, 0);
}

- (void)acquireHUDTransaction
{
  transaction = self->_transaction;
  v4 = b332_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "yes";
    if (!transaction)
    {
      v5 = "no";
    }

    v8 = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "acquireHUDTransaction - exists? %s", &v8, 0xCu);
  }

  if (!transaction)
  {
    v6 = os_transaction_create();
    v7 = self->_transaction;
    self->_transaction = v6;
  }
}

- (void)releaseHUDTransaction
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    transaction = self->_transaction;
    *buf = 134217984;
    v11 = transaction;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "releaseHUDTransaction - %p", buf, 0xCu);
  }

  v5 = self->_transaction;
  if (v5)
  {
    v6 = v5;
    v7 = dispatch_time(0, 20000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000054CC;
    block[3] = &unk_1000144E8;
    block[4] = v6;
    dispatch_after(v7, &_dispatch_main_q, block);
  }

  v8 = self->_transaction;
  self->_transaction = 0;
}

- (id)setupWindowWithNewRoot
{
  if (qword_10001C280 != -1)
  {
    sub_10000947C();
  }

  if (self->_b332ChargingWindow)
  {
    v3 = 0;
  }

  else
  {
    v4 = objc_opt_new();
    b332ChargingWindow = self->_b332ChargingWindow;
    self->_b332ChargingWindow = v4;

    v6 = b332_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      orientation = self->_orientation;
      v18 = 134217984;
      v19 = orientation;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "--setting orientation (%li)...", &v18, 0xCu);
    }

    v8 = b332_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(B332PillWindow *)self->_b332ChargingWindow interfaceOrientation];
      v18 = 134217984;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "--new orientation (%li)...", &v18, 0xCu);
    }

    v10 = b332_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(B332PillWindow *)self->_b332ChargingWindow _windowInterfaceOrientation];
      v18 = 134217984;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "--new window orientation (%li)...", &v18, 0xCu);
    }

    [(B332PillWindow *)self->_b332ChargingWindow setAutorotates:1];
    v12 = +[UIScreen mainScreen];
    [(B332PillWindow *)self->_b332ChargingWindow setScreen:v12];

    [(B332PillWindow *)self->_b332ChargingWindow setHidden:0];
    v13 = +[UIColor clearColor];
    [(B332PillWindow *)self->_b332ChargingWindow setBackgroundColor:v13];

    [(B332PillWindow *)self->_b332ChargingWindow setWindowLevel:UIScreenshotServicesWindowLevel + -1.0];
    [(B332PillWindow *)self->_b332ChargingWindow _setWindowControlsStatusBarOrientation:0];
    v3 = objc_opt_new();
    v14 = [v3 view];
    [v14 setUserInteractionEnabled:0];

    v15 = +[UIColor clearColor];
    v16 = [v3 view];
    [v16 setBackgroundColor:v15];

    [(B332PillWindow *)self->_b332ChargingWindow setRootViewController:v3];
    [(B332PillWindow *)self->_b332ChargingWindow _setRotatableViewOrientation:self->_orientation duration:1 force:self->_duration];
    [(B332PillWindow *)self->_b332ChargingWindow resignKeyWindow];
  }

  return v3;
}

- (void)showPairingStarted
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "showPairingStarted", v13, 2u);
  }

  deviceState = self->_deviceState;
  WeakRetained = objc_loadWeakRetained(&self->_displayViewController);
  [WeakRetained setDeviceState:deviceState];

  v6 = objc_loadWeakRetained(&self->_lockVC);
  if (v6 || (v6 = objc_loadWeakRetained(&self->_enableBluetoothVC)) != 0)
  {

LABEL_6:
    [(SSUSBApplicationDelegate *)self setPendingOperation:3];
    return;
  }

  if (self->_b332ChargingWindow)
  {
    v7 = objc_loadWeakRetained(&self->_displayViewController);

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  self->_currentOperation = 3;
  v8 = [(SSUSBApplicationDelegate *)self setupWindowWithNewRoot];
  if (v8)
  {
    sub_100004608();
    v9 = objc_opt_new();
    objc_storeWeak(&self->_displayViewController, v9);
    [v9 setAppearanceDelegate:self];
    [v9 setDelegate:self];
    [v9 setDeviceState:self->_deviceState];
    [v9 setModalPresentationStyle:0];
    [v8 presentViewController:v9 animated:0 completion:0];
  }

  v10 = objc_loadWeakRetained(&self->_displayViewController);
  [v10 pairingStarted];

  v11 = self->_deviceState;
  v12 = objc_loadWeakRetained(&self->_displayViewController);
  [v12 setDeviceState:v11];
}

- (void)showPairingFailure
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "showPairingFailure, if view controller exists. (This is not necessarily an error, this is just the name of the method in the PencilPairingUI framework to dismiss the view controller.)", v6, 2u);
  }

  self->_currentOperation = 0;
  WeakRetained = objc_loadWeakRetained(&self->_displayViewController);
  [WeakRetained pairingFailed];

  v5 = objc_loadWeakRetained(&self->_displayViewController);
  objc_storeWeak(&self->_displayViewControllerPendingDismiss, v5);

  [(SSUSBApplicationDelegate *)self dismissBTPrompt];
}

- (void)showSubsequentPairSuccess
{
  v3 = b332_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "showSubsequentPairSuccess", v5, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_displayViewController);
  [WeakRetained pairingSucceededSubsequently];
}

- (void)viewControllerDidDismiss:(id)a3
{
  v4 = b332_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PNPViewControllerAppearanceDelegate viewControllerDidDismiss", v5, 2u);
  }

  [(SSUSBApplicationDelegate *)self dismissUIAnimated:0];
}

- (void)updatePairedUnlockBannerToUnlocked
{
  v6 = [(SHUDManager *)self->_hudManager currentBannerRequest];
  bannerManager = self->_bannerManager;
  v4 = [v6 watchName];
  v5 = +[SFHUDBannerModel pairedUnlockModelWithWatchName:needsLockButton:needsUpdate:](SFHUDBannerModel, "pairedUnlockModelWithWatchName:needsLockButton:needsUpdate:", v4, [v6 needsLockButton], 0);
  [(SHUDBannerManager *)bannerManager postBannerWithModel:v5];
}

@end