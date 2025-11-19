@interface PLCoreService
- (PLCoreService)init;
- (void)startPreUnlockServices;
- (void)startServices;
@end

@implementation PLCoreService

- (PLCoreService)init
{
  v6.receiver = self;
  v6.super_class = PLCoreService;
  v2 = [(PLCoreOperator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    services = v2->_services;
    v2->_services = v3;
  }

  return v2;
}

- (void)startServices
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Start Powerlog Services", buf, 2u);
  }

  v4 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = PLCoreService;
  [(PLCoreOperator *)&v5 startOperatorsOfSuperClassType:v4];
}

- (void)startPreUnlockServices
{
  v3 = PLLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1D8611000, v3, OS_LOG_TYPE_DEFAULT, "Start Powerlog Services for pre unlock telemetry", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = PLCoreService;
  [(PLCoreOperator *)&v4 startServicesForPreUnlockTelemetry];
}

@end