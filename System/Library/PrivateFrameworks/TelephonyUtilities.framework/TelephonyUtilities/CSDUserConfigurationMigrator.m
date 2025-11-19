@interface CSDUserConfigurationMigrator
- (CSDUserConfigurationMigrator)init;
- (void)migrateAnnounceCalls;
- (void)migrateConversationLinkBaseURL;
- (void)perform;
@end

@implementation CSDUserConfigurationMigrator

- (CSDUserConfigurationMigrator)init
{
  v6.receiver = self;
  v6.super_class = CSDUserConfigurationMigrator;
  v2 = [(CSDUserConfigurationMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v2->_userConfiguration;
    v2->_userConfiguration = v3;
  }

  return v2;
}

- (void)perform
{
  [(CSDUserConfigurationMigrator *)self migrateAnnounceCalls];

  [(CSDUserConfigurationMigrator *)self migrateConversationLinkBaseURL];
}

- (void)migrateAnnounceCalls
{
  v3 = [(CSDUserConfigurationMigrator *)self userConfiguration];
  v4 = [v3 announceCalls];

  if (!v4)
  {
    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.InCallService"];
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migrator is looking for legacy Announce Calls setting in %@", &v13, 0xCu);
    }

    v7 = [v5 objectForKey:@"announcements"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v9 = sub_100004778();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (isKindOfClass)
    {
      if (v10)
      {
        v13 = 138412290;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migrator found legacy Announce Calls setting %@", &v13, 0xCu);
      }

      v11 = [v7 unsignedIntegerValue] - 1;
      if (v11 > 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = qword_10057A250[v11];
      }

      v9 = [(CSDUserConfigurationMigrator *)self userConfiguration];
      [v9 setAnnounceCalls:v12];
    }

    else if (v10)
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Migrator did not find legacy Announce Calls setting in %@", &v13, 0xCu);
    }

    [v5 removeObjectForKey:@"announcements"];
  }
}

- (void)migrateConversationLinkBaseURL
{
  v3 = [(CSDUserConfigurationMigrator *)self userConfiguration];
  v4 = [v3 conversationLinkBaseURL];

  if (v4)
  {
    v5 = +[NSUserDefaults tu_defaults];
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Migrator is looking for legacy Conversation Link Base URL setting in %@", &v11, 0xCu);
    }

    v7 = [v5 stringForKey:@"GondolaLinkOverrideBaseURL"];
    v8 = sub_100004778();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v11 = 138412290;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Migrator found legacy Conversation Link Base URL setting %@", &v11, 0xCu);
      }

      v8 = [[NSURL alloc] initWithString:v7];
      v10 = [(CSDUserConfigurationMigrator *)self userConfiguration];
      [v10 setConversationLinkBaseURL:v8];
    }

    else if (v9)
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Migrator did not find legacy Conversation Link Base URL setting in %@", &v11, 0xCu);
    }

    [v5 removeObjectForKey:@"GondolaLinkOverrideBaseURL"];
  }
}

@end