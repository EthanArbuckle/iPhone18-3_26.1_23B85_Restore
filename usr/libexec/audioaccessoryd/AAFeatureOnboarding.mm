@interface AAFeatureOnboarding
+ (id)sharedInstance;
- (AAFeatureOnboarding)init;
- (id)_connectedDeviceWithIdentifier:(id)identifier;
- (id)_notificationContentForAssetManagerDownload:(id)download;
- (id)_notificationContentForDEOCTrainingWithDevice:(id)device;
- (id)_notificationContentForFitEducationNotificationForDevice:(id)device;
- (id)_notificationContentForPTAppDownload:(id)download;
- (unint64_t)_fitEducationNotificationsShownForDevice:(id)device;
- (void)_aaPairedDeviceDiscoveryEnsureStarted;
- (void)_aaPairedDeviceDiscoveryEnsureStopped;
- (void)_activate;
- (void)_addAssetManagerNotificationCategory;
- (void)_addDEOCOnboardingCategory;
- (void)_addFitEducationNotificationCategory;
- (void)_connectedDeviceFound:(id)found;
- (void)_connectedDeviceLost:(id)lost;
- (void)_deocNotificationShownForDeviceWithBluetoothAddress:(id)address;
- (void)_deviceDiscoveryEnsureStarted;
- (void)_deviceDiscoveryEnsureStopped;
- (void)_dismissFitEducationNotificationForDisconnectedDevice:(id)device;
- (void)_incrementFitEducationNotificationsShownForIdentifier:(id)identifier;
- (void)_invalidate;
- (void)_launchDEOCProxCardForDeviceWithBTAddress:(id)address;
- (void)_loadPreferences;
- (void)_postDEOCOnboardingIfNeeded:(id)needed;
- (void)_presentDeocNotification:(id)notification;
- (void)_receivedAssetManagerNotificationAction:(id)action forDevice:(id)device withAddress:(id)address;
- (void)_receivedAssetManagerPTAppDownloadNotificationAction:(id)action forDevice:(id)device withAddress:(id)address;
- (void)_receivedDEOCNotificationAction:(id)action forDeviceWithAddress:(id)address;
- (void)_receivedFitEducationNotificationAction:(id)action forDevice:(id)device withAddress:(id)address;
- (void)_registerForSystemNotifications;
- (void)_saveFitEducationNotificationsShown:(id)shown withCount:(unint64_t)count;
- (void)_unregisterFromSystemNotifications;
- (void)_userNotificationCenterEnsureStarted;
- (void)_userNotificationCenterEnsureStopped;
- (void)activate;
- (void)invalidate;
- (void)pairedDeviceLost:(id)lost;
- (void)receivedNotificationResponse:(id)response forRequest:(id)request;
- (void)showAssetManagerDownloadPTAppNotificationForDevice:(id)device withErrorHandler:(id)handler;
- (void)showAssetManagerShowDownloadNotificationForDevice:(id)device withErrorHandler:(id)handler;
- (void)showFitEducationNotificationForIdentifier:(id)identifier withErrorHandler:(id)handler;
@end

@implementation AAFeatureOnboarding

+ (id)sharedInstance
{
  if (qword_1002FA1E8 != -1)
  {
    sub_1001F79A8();
  }

  v3 = qword_1002FA1E0;

  return v3;
}

