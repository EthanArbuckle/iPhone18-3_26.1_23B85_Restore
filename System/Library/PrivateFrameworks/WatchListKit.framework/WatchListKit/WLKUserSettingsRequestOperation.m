@interface WLKUserSettingsRequestOperation
- (id)_initWithAction:(unint64_t)a3 userSettings:(id)a4 caller:(id)a5 dsid:(id)a6 isMigration:(BOOL)a7;
- (void)processResponse;
@end

@implementation WLKUserSettingsRequestOperation

- (id)_initWithAction:(unint64_t)a3 userSettings:(id)a4 caller:(id)a5 dsid:(id)a6 isMigration:(BOOL)a7
{
  v7 = a7;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a3 == 1)
  {
    WLKRequireNonNilParameter(v12);
    if (v7)
    {
      v16 = &unk_288222E50;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v12 _patchData];
    v15 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"user/settings" queryParameters:v16 httpMethod:@"PATCH" httpBody:v17 headers:&unk_288222E78 caller:v13 timeout:0 apiVersion:&unk_288222CC8 options:0x200000];
  }

  else if (a3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Invalid action provided (%ld)", a3}];
    v15 = 0;
  }

  else
  {
    v15 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"user/settings" queryParameters:0 httpMethod:@"GET" httpBody:0 headers:0 caller:v13 timeout:0 apiVersion:&unk_288222CC8 options:2097160];
  }

  v26.receiver = self;
  v26.super_class = WLKUserSettingsRequestOperation;
  v18 = [(WLKUTSNetworkRequestOperation *)&v26 initWithRequestProperties:v15];
  v19 = v18;
  if (v18)
  {
    v18->_action = a3;
    v20 = [v12 copy];
    userSettings = v19->_userSettings;
    v19->_userSettings = v20;

    v22 = [v13 copy];
    caller = v19->_caller;
    v19->_caller = v22;

    v24 = [v14 copy];
    [(WLKNetworkRequestOperation *)v19 setDSID:v24];
  }

  return v19;
}

- (void)processResponse
{
  v6 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v6 setObjectClass:objc_opt_class()];
  v3 = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v6 processResponseData:v3 error:0];
  response = self->_response;
  self->_response = v4;
}

@end