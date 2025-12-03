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
  identifier = [self identifier];
  if ([identifier isEqualToString:*MEMORY[0x277D4BCC0]])
  {
    v3 = +[STScreenTimeUIBundle bundle];
    v4 = v3;
    v5 = @"AllAppsAndCategories";
LABEL_9:
    displayName = [v3 localizedStringForKey:v5 value:&stru_282F1E250 table:0];

    goto LABEL_10;
  }

  if ([identifier isEqualToString:*MEMORY[0x277D4BCC8]])
  {
    v3 = +[STScreenTimeUIBundle bundle];
    v4 = v3;
    v5 = @"AllApps";
    goto LABEL_9;
  }

  if ([identifier isEqualToString:*MEMORY[0x277D4BCD0]])
  {
    v3 = +[STScreenTimeUIBundle bundle];
    v4 = v3;
    v5 = @"AllCategories";
    goto LABEL_9;
  }

  if ([identifier isEqualToString:*MEMORY[0x277D4BCD8]])
  {
    v3 = +[STScreenTimeUIBundle bundle];
    v4 = v3;
    v5 = @"MostUsedWebsites";
    goto LABEL_9;
  }

  type = [self type];
  switch(type)
  {
    case 3:
      _lp_userVisibleHost = [MEMORY[0x277CF9658] shortLocalizedNameForIdentifier:identifier];
      goto LABEL_21;
    case 2:
      _lp_userVisibleHost = [identifier _lp_userVisibleHost];
LABEL_21:
      displayName = _lp_userVisibleHost;
      break;
    case 1:
      mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
      v10 = [mEMORY[0x277D4B8C0] appInfoForBundleIdentifier:identifier];
      displayName = [v10 displayName];
      if (![v10 source])
      {
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __54__STUsageDetailItem_UIAdditions__localizedDisplayName__block_invoke;
        v12[3] = &unk_2783393D8;
        v12[4] = self;
        [mEMORY[0x277D4B8C0] fetchAppInfoForBundleIdentifier:identifier completionHandler:v12];
      }

      break;
    default:
      displayName = 0;
      break;
  }

LABEL_10:

  return displayName;
}

- (id)iconImage
{
  v2 = +[STIconCache sharedCache];
  identifier = [self identifier];
  type = [self type];
  if (type == 3)
  {
    v5 = [v2 imageForCategoryIdentifier:identifier];
LABEL_9:
    imageForBlankApplicationIcon = v5;
    if (v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (type != 2)
  {
    if (type == 1)
    {
      v5 = [v2 imageForBundleIdentifier:identifier];
      goto LABEL_9;
    }

LABEL_10:
    imageForBlankApplicationIcon = [v2 imageForBlankApplicationIcon];
    [v2 addObserver:self selector:sel__didFindIconImage_ bundleIdentifier:identifier];
    mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
    [mEMORY[0x277D4B8C0] addObserver:self selector:sel__didFindIconImage_ bundleIdentifier:identifier];

    goto LABEL_11;
  }

  localizedDisplayName = [self localizedDisplayName];
  if ([localizedDisplayName length])
  {
    v7 = objc_opt_new();
    [v7 setScheme:@"https"];
    [v7 setHost:localizedDisplayName];
    v21 = [v7 URL];
    _lp_highLevelDomain = [v21 _lp_highLevelDomain];
    host = [v7 host];
    v10 = [v7 URL];
    v11 = _lp_highLevelDomain;
    v12 = host;
    v13 = v10;
    if ([v11 length])
    {
      v14 = [v11 substringToIndex:1];
      uppercaseString = [v14 uppercaseString];
    }

    else
    {
      v19 = [v12 substringToIndex:1];
      uppercaseString = [v19 uppercaseString];

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

    uppercaseString = 0;
  }

  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  imageForBlankApplicationIcon = [v2 monogramImageForInitial:uppercaseString useDarkColors:{objc_msgSend(currentTraitCollection, "userInterfaceStyle") == 2}];

  if (!imageForBlankApplicationIcon)
  {
    goto LABEL_10;
  }

LABEL_11:

  return imageForBlankApplicationIcon;
}

- (id)_monogramUsingDarkColors:()UIAdditions
{
  v5 = +[STIconCache sharedCache];
  localizedDisplayName = [self localizedDisplayName];
  if ([localizedDisplayName length])
  {
    v7 = objc_opt_new();
    [v7 setScheme:@"https"];
    [v7 setHost:localizedDisplayName];
    v8 = [v7 URL];
    _lp_highLevelDomain = [v8 _lp_highLevelDomain];
    host = [v7 host];
    v11 = [v7 URL];
    v12 = _lp_highLevelDomain;
    v13 = host;
    v14 = v11;
    if ([v12 length])
    {
      v15 = [v12 substringToIndex:1];
      uppercaseString = [v15 uppercaseString];
    }

    else
    {
      v17 = [v13 substringToIndex:1];
      uppercaseString = [v17 uppercaseString];

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

    uppercaseString = 0;
  }

  v18 = [v5 monogramImageForInitial:uppercaseString useDarkColors:a3];

  return v18;
}

- (uint64_t)_didFindIconImage:()UIAdditions
{
  [self willChangeValueForKey:@"iconImage"];
  v2 = +[STIconCache sharedCache];
  identifier = [self identifier];
  [v2 removeObserver:self bundleIdentifier:identifier];

  mEMORY[0x277D4B8C0] = [MEMORY[0x277D4B8C0] sharedCache];
  identifier2 = [self identifier];
  [mEMORY[0x277D4B8C0] removeObserver:self bundleIdentifier:identifier2];

  return [self didChangeValueForKey:@"iconImage"];
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