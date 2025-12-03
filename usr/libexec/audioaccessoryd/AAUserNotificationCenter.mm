@interface AAUserNotificationCenter
+ (AAUserNotificationCenter)sharedInstance;
- (AAUserNotificationCenter)init;
- (id)_activateAudioSession;
- (id)deviceIconForProductID:(unsigned int)d;
- (void)_deactivateAudioSession;
- (void)_userNotificationCenterEnsureStarted;
- (void)_userNotificationCenterEnsureStopped;
- (void)_userNotificationCenterSetCategories;
- (void)activate;
- (void)deliverNotificationWithContent:(id)content completion:(id)completion;
- (void)deliverNotificationWithContent:(id)content dismissTimeout:(unsigned int)timeout completion:(id)completion;
- (void)deregisterNotificationCategoryWithIdentifiers:(id)identifiers;
- (void)dismissUserNotificationWithIdentifier:(id)identifier;
- (void)invalidate;
- (void)registerNotificationCategories:(id)categories responseDelegate:(id)delegate;
- (void)requestSiriAnnounceWithNotificationContent:(id)content;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)visibleNotificationWithCategoryIdentifier:(id)identifier completion:(id)completion;
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
  dispatchQueue = [(AAUserNotificationCenter *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5114;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = [(AAUserNotificationCenter *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D51A8;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)deliverNotificationWithContent:(id)content dismissTimeout:(unsigned int)timeout completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D5284;
  v10[3] = &unk_1002BB400;
  contentCopy = content;
  completionCopy = completion;
  v10[4] = self;
  timeoutCopy = timeout;
  v8 = contentCopy;
  v9 = completionCopy;
  [(AAUserNotificationCenter *)self deliverNotificationWithContent:v8 completion:v10];
}

- (void)deliverNotificationWithContent:(id)content completion:(id)completion
{
  contentCopy = content;
  completionCopy = completion;
  dispatchQueue = [(AAUserNotificationCenter *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5670;
  block[3] = &unk_1002B6BB0;
  v12 = contentCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = contentCopy;
  dispatch_async(dispatchQueue, block);
}

- (id)deviceIconForProductID:(unsigned int)d
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
    identifier = [v4 identifier];
    v7 = [UNNotificationIcon iconWithUTI:identifier];
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

- (void)dismissUserNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = [(AAUserNotificationCenter *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001FA8BC;
  v7[3] = &unk_1002B6D18;
  v8 = identifierCopy;
  selfCopy = self;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)visibleNotificationWithCategoryIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = [(AAUserNotificationCenter *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5B9C;
  block[3] = &unk_1002BA588;
  v12 = identifierCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = identifierCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
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

- (void)requestSiriAnnounceWithNotificationContent:(id)content
{
  contentCopy = content;
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
  assistantIsEnabled = [v6 assistantIsEnabled];

  if ((assistantIsEnabled & 1) == 0)
  {
    v11 = NSErrorF();
    languageCode = v24[5];
    v24[5] = v11;
    goto LABEL_15;
  }

  v8 = +[AFPreferences sharedPreferences];
  outputVoice = [v8 outputVoice];
  languageCode = [outputVoice languageCode];

  if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (!languageCode)
  {
    v14 = NSErrorF();
    uUIDString = v24[5];
    v24[5] = v14;
LABEL_14:

    goto LABEL_15;
  }

  _activateAudioSession = [(AAUserNotificationCenter *)self _activateAudioSession];
  v13 = v24[5];
  v24[5] = _activateAudioSession;

  if (!v24[5])
  {
    v16 = +[NSUUID UUID];
    uUIDString = [v16 UUIDString];

    v17 = [UNNotificationRequest requestWithIdentifier:uUIDString content:contentCopy trigger:0];
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

- (void)registerNotificationCategories:(id)categories responseDelegate:(id)delegate
{
  categoriesCopy = categories;
  delegateCopy = delegate;
  dispatchQueue = [(AAUserNotificationCenter *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D67F8;
  block[3] = &unk_1002B6CF0;
  v12 = categoriesCopy;
  v13 = delegateCopy;
  selfCopy = self;
  v9 = delegateCopy;
  v10 = categoriesCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)deregisterNotificationCategoryWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dispatchQueue = [(AAUserNotificationCenter *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D6A9C;
  v7[3] = &unk_1002B6D18;
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_userNotificationCenterEnsureStarted
{
  unCenter = [(AAUserNotificationCenter *)self unCenter];

  if (!unCenter)
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
  unCenter = [(AAUserNotificationCenter *)self unCenter];
  [unCenter setDelegate:0];

  [(AAUserNotificationCenter *)self setUnCenter:0];
}

- (void)_userNotificationCenterSetCategories
{
  categoryMap = [(AAUserNotificationCenter *)self categoryMap];
  v4 = [categoryMap count];

  if (v4)
  {
    categoryMap2 = [(AAUserNotificationCenter *)self categoryMap];
    allValues = [categoryMap2 allValues];
    v8 = [NSSet setWithArray:allValues];

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

  unCenter = [(AAUserNotificationCenter *)self unCenter];
  [unCenter setNotificationCategories:v8];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  centerCopy = center;
  responseCopy = response;
  handlerCopy = handler;
  if (dword_1002F7460 <= 30 && (dword_1002F7460 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FAC90();
  }

  dispatchQueue = [(AAUserNotificationCenter *)self dispatchQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D6F80;
  v15[3] = &unk_1002BB478;
  v16 = centerCopy;
  selfCopy = self;
  v18 = responseCopy;
  v19 = handlerCopy;
  v12 = responseCopy;
  v13 = handlerCopy;
  v14 = centerCopy;
  dispatch_async(dispatchQueue, v15);
}

@end