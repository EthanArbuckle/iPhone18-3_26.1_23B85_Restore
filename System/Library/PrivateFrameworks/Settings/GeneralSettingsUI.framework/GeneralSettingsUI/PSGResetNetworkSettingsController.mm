@interface PSGResetNetworkSettingsController
- (id)cancelCallbackURL;
- (id)createListController;
@end

@implementation PSGResetNetworkSettingsController

- (id)cancelCallbackURL
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [(PSGResetNetworkSettingsController *)self specifier];
  v3 = [v2 propertyForKey:@"deepLinkURL"];

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
    v7 = [v6 queryItems];
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v27 + 1) + 8 * i);
          v13 = [v12 name];
          v14 = [v13 isEqualToString:@"onCancel"];

          if (v14)
          {
            v15 = [v12 value];
            goto LABEL_13;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v15 = 0;
LABEL_13:
      v4 = 0x277CBE000;
      v5 = 0x277CCA000;
    }

    else
    {
      v15 = 0;
    }

    v17 = [v15 stringByRemovingPercentEncoding];
    if (v17)
    {
      v18 = v17;
      v19 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v20 = [v18 stringByTrimmingCharactersInSet:v19];

      v21 = [*(v4 + 3008) URLWithString:v20];
      v22 = [*(v5 + 3296) componentsWithURL:v21 resolvingAgainstBaseURL:0];
      v23 = [v22 scheme];
      v24 = [&unk_282E8FD70 containsObject:v23];

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
  v4 = [(PSGResetNetworkSettingsController *)self cancelCallbackURL];
  [(PSGResetNetworkSettingsListController *)v3 setCancelCallbackURL:v4];

  return v3;
}

@end