@interface WFAppInFocusTrigger
@end

@implementation WFAppInFocusTrigger

uint64_t __77__WFAppInFocusTrigger_CoreDuetContext__shouldFireTriggerWithEventInfo_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CFE338] appBundleIdKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CFE338] appBundleIdKey];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = v7;
    v9 = &stru_2845DDD10;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CFE338] appLaunchReasonKey];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13 == @"SBFullScreenSwitcherSceneLiveContentOverlay" || v13 && (v15 = [(__CFString *)v13 isEqualToString:@"SBFullScreenSwitcherSceneLiveContentOverlay"], v14, v15))
    {
      v16 = v10;
      if (v16 == @"com.apple.CoreAuthUI")
      {
        v19 = 0;
        goto LABEL_16;
      }

      v17 = v16;
      v18 = [(__CFString *)v16 isEqualToString:@"com.apple.CoreAuthUI"];

      if (v18)
      {
        v19 = 0;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    v12 = [*(a1 + 48) selectedBundleIdentifiers];
    if (![v12 containsObject:v4])
    {
      v19 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v14 = [*(a1 + 48) selectedBundleIdentifiers];
    v19 = [v14 containsObject:v10] ^ 1;
LABEL_16:

    goto LABEL_17;
  }

  v19 = 0;
LABEL_19:

  return v19;
}

uint64_t __77__WFAppInFocusTrigger_CoreDuetContext__shouldFireTriggerWithEventInfo_error___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CFE338] appBundleIdKey];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CFE338] appBundleIdKey];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = v7;
    v9 = &stru_2845DDD10;
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CFE338] appLaunchReasonKey];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13 == @"SBFullScreenSwitcherSceneLiveContentOverlay" || v13 && (v15 = [(__CFString *)v13 isEqualToString:@"SBFullScreenSwitcherSceneLiveContentOverlay"], v14, v15))
    {
      v16 = v10;
      if (v16 == @"com.apple.CoreAuthUI")
      {
        v19 = 0;
        goto LABEL_16;
      }

      v17 = v16;
      v18 = [(__CFString *)v16 isEqualToString:@"com.apple.CoreAuthUI"];

      if (v18)
      {
        v19 = 0;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    v12 = [*(a1 + 48) selectedBundleIdentifiers];
    if (![v12 containsObject:v4])
    {
      v19 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v14 = [*(a1 + 48) selectedBundleIdentifiers];
    v19 = [v14 containsObject:v10] ^ 1;
LABEL_16:

    goto LABEL_17;
  }

  v19 = 0;
LABEL_19:

  return v19;
}

@end