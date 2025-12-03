@interface PSBluetoothSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)enabled;
@end

@implementation PSBluetoothSettingsDetail

+ (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10 = *MEMORY[0x1E69E9840];
  v4 = _PSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[PSBluetoothSettingsDetail setEnabled:]";
    v8 = 1024;
    v9 = enabledCopy;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "######## %s - enabled: %d", &v6, 0x12u);
  }

  mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
  [mEMORY[0x1E698F468] setEnabled:enabledCopy];
}

+ (BOOL)isEnabled
{
  v19 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698F468] = [MEMORY[0x1E698F468] sharedInstance];
  available = [mEMORY[0x1E698F468] available];

  v4 = _PSLoggingFacility();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (available)
  {
    if (v5)
    {
      v15 = 136315138;
      v16 = "+[PSBluetoothSettingsDetail isEnabled]";
      _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "######## %s - BT is already available", &v15, 0xCu);
    }

    mEMORY[0x1E698F468]2 = [MEMORY[0x1E698F468] sharedInstance];
    enabled = [mEMORY[0x1E698F468]2 enabled];
  }

  else
  {
    if (v5)
    {
      v15 = 136315138;
      v16 = "+[PSBluetoothSettingsDetail isEnabled]";
      _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "######## %s - BT not available, checking SCDynamicStore", &v15, 0xCu);
    }

    v8 = SCDynamicStoreCreate(0, @"com.apple.settings.bluetooth", 0, 0);
    if (!v8)
    {
      enabled = 0;
      goto LABEL_16;
    }

    v9 = v8;
    mEMORY[0x1E698F468]2 = SCDynamicStoreCopyValue(v8, @"com.apple.MobileBluetooth");
    v10 = _PSLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "+[PSBluetoothSettingsDetail isEnabled]";
      v17 = 2112;
      v18 = mEMORY[0x1E698F468]2;
      _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "######## %s - SCDynamicStore shows: %@", &v15, 0x16u);
    }

    v11 = [mEMORY[0x1E698F468]2 objectForKey:@"Powered"];
    v12 = v11;
    if (v11)
    {
      enabled = [v11 BOOLValue];
    }

    else
    {
      enabled = 0;
    }

    CFRelease(v9);
  }

LABEL_16:
  v13 = _PSLoggingFacility();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "+[PSBluetoothSettingsDetail isEnabled]";
    v17 = 1024;
    LODWORD(v18) = enabled;
    _os_log_impl(&dword_18B008000, v13, OS_LOG_TYPE_DEFAULT, "######## %s - enabled: %d", &v15, 0x12u);
  }

  return enabled;
}

@end