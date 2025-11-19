@interface UITabAnalytics
@end

@implementation UITabAnalytics

void __33___UITabAnalytics_sharedInstance__block_invoke()
{
  v0 = [_UITabAnalytics alloc];
  if (v0)
  {
    v15.receiver = v0;
    v15.super_class = _UITabAnalytics;
    v1 = objc_msgSendSuper2(&v15, sel_init);
    v2 = v1;
    if (v1)
    {
      v1[5] = 0;
      v3 = _UIMainBundleIdentifier();
      if ([v3 hasPrefix:@"com.apple."])
      {
        v4 = v3;
      }

      else
      {
        v4 = &stru_1EFB14550;
      }

      v5 = v2[1];
      v2[1] = v4;

      v6 = [MEMORY[0x1E695E000] standardUserDefaults];
      v7 = [v6 objectForKey:@"com.apple.UIKit.TabStatistics"];

      if (v7)
      {
        v8 = [v7 objectForKey:@"lastCustomizationDate"];
        v9 = v2[4];
        v2[4] = v8;

        v10 = [v7 objectForKey:@"numberOfCustomizations"];
        v2[2] = [v10 integerValue];

        v11 = [v7 objectForKey:@"numberOfTabsInBar"];
        v2[3] = [v11 integerValue];
      }

      else
      {
        v12 = [MEMORY[0x1E695DF00] distantPast];
        v13 = v2[4];
        v2[4] = v12;

        v2[2] = 0;
        v2[3] = 0;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  v14 = _MergedGlobals_1021;
  _MergedGlobals_1021 = v2;
}

id __48___UITabAnalytics__sendEvent_additionalPayload___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[6]];
  [v2 setObject:v3 forKey:@"eventType"];

  [v2 setObject:a1[4] forKey:@"bundleId"];
  if (a1[5])
  {
    [v2 addEntriesFromDictionary:?];
  }

  return v2;
}

@end