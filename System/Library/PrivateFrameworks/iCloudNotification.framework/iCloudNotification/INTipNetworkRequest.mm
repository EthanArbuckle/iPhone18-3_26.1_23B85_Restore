@interface INTipNetworkRequest
- (INTipNetworkRequest)initWithAccount:(id)account tip:(id)tip;
- (INTipNetworkRequest)initWithAccountForDismissStatus:(id)status tip:(id)tip;
- (INTipNetworkRequest)initWithAccountForDisplayStatus:(id)status tip:(id)tip;
- (id)_bodyParameters;
- (id)urlRequest;
- (id)urlString;
@end

@implementation INTipNetworkRequest

- (INTipNetworkRequest)initWithAccount:(id)account tip:(id)tip
{
  accountCopy = account;
  tipCopy = tip;
  v12.receiver = self;
  v12.super_class = INTipNetworkRequest;
  v9 = [(INTipNetworkRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, account);
    objc_storeStrong(&v10->_tip, tip);
  }

  return v10;
}

- (INTipNetworkRequest)initWithAccountForDismissStatus:(id)status tip:(id)tip
{
  v4 = [(INTipNetworkRequest *)self initWithAccount:status tip:tip];
  v5 = v4;
  if (v4)
  {
    tipStatus = v4->_tipStatus;
    v4->_tipStatus = @"dismissed";
  }

  return v5;
}

- (INTipNetworkRequest)initWithAccountForDisplayStatus:(id)status tip:(id)tip
{
  v4 = [(INTipNetworkRequest *)self initWithAccount:status tip:tip];
  v5 = v4;
  if (v4)
  {
    tipStatus = v4->_tipStatus;
    v4->_tipStatus = @"displayed";
  }

  return v5;
}

- (id)urlString
{
  aa_personID = [(ACAccount *)self->_account aa_personID];

  if (aa_personID)
  {
    if ([(NSString *)self->_tipStatus isEqualToString:@"displayed"])
    {
      displayURL = [(ICQInlineTip *)self->_tip displayURL];
LABEL_9:
      v6 = displayURL;
      absoluteString = [displayURL absoluteString];

      goto LABEL_11;
    }

    if ([(NSString *)self->_tipStatus isEqualToString:@"dismissed"])
    {
      displayURL = [(ICQInlineTip *)self->_tip dismissURL];
      goto LABEL_9;
    }
  }

  else
  {
    v5 = _INLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000359C0(v5);
    }
  }

  absoluteString = 0;
LABEL_11:

  return absoluteString;
}

- (id)_bodyParameters
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(ICQInlineTip *)self->_tip id];
  [v3 setObject:v4 forKeyedSubscript:@"notificationTipType"];

  tipStatus = [(INTipNetworkRequest *)self tipStatus];
  [v3 setObject:tipStatus forKeyedSubscript:@"action"];

  v6 = [v3 copy];

  return v6;
}

- (id)urlRequest
{
  _bodyParameters = [(INTipNetworkRequest *)self _bodyParameters];
  if (_bodyParameters && self->_account)
  {
    v14.receiver = self;
    v14.super_class = INTipNetworkRequest;
    urlRequest = [(INTipNetworkRequest *)&v14 urlRequest];
    v5 = [urlRequest mutableCopy];

    v6 = _INLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_100035A04(self, v6);
    }

    v13 = 0;
    v7 = [NSJSONSerialization dataWithJSONObject:_bodyParameters options:0 error:&v13];
    v8 = v13;
    if (v8)
    {
      v9 = _INLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100035A98();
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
      sub_100035B1C();
    }

    [v5 ind_addQuotaHeadersForAccount:self->_account];
    [v5 setHTTPMethod:@"POST"];
  }

  else
  {
    v8 = _INLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100035B90(self, v8);
    }

    v5 = 0;
  }

  return v5;
}

@end