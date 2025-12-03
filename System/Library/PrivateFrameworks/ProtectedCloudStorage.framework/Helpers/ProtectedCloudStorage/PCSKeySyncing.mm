@interface PCSKeySyncing
+ (id)defaultSyncingManager;
- (BOOL)iCDPStatus;
- (BOOL)saveClient:(id)client;
- (BOOL)setiCDPStatus:(BOOL)status;
- (BOOL)storePCSKeyData:(id)data current:(BOOL)current;
- (BOOL)updateSyncDevice:(id)device version:(id)version;
- (PCSKeySyncing)init;
- (_PCSIdentitySetData)copyIdentitySet;
- (id)allClients;
- (id)copyAllPCSKeys:(id *)keys;
- (id)copySHA256Hash:(id)hash;
- (id)dsid;
- (id)getClientWithIdentifier:(id)identifier;
- (id)outStandingPCSKeys:(id)keys;
- (id)pcsKeyData:(id)data;
- (id)syncDevices;
- (id)userRegistry;
- (void)addUpdateNotify:(id)notify;
- (void)signalComplete:(id)complete;
- (void)syncKeysWithDatabase;
- (void)updateClient:(id)client;
- (void)updateProtocolVersionIfNeeded:(id)needed;
@end

@implementation PCSKeySyncing

+ (id)defaultSyncingManager
{
  if (qword_100040770 != -1)
  {
    sub_100022C5C();
  }

  v3 = qword_100040768;

  return v3;
}

- (PCSKeySyncing)init
{
  v6.receiver = self;
  v6.super_class = PCSKeySyncing;
  v2 = [(PCSKeySyncing *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSUserDefaults);
    [(PCSKeySyncing *)v2 setSettings:v3];

    v4 = +[PCSAccountsModel defaultAccountsModel];
    [(PCSKeySyncing *)v2 setAccounts:v4];
  }

  return v2;
}

- (id)userRegistry
{
  dsid = [(PCSKeySyncing *)self dsid];
  if (dsid)
  {
    v3 = [[UserRegistryDB alloc] initWithDSID:dsid];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dsid
{
  accounts = [(PCSKeySyncing *)self accounts];
  dsid = [accounts dsid];

  return dsid;
}

- (void)addUpdateNotify:(id)notify
{
  notifyCopy = notify;
  notifyHooks = self->_notifyHooks;
  v9 = notifyCopy;
  if (!notifyHooks)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_notifyHooks;
    self->_notifyHooks = v6;

    notifyCopy = v9;
    notifyHooks = self->_notifyHooks;
  }

  v8 = objc_retainBlock(notifyCopy);
  [(NSMutableArray *)notifyHooks addObject:v8];
}

- (void)signalComplete:(id)complete
{
  completeCopy = complete;
  notifyHooks = self->_notifyHooks;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000177A4;
  v7[3] = &unk_1000395B0;
  v8 = completeCopy;
  v6 = completeCopy;
  [(NSMutableArray *)notifyHooks enumerateObjectsUsingBlock:v7];
}

- (_PCSIdentitySetData)copyIdentitySet
{
  accounts = [(PCSKeySyncing *)self accounts];
  dsid = [accounts dsid];

  if (dsid)
  {
    v10 = kPCSSetupDSID;
    v11 = dsid;
    v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v6 = PCSIdentitySetCreate();
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      accounts2 = [(PCSKeySyncing *)self accounts];
      lastError = [accounts2 lastError];
      *buf = 138412290;
      v13 = lastError;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to fetch dsid from accounts: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)pcsKeyData:(id)data
{
  dataCopy = data;
  copyIdentitySet = [(PCSKeySyncing *)self copyIdentitySet];
  if (!copyIdentitySet)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Failed to get identity set for pcsKey extraction";
      v10 = 2;
LABEL_11:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, buf, v10);
    }

LABEL_12:
    v8 = 0;
    goto LABEL_13;
  }

  v6 = copyIdentitySet;
  v7 = PCSIdentitySetCopyIdentity();
  CFRelease(v6);
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = dataCopy;
      v9 = "Failed to get identity for public key %@";
      v10 = 12;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v8 = PCSIdentityCopyExportedPrivateKey();
  if (!v8 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get exported data for identity %@: %@", buf, 0x16u);
  }

  CFRelease(v7);
LABEL_13:

  return v8;
}

- (BOOL)storePCSKeyData:(id)data current:(BOOL)current
{
  currentCopy = current;
  dataCopy = data;
  copyIdentitySet = [(PCSKeySyncing *)self copyIdentitySet];
  if (!copyIdentitySet)
  {
    v13 = 0;
    goto LABEL_19;
  }

  v8 = copyIdentitySet;
  v9 = PCSIdentityCreateWithExportedPrivateKey();
  if (!v9)
  {
    CFRelease(v8);
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to parse key data: %@", buf, 0xCu);
    }

    goto LABEL_17;
  }

  v10 = v9;
  PCSIdentityGetPublicKey();
  v11 = PCSIdentitySetCopyIdentity();
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Already have a local copy of: %@", buf, 0xCu);
    }

    CFRelease(v12);
    goto LABEL_11;
  }

  if ((PCSIdentitySetAddIdentityWithError() & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v10;
      v17 = 2112;
      v18 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to store identity %@: %@", buf, 0x16u);
    }

    CFRelease(v10);
    CFRelease(v8);
LABEL_17:
    v13 = 0;
    goto LABEL_19;
  }

LABEL_11:
  if (currentCopy)
  {
    PCSIdentitySetSetCurrentIdentity();
  }

  CFRelease(v10);
  CFRelease(v8);
  v13 = 1;
