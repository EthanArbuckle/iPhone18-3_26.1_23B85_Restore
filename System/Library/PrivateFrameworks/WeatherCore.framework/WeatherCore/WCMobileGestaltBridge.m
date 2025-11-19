@interface WCMobileGestaltBridge
+ (BOOL)isChineseSKU;
+ (BOOL)isJapaneseSKU;
@end

@implementation WCMobileGestaltBridge

+ (BOOL)isChineseSKU
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MGGetBoolAnswer();
  v3 = MGCopyAnswer();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 caseInsensitiveCompare:@"CH"] == 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2 | v5;
  v7 = WCLogForCategory(1uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v6)
    {
      v8 = @"YES";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1C945E000, v7, OS_LOG_TYPE_DEFAULT, "Is regulated Chinese SKU: %@", &v10, 0xCu);
  }

  return v6 & 1;
}

+ (BOOL)isJapaneseSKU
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswer();
  v3 = v2;
  if (v2)
  {
    v4 = [v2 caseInsensitiveCompare:@"J"] == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = WCLogForCategory(1uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1C945E000, v5, OS_LOG_TYPE_DEFAULT, "Is Japanese SKU: %@", &v8, 0xCu);
  }

  return v4;
}

@end