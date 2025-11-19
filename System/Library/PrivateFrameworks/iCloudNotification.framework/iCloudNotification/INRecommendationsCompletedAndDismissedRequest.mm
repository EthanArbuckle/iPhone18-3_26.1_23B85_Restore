@interface INRecommendationsCompletedAndDismissedRequest
- (INRecommendationsCompletedAndDismissedRequest)initWithAccount:(id)a3 configuration:(id)a4;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INRecommendationsCompletedAndDismissedRequest

- (INRecommendationsCompletedAndDismissedRequest)initWithAccount:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = INRecommendationsCompletedAndDismissedRequest;
  v9 = [(INRecommendationsCompletedAndDismissedRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_configuration, a4);
  }

  return v10;
}

- (id)urlString
{
  v3 = [(ACAccount *)self->_account aa_personID];

  if (v3)
  {
    v4 = [(CERuleConfiguration *)self->_configuration completedURL];

    if (v4)
    {
      v5 = [(CERuleConfiguration *)self->_configuration completedURL];
      v6 = [v5 absoluteString];

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

  v6 = 0;
LABEL_11:

  return v6;
}

- (id)urlRequest
{
  v6.receiver = self;
  v6.super_class = INRecommendationsCompletedAndDismissedRequest;
  v3 = [(INRecommendationsCompletedAndDismissedRequest *)&v6 urlRequest];
  v4 = [v3 mutableCopy];

  [v4 ind_addQuotaHeadersForAccount:self->_account];

  return v4;
}

@end