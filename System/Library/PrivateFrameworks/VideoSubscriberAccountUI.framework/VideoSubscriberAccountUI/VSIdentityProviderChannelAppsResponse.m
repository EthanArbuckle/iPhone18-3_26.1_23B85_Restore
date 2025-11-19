@interface VSIdentityProviderChannelAppsResponse
- (VSIdentityProviderChannelAppsResponse)init;
@end

@implementation VSIdentityProviderChannelAppsResponse

- (VSIdentityProviderChannelAppsResponse)init
{
  v7.receiver = self;
  v7.super_class = VSIdentityProviderChannelAppsResponse;
  v2 = [(VSIdentityProviderChannelAppsResponse *)&v7 init];
  v3 = v2;
  if (v2)
  {
    allApps = v2->_allApps;
    v2->_allApps = MEMORY[0x277CBEBF8];

    appsByChannelID = v3->_appsByChannelID;
    v3->_appsByChannelID = MEMORY[0x277CBEC10];
  }

  return v3;
}

@end