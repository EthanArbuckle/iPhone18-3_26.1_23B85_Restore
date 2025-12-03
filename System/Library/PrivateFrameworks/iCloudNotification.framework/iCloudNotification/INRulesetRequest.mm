@interface INRulesetRequest
- (INRulesetRequest)init;
- (INRulesetRequest)initWithAccount:(id)account;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INRulesetRequest

- (INRulesetRequest)initWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = INRulesetRequest;
  v6 = [(INRulesetRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)urlString
{
  aa_personID = [(ACAccount *)self->_account aa_personID];

  if (aa_personID)
  {
    v4 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v5 = [v4 objectForKey:@"iCloudRecommendationRules"];
    aa_personID2 = [(ACAccount *)self->_account aa_personID];
    v7 = +[AADeviceInfo udid];
    v8 = [INHelperFunctions urlStringFromFormat:v5 dsid:aa_personID2 udid:v7];
  }

  else
  {
    v9 = _INLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100036944(self, v9);
    }

    v8 = 0;
  }

  return v8;
}

- (INRulesetRequest)init
{
  [(INRulesetRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)urlRequest
{
  v6.receiver = self;
  v6.super_class = INRulesetRequest;
  urlRequest = [(INRulesetRequest *)&v6 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 ind_addQuotaHeadersForAccount:self->_account];

  return v4;
}

@end