@interface INStorageSummaryRequest
- (INStorageSummaryRequest)init;
- (INStorageSummaryRequest)initWithAccount:(id)a3 withBackupDeviceUDID:(id)a4;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INStorageSummaryRequest

- (INStorageSummaryRequest)initWithAccount:(id)a3 withBackupDeviceUDID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INStorageSummaryRequest;
  v9 = [(INStorageSummaryRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_backupDeviceUDID, a4);
  }

  return v10;
}

- (INStorageSummaryRequest)init
{
  [(INStorageSummaryRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)urlString
{
  v3 = [(ACAccount *)self->_account aa_personID];

  if (v3)
  {
    v4 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v5 = [v4 objectForKey:@"settingsUsageDetailsURL"];
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
  v19.receiver = self;
  v19.super_class = INStorageSummaryRequest;
  v3 = [(INStorageSummaryRequest *)&v19 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 ind_addQuotaHeadersForAccount:self->_account];
  [v4 addValue:self->_backupDeviceUDID forHTTPHeaderField:@"X-Client-Backup-UUID"];
  if (_os_feature_enabled_impl())
  {
    [v4 setValue:@"true" forHTTPHeaderField:@"x-apple-native-manage-storage"];
  }

  v5 = MGCopyAnswer();
  if (v5)
  {
    [v4 setValue:v5 forHTTPHeaderField:@"X-Mme-Device-Id"];
  }

  else
  {
    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100038770(v6);
    }
  }

  v7 = +[ACAccountStore ams_sharedAccountStore];
  v8 = [v7 ams_activeiTunesAccount];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 ams_DSID];

    if (v10)
    {
      v11 = [v9 ams_DSID];
      v12 = [v11 stringValue];
      [v4 setValue:v12 forHTTPHeaderField:@"X-Apple-Itunes-DSID"];
    }
  }

  v13 = [(ACAccount *)self->_account aa_personID];
  v14 = +[ACAccountStore defaultStore];
  v15 = [v14 aa_primaryAppleAccount];
  v16 = [v15 aa_personID];

  if (v13 && v16)
  {
    if ([v13 isEqualToString:v16])
    {
      v17 = @"true";
    }

    else
    {
      v17 = @"false";
    }

    [v4 setValue:v17 forHTTPHeaderField:@"X-Apple-Primary-Account"];
  }

  return v4;
}

@end