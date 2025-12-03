@interface PUINetworkApplicationController
- (id)isLocalNetworkEnabled:(id)enabled;
- (id)pathRuleCreate:(BOOL)create;
- (id)specifiers;
- (void)setLocalNetworkEnabled:(id)enabled specifier:(id)specifier;
- (void)setSpecifier:(id)specifier;
@end

@implementation PUINetworkApplicationController

- (void)setSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = PUINetworkApplicationController;
  specifierCopy = specifier;
  [(PUINetworkApplicationController *)&v7 setSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"PUINetworkApplicationKey", v7.receiver, v7.super_class}];

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
    emptyGroupSpecifier = [MEMORY[0x277D3FAD8] emptyGroupSpecifier];
    bundleIdentifier = [(PUINetworkApplicationController *)self bundleIdentifier];

    if (!bundleIdentifier)
    {
      goto LABEL_10;
    }

    v8 = MEMORY[0x277CC1E60];
    bundleIdentifier2 = [(PUINetworkApplicationController *)self bundleIdentifier];
    v10 = [v8 applicationProxyForIdentifier:bundleIdentifier2];

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
        localizedName = [v10 localizedName];
        v18 = [v14 stringWithFormat:v16, localizedName];

        [emptyGroupSpecifier setProperty:v18 forKey:*MEMORY[0x277D3FF88]];
LABEL_10:
        [v5 addObject:emptyGroupSpecifier];
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

- (id)pathRuleCreate:(BOOL)create
{
  createCopy = create;
  v29 = *MEMORY[0x277D85DE8];
  pathControllerConfiguration = [(PUINetworkController *)self pathControllerConfiguration];
  pathController = [pathControllerConfiguration pathController];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  pathRules = [pathController pathRules];
  v7 = [pathRules countByEnumeratingWithState:&v23 objects:v28 count:16];
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
          objc_enumerationMutation(pathRules);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        matchSigningIdentifier = [v11 matchSigningIdentifier];
        bundleIdentifier = [(PUINetworkApplicationController *)self bundleIdentifier];
        v14 = [matchSigningIdentifier isEqualToString:bundleIdentifier];

        if (v14)
        {
          v17 = v11;
          goto LABEL_13;
        }
      }

      v8 = [pathRules countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  if (createCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CD92D0]);
    bundleIdentifier2 = [(PUINetworkApplicationController *)self bundleIdentifier];
    v17 = [v15 initWithSigningIdentifier:bundleIdentifier2];

    pathRules2 = [pathController pathRules];

    if (pathRules2)
    {
      pathRules = [pathController pathRules];
      v19 = [pathRules arrayByAddingObject:v17];
      [pathController setPathRules:v19];
    }

    else
    {
      v27 = v17;
      pathRules = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      [pathController setPathRules:pathRules];
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

- (void)setLocalNetworkEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  v7 = [(PUINetworkApplicationController *)self pathRuleCreate:1];
  bOOLValue = [enabledCopy BOOLValue];

  [v7 setDenyMulticast:bOOLValue ^ 1u];
  [v7 setMulticastPreferenceSet:1];
  [(PUINetworkController *)self saveConfiguration];
}

- (id)isLocalNetworkEnabled:(id)enabled
{
  v3 = [(PUINetworkApplicationController *)self pathRuleCreate:0];
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:{objc_msgSend(v3, "denyMulticast") ^ 1}];

  return v4;
}

@end