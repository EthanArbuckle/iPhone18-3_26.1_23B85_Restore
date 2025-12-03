@interface SSVPlaybackLeaseResponse
- (BOOL)isOfflineSlotAvailable;
- (NSData)leaseInfoData;
- (NSData)subscriptionKeyBagData;
- (double)leaseDuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)itemForItemIdentifier:(id)identifier;
@end

@implementation SSVPlaybackLeaseResponse

- (id)itemForItemIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = SSVPlaybackLeaseResponse;
  v3 = [(SSVPlaybackResponse *)&v5 itemForItemIdentifier:identifier];

  return v3;
}

- (double)leaseDuration
{
  responseDictionary = [(SSVPlaybackResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:@"leaseDurationInSeconds"];

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
  responseDictionary = [(SSVPlaybackResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:@"offlineSlotAvailable"];

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSData)leaseInfoData
{
  responseDictionary = [(SSVPlaybackResponse *)self responseDictionary];
  v3 = [responseDictionary objectForKey:@"ckc"];

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
  responseDictionary = [(SSVPlaybackResponse *)self responseDictionary];
  v3 = SSVSubscriptionBagForDictionary(responseDictionary);

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SSVPlaybackLeaseResponse;
  v4 = [(SSVPlaybackResponse *)&v6 copyWithZone:zone];
  [v4 setCertificateData:self->_certificateData];
  [v4 setKDMovieIdentifier:self->_kdMovieIdentifier];
  return v4;
}

@end