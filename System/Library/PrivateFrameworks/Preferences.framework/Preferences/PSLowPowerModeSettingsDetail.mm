@interface PSLowPowerModeSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSLowPowerModeSettingsDetail

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  v4 = _PSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "+[PSLowPowerModeSettingsDetail setEnabled:]";
    v10 = 1024;
    v11 = enabledCopy;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "######## %s - enabled: %d", &v8, 0x12u);
  }

  mEMORY[0x1E69AD408] = [MEMORY[0x1E69AD408] sharedInstance];
  v6 = [mEMORY[0x1E69AD408] setPowerMode:enabledCopy fromSource:*MEMORY[0x1E69AD410]];

  if ((v6 & 1) == 0)
  {
    v7 = _PSLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(PSLowPowerModeSettingsDetail *)enabledCopy setEnabled:v7];
    }
  }
}

+ (BOOL)isEnabled
{
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  return isLowPowerModeEnabled;
}

+ (void)setEnabled:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_18B008000, a2, OS_LOG_TYPE_ERROR, "Failed to report change to Low Power Mode: %@ via LowPowerMode", &v4, 0xCu);
}

@end