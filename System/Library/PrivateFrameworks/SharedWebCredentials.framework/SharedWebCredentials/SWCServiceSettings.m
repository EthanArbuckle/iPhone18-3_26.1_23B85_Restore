@interface SWCServiceSettings
@end

@implementation SWCServiceSettings

void __41___SWCServiceSettings_notificationCenter__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCAB98]);
  v3 = _MergedGlobals_0;
  _MergedGlobals_0 = v2;

  if (_SWCServerIsUsingTestListener())
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:sel_serviceSettingsDidChange_ name:@"com.apple.swc.internalUseOnly.serviceSettingsDidChangeNotification" object:0];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v4 addObserver:*(a1 + 32) selector:sel_serviceSettingsDidChange_ name:@"com.apple.swc.internalUseOnly.serviceSettingsDidChangeNotification" object:0 suspensionBehavior:4];
  }
}

void __65___SWCServiceSettings_serviceSettingsWithServiceSpecifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t __58___SWCServiceSettings_objectForKey_ofClass_valuesOfClass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void __44___SWCServiceSettings_commitReturningError___block_invoke_2(void *a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = *(a1[5] + 8);
  if (v13)
  {
    *(v6 + 24) = 1;
    v7 = a1 + 4;
    v8 = 32;
    v9 = v13;
  }

  else
  {
    *(v6 + 24) = 0;
    v7 = (a1[6] + 8);
    v8 = 40;
    v9 = v5;
  }

  v10 = *v7;
  v11 = v9;
  v12 = *(v10 + v8);
  *(v10 + v8) = v11;
}

void __65___SWCServiceSettings_postChangeNotificationForServiceSpecifier___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("_SWCServiceSettings notification queue", v2);
  v1 = qword_280B21810;
  qword_280B21810 = v0;
}

void __65___SWCServiceSettings_postChangeNotificationForServiceSpecifier___block_invoke_2(uint64_t a1)
{
  if (_SWCServerIsUsingTestListener())
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"com.apple.swc.internalUseOnly.serviceSettingsDidChangeNotification" object:0 userInfo:*(a1 + 32)];
  }

  else
  {
    v2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v2 postNotificationName:@"com.apple.swc.internalUseOnly.serviceSettingsDidChangeNotification" object:0 userInfo:*(a1 + 32) options:*(a1 + 40)];
  }
}

@end