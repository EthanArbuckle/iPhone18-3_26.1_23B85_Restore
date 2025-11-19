@interface UIAlertController
@end

@implementation UIAlertController

void __82__UIAlertController_TelephonyPreferences__tps_tapToRadarAlertControllerWithError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __82__UIAlertController_TelephonyPreferences__tps_tapToRadarAlertControllerWithError___block_invoke_2;
  v4[3] = &unk_2782E3B38;
  v5 = v3;
  [v2 openURL:v5 configuration:0 completionHandler:v4];
}

void __82__UIAlertController_TelephonyPreferences__tps_tapToRadarAlertControllerWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = TPSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __82__UIAlertController_TelephonyPreferences__tps_tapToRadarAlertControllerWithError___block_invoke_2_cold_1(a1, v4, v5);
    }
  }
}

void __82__UIAlertController_TelephonyPreferences__tps_tapToRadarAlertControllerWithError___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_21B8E9000, log, OS_LOG_TYPE_ERROR, "Opening URL %@ failed with error %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end