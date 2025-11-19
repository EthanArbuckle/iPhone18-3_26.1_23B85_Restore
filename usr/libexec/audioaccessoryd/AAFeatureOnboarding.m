@interface AAFeatureOnboarding
+ (id)sharedInstance;
- (AAFeatureOnboarding)init;
- (id)_connectedDeviceWithIdentifier:(id)a3;
- (id)_notificationContentForAssetManagerDownload:(id)a3;
- (id)_notificationContentForDEOCTrainingWithDevice:(id)a3;
- (id)_notificationContentForFitEducationNotificationForDevice:(id)a3;
- (id)_notificationContentForPTAppDownload:(id)a3;
- (unint64_t)_fitEducationNotificationsShownForDevice:(id)a3;
- (void)_aaPairedDeviceDiscoveryEnsureStarted;
- (void)_aaPairedDeviceDiscoveryEnsureStopped;
- (void)_activate;
- (void)_addAssetManagerNotificationCategory;
- (void)_addDEOCOnboardingCategory;
- (void)_addFitEducationNotificationCategory;
- (void)_connectedDeviceFound:(id)a3;
- (void)_connectedDeviceLost:(id)a3;
- (void)_deocNotificationShownForDeviceWithBluetoothAddress:(id)a3;
- (void)_deviceDiscoveryEnsureStarted;
- (void)_deviceDiscoveryEnsureStopped;
- (void)_dismissFitEducationNotificationForDisconnectedDevice:(id)a3;
- (void)_incrementFitEducationNotificationsShownForIdentifier:(id)a3;
- (void)_invalidate;
- (void)_launchDEOCProxCardForDeviceWithBTAddress:(id)a3;
- (void)_loadPreferences;
- (void)_postDEOCOnboardingIfNeeded:(id)a3;
- (void)_presentDeocNotification:(id)a3;
- (void)_receivedAssetManagerNotificationAction:(id)a3 forDevice:(id)a4 withAddress:(id)a5;
- (void)_receivedAssetManagerPTAppDownloadNotificationAction:(id)a3 forDevice:(id)a4 withAddress:(id)a5;
- (void)_receivedDEOCNotificationAction:(id)a3 forDeviceWithAddress:(id)a4;
- (void)_receivedFitEducationNotificationAction:(id)a3 forDevice:(id)a4 withAddress:(id)a5;
- (void)_registerForSystemNotifications;
- (void)_saveFitEducationNotificationsShown:(id)a3 withCount:(unint64_t)a4;
- (void)_unregisterFromSystemNotifications;
- (void)_userNotificationCenterEnsureStarted;
- (void)_userNotificationCenterEnsureStopped;
- (void)activate;
- (void)invalidate;
- (void)pairedDeviceLost:(id)a3;
- (void)receivedNotificationResponse:(id)a3 forRequest:(id)a4;
- (void)showAssetManagerDownloadPTAppNotificationForDevice:(id)a3 withErrorHandler:(id)a4;
- (void)showAssetManagerShowDownloadNotificationForDevice:(id)a3 withErrorHandler:(id)a4;
- (void)showFitEducationNotificationForIdentifier:(id)a3 withErrorHandler:(id)a4;
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
  v3 = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5C54;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C5D4C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(AAFeatureOnboarding *)self deviceManager];

  if (!v3)
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F79BC();
    }

    v4 = objc_alloc_init(AADeviceManager);
    v5 = [(AAFeatureOnboarding *)self aaServicesDaemon];
    [v4 setInternalServicesDaemon:v5];

    v6 = [(AAFeatureOnboarding *)self dispatchQueue];
    [v4 setDispatchQueue:v6];

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
    v7 = [(AAFeatureOnboarding *)self deviceManager];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000C60B0;
    v9[3] = &unk_1002B68A8;
    v9[4] = self;
    v10 = v4;
    v8 = v4;
    [v7 activateWithCompletion:v9];
  }
}

