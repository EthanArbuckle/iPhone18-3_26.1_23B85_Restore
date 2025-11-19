@interface PUINetworkApplicationController
- (id)isLocalNetworkEnabled:(id)a3;
- (id)pathRuleCreate:(BOOL)a3;
- (id)specifiers;
- (void)setLocalNetworkEnabled:(id)a3 specifier:(id)a4;
- (void)setSpecifier:(id)a3;
@end

@implementation PUINetworkApplicationController

- (void)setSpecifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = PUINetworkApplicationController;
  v4 = a3;
  [(PUINetworkApplicationController *)&v7 setSpecifier:v4];
  v5 = [v4 propertyForKey:{@"PUINetworkApplicationKey", v7.receiver, v7.super_class}];

  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v5;
}

- (id)specifiers
{
  v3 = *MEMORY[0x277D3FC48];
  v4 = *(&self->super.super.super.super.super.super.isa + v3);
  if (!v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    v7 = [(PUINetworkApplicationController *)self bundleIdentifier];

    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = MEMORY[0x277CC1E60];
    v9 = [(PUINetworkApplicationController *)self bundleIdentifier];
    v10 = [v8 applicationProxyForIdentifier:v9];

    if (!v10)
    {
      goto LABEL_10;
    }

    v11 = [v10 entitlementValueForKey:@"com.apple.developer.networking.bonjour-services" ofClass:objc_opt_class()];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 entitlementValueForKey:@"com.apple.developer.networking.multicast" ofClass:objc_opt_class()];

      v14 = MEMORY[0x277CCACA8];
      if (!v13)
      {
        v15 = @"LOCAL_NETWORK_BONJOUR";
LABEL_9:
        v16 = PUI_LocalizedStringForPrivacy(v15);
        v17 = [v10 localizedName];
        v18 = [v14 stringWithFormat:v16, v17];

        [v6 setProperty:v18 forKey:*MEMORY[0x277D3FF88]];
LABEL_10:
        [v5 addObject:v6];
        v19 = MEMORY[0x277D3FAD8];
        v20 = PUI_LocalizedStringForPrivacy(@"LOCAL_NETWORK");
        v21 = [v19 preferenceSpecifierNamed:v20 target:self set:sel_setLocalNetworkEnabled_specifier_ get:sel_isLocalNetworkEnabled_ detail:0 cell:6 edit:0];

        [v5 addObject:v21];
        v22 = *(&self->super.super.super.super.super.super.isa + v3);
        *(&self->super.super.super.super.super.super.isa + v3) = v5;

        v4 = *(&self->super.super.super.super.super.super.isa + v3);
        goto LABEL_11;
      }
    }

    else
    {
      v14 = MEMORY[0x277CCACA8];
    }

    v15 = @"LOCAL_NETWORK_MULTICAST";
    goto LABEL_9;
  }

LABEL_11:

  return v4;
}

- (id)pathRuleCreate:(BOOL)a3
{
  v22 = a3;
  v29 = *MEMORY[0x277D85DE8];
  v4 = [(PUINetworkController *)self pathControllerConfiguration];
  v5 = [v4 pathController];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [v5 pathRules];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 matchSigningIdentifier];
        v13 = [(PUINetworkApplicationController *)self bundleIdentifier];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v17 = v11;
          goto LABEL_13;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (v22)
  {
    v15 = objc_alloc(MEMORY[0x277CD92D0]);
    v16 = [(PUINetworkApplicationController *)self bundleIdentifier];
    v17 = [v15 initWithSigningIdentifier:v16];

    v18 = [v5 pathRules];

    if (v18)
    {
      v6 = [v5 pathRules];
      v19 = [v6 arrayByAddingObject:v17];
      [v5 setPathRules:v19];
    }

    else
    {
      v27 = v17;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      [v5 setPathRules:v6];
    }

LABEL_13:
  }

  else
  {
    v17 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)setLocalNetworkEnabled:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v7 = [(PUINetworkApplicationController *)self pathRuleCreate:1];
  v6 = [v5 BOOLValue];

  [v7 setDenyMulticast:v6 ^ 1u];
  [v7 setMulticastPreferenceSet:1];
  [(PUINetworkController *)self saveConfiguration];
}

- (id)isLocalNetworkEnabled:(id)a3
{
  v3 = [(PUINetworkApplicationController *)self pathRuleCreate:0];
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:{objc_msgSend(v3, "denyMulticast") ^ 1}];

  return v4;
}

@end