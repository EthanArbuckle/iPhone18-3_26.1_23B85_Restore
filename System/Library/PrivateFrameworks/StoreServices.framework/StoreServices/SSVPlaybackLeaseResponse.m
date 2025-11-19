@interface SSVPlaybackLeaseResponse
- (BOOL)isOfflineSlotAvailable;
- (NSData)leaseInfoData;
- (NSData)subscriptionKeyBagData;
- (double)leaseDuration;
- (id)copyWithZone:(_NSZone *)a3;
- (id)itemForItemIdentifier:(id)a3;
@end

@implementation SSVPlaybackLeaseResponse

- (id)itemForItemIdentifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = SSVPlaybackLeaseResponse;
  v3 = [(SSVPlaybackResponse *)&v5 itemForItemIdentifier:a3];

  return v3;
}

- (double)leaseDuration
{
  v2 = [(SSVPlaybackResponse *)self responseDictionary];
  v3 = [v2 objectForKey:@"leaseDurationInSeconds"];

  if (v3)
  {
    v4 = 0.0;
    if (objc_opt_respondsToSelector())
    {
      [v3 doubleValue];
      v4 = v5;
    }
  }

  else
  {
    v4 = 600.0;
  }

  return v4;
}

- (BOOL)isOfflineSlotAvailable
{
  v2 = [(SSVPlaybackResponse *)self responseDictionary];
  v3 = [v2 objectForKey:@"offlineSlotAvailable"];

  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)leaseInfoData
{
  v2 = [(SSVPlaybackResponse *)self responseDictionary];
  v3 = [v2 objectForKey:@"ckc"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v3 options:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSData)subscriptionKeyBagData
{
  v2 = [(SSVPlaybackResponse *)self responseDictionary];
  v3 = SSVSubscriptionBagForDictionary(v2);

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SSVPlaybackLeaseResponse;
  v4 = [(SSVPlaybackResponse *)&v6 copyWithZone:a3];
  [v4 setCertificateData:self->_certificateData];
  [v4 setKDMovieIdentifier:self->_kdMovieIdentifier];
  return v4;
}

@end