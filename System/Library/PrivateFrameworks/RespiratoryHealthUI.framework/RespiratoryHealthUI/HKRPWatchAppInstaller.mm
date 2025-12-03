@interface HKRPWatchAppInstaller
- (HKRPWatchAppInstaller)init;
- (HKRPWatchAppInstaller)initWithDevice:(id)device watchAppAvailability:(id)availability installAppsProviding:(id)providing;
- (void)checkIfAppCanBeInstalledWithCompletion:(id)completion;
- (void)installAppWithCompletion:(id)completion;
@end

@implementation HKRPWatchAppInstaller

- (HKRPWatchAppInstaller)init
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
  v5 = [objc_alloc(MEMORY[0x277CCDBD8]) initWithBundleID:@"com.apple.NanoOxygenSaturation.watchkitapp"];
  v6 = objc_alloc_init(_HKRPDefaultWatchAppsInstallProvider);
  v7 = [(HKRPWatchAppInstaller *)self initWithDevice:getActivePairedDevice watchAppAvailability:v5 installAppsProviding:v6];

  return v7;
}

- (HKRPWatchAppInstaller)initWithDevice:(id)device watchAppAvailability:(id)availability installAppsProviding:(id)providing
{
  deviceCopy = device;
  availabilityCopy = availability;
  providingCopy = providing;
  v15.receiver = self;
  v15.super_class = HKRPWatchAppInstaller;
  v12 = [(HKRPWatchAppInstaller *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_device, device);
    objc_storeStrong(&v13->_watchAppAvailability, availability);
    objc_storeStrong(&v13->_installAppsProviding, providing);
  }

  return v13;
}

- (void)checkIfAppCanBeInstalledWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = completionCopy;
  device = self->_device;
  if (device)
  {
    watchAppAvailability = self->_watchAppAvailability;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__HKRPWatchAppInstaller_checkIfAppCanBeInstalledWithCompletion___block_invoke;
    v11[3] = &unk_279B0F0E8;
    v11[4] = self;
    v12 = completionCopy;
    [(HKWatchAppAvailability *)watchAppAvailability appInstallStateOnWatch:device completion:v11];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogRespiratoryCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = objc_opt_class();
      v15 = 2114;
      v16 = @"com.apple.NanoOxygenSaturation.watchkitapp";
      v9 = v14;
      _os_log_impl(&dword_262098000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping check to see if %{public}@ is installed. No device specified.", buf, 0x16u);
    }

    v5[2](v5, 0, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __64__HKRPWatchAppInstaller_checkIfAppCanBeInstalledWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogRespiratoryCategory();
  v7 = v6;
  switch(a2)
  {
    case 2:
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v20 = 138543618;
        v21 = objc_opt_class();
        v22 = 2114;
        v23 = @"com.apple.NanoOxygenSaturation.watchkitapp";
        v15 = v21;
        v16 = "[%{public}@] %{public}@ cannot be installed, its already installed.";
        goto LABEL_11;
      }

LABEL_12:

      v11 = *(a1 + 40);
      v12 = *(v11 + 16);
      v13 = 0;
LABEL_13:
      v18 = 0;
      goto LABEL_17;
    case 1:
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v20 = 138543618;
        v21 = objc_opt_class();
        v22 = 2114;
        v23 = @"com.apple.NanoOxygenSaturation.watchkitapp";
        v15 = v21;
        v16 = "[%{public}@] %{public}@ cannot be installed, its already installing.";
LABEL_11:
        _os_log_impl(&dword_262098000, v7, OS_LOG_TYPE_DEFAULT, v16, &v20, 0x16u);

        goto LABEL_12;
      }

      goto LABEL_12;
    case 0:
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v20 = 138543618;
        v21 = objc_opt_class();
        v22 = 2114;
        v23 = @"com.apple.NanoOxygenSaturation.watchkitapp";
        v9 = v21;
        _os_log_impl(&dword_262098000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@ can be installed.", &v20, 0x16u);
      }

      v11 = *(a1 + 40);
      v12 = *(v11 + 16);
      v13 = 1;
      goto LABEL_13;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __64__HKRPWatchAppInstaller_checkIfAppCanBeInstalledWithCompletion___block_invoke_cold_1(a1, v5, v7);
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 16);
  v13 = 0;
  v18 = v5;
LABEL_17:
  v12(v11, v13, v18, v10);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)installAppWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x277CEC4B0]) initWithBundleID:@"com.apple.NanoOxygenSaturation.watchkitapp"];
  installAppsProviding = self->_installAppsProviding;
  device = self->_device;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HKRPWatchAppInstaller_installAppWithCompletion___block_invoke;
  v9[3] = &unk_279B0F110;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(HKRPWatchInstallAppsProviding *)installAppsProviding installApp:v5 onPairedDevice:device withCompletionHandler:v9];
}

void __50__HKRPWatchAppInstaller_installAppWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = HKLogRespiratoryCategory();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = [*(v8 + 8) pairingID];
      v12 = 138543874;
      v13 = v8;
      v14 = 2114;
      v15 = @"com.apple.NanoOxygenSaturation.watchkitapp";
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_262098000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Scheduled install of %{public}@ on %{public}@", &v12, 0x20u);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__HKRPWatchAppInstaller_installAppWithCompletion___block_invoke_cold_1(a1, v5, v7);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  v10();

  v11 = *MEMORY[0x277D85DE8];
}

void __64__HKRPWatchAppInstaller_checkIfAppCanBeInstalledWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(*(a1 + 32) + 8);
  v9 = v7;
  v10 = [v8 pairingID];
  v12 = 138543874;
  v13 = v7;
  v14 = 2114;
  v15 = v10;
  v16 = 2114;
  v17 = a2;
  _os_log_error_impl(&dword_262098000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] There was an error querying for app availability on device %{public}@: %{public}@", &v12, 0x20u);

  v11 = *MEMORY[0x277D85DE8];
}

void __50__HKRPWatchAppInstaller_installAppWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = *(*(a1 + 32) + 8);
  v9 = v7;
  v10 = [v8 pairingID];
  v12 = 138544130;
  v13 = v7;
  v14 = 2114;
  v15 = @"com.apple.NanoOxygenSaturation.watchkitapp";
  v16 = 2114;
  v17 = v10;
  v18 = 2114;
  v19 = a2;
  _os_log_error_impl(&dword_262098000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to schedule install of %{public}@ on %{public}@: %{public}@", &v12, 0x2Au);

  v11 = *MEMORY[0x277D85DE8];
}

@end