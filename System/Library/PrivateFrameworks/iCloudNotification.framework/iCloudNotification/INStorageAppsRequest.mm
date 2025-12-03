@interface INStorageAppsRequest
- (INStorageAppsRequest)init;
- (INStorageAppsRequest)initWithAccount:(id)account withBackupDeviceUDID:(id)d;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INStorageAppsRequest

- (INStorageAppsRequest)initWithAccount:(id)account withBackupDeviceUDID:(id)d
{
  accountCopy = account;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = INStorageAppsRequest;
  v9 = [(INStorageAppsRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_backupDeviceUDID, d);
  }

  return v10;
}

- (id)urlString
{
  aa_personID = [(ACAccount *)self->_account aa_personID];

  if (aa_personID)
  {
    v4 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v5 = [v4 objectForKey:@"settingsStorageAppListURL"];
    aa_personID2 = [(ACAccount *)self->_account aa_personID];
    v7 = +[AADeviceInfo udid];
    v8 = [INHelperFunctions urlStringFromFormat:v5 dsid:aa_personID2 udid:v7];
  }

  else
  {
    v9 = _INLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000338A0(v9);
    }

    v8 = 0;
  }

  return v8;
}

- (INStorageAppsRequest)init
{
  [(INStorageAppsRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)urlRequest
{
  v7.receiver = self;
  v7.super_class = INStorageAppsRequest;
  urlRequest = [(INStorageAppsRequest *)&v7 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 ind_addQuotaHeadersForAccount:self->_account];
  [v4 addValue:self->_backupDeviceUDID forHTTPHeaderField:@"X-Client-Backup-UUID"];
  if ([(ACAccount *)self->_account isEnabledForDataclass:kAccountDataclassBackup])
  {
    v5 = @"ON";
  }

  else
  {
    v5 = @"OFF";
  }

  [v4 addValue:v5 forHTTPHeaderField:@"X-Client-Backup"];

  return v4;
}

@end