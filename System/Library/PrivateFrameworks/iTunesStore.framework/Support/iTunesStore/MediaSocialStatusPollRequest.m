@interface MediaSocialStatusPollRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MediaSocialStatusPollRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAccountIdentifier:self->_accountIdentifier];
  [v4 setActivityIdentifier:self->_activityIdentifier];
  [v4 setPollingDuration:self->_pollingDuration];
  [v4 setPollingInterval:self->_pollingInterval];
  [v4 setPostIdentifier:self->_postIdentifier];
  [v4 setSourceApplicationIdentifier:self->_sourceApplicationIdentifier];
  [v4 setPostCreateTime:self->_postCreateTime];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(MediaSocialStatusPollRequest *)self activityIdentifier];
    v8 = [v4 activityIdentifier];
    v6 = [v7 isEqualToString:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end