@interface VMTelephonyService
- (VMTelephonyService)initWithTelephonyClient:(id)client telephonyClient:(id)telephonyClient;
- (void)dealloc;
- (void)excludeNotificationFromBackup:(id)backup;
- (void)executeHandlerForNotificationWithName:(id)name info:(id)info;
- (void)saveNotification:(id)notification info:(id)info;
- (void)voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info;
@end

@implementation VMTelephonyService

- (VMTelephonyService)initWithTelephonyClient:(id)client telephonyClient:(id)telephonyClient
{
  clientCopy = client;
  telephonyClientCopy = telephonyClient;
  v13.receiver = self;
  v13.super_class = VMTelephonyService;
  v8 = [(VMTelephonyService *)&v13 init];
  if (v8)
  {
    v9 = sub_100002784();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 136315650;
      v15 = "";
      v16 = 2080;
      v17 = "";
      v18 = 2112;
      v19 = v10;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ init", buf, 0x20u);
    }

    [(VMTelephonyService *)v8 setQueue:clientCopy];
    [(VMTelephonyService *)v8 setTelephonyClient:telephonyClientCopy];
    [telephonyClientCopy addDelegate:v8 queue:clientCopy];
  }

  return v8;
}

- (void)dealloc
{
  v3 = sub_100002784();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v8 = "";
    v9 = 2080;
    v10 = "";
    v11 = 2112;
    v12 = objc_opt_class();
    v4 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s+++> %@ dealoc", buf, 0x20u);
  }

  telephonyClient = [(VMTelephonyService *)self telephonyClient];
  [telephonyClient removeDelegate:self];

  v6.receiver = self;
  v6.super_class = VMTelephonyService;
  [(VMTelephonyService *)&v6 dealloc];
}

- (void)voicemailInfoAvailableNotification:(id)notification voicemailInfo:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  v7 = sub_100002784();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136316162;
    v10 = "";
    v11 = 2080;
    v12 = "";
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2112;
    v16 = notificationCopy;
    v17 = 2112;
    v18 = infoCopy;
    v8 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling voicemail info available notification delegate callback for subscription %@, voicemail info %@", &v9, 0x34u);
  }
}

- (void)excludeNotificationFromBackup:(id)backup
{
  backupCopy = backup;
  v12 = 0;
  v4 = [backupCopy setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v12];
  v5 = v12;
  v6 = sub_100002784();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      path = [backupCopy path];
      *buf = 136315650;
      v14 = "";
      v15 = 2080;
      v16 = "";
      v17 = 2112;
      v18 = path;
      v9 = "#W %s%sNotification file at %@ excluded from backup";
      v10 = v6;
      v11 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else if (v7)
  {
    path = [backupCopy path];
    *buf = 136315906;
    v14 = "";
    v15 = 2080;
    v16 = "";
    v17 = 2112;
    v18 = path;
    v19 = 2112;
    v20 = v5;
    v9 = "#W %s%sError setting notification file at %@ to be excluded from backup with error %@";
    v10 = v6;
    v11 = 42;
    goto LABEL_6;
  }
}

