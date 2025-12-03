@interface AVAsset(TVPAdditions)
+ (uint64_t)tvp_shouldIgnoreLoadFailureForKey:()TVPAdditions error:logObject:;
- (int64_t)tvp_maximumVideoRange;
- (uint64_t)tvp_maximumVideoResolution;
@end

@implementation AVAsset(TVPAdditions)

+ (uint64_t)tvp_shouldIgnoreLoadFailureForKey:()TVPAdditions error:logObject:
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (([v7 isEqualToString:@"availableVideoDynamicRanges"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"maximumVideoResolution") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"availableChapterLocales") & 1) == 0)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v14 = [standardUserDefaults arrayForKey:@"AVAssetKeysForWhichToIgnoreFailures"];

    if (v7 && v14)
    {
      if ([v14 containsObject:v7])
      {
        if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v7;
          _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring failure of key %@ due to user defaults", &v19, 0xCu);
        }

LABEL_20:
        v10 = 1;
LABEL_23:

        goto LABEL_5;
      }
    }

    else if (!v7)
    {
      goto LABEL_22;
    }

    if ([v7 isEqualToString:@"availableMediaCharacteristicsWithMediaSelectionOptions"])
    {
      userInfo = [v8 userInfo];
      v16 = [userInfo objectForKey:*MEMORY[0x277CE5D38]];

      if (![v16 count] || objc_msgSend(v16, "count") == 1 && (objc_msgSend(v16, "firstObject"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", *MEMORY[0x277CD6480]), v17, v18))
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412546;
          v20 = v7;
          v21 = 2112;
          v22 = v8;
          _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Ignoring failure of key %@ due to non-fatal failure to load localized media selection names: %@", &v19, 0x16u);
        }

        goto LABEL_20;
      }
    }

LABEL_22:
    v10 = 0;
    goto LABEL_23;
  }

  v10 = 1;
LABEL_5:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (uint64_t)tvp_maximumVideoResolution
{
  v2 = [self statusOfValueForKey:@"maximumVideoResolution" error:0];
  result = 0;
  if (v2 == 2)
  {
    [self maximumVideoResolution];
    v5 = 3;
    if (v4 < 3456.0)
    {
      v5 = 2;
    }

    if (v4 < 1280.0)
    {
      v5 = 1;
    }

    if (v4 > 0.0)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int64_t)tvp_maximumVideoRange
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = 0;
  if ([self statusOfValueForKey:@"availableVideoDynamicRanges" error:0] == 2)
  {
    availableVideoDynamicRanges = [self availableVideoDynamicRanges];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [availableVideoDynamicRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      LODWORD(v6) = 0;
      v7 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(availableVideoDynamicRanges);
          }

          intValue = [*(*(&v12 + 1) + 8 * i) intValue];
          if (intValue <= v6)
          {
            v6 = v6;
          }

          else
          {
            v6 = intValue;
          }
        }

        v5 = [availableVideoDynamicRanges countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    v2 = [TVPPlayer tvpVideoRangeForVideoDynamicRange:v6];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v2;
}

@end