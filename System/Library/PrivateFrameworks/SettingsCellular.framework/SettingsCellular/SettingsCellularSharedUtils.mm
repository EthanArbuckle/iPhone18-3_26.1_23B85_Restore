@interface SettingsCellularSharedUtils
+ (id)createCTClientSerialQueue:(id)a3;
+ (id)sharedCTClientWorkloop;
+ (id)usageSizeString:(double)a3;
+ (void)logSpecifiers:(id)a3 origin:(id)a4;
@end

@implementation SettingsCellularSharedUtils

+ (id)sharedCTClientWorkloop
{
  if (qword_280F75D60 != -1)
  {
    dispatch_once(&qword_280F75D60, &__block_literal_global_3);
  }

  v3 = _MergedGlobals_7;

  return v3;
}

uint64_t __53__SettingsCellularSharedUtils_sharedCTClientWorkloop__block_invoke()
{
  _MergedGlobals_7 = dispatch_workloop_create("com.apple.preferences.coretelephony_client_workloop");

  return MEMORY[0x2821F96F8]();
}

+ (id)createCTClientSerialQueue:(id)a3
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.preferences.coretelephony_client_%@_queue", a3];
  v5 = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v7 = [a1 sharedCTClientWorkloop];
  v8 = dispatch_queue_create_with_target_V2(v5, v6, v7);

  return v8;
}

+ (void)logSpecifiers:(id)a3 origin:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [Logger loggerWithCategory:@"Specifiers"];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v6;
    v26 = 2048;
    v27 = [v5 count];
    _os_log_impl(&dword_2658CA000, v7, OS_LOG_TYPE_DEFAULT, "%@ showing %zu specifiers", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v20;
    *&v10 = 138412546;
    v18 = v10;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = [Logger loggerWithCategory:@"Specifiers", v18, v19];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v14 name];
          *buf = v18;
          v25 = v6;
          v26 = 2112;
          v27 = v16;
          _os_log_impl(&dword_2658CA000, v15, OS_LOG_TYPE_DEFAULT, "%@ showing specifier: %@", buf, 0x16u);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)usageSizeString:(double)a3
{
  if (qword_280F75D70 != -1)
  {
    dispatch_once(&qword_280F75D70, &__block_literal_global_8);
  }

  v4 = qword_280F75D68;

  return [v4 stringFromByteCount:a3];
}

uint64_t __47__SettingsCellularSharedUtils_usageSizeString___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA8E8]);
  v1 = qword_280F75D68;
  qword_280F75D68 = v0;

  [qword_280F75D68 setZeroPadsFractionDigits:1];
  [qword_280F75D68 setAdaptive:0];
  v2 = qword_280F75D68;

  return [v2 setCountStyle:3];
}

@end