- (void)saveNotification:(id)notification info:(id)info
{
  notificationCopy = notification;
  infoCopy = info;
  v8 = sub_100002784();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v42 = "";
    v43 = 2080;
    v44 = "";
    v45 = 2112;
    v46 = notificationCopy;
    v47 = 2112;
    v48 = infoCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSaving notification for subscription %@ with info %@", buf, 0x2Au);
  }

  v9 = sub_100085730();
  v10 = +[NSFileManager defaultManager];
  path = [v9 path];
  v12 = [v10 fileExistsAtPath:path];

  if ((v12 & 1) == 0)
  {
    v13 = sub_100002784();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [v9 path];
      *buf = 136315650;
      v42 = "";
      v43 = 2080;
      v44 = "";
      v45 = 2112;
      v46 = path2;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating notification directory %@", buf, 0x20u);
    }

    v15 = +[NSFileManager defaultManager];
    path3 = [v9 path];
    v40 = 0;
    v17 = [v15 createDirectoryAtPath:path3 withIntermediateDirectories:1 attributes:0 error:&v40];
    v18 = v40;

    if ((v17 & 1) == 0)
    {
      v19 = sub_100002784();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        path4 = [v9 path];
        *buf = 136315906;
        v42 = "";
        v43 = 2080;
        v44 = "";
        v45 = 2112;
        v46 = path4;
        v47 = 2112;
        v48 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%sError while creating notification directory at path: %@ error: %@", buf, 0x2Au);
      }
    }
  }

  accountID = [notificationCopy accountID];
  v22 = sub_1000857D4(accountID);

  v39 = 0;
  v23 = [NSKeyedArchiver archivedDataWithRootObject:infoCopy requiringSecureCoding:1 error:&v39];
  v24 = v39;
  if (v24)
  {
    v25 = sub_100002784();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v42 = "";
      v43 = 2080;
      v44 = "";
      v45 = 2112;
      v46 = v24;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#W %s%sError encoding data notification: %@", buf, 0x20u);
    }
  }

  else
  {
    selfCopy = self;
    v25 = objc_opt_new();
    v26 = objc_opt_class();
    accountID2 = [notificationCopy accountID];
    v28 = [v26 hashedUUID:accountID2];
    uUIDString = [v28 UUIDString];

    v36 = uUIDString;
    [v25 setObject:uUIDString forKey:@"Account"];
    [v25 setObject:v23 forKey:@"Info"];
    v30 = sub_100002784();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v42 = "";
      v43 = 2080;
      v44 = "";
      v45 = 2112;
      v46 = v25;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%s=== notificationsDictionary to save %@", buf, 0x20u);
    }

    path5 = [v22 path];
    v38 = 0;
    v32 = [v25 writeToFile:path5 options:805306369 error:&v38];
    v33 = v38;

    if ((v32 & 1) == 0)
    {
      v34 = sub_100002784();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        path6 = [v22 path];
        *buf = 136315906;
        v42 = "";
        v43 = 2080;
        v44 = "";
        v45 = 2112;
        v46 = path6;
        v47 = 2112;
        v48 = v33;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not save notification file at path %@ due to error %@", buf, 0x2Au);
      }
    }

    [(VMTelephonyService *)selfCopy excludeNotificationFromBackup:v22];
  }
}

- (void)executeHandlerForNotificationWithName:(id)name info:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v8 = sub_100002784();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v38 = "";
    v39 = 2080;
    v40 = "";
    v41 = 2112;
    v42 = objc_opt_class();
    v43 = 2112;
    v44 = nameCopy;
    v45 = 2112;
    v46 = infoCopy;
    v9 = v42;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling notification %@ with user info %@", buf, 0x34u);
  }

  v10 = [nameCopy isEqualToString:kCTIndicatorsVoiceMailNotification];
  if (infoCopy && v10)
  {
    v11 = [CTVoicemailInfoType voicemailInfoTypeForDictionaryRepresentation:infoCopy];
    if ([v11 isVoiceMailMWI])
    {
      v12 = sub_100002784();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        *buf = 136315650;
        v38 = "";
        v39 = 2080;
        v40 = "";
        v41 = 2112;
        v42 = v13;
        v14 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is ignoring MWI notification", buf, 0x20u);
      }
    }

    else
    {
      v12 = [infoCopy objectForKeyedSubscript:kCTIndicatorVoiceMailSubInstance];
      if (v12)
      {
        v15 = [[NSUUID alloc] initWithUUIDString:v12];
        if (v15)
        {
          v16 = v15;
          v30 = v12;
          v31 = v11;
          selfCopy = self;
          telephonyClient = [(VMTelephonyService *)self telephonyClient];
          contexts = [telephonyClient contexts];
          subscriptions = [contexts subscriptions];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v20 = subscriptions;
          v21 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v33;
            while (2)
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v33 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v32 + 1) + 8 * i);
                uuid = [v25 uuid];
                v27 = [uuid isEqual:v16];

                if (v27)
                {
                  v28 = sub_100002784();
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315650;
                    v38 = "";
                    v39 = 2080;
                    v40 = "";
                    v41 = 2112;
                    v42 = v25;
                    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding notification for subscription %@", buf, 0x20u);
                  }

                  [(VMTelephonyService *)selfCopy saveNotification:v25 info:infoCopy];
                  goto LABEL_22;
                }
              }

              v22 = [v20 countByEnumeratingWithState:&v32 objects:v36 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }
          }

LABEL_22:

          v12 = v30;
          v11 = v31;
        }
      }
    }
  }
}

@end