- (void)_deviceDiscoveryEnsureStopped
{
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7A94();
  }

  v3 = [(AAFeatureOnboarding *)self deviceManager];

  if (v3)
  {
    v4 = [(AAFeatureOnboarding *)self deviceManager];
    [v4 invalidate];

    [(AAFeatureOnboarding *)self setDeviceManager:0];
  }
}

- (void)_connectedDeviceFound:(id)a3
{
  v4 = a3;
  v5 = [(AAFeatureOnboarding *)self devicesMap];

  if (!v5)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [(AAFeatureOnboarding *)self setDevicesMap:v6];
  }

  v8 = [v4 identifier];
  v7 = [(AAFeatureOnboarding *)self devicesMap];
  [v7 setObject:v4 forKeyedSubscript:v8];
}

- (void)_connectedDeviceLost:(id)a3
{
  v8 = a3;
  v4 = [v8 identifier];
  v5 = [(AAFeatureOnboarding *)self devicesMap];
  [v5 removeObjectForKey:v4];

  v6 = [(AAFeatureOnboarding *)self devicesMap];
  v7 = [v6 count];

  if (!v7)
  {
    [(AAFeatureOnboarding *)self setDevicesMap:0];
  }

  [(AAFeatureOnboarding *)self _dismissFitEducationNotificationForDisconnectedDevice:v8];
}

- (id)_connectedDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(AAFeatureOnboarding *)self deviceManager];
  v6 = [v5 discoveredDevices];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 identifier];
        v12 = v4;
        v13 = v11;
        v14 = v13;
        if (v13 == v12)
        {

LABEL_15:
          v7 = v10;
          goto LABEL_16;
        }

        if ((v4 != 0) != (v13 == 0))
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

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v3 = [(AAFeatureOnboarding *)self pairedDeviceManager];
  [v3 subscribeToPairedDiscovery:self];
}

- (void)_aaPairedDeviceDiscoveryEnsureStopped
{
  v3 = [(AAFeatureOnboarding *)self pairedDeviceManager];
  [v3 unsubscribeFromPairedDiscovery:self];
}

- (void)pairedDeviceLost:(id)a3
{
  v4 = a3;
  v5 = [(AAFeatureOnboarding *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C66B4;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_deocNotificationShownForDeviceWithBluetoothAddress:(id)a3
{
  v5 = a3;
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7AB0();
  }

  v3 = [[AAProxCardsInfo alloc] initWithBluetoothAddress:v5];
  [v3 setDynamicEndOfChargeNotificationVersion:1];
  v4 = +[_TtC15audioaccessoryd13DeviceManager singleton];
  [v4 updateAAProxCardsInfoWithProxCardsInfo:v3 completion:&stru_1002BAE98];
}

- (void)_launchDEOCProxCardForDeviceWithBTAddress:(id)a3
{
  v4 = a3;
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F7B0C();
  }

  v5 = +[NSMutableDictionary dictionary];
  [v5 setObject:@"AAFeatureOnboardingDynamicEndOfCharge" forKeyedSubscript:@"launchSource"];
  [v5 setObject:v4 forKeyedSubscript:@"deviceAddress"];
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

- (void)_presentDeocNotification:(id)a3
{
  v4 = a3;
  v5 = [(AAFeatureOnboarding *)self _notificationContentForDEOCTrainingWithDevice:v4];
  v6 = [(AAFeatureOnboarding *)self unCenter];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C6BC8;
  v8[3] = &unk_1002B7B40;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 deliverNotificationWithContent:v5 completion:v8];
}

- (void)_receivedDEOCNotificationAction:(id)a3 forDeviceWithAddress:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
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
    [(AAFeatureOnboarding *)self _launchDEOCProxCardForDeviceWithBTAddress:v7];
  }

LABEL_18:
}

- (void)_incrementFitEducationNotificationsShownForIdentifier:(id)a3
{
  v7 = a3;
  v4 = [(AAFeatureOnboarding *)self _fitEducationNotificationsShownForDevice:?]+ 1;
  if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
  {
    v5 = v7;
    v6 = v4;
    LogPrintF();
  }

  [(AAFeatureOnboarding *)self _saveFitEducationNotificationsShown:v7 withCount:v4, v5, v6];
}

