@interface WFAppContentLocation(Icon)
- (id)icon;
@end

@implementation WFAppContentLocation(Icon)

- (id)icon
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [a1 appDescriptor];
  v3 = [v2 bundleIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [a1 appDescriptor];
    v5 = [v6 extensionBundleIdentifier];
  }

  if ([v5 length])
  {
    v7 = WFPossibleMobileDocumentsFileProviderDomainIDs();
    v8 = [v7 containsObject:v5];

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
      v17 = [MEMORY[0x277D79FC8] applicationIconImageForBundleIdentifier:v5];
      if (v17)
      {
        v13 = [objc_alloc(MEMORY[0x277D79DA8]) initWithBundleIdentifier:v5];
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
      v15 = [a1 appDescriptor];
      v16 = [v15 debugDescription];
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