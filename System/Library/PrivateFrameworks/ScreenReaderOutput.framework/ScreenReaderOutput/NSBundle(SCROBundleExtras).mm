@interface NSBundle(SCROBundleExtras)
+ (id)_brailleTableBundles;
+ (id)_brailleTableDictionaryForBrailleTableIdentifier:()SCROBundleExtras;
+ (id)brailleDriverBundleWithIdentifier:()SCROBundleExtras;
+ (id)brailleDriverBundles;
+ (id)brailleDriverDeviceDetectionInfo;
+ (id)brailleTableBundleWithTableIdentifier:()SCROBundleExtras;
+ (id)languageIdentifiersForBrailleTableIdentifier:()SCROBundleExtras;
+ (uint64_t)doesBrailleTableSupportContractions:()SCROBundleExtras;
+ (uint64_t)doesBrailleTableSupportEightDot:()SCROBundleExtras;
- (id)tableIdentifierForBundleSpecificTableIdentifier:()SCROBundleExtras;
@end

@implementation NSBundle(SCROBundleExtras)

+ (id)brailleDriverBundles
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NSBundle_SCROBundleExtras__brailleDriverBundles__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (brailleDriverBundles_onceToken != -1)
  {
    dispatch_once(&brailleDriverBundles_onceToken, block);
  }

  v1 = _DriverBundleArray;

  return v1;
}

+ (id)brailleDriverBundleWithIdentifier:()SCROBundleExtras
{
  v4 = a3;
  v5 = v4;
  if (_DriverBundleDictionary)
  {
    if (v4)
    {
LABEL_3:
      v6 = [_DriverBundleDictionary objectForKey:v5];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = [a1 brailleDriverBundles];
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

+ (id)brailleDriverDeviceDetectionInfo
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = [a1 brailleDriverBundles];
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 bundleIdentifier];
        if (v8)
        {
          v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v10 = [v7 objectForInfoDictionaryKey:kSCROBrailleDriverAutoDetectDictionaries[0]];
          if (v10)
          {
            [v9 setObject:v10 forKey:kSCROBrailleDriverAutoDetectDictionaries[0]];
          }

          v11 = [v7 objectForInfoDictionaryKey:kSCROBrailleDriverBluetoothSearchDictionary[0]];
          if (v11)
          {
            [v9 setObject:v11 forKey:kSCROBrailleDriverBluetoothSearchDictionary[0]];
          }

          if ([v9 count])
          {
            [v14 setObject:v9 forKey:v8];
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)_brailleTableBundles
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NSBundle_SCROBundleExtras___brailleTableBundles__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_brailleTableBundles_onceToken != -1)
  {
    dispatch_once(&_brailleTableBundles_onceToken, block);
  }

  v1 = _TableBundleArray;

  return v1;
}

+ (id)brailleTableBundleWithTableIdentifier:()SCROBundleExtras
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 _brailleTableBundles];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 bundleIdentifier];
        if (v10 && ([v4 hasPrefix:v10] & 1) != 0)
        {
          v6 = v9;

          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)_brailleTableDictionaryForBrailleTableIdentifier:()SCROBundleExtras
{
  v4 = a3;
  v5 = [a1 brailleTableBundleWithTableIdentifier:v4];
  v6 = [v5 bundleIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = [v4 substringFromIndex:{objc_msgSend(v6, "length") + 1}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 objectForInfoDictionaryKey:@"BrailleTables"];
  v10 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v9 objectForKey:v8];
    v13 = objc_opt_self();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      v15 = v12;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (uint64_t)doesBrailleTableSupportContractions:()SCROBundleExtras
{
  v1 = [a1 _brailleTableDictionaryForBrailleTableIdentifier:?];
  v2 = [v1 objectForKey:@"supportsContraction"];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (uint64_t)doesBrailleTableSupportEightDot:()SCROBundleExtras
{
  v1 = [a1 _brailleTableDictionaryForBrailleTableIdentifier:?];
  v2 = [v1 objectForKey:@"supports8dot"];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)languageIdentifiersForBrailleTableIdentifier:()SCROBundleExtras
{
  v1 = [a1 _brailleTableDictionaryForBrailleTableIdentifier:?];
  v2 = [v1 objectForKey:@"languages"];
  v3 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableIdentifierForBundleSpecificTableIdentifier:()SCROBundleExtras
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 bundleIdentifier];
    v6 = [v5 stringByAppendingPathExtension:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end