@interface INCloudBackupInfoRequest
- (INCloudBackupInfoRequest)init;
- (INCloudBackupInfoRequest)initWithAccount:(id)a3 withBackupDeviceUDID:(id)a4;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INCloudBackupInfoRequest

- (INCloudBackupInfoRequest)initWithAccount:(id)a3 withBackupDeviceUDID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INCloudBackupInfoRequest;
  v9 = [(INCloudBackupInfoRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_backupDeviceUDID, a4);
  }

  return v10;
}

- (INCloudBackupInfoRequest)init
{
  [(INCloudBackupInfoRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)urlString
{
  v3 = [(ACAccount *)self->_account aa_personID];

  if (v3)
  {
    v4 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v5 = [v4 objectForKey:@"settingsBackupDetailsURL"];
    v6 = [(ACAccount *)self->_account aa_personID];
    v7 = +[AADeviceInfo udid];
    v8 = [INHelperFunctions urlStringFromFormat:v5 dsid:v6 udid:v7];
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

- (id)urlRequest
{
  v6.receiver = self;
  v6.super_class = INCloudBackupInfoRequest;
  v3 = [(INCloudBackupInfoRequest *)&v6 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 ind_addQuotaHeadersForAccount:self->_account];
  [v4 addValue:self->_backupDeviceUDID forHTTPHeaderField:@"X-Client-Backup-UUID"];

  return v4;
}

@end