- (AAFeatureOnboarding)init
{
  v13.receiver = self;
  v13.super_class = AAFeatureOnboarding;
  v2 = [(AAFeatureOnboarding *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AAFeatureOnboarding", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = +[NSMutableDictionary dictionary];
    unCategories = v2->_unCategories;
    v2->_unCategories = v6;

    [(AAFeatureOnboarding *)v2 setPrefsChangedNotifyToken:0xFFFFFFFFLL];
    v8 = +[NSMutableSet set];
    deocOnboardedDeviceIdentifiers = v2->_deocOnboardedDeviceIdentifiers;
    v2->_deocOnboardedDeviceIdentifiers = v8;

    v10 = +[NSMutableDictionary dictionary];
    [(AAFeatureOnboarding *)v2 setFitEducationNotificationIdsForDeviceIds:v10];

    v11 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5C54;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  [(AAFeatureOnboarding *)self _loadPreferences];
  [(AAFeatureOnboarding *)self _addDEOCOnboardingCategory];
  [(AAFeatureOnboarding *)self _addFitEducationNotificationCategory];
  [(AAFeatureOnboarding *)self _addAssetManagerNotificationCategory];
  [(AAFeatureOnboarding *)self _userNotificationCenterEnsureStarted];
  [(AAFeatureOnboarding *)self _deviceDiscoveryEnsureStarted];
  [(AAFeatureOnboarding *)self _aaPairedDeviceDiscoveryEnsureStarted];

  [(AAFeatureOnboarding *)self _registerForSystemNotifications];
}

- (void)invalidate
{
  dispatchQueue = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5D4C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  [(AAFeatureOnboarding *)self _deviceDiscoveryEnsureStopped];
  [(AAFeatureOnboarding *)self _aaPairedDeviceDiscoveryEnsureStopped];
  [(AAFeatureOnboarding *)self _userNotificationCenterEnsureStopped];

  [(AAFeatureOnboarding *)self _unregisterFromSystemNotifications];
}

- (void)_deviceDiscoveryEnsureStarted
{
  deviceManager = [(AAFeatureOnboarding *)self deviceManager];

  if (!deviceManager)
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F79BC();
    }

    v4 = objc_alloc_init(AADeviceManager);
    aaServicesDaemon = [(AAFeatureOnboarding *)self aaServicesDaemon];
    [v4 setInternalServicesDaemon:aaServicesDaemon];

    dispatchQueue = [(AAFeatureOnboarding *)self dispatchQueue];
    [v4 setDispatchQueue:dispatchQueue];

    [v4 setInterruptionHandler:&stru_1002BAE30];
    [v4 setInvalidationHandler:&stru_1002BAE50];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000C608C;
    v13[3] = &unk_1002B7820;
    v13[4] = self;
    [v4 setDeviceFoundHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C6098;
    v12[3] = &unk_1002B7820;
    v12[4] = self;
    [v4 setDeviceLostHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C60A4;
    v11[3] = &unk_1002BAE78;
    v11[4] = self;
    [v4 setDeviceBatteryInfoUpdatedHandler:v11];
    [(AAFeatureOnboarding *)self setDeviceManager:v4];
    deviceManager2 = [(AAFeatureOnboarding *)self deviceManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000C60B0;
    v9[3] = &unk_1002B68A8;
    v9[4] = self;
    v10 = v4;
    v8 = v4;
    [deviceManager2 activateWithCompletion:v9];
  }
}

- (void)_deviceDiscoveryEnsureStopped
{
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7A94();
  }

  deviceManager = [(AAFeatureOnboarding *)self deviceManager];

  if (deviceManager)
  {
    deviceManager2 = [(AAFeatureOnboarding *)self deviceManager];
    [deviceManager2 invalidate];

    [(AAFeatureOnboarding *)self setDeviceManager:0];
  }
}

- (void)_connectedDeviceFound:(id)found
{
  foundCopy = found;
  devicesMap = [(AAFeatureOnboarding *)self devicesMap];

  if (!devicesMap)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [(AAFeatureOnboarding *)self setDevicesMap:v6];
  }

  identifier = [foundCopy identifier];
  devicesMap2 = [(AAFeatureOnboarding *)self devicesMap];
  [devicesMap2 setObject:foundCopy forKeyedSubscript:identifier];
}

- (void)_connectedDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  devicesMap = [(AAFeatureOnboarding *)self devicesMap];
  [devicesMap removeObjectForKey:identifier];

  devicesMap2 = [(AAFeatureOnboarding *)self devicesMap];
  v7 = [devicesMap2 count];

  if (!v7)
  {
    [(AAFeatureOnboarding *)self setDevicesMap:0];
  }

  [(AAFeatureOnboarding *)self _dismissFitEducationNotificationForDisconnectedDevice:lostCopy];
}