- (unint64_t)_fitEducationNotificationsShownForDevice:(id)a3
{
  v3 = a3;
  v4 = +[_TtC15audioaccessoryd13DeviceManager singleton];
  v5 = [v4 fetchAAProxCardsInfoSyncWithAddress:v3];

  if (v5)
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
      v6 = [v5 fitEducationNotificationsShownCount];
    }

    else
    {
      v6 = [v5 fitEducationNotificationsShownCount];
    }
  }

  else
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F7D10();
    }

    v6 = 0;
  }

  return v6;
}

- (void)_saveFitEducationNotificationsShown:(id)a3 withCount:(unint64_t)a4
{
  v5 = a3;
  v6 = [[AAProxCardsInfo alloc] initWithBluetoothAddress:v5];
  [v6 setFitEducationNotificationsShownCount:a4];
  v7 = +[_TtC15audioaccessoryd13DeviceManager singleton];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C71A4;
  v9[3] = &unk_1002B68A8;
  v10 = 0;
  v11 = v5;
  v8 = v5;
  [v7 updateAAProxCardsInfoWithProxCardsInfo:v6 completion:v9];
}

- (void)showFitEducationNotificationForIdentifier:(id)a3 withErrorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C7364;
  block[3] = &unk_1002BAF30;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)_receivedFitEducationNotificationAction:(id)a3 forDevice:(id)a4 withAddress:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(AAFeatureOnboarding *)self fitEducationNotificationIdsForDeviceIds];
  [v11 setObject:0 forKeyedSubscript:v9];

  v12 = v8;
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
      v18 = [v16 deviceWithIdentifier:v9];
      if ([v18 productID] == 8231 || objc_msgSend(v18, "productID") == 8232)
      {
        [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Bluetooth/HeadphoneDetail/AboutFitFeature/?identifier=%@", v10];
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
            v24 = v10;
            v25 = v19;
            v23 = v9;
            LogPrintF();
          }

          goto LABEL_32;
        }

        [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Bluetooth/HeadphoneDetail/?identifier=%@&Selection=heartRateSensorSpecifierID", v10];
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

- (void)showAssetManagerShowDownloadNotificationForDevice:(id)a3 withErrorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C800C;
  block[3] = &unk_1002BAF30;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)showAssetManagerDownloadPTAppNotificationForDevice:(id)a3 withErrorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C8560;
  block[3] = &unk_1002BAF30;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (void)_receivedAssetManagerNotificationAction:(id)a3 forDevice:(id)a4 withAddress:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v7;
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
      v13 = v12;
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

      v13 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Bluetooth/HeadphoneDetail/LiveTranslation-LanguageDownload/?identifier=%@", v9];
      if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
      {
        v18 = v9;
        v19 = v13;
        v17 = v8;
        LogPrintF();
      }

      v15 = [LSApplicationWorkspace defaultWorkspace:v17];
      v16 = [NSURL URLWithString:v13];
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

- (void)_receivedAssetManagerPTAppDownloadNotificationAction:(id)a3 forDevice:(id)a4 withAddress:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v7;
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
  v18 = v25 = v8;
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

  v8 = v25;
LABEL_25:
}

- (id)_notificationContentForDEOCTrainingWithDevice:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v6 = objc_alloc_init(UNMutableNotificationContent);
  [v6 setCategoryIdentifier:@"AADynamicEndOfChargeTrainingUserNotifications"];
  v7 = [(AAFeatureOnboarding *)self unCenter];
  v8 = [v7 deviceIconForProductID:{objc_msgSend(v4, "productID")}];
  [v6 setIcon:v8];

  v9 = CULocalizedStringEx();
  v10 = CULocalizedStringEx();
  v11 = [v4 name];
  v12 = [NSString stringWithFormat:v10, v11];

  [v6 setTitle:v9];
  [v6 setBody:v12];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setShouldSuppressDefaultAction:0];
  [v6 setShouldBackgroundDefaultAction:1];
  v13 = +[NSMutableDictionary dictionary];
  v14 = [v4 bluetoothAddress];

  [v13 setObject:v14 forKeyedSubscript:@"btAddress"];
  [v6 setUserInfo:v13];

  return v6;
}

