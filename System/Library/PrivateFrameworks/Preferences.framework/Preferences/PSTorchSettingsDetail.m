@interface PSTorchSettingsDetail
+ (BOOL)isEnabled;
+ (int64_t)torchState;
+ (void)setEnabled:(BOOL)a3;
@end

@implementation PSTorchSettingsDetail

+ (int64_t)torchState
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69870A0] defaultDeviceWithMediaType:*MEMORY[0x1E6987608]];
  if ([v2 hasTorch])
  {
    v3 = [v2 isTorchAvailable];
  }

  else
  {
    v3 = -1;
  }

  v4 = _PSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "########### Torch state (%d)", v6, 8u);
  }

  return v3;
}

+ (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69870A0] defaultDeviceWithMediaType:*MEMORY[0x1E6987608]];
  if ([v4 isTorchModeSupported:v3])
  {
    v13 = 0;
    v5 = [v4 lockForConfiguration:&v13];
    v6 = v13;
    v8 = v6;
    if (v5)
    {
      if (v3)
      {
        LODWORD(v7) = *MEMORY[0x1E69869A0];
        v12 = v6;
        [v4 setTorchModeOnWithLevel:&v12 error:v7];
        v9 = v12;

        v8 = v9;
      }

      else
      {
        [v4 setTorchMode:0];
      }

      [v4 unlockForConfiguration];
    }

    v10 = _PSLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"OFF";
      if (v3)
      {
        v11 = @"ON";
      }

      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_18B008000, v10, OS_LOG_TYPE_DEFAULT, "########### Tried to set torch (%@) Error: %@", buf, 0x16u);
    }
  }
}

+ (BOOL)isEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69870A0] defaultDeviceWithMediaType:*MEMORY[0x1E6987608]];
  if ([v2 isTorchAvailable])
  {
    v3 = [v2 torchMode] == 1;
  }

  else
  {
    v3 = 0;
  }

  v4 = _PSLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"OFF";
    if (v3)
    {
      v5 = @"ON";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_18B008000, v4, OS_LOG_TYPE_DEFAULT, "########### Torch enabled (%@)", &v7, 0xCu);
  }

  return v3;
}

@end