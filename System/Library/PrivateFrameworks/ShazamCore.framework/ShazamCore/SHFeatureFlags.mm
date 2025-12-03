@interface SHFeatureFlags
- (BOOL)preferDefaultOfferInLiveActivity;
- (BOOL)shouldDisplayShazamUpsell;
- (SHFeatureFlags)initWithConfiguration:(id)configuration;
@end

@implementation SHFeatureFlags

- (SHFeatureFlags)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SHFeatureFlags;
  v6 = [(SHFeatureFlags *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureFlags, configuration);
  }

  return v7;
}

- (BOOL)shouldDisplayShazamUpsell
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"nativeTrackPage", @"displayShazamUpsell"];
  featureFlags = [(SHFeatureFlags *)self featureFlags];
  v5 = [featureFlags valueForKeyPath:v3];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)preferDefaultOfferInLiveActivity
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"subscriptions", @"preferDefaultOfferInLiveActivity"];
  featureFlags = [(SHFeatureFlags *)self featureFlags];
  v5 = [featureFlags valueForKeyPath:v3];

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

@end