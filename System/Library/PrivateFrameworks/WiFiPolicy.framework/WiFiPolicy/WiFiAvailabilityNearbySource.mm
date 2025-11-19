@interface WiFiAvailabilityNearbySource
- (id)relevantNetworks;
@end

@implementation WiFiAvailabilityNearbySource

- (id)relevantNetworks
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(WiFiAvailabilityNearbySource *)self recommendedNetworks];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = objc_alloc_init(WiFiAvailabilityNearbyCandidateNetwork);
        v11 = [v9 networkName];
        [(WiFiAvailabilityNearbyCandidateNetwork *)v10 setSSID:v11];

        v12 = [v9 receivedFromDeviceName];
        [(WiFiAvailabilityNearbyCandidateNetwork *)v10 setReceivedFromDeviceName:v12];

        [v3 addObject:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end