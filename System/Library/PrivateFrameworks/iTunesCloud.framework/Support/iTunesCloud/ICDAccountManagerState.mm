@interface ICDAccountManagerState
+ (id)restoredStatedWithFallbackAccounts:(id)accounts;
+ (id)stateForAccounts:(id)accounts baseConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (id)_configurationForAccount:(id)account baseConfiguration:(id)configuration;
- (id)_initWithAccounts:(id)accounts activeAccount:(id)account baseConfiguration:(id)configuration;
- (id)_userIdentityForAccount:(id)account;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_updateSupportedConfigurationsDSIDs;
- (void)_updateSupportedConfigurationsWithAccounts:(id)accounts activeConfiguration:(id)configuration;
- (void)save;
@end

@implementation ICDAccountManagerState

- (id)_configurationForAccount:(id)account baseConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (account)
  {
    v7 = [(ICDAccountManagerState *)self _userIdentityForAccount:account];
    if (configurationCopy)
    {
      v8 = configurationCopy;
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

- (id)_userIdentityForAccount:(id)account
{
  if (account)
  {
    accountDSID = [account accountDSID];
    v4 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [accountDSID longLongValue]);
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
  supportedConfigurations = [(ICDAccountManagerState *)self supportedConfigurations];
  v5 = [v3 initWithCapacity:{objc_msgSend(supportedConfigurations, "count")}];

  supportedConfigurations2 = [(ICDAccountManagerState *)self supportedConfigurations];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007F3A4;
  v9[3] = &unk_1001DC178;
  v10 = v5;
  v7 = v5;
  [supportedConfigurations2 enumerateObjectsUsingBlock:v9];

  v8 = [v7 copy];
  [(ICDAccountManagerState *)self setSupportedConfigurationsDSIDs:v8];
}

- (void)_updateSupportedConfigurationsWithAccounts:(id)accounts activeConfiguration:(id)configuration
{
  accountsCopy = accounts;
  configurationCopy = configuration;
  if (MSVDeviceSupportsMultipleLibraries())
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = [configurationCopy copy];
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
    [accountsCopy enumerateObjectsUsingBlock:v20];
    v18 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v16 count];
      *buf = 134218240;
      selfCopy2 = self;
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
      userIdentity = [configurationCopy userIdentity];
      accountDSID = [userIdentity accountDSID];
      *buf = 134218242;
      selfCopy2 = self;
      v25 = 2112;
      v26 = accountDSID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerState %p - Supported configurations is active configuration - dsid=%@", buf, 0x16u);
    }

    if (configurationCopy)
    {
      [NSSet setWithObject:configurationCopy];
    }

    else
    {
      +[NSSet set];
    }
    v16 = ;
    [(ICDAccountManagerState *)self setSupportedConfigurations:v16];
  }
}

