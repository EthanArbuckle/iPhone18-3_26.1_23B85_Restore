@interface DaemonBiometricStore
+ (BOOL)tokenUpdateShouldStartWithLogKey:(id)a3;
+ (id)_dispatchQueueUpdateToken;
+ (int64_t)tokenUpdateState;
+ (void)_handleMessage:(id)a3 connection:(id)a4 withReplyBlock:(id)a5;
+ (void)_resetAccount:(id)a3 withConnection:(id)a4;
+ (void)getAllCachedBiometricHTTPHeadersWithMessage:(id)a3 connection:(id)a4;
+ (void)getCachedBiometricAuthenticationContextWithMessage:(id)a3 connection:(id)a4;
+ (void)getCachedBiometricHTTPHeadersWithMessage:(id)a3 connection:(id)a4;
+ (void)getConstraintsDictionaryWithMessage:(id)a3 connection:(id)a4;
+ (void)getIdentityMapCountWithMessage:(id)a3 connection:(id)a4;
+ (void)getKeyCountWithMessage:(id)a3 connection:(id)a4;
+ (void)getStateWithMessage:(id)a3 connection:(id)a4;
+ (void)isIdentityMapValidWithMessage:(id)a3 connection:(id)a4;
+ (void)observeXPCServer:(id)a3;
+ (void)resetAccountWithMessage:(id)a3 connection:(id)a4;
+ (void)resetWithMessage:(id)a3 connection:(id)a4;
+ (void)saveIdentityMapWithMessage:(id)a3 connection:(id)a4;
+ (void)setEnabledWithMessage:(id)a3 connection:(id)a4;
+ (void)tokenUpdateDidFinishWithLogKey:(id)a3;
+ (void)tokenUpdateDidFinishWithMessage:(id)a3 connection:(id)a4;
+ (void)tokenUpdateShouldStartWithMessage:(id)a3 connection:(id)a4;
+ (void)tokenUpdateStateWithMessage:(id)a3 connection:(id)a4;
- (BOOL)canPerformBiometricOptIn;
- (BOOL)isIdentityMapValidForAccountIdentifier:(id)a3;
- (NSNumber)lastRegisteredAccountIdentifier;
- (id)_bootDate;
- (id)identityMap;
- (int64_t)biometricState;
- (int64_t)tokenAvailabilityForAccountIdentifier:(id)a3;
- (unint64_t)keyCountForAccountIdentifier:(id)a3;
- (void)_deleteKeychainTokensForAccountIdentifier:(id)a3;
- (void)clearLastRegisteredAccountIdentifier;
- (void)obliterateBiometricsForAccountIdentifier:(id)a3;
- (void)registerAccountIdentifier:(id)a3;
- (void)setBiometricState:(int64_t)a3;
@end

@implementation DaemonBiometricStore

- (int64_t)biometricState
{
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"AMSDeviceBiometricsState", @"com.apple.AppleMediaServices", 0);
  if (AppIntegerValue == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (AppIntegerValue == 1);
  }
}

- (BOOL)canPerformBiometricOptIn
{
  v2 = [(DaemonBiometricStore *)self identityMap];
  if ([v2 count])
  {
    v3 = +[MCProfileConnection sharedConnection];
    v4 = [v3 isPasscodeSet];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearLastRegisteredAccountIdentifier
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 OSLogObject];
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  LODWORD(v9) = 138543362;
  *(&v9 + 4) = objc_opt_class();
  v6 = *(&v9 + 4);
  LODWORD(v8) = 12;
  v7 = _os_log_send_and_compose_impl();

  if (v7)
  {
    v5 = [NSString stringWithCString:v7 encoding:4, &v9, v8, v9];
    free(v7);
    SSFileLog();
LABEL_11:
  }

  CFPreferencesSetAppValue(@"BiometricAccountID", 0, kSSUserDefaultsIdentifier);
}

