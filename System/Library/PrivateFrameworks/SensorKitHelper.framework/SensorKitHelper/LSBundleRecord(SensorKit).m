@interface LSBundleRecord(SensorKit)
+ (uint64_t)sr_bundleRecordWithIdentifier:()SensorKit error:;
- (uint64_t)sr_isSocialNetworking;
- (uint64_t)sr_supportsDataGeneration;
- (uint64_t)sr_supportsMessagingIntents;
- (uint64_t)sr_supportsVOIP;
@end

@implementation LSBundleRecord(SensorKit)

+ (uint64_t)sr_bundleRecordWithIdentifier:()SensorKit error:
{
  v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:a3 allowPlaceholder:0 error:a4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return v4;
}

- (uint64_t)sr_supportsVOIP
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([objc_msgSend(a1 "UIBackgroundModes")])
  {
    return 1;
  }

  v3 = [a1 appTags];

  return [v3 containsObject:@"any-telephony"];
}

- (uint64_t)sr_supportsMessagingIntents
{
  v13 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([objc_msgSend(a1 "supportedIntents")])
    {
      return 1;
    }

    v4 = [a1 applicationExtensionRecords];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    result = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v9;
LABEL_10:
      v7 = 0;
      while (1)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([objc_msgSend(*(*(&v8 + 1) + 8 * v7) "supportedIntents")])
        {
          return 1;
        }

        if (v5 == ++v7)
        {
          v5 = [v4 countByEnumeratingWithState:&v8 objects:v12 count:16];
          result = 0;
          if (v5)
          {
            goto LABEL_10;
          }

          return result;
        }
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [a1 supportedIntents];

      return [v3 containsObject:@"INSendMessageIntent"];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)sr_supportsDataGeneration
{
  v1 = [objc_msgSend(a1 "infoDictionary")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  return [v1 BOOLValue];
}

- (uint64_t)sr_isSocialNetworking
{
  v19 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v2 = a1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [a1 containingBundleRecord];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = v3;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = [objc_msgSend(v2 "iTunesMetadata")];
  v5 = [objc_msgSend(v2 "iTunesMetadata")];
  v6 = [v2 infoDictionary];
  v7 = objc_opt_class();
  v8 = [v6 objectForKey:@"SBMatchingApplicationGenres" ofClass:v7 valuesOfClass:objc_opt_class()];
  if (_MergedGlobals_1 != -1)
  {
    dispatch_once(&_MergedGlobals_1, &__block_literal_global);
  }

  v9 = qword_280AC73D8;
  if (os_log_type_enabled(qword_280AC73D8, OS_LOG_TYPE_INFO))
  {
    v11 = 138478595;
    v12 = [a1 bundleIdentifier];
    v13 = 2050;
    v14 = v4;
    v15 = 2113;
    v16 = v5;
    v17 = 2113;
    v18 = v8;
    _os_log_impl(&dword_2655E8000, v9, OS_LOG_TYPE_INFO, "bundle id: %{private}@, genre id: %{public}llu, genre: %{private}@, genres: %{private}@", &v11, 0x2Au);
  }

  if (v4 == 6005 || ([v5 isEqualToString:@"Social Networking"] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [v8 containsObject:@"Social Networking"];
  }
}

@end