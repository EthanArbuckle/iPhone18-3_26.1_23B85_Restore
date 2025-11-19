@interface SDLocUtilities
+ (id)displayNameForBundleIdentifer:(id)a3;
+ (void)initialize;
@end

@implementation SDLocUtilities

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v3 = sSearchFrameworkBundle;
    sSearchFrameworkBundle = v2;

    MEMORY[0x1EEE66BB8](v2, v3);
  }
}

+ (id)displayNameForBundleIdentifer:(id)a3
{
  v3 = a3;
  if (displayNameForBundleIdentifer__onceToken != -1)
  {
    +[SDLocUtilities displayNameForBundleIdentifer:];
  }

  pthread_rwlock_rdlock(&sAppDisplayNameReadWriteLock);
  p_vtable = SPApplication.vtable;
  v5 = [sAppDisplayNameDictionary objectForKey:v3];
  pthread_rwlock_unlock(&sAppDisplayNameReadWriteLock);
  if (!v5)
  {
    pthread_rwlock_wrlock(&sAppDisplayNameReadWriteLock);
    if ([(__CFString *)v3 isEqualToString:*MEMORY[0x1E69D3F50]])
    {
      v7 = *MEMORY[0x1E69D3EE0];

      v3 = v7;
    }

    if ([(__CFString *)v3 isEqualToString:*MEMORY[0x1E69D3ED8]])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"com.apple.MobileAddressBook";
    }

    else if ([(__CFString *)v3 isEqualToString:*MEMORY[0x1E69D3F38]])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_SYNDICATED_LINKS";
    }

    else if ([(__CFString *)v3 isEqualToString:*MEMORY[0x1E69D3F40]])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_SYNDICATED_PHOTOS_FROM_APPS";
    }

    else if ([(__CFString *)v3 isEqualToString:*MEMORY[0x1E69D3F58]])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_SYNDICATED_PHOTOS_FROM_MESSAGES";
    }

    else if ([(__CFString *)v3 isEqualToString:*MEMORY[0x1E69D3F60]])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_SYNDICATED_PHOTOS_FROM_NOTES";
    }

    else if ([(__CFString *)v3 isEqualToString:*MEMORY[0x1E69D3F48]])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_SYNDICATED_PHOTOS_FROM_FILES";
    }

    else if ([(__CFString *)v3 isEqualToString:*MEMORY[0x1E69D3F30]])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_SYNDICATED_FILES_FROM_MESSAGES";
    }

    else if ([(__CFString *)v3 isEqualToString:@"com.apple.application"])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_APPLICATION";
    }

    else if ([(__CFString *)v3 isEqualToString:@"com.apple.app-clips"])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_APP_CLIPS";
    }

    else if ([(__CFString *)v3 isEqualToString:@"com.apple.peopled"])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_PEOPLE";
    }

    else if ([(__CFString *)v3 isEqualToString:@"com.apple.people.askToBuyRequest"])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_PEOPLE_ASK_TO_BUY";
    }

    else if ([(__CFString *)v3 isEqualToString:@"com.apple.people.screenTimeRequest"])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_PEOPLE_SCREEN_TIME_REQUEST";
    }

    else if ([(__CFString *)v3 isEqualToString:@"com.apple.people.findMy"])
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_PEOPLE_FIND_MY";
    }

    else if ([(__CFString *)v3 isEqualToString:*MEMORY[0x1E69D3ED0]]&& _os_feature_enabled_impl())
    {
      v8 = sSearchFrameworkBundle;
      v9 = @"DOMAIN_EVENTS";
    }

    else
    {
      v13 = [MEMORY[0x1E6963608] defaultWorkspace];
      v14 = [v13 applicationIsInstalled:v3];

      if (v14)
      {
        v15 = SPFastApplicationsGetNoBuild();
        v16 = [v15 objectForKeyedSubscript:v3];

        v5 = [v16 displayName];
        if (!v5)
        {
          v17 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v3 allowPlaceholder:1 error:0];
          v5 = [v17 localizedName];
        }

        p_vtable = (SPApplication + 24);
        goto LABEL_35;
      }

      v18 = +[SDAppUninstallMonitor applicationsExcludedFromUninstall];
      v19 = [v18 containsObject:v3];

      if (!v19)
      {
        v5 = 0;
        goto LABEL_35;
      }

      v8 = sSearchFrameworkBundle;
      v9 = v3;
    }

    v5 = [v8 localizedStringForKey:v9 value:&stru_1F47D3128 table:@"Search"];
LABEL_35:
    v10 = *MEMORY[0x1E695E738];
    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = *MEMORY[0x1E695E738];
    }

    [p_vtable[206] setObject:v11 forKey:v3];
    pthread_rwlock_unlock(&sAppDisplayNameReadWriteLock);
    goto LABEL_39;
  }

  if (v5 == *MEMORY[0x1E695E738])
  {
    v6 = 0;
    goto LABEL_40;
  }

LABEL_39:
  v5 = v5;
  v6 = v5;
LABEL_40:

  return v6;
}

uint64_t __48__SDLocUtilities_displayNameForBundleIdentifer___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = sAppDisplayNameDictionary;
  sAppDisplayNameDictionary = v0;

  [sAppDisplayNameDictionary setObject:*MEMORY[0x1E695E738] forKey:@"com.apple.springboard"];

  return pthread_rwlock_init(&sAppDisplayNameReadWriteLock, 0);
}

@end