- (id)_connectedDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  deviceManager = [(AAFeatureOnboarding *)self deviceManager];
  discoveredDevices = [deviceManager discoveredDevices];

  v7 = [discoveredDevices countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(discoveredDevices);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = identifierCopy;
        v13 = identifier;
        v14 = v13;
        if (v13 == v12)
        {

LABEL_15:
          v7 = v10;
          goto LABEL_16;
        }

        if ((identifierCopy != 0) != (v13 == 0))
        {
          v15 = [v12 isEqual:v13];

          if (v15)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [discoveredDevices countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v7;
}

- (void)_aaPairedDeviceDiscoveryEnsureStarted
{
  pairedDeviceManager = [(AAFeatureOnboarding *)self pairedDeviceManager];
  [pairedDeviceManager subscribeToPairedDiscovery:self];
}

- (void)_aaPairedDeviceDiscoveryEnsureStopped
{
  pairedDeviceManager = [(AAFeatureOnboarding *)self pairedDeviceManager];
  [pairedDeviceManager unsubscribeFromPairedDiscovery:self];
}

- (void)pairedDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = [(AAFeatureOnboarding *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C66B4;
  v7[3] = &unk_1002B6D18;
  v8 = lostCopy;
  selfCopy = self;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_deocNotificationShownForDeviceWithBluetoothAddress:(id)address
{
  addressCopy = address;
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7AB0();
  }

  v3 = [[AAProxCardsInfo alloc] initWithBluetoothAddress:addressCopy];
  [v3 setDynamicEndOfChargeNotificationVersion:1];
  v4 = +[_TtC15audioaccessoryd13DeviceManager singleton];
  [v4 updateAAProxCardsInfoWithProxCardsInfo:v3 completion:&stru_1002BAE98];
}

- (void)_launchDEOCProxCardForDeviceWithBTAddress:(id)address
{
  addressCopy = address;
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7B0C();
  }

  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:@"AAFeatureOnboardingDynamicEndOfCharge" forKeyedSubscript:@"launchSource"];
  [v5 setObject:addressCopy forKeyedSubscript:@"deviceAddress"];
  v6 = [[AAProxCardHandler alloc] initWithInfo:v5];
  [(AAFeatureOnboarding *)self setDeocProxCardHandler:v6];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C6998;
  v7[3] = &unk_1002B6A38;
  v7[4] = self;
  [(AAProxCardHandler *)v6 setOnDismissalHandler:v7];
  [(AAProxCardHandler *)v6 launchWithCompletion:&stru_1002BAEB8];
}

- (void)_presentDeocNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(AAFeatureOnboarding *)self _notificationContentForDEOCTrainingWithDevice:notificationCopy];
  unCenter = [(AAFeatureOnboarding *)self unCenter];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C6BC8;
  v8[3] = &unk_1002B7B40;
  v8[4] = self;
  v9 = notificationCopy;
  v7 = notificationCopy;
  [unCenter deliverNotificationWithContent:v5 completion:v8];
}

- (void)_receivedDEOCNotificationAction:(id)action forDeviceWithAddress:(id)address
{
  actionCopy = action;
  addressCopy = address;
  v8 = actionCopy;
  v13 = v8;
  if (UNNotificationDismissActionIdentifier == v8)
  {

    goto LABEL_6;
  }

  if ((v8 != 0) == (UNNotificationDismissActionIdentifier == 0))
  {

    goto LABEL_11;
  }

  v9 = [(NSString *)v8 isEqual:UNNotificationDismissActionIdentifier];

  if (v9)
  {
LABEL_6:
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7CD0();
    }

    goto LABEL_18;
  }

LABEL_11:
  v10 = v13;
  v11 = v10;
  if (UNNotificationDefaultActionIdentifier == v10)
  {

    goto LABEL_16;
  }

  if ((v13 != 0) == (UNNotificationDefaultActionIdentifier == 0))
  {

    goto LABEL_18;
  }

  v12 = [(NSString *)v10 isEqual:UNNotificationDefaultActionIdentifier];

  if (v12)
  {
LABEL_16:
    [(AAFeatureOnboarding *)self _launchDEOCProxCardForDeviceWithBTAddress:addressCopy];
  }

LABEL_18:
}

- (void)_incrementFitEducationNotificationsShownForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(AAFeatureOnboarding *)self _fitEducationNotificationsShownForDevice:?]+ 1;
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    v5 = identifierCopy;
    v6 = v4;
    LogPrintF();
  }

  [(AAFeatureOnboarding *)self _saveFitEducationNotificationsShown:identifierCopy withCount:v4, v5, v6];
}

- (unint64_t)_fitEducationNotificationsShownForDevice:(id)device
{
  deviceCopy = device;
  v4 = +[_TtC15audioaccessoryd13DeviceManager singleton];
  v5 = [v4 fetchAAProxCardsInfoSyncWithAddress:deviceCopy];

  if (v5)
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      fitEducationNotificationsShownCount = [v5 fitEducationNotificationsShownCount];
    }

    else
    {
      fitEducationNotificationsShownCount = [v5 fitEducationNotificationsShownCount];
    }
  }

  else
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7D10();
    }

    fitEducationNotificationsShownCount = 0;
  }

  return fitEducationNotificationsShownCount;
}

- (void)_saveFitEducationNotificationsShown:(id)shown withCount:(unint64_t)count
{
  shownCopy = shown;
  v6 = [[AAProxCardsInfo alloc] initWithBluetoothAddress:shownCopy];
  [v6 setFitEducationNotificationsShownCount:count];
  v7 = +[_TtC15audioaccessoryd13DeviceManager singleton];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C71A4;
  v9[3] = &unk_1002B68A8;
  v10 = 0;
  v11 = shownCopy;
  v8 = shownCopy;
  [v7 updateAAProxCardsInfoWithProxCardsInfo:v6 completion:v9];
}

