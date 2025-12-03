@interface TLServiceAgent
- (BOOL)_connection:(id)_connection hasEntitlement:(id)entitlement;
- (BOOL)_ensureDirectoryContainingUserGeneratedVibrationStoreFileExistsWithError:(id *)error;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_performBlockAffectingUserGeneratedVibrationPatterns:(id)patterns withCompletionHandler:(id)handler;
- (void)_postUserGeneratedVibrationPatternsDidChangeNotification;
- (void)retrieveCurrentTonePreferencesWithCompletionHandler:(id)handler;
- (void)retrieveUserGeneratedVibrationPatternsWithCompletionHandler:(id)handler;
- (void)setCurrentToneIdentifier:(id)identifier keyedByTopic:(id)topic forPreferenceKey:(id)key completionHandler:(id)handler;
- (void)setUserGeneratedVibrationPatterns:(id)patterns withCompletionHandler:(id)handler;
@end

@implementation TLServiceAgent

- (BOOL)_connection:(id)_connection hasEntitlement:(id)entitlement
{
  v4 = [_connection valueForEntitlement:entitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)retrieveCurrentTonePreferencesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSXPCConnection currentConnection];
  LOBYTE(self) = [(TLServiceAgent *)self _connectionHasTonePreferencesReadAccessEntitlement:v5];

  if ((self & 1) == 0)
  {
    v9 = [NSError tl_errorWithDomain:@"TLServiceAgentMissingEntitlement" description:@"Read access to tone preferences requires the entitlement %@.", @"com.apple.system.get-alert-tone"];
    v8 = 0;
    if (!handlerCopy)
    {
      goto LABEL_8;
    }

LABEL_7:
    handlerCopy[2](handlerCopy, v8, v9);
    goto LABEL_8;
  }

  CFPreferencesSynchronize(@"com.apple.ToneLibrary", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v6 = CFPreferencesCopyMultiple(0, @"com.apple.ToneLibrary", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001B6C;
  v10[3] = &unk_1000082E8;
  v11 = objc_alloc_init(NSMutableDictionary);
  v7 = v11;
  [(__CFDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v10];
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = [v7 copy];

  v9 = 0;
  if (handlerCopy)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)setCurrentToneIdentifier:(id)identifier keyedByTopic:(id)topic forPreferenceKey:(id)key completionHandler:(id)handler
{
  value = identifier;
  topicCopy = topic;
  keyCopy = key;
  handlerCopy = handler;
  v13 = +[NSXPCConnection currentConnection];
  v14 = [(TLServiceAgent *)self _connectionHasTonePreferencesWriteAccessEntitlement:v13];

  if (v14)
  {
    if ([topicCopy length])
    {
      v15 = CFPreferencesCopyValue(keyCopy, @"com.apple.ToneLibrary", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      if (v15)
      {
        v16 = v15;
        v17 = [v15 mutableCopy];
        CFRelease(v16);
      }

      else if ([value length])
      {
        v17 = objc_alloc_init(NSMutableDictionary);
      }

      else
      {
        v17 = 0;
      }

      if ([value length])
      {
        [v17 setObject:value forKey:topicCopy];
      }

      else
      {
        [v17 removeObjectForKey:topicCopy];
        if (![v17 count])
        {

          v17 = 0;
        }
      }

      CFPreferencesSetValue(keyCopy, v17, @"com.apple.ToneLibrary", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    }

    else
    {
      CFPreferencesSetValue(keyCopy, value, @"com.apple.ToneLibrary", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    }

    CFPreferencesSynchronize(@"com.apple.ToneLibrary", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v18 = 0;
    if (handlerCopy)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v18 = [NSError tl_errorWithDomain:@"TLServiceAgentMissingEntitlement" description:@"Write access to tone preferences requires the entitlement %@.", @"com.apple.system.set-alert-tone"];
    if (handlerCopy)
    {
LABEL_17:
      handlerCopy[2](handlerCopy, v14, v18);
    }
  }
}

- (void)retrieveUserGeneratedVibrationPatternsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = 0;
  v5 = [(TLServiceAgent *)self _ensureDirectoryContainingUserGeneratedVibrationStoreFileExistsWithError:&v9];
  v6 = v9;
  v7 = 0;
  if (v5)
  {
    v8 = +[TLVibrationPersistenceUtilities userGeneratedVibrationStoreFileURL];
    v7 = [NSDictionary dictionaryWithContentsOfURL:v8];
    if (!v7)
    {
      v7 = +[NSDictionary dictionary];
    }
  }

  handlerCopy[2](handlerCopy, v7, v6);
}

- (void)setUserGeneratedVibrationPatterns:(id)patterns withCompletionHandler:(id)handler
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000212C;
  v7[3] = &unk_100008310;
  patternsCopy = patterns;
  v6 = patternsCopy;
  [(TLServiceAgent *)self _performBlockAffectingUserGeneratedVibrationPatterns:v7 withCompletionHandler:handler];
}

- (BOOL)_ensureDirectoryContainingUserGeneratedVibrationStoreFileExistsWithError:(id *)error
{
  v4 = +[TLVibrationPersistenceUtilities userGeneratedVibrationStoreFileURL];
  pathComponents = [v4 pathComponents];
  v6 = [pathComponents count];
  if (v6 >= 2)
  {
    v7 = [pathComponents subarrayWithRange:{0, v6 - 1}];
    if (v7)
    {
      v8 = v7;
      v9 = [NSString pathWithComponents:v7];

      if (v9)
      {
        v10 = +[NSFileManager defaultManager];
        v20 = 0;
        if ([v10 fileExistsAtPath:v9 isDirectory:&v20] && v20 == 1)
        {
          v11 = TLLogVibrationManagement();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "The directory containing user generated vibration store already exists.", buf, 2u);
          }

          goto LABEL_23;
        }

        v18 = 0;
        v14 = [v10 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v18];
        v15 = v18;
        v11 = v15;
        if (v14)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 0;
        }

        if (v16)
        {
          v20 = 0;
          if ([v10 fileExistsAtPath:v9 isDirectory:&v20] && (v20 & 1) != 0)
          {
LABEL_23:
            v12 = 1;
LABEL_27:

            goto LABEL_11;
          }

          v17 = TLLogVibrationManagement();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_100003A24(v17);
          }
        }

        else
        {
          v17 = TLLogVibrationManagement();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            sub_1000039AC(v11, v17);
          }
        }

        v12 = 0;
        goto LABEL_27;
      }
    }
  }

  v9 = TLLogVibrationManagement();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100003A68(v9);
  }

  v12 = 0;