- (id)identityMap
{
  if ((+[SSDevice deviceIsAudioAccessory]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v3 = [ISWeakLinkedClassForString() manager];
    v2 = [v3 identities:0];
  }

  return v2;
}

- (BOOL)isIdentityMapValidForAccountIdentifier:(id)a3
{
  v3 = +[AMSBiometricsSecurityService isIdentityMapValid];
  v15 = 0;
  v4 = [v3 resultWithError:&v15];
  v5 = v15;

  if (v5)
  {
    v6 = +[SSLogConfig sharedDaemonConfig];
    if (!v6)
    {
      v6 = +[SSLogConfig sharedConfig];
    }

    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v10 = objc_opt_class();
      v16 = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v5;
      v11 = v10;
      LODWORD(v14) = 22;
      v12 = _os_log_send_and_compose_impl();

      if (!v12)
      {
LABEL_13:

        goto LABEL_14;
      }

      v9 = [NSString stringWithCString:v12 encoding:4, &v16, v14];
      free(v12);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:

  return v4;
}

- (unint64_t)keyCountForAccountIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[DaemonBiometricKeychain sharedInstance];
  v30 = 0;
  v5 = [v4 publicKeyDataForAccountIdentifier_:v3 purpose:0 regenerateKeys:0 error:&v30];
  v6 = v30;

  if (v6)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v31 = 138543618;
      v32 = v11;
      v33 = 2114;
      v34 = v6;
      v12 = v11;
      LODWORD(v28) = 22;
      v27 = &v31;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = [NSString stringWithCString:v13 encoding:4, &v31, v28];
      free(v13);
      v27 = v10;
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
  v14 = +[DaemonBiometricKeychain sharedInstance];
  v29 = v6;
  v15 = [v14 publicKeyDataForAccountIdentifier_:v3 purpose:1 regenerateKeys:0 error:&v29];
  v16 = v29;

  if (!v16)
  {
    goto LABEL_27;
  }

  v17 = +[SSLogConfig sharedDaemonConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    v19 = v18 | 2;
  }

  else
  {
    v19 = v18;
  }

  v20 = [v17 OSLogObject];
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v19 &= 2u;
  }

  if (!v19)
  {
    goto LABEL_25;
  }

  v21 = objc_opt_class();
  v31 = 138543618;
  v32 = v21;
  v33 = 2114;
  v34 = v16;
  v22 = v21;
  LODWORD(v28) = 22;
  v23 = _os_log_send_and_compose_impl();

  if (v23)
  {
    v20 = [NSString stringWithCString:v23 encoding:4, &v31, v28];
    free(v23);
    SSFileLog();
LABEL_25:
  }

LABEL_27:
  v24 = 1;
  if (v5)
  {
    v24 = 2;
  }

  if (v15)
  {
    v25 = v24;
  }

  else
  {
    v25 = v5 != 0;
  }

  return v25;
}

- (NSNumber)lastRegisteredAccountIdentifier
{
  v2 = CFPreferencesCopyAppValue(@"BiometricAccountID", kSSUserDefaultsIdentifier);

  return v2;
}

- (int64_t)tokenAvailabilityForAccountIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v17 = 4;
    goto LABEL_22;
  }

  v5 = +[MCProfileConnection sharedConnection];
  v6 = [v5 isPasscodeSet];

  if (!v6 || (-[DaemonBiometricStore identityMap](self, "identityMap"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, !v8))
  {
    v17 = 3;
    goto LABEL_22;
  }

  if (![(DaemonBiometricStore *)self isIdentityMapValidForAccountIdentifier:v4])
  {
    v17 = 2;
    goto LABEL_22;
  }

  v9 = [(DaemonBiometricStore *)self lastRegisteredAccountIdentifier];
  v10 = [v9 isEqualToNumber:v4];

  if ((v10 & 1) == 0)
  {
    v11 = +[SSLogConfig sharediTunesStoreConfig];
    if (!v11)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      LODWORD(v20) = 138543362;
      *(&v20 + 4) = objc_opt_class();
      v15 = *(&v20 + 4);
      LODWORD(v19) = 12;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_17:

        goto LABEL_18;
      }

      v14 = [NSString stringWithCString:v16 encoding:4, &v20, v19, v20];
      free(v16);
      SSFileLog();
    }

    goto LABEL_17;
  }

LABEL_18:
  v17 = 0;
LABEL_22:

  return v17;
}

- (void)obliterateBiometricsForAccountIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  *v12 = 138543618;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 2112;
  *&v12[14] = v4;
  v9 = *&v12[4];
  LODWORD(v11) = 22;
  v10 = _os_log_send_and_compose_impl();

  if (v10)
  {
    v8 = [NSString stringWithCString:v10 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v10);
    SSFileLog();
LABEL_11:
  }

  [(DaemonBiometricStore *)self setBiometricState:0];
}

- (void)registerAccountIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 OSLogObject];
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  *v12 = 138543618;
  *&v12[4] = objc_opt_class();
  *&v12[12] = 2114;
  *&v12[14] = v3;
  v8 = *&v12[4];
  LODWORD(v11) = 22;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    v7 = [NSString stringWithCString:v9 encoding:4, v12, v11, *v12, *&v12[16]];
    free(v9);
    SSFileLog();
LABEL_11:
  }

  v10 = kSSUserDefaultsIdentifier;
  CFPreferencesSetAppValue(@"BiometricAccountID", v3, kSSUserDefaultsIdentifier);
  CFPreferencesAppSynchronize(v10);
}

