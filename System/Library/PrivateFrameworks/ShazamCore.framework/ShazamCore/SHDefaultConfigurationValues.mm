@interface SHDefaultConfigurationValues
- (NSString)campaignGroup;
- (NSString)providerToken;
- (NSString)sportsCampaignToken;
- (SHDefaultConfigurationValues)initWithConfiguration:(id)a3;
- (double)liveAudioMinimumRecordingDuration;
- (double)recordingIntermission;
- (int64_t)lookupBatchSize;
@end

@implementation SHDefaultConfigurationValues

- (SHDefaultConfigurationValues)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHDefaultConfigurationValues;
  v6 = [(SHDefaultConfigurationValues *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultValues, a3);
  }

  return v7;
}

- (double)liveAudioMinimumRecordingDuration
{
  v2 = [(SHDefaultConfigurationValues *)self defaultValues];
  v3 = [v2 objectForKeyedSubscript:@"liveAudioMinimumRecordingDuration"];
  [v3 doubleValue];
  if (v4 == 0.0)
  {
    v5 = 15.0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (double)recordingIntermission
{
  v3 = [(SHDefaultConfigurationValues *)self defaultValues];
  v4 = [v3 objectForKeyedSubscript:@"recordingIntermission"];
  if (v4)
  {
    v5 = [(SHDefaultConfigurationValues *)self defaultValues];
    v6 = [v5 objectForKeyedSubscript:@"recordingIntermission"];
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 10.0;
  }

  return v8;
}

- (NSString)campaignGroup
{
  v3 = [(SHDefaultConfigurationValues *)self defaultValues];
  v4 = [v3 objectForKeyedSubscript:@"campaignGroup"];
  if (v4)
  {
    v5 = [(SHDefaultConfigurationValues *)self defaultValues];
    v6 = [v5 objectForKeyedSubscript:@"campaignGroup"];
  }

  else
  {
    v6 = @"30201";
  }

  return v6;
}

- (int64_t)lookupBatchSize
{
  v2 = [(SHDefaultConfigurationValues *)self defaultValues];
  v3 = [v2 objectForKeyedSubscript:@"lookupBatchSize"];
  v4 = [v3 integerValue];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 10;
  }

  return v5;
}

- (NSString)providerToken
{
  v2 = [(SHDefaultConfigurationValues *)self defaultValues];
  v3 = [v2 objectForKeyedSubscript:@"providerToken"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"2003";
  }

  v6 = v5;

  return &v5->isa;
}

- (NSString)sportsCampaignToken
{
  v2 = [(SHDefaultConfigurationValues *)self defaultValues];
  v3 = [v2 objectForKeyedSubscript:@"sportsCampaignToken"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"iar.shazam";
  }

  v6 = v5;

  return &v5->isa;
}

@end