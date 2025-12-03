@interface SHDefaultConfigurationValues
- (NSString)campaignGroup;
- (NSString)providerToken;
- (NSString)sportsCampaignToken;
- (SHDefaultConfigurationValues)initWithConfiguration:(id)configuration;
- (double)liveAudioMinimumRecordingDuration;
- (double)recordingIntermission;
- (int64_t)lookupBatchSize;
@end

@implementation SHDefaultConfigurationValues

- (SHDefaultConfigurationValues)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SHDefaultConfigurationValues;
  v6 = [(SHDefaultConfigurationValues *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaultValues, configuration);
  }

  return v7;
}

- (double)liveAudioMinimumRecordingDuration
{
  defaultValues = [(SHDefaultConfigurationValues *)self defaultValues];
  v3 = [defaultValues objectForKeyedSubscript:@"liveAudioMinimumRecordingDuration"];
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
  defaultValues = [(SHDefaultConfigurationValues *)self defaultValues];
  v4 = [defaultValues objectForKeyedSubscript:@"recordingIntermission"];
  if (v4)
  {
    defaultValues2 = [(SHDefaultConfigurationValues *)self defaultValues];
    v6 = [defaultValues2 objectForKeyedSubscript:@"recordingIntermission"];
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
  defaultValues = [(SHDefaultConfigurationValues *)self defaultValues];
  v4 = [defaultValues objectForKeyedSubscript:@"campaignGroup"];
  if (v4)
  {
    defaultValues2 = [(SHDefaultConfigurationValues *)self defaultValues];
    v6 = [defaultValues2 objectForKeyedSubscript:@"campaignGroup"];
  }

  else
  {
    v6 = @"30201";
  }

  return v6;
}

- (int64_t)lookupBatchSize
{
  defaultValues = [(SHDefaultConfigurationValues *)self defaultValues];
  v3 = [defaultValues objectForKeyedSubscript:@"lookupBatchSize"];
  integerValue = [v3 integerValue];
  if (integerValue)
  {
    v5 = integerValue;
  }

  else
  {
    v5 = 10;
  }

  return v5;
}

- (NSString)providerToken
{
  defaultValues = [(SHDefaultConfigurationValues *)self defaultValues];
  v3 = [defaultValues objectForKeyedSubscript:@"providerToken"];
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
  defaultValues = [(SHDefaultConfigurationValues *)self defaultValues];
  v3 = [defaultValues objectForKeyedSubscript:@"sportsCampaignToken"];
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