- (void)showFitEducationNotificationForIdentifier:(id)identifier withErrorHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  dispatchQueue = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7364;
  block[3] = &unk_1002BAF30;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = identifierCopy;
  v9 = identifierCopy;
  v10 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_receivedFitEducationNotificationAction:(id)action forDevice:(id)device withAddress:(id)address
{
  actionCopy = action;
  deviceCopy = device;
  addressCopy = address;
  fitEducationNotificationIdsForDeviceIds = [(AAFeatureOnboarding *)self fitEducationNotificationIdsForDeviceIds];
  [fitEducationNotificationIdsForDeviceIds setObject:0 forKeyedSubscript:deviceCopy];

  v12 = actionCopy;
  v13 = v12;
  if (UNNotificationDismissActionIdentifier == v12)
  {
  }

  else
  {
    if ((v12 != 0) == (UNNotificationDismissActionIdentifier == 0))
    {

      goto LABEL_11;
    }

    v14 = [(NSString *)v12 isEqual:UNNotificationDismissActionIdentifier];

    if (!v14)
    {
LABEL_11:
      v15 = v13;
      v16 = v15;
      if (UNNotificationDefaultActionIdentifier == v15)
      {
      }

      else
      {
        if ((v13 != 0) == (UNNotificationDefaultActionIdentifier == 0))
        {
LABEL_33:

          goto LABEL_34;
        }

        v17 = [(NSString *)v15 isEqual:UNNotificationDefaultActionIdentifier];

        if (!v17)
        {
          goto LABEL_34;
        }
      }

      v16 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
      v18 = [v16 deviceWithIdentifier:deviceCopy];
      if ([v18 productID] == 8231 || objc_msgSend(v18, "productID") == 8232)
      {
        [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Bluetooth/HeadphoneDetail/AboutFitFeature/?identifier=%@", addressCopy];
      }

      else
      {
        if ([v18 productID] != 8221)
        {
          if (dword_1002F71B8 > 90)
          {
            v19 = 0;
LABEL_32:
            v26 = FBSOpenApplicationOptionKeyPromptUnlockDevice;
            v27 = &__kCFBooleanTrue;
            v20 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1, v23, v24, v25];
            v21 = +[LSApplicationWorkspace defaultWorkspace];
            v22 = [NSURL URLWithString:v19];
            [v21 openSensitiveURL:v22 withOptions:v20];

            goto LABEL_33;
          }

          if (dword_1002F71B8 != -1 || _LogCategory_Initialize())
          {
            sub_1001F7E48();
          }

          v19 = 0;
LABEL_20:
          if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
          {
            v24 = addressCopy;
            v25 = v19;
            v23 = deviceCopy;
            LogPrintF();
          }

          goto LABEL_32;
        }

        [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Bluetooth/HeadphoneDetail/?identifier=%@&Selection=heartRateSensorSpecifierID", addressCopy];
      }
      v19 = ;
      goto LABEL_20;
    }
  }

  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7E68();
  }

LABEL_34:
}

- (void)showAssetManagerShowDownloadNotificationForDevice:(id)device withErrorHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  dispatchQueue = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C800C;
  block[3] = &unk_1002BAF30;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = deviceCopy;
  v9 = deviceCopy;
  v10 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)showAssetManagerDownloadPTAppNotificationForDevice:(id)device withErrorHandler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  dispatchQueue = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8560;
  block[3] = &unk_1002BAF30;
  v12 = deviceCopy;
  v13 = handlerCopy;
  block[4] = self;
  v9 = deviceCopy;
  v10 = handlerCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_receivedAssetManagerNotificationAction:(id)action forDevice:(id)device withAddress:(id)address
{
  actionCopy = action;
  deviceCopy = device;
  addressCopy = address;
  v10 = actionCopy;
  v20 = v10;
  if (UNNotificationDismissActionIdentifier == v10)
  {
  }

  else
  {
    if ((v10 != 0) == (UNNotificationDismissActionIdentifier == 0))
    {

      goto LABEL_11;
    }

    v11 = [(NSString *)v10 isEqual:UNNotificationDismissActionIdentifier];

    if (!v11)
    {
LABEL_11:
      v12 = v20;
      addressCopy = v12;
      if (UNNotificationDefaultActionIdentifier == v12)
      {
      }

      else
      {
        if ((v20 != 0) == (UNNotificationDefaultActionIdentifier == 0))
        {
LABEL_21:

          goto LABEL_22;
        }

        v14 = [(NSString *)v12 isEqual:UNNotificationDefaultActionIdentifier];

        if (!v14)
        {
          goto LABEL_22;
        }
      }

      addressCopy = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Bluetooth/HeadphoneDetail/LiveTranslation-LanguageDownload/?identifier=%@", addressCopy];
      if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
      {
        v18 = addressCopy;
        v19 = addressCopy;
        v17 = deviceCopy;
        LogPrintF();
      }

      v15 = [LSApplicationWorkspace defaultWorkspace:v17];
      v16 = [NSURL URLWithString:addressCopy];
      [v15 openSensitiveURL:v16 withOptions:0];

      goto LABEL_21;
    }
  }

  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F8050();
  }

