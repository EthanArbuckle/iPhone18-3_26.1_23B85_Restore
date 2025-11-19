@interface SBLegacyServices
+ (id)workloop;
+ (void)_configure;
+ (void)checkInPorts;
+ (void)setFunction:(void *)a3 forSymbol:(const char *)a4;
+ (void)start;
@end

@implementation SBLegacyServices

+ (void)_configure
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SBLegacyServices__configure__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_configure_onceToken != -1)
  {
    dispatch_once(&_configure_onceToken, block);
  }
}

uint64_t __30__SBLegacyServices__configure__block_invoke(uint64_t a1)
{
  inactive = dispatch_workloop_create_inactive("SBMigServices");
  v3 = __SharedWorkloop;
  __SharedWorkloop = inactive;

  dispatch_workloop_set_autorelease_frequency(__SharedWorkloop, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_set_qos_class_fallback();
  dispatch_activate(__SharedWorkloop);
  [*(a1 + 32) checkInPorts];
  __FunctionMap = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:770 valueOptions:258];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)checkInPorts
{
  if (checkInPorts_onceToken != -1)
  {
    +[SBLegacyServices checkInPorts];
  }
}

void __32__SBLegacyServices_checkInPorts__block_invoke()
{
  v3 = 0u;
  *&v1 = 0;
  v0 = "com.apple.springboard.services";
  bootstrap_check_in2();
  *(&v2 + 1) = SpringBoardUser_server;
  *(&v1 + 1) = 2112;
  *&v2 = _SBMigSpringBoardUser_subsystem;
  __copy_assignment_8_8_t0w40_s40_s48(&__ForegroundMigService, &v0);

  v2 = 0u;
  v3 = 0u;
  v1 = 0u;
  v0 = "com.apple.springboard.blockableservices";
  bootstrap_check_in2();
  *&v2 = _SBMigSpringBoardUser_subsystem;
  *(&v2 + 1) = SpringBoardUser_server;
  *(&v1 + 1) = 2112;
  __copy_assignment_8_8_t0w40_s40_s48(&__ForegroundBlockableMigService, &v0);

  v2 = 0u;
  v3 = 0u;
  v1 = 0u;
  v0 = "com.apple.springboard.backgroundappservices";
  bootstrap_check_in2();
  *(&v2 + 1) = SpringBoardUtility_server;
  *(&v1 + 1) = 2096;
  *&v2 = _SBMigSpringBoardUtility_subsystem;
  __copy_assignment_8_8_t0w40_s40_s48(&__BackgroundMigService, &v0);
}

+ (void)start
{
  [a1 _configure];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_19169D000, v2, OS_LOG_TYPE_INFO, "[SBMig] Starting services.", v3, 2u);
  }

  dispatch_async(__SharedWorkloop, &__block_literal_global_9_1);
}

void __25__SBLegacyServices_start__block_invoke()
{
  SBMachServiceInitialize(__ForegroundMigService);
  SBMachServiceInitialize(__ForegroundBlockableMigService);

  SBMachServiceInitialize(__BackgroundMigService);
}

+ (id)workloop
{
  [a1 _configure];
  v2 = __SharedWorkloop;

  return v2;
}

+ (void)setFunction:(void *)a3 forSymbol:(const char *)a4
{
  [a1 _configure];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__SBLegacyServices_setFunction_forSymbol___block_invoke;
  v6[3] = &__block_descriptor_48_e5_v8__0l;
  v6[4] = a4;
  v6[5] = a3;
  dispatch_async(__SharedWorkloop, v6);
}

void __42__SBLegacyServices_setFunction_forSymbol___block_invoke(uint64_t a1)
{
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __42__SBLegacyServices_setFunction_forSymbol___block_invoke_cold_1(a1, v2);
  }

  NSMapInsert(__FunctionMap, *(a1 + 32), *(a1 + 40));
}

void __42__SBLegacyServices_setFunction_forSymbol___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 136446466;
  v5 = v2;
  v6 = 2048;
  v7 = v3;
  _os_log_debug_impl(&dword_19169D000, a2, OS_LOG_TYPE_DEBUG, "[SBMig] Host caching implementation of %{public}s at %p", &v4, 0x16u);
}

@end