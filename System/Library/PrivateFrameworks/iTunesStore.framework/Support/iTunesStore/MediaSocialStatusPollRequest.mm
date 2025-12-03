@interface MediaSocialStatusPollRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MediaSocialStatusPollRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setAccountIdentifier:self->_accountIdentifier];
  [v4 setActivityIdentifier:self->_activityIdentifier];
  [v4 setPollingDuration:self->_pollingDuration];
  [v4 setPollingInterval:self->_pollingInterval];
  [v4 setPostIdentifier:self->_postIdentifier];
  [v4 setSourceApplicationIdentifier:self->_sourceApplicationIdentifier];
  [v4 setPostCreateTime:self->_postCreateTime];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    activityIdentifier = [(MediaSocialStatusPollRequest *)self activityIdentifier];
    activityIdentifier2 = [equalCopy activityIdentifier];
    v6 = [activityIdentifier isEqualToString:activityIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end