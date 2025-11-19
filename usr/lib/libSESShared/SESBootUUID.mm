@interface SESBootUUID
+ (BOOL)isFirstLaunchAfterBootForKey:(id)a3;
+ (id)getBootUUID;
+ (id)getInstance;
+ (void)setFirstLaunchAfterBootDoneForKey:(id)a3;
@end

@implementation SESBootUUID

+ (id)getInstance
{
  if (getInstance_onceToken != -1)
  {
    +[SESBootUUID getInstance];
  }

  v3 = getInstance_instance;

  return v3;
}

void __26__SESBootUUID_getInstance__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_new();
  v1 = getInstance_instance;
  getInstance_instance = v0;

  memset(v6, 0, sizeof(v6));
  v5 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v6, &v5, 0, 0))
  {
    __26__SESBootUUID_getInstance__block_invoke_cold_1();
  }

  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v6];
  v3 = *(getInstance_instance + 8);
  *(getInstance_instance + 8) = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (BOOL)isFirstLaunchAfterBootForKey:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[SESBootUUID getInstance];
  objc_sync_enter(v4);
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.seserviced"];
  v6 = [v5 valueForKey:v3];
  v7 = v6;
  if (v4[1])
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [v6 isEqualToString:?];
  }

  v10 = SESDefaultLogObject();
  v11 = v9 ^ 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v14 = 138412546;
    v15 = v3;
    v16 = 1024;
    v17 = v11;
    _os_log_impl(&dword_1E0FCB000, v10, OS_LOG_TYPE_INFO, "First launch after boot for %@ %d", &v14, 0x12u);
  }

  objc_sync_exit(v4);
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (void)setFirstLaunchAfterBootDoneForKey:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[SESBootUUID getInstance];
  objc_sync_enter(v4);
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.seserviced"];
  [v5 setObject:v4[1] forKey:v3];
  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1E0FCB000, v6, OS_LOG_TYPE_INFO, "First launch after boot complete for %@", &v8, 0xCu);
  }

  objc_sync_exit(v4);
  v7 = *MEMORY[0x1E69E9840];
}

+ (id)getBootUUID
{
  v2 = +[SESBootUUID getInstance];
  v3 = [v2 bootUUID];

  return v3;
}

@end