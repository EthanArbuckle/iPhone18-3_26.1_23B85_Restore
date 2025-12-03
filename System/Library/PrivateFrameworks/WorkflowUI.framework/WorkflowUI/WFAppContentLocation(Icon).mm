@interface WFAppContentLocation(Icon)
- (id)icon;
@end

@implementation WFAppContentLocation(Icon)

- (id)icon
{
  v23 = *MEMORY[0x277D85DE8];
  appDescriptor = [self appDescriptor];
  bundleIdentifier = [appDescriptor bundleIdentifier];
  v4 = bundleIdentifier;
  if (bundleIdentifier)
  {
    extensionBundleIdentifier = bundleIdentifier;
  }

  else
  {
    appDescriptor2 = [self appDescriptor];
    extensionBundleIdentifier = [appDescriptor2 extensionBundleIdentifier];
  }

  if ([extensionBundleIdentifier length])
  {
    v7 = WFPossibleMobileDocumentsFileProviderDomainIDs();
    v8 = [v7 containsObject:extensionBundleIdentifier];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277D7A158]);
      v10 = objc_alloc(MEMORY[0x277D79FB8]);
      v11 = [objc_alloc(MEMORY[0x277D79E20]) initWithSystemColor:9];
      v12 = [v10 initWithColor:v11];
      v13 = [v9 initWithSymbolName:@"icloud" background:v12];
    }

    else
    {
      v17 = [MEMORY[0x277D79FC8] applicationIconImageForBundleIdentifier:extensionBundleIdentifier];
      if (v17)
      {
        v13 = [objc_alloc(MEMORY[0x277D79DA8]) initWithBundleIdentifier:extensionBundleIdentifier];
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v14 = getWFSecurityLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      appDescriptor3 = [self appDescriptor];
      v16 = [appDescriptor3 debugDescription];
      v19 = 136315394;
      v20 = "[WFAppContentLocation(Icon) icon]";
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_274719000, v14, OS_LOG_TYPE_FAULT, "%s Tried to create icon for INAppDescriptor with no bundle identifier: %@", &v19, 0x16u);
    }

    v13 = 0;
  }

  return v13;
}

@end