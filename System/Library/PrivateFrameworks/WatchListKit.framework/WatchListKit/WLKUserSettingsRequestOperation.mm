@interface WLKUserSettingsRequestOperation
- (id)_initWithAction:(unint64_t)action userSettings:(id)settings caller:(id)caller dsid:(id)dsid isMigration:(BOOL)migration;
- (void)processResponse;
@end

@implementation WLKUserSettingsRequestOperation

- (id)_initWithAction:(unint64_t)action userSettings:(id)settings caller:(id)caller dsid:(id)dsid isMigration:(BOOL)migration
{
  migrationCopy = migration;
  settingsCopy = settings;
  callerCopy = caller;
  dsidCopy = dsid;
  if (action == 1)
  {
    WLKRequireNonNilParameter(settingsCopy);
    if (migrationCopy)
    {
      v16 = &unk_288222E50;
    }

    else
    {
      v16 = 0;
    }

    _patchData = [settingsCopy _patchData];
    v15 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"user/settings" queryParameters:v16 httpMethod:@"PATCH" httpBody:_patchData headers:&unk_288222E78 caller:callerCopy timeout:0 apiVersion:&unk_288222CC8 options:0x200000];
  }

  else if (action)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Invalid action provided (%ld)", action}];
    v15 = 0;
  }

  else
  {
    v15 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"user/settings" queryParameters:0 httpMethod:@"GET" httpBody:0 headers:0 caller:callerCopy timeout:0 apiVersion:&unk_288222CC8 options:2097160];
  }

  v26.receiver = self;
  v26.super_class = WLKUserSettingsRequestOperation;
  v18 = [(WLKUTSNetworkRequestOperation *)&v26 initWithRequestProperties:v15];
  v19 = v18;
  if (v18)
  {
    v18->_action = action;
    v20 = [settingsCopy copy];
    userSettings = v19->_userSettings;
    v19->_userSettings = v20;

    v22 = [callerCopy copy];
    caller = v19->_caller;
    v19->_caller = v22;

    v24 = [dsidCopy copy];
    [(WLKNetworkRequestOperation *)v19 setDSID:v24];
  }

  return v19;
}

- (void)processResponse
{
  v6 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v6 setObjectClass:objc_opt_class()];
  data = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v6 processResponseData:data error:0];
  response = self->_response;
  self->_response = v4;
}

@end