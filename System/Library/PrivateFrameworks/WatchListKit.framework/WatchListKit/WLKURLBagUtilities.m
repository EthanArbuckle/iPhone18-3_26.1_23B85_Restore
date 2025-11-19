@interface WLKURLBagUtilities
+ (BOOL)isFullTVAppEnabled;
+ (id)isFullTVAppEnabledCachedValue;
+ (void)isFullTVAppEnabledWithCompletion:(id)a3;
+ (void)isFullTVAppEnabledwithCompletion:(id)a3;
@end

@implementation WLKURLBagUtilities

+ (BOOL)isFullTVAppEnabled
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__WLKURLBagUtilities_isFullTVAppEnabled__block_invoke;
  v6[3] = &unk_279E5EA40;
  v8 = &v9;
  v4 = v2;
  v7 = v4;
  [v3 isFullTVAppEnabledwithCompletion:v6];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(v3) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return v3;
}

+ (void)isFullTVAppEnabledwithCompletion:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__WLKURLBagUtilities_isFullTVAppEnabledwithCompletion___block_invoke;
  v6[3] = &unk_279E5EA68;
  v7 = v3;
  v5 = v3;
  [v4 isFullTVAppEnabledWithCompletion:v6];
}

uint64_t __55__WLKURLBagUtilities_isFullTVAppEnabledwithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

+ (void)isFullTVAppEnabledWithCompletion:(id)a3
{
  v3 = a3;
  v4 = WLKTVAppEnabledOverride();
  v5 = v4;
  if (v4)
  {
    NSLog(&cfstr_Isfulltvappena.isa, [v4 BOOLValue]);
    v6 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
    [v6 setBool:objc_msgSend(v5 forKey:{"BOOLValue"), @"lastKnownTVAppEnabledValue"}];

    if (v3)
    {
      v3[2](v3, [v5 BOOLValue], 0);
    }
  }

  else
  {
    v7 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__WLKURLBagUtilities_isFullTVAppEnabledWithCompletion___block_invoke;
    block[3] = &unk_279E5EA90;
    v9 = v3;
    dispatch_async(v7, block);
  }
}

void __55__WLKURLBagUtilities_isFullTVAppEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D6C480] app];
  v3 = [v2 cachedBooleanForKey:kBagKeyUVSearchNowPlayingEnabled];

  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v3;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "Fetch full tv app enabled: %@", &v12, 0xCu);
  }

  if (v3)
  {
    v5 = [v3 BOOLValue];
LABEL_5:
    v6 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
    [v6 setBool:v5 forKey:@"lastKnownTVAppEnabledValue"];

    goto LABEL_11;
  }

  v7 = +[WLKReachabilityMonitor sharedInstance];
  v8 = [v7 isNetworkReachable];

  if (v8)
  {
    v5 = [0 BOOLValue];
    v3 = 0;
  }

  else
  {
    v3 = +[WLKURLBagUtilities isFullTVAppEnabledCachedValue];
    v9 = WLKSystemLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v3;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "Fetch full tv app enabled, fall back to previous cached value %@", &v12, 0xCu);
    }

    v5 = [v3 BOOLValue];
    if (v3)
    {
      goto LABEL_5;
    }
  }

LABEL_11:
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, 0);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)isFullTVAppEnabledCachedValue
{
  v2 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v3 = [v2 objectForKey:@"lastKnownTVAppEnabledValue"];

  return v3;
}

@end