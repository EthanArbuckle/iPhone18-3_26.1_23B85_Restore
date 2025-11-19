@interface TPSBiometricEnrollmentValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSBiometricEnrollmentValidation

- (void)validateWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  out_token = 0;
  v12 = 0;
  v4 = a3;
  v5 = notify_register_check("com.apple.BiometricKit.enrollmentChanged", &out_token);
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v15 = v6;
      _os_log_impl(&dword_232D6F000, v7, OS_LOG_TYPE_INFO, "notify_register_check failed: %u", buf, 8u);
    }

    v8 = 0;
  }

  else
  {
    notify_get_state(out_token, &v12);
    notify_cancel(out_token);
    v9 = v12;
    v8 = (v9 == 0) ^ [(TPSTargetingValidation *)self BOOLValue];
  }

  v10 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(TPSDictationLanguageValidation *)self validateWithCompletion:v8, v10];
  }

  v4[2](v4, v8, 0);
  v11 = *MEMORY[0x277D85DE8];
}

@end