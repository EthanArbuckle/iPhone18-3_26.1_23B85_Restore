@interface STUsageDetailItem(UIAdditions)
+ (void)iconImageForBundleIdentifier:()UIAdditions completionHandler:;
- (id)_monogramUsingDarkColors:()UIAdditions;
- (id)iconImage;
- (id)localizedDisplayName;
- (uint64_t)_didFindIconImage:()UIAdditions;
- (void)iconImage;
@end

@implementation STUsageDetailItem(UIAdditions)

- (id)localizedDisplayName
{
  v2 = [a1 identifier];
  if ([v2 isEqualToString:*MEMORY[0x277D4BCC0]])
  {
    v3 = +[STScreenTimeUIBundle bundle];
    v4 = v3;
    v5 = @"AllAppsAndCategories";
LABEL_9:
    v6 = [v3 localizedStringForKey:v5 value:&stru_282F1E250 table:0];

    goto LABEL_10;
  }

  if ([v2 isEqualToString:*MEMORY[0x277D4BCC8]])
  {
    v3 = +[STScreenTimeUIBundle bundle];
    v4 = v3;
    v5 = @"AllApps";
    goto LABEL_9;
  }

  if ([v2 isEqualToString:*MEMORY[0x277D4BCD0]])
  {
    v3 = +[STScreenTimeUIBundle bundle];
    v4 = v3;
    v5 = @"AllCategories";
    goto LABEL_9;
  }

  if ([v2 isEqualToString:*MEMORY[0x277D4BCD8]])
  {
    v3 = +[STScreenTimeUIBundle bundle];
    v4 = v3;
    v5 = @"MostUsedWebsites";
    goto LABEL_9;
  }

  v8 = [a1 type];
  switch(v8)
  {
    case 3:
      v11 = [MEMORY[0x277CF9658] shortLocalizedNameForIdentifier:v2];
      goto LABEL_21;
    case 2:
      v11 = [v2 _lp_userVisibleHost];
LABEL_21:
      v6 = v11;
      break;
    case 1:
      v9 = [MEMORY[0x277D4B8C0] sharedCache];
      v10 = [v9 appInfoForBundleIdentifier:v2];
      v6 = [v10 displayName];
      if (![v10 source])
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __54__STUsageDetailItem_UIAdditions__localizedDisplayName__block_invoke;
        v12[3] = &unk_2783393D8;
        v12[4] = a1;
        [v9 fetchAppInfoForBundleIdentifier:v2 completionHandler:v12];
      }

      break;
    default:
      v6 = 0;
      break;
  }

LABEL_10:

  return v6;
}

- (id)iconImage
{
  v2 = +[STIconCache sharedCache];
  v3 = [a1 identifier];
  v4 = [a1 type];
  if (v4 == 3)
  {
    v5 = [v2 imageForCategoryIdentifier:v3];
LABEL_9:
    v16 = v5;
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v5 = [v2 imageForBundleIdentifier:v3];
      goto LABEL_9;
    }

LABEL_10:
    v16 = [v2 imageForBlankApplicationIcon];
    [v2 addObserver:a1 selector:sel__didFindIconImage_ bundleIdentifier:v3];
    v17 = [MEMORY[0x277D4B8C0] sharedCache];
    [v17 addObserver:a1 selector:sel__didFindIconImage_ bundleIdentifier:v3];

    goto LABEL_11;
  }

  v6 = [a1 localizedDisplayName];
  if ([v6 length])
  {
    v7 = objc_opt_new();
    [v7 setScheme:@"https"];
    [v7 setHost:v6];
    v21 = [v7 URL];
    v8 = [v21 _lp_highLevelDomain];
    v9 = [v7 host];
    v10 = [v7 URL];
    v11 = v8;
    v12 = v9;
    v13 = v10;
    if ([v11 length])
    {
      v14 = [v11 substringToIndex:1];
      v15 = [v14 uppercaseString];
    }

    else
    {
      v19 = [v12 substringToIndex:1];
      v15 = [v19 uppercaseString];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [STUsageDetailItem(UIAdditions) iconImage];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [STUsageDetailItem(UIAdditions) iconImage];
    }

    v15 = 0;
  }

  v20 = [MEMORY[0x277D75C80] currentTraitCollection];
  v16 = [v2 monogramImageForInitial:v15 useDarkColors:{objc_msgSend(v20, "userInterfaceStyle") == 2}];

  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_11:

  return v16;
}

- (id)_monogramUsingDarkColors:()UIAdditions
{
  v5 = +[STIconCache sharedCache];
  v6 = [a1 localizedDisplayName];
  if ([v6 length])
  {
    v7 = objc_opt_new();
    [v7 setScheme:@"https"];
    [v7 setHost:v6];
    v8 = [v7 URL];
    v9 = [v8 _lp_highLevelDomain];
    v10 = [v7 host];
    v11 = [v7 URL];
    v12 = v9;
    v13 = v10;
    v14 = v11;
    if ([v12 length])
    {
      v15 = [v12 substringToIndex:1];
      v16 = [v15 uppercaseString];
    }

    else
    {
      v17 = [v13 substringToIndex:1];
      v16 = [v17 uppercaseString];

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [STUsageDetailItem(UIAdditions) iconImage];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [STUsageDetailItem(UIAdditions) iconImage];
    }

    v16 = 0;
  }

  v18 = [v5 monogramImageForInitial:v16 useDarkColors:a3];

  return v18;
}

- (uint64_t)_didFindIconImage:()UIAdditions
{
  [a1 willChangeValueForKey:@"iconImage"];
  v2 = +[STIconCache sharedCache];
  v3 = [a1 identifier];
  [v2 removeObserver:a1 bundleIdentifier:v3];

  v4 = [MEMORY[0x277D4B8C0] sharedCache];
  v5 = [a1 identifier];
  [v4 removeObserver:a1 bundleIdentifier:v5];

  return [a1 didChangeValueForKey:@"iconImage"];
}

+ (void)iconImageForBundleIdentifier:()UIAdditions completionHandler:
{
  v5 = a4;
  v6 = a3;
  v7 = +[STIconCache sharedCache];
  [v7 imageForBundleIdentifier:v6 completionHandler:v5];
}

- (void)iconImage
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end