- (void)setBiometricState:(int64_t)a3
{
  if ([(DaemonBiometricStore *)self biometricState]== a3)
  {
    return;
  }

  v5 = [[NSNumber alloc] initWithInteger:a3];
  v6 = kSSUserDefaultsIdentifier;
  value = v5;
  CFPreferencesSetAppValue(@"BiometricState", v5, kSSUserDefaultsIdentifier);
  if ((a3 - 1) <= 1)
  {
    CFPreferencesSetAppValue(@"BiometricStateEnabled", value, v6);
  }

  CFPreferencesAppSynchronize(v6);
  switch(a3)
  {
    case 0:
      v7 = 0;
      goto LABEL_16;
    case 1:
      [AMSDevice setBiometricState:2];
      v8 = [(DaemonBiometricStore *)self lastRegisteredAccountIdentifier];
      if (v8)
      {
        [(DaemonBiometricStore *)self _deleteKeychainTokensForAccountIdentifier:v8];
      }

      v9 = +[SSAccountStore defaultStore];
      v10 = [v9 activeAccount];
      v11 = [v10 uniqueIdentifier];

      if (v11 && (!v8 || ([v11 isEqualToNumber:v8] & 1) == 0))
      {
        [(DaemonBiometricStore *)self _deleteKeychainTokensForAccountIdentifier:v11];
      }

      break;
    case 2:
      v7 = 1;
LABEL_16:
      [AMSDevice setBiometricState:v7];
      break;
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kSSBiometricsStateChangedNotification, 0, 0, 1u);
}

+ (void)tokenUpdateDidFinishWithLogKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _dispatchQueueUpdateToken];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F24EC;
  block[3] = &unk_100327110;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

+ (BOOL)tokenUpdateShouldStartWithLogKey:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v4 = [objc_opt_class() _dispatchQueueUpdateToken];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F276C;
  v7[3] = &unk_1003290E0;
  v8 = v3;
  v9 = &v10;
  v5 = v3;
  dispatch_sync(v4, v7);

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v4;
}

+ (int64_t)tokenUpdateState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [objc_opt_class() _dispatchQueueUpdateToken];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F2E98;
  block[3] = &unk_10032C070;
  block[4] = &v6;
  dispatch_sync(v2, block);

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (void)observeXPCServer:(id)a3
{
  v4 = a3;
  [v4 addObserver:a1 selector:"getAllCachedBiometricHTTPHeadersWithMessage:connection:" forMessage:203];
  [v4 addObserver:a1 selector:"getCachedBiometricAuthenticationContextWithMessage:connection:" forMessage:195];
  [v4 addObserver:a1 selector:"getCachedBiometricHTTPHeadersWithMessage:connection:" forMessage:196];
  [v4 addObserver:a1 selector:"getConstraintsDictionaryWithMessage:connection:" forMessage:214];
  [v4 addObserver:a1 selector:"getCurrentACLVersionWithMessage:connection:" forMessage:213];
  [v4 addObserver:a1 selector:"getIdentityMapCountWithMessage:connection:" forMessage:182];
  [v4 addObserver:a1 selector:"getKeyCountWithMessage:connection:" forMessage:202];
  [v4 addObserver:a1 selector:"getStateWithMessage:connection:" forMessage:122];
  [v4 addObserver:a1 selector:"isIdentityMapValidWithMessage:connection:" forMessage:183];
  [v4 addObserver:a1 selector:"resetAccountWithMessage:connection:" forMessage:125];
  [v4 addObserver:a1 selector:"resetWithMessage:connection:" forMessage:124];
  [v4 addObserver:a1 selector:"saveIdentityMapWithMessage:connection:" forMessage:184];
  [v4 addObserver:a1 selector:"setEnabledWithMessage:connection:" forMessage:123];
  [v4 addObserver:a1 selector:"setAllowedWithMessage:connection:" forMessage:126];
  [v4 addObserver:a1 selector:"tokenUpdateDidFinishWithMessage:connection:" forMessage:206];
  [v4 addObserver:a1 selector:"tokenUpdateShouldStartWithMessage:connection:" forMessage:207];
  [v4 addObserver:a1 selector:"tokenUpdateStateWithMessage:connection:" forMessage:208];
}

+ (void)getAllCachedBiometricHTTPHeadersWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F3604;
  v7[3] = &unk_100329FD0;
  v8 = a3;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

+ (void)getCachedBiometricAuthenticationContextWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F3CE4;
  v7[3] = &unk_100329FD0;
  v8 = a3;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

+ (void)getCachedBiometricHTTPHeadersWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F4118;
  v7[3] = &unk_100329FD0;
  v8 = a3;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

+ (void)getConstraintsDictionaryWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F472C;
  v7[3] = &unk_10032C098;
  v8 = a3;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

