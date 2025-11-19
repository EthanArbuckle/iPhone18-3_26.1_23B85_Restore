@interface UIScreen
- (id)pu_hardwareIdentifier;
@end

@implementation UIScreen

- (id)pu_hardwareIdentifier
{
  v1 = a1;
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [a1 displayConfiguration];
    v3 = [v2 hardwareIdentifier];
    v4 = [v2 deviceName];
    v5 = v4;
    if (v3)
    {
      v6 = v3;
    }

    else if (v4)
    {
      v6 = v4;
    }

    else
    {
      v7 = PLAirPlayGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v10 = v1;
        _os_log_impl(&dword_1B36F3000, v7, OS_LOG_TYPE_ERROR, "UIScreen had nil hardware identifier and nil name: %@", buf, 0xCu);
      }

      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", v1];
    }

    v1 = v6;
  }

  return v1;
}

@end