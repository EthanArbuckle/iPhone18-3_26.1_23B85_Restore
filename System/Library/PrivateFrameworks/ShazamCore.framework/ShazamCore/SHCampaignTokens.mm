@interface SHCampaignTokens
- (SHCampaignTokens)initWithConfiguration:(id)configuration;
- (id)tokenForClientIdentifier:(id)identifier;
@end

@implementation SHCampaignTokens

- (SHCampaignTokens)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SHCampaignTokens;
  v6 = [(SHCampaignTokens *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_campaignTokens, configuration);
  }

  return v7;
}

- (id)tokenForClientIdentifier:(id)identifier
{
  identifier = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"itsct", identifier];
  campaignTokens = [(SHCampaignTokens *)self campaignTokens];
  v6 = [campaignTokens objectForKeyedSubscript:identifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"bglsk";
  }

  v9 = v8;

  return v8;
}

@end