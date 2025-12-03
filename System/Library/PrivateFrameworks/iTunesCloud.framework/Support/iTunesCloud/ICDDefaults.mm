@interface ICDDefaults
+ (ICDDefaults)daemonDefaults;
- (BOOL)lastKnownExplicitContentAllowed;
- (BOOL)lastKnownMusicVideosAllowed;
- (NSArray)knownAccountDSIDs;
- (NSData)pendingBackgroundTasksData;
- (NSString)knownActiveAccountDSID;
- (id)_init;
- (int64_t)lastKnownMusicSubscriptionType;
- (void)_setOrRemoveObject:(id)object forKey:(id)key;
- (void)setKnownAccountDSIDs:(id)ds;
- (void)setKnownActiveAccountDSID:(id)d;
- (void)setLastKnownMusicSubscriptionType:(int64_t)type;
- (void)setPendingBackgroundTasksData:(id)data;
@end

@implementation ICDDefaults

- (void)_setOrRemoveObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  userDefaults = [(ICDDefaults *)self userDefaults];
  v8 = userDefaults;
  if (objectCopy)
  {
    [userDefaults setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    [userDefaults removeObjectForKey:keyCopy];
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
    isInternalBuild = [v5 isInternalBuild];

    if (isInternalBuild)
    {
      v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.itunescloud.daemon.internal"];
      internalDefaults = v2->_internalDefaults;
      v2->_internalDefaults = v7;
    }
  }

  return v2;
}

- (void)setLastKnownMusicSubscriptionType:(int64_t)type
{
  userDefaults = [(ICDDefaults *)self userDefaults];
  [userDefaults setInteger:type forKey:@"ICDDefaultsKeyLastKnownMusicSubscriptionType"];
}

- (int64_t)lastKnownMusicSubscriptionType
{
  userDefaults = [(ICDDefaults *)self userDefaults];
  v3 = [userDefaults integerForKey:@"ICDDefaultsKeyLastKnownMusicSubscriptionType"];

  return v3;
}

- (BOOL)lastKnownMusicVideosAllowed
{
  userDefaults = [(ICDDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"ICDDefaultsKeyLastKnownMusicVideosAllowed"];

  return v3;
}

- (BOOL)lastKnownExplicitContentAllowed
{
  userDefaults = [(ICDDefaults *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"ICDDefaultsKeyLastKnownExplicitContentAllowed"];

  return v3;
}

- (void)setPendingBackgroundTasksData:(id)data
{
  dataCopy = data;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = dataCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ICDDefaults %p - setPendingBackgroundTasksData: %@", &v6, 0x16u);
  }

  [(ICDDefaults *)self _setOrRemoveObject:dataCopy forKey:@"ICDDefaultsKeyPendingBackgroundTasksData"];
}

- (NSData)pendingBackgroundTasksData
{
  userDefaults = [(ICDDefaults *)self userDefaults];
  v4 = [userDefaults dataForKey:@"ICDDefaultsKeyPendingBackgroundTasksData"];

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
    selfCopy = self;
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

- (void)setKnownActiveAccountDSID:(id)d
{
  dCopy = d;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ICDDefaults %p - setKnownActiveAccountDSID: %@", &v6, 0x16u);
  }

  [(ICDDefaults *)self _setOrRemoveObject:dCopy forKey:@"ICDDefaultsKeyKnownActiveAccountDSID"];
}

- (NSString)knownActiveAccountDSID
{
  userDefaults = [(ICDDefaults *)self userDefaults];
  v4 = [userDefaults stringForKey:@"ICDDefaultsKeyKnownActiveAccountDSID"];

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
    selfCopy = self;
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

- (void)setKnownAccountDSIDs:(id)ds
{
  dsCopy = ds;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134218242;
    selfCopy = self;
    v8 = 2112;
    v9 = dsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "ICDDefaults %p - setKnownAccountDSIDs: %@", &v6, 0x16u);
  }

  [(ICDDefaults *)self _setOrRemoveObject:dsCopy forKey:@"ICDDefaultsKeyKnowAccountDSIDs"];
}

- (NSArray)knownAccountDSIDs
{
  userDefaults = [(ICDDefaults *)self userDefaults];
  v4 = [userDefaults objectForKey:@"ICDDefaultsKeyKnowAccountDSIDs"];

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
    selfCopy = self;
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