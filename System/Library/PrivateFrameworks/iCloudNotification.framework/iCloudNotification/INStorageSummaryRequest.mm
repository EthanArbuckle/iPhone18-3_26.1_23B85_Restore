@interface INStorageSummaryRequest
- (INStorageSummaryRequest)init;
- (INStorageSummaryRequest)initWithAccount:(id)account withBackupDeviceUDID:(id)d;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INStorageSummaryRequest

- (INStorageSummaryRequest)initWithAccount:(id)account withBackupDeviceUDID:(id)d
{
  accountCopy = account;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = INStorageSummaryRequest;
  v9 = [(INStorageSummaryRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_backupDeviceUDID, d);
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
  aa_personID = [(ACAccount *)self->_account aa_personID];

  if (aa_personID)
  {
    v4 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v5 = [v4 objectForKey:@"settingsUsageDetailsURL"];
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

- (id)urlRequest
{
  v19.receiver = self;
  v19.super_class = INStorageSummaryRequest;
  urlRequest = [(INStorageSummaryRequest *)&v19 urlRequest];
  v4 = [urlRequest mutableCopy];

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
  ams_activeiTunesAccount = [v7 ams_activeiTunesAccount];
  v9 = ams_activeiTunesAccount;
  if (ams_activeiTunesAccount)
  {
    ams_DSID = [ams_activeiTunesAccount ams_DSID];

    if (ams_DSID)
    {
      ams_DSID2 = [v9 ams_DSID];
      stringValue = [ams_DSID2 stringValue];
      [v4 setValue:stringValue forHTTPHeaderField:@"X-Apple-Itunes-DSID"];
    }
  }

  aa_personID = [(ACAccount *)self->_account aa_personID];
  v14 = +[ACAccountStore defaultStore];
  aa_primaryAppleAccount = [v14 aa_primaryAppleAccount];
  aa_personID2 = [aa_primaryAppleAccount aa_personID];

  if (aa_personID && aa_personID2)
  {
    if ([aa_personID isEqualToString:aa_personID2])
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