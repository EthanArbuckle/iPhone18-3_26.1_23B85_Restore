@interface PLBatteryUIResponseTypeBUIMappings
- (id)getInstalledPluginMapping;
- (id)result;
- (void)run;
@end

@implementation PLBatteryUIResponseTypeBUIMappings

- (void)run
{
  v5 = [(PLBatteryUIResponseTypeBUIMappings *)self getInstalledPluginMapping];
  v3 = +[PLBatteryUIResponseTypeUtilities getBundleIDToReplacementBundleIDMap];
  [v5 addEntriesFromDictionary:v3];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v5];
  [(PLBatteryUIResponseTypeBUIMappings *)self setBatteryUIMappings:v4];
}

- (id)result
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"buiMappings";
  v2 = [(PLBatteryUIResponseTypeBUIMappings *)self batteryUIMappings];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)getInstalledPluginMapping
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [MEMORY[0x277CC1E50] enumeratorWithOptions:{0, 0}];
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v9 = [v8 bundleIdentifier];
        v10 = [v8 containingBundleRecord];
        v11 = [v10 bundleIdentifier];

        v12 = [v8 extensionPointRecord];
        v13 = [v12 identifier];

        if (v9)
        {
          v14 = v11 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14)
        {
          if ([v13 isEqualToString:@"com.apple.posterkit.provider"])
          {
            v15 = v2;
            v16 = @"HLS";
            goto LABEL_18;
          }

          if ([v13 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"])
          {
            v15 = v2;
            v16 = @"com.apple.mobileslideshow";
            goto LABEL_18;
          }

          if ([v13 isEqualToString:@"com.apple.sidecar.extension.capture"])
          {
            v15 = v2;
            v16 = @"ContinuityCamera";
            goto LABEL_18;
          }

          if ([v13 isEqualToString:@"HomeKit"])
          {
            v15 = v2;
            v16 = @"com.apple.Home";
LABEL_18:
            [v15 setObject:v16 forKey:v9];
LABEL_19:
            [v2 setObject:v11 forKey:v9];
            goto LABEL_20;
          }

          if ([v13 hasSuffix:@"/watch"])
          {
            v17 = [v13 length] - 6;
          }

          else
          {
            if (![v13 hasSuffix:@".watchkitextension"])
            {
              goto LABEL_19;
            }

            v17 = [v13 length] - 18;
          }

          v18 = [v13 substringWithRange:{0, v17}];
          [v2 setObject:v18 forKey:v9];

          goto LABEL_19;
        }

LABEL_20:

        ++v7;
      }

      while (v5 != v7);
      v19 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v5 = v19;
    }

    while (v19);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v2;
}

@end