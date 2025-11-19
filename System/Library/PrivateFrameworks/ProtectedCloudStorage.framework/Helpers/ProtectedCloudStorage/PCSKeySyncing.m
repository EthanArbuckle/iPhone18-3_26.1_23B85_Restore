@interface PCSKeySyncing
+ (id)defaultSyncingManager;
- (BOOL)iCDPStatus;
- (BOOL)saveClient:(id)a3;
- (BOOL)setiCDPStatus:(BOOL)a3;
- (BOOL)storePCSKeyData:(id)a3 current:(BOOL)a4;
- (BOOL)updateSyncDevice:(id)a3 version:(id)a4;
- (PCSKeySyncing)init;
- (_PCSIdentitySetData)copyIdentitySet;
- (id)allClients;
- (id)copyAllPCSKeys:(id *)a3;
- (id)copySHA256Hash:(id)a3;
- (id)dsid;
- (id)getClientWithIdentifier:(id)a3;
- (id)outStandingPCSKeys:(id)a3;
- (id)pcsKeyData:(id)a3;
- (id)syncDevices;
- (id)userRegistry;
- (void)addUpdateNotify:(id)a3;
- (void)signalComplete:(id)a3;
- (void)syncKeysWithDatabase;
- (void)updateClient:(id)a3;
- (void)updateProtocolVersionIfNeeded:(id)a3;
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
  v2 = [(PCSKeySyncing *)self dsid];
  if (v2)
  {
    v3 = [[UserRegistryDB alloc] initWithDSID:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dsid
{
  v2 = [(PCSKeySyncing *)self accounts];
  v3 = [v2 dsid];

  return v3;
}

- (void)addUpdateNotify:(id)a3
{
  v4 = a3;
  notifyHooks = self->_notifyHooks;
  v9 = v4;
  if (!notifyHooks)
  {
    v6 = +[NSMutableArray array];
    v7 = self->_notifyHooks;
    self->_notifyHooks = v6;

    v4 = v9;
    notifyHooks = self->_notifyHooks;
  }

  v8 = objc_retainBlock(v4);
  [(NSMutableArray *)notifyHooks addObject:v8];
}

- (void)signalComplete:(id)a3
{
  v4 = a3;
  notifyHooks = self->_notifyHooks;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000177A4;
  v7[3] = &unk_1000395B0;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)notifyHooks enumerateObjectsUsingBlock:v7];
}

- (_PCSIdentitySetData)copyIdentitySet
{
  v3 = [(PCSKeySyncing *)self accounts];
  v4 = [v3 dsid];

  if (v4)
  {
    v10 = kPCSSetupDSID;
    v11 = v4;
    v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v6 = PCSIdentitySetCreate();
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(PCSKeySyncing *)self accounts];
      v8 = [v7 lastError];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to fetch dsid from accounts: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)pcsKeyData:(id)a3
{
  v4 = a3;
  v5 = [(PCSKeySyncing *)self copyIdentitySet];
  if (!v5)
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

  v6 = v5;
  v7 = PCSIdentitySetCopyIdentity();
  CFRelease(v6);
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v4;
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

- (BOOL)storePCSKeyData:(id)a3 current:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PCSKeySyncing *)self copyIdentitySet];
  if (!v7)
  {
    v13 = 0;
    goto LABEL_19;
  }

  v8 = v7;
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
  if (v4)
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
  v2 = [(PCSKeySyncing *)self copyIdentitySet];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  IsICDP = PCSIdentitySetIsICDP();
  CFRelease(v3);
  return IsICDP;
}

- (BOOL)setiCDPStatus:(BOOL)a3
{
  v3 = [(PCSKeySyncing *)self copyIdentitySet];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
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

- (id)copyAllPCSKeys:(id *)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100022C70();
  }

  v4 = [(PCSKeySyncing *)self copyIdentitySet];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  ExternalForm = PCSIdentitySetCreateExternalForm();
  CFRelease(v5);
  return ExternalForm;
}

- (void)syncKeysWithDatabase
{
  v3 = [(PCSKeySyncing *)self copyIdentitySet];
  if (v3)
  {
    v4 = v3;
    v5 = [(PCSKeySyncing *)self userRegistry];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
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

- (BOOL)updateSyncDevice:(id)a3 version:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PCSKeySyncing *)self userRegistry];
  v9 = [v8 beginExclusiveTransaction];
  if (v9)
  {
    v10 = +[NSDate date];
    v11 = [v10 description];
    [v8 updateSyncDevice:v6 seen:v11 version:v7];

    [v8 endTransaction:1];
  }

  return v9;
}

- (id)syncDevices
{
  v2 = [(PCSKeySyncing *)self userRegistry];
  v3 = [v2 syncDevices];

  return v3;
}

- (id)outStandingPCSKeys:(id)a3
{
  v4 = a3;
  v5 = [(PCSKeySyncing *)self userRegistry];
  v6 = [v5 missingKeysFromDevice:v4 type:1];

  return v6;
}

- (id)copySHA256Hash:(id)a3
{
  v3 = a3;
  v4 = [NSMutableData dataWithLength:32];
  ccsha256_di();
  [v3 length];
  [v3 bytes];

  [v4 mutableBytes];
  ccdigest();
  return v4;
}

- (id)getClientWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PCSKeySyncing *)self settings];
  v6 = [v5 dictionaryForKey:@"clients"];

  v7 = [PCSKeyClient alloc];
  v8 = [v6 objectForKeyedSubscript:v4];
  v9 = [(PCSKeySyncing *)self accounts];
  v10 = [v9 dsid];
  v11 = [(PCSKeyClient *)v7 initWithName:v4 values:v8 dsid:v10];

  return v11;
}

- (void)updateClient:(id)a3
{
  v12 = a3;
  v4 = [(PCSKeySyncing *)self settings];
  v5 = [v4 dictionaryForKey:@"clients"];

  v6 = [v12 uuid];
  v7 = [v5 objectForKeyedSubscript:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [(PCSKeySyncing *)self accounts];
    v9 = [v8 dsid];
    [v12 updateWithValues:v7 dsid:v9];

    v10 = [v12 uuid];
    v11 = [v12 buildVersion];
    [(PCSKeySyncing *)self updateSyncDevice:v10 version:v11];
  }
}

- (BOOL)saveClient:(id)a3
{
  v4 = a3;
  [v4 setIsNewWatch:0];
  v5 = [v4 uuid];

  if (v5)
  {
    v6 = [(PCSKeySyncing *)self accounts];
    v7 = [v6 dsid];
    v8 = [v4 getValues:v7];

    v9 = [(PCSKeySyncing *)self settings];
    v10 = [v9 dictionaryForKey:@"clients"];

    v11 = [NSMutableDictionary dictionaryWithDictionary:v10];
    v12 = [v4 uuid];
    [v11 setObject:v8 forKey:v12];

    v13 = [(PCSKeySyncing *)self settings];
    [v13 setObject:v11 forKey:@"clients"];
  }

  return v5 != 0;
}

- (void)updateProtocolVersionIfNeeded:(id)a3
{
  v4 = a3;
  if ([v4 protocolVersion] <= 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "updating protocol for client %@", &v5, 0xCu);
    }

    [v4 setProtocolVersion:1];
    [(PCSKeySyncing *)self saveClient:v4];
  }
}

- (id)allClients
{
  v3 = [(PCSKeySyncing *)self settings];
  v4 = [v3 dictionaryForKey:@"clients"];

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