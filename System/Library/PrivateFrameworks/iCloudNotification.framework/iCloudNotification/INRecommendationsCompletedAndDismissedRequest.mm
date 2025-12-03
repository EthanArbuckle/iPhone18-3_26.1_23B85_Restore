@interface INRecommendationsCompletedAndDismissedRequest
- (INRecommendationsCompletedAndDismissedRequest)initWithAccount:(id)account configuration:(id)configuration;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INRecommendationsCompletedAndDismissedRequest

- (INRecommendationsCompletedAndDismissedRequest)initWithAccount:(id)account configuration:(id)configuration
{
  accountCopy = account;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = INRecommendationsCompletedAndDismissedRequest;
  v9 = [(INRecommendationsCompletedAndDismissedRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_configuration, configuration);
  }

  return v10;
}

- (id)urlString
{
  aa_personID = [(ACAccount *)self->_account aa_personID];

  if (aa_personID)
  {
    completedURL = [(CERuleConfiguration *)self->_configuration completedURL];

    if (completedURL)
    {
      completedURL2 = [(CERuleConfiguration *)self->_configuration completedURL];
      absoluteString = [completedURL2 absoluteString];

      goto LABEL_11;
    }

    v8 = _INLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100035834(&self->_configuration, v8);
    }
  }

  else
  {
    v7 = _INLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000358B0(v7);
    }
  }

  absoluteString = 0;
LABEL_11:

  return absoluteString;
}

- (id)urlRequest
{
  v6.receiver = self;
  v6.super_class = INRecommendationsCompletedAndDismissedRequest;
  urlRequest = [(INRecommendationsCompletedAndDismissedRequest *)&v6 urlRequest];
  v4 = [urlRequest mutableCopy];

  [v4 ind_addQuotaHeadersForAccount:self->_account];

  return v4;
}

@end