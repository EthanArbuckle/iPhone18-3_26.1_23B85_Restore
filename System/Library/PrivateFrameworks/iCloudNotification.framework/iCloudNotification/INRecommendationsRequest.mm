@interface INRecommendationsRequest
- (INRecommendationsRequest)init;
- (INRecommendationsRequest)initWithAccount:(id)a3;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INRecommendationsRequest

- (INRecommendationsRequest)initWithAccount:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = INRecommendationsRequest;
  v6 = [(INRecommendationsRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (INRecommendationsRequest)init
{
  [(INRecommendationsRequest *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)urlString
{
  v3 = [(ACAccount *)self->_account aa_personID];

  if (v3)
  {
    v4 = [(ACAccount *)self->_account propertiesForDataclass:@"com.apple.Dataclass.Quota"];
    v5 = [v4 objectForKey:@"iCloudRecommendations"];
    v6 = [(ACAccount *)self->_account aa_personID];
    v7 = +[AADeviceInfo udid];
    v8 = [INHelperFunctions urlStringFromFormat:v5 dsid:v6 udid:v7];
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

- (id)urlRequest
{
  v6.receiver = self;
  v6.super_class = INRecommendationsRequest;
  v3 = [(INRecommendationsRequest *)&v6 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 ind_addQuotaHeadersForAccount:self->_account];

  return v4;
}

@end