+ (void)getIdentityMapCountWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001F4AA0;
  v4[3] = &unk_10032C0F8;
  v4[4] = a1;
  [a1 _handleMessage:a3 connection:a4 withReplyBlock:v4];
}

+ (void)getKeyCountWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F4C40;
  v7[3] = &unk_100329FD0;
  v8 = a3;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

+ (void)getStateWithMessage:(id)a3 connection:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001F4F04;
  v4[3] = &unk_10032C0F8;
  v4[4] = a1;
  [a1 _handleMessage:a3 connection:a4 withReplyBlock:v4];
}

+ (void)isIdentityMapValidWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F5394;
  v7[3] = &unk_100329FD0;
  v8 = a3;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

+ (void)resetAccountWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F5560;
  v9[3] = &unk_100329FF8;
  v11 = a4;
  v12 = a1;
  v10 = v6;
  v7 = v11;
  v8 = v6;
  [a1 _handleMessage:v8 connection:v7 withReplyBlock:v9];
}

+ (void)resetWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F5700;
  v7[3] = &unk_100329FD0;
  v8 = a4;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:a3 connection:v6 withReplyBlock:v7];
}

+ (void)saveIdentityMapWithMessage:(id)a3 connection:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F58B8;
  v7[3] = &unk_100329FD0;
  v8 = a3;
  v9 = a1;
  v6 = v8;
  [a1 _handleMessage:v6 connection:a4 withReplyBlock:v7];
}

+ (void)setEnabledWithMessage:(id)a3 connection:(id)a4
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F5B6C;
  v8[3] = &unk_100329FF8;
  v10 = a3;
  v11 = a1;
  v9 = a4;
  v6 = v10;
  v7 = v9;
  [a1 _handleMessage:v6 connection:v7 withReplyBlock:v8];
}

+ (void)tokenUpdateDidFinishWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, a1);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F61F8;
  v9[3] = &unk_10032C168;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [a1 _handleMessage:v8 connection:v7 withReplyBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

+ (void)tokenUpdateShouldStartWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, a1);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F63D8;
  v9[3] = &unk_10032C168;
  objc_copyWeak(&v11, &location);
  v8 = v6;
  v10 = v8;
  [a1 _handleMessage:v8 connection:v7 withReplyBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

+ (void)tokenUpdateStateWithMessage:(id)a3 connection:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, a1);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001F65C0;
  v8[3] = &unk_10032C190;
  objc_copyWeak(&v9, &location);
  [a1 _handleMessage:v6 connection:v7 withReplyBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

+ (void)_handleMessage:(id)a3 connection:(id)a4 withReplyBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1001F678C;
  v15[3] = &unk_10032A020;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v19 = a1;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

- (id)_bootDate
{
  v2 = +[NSProcessInfo processInfo];
  [v2 systemUptime];
  v4 = v3;

  v5 = +[NSDate date];
  v6 = [v5 dateByAddingTimeInterval:-v4];

  return v6;
}

- (void)_deleteKeychainTokensForAccountIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[DaemonBiometricKeychain sharedInstance];
  v15 = 0;
  v5 = [v4 deleteKeychainTokensForAccountIdentifier_:v3 error:&v15];
  v6 = v15;

  if ((v5 & 1) == 0)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v3;
      v20 = 2114;
      v21 = v6;
      v12 = v11;
      LODWORD(v14) = 32;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
LABEL_13:

        goto LABEL_14;
      }

      v10 = [NSString stringWithCString:v13 encoding:4, &v16, v14];
      free(v13);
      SSFileLog();
    }

    goto LABEL_13;
  }

LABEL_14:
}

+ (void)_resetAccount:(id)a3 withConnection:(id)a4
{
  v5 = a3;
  v6 = SSXPCConnectionCopyClientIdentifier();
  v7 = +[SSLogConfig sharedConfig];
  v8 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = v8 | 2;
  }

  else
  {
    v9 = v8;
  }

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  *v15 = 138543874;
  *&v15[4] = objc_opt_class();
  *&v15[12] = 2112;
  *&v15[14] = v5;
  *&v15[22] = 2114;
  v16 = v6;
  v11 = *&v15[4];
  LODWORD(v14) = 32;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v10 = [NSString stringWithCString:v12 encoding:4, v15, v14, *v15, *&v15[16], v16];
    free(v12);
    SSFileLog();
LABEL_9:
  }

  v13 = objc_alloc_init(a1);
  [v13 obliterateBiometricsForAccountIdentifier:v5];
}

+ (id)_dispatchQueueUpdateToken
{
  if (qword_100384100 != -1)
  {
    sub_1002725DC();
  }

  v3 = qword_100384108;

  return v3;
}

@end