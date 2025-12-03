@interface ICURLBagRadioConfiguration
- (BOOL)isContinueListeningAvailable;
- (BOOL)shouldIncludeHTTPHeaderField:(id)field forRequestURL:(id)l;
- (ICURLBagRadioConfiguration)initWithBagRadioDictionary:(id)dictionary;
- (id)urlForBagRadioKey:(id)key;
- (int64_t)continueListeningLoadStationThreshold;
- (int64_t)continueListeningMaxQueueSizeInRequest;
- (int64_t)continueListeningMaxUpcomingTracksSizeToMaintain;
- (int64_t)getTracksDPInfoKBSyncCount;
- (int64_t)maxSupportedProtocolVersion;
@end

@implementation ICURLBagRadioConfiguration

- (id)urlForBagRadioKey:(id)key
{
  v3 = [(NSDictionary *)self->_bagRadioDictionary objectForKey:key];
  if (_NSIsNSString())
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldIncludeHTTPHeaderField:(id)field forRequestURL:(id)l
{
  fieldCopy = field;
  lCopy = l;
  if ([fieldCopy isEqualToString:@"X-Guid"])
  {
    v8 = 1;
  }

  else
  {
    lastPathComponent = [lCopy lastPathComponent];
    v10 = [(NSDictionary *)self->_bagRadioDictionary objectForKey:@"header-actions"];
    if (_NSIsNSDictionary())
    {
      v11 = [v10 objectForKey:fieldCopy];
      if (_NSIsNSArray())
      {
        v8 = [v11 containsObject:lastPathComponent];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (int64_t)continueListeningLoadStationThreshold
{
  v2 = [(NSDictionary *)self->_bagRadioDictionary objectForKeyedSubscript:@"continue-listening"];
  v3 = [v2 objectForKeyedSubscript:@"max-queue-size-for-autoplay"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)continueListeningMaxUpcomingTracksSizeToMaintain
{
  v2 = [(NSDictionary *)self->_bagRadioDictionary objectForKeyedSubscript:@"continue-listening"];
  v3 = [v2 objectForKeyedSubscript:@"max-upcoming-tracks-to-maintain"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (int64_t)continueListeningMaxQueueSizeInRequest
{
  v2 = [(NSDictionary *)self->_bagRadioDictionary objectForKeyedSubscript:@"continue-listening"];
  v3 = [v2 objectForKeyedSubscript:@"max-queue-size-in-request"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (BOOL)isContinueListeningAvailable
{
  v2 = [(NSDictionary *)self->_bagRadioDictionary objectForKeyedSubscript:@"continue-listening"];
  v3 = v2 != 0;

  return v3;
}

- (int64_t)maxSupportedProtocolVersion
{
  v2 = [(NSDictionary *)self->_bagRadioDictionary objectForKey:@"max-protocol-version"];
  if (objc_opt_respondsToSelector())
  {
    integerValue = [v2 integerValue];
    if (integerValue >= 8)
    {
      v4 = 8;
    }

    else
    {
      v4 = integerValue;
    }
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (int64_t)getTracksDPInfoKBSyncCount
{
  v2 = [(NSDictionary *)self->_bagRadioDictionary objectForKey:@"num-kbsyncs-to-include-for-getTracks"];
  if (objc_opt_respondsToSelector())
  {
    integerValue = [v2 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (ICURLBagRadioConfiguration)initWithBagRadioDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = ICURLBagRadioConfiguration;
  v6 = [(ICURLBagRadioConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bagRadioDictionary, dictionary);
  }

  return v7;
}

@end