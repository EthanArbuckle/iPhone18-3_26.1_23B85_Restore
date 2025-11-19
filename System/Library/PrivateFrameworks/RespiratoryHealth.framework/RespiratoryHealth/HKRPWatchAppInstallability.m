@interface HKRPWatchAppInstallability
- (BOOL)shouldInstallWatchApp;
- (HKRPWatchAppInstallability)init;
- (HKRPWatchAppInstallability)initWithDataSource:(id)a3;
- (HKRPWatchAppInstallability)initWithDevice:(id)a3;
@end

@implementation HKRPWatchAppInstallability

- (HKRPWatchAppInstallability)init
{
  v3 = objc_alloc_init(_HKRPWatchAppInstallabilityDataSource);
  v4 = [(HKRPWatchAppInstallability *)self initWithDataSource:v3];

  return v4;
}

- (HKRPWatchAppInstallability)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = [[_HKRPWatchAppInstallabilityDataSource alloc] initWithDevice:v4];

  v6 = [(HKRPWatchAppInstallability *)self initWithDataSource:v5];
  return v6;
}

- (HKRPWatchAppInstallability)initWithDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HKRPWatchAppInstallability;
  v6 = [(HKRPWatchAppInstallability *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSource, a3);
  }

  return v7;
}

- (BOOL)shouldInstallWatchApp
{
  v15 = *MEMORY[0x277D85DE8];
  if (([(HKRPWatchAppInstallabilityDataSource *)self->_dataSource isBloodOxygenSaturationEnabled]& 1) == 0)
  {
    _HKInitializeLogging();
    v3 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v4 = v14;
      v5 = "[%{public}@] -> 0 (Not allowed when feature is disabled)";
      goto LABEL_7;
    }

LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  if ([(HKRPWatchAppInstallabilityDataSource *)self->_dataSource isTinkerModeEnabled])
  {
    _HKInitializeLogging();
    v3 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = objc_opt_class();
      v4 = v14;
      v5 = "[%{public}@] -> 0 (Not allowed in Satellite Pairing Mode)";
LABEL_7:
      _os_log_impl(&dword_262078000, v3, OS_LOG_TYPE_DEFAULT, v5, &v13, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = [(HKRPWatchAppInstallabilityDataSource *)self->_dataSource isDeviceSupported];
  v10 = [(HKRPWatchAppInstallabilityDataSource *)self->_dataSource shouldForceAppInstall];
  _HKInitializeLogging();
  v3 = HKLogRespiratoryCategory();
  v11 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if ((v9 & 1) == 0 && (v10 & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_8;
    }

    v13 = 138543362;
    v14 = objc_opt_class();
    v4 = v14;
    v5 = "[%{public}@] -> 0 (Device hardware not supported)";
    goto LABEL_7;
  }

  if (v11)
  {
    v13 = 138543362;
    v14 = objc_opt_class();
    v12 = v14;
    _os_log_impl(&dword_262078000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] -> 1 (App installation not restricted)", &v13, 0xCu);
  }

  v6 = 1;
LABEL_9:

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

@end