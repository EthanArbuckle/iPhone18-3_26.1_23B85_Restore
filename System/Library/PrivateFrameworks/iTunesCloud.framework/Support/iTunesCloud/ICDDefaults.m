@interface ICDDefaults
+ (ICDDefaults)daemonDefaults;
- (BOOL)lastKnownExplicitContentAllowed;
- (BOOL)lastKnownMusicVideosAllowed;
- (NSArray)knownAccountDSIDs;
- (NSData)pendingBackgroundTasksData;
- (NSString)knownActiveAccountDSID;
- (id)_init;
- (int64_t)lastKnownMusicSubscriptionType;
- (void)_setOrRemoveObject:(id)a3 forKey:(id)a4;
- (void)setKnownAccountDSIDs:(id)a3;
- (void)setKnownActiveAccountDSID:(id)a3;
- (void)setLastKnownMusicSubscriptionType:(int64_t)a3;
- (void)setPendingBackgroundTasksData:(id)a3;
@end

@implementation ICDDefaults

- (void)_setOrRemoveObject:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(ICDDefaults *)self userDefaults];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (id)_init
{
  v10.receiver = self;
  v10.super_class = ICDDefaults;
  v2 = [(ICDDefaults *)&v10 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.itunescloud.daemon"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;

    v5 = +[ICDeviceInfo currentDeviceInfo];
    v6 = [v5 isInternalBuild];

    if (v6)
    {
      v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.itunescloud.daemon.internal"];
      internalDefaults = v2->_internalDefaults;
      v2->_internalDefaults = v7;
    }
  }

  return v2;
}

- (void)setLastKnownMusicSubscriptionType:(int64_t)a3
{
  v4 = [(ICDDefaults *)self userDefaults];
  [v4 setInteger:a3 forKey:@"ICDDefaultsKeyLastKnownMusicSubscriptionType"];
}

- (int64_t)lastKnownMusicSubscriptionType
{
  v2 = [(ICDDefaults *)self userDefaults];
  v3 = [v2 integerForKey:@"ICDDefaultsKeyLastKnownMusicSubscriptionType"];

  return v3;
}

- (BOOL)lastKnownMusicVideosAllowed
{
  v2 = [(ICDDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"ICDDefaultsKeyLastKnownMusicVideosAllowed"];

  return v3;
}

- (BOOL)lastKnownExplicitContentAllowed
{
  v2 = [(ICDDefaults *)self userDefaults];
  v3 = [v2 BOOLForKey:@"ICDDefaultsKeyLastKnownExplicitContentAllowed"];

  return v3;
}

- (void)setPendingBackgroundTasksData:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ICDDefaults %p - setPendingBackgroundTasksData: %@", &v6, 0x16u);
  }

  [(ICDDefaults *)self _setOrRemoveObject:v4 forKey:@"ICDDefaultsKeyPendingBackgroundTasksData"];
}

- (NSData)pendingBackgroundTasksData
{
  v3 = [(ICDDefaults *)self userDefaults];
  v4 = [v3 dataForKey:@"ICDDefaultsKeyPendingBackgroundTasksData"];

  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if ([(NSData *)v4 isNSData])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v10 = 134218242;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ICDDefaults %p - pendingBackgroundTasksData: %@", &v10, 0x16u);
  }

  if ([(NSData *)v4 isNSData])
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)setKnownActiveAccountDSID:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ICDDefaults %p - setKnownActiveAccountDSID: %@", &v6, 0x16u);
  }

  [(ICDDefaults *)self _setOrRemoveObject:v4 forKey:@"ICDDefaultsKeyKnownActiveAccountDSID"];
}

- (NSString)knownActiveAccountDSID
{
  v3 = [(ICDDefaults *)self userDefaults];
  v4 = [v3 stringForKey:@"ICDDefaultsKeyKnownActiveAccountDSID"];

  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if ([v4 isNSString])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v10 = 134218242;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ICDDefaults %p - knownActiveAccountDSID: %@", &v10, 0x16u);
  }

  if ([v4 isNSString])
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)setKnownAccountDSIDs:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ICDDefaults %p - setKnownAccountDSIDs: %@", &v6, 0x16u);
  }

  [(ICDDefaults *)self _setOrRemoveObject:v4 forKey:@"ICDDefaultsKeyKnowAccountDSIDs"];
}

- (NSArray)knownAccountDSIDs
{
  v3 = [(ICDDefaults *)self userDefaults];
  v4 = [v3 objectForKey:@"ICDDefaultsKeyKnowAccountDSIDs"];

  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if ([(NSArray *)v4 isNSArray])
    {
      v6 = v4;
    }

    else
    {
      v6 = &__NSArray0__struct;
    }

    v10 = 134218242;
    v11 = self;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ICDDefaults %p - knownActiveAccountDSID: %@", &v10, 0x16u);
  }

  if ([(NSArray *)v4 isNSArray])
  {
    v7 = v4;
  }

  else
  {
    v7 = &__NSArray0__struct;
  }

  v8 = v7;

  return v7;
}

+ (ICDDefaults)daemonDefaults
{
  if (qword_100213AD0 != -1)
  {
    dispatch_once(&qword_100213AD0, &stru_1001DA730);
  }

  v3 = qword_100213AC8;

  return v3;
}

@end