LABEL_11:

  if (error && !v12)
  {
    *error = [NSError tl_errorWithDomain:@"TLServicePersistenceErrorDomain" description:@"Failed to create directory containing store file for user generated vibration: %@.", v4];
  }

  return v12;
}

- (void)_postUserGeneratedVibrationPatternsDidChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"TLVibrationManagerUserGeneratedVibrationsDidChange", 0, 0, 1u);
}

- (void)_performBlockAffectingUserGeneratedVibrationPatterns:(id)patterns withCompletionHandler:(id)handler
{
  patternsCopy = patterns;
  handlerCopy = handler;
  v15 = 0;
  v8 = [(TLServiceAgent *)self _ensureDirectoryContainingUserGeneratedVibrationStoreFileExistsWithError:&v15];
  v9 = v15;
  v10 = v9;
  if (v8)
  {
    v14 = v9;
    v11 = patternsCopy[2](patternsCopy, &v14);
    v12 = v14;

    if (v11)
    {
      [(TLServiceAgent *)self _postUserGeneratedVibrationPatternsDidChangeNotification];
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    v10 = v12;
  }

  else
  {
    v13 = 0;
  }

  handlerCopy[2](handlerCopy, v13, v10);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(TLServiceAgent *)self _connectionHasUserGeneratedVibrationPatternsReadAccessEntitlement:connectionCopy];
  v7 = v6 | [(TLServiceAgent *)self _connectionHasUserGeneratedVibrationPatternsWriteAccessEntitlement:connectionCopy];
  v8 = [(TLServiceAgent *)self _connectionHasTonePreferencesReadAccessEntitlement:connectionCopy];
  v9 = v7 | v8 | [(TLServiceAgent *)self _connectionHasTonePreferencesWriteAccessEntitlement:connectionCopy];
  if (v9)
  {
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TLServiceAgentInterface];
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
    [v10 setClasses:v12 forSelector:"retrieveCurrentTonePreferencesWithCompletionHandler:" argumentIndex:0 ofReply:1];

    [connectionCopy setExportedInterface:v10];
    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  else
  {
    v13 = TLLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100003AAC(connectionCopy, v13);
    }
  }

  return v9;
}

@end