@interface PSGResetNetworkSettingsController
- (id)cancelCallbackURL;
- (id)createListController;
@end

@implementation PSGResetNetworkSettingsController

- (id)cancelCallbackURL
{
  v32 = *MEMORY[0x277D85DE8];
  specifier = [(PSGResetNetworkSettingsController *)self specifier];
  v3 = [specifier propertyForKey:@"deepLinkURL"];

  v4 = 0x277CBE000uLL;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0x277CCA000uLL;
    v6 = [MEMORY[0x277CCACE0] componentsWithURL:v3 resolvingAgainstBaseURL:0];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    queryItems = [v6 queryItems];
    v8 = [queryItems countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(queryItems);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          name = [v12 name];
          v14 = [name isEqualToString:@"onCancel"];

          if (v14)
          {
            value = [v12 value];
            goto LABEL_13;
          }
        }

        v9 = [queryItems countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      value = 0;
LABEL_13:
      v4 = 0x277CBE000;
      v5 = 0x277CCA000;
    }

    else
    {
      value = 0;
    }

    stringByRemovingPercentEncoding = [value stringByRemovingPercentEncoding];
    if (stringByRemovingPercentEncoding)
    {
      v18 = stringByRemovingPercentEncoding;
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v20 = [v18 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      v21 = [*(v4 + 3008) URLWithString:v20];
      v22 = [*(v5 + 3296) componentsWithURL:v21 resolvingAgainstBaseURL:0];
      scheme = [v22 scheme];
      v24 = [&unk_282E8FD70 containsObject:scheme];

      if (v24)
      {
        v16 = v21;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)createListController
{
  v3 = objc_alloc_init(PSGResetNetworkSettingsListController);
  cancelCallbackURL = [(PSGResetNetworkSettingsController *)self cancelCallbackURL];
  [(PSGResetNetworkSettingsListController *)v3 setCancelCallbackURL:cancelCallbackURL];

  return v3;
}

@end