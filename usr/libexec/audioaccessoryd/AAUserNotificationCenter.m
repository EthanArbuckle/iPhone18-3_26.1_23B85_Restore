@interface AAUserNotificationCenter
+ (AAUserNotificationCenter)sharedInstance;
- (AAUserNotificationCenter)init;
- (id)_activateAudioSession;
- (id)deviceIconForProductID:(unsigned int)a3;
- (void)_deactivateAudioSession;
- (void)_userNotificationCenterEnsureStarted;
- (void)_userNotificationCenterEnsureStopped;
- (void)_userNotificationCenterSetCategories;
- (void)activate;
- (void)deliverNotificationWithContent:(id)a3 completion:(id)a4;
- (void)deliverNotificationWithContent:(id)a3 dismissTimeout:(unsigned int)a4 completion:(id)a5;
- (void)deregisterNotificationCategoryWithIdentifiers:(id)a3;
- (void)dismissUserNotificationWithIdentifier:(id)a3;
- (void)invalidate;
- (void)registerNotificationCategories:(id)a3 responseDelegate:(id)a4;
- (void)requestSiriAnnounceWithNotificationContent:(id)a3;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)visibleNotificationWithCategoryIdentifier:(id)a3 completion:(id)a4;
@end

@implementation AAUserNotificationCenter

+ (AAUserNotificationCenter)sharedInstance
{
  if (qword_1002FA238 != -1)
  {
    sub_1001FA99C();
  }

  v3 = qword_1002FA230;

  return v3;
}

