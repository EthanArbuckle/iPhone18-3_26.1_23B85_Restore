@interface ICDAccountManagerState
+ (id)restoredStatedWithFallbackAccounts:(id)a3;
+ (id)stateForAccounts:(id)a3 baseConfiguration:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_configurationForAccount:(id)a3 baseConfiguration:(id)a4;
- (id)_initWithAccounts:(id)a3 activeAccount:(id)a4 baseConfiguration:(id)a5;
- (id)_userIdentityForAccount:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_updateSupportedConfigurationsDSIDs;
- (void)_updateSupportedConfigurationsWithAccounts:(id)a3 activeConfiguration:(id)a4;
- (void)save;
@end

@implementation ICDAccountManagerState

- (id)_configurationForAccount:(id)a3 baseConfiguration:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [(ICDAccountManagerState *)self _userIdentityForAccount:a3];
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_opt_new();
    }

    v10 = v8;
    v9 = [ICConnectionConfiguration configurationFromSourceConfiguration:v8 userIdentity:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_userIdentityForAccount:(id)a3
{
  if (a3)
  {
    v3 = [a3 accountDSID];
    v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v3 longLongValue]);
    v5 = [ICUserIdentity specificAccountWithDSID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateSupportedConfigurationsDSIDs
{
  v3 = [NSMutableSet alloc];
  v4 = [(ICDAccountManagerState *)self supportedConfigurations];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(ICDAccountManagerState *)self supportedConfigurations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007F3A4;
  v9[3] = &unk_1001DC178;
  v10 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v9];

  v8 = [v7 copy];
  [(ICDAccountManagerState *)self setSupportedConfigurationsDSIDs:v8];
}

- (void)_updateSupportedConfigurationsWithAccounts:(id)a3 activeConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (MSVDeviceSupportsMultipleLibraries())
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = [v7 copy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_opt_new();
    }

    v15 = v11;

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10007F690;
    v20[3] = &unk_1001DC150;
    v20[4] = self;
    v21 = v15;
    v16 = v8;
    v22 = v16;
    v17 = v15;
    [v6 enumerateObjectsUsingBlock:v20];
    v18 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 count];
      *buf = 134218240;
      v24 = self;
      v25 = 2048;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerState %p - Supported configurations contains %lu configurations", buf, 0x16u);
    }

    [(ICDAccountManagerState *)self setSupportedConfigurations:v16];
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 userIdentity];
      v14 = [v13 accountDSID];
      *buf = 134218242;
      v24 = self;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerState %p - Supported configurations is active configuration - dsid=%@", buf, 0x16u);
    }

    if (v7)
    {
      [NSSet setWithObject:v7];
    }

    else
    {
      +[NSSet set];
    }
    v16 = ;
    [(ICDAccountManagerState *)self setSupportedConfigurations:v16];
  }
}