LABEL_22:
}

- (void)_receivedAssetManagerPTAppDownloadNotificationAction:(id)action forDevice:(id)device withAddress:(id)address
{
  actionCopy = action;
  deviceCopy = device;
  addressCopy = address;
  v10 = actionCopy;
  v11 = v10;
  if (UNNotificationDismissActionIdentifier == v10)
  {

    goto LABEL_6;
  }

  if ((v10 != 0) != (UNNotificationDismissActionIdentifier == 0))
  {
    v12 = [(NSString *)v10 isEqual:UNNotificationDismissActionIdentifier];

    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_6:
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F80AC();
    }

    goto LABEL_25;
  }

LABEL_11:
  v13 = v11;
  v14 = v13;
  if (UNNotificationDefaultActionIdentifier == v13)
  {
  }

  else
  {
    if ((v11 != 0) == (UNNotificationDefaultActionIdentifier == 0))
    {

      goto LABEL_25;
    }

    v15 = [(NSString *)v13 isEqual:UNNotificationDefaultActionIdentifier];

    if (!v15)
    {
      goto LABEL_25;
    }
  }

  if (dword_1002F71B8 <= 30)
  {
    if (dword_1002F71B8 != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }

    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8090();
    }
  }

  v23 = objc_alloc_init(AAUIAlert);
  v16 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v17 = CULocalizedStringEx();
  v24 = CULocalizedStringEx();
  CULocalizedStringEx();
  v18 = v25 = deviceCopy;
  v19 = CULocalizedStringEx();
  v29[0] = FBSOpenApplicationOptionKeyUnlockDevice;
  v29[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
  v30[0] = &__kCFBooleanTrue;
  v30[1] = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:2];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000C8F54;
  v26[3] = &unk_1002B68A8;
  v28 = v27 = @"itms-apps://apps.apple.com/app/translate/id1514844618";
  v20 = v28;
  [(AAUIAlert *)v23 deliverAlertWithHeaderKey:v17 messageKey:v24 defaultButtonKey:v18 alternativeButtonKey:v19 andCompletion:v26];
  v21 = +[LSApplicationWorkspace defaultWorkspace];
  v22 = [NSURL URLWithString:@"settings-navigation://"];
  [v21 openSensitiveURL:v22 withOptions:v20 error:0];

  deviceCopy = v25;
LABEL_25:
}

- (id)_notificationContentForDEOCTrainingWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v6 = objc_alloc_init(UNMutableNotificationContent);
  [v6 setCategoryIdentifier:@"AADynamicEndOfChargeTrainingUserNotifications"];
  unCenter = [(AAFeatureOnboarding *)self unCenter];
  v8 = [unCenter deviceIconForProductID:{objc_msgSend(deviceCopy, "productID")}];
  [v6 setIcon:v8];

  v9 = CULocalizedStringEx();
  v10 = CULocalizedStringEx();
  name = [deviceCopy name];
  v12 = [NSString stringWithFormat:v10, name];

  [v6 setTitle:v9];
  [v6 setBody:v12];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setShouldSuppressDefaultAction:0];
  [v6 setShouldBackgroundDefaultAction:1];
  v13 = +[NSMutableDictionary dictionary];
  bluetoothAddress = [deviceCopy bluetoothAddress];

  [v13 setObject:bluetoothAddress forKeyedSubscript:@"btAddress"];
  [v6 setUserInfo:v13];

  return v6;
}