- (id)_initWithAccounts:(id)accounts activeAccount:(id)account baseConfiguration:(id)configuration
{
  accountsCopy = accounts;
  accountCopy = account;
  configurationCopy = configuration;
  v20.receiver = self;
  v20.super_class = ICDAccountManagerState;
  v11 = [(ICDAccountManagerState *)&v20 init];
  v12 = v11;
  if (v11)
  {
    v13 = [(ICDAccountManagerState *)v11 _configurationForAccount:accountCopy baseConfiguration:configurationCopy];
    activeConfiguration = v12->_activeConfiguration;
    v12->_activeConfiguration = v13;

    userIdentity = [(ICConnectionConfiguration *)v12->_activeConfiguration userIdentity];
    accountDSID = [userIdentity accountDSID];
    v17 = [accountDSID copy];
    activeConfigurationDSID = v12->_activeConfigurationDSID;
    v12->_activeConfigurationDSID = v17;

    [(ICDAccountManagerState *)v12 _updateSupportedConfigurationsWithAccounts:accountsCopy activeConfiguration:v12->_activeConfiguration];
    [(ICDAccountManagerState *)v12 _updateSupportedConfigurationsDSIDs];
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    activeConfiguration = [(ICDAccountManagerState *)self activeConfiguration];
    v7 = [activeConfiguration copyWithZone:zone];
    v8 = v5[3];
    v5[3] = v7;

    activeConfigurationDSID = [(ICDAccountManagerState *)self activeConfigurationDSID];
    v10 = [activeConfigurationDSID copyWithZone:zone];
    v11 = v5[4];
    v5[4] = v10;

    supportedConfigurations = [(ICDAccountManagerState *)self supportedConfigurations];
    v13 = [supportedConfigurations copyWithZone:zone];
    v14 = v5[1];
    v5[1] = v13;

    supportedConfigurationsDSIDs = [(ICDAccountManagerState *)self supportedConfigurationsDSIDs];
    v16 = [supportedConfigurationsDSIDs copyWithZone:zone];
    v17 = v5[2];
    v5[2] = v16;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      supportedConfigurationsDSIDs = [(ICDAccountManagerState *)v5 supportedConfigurationsDSIDs];
      supportedConfigurationsDSIDs2 = [(ICDAccountManagerState *)self supportedConfigurationsDSIDs];
      if ([supportedConfigurationsDSIDs isEqualToSet:supportedConfigurationsDSIDs2])
      {
        activeConfigurationDSID = [(ICDAccountManagerState *)v5 activeConfigurationDSID];
        activeConfigurationDSID2 = [(ICDAccountManagerState *)self activeConfigurationDSID];
        if (activeConfigurationDSID == activeConfigurationDSID2)
        {
          v10 = 1;
        }

        else
        {
          v10 = [activeConfigurationDSID isEqual:activeConfigurationDSID2];
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

  activeConfigurationDSID = [(ICDAccountManagerState *)self activeConfigurationDSID];

  if (activeConfigurationDSID)
  {
    activeConfigurationDSID2 = [(ICDAccountManagerState *)self activeConfigurationDSID];
    v7 = [NSString stringWithFormat:@"[active dsid=%@]", activeConfigurationDSID2];
    [v3 addObject:v7];
  }

  else
  {
    [v3 addObject:@"[no active dsid]"];
  }

  supportedConfigurationsDSIDs = [(ICDAccountManagerState *)self supportedConfigurationsDSIDs];
  v9 = [supportedConfigurationsDSIDs count];

  if (v9)
  {
    supportedConfigurationsDSIDs2 = [(ICDAccountManagerState *)self supportedConfigurationsDSIDs];
    allObjects = [supportedConfigurationsDSIDs2 allObjects];
    v12 = [allObjects componentsJoinedByString:{@", "}];
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
    selfCopy = self;
    v11 = 2112;
    selfCopy2 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "ICDAccountManagerState %p - Saving - %@", &v9, 0x16u);
  }

  activeConfigurationDSID = [(ICDAccountManagerState *)self activeConfigurationDSID];
  v5 = +[ICDDefaults daemonDefaults];
  [v5 setKnownActiveAccountDSID:activeConfigurationDSID];

  supportedConfigurationsDSIDs = [(ICDAccountManagerState *)self supportedConfigurationsDSIDs];
  allObjects = [supportedConfigurationsDSIDs allObjects];
  v8 = +[ICDDefaults daemonDefaults];
  [v8 setKnownAccountDSIDs:allObjects];
}

+ (id)stateForAccounts:(id)accounts baseConfiguration:(id)configuration
{
  accountsCopy = accounts;
  configurationCopy = configuration;
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
  selfCopy = self;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(accountsCopy, "count")}];
  v15 = v8;
  v16 = &v18;
  [accountsCopy enumerateObjectsUsingBlock:v14];
  v9 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v19[5];
    *buf = 134218498;
    selfCopy2 = self;
    v26 = 2112;
    v27 = v10;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerState %p - stateForAccounts:baseConfiguration: - activeAccount=%@ - supportedAccounts=%@", buf, 0x20u);
  }

  v11 = [self alloc];
  v12 = [v11 _initWithAccounts:v8 activeAccount:v19[5] baseConfiguration:configurationCopy];

  _Block_object_dispose(&v18, 8);

  return v12;
}

+ (id)restoredStatedWithFallbackAccounts:(id)accounts
{
  accountsCopy = accounts;
  v5 = +[ICDDefaults daemonDefaults];
  knownActiveAccountDSID = [v5 knownActiveAccountDSID];

  v7 = +[ICDDefaults daemonDefaults];
  knownAccountDSIDs = [v7 knownAccountDSIDs];
  v9 = [NSSet setWithArray:knownAccountDSIDs];

  v10 = [v9 count];
  v11 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = self;
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
    v24 = knownActiveAccountDSID;
    p_buf = &buf;
    [accountsCopy enumerateObjectsUsingBlock:&v18];
    v15 = [self alloc];
    v16 = [v15 _initWithAccounts:v14 activeAccount:*(*(&buf + 1) + 40) baseConfiguration:{0, v18, v19, v20, v21}];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (v12)
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerState %p - restoredStatedWithAccountStore: - Restoring from all accounts [no known accounts]", &buf, 0xCu);
    }

    v16 = [objc_opt_class() stateForAccounts:accountsCopy baseConfiguration:0];
  }

  return v16;
}

@end