- (id)_initWithAccounts:(id)a3 activeAccount:(id)a4 baseConfiguration:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20.receiver = self;
  v20.super_class = ICDAccountManagerState;
  v11 = [(ICDAccountManagerState *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(ICDAccountManagerState *)v11 _configurationForAccount:v9 baseConfiguration:v10];
    activeConfiguration = v12->_activeConfiguration;
    v12->_activeConfiguration = v13;

    v15 = [(ICConnectionConfiguration *)v12->_activeConfiguration userIdentity];
    v16 = [v15 accountDSID];
    v17 = [v16 copy];
    activeConfigurationDSID = v12->_activeConfigurationDSID;
    v12->_activeConfigurationDSID = v17;

    [(ICDAccountManagerState *)v12 _updateSupportedConfigurationsWithAccounts:v8 activeConfiguration:v12->_activeConfiguration];
    [(ICDAccountManagerState *)v12 _updateSupportedConfigurationsDSIDs];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(ICDAccountManagerState *)self activeConfiguration];
    v7 = [v6 copyWithZone:a3];
    v8 = v5[3];
    v5[3] = v7;

    v9 = [(ICDAccountManagerState *)self activeConfigurationDSID];
    v10 = [v9 copyWithZone:a3];
    v11 = v5[4];
    v5[4] = v10;

    v12 = [(ICDAccountManagerState *)self supportedConfigurations];
    v13 = [v12 copyWithZone:a3];
    v14 = v5[1];
    v5[1] = v13;

    v15 = [(ICDAccountManagerState *)self supportedConfigurationsDSIDs];
    v16 = [v15 copyWithZone:a3];
    v17 = v5[2];
    v5[2] = v16;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ICDAccountManagerState *)v5 supportedConfigurationsDSIDs];
      v7 = [(ICDAccountManagerState *)self supportedConfigurationsDSIDs];
      if ([v6 isEqualToSet:v7])
      {
        v8 = [(ICDAccountManagerState *)v5 activeConfigurationDSID];
        v9 = [(ICDAccountManagerState *)self activeConfigurationDSID];
        if (v8 == v9)
        {
          v10 = 1;
        }

        else
        {
          v10 = [v8 isEqual:v9];
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [NSString stringWithFormat:@"ICDAccountManagerState %p:", self];
  [v3 addObject:v4];

  v5 = [(ICDAccountManagerState *)self activeConfigurationDSID];

  if (v5)
  {
    v6 = [(ICDAccountManagerState *)self activeConfigurationDSID];
    v7 = [NSString stringWithFormat:@"[active dsid=%@]", v6];
    [v3 addObject:v7];
  }

  else
  {
    [v3 addObject:@"[no active dsid]"];
  }

  v8 = [(ICDAccountManagerState *)self supportedConfigurationsDSIDs];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(ICDAccountManagerState *)self supportedConfigurationsDSIDs];
    v11 = [v10 allObjects];
    v12 = [v11 componentsJoinedByString:{@", "}];
    v13 = [NSString stringWithFormat:@"[supported dsids=%@]", v12];
    [v3 addObject:v13];
  }

  else
  {
    [v3 addObject:@"[no supported dsids]"];
  }

  v14 = [v3 componentsJoinedByString:@" "];

  return v14;
}

- (void)save
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218242;
    v10 = self;
    v11 = 2112;
    v12 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "ICDAccountManagerState %p - Saving - %@", &v9, 0x16u);
  }

  v4 = [(ICDAccountManagerState *)self activeConfigurationDSID];
  v5 = +[ICDDefaults daemonDefaults];
  [v5 setKnownActiveAccountDSID:v4];

  v6 = [(ICDAccountManagerState *)self supportedConfigurationsDSIDs];
  v7 = [v6 allObjects];
  v8 = +[ICDDefaults daemonDefaults];
  [v8 setKnownAccountDSIDs:v7];
}

+ (id)stateForAccounts:(id)a3 baseConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10007FF28;
  v22 = sub_10007FF38;
  v23 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10007FF40;
  v14[3] = &unk_1001DC128;
  v17 = a1;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v15 = v8;
  v16 = &v18;
  [v6 enumerateObjectsUsingBlock:v14];
  v9 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v19[5];
    *buf = 134218498;
    v25 = a1;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerState %p - stateForAccounts:baseConfiguration: - activeAccount=%@ - supportedAccounts=%@", buf, 0x20u);
  }

  v11 = [a1 alloc];
  v12 = [v11 _initWithAccounts:v8 activeAccount:v19[5] baseConfiguration:v7];

  _Block_object_dispose(&v18, 8);

  return v12;
}

+ (id)restoredStatedWithFallbackAccounts:(id)a3
{
  v4 = a3;
  v5 = +[ICDDefaults daemonDefaults];
  v6 = [v5 knownActiveAccountDSID];

  v7 = +[ICDDefaults daemonDefaults];
  v8 = [v7 knownAccountDSIDs];
  v9 = [NSSet setWithArray:v8];

  v10 = [v9 count];
  v11 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerState %p - restoredStatedWithAccountStore: - Restoring from known accounts", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = sub_10007FF28;
    v29 = sub_10007FF38;
    v30 = 0;
    v13 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_100080354;
    v21 = &unk_1001DC100;
    v22 = v9;
    v14 = v13;
    v23 = v14;
    v24 = v6;
    p_buf = &buf;
    [v4 enumerateObjectsUsingBlock:&v18];
    v15 = [a1 alloc];
    v16 = [v15 _initWithAccounts:v14 activeAccount:*(*(&buf + 1) + 40) baseConfiguration:{0, v18, v19, v20, v21}];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (v12)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerState %p - restoredStatedWithAccountStore: - Restoring from all accounts [no known accounts]", &buf, 0xCu);
    }

    v16 = [objc_opt_class() stateForAccounts:v4 baseConfiguration:0];
  }

  return v16;
}

@end