- (id)_notificationContentForFitEducationNotificationForDevice:(id)device
{
  deviceCopy = device;
  v5 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v6 = objc_alloc_init(UNMutableNotificationContent);
  [v6 setCategoryIdentifier:@"AAFitEducationNotificationUserNotifications"];
  unCenter = [(AAFeatureOnboarding *)self unCenter];
  v8 = [unCenter deviceIconForProductID:{objc_msgSend(deviceCopy, "productID")}];
  [v6 setIcon:v8];

  v9 = CULocalizedStringEx();
  v10 = CULocalizedStringEx();
  productID = [deviceCopy productID];
  if (productID > 619)
  {
    if (productID <= 799)
    {
      if (productID > 776)
      {
        if (productID <= 780)
        {
          if (productID == 777)
          {
            v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v14 = v13;
            v15 = @"apple_wireless_mouse";
            goto LABEL_49;
          }

          if (productID != 780)
          {
            goto LABEL_68;
          }

          v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v14 = v13;
          v15 = @"apple_mighty_mouse";
LABEL_49:
          productName = [v13 localizedStringForKey:v15 value:&stru_1002C1358 table:@"CBLocalizable"];
LABEL_50:
          v17 = productName;

          goto LABEL_51;
        }

        if (productID != 781)
        {
          if (productID != 782)
          {
            goto LABEL_68;
          }

          goto LABEL_63;
        }

        goto LABEL_64;
      }

      if (productID <= 667)
      {
        if (productID == 620)
        {
          v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v14 = v13;
          v15 = @"apple_magic_keyboard_keypad";
          goto LABEL_49;
        }

        if (productID != 666)
        {
          goto LABEL_68;
        }

        goto LABEL_26;
      }

      if (productID == 668)
      {
LABEL_60:
        v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v14 = v13;
        v15 = @"apple_magic_keyboard";
        goto LABEL_49;
      }

      if (productID != 671)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (productID > 803)
      {
        if (productID > 8215)
        {
          if (productID == 8216 || productID == 8220)
          {
            goto LABEL_42;
          }

          v12 = 8233;
LABEL_41:
          if (productID == v12)
          {
LABEL_42:
            v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v14 = v13;
            v15 = @"apple_airpods_case";
            goto LABEL_49;
          }

LABEL_68:
          v14 = [CBProductInfo productInfoWithProductID:productID];
          productName = [v14 productName];
          goto LABEL_50;
        }

        if (productID != 804)
        {
          v12 = 8213;
          goto LABEL_41;
        }

LABEL_63:
        v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v14 = v13;
        v15 = @"apple_magic_trackpad";
        goto LABEL_49;
      }

      if (productID <= 801)
      {
        if (productID != 800)
        {
LABEL_26:
          v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v14 = v13;
          v15 = @"apple_magic_keyboard_touch";
          goto LABEL_49;
        }

        goto LABEL_60;
      }

      if (productID != 802)
      {
LABEL_64:
        v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v14 = v13;
        v15 = @"apple_magic_mouse";
        goto LABEL_49;
      }
    }

    v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v14 = v13;
    v15 = @"apple_magic_keyboard_touch_keypad";
    goto LABEL_49;
  }

  if (productID > 569)
  {
    if (productID > 598)
    {
      if (productID > 614)
      {
        if (productID == 615)
        {
          goto LABEL_60;
        }

        if (productID != 617)
        {
          goto LABEL_68;
        }

        goto LABEL_64;
      }

      if (productID != 599)
      {
        if (productID != 613)
        {
          goto LABEL_68;
        }

        goto LABEL_63;
      }
    }

    else if (productID <= 596 && productID != 570 && productID != 571)
    {
      goto LABEL_68;
    }

LABEL_48:
    v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v14 = v13;
    v15 = @"apple_wireless_keyboard";
    goto LABEL_49;
  }

  if (productID > 555)
  {
    if (productID > 558 && productID != 569)
    {
      goto LABEL_68;
    }

    goto LABEL_48;
  }

  if (productID > 520)
  {
    if (productID != 521 && productID != 522)
    {
      goto LABEL_68;
    }

    goto LABEL_48;
  }

  if (productID)
  {
    if (productID != 520)
    {
      goto LABEL_68;
    }

    goto LABEL_48;
  }

  v17 = 0;
LABEL_51:
  v18 = [NSString stringWithFormat:v10, v17];

  [v6 setTitle:v9];
  [v6 setBody:v18];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setShouldSuppressDefaultAction:0];
  [v6 setShouldBackgroundDefaultAction:1];
  v19 = +[NSMutableDictionary dictionary];
  identifier = [deviceCopy identifier];
  [v19 setObject:identifier forKeyedSubscript:@"identifier"];

  bluetoothAddress = [deviceCopy bluetoothAddress];
  [v19 setObject:bluetoothAddress forKeyedSubscript:@"btAddress"];

  [v6 setUserInfo:v19];

  return v6;
}

- (id)_notificationContentForAssetManagerDownload:(id)download
{
  downloadCopy = download;
  v5 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v6 = objc_alloc_init(UNMutableNotificationContent);
  [v6 setCategoryIdentifier:@"AAAssetManagerNotificationUserNotifications"];
  unCenter = [(AAFeatureOnboarding *)self unCenter];
  v8 = [unCenter deviceIconForProductID:{objc_msgSend(downloadCopy, "productID")}];
  [v6 setIcon:v8];

  v9 = CULocalizedStringEx();
  v10 = CULocalizedStringEx();
  [v6 setTitle:v9];
  [v6 setBody:v10];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setShouldSuppressDefaultAction:0];
  [v6 setShouldBackgroundDefaultAction:1];
  v11 = +[NSMutableDictionary dictionary];
  identifier = [downloadCopy identifier];
  [v11 setObject:identifier forKeyedSubscript:@"identifier"];

  bluetoothAddress = [downloadCopy bluetoothAddress];

  [v11 setObject:bluetoothAddress forKeyedSubscript:@"btAddress"];
  [v6 setUserInfo:v11];

  return v6;
}

