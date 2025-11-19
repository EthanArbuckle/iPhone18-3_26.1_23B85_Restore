@interface PSBluetoothSettingsDetail
+ (BOOL)isEnabled;
+ (void)setEnabled:(BOOL)a3;
@end

@implementation PSBluetoothSettingsDetail

+ (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x1E69E9840];
  v4 = _PSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "+[PSBluetoothSettingsDetail setEnabled:]";
    v8 = 1024;
    v9 = v3;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "######## %s - enabled: %d", &v6, 0x12u);
  }

  v5 = [MEMORY[0x1E698F468] sharedInstance];
  [v5 setEnabled:v3];
}

+ (BOOL)isEnabled
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E698F468] sharedInstance];
  v3 = [v2 available];

  v4 = _PSLoggingFacility();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v15 = 136315138;
      v16 = "+[PSBluetoothSettingsDetail isEnabled]";
      _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "######## %s - BT is already available", &v15, 0xCu);
    }

    v6 = [MEMORY[0x1E698F468] sharedInstance];
    v7 = [v6 enabled];
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
      v7 = 0;
      goto LABEL_16;
    }

    v9 = v8;
    v6 = SCDynamicStoreCopyValue(v8, @"com.apple.MobileBluetooth");
    v10 = _PSLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315394;
      v16 = "+[PSBluetoothSettingsDetail isEnabled]";
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "######## %s - SCDynamicStore shows: %@", &v15, 0x16u);
    }

    v11 = [v6 objectForKey:@"Powered"];
    v12 = v11;
    if (v11)
    {
      v7 = [v11 BOOLValue];
    }

    else
    {
      v7 = 0;
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
    LODWORD(v18) = v7;
    _os_log_impl(&dword_18B008000, v13, OS_LOG_TYPE_DEFAULT, "######## %s - enabled: %d", &v15, 0x12u);
  }

  return v7;
}

@end