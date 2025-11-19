@interface NSUbiquitousKeyValueStore(SBKnownKeyFiltering)
+ (void)load;
- (void)sb_setObject:()SBKnownKeyFiltering forKey:;
@end

@implementation NSUbiquitousKeyValueStore(SBKnownKeyFiltering)

+ (void)load
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NSUbiquitousKeyValueStore_SBKnownKeyFiltering__load__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (load_onceToken != -1)
  {
    dispatch_once(&load_onceToken, block);
  }
}

- (void)sb_setObject:()SBKnownKeyFiltering forKey:
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAD80] defaultStore];

  if (v8 == a1)
  {
    v9 = SBLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [NSUbiquitousKeyValueStore(SBKnownKeyFiltering) sb_setObject:v7 forKey:v9];
    }
  }

  [a1 sb_setObject:v6 forKey:v7];
}

- (void)sb_setObject:()SBKnownKeyFiltering forKey:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_FAULT, "NSUbiquitousKeyValueStore setObject: with invalid key: %{public}@", &v2, 0xCu);
}

@end