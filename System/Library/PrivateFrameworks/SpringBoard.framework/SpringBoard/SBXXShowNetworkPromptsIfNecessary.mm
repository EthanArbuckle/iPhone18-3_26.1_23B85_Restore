@interface SBXXShowNetworkPromptsIfNecessary
@end

@implementation SBXXShowNetworkPromptsIfNecessary

void ___SBXXShowNetworkPromptsIfNecessary_block_invoke(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    goto LABEL_7;
  }

  v2 = [*(a1 + 32) dataUsage];
  v3 = v2;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) dataUsage];
    v5 = (v4 & 2) == 0;
    if (v3)
    {
      if ((v4 & 2) != 0)
      {
        return;
      }

      goto LABEL_14;
    }

LABEL_8:
    v6 = +[SBAirplaneModeController sharedInstance];
    if ([v6 isInAirplaneMode])
    {
      v7 = +[SBWiFiManager sharedInstance];
      v8 = [v7 isPowered];

      if (v8)
      {
        if (!v5)
        {
          return;
        }

        goto LABEL_14;
      }

      v6 = [SBApp applicationLaunchAlertService];
      [v6 showLaunchAlertOfType:2 forApplication:*(a1 + 32)];
    }

    if (!v5)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!v2)
  {
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

LABEL_14:
  v14 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = *MEMORY[0x277D67A00];
  v10 = *(a1 + 32);
  v11 = MEMORY[0x277CBEAC0];
  v12 = [v10 bundleIdentifier];
  v13 = [v11 dictionaryWithObject:v12 forKey:*MEMORY[0x277D67B20]];
  [v14 postNotificationName:v9 object:v10 userInfo:v13];
}

@end