@interface ICLightweightMusicSubscriptionStatusResponse
- (ICLightweightMusicSubscriptionStatusResponse)initWithCoder:(id)coder;
- (id)_initWithExtendedSubscriptionStatusResponse:(id)response;
- (id)description;
@end

@implementation ICLightweightMusicSubscriptionStatusResponse

- (ICLightweightMusicSubscriptionStatusResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICLightweightMusicSubscriptionStatusResponse;
  v5 = [(ICLightweightMusicSubscriptionStatusResponse *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lightweightSubscriptionStatus"];
    lightweightSubscriptionStatus = v5->_lightweightSubscriptionStatus;
    v5->_lightweightSubscriptionStatus = v6;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: %p", v5, self];

  [v6 appendFormat:@"; lightweightSubscriptionStatus = %@", self->_lightweightSubscriptionStatus];
  [v6 appendString:@">"];

  return v6;
}

- (id)_initWithExtendedSubscriptionStatusResponse:(id)response
{
  responseCopy = response;
  v10.receiver = self;
  v10.super_class = ICLightweightMusicSubscriptionStatusResponse;
  v5 = [(ICLightweightMusicSubscriptionStatusResponse *)&v10 init];
  if (v5)
  {
    subscriptionStatus = [responseCopy subscriptionStatus];
    v7 = [[ICLightweightMusicSubscriptionStatus alloc] _initWithExtendedSubscriptionStatus:subscriptionStatus];
    lightweightSubscriptionStatus = v5->_lightweightSubscriptionStatus;
    v5->_lightweightSubscriptionStatus = v7;
  }

  return v5;
}

@end