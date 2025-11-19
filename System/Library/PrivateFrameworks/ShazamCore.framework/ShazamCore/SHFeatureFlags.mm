@interface SHFeatureFlags
- (BOOL)preferDefaultOfferInLiveActivity;
- (BOOL)shouldDisplayShazamUpsell;
- (SHFeatureFlags)initWithConfiguration:(id)a3;
@end

@implementation SHFeatureFlags

- (SHFeatureFlags)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHFeatureFlags;
  v6 = [(SHFeatureFlags *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_featureFlags, a3);
  }

  return v7;
}

- (BOOL)shouldDisplayShazamUpsell
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"nativeTrackPage", @"displayShazamUpsell"];
  v4 = [(SHFeatureFlags *)self featureFlags];
  v5 = [v4 valueForKeyPath:v3];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)preferDefaultOfferInLiveActivity
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"subscriptions", @"preferDefaultOfferInLiveActivity"];
  v4 = [(SHFeatureFlags *)self featureFlags];
  v5 = [v4 valueForKeyPath:v3];

  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end