- (AAUserNotificationCenter)init
{
  v14.receiver = self;
  v14.super_class = AAUserNotificationCenter;
  v2 = [(AAUserNotificationCenter *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    categoryDelegates = v2->_categoryDelegates;
    v2->_categoryDelegates = v3;

    v5 = objc_alloc_init(NSMutableDictionary);
    categoryMap = v2->_categoryMap;
    v2->_categoryMap = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("AAUserNotificationCenter", v7);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    notificationTimeoutMap = v2->_notificationTimeoutMap;
    v2->_notificationTimeoutMap = v10;

    v12 = v2;
  }

  return v2;
}

- (void)activate
{
  v3 = [(AAUserNotificationCenter *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5114;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)invalidate
{
  v3 = [(AAUserNotificationCenter *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D51A8;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)deliverNotificationWithContent:(id)a3 dismissTimeout:(unsigned int)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D5284;
  v10[3] = &unk_1002BB400;
  v11 = a3;
  v12 = a5;
  v10[4] = self;
  v13 = a4;
  v8 = v11;
  v9 = v12;
  [(AAUserNotificationCenter *)self deliverNotificationWithContent:v8 completion:v10];
}

- (void)deliverNotificationWithContent:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAUserNotificationCenter *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5670;
  block[3] = &unk_1002B6BB0;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (id)deviceIconForProductID:(unsigned int)a3
{
  v4 = [(AAUserNotificationCenter *)self _iconTypeForProductID:?];
  if (v4)
  {
    goto LABEL_6;
  }

  if (dword_1002F7460 <= 90 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FAA7C();
  }

  v4 = [(AAUserNotificationCenter *)self _iconTypeForProductID:8212];
  if (v4)
  {
LABEL_6:
    v5 = v4;
    v6 = [v4 identifier];
    v7 = [UNNotificationIcon iconWithUTI:v6];
  }

  else
  {
    if (dword_1002F7460 <= 90 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FAAC0();
    }

    v7 = [UNNotificationIcon iconForSystemImageNamed:@"airpods.pro"];
  }

  return v7;
}

- (void)dismissUserNotificationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AAUserNotificationCenter *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001FA8BC;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)visibleNotificationWithCategoryIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAUserNotificationCenter *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5B9C;
  block[3] = &unk_1002BA588;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
}

- (id)_activateAudioSession
{
  if ([(AAUserNotificationCenter *)self audioSessionActivated])
  {
    v3 = 0;
  }

  else
  {
    if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FAB04();
    }

    v4 = +[AVAudioSession sharedInstance];
    v5 = kMXSessionProperty_InterruptionStyle;
    v6 = [NSNumber numberWithInt:32];
    v12 = 0;
    [v4 setMXSessionProperty:v5 value:v6 error:&v12];
    v3 = v12;

    if (v3 || (+[AVAudioSession sharedInstance](AVAudioSession, "sharedInstance"), v7 = objc_claimAutoreleasedReturnValue(), v11 = 0, v8 = 1, [v7 setActive:1 error:&v11], v3 = v11, v7, v3))
    {
      if (dword_1002F7460 <= 90 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
      {
        v10 = v3;
        LogPrintF();
      }

      v8 = 0;
    }

    [(AAUserNotificationCenter *)self setAudioSessionActivated:v8, v10];
  }

  return v3;
}

- (void)_deactivateAudioSession
{
  if ([(AAUserNotificationCenter *)self audioSessionActivated])
  {
    if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FAB20();
    }

    v3 = +[AVAudioSession sharedInstance];
    v7 = 0;
    [v3 setDuckingFadeOutDuration:0 fadeInDuration:0 error:&v7];
    v4 = v7;

    if (v4)
    {
      if (dword_1002F7460 <= 90 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FAB3C();
      }
    }

    else
    {
      v5 = +[AVAudioSession sharedInstance];
      v6 = 0;
      [v5 setActive:0 withOptions:1 error:&v6];
      v4 = v6;

      if (v4)
      {
        if (dword_1002F7460 <= 90 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
        {
          sub_1001FAB70();
        }
      }

      else
      {
        [(AAUserNotificationCenter *)self setAudioSessionActivated:0];
      }
    }
  }
}

- (void)requestSiriAnnounceWithNotificationContent:(id)a3
{
  v4 = a3;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1000039E8;
  v27 = sub_1000038A0;
  v28 = 0;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000D65FC;
  v22[3] = &unk_1002B6ED8;
  v22[4] = self;
  v22[5] = &v23;
  v5 = objc_retainBlock(v22);
  v6 = +[AFPreferences sharedPreferences];
  v7 = [v6 assistantIsEnabled];

  if ((v7 & 1) == 0)
  {
    v11 = NSErrorF();
    v10 = v24[5];
    v24[5] = v11;
    goto LABEL_15;
  }

  v8 = +[AFPreferences sharedPreferences];
  v9 = [v8 outputVoice];
  v10 = [v9 languageCode];

  if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!v10)
  {
    v14 = NSErrorF();
    v15 = v24[5];
    v24[5] = v14;
LABEL_14:

    goto LABEL_15;
  }

  v12 = [(AAUserNotificationCenter *)self _activateAudioSession];
  v13 = v24[5];
  v24[5] = v12;

  if (!v24[5])
  {
    v16 = +[NSUUID UUID];
    v15 = [v16 UUIDString];

    v17 = [UNNotificationRequest requestWithIdentifier:v15 content:v4 trigger:0];
    v18 = +[NSDate date];
    v19 = [UNNotification notificationWithRequest:v17 date:v18 sourceIdentifier:@"com.apple.AudioAccessoryUserNotifications" intentIdentifiers:&__NSArray0__struct];

    v20 = [[AFSiriUserNotificationRequest alloc] initWithUserNotification:v19 sourceAppId:@"com.apple.AudioAccessoryUserNotifications" platform:1];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000D66B0;
    v21[3] = &unk_1002B6F00;
    v21[4] = self;
    [v20 performRequestWithCompletion:v21];

    goto LABEL_14;
  }

  if (dword_1002F7460 <= 90 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_15:

  (v5[2])(v5);
  _Block_object_dispose(&v23, 8);
}

- (void)registerNotificationCategories:(id)a3 responseDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AAUserNotificationCenter *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D67F8;
  block[3] = &unk_1002B6CF0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)deregisterNotificationCategoryWithIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(AAUserNotificationCenter *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D6A9C;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_userNotificationCenterEnsureStarted
{
  v3 = [(AAUserNotificationCenter *)self unCenter];

  if (!v3)
  {
    v4 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.AudioAccessoryUserNotifications"];
    [(AAUserNotificationCenter *)self setUnCenter:v4];
    [v4 setDelegate:self];
    [v4 setWantsNotificationResponsesDelivered];
    [(AAUserNotificationCenter *)self _userNotificationCenterSetCategories];
  }
}

- (void)_userNotificationCenterEnsureStopped
{
  v3 = [(AAUserNotificationCenter *)self unCenter];
  [v3 setDelegate:0];

  [(AAUserNotificationCenter *)self setUnCenter:0];
}

- (void)_userNotificationCenterSetCategories
{
  v3 = [(AAUserNotificationCenter *)self categoryMap];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(AAUserNotificationCenter *)self categoryMap];
    v6 = [v5 allValues];
    v8 = [NSSet setWithArray:v6];

    if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FABFC(self);
    }
  }

  else
  {
    v8 = +[NSSet set];
    if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FAC74();
    }
  }

  v7 = [(AAUserNotificationCenter *)self unCenter];
  [v7 setNotificationCategories:v8];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FAC90();
  }

  v11 = [(AAUserNotificationCenter *)self dispatchQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D6F80;
  v15[3] = &unk_1002BB478;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(v11, v15);
}

@end