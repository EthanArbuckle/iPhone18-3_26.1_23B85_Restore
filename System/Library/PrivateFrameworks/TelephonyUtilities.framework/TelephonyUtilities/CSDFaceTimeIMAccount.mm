@interface CSDFaceTimeIMAccount
+ (CSDFaceTimeIMAccount)sharedInstance;
- (CSDFaceTimeIMAccount)init;
- (NSString)callerID;
- (id)faceTimeIMAccount;
- (void)_initializeLastKnownCallerID;
- (void)_saveLastKnownFaceTimeCallerID;
- (void)account:(id)account aliasesChanged:(id)changed;
- (void)displayNameChanged:(id)changed;
- (void)imDaemonDidConnect:(id)connect;
- (void)preferredAccountChanged:(id)changed;
- (void)removeCallerIDFromPreferences;
- (void)updateCallerID:(id)d;
- (void)updateState;
@end

@implementation CSDFaceTimeIMAccount

+ (CSDFaceTimeIMAccount)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022CAA4;
  block[3] = &unk_10061A860;
  block[4] = self;
  if (qword_1006ACF90 != -1)
  {
    dispatch_once(&qword_1006ACF90, block);
  }

  v2 = qword_1006ACF88;

  return v2;
}

- (CSDFaceTimeIMAccount)init
{
  v12.receiver = self;
  v12.super_class = CSDFaceTimeIMAccount;
  v2 = [(CSDFaceTimeIMAccount *)&v12 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.telephonyutilities.callservicesd.facetimeimaccount"];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"imDaemonDidConnect:" name:IMDaemonDidConnectNotification object:0];

    v7 = +[IMDaemonController sharedController];
    [v7 connectToDaemon];

    v8 = v2->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10022CC1C;
    block[3] = &unk_100619D38;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

- (NSString)callerID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028720;
  v11 = sub_10003290C;
  v12 = 0;
  queue = [(CSDFaceTimeIMAccount *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10022CED8;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)updateCallerID:(id)d
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10022CF84;
  v4[3] = &unk_100619D88;
  v4[4] = self;
  dCopy = d;
  v3 = dCopy;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)imDaemonDidConnect:(id)connect
{
  connectCopy = connect;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = connectCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received IMDaemon connected notification: %@", &v8, 0xCu);
  }

  dispatch_assert_queue_V2(&_dispatch_main_q);
  [(CSDFaceTimeIMAccount *)self setIMDaemonConnected:1];
  [(CSDFaceTimeIMAccount *)self updateState];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"preferredAccountChanged:" name:IMPreferredAccountForServiceChangedNotification object:0];

  IMRegisterForPreferredAccountChangeNotifications();
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"displayNameChanged:" name:IMAccountDisplayNameChangedNotification object:0];
}

- (void)preferredAccountChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received preferred account changed notification: %@", &v6, 0xCu);
  }

  [(CSDFaceTimeIMAccount *)self updateState];
}

- (void)displayNameChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received display name changed notification: %@", &v6, 0xCu);
  }

  [(CSDFaceTimeIMAccount *)self updateState];
}

- (void)_initializeLastKnownCallerID
{
  queue = [(CSDFaceTimeIMAccount *)self queue];
  dispatch_assert_queue_V2(queue);

  keychainItem = [(CSDFaceTimeIMAccount *)self keychainItem];
  v16 = 0;
  v5 = [keychainItem readPasswordAndReturnError:&v16];
  v6 = v16;

  v7 = [v5 length];
  v8 = sub_100004778();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Loaded last known FaceTime caller ID as %@", buf, 0xCu);
    }

    v10 = v5;
LABEL_13:
    v12 = v10;
    callerID = self->_callerID;
    self->_callerID = v10;
    goto LABEL_14;
  }

  if (v9)
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find lastKnownFaceTimeCallerID in keychain, error: %@", buf, 0xCu);
  }

  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Querying Preferences to see if it exists", buf, 2u);
  }

  v12 = CFPreferencesCopyAppValue(@"lastKnownFaceTimeCallerID", TUBundleIdentifierTelephonyUtilitiesFramework);
  v13 = [v12 length];
  callerID = sub_100004778();
  v15 = os_log_type_enabled(callerID, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, callerID, OS_LOG_TYPE_DEFAULT, "Found lastKnownFaceTimeCallerID: %@ in Preferences", buf, 0xCu);
    }

    v10 = v12;
    goto LABEL_13;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, callerID, OS_LOG_TYPE_DEFAULT, "[WARN] lastKnownFaceTimeCallerID not found in Preferences either", buf, 2u);
  }

LABEL_14:

  if ([(NSString *)self->_callerID length])
  {
    [(CSDFaceTimeIMAccount *)self _saveLastKnownFaceTimeCallerID];
    [(CSDFaceTimeIMAccount *)self removeCallerIDFromPreferences];
  }
}

- (void)removeCallerIDFromPreferences
{
  v2 = TUBundleIdentifierTelephonyUtilitiesFramework;
  v3 = CFPreferencesCopyAppValue(@"lastKnownFaceTimeCallerID", TUBundleIdentifierTelephonyUtilitiesFramework);
  if (v3)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Removing callerID Preferences value", v5, 2u);
    }

    CFPreferencesSetAppValue(@"lastKnownFaceTimeCallerID", 0, v2);
    CFPreferencesAppSynchronize(v2);
  }
}

- (void)_saveLastKnownFaceTimeCallerID
{
  queue = [(CSDFaceTimeIMAccount *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    callerID = self->_callerID;
    *buf = 138412290;
    v12 = callerID;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Saving last known FaceTime caller ID as %@", buf, 0xCu);
  }

  keychainItem = [(CSDFaceTimeIMAccount *)self keychainItem];
  v7 = self->_callerID;
  v10 = 0;
  [keychainItem savePassword:v7 error:&v10];
  v8 = v10;

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047D3A4(v8, v9);
    }
  }
}

- (id)faceTimeIMAccount
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v2 = +[IMService facetimeService];
  v3 = IMPreferredAccountForService();

  return v3;
}

- (void)updateState
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ([(CSDFaceTimeIMAccount *)self isIMDaemonConnected])
  {
    faceTimeIMAccount = [(CSDFaceTimeIMAccount *)self faceTimeIMAccount];
    displayName = [faceTimeIMAccount displayName];

    queue = [(CSDFaceTimeIMAccount *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10022D9AC;
    block[3] = &unk_100619D88;
    block[4] = self;
    v9 = displayName;
    v6 = displayName;
    dispatch_async(queue, block);
  }

  else
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Deferring FaceTime caller ID refresh until connected to IMDaemon", v7, 2u);
    }
  }
}

- (void)account:(id)account aliasesChanged:(id)changed
{
  accountCopy = account;
  changedCopy = changed;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v12 = 2112;
    v13 = accountCopy;
    v14 = 2112;
    v15 = changedCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%@ account %@ aliases changed %@", buf, 0x20u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10022DC44;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

@end