@interface PKWebServiceSharingFeature
- (PKWebServiceSharingFeature)initWithDictionary:(id)dictionary region:(id)region;
@end

@implementation PKWebServiceSharingFeature

- (PKWebServiceSharingFeature)initWithDictionary:(id)dictionary region:(id)region
{
  v38 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [(PKWebServiceRegionFeature *)self initWithFeatureType:5 dictionary:dictionaryCopy region:region];
  if (v7)
  {
    v7->_relayServerPasswordLength = [dictionaryCopy PKIntegerForKey:@"relayServerPasswordLength"];
    v8 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"activationCodeConfigurations"];
    if (v8)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v34;
        do
        {
          v14 = 0;
          do
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v33 + 1) + 8 * v14);
            v16 = [PKWebServiceSharingActivationConfiguration alloc];
            v17 = [(PKWebServiceSharingActivationConfiguration *)v16 initWithDictionary:v15, v33];
            [(NSArray *)v9 safelyAddObject:v17];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v12);
      }

      activationCodeConfigurations = v7->_activationCodeConfigurations;
      v7->_activationCodeConfigurations = v9;
    }

    v19 = [dictionaryCopy PKStringForKey:{@"relayServerHost", v33}];
    relayServerHost = v7->_relayServerHost;
    v7->_relayServerHost = v19;

    v21 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"allowedRelayServerHosts"];
    allowedRelayServerHosts = v7->_allowedRelayServerHosts;
    v7->_allowedRelayServerHosts = v21;

    v23 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"relayServerHostsToHandleUniversalLinks"];
    relayServerHostsToHandleUniversalLinks = v7->_relayServerHostsToHandleUniversalLinks;
    v7->_relayServerHostsToHandleUniversalLinks = v23;

    v25 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"relayServerHostsToUseThirdPartyPushTopic"];
    relayServerHostsToUseThirdPartyPushTopic = v7->_relayServerHostsToUseThirdPartyPushTopic;
    v7->_relayServerHostsToUseThirdPartyPushTopic = v25;

    v27 = [dictionaryCopy PKURLForKey:@"staticContentBaseURL"];
    staticContentBaseURL = v7->_staticContentBaseURL;
    v7->_staticContentBaseURL = v27;

    v29 = [dictionaryCopy PKDictionaryForKey:@"openGraphPreviewUrls"];
    openGraphPreviewUrls = v7->_openGraphPreviewUrls;
    v7->_openGraphPreviewUrls = v29;

    v31 = [dictionaryCopy objectForKeyedSubscript:@"enabled"];

    if (v31)
    {
      v7->_enabled = [dictionaryCopy PKBoolForKey:@"enabled"];
    }

    else
    {
      v7->_enabled = 1;
    }
  }

  return v7;
}

@end