- (id)_notificationContentForFitEducationNotificationForDevice:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v6 = objc_alloc_init(UNMutableNotificationContent);
  [v6 setCategoryIdentifier:@"AAFitEducationNotificationUserNotifications"];
  v7 = [(AAFeatureOnboarding *)self unCenter];
  v8 = [v7 deviceIconForProductID:{objc_msgSend(v4, "productID")}];
  [v6 setIcon:v8];

  v9 = CULocalizedStringEx();
  v10 = CULocalizedStringEx();
  v11 = [v4 productID];
  if (v11 > 619)
  {
    if (v11 <= 799)
    {
      if (v11 > 776)
      {
        if (v11 <= 780)
        {
          if (v11 == 777)
          {
            v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v14 = v13;
            v15 = @"apple_wireless_mouse";
            goto LABEL_49;
          }

          if (v11 != 780)
          {
            goto LABEL_68;
          }

          v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v14 = v13;
          v15 = @"apple_mighty_mouse";
LABEL_49:
          v16 = [v13 localizedStringForKey:v15 value:&stru_1002C1358 table:@"CBLocalizable"];
LABEL_50:
          v17 = v16;

          goto LABEL_51;
        }

        if (v11 != 781)
        {
          if (v11 != 782)
          {
            goto LABEL_68;
          }

          goto LABEL_63;
        }

        goto LABEL_64;
      }

      if (v11 <= 667)
      {
        if (v11 == 620)
        {
          v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v14 = v13;
          v15 = @"apple_magic_keyboard_keypad";
          goto LABEL_49;
        }

        if (v11 != 666)
        {
          goto LABEL_68;
        }

        goto LABEL_26;
      }

      if (v11 == 668)
      {
LABEL_60:
        v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
        v14 = v13;
        v15 = @"apple_magic_keyboard";
        goto LABEL_49;
      }

      if (v11 != 671)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (v11 > 803)
      {
        if (v11 > 8215)
        {
          if (v11 == 8216 || v11 == 8220)
          {
            goto LABEL_42;
          }

          v12 = 8233;
LABEL_41:
          if (v11 == v12)
          {
LABEL_42:
            v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
            v14 = v13;
            v15 = @"apple_airpods_case";
            goto LABEL_49;
          }

LABEL_68:
          v14 = [CBProductInfo productInfoWithProductID:v11];
          v16 = [v14 productName];
          goto LABEL_50;
        }

        if (v11 != 804)
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

      if (v11 <= 801)
      {
        if (v11 != 800)
        {
LABEL_26:
          v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
          v14 = v13;
          v15 = @"apple_magic_keyboard_touch";
          goto LABEL_49;
        }

        goto LABEL_60;
      }

      if (v11 != 802)
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

  if (v11 > 569)
  {
    if (v11 > 598)
    {
      if (v11 > 614)
      {
        if (v11 == 615)
        {
          goto LABEL_60;
        }

        if (v11 != 617)
        {
          goto LABEL_68;
        }

        goto LABEL_64;
      }

      if (v11 != 599)
      {
        if (v11 != 613)
        {
          goto LABEL_68;
        }

        goto LABEL_63;
      }
    }

    else if (v11 <= 596 && v11 != 570 && v11 != 571)
    {
      goto LABEL_68;
    }

LABEL_48:
    v13 = [NSBundle bundleWithIdentifier:@"com.apple.CoreBluetooth"];
    v14 = v13;
    v15 = @"apple_wireless_keyboard";
    goto LABEL_49;
  }

  if (v11 > 555)
  {
    if (v11 > 558 && v11 != 569)
    {
      goto LABEL_68;
    }

    goto LABEL_48;
  }

  if (v11 > 520)
  {
    if (v11 != 521 && v11 != 522)
    {
      goto LABEL_68;
    }

    goto LABEL_48;
  }

  if (v11)
  {
    if (v11 != 520)
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
  v20 = [v4 identifier];
  [v19 setObject:v20 forKeyedSubscript:@"identifier"];

  v21 = [v4 bluetoothAddress];
  [v19 setObject:v21 forKeyedSubscript:@"btAddress"];

  [v6 setUserInfo:v19];

  return v6;
}

- (id)_notificationContentForAssetManagerDownload:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v6 = objc_alloc_init(UNMutableNotificationContent);
  [v6 setCategoryIdentifier:@"AAAssetManagerNotificationUserNotifications"];
  v7 = [(AAFeatureOnboarding *)self unCenter];
  v8 = [v7 deviceIconForProductID:{objc_msgSend(v4, "productID")}];
  [v6 setIcon:v8];

  v9 = CULocalizedStringEx();
  v10 = CULocalizedStringEx();
  [v6 setTitle:v9];
  [v6 setBody:v10];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setShouldSuppressDefaultAction:0];
  [v6 setShouldBackgroundDefaultAction:1];
  v11 = +[NSMutableDictionary dictionary];
  v12 = [v4 identifier];
  [v11 setObject:v12 forKeyedSubscript:@"identifier"];

  v13 = [v4 bluetoothAddress];

  [v11 setObject:v13 forKeyedSubscript:@"btAddress"];
  [v6 setUserInfo:v11];

  return v6;
}

- (id)_notificationContentForPTAppDownload:(id)a3
{
  v4 = a3;
  v5 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v6 = objc_alloc_init(UNMutableNotificationContent);
  [v6 setCategoryIdentifier:@"AAAssetManagerMissingTranslateAppNotifications"];
  v7 = [(AAFeatureOnboarding *)self unCenter];
  v8 = [v7 deviceIconForProductID:{objc_msgSend(v4, "productID")}];
  [v6 setIcon:v8];

  v9 = CULocalizedStringEx();
  v10 = CULocalizedStringEx();
  [v6 setTitle:v9];
  [v6 setBody:v10];
  [v6 setShouldIgnoreDoNotDisturb:1];
  [v6 setShouldSuppressDefaultAction:0];
  [v6 setShouldBackgroundDefaultAction:1];
  v11 = +[NSMutableDictionary dictionary];
  v12 = [v4 identifier];
  [v11 setObject:v12 forKeyedSubscript:@"identifier"];

  v13 = [v4 bluetoothAddress];

  [v11 setObject:v13 forKeyedSubscript:@"btAddress"];
  [v6 setUserInfo:v11];

  return v6;
}

- (void)receivedNotificationResponse:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAFeatureOnboarding *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C9BE0;
  block[3] = &unk_1002B6CF0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_addDEOCOnboardingCategory
{
  v5 = [UNNotificationCategory categoryWithIdentifier:@"AADynamicEndOfChargeTrainingUserNotifications" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  v3 = [(AAFeatureOnboarding *)self unCategories];
  v4 = [v5 identifier];
  [v3 setObject:v5 forKeyedSubscript:v4];
}

- (void)_addFitEducationNotificationCategory
{
  v5 = [UNNotificationCategory categoryWithIdentifier:@"AAFitEducationNotificationUserNotifications" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  v3 = [(AAFeatureOnboarding *)self unCategories];
  v4 = [v5 identifier];
  [v3 setObject:v5 forKeyedSubscript:v4];
}

- (void)_addAssetManagerNotificationCategory
{
  v3 = [UNNotificationCategory categoryWithIdentifier:@"AAAssetManagerNotificationUserNotifications" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  v4 = [(AAFeatureOnboarding *)self unCategories];
  v5 = [v3 identifier];
  [v4 setObject:v3 forKeyedSubscript:v5];

  v8 = [UNNotificationCategory categoryWithIdentifier:@"AAAssetManagerMissingTranslateAppNotifications" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];

  v6 = [(AAFeatureOnboarding *)self unCategories];
  v7 = [v8 identifier];
  [v6 setObject:v8 forKeyedSubscript:v7];
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
    v3 = [(AAFeatureOnboarding *)self dispatchQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000CA3FC;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.AudioAccessory.prefsChanged", &self->_prefsChangedNotifyToken, v3, handler);
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
  v3 = [(AAFeatureOnboarding *)self unCenter];

  if (!v3)
  {
    v4 = +[AAUserNotificationCenter sharedInstance];
    [v4 activate];

    v5 = +[AAUserNotificationCenter sharedInstance];
    [(AAFeatureOnboarding *)self setUnCenter:v5];

    v8 = [(AAFeatureOnboarding *)self unCenter];
    v6 = [(AAFeatureOnboarding *)self unCategories];
    v7 = [v6 allValues];
    [v8 registerNotificationCategories:v7 responseDelegate:self];
  }
}

- (void)_userNotificationCenterEnsureStopped
{
  v3 = [(AAFeatureOnboarding *)self unCenter];
  v4 = [(AAFeatureOnboarding *)self unCategories];
  v5 = [v4 allKeys];
  [v3 deregisterNotificationCategoryWithIdentifiers:v5];

  [(AAFeatureOnboarding *)self setUnCenter:0];
}

- (void)_postDEOCOnboardingIfNeeded:(id)a3
{
  v33 = a3;
  v4 = [v33 visibleBatteryCombinedLeftRight];
  if ([v4 chargingDEOC])
  {
    goto LABEL_4;
  }

  v5 = [v33 visibleBatteryLeft];
  if ([v5 chargingDEOC])
  {

LABEL_4:
    goto LABEL_6;
  }

  v6 = [v33 visibleBatteryRight];
  v7 = [v6 chargingDEOC];

  if ((v7 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_6:
  v8 = [v33 identifier];
  v9 = [(AAFeatureOnboarding *)self deocOnboardedDeviceIdentifiers];
  v10 = [v9 containsObject:v8];

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

  v19 = [v33 bluetoothAddress];

  if (v19)
  {
    v20 = +[_TtC15audioaccessoryd13DeviceManager singleton];
    v21 = [v33 bluetoothAddress];
    v22 = [v20 fetchAAProxCardsInfoSyncWithAddress:v21];

    if (v22 && (v23 = [v22 dynamicEndOfChargeNotificationVersion]) != 0)
    {
      if (dword_1002F71B8 <= 30)
      {
        if (dword_1002F71B8 != -1 || (v23 = _LogCategory_Initialize(), v23))
        {
          sub_1000CA7A0(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33);
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
          sub_1000CA7A0(v23, v24, v25, v26, v27, v28, v29, v30, v32, v33);
          LogPrintF();
        }
      }

      [(AAFeatureOnboarding *)self _presentDeocNotification:v33];
    }

    v31 = [(AAFeatureOnboarding *)self deocOnboardedDeviceIdentifiers];
    [v31 addObject:v8];

    goto LABEL_19;
  }

  if (dword_1002F71B8 <= 90)
  {
    if (dword_1002F71B8 != -1 || (v11 = _LogCategory_Initialize(), v11))
    {
LABEL_30:
      sub_1000CA7A0(v11, v12, v13, v14, v15, v16, v17, v18, v32, v33);
      LogPrintF();
    }
  }

LABEL_19:

LABEL_20:
}

- (void)_dismissFitEducationNotificationForDisconnectedDevice:(id)a3
{
  v11 = a3;
  v4 = [(AAFeatureOnboarding *)self fitEducationNotificationIdsForDeviceIds];
  v5 = [v11 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    if (dword_1002F71B8 <= 30 && (dword_1002F71B8 != -1 || _LogCategory_Initialize()))
    {
      v10 = [v11 identifier];
      LogPrintF();
    }

    v7 = [(AAFeatureOnboarding *)self unCenter];
    [v7 dismissUserNotificationWithIdentifier:v6];

    v8 = [(AAFeatureOnboarding *)self fitEducationNotificationIdsForDeviceIds];
    v9 = [v11 identifier];
    [v8 setObject:0 forKeyedSubscript:v9];
  }
}

@end