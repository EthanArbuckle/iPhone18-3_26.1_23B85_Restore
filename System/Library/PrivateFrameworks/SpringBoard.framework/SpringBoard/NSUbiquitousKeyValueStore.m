@interface NSUbiquitousKeyValueStore
@end

@implementation NSUbiquitousKeyValueStore

void __54__NSUbiquitousKeyValueStore_SBKnownKeyFiltering__load__block_invoke()
{
  v0 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v0, sel_setObject_forKey_);
  v2 = objc_opt_class();
  v3 = class_getInstanceMethod(v2, sel_sb_setObject_forKey_);
  v4 = v3;
  if (InstanceMethod)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __54__NSUbiquitousKeyValueStore_SBKnownKeyFiltering__load__block_invoke_cold_1(InstanceMethod, v4, v6);
    }
  }

  else
  {

    method_exchangeImplementations(InstanceMethod, v3);
  }
}

void __54__NSUbiquitousKeyValueStore_SBKnownKeyFiltering__load__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21ED4E000, log, OS_LOG_TYPE_ERROR, "Failed to swizzle out the NSUbiquitousKeyValueStore object setter. Orig: %@. Replacement: %@", &v3, 0x16u);
}

@end