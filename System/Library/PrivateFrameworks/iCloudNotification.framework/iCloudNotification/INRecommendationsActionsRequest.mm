@interface INRecommendationsActionsRequest
- (INRecommendationsActionsRequest)initWithAccount:(id)account configuration:(id)configuration params:(id)params;
- (INRecommendationsActionsRequest)initWithAccountForActionCancelledStatus:(id)status configuration:(id)configuration recommendations:(id)recommendations context:(id)context;
- (INRecommendationsActionsRequest)initWithAccountForActionCompletedStatus:(id)status configuration:(id)configuration recommendations:(id)recommendations storageRecovered:(id)recovered context:(id)context;
- (INRecommendationsActionsRequest)initWithAccountForDismissStatus:(id)status configuration:(id)configuration recommendations:(id)recommendations context:(id)context;
- (INRecommendationsActionsRequest)initWithAccountForDisplayStatus:(id)status configuration:(id)configuration recommendations:(id)recommendations context:(id)context;
- (id)_bodyParameters;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INRecommendationsActionsRequest

- (INRecommendationsActionsRequest)initWithAccountForActionCancelledStatus:(id)status configuration:(id)configuration recommendations:(id)recommendations context:(id)context
{
  contextCopy = context;
  recommendationsCopy = recommendations;
  configurationCopy = configuration;
  statusCopy = status;
  v14 = objc_alloc_init(NSMutableDictionary);
  objc_storeStrong(&self->_recommendationStatus, @"canceled");
  [v14 setObject:@"canceled" forKeyedSubscript:@"action"];
  [v14 setObject:recommendationsCopy forKeyedSubscript:@"recommendations"];

  [v14 setObject:contextCopy forKeyedSubscript:@"context"];
  v15 = [v14 copy];
  v16 = [(INRecommendationsActionsRequest *)self initWithAccount:statusCopy configuration:configurationCopy params:v15];

  return v16;
}

- (INRecommendationsActionsRequest)initWithAccountForDismissStatus:(id)status configuration:(id)configuration recommendations:(id)recommendations context:(id)context
{
  contextCopy = context;
  recommendationsCopy = recommendations;
  configurationCopy = configuration;
  statusCopy = status;
  v14 = objc_alloc_init(NSMutableDictionary);
  objc_storeStrong(&self->_recommendationStatus, @"dismissed");
  [v14 setObject:@"dismissed" forKeyedSubscript:@"action"];
  [v14 setObject:recommendationsCopy forKeyedSubscript:@"recommendations"];

  [v14 setObject:contextCopy forKeyedSubscript:@"context"];
  v15 = [v14 copy];
  v16 = [(INRecommendationsActionsRequest *)self initWithAccount:statusCopy configuration:configurationCopy params:v15];

  return v16;
}

- (INRecommendationsActionsRequest)initWithAccountForDisplayStatus:(id)status configuration:(id)configuration recommendations:(id)recommendations context:(id)context
{
  contextCopy = context;
  recommendationsCopy = recommendations;
  configurationCopy = configuration;
  statusCopy = status;
  v14 = objc_alloc_init(NSMutableDictionary);
  objc_storeStrong(&self->_recommendationStatus, @"displayed");
  [v14 setObject:@"displayed" forKeyedSubscript:@"action"];
  [v14 setObject:recommendationsCopy forKeyedSubscript:@"recommendations"];

  [v14 setObject:contextCopy forKeyedSubscript:@"context"];
  v15 = [v14 copy];
  v16 = [(INRecommendationsActionsRequest *)self initWithAccount:statusCopy configuration:configurationCopy params:v15];

  return v16;
}

- (INRecommendationsActionsRequest)initWithAccountForActionCompletedStatus:(id)status configuration:(id)configuration recommendations:(id)recommendations storageRecovered:(id)recovered context:(id)context
{
  contextCopy = context;
  recommendationsCopy = recommendations;
  configurationCopy = configuration;
  statusCopy = status;
  v15 = objc_alloc_init(NSMutableDictionary);
  objc_storeStrong(&self->_recommendationStatus, @"completed");
  [v15 setObject:@"completed" forKeyedSubscript:@"action"];
  [v15 setObject:recommendationsCopy forKeyedSubscript:@"recommendations"];

  [v15 setObject:contextCopy forKeyedSubscript:@"context"];
  v16 = [v15 copy];
  v17 = [(INRecommendationsActionsRequest *)self initWithAccount:statusCopy configuration:configurationCopy params:v16];

  return v17;
}

- (INRecommendationsActionsRequest)initWithAccount:(id)account configuration:(id)configuration params:(id)params
{
  accountCopy = account;
  configurationCopy = configuration;
  paramsCopy = params;
  v15.receiver = self;
  v15.super_class = INRecommendationsActionsRequest;
  v12 = [(INRecommendationsActionsRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_ruleConfiguration, configuration);
    objc_storeStrong(&v13->_account, account);
    objc_storeStrong(&v13->_params, params);
  }

  return v13;
}

- (id)urlString
{
  aa_personID = [(ACAccount *)self->_account aa_personID];

  if (aa_personID)
  {
    recommendationStatus = self->_recommendationStatus;
    if (!recommendationStatus)
    {
      v5 = [(NSDictionary *)self->_params objectForKeyedSubscript:@"action"];
      v6 = self->_recommendationStatus;
      self->_recommendationStatus = v5;

      recommendationStatus = self->_recommendationStatus;
    }

    if ([(NSString *)recommendationStatus isEqualToString:@"displayed"])
    {
      displayURL = [(CERuleConfiguration *)self->_ruleConfiguration displayURL];
    }

    else if ([(NSString *)self->_recommendationStatus isEqualToString:@"dismissed"])
    {
      displayURL = [(CERuleConfiguration *)self->_ruleConfiguration dismissURL];
    }

    else
    {
      if (![(NSString *)self->_recommendationStatus isEqualToString:@"completed"]&& ![(NSString *)self->_recommendationStatus isEqualToString:@"canceled"])
      {
        absoluteString = 0;
LABEL_15:
        v8 = _INLogSystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_100036474();
        }

        goto LABEL_17;
      }

      displayURL = [(CERuleConfiguration *)self->_ruleConfiguration actionURL];
    }

    v10 = displayURL;
    absoluteString = [displayURL absoluteString];

    goto LABEL_15;
  }

  v8 = _INLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1000364E8(v8);
  }

  absoluteString = 0;
LABEL_17:

  return absoluteString;
}

- (id)_bodyParameters
{
  v2 = [(NSDictionary *)self->_params copy];

  return v2;
}

- (id)urlRequest
{
  _bodyParameters = [(INRecommendationsActionsRequest *)self _bodyParameters];
  if (_bodyParameters && self->_account)
  {
    v14.receiver = self;
    v14.super_class = INRecommendationsActionsRequest;
    urlRequest = [(INRecommendationsActionsRequest *)&v14 urlRequest];
    v5 = [urlRequest mutableCopy];

    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10003652C(self, v6);
    }

    v13 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:_bodyParameters options:0 error:&v13];
    v8 = v13;
    if (v8)
    {
      v9 = _INLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000365C0();
      }
    }

    else
    {
      [v5 setHTTPBody:v7];
    }

    v10 = [[NSString alloc] initWithData:v7 encoding:4];
    v11 = _INLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_100036644();
    }

    [v5 ind_addQuotaHeadersForAccount:self->_account];
    [v5 setHTTPMethod:@"POST"];
  }

  else
  {
    v8 = _INLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000366B8(self, v8);
    }

    v5 = 0;
  }

  return v5;
}

@end