@interface NSBundle(Loading)
+ (id)ics_loadBundle:()Loading atPath:;
+ (uint64_t)iCloudSettingsBundle;
@end

@implementation NSBundle(Loading)

+ (id)ics_loadBundle:()Loading atPath:
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277C84CF0]();
  v8 = [v7 stringByAppendingPathComponent:v6];

  v9 = [v8 stringByAppendingPathComponent:v5];
  v10 = [MEMORY[0x277CCA8D8] bundleWithPath:v9];
  if (([v10 isLoaded] & 1) == 0)
  {
    v11 = LogSubsystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v5;
      _os_log_impl(&dword_275819000, v11, OS_LOG_TYPE_DEFAULT, "%@ not loaded. Loading...", &v14, 0xCu);
    }

    [v10 load];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (uint64_t)iCloudSettingsBundle
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();

  return [v0 bundleForClass:v1];
}

@end