LABEL_19:

  return v13;
}

- (BOOL)iCDPStatus
{
  copyIdentitySet = [(PCSKeySyncing *)self copyIdentitySet];
  if (!copyIdentitySet)
  {
    return 0;
  }

  v3 = copyIdentitySet;
  IsICDP = PCSIdentitySetIsICDP();
  CFRelease(v3);
  return IsICDP;
}

- (BOOL)setiCDPStatus:(BOOL)status
{
  copyIdentitySet = [(PCSKeySyncing *)self copyIdentitySet];
  if (!copyIdentitySet)
  {
    return 0;
  }

  v4 = copyIdentitySet;
  v5 = PCSIdentitySetEnableICDP();
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to set iCDP: %@", buf, 0xCu);
    }

    CFRelease(v4);
    return 0;
  }

  CFRelease(v4);
  return v5;
}

- (id)copyAllPCSKeys:(id *)keys
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100022C70();
  }

  copyIdentitySet = [(PCSKeySyncing *)self copyIdentitySet];
  if (!copyIdentitySet)
  {
    return 0;
  }

  v5 = copyIdentitySet;
  ExternalForm = PCSIdentitySetCreateExternalForm();
  CFRelease(v5);
  return ExternalForm;
}

- (void)syncKeysWithDatabase
{
  copyIdentitySet = [(PCSKeySyncing *)self copyIdentitySet];
  if (copyIdentitySet)
  {
    v4 = copyIdentitySet;
    userRegistry = [(PCSKeySyncing *)self userRegistry];
    v6 = userRegistry;
    if (userRegistry)
    {
      v7 = userRegistry;
      PCSServiceItemsGetEachName();
      CFRelease(v4);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to get database", buf, 2u);
      }

      CFRelease(v4);
    }
  }
}

- (BOOL)updateSyncDevice:(id)device version:(id)version
{
  deviceCopy = device;
  versionCopy = version;
  userRegistry = [(PCSKeySyncing *)self userRegistry];
  beginExclusiveTransaction = [userRegistry beginExclusiveTransaction];
  if (beginExclusiveTransaction)
  {
    v10 = +[NSDate date];
    v11 = [v10 description];
    [userRegistry updateSyncDevice:deviceCopy seen:v11 version:versionCopy];

    [userRegistry endTransaction:1];
  }

  return beginExclusiveTransaction;
}

- (id)syncDevices
{
  userRegistry = [(PCSKeySyncing *)self userRegistry];
  syncDevices = [userRegistry syncDevices];

  return syncDevices;
}

- (id)outStandingPCSKeys:(id)keys
{
  keysCopy = keys;
  userRegistry = [(PCSKeySyncing *)self userRegistry];
  v6 = [userRegistry missingKeysFromDevice:keysCopy type:1];

  return v6;
}

- (id)copySHA256Hash:(id)hash
{
  hashCopy = hash;
  v4 = [NSMutableData dataWithLength:32];
  ccsha256_di();
  [hashCopy length];
  [hashCopy bytes];

  [v4 mutableBytes];
  ccdigest();
  return v4;
}

- (id)getClientWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  settings = [(PCSKeySyncing *)self settings];
  v6 = [settings dictionaryForKey:@"clients"];

  v7 = [PCSKeyClient alloc];
  v8 = [v6 objectForKeyedSubscript:identifierCopy];
  accounts = [(PCSKeySyncing *)self accounts];
  dsid = [accounts dsid];
  v11 = [(PCSKeyClient *)v7 initWithName:identifierCopy values:v8 dsid:dsid];

  return v11;
}

- (void)updateClient:(id)client
{
  clientCopy = client;
  settings = [(PCSKeySyncing *)self settings];
  v5 = [settings dictionaryForKey:@"clients"];

  uuid = [clientCopy uuid];
  v7 = [v5 objectForKeyedSubscript:uuid];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accounts = [(PCSKeySyncing *)self accounts];
    dsid = [accounts dsid];
    [clientCopy updateWithValues:v7 dsid:dsid];

    uuid2 = [clientCopy uuid];
    buildVersion = [clientCopy buildVersion];
    [(PCSKeySyncing *)self updateSyncDevice:uuid2 version:buildVersion];
  }
}

- (BOOL)saveClient:(id)client
{
  clientCopy = client;
  [clientCopy setIsNewWatch:0];
  uuid = [clientCopy uuid];

  if (uuid)
  {
    accounts = [(PCSKeySyncing *)self accounts];
    dsid = [accounts dsid];
    v8 = [clientCopy getValues:dsid];

    settings = [(PCSKeySyncing *)self settings];
    v10 = [settings dictionaryForKey:@"clients"];

    v11 = [NSMutableDictionary dictionaryWithDictionary:v10];
    uuid2 = [clientCopy uuid];
    [v11 setObject:v8 forKey:uuid2];

    settings2 = [(PCSKeySyncing *)self settings];
    [settings2 setObject:v11 forKey:@"clients"];
  }

  return uuid != 0;
}

- (void)updateProtocolVersionIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy protocolVersion] <= 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = neededCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "updating protocol for client %@", &v5, 0xCu);
    }

    [neededCopy setProtocolVersion:1];
    [(PCSKeySyncing *)self saveClient:neededCopy];
  }
}

- (id)allClients
{
  settings = [(PCSKeySyncing *)self settings];
  v4 = [settings dictionaryForKey:@"clients"];

  +[NSMutableArray array];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100018D10;
  v9[3] = &unk_1000395D8;
  v5 = v9[4] = self;
  v10 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

@end