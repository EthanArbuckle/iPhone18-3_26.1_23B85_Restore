@interface SHCampaignTokens
- (SHCampaignTokens)initWithConfiguration:(id)a3;
- (id)tokenForClientIdentifier:(id)a3;
@end

@implementation SHCampaignTokens

- (SHCampaignTokens)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHCampaignTokens;
  v6 = [(SHCampaignTokens *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_campaignTokens, a3);
  }

  return v7;
}

- (id)tokenForClientIdentifier:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"itsct", a3];
  v5 = [(SHCampaignTokens *)self campaignTokens];
  v6 = [v5 objectForKeyedSubscript:v4];
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