- (id)_notificationContentForPTAppDownload:(id)download
{
  downloadCopy = download;
  v5 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v6 = objc_alloc_init(UNMutableNotificationContent);
  [v6 setCategoryIdentifier:@"AAAssetManagerMissingTranslateAppNotifications"];
  unCenter = [(AAFeatureOnboarding *)self unCenter];
  v8 = [unCenter deviceIconForProductID:{objc_msgSend(downloadCopy, "productID")}];
  [v6 setIcon:v8];

  v9 = CULocalizedStringEx();
  v10 = CULocalizedStringEx();
  [v6 setTitle:v9];
  [v6 setBody:v10];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setShouldSuppressDefaultAction:0];
  [v6 setShouldBackgroundDefaultAction:1];
  v11 = +[NSMutableDictionary dictionary];
  identifier = [downloadCopy identifier];
  [v11 setObject:identifier forKeyedSubscript:@"identifier"];

  bluetoothAddress = [downloadCopy bluetoothAddress];

  [v11 setObject:bluetoothAddress forKeyedSubscript:@"btAddress"];
  [v6 setUserInfo:v11];

  return v6;
}

- (void)receivedNotificationResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  dispatchQueue = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9BE0;
  block[3] = &unk_1002B6CF0;
  v12 = responseCopy;
  v13 = requestCopy;
  selfCopy = self;
  v9 = requestCopy;
  v10 = responseCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_addDEOCOnboardingCategory
{
  v5 = [UNNotificationCategory categoryWithIdentifier:@"AADynamicEndOfChargeTrainingUserNotifications" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  unCategories = [(AAFeatureOnboarding *)self unCategories];
  identifier = [v5 identifier];
  [unCategories setObject:v5 forKeyedSubscript:identifier];
}

- (void)_addFitEducationNotificationCategory
{
  v5 = [UNNotificationCategory categoryWithIdentifier:@"AAFitEducationNotificationUserNotifications" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  unCategories = [(AAFeatureOnboarding *)self unCategories];
  identifier = [v5 identifier];
  [unCategories setObject:v5 forKeyedSubscript:identifier];
}

- (void)_addAssetManagerNotificationCategory
{
  v3 = [UNNotificationCategory categoryWithIdentifier:@"AAAssetManagerNotificationUserNotifications" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  unCategories = [(AAFeatureOnboarding *)self unCategories];
  identifier = [v3 identifier];
  [unCategories setObject:v3 forKeyedSubscript:identifier];

  v8 = [UNNotificationCategory categoryWithIdentifier:@"AAAssetManagerMissingTranslateAppNotifications" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];

  unCategories2 = [(AAFeatureOnboarding *)self unCategories];
  identifier2 = [v8 identifier];
  [unCategories2 setObject:v8 forKeyedSubscript:identifier2];
}

- (void)_loadPreferences
{
  Int64 = CFPrefs_GetInt64();
  if (Int64)
  {
    v4 = Int64;
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8358();
    }
  }

  else
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8398();
    }

    v4 = 3;
  }

  [(AAFeatureOnboarding *)self setFitEducationNotificationThreshold:v4];
}

- (void)_registerForSystemNotifications
{
  if ([(AAFeatureOnboarding *)self prefsChangedNotifyToken]== -1)
  {
    dispatchQueue = [(AAFeatureOnboarding *)self dispatchQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000CA3FC;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.AudioAccessory.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, handler);
  }
}

- (void)_unregisterFromSystemNotifications
{
  prefsChangedNotifyToken = self->_prefsChangedNotifyToken;
  if (prefsChangedNotifyToken != -1)
  {
    notify_cancel(prefsChangedNotifyToken);
    self->_prefsChangedNotifyToken = -1;
  }
}

- (void)_userNotificationCenterEnsureStarted
{
  unCenter = [(AAFeatureOnboarding *)self unCenter];

  if (!unCenter)
  {
    v4 = +[AAUserNotificationCenter sharedInstance];
    [v4 activate];

    v5 = +[AAUserNotificationCenter sharedInstance];
    [(AAFeatureOnboarding *)self setUnCenter:v5];

    unCenter2 = [(AAFeatureOnboarding *)self unCenter];
    unCategories = [(AAFeatureOnboarding *)self unCategories];
    allValues = [unCategories allValues];
    [unCenter2 registerNotificationCategories:allValues responseDelegate:self];
  }
}

