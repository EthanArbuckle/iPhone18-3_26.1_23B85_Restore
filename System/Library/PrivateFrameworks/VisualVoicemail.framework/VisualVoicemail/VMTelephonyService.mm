@interface VMTelephonyService
- (VMTelephonyService)initWithTelephonyClient:(id)a3 telephonyClient:(id)a4;
- (void)dealloc;
- (void)excludeNotificationFromBackup:(id)a3;
- (void)executeHandlerForNotificationWithName:(id)a3 info:(id)a4;
- (void)saveNotification:(id)a3 info:(id)a4;
- (void)voicemailInfoAvailableNotification:(id)a3 voicemailInfo:(id)a4;
@end

@implementation VMTelephonyService

- (VMTelephonyService)initWithTelephonyClient:(id)a3 telephonyClient:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    [(VMTelephonyService *)v8 setQueue:v6];
    [(VMTelephonyService *)v8 setTelephonyClient:v7];
    [v7 addDelegate:v8 queue:v6];
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

  v5 = [(VMTelephonyService *)self telephonyClient];
  [v5 removeDelegate:self];

  v6.receiver = self;
  v6.super_class = VMTelephonyService;
  [(VMTelephonyService *)&v6 dealloc];
}

- (void)voicemailInfoAvailableNotification:(id)a3 voicemailInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
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
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v8 = v14;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling voicemail info available notification delegate callback for subscription %@, voicemail info %@", &v9, 0x34u);
  }
}

- (void)excludeNotificationFromBackup:(id)a3
{
  v3 = a3;
  v12 = 0;
  v4 = [v3 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v12];
  v5 = v12;
  v6 = sub_100002784();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      v8 = [v3 path];
      *buf = 136315650;
      v14 = "";
      v15 = 2080;
      v16 = "";
      v17 = 2112;
      v18 = v8;
      v9 = "#W %s%sNotification file at %@ excluded from backup";
      v10 = v6;
      v11 = 32;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else if (v7)
  {
    v8 = [v3 path];
    *buf = 136315906;
    v14 = "";
    v15 = 2080;
    v16 = "";
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v5;
    v9 = "#W %s%sError setting notification file at %@ to be excluded from backup with error %@";
    v10 = v6;
    v11 = 42;
    goto LABEL_6;
  }
}

- (void)saveNotification:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100002784();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v42 = "";
    v43 = 2080;
    v44 = "";
    v45 = 2112;
    v46 = v6;
    v47 = 2112;
    v48 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSaving notification for subscription %@ with info %@", buf, 0x2Au);
  }

  v9 = sub_100085730();
  v10 = +[NSFileManager defaultManager];
  v11 = [v9 path];
  v12 = [v10 fileExistsAtPath:v11];

  if ((v12 & 1) == 0)
  {
    v13 = sub_100002784();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v9 path];
      *buf = 136315650;
      v42 = "";
      v43 = 2080;
      v44 = "";
      v45 = 2112;
      v46 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating notification directory %@", buf, 0x20u);
    }

    v15 = +[NSFileManager defaultManager];
    v16 = [v9 path];
    v40 = 0;
    v17 = [v15 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v40];
    v18 = v40;

    if ((v17 & 1) == 0)
    {
      v19 = sub_100002784();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v9 path];
        *buf = 136315906;
        v42 = "";
        v43 = 2080;
        v44 = "";
        v45 = 2112;
        v46 = v20;
        v47 = 2112;
        v48 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#W %s%sError while creating notification directory at path: %@ error: %@", buf, 0x2Au);
      }
    }
  }

  v21 = [v6 accountID];
  v22 = sub_1000857D4(v21);

  v39 = 0;
  v23 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v39];
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
    v37 = self;
    v25 = objc_opt_new();
    v26 = objc_opt_class();
    v27 = [v6 accountID];
    v28 = [v26 hashedUUID:v27];
    v29 = [v28 UUIDString];

    v36 = v29;
    [v25 setObject:v29 forKey:@"Account"];
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

    v31 = [v22 path];
    v38 = 0;
    v32 = [v25 writeToFile:v31 options:805306369 error:&v38];
    v33 = v38;

    if ((v32 & 1) == 0)
    {
      v34 = sub_100002784();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v22 path];
        *buf = 136315906;
        v42 = "";
        v43 = 2080;
        v44 = "";
        v45 = 2112;
        v46 = v35;
        v47 = 2112;
        v48 = v33;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not save notification file at path %@ due to error %@", buf, 0x2Au);
      }
    }

    [(VMTelephonyService *)v37 excludeNotificationFromBackup:v22];
  }
}

- (void)executeHandlerForNotificationWithName:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
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
    v44 = v6;
    v45 = 2112;
    v46 = v7;
    v9 = v42;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ is handling notification %@ with user info %@", buf, 0x34u);
  }

  v10 = [v6 isEqualToString:kCTIndicatorsVoiceMailNotification];
  if (v7 && v10)
  {
    v11 = [CTVoicemailInfoType voicemailInfoTypeForDictionaryRepresentation:v7];
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
      v12 = [v7 objectForKeyedSubscript:kCTIndicatorVoiceMailSubInstance];
      if (v12)
      {
        v15 = [[NSUUID alloc] initWithUUIDString:v12];
        if (v15)
        {
          v16 = v15;
          v30 = v12;
          v31 = v11;
          v29 = self;
          v17 = [(VMTelephonyService *)self telephonyClient];
          v18 = [v17 contexts];
          v19 = [v18 subscriptions];

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v20 = v19;
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
                v26 = [v25 uuid];
                v27 = [v26 isEqual:v16];

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

                  [(VMTelephonyService *)v29 saveNotification:v25 info:v7];
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