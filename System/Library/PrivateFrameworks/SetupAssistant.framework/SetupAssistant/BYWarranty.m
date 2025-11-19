@interface BYWarranty
+ (BOOL)shouldDisplay;
+ (void)acknowledge;
@end

@implementation BYWarranty

+ (BOOL)shouldDisplay
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 fileExistsAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty"];

  return v3;
}

+ (void)acknowledge
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = 0;
  v3 = [v2 removeItemAtPath:@"/var/mobile/Media/iTunes_Control/iTunes/ShowWarranty" error:&v10];
  v4 = v10;

  if ((v3 & 1) == 0)
  {
    v5 = _BYLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (_BYIsInternalInstall())
      {
        v7 = 0;
        v8 = v4;
      }

      else if (v4)
      {
        v9 = MEMORY[0x1E696AEC0];
        v3 = [v4 domain];
        v8 = [v9 stringWithFormat:@"<Error domain: %@, code %ld>", v3, objc_msgSend(v4, "code")];
        v7 = 1;
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }

      *buf = 138543362;
      v12 = v8;
      _os_log_error_impl(&dword_1B862F000, v5, OS_LOG_TYPE_ERROR, "Failed to remove warranty sentinel: %{public}@", buf, 0xCu);
      if (v7)
      {
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end