- (void)_userNotificationCenterEnsureStopped
{
  unCenter = [(AAFeatureOnboarding *)self unCenter];
  unCategories = [(AAFeatureOnboarding *)self unCategories];
  allKeys = [unCategories allKeys];
  [unCenter deregisterNotificationCategoryWithIdentifiers:allKeys];

  [(AAFeatureOnboarding *)self setUnCenter:0];
}

- (void)_postDEOCOnboardingIfNeeded:(id)needed
{
  neededCopy = needed;
  visibleBatteryCombinedLeftRight = [neededCopy visibleBatteryCombinedLeftRight];
  if ([visibleBatteryCombinedLeftRight chargingDEOC])
  {
    goto LABEL_4;
  }

  visibleBatteryLeft = [neededCopy visibleBatteryLeft];
  if ([visibleBatteryLeft chargingDEOC])
  {

LABEL_4:
    goto LABEL_6;
  }

  visibleBatteryRight = [neededCopy visibleBatteryRight];
  chargingDEOC = [visibleBatteryRight chargingDEOC];

  if ((chargingDEOC & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  identifier = [neededCopy identifier];
  deocOnboardedDeviceIdentifiers = [(AAFeatureOnboarding *)self deocOnboardedDeviceIdentifiers];
  v10 = [deocOnboardedDeviceIdentifiers containsObject:identifier];

  if (v10)
  {
    if (dword_1002F71B8 > 10)
    {
      goto LABEL_19;
    }

    if (dword_1002F71B8 == -1)
    {
      v11 = _LogCategory_Initialize();
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_30;
  }

  bluetoothAddress = [neededCopy bluetoothAddress];

  if (bluetoothAddress)
  {
    v20 = +[_TtC15audioaccessoryd13DeviceManager singleton];
    bluetoothAddress2 = [neededCopy bluetoothAddress];
    v22 = [v20 fetchAAProxCardsInfoSyncWithAddress:bluetoothAddress2];

    if (v22 && (v23 = [v22 dynamicEndOfChargeNotificationVersion]) != 0)
    {
      if (dword_1002F71B8 <= 30)
      {
        if (dword_1002F71B8 != -1 || (v23 = _LogCategory_Initialize(), v23))
        {
          sub_1000CA7A0(v23, v24, v25, v26, v27, v28, v29, v30, v32, neededCopy);
          LogPrintF();
        }
      }
    }

    else
    {
      if (dword_1002F71B8 <= 30)
      {
        if (dword_1002F71B8 != -1 || (v23 = _LogCategory_Initialize(), v23))
        {
          sub_1000CA7A0(v23, v24, v25, v26, v27, v28, v29, v30, v32, neededCopy);
          LogPrintF();
        }
      }

      [(AAFeatureOnboarding *)self _presentDeocNotification:neededCopy];
    }

    deocOnboardedDeviceIdentifiers2 = [(AAFeatureOnboarding *)self deocOnboardedDeviceIdentifiers];
    [deocOnboardedDeviceIdentifiers2 addObject:identifier];

    goto LABEL_19;
  }

  if (dword_1002F71B8 <= 90)
  {
    if (dword_1002F71B8 != -1 || (v11 = _LogCategory_Initialize(), v11))
    {
LABEL_30:
      sub_1000CA7A0(v11, v12, v13, v14, v15, v16, v17, v18, v32, neededCopy);
      LogPrintF();
    }
  }

LABEL_19:

LABEL_20:
}

- (void)_dismissFitEducationNotificationForDisconnectedDevice:(id)device
{
  deviceCopy = device;
  fitEducationNotificationIdsForDeviceIds = [(AAFeatureOnboarding *)self fitEducationNotificationIdsForDeviceIds];
  identifier = [deviceCopy identifier];
  v6 = [fitEducationNotificationIdsForDeviceIds objectForKeyedSubscript:identifier];

  if (v6)
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      identifier2 = [deviceCopy identifier];
      LogPrintF();
    }

    unCenter = [(AAFeatureOnboarding *)self unCenter];
    [unCenter dismissUserNotificationWithIdentifier:v6];

    fitEducationNotificationIdsForDeviceIds2 = [(AAFeatureOnboarding *)self fitEducationNotificationIdsForDeviceIds];
    identifier3 = [deviceCopy identifier];
    [fitEducationNotificationIdsForDeviceIds2 setObject:0 forKeyedSubscript:identifier3];
  }
}

@end