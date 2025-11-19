@interface PSListController
@end

@implementation PSListController

uint64_t __46__PSListController_PIN__st_sharedPINSpecifier__block_invoke()
{
  v0 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:@"PIN" target:0 set:0 get:0 detail:0 cell:-1 edit:{+[STDevicePINFactory devicePINPaneForPlatform](STDevicePINFactory, "devicePINPaneForPlatform")}];
  v1 = st_sharedPINSpecifier_specifier;
  st_sharedPINSpecifier_specifier = v0;

  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  [st_sharedPINSpecifier_specifier setObject:v3 forKeyedSubscript:*MEMORY[0x277D400B8]];

  [st_sharedPINSpecifier_specifier setObject:&unk_28769D370 forKeyedSubscript:*MEMORY[0x277D401C0]];
  v4 = st_sharedPINSpecifier_specifier;
  v5 = MEMORY[0x277CBEC38];

  return [v4 setObject:v5 forKeyedSubscript:0x287675A28];
}

void __46__PSListController_PIN__st_didAcceptRemovePIN__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __58__STPasscodeGroupSpecifierProvider__removeManagedPasscode__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = [WeakRetained coordinator];
    [v12 setHasAlreadyEnteredPINForSession:0];
  }
}

void __64__PSListController_PIN__st_devicePINController_didAcceptSetPIN___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __64__PSListController_PIN__st_devicePINController_didAcceptSetPIN___block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __68__PSListController_PIN__st_devicePINController_didAcceptChangedPIN___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __68__PSListController_PIN__st_devicePINController_didAcceptChangedPIN___block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = [WeakRetained coordinator];
    [v12 setHasAlreadyEnteredPINForSession:0];
  }
}

@end