@interface ICURLBagRadioConfiguration
- (BOOL)isContinueListeningAvailable;
- (BOOL)shouldIncludeHTTPHeaderField:(id)a3 forRequestURL:(id)a4;
- (ICURLBagRadioConfiguration)initWithBagRadioDictionary:(id)a3;
- (id)urlForBagRadioKey:(id)a3;
- (int64_t)continueListeningLoadStationThreshold;
- (int64_t)continueListeningMaxQueueSizeInRequest;
- (int64_t)continueListeningMaxUpcomingTracksSizeToMaintain;
- (int64_t)getTracksDPInfoKBSyncCount;
- (int64_t)maxSupportedProtocolVersion;
@end

@implementation ICURLBagRadioConfiguration

- (id)urlForBagRadioKey:(id)a3
{
  v3 = [(NSDictionary *)self->_bagRadioDictionary objectForKey:a3];
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

- (BOOL)shouldIncludeHTTPHeaderField:(id)a3 forRequestURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"X-Guid"])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v7 lastPathComponent];
    v10 = [(NSDictionary *)self->_bagRadioDictionary objectForKey:@"header-actions"];
    if (_NSIsNSDictionary())
    {
      v11 = [v10 objectForKey:v6];
      if (_NSIsNSArray())
      {
        v8 = [v11 containsObject:v9];
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
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)continueListeningMaxUpcomingTracksSizeToMaintain
{
  v2 = [(NSDictionary *)self->_bagRadioDictionary objectForKeyedSubscript:@"continue-listening"];
  v3 = [v2 objectForKeyedSubscript:@"max-upcoming-tracks-to-maintain"];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)continueListeningMaxQueueSizeInRequest
{
  v2 = [(NSDictionary *)self->_bagRadioDictionary objectForKeyedSubscript:@"continue-listening"];
  v3 = [v2 objectForKeyedSubscript:@"max-queue-size-in-request"];
  v4 = [v3 integerValue];

  return v4;
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
    v3 = [v2 integerValue];
    if (v3 >= 8)
    {
      v4 = 8;
    }

    else
    {
      v4 = v3;
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
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (ICURLBagRadioConfiguration)initWithBagRadioDictionary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICURLBagRadioConfiguration;
  v6 = [(ICURLBagRadioConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bagRadioDictionary, a3);
  }

  return v7;
}

@end