@interface SFRestrictionsController
+ (id)TCCServices;
+ (id)restrictionSpecifiers;
+ (void)resetRestrictions;
+ (void)resetRestrictionsPassword;
+ (void)setSpringBoardCapability:(id)a3 enabled:(BOOL)a4;
@end

@implementation SFRestrictionsController

+ (id)restrictionSpecifiers
{
  v2 = SFBundleForSettingsFoundationFramework();
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = MEMORY[0x277CBEAC0];
    v5 = [v2 pathForResource:@"Restrictions" ofType:@"plist"];
    v6 = [v4 dictionaryWithContentsOfFile:v5];

    v7 = [v6 objectForKey:@"items"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 addObjectsFromArray:v7];
      }
    }

    v8 = MEMORY[0x277CBEAC0];
    v9 = [v2 pathForResource:@"5.0~fmf" ofType:@"plist"];
    v10 = [v8 dictionaryWithContentsOfFile:v9];

    v11 = [v10 objectForKey:@"items"];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 addObjectsFromArray:v11];
      }
    }

    v12 = MEMORY[0x277CBEAC0];
    v13 = [v2 pathForResource:@"5.0~Restrictions-Assistant" ofType:@"plist"];
    v14 = [v12 dictionaryWithContentsOfFile:v13];

    v15 = [v14 objectForKey:@"items"];
    if (v15)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 addObjectsFromArray:v15];
      }
    }

    v16 = [v3 copy];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)TCCServices
{
  v10[11] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D6C1E0];
  v10[0] = *MEMORY[0x277D6C100];
  v10[1] = v2;
  v3 = *MEMORY[0x277D6C1D0];
  v10[2] = *MEMORY[0x277D6C118];
  v10[3] = v3;
  v4 = *MEMORY[0x277D6C110];
  v10[4] = *MEMORY[0x277D6C1D8];
  v10[5] = v4;
  v5 = *MEMORY[0x277D6C258];
  v10[6] = *MEMORY[0x277D6C1A8];
  v10[7] = v5;
  v6 = *MEMORY[0x277D6C120];
  v10[8] = *MEMORY[0x277D6C1B0];
  v10[9] = v6;
  v10[10] = *MEMORY[0x277D6C1A0];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:11];
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)setSpringBoardCapability:(id)a3 enabled:(BOOL)a4
{
  v11 = a3;
  v5 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v5];
  v7 = [v6 containsObject:v11];
  if (a4)
  {
    if (v7)
    {
      [v6 removeObject:v11];
    }
  }

  else if ((v7 & 1) == 0)
  {
    [v6 addObject:v11];
  }

  v8 = [v6 count];
  if (v8 != [v5 count])
  {
    CFPreferencesSetAppValue(@"SBParentalControlsCapabilities", v6, @"com.apple.springboard");
    CFPreferencesAppSynchronize(@"com.apple.springboard");
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.locationd/Restrictions", 0, 0, 1u);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(v10, SFPreferencesAppChangedRestrictionsEnabledStateNotification, 0, 0, 1u);
  }
}

+ (void)resetRestrictions
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = +[SFRestrictionsController restrictionSpecifiers];
  v49 = [MEMORY[0x277D262A0] sharedConnection];
  v46 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count") + 1}];
  v47 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v55;
    v45 = *MEMORY[0x277D25D30];
    v44 = *MEMORY[0x277D25E60];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v55 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v54 + 1) + 8 * i);
        v8 = [v7 objectForKey:{@"MCFeature", v44}];
        v9 = [v7 objectForKey:@"capability"];
        v10 = v9;
        if (v8)
        {
          v11 = [v7 objectForKey:@"MCFeatureIsBool"];
          v12 = [v11 BOOLValue];

          if (v12)
          {
            v13 = [v49 defaultParametersForBoolSetting:v8];
            if (v13)
            {
              [v46 setObject:v13 forKey:v8];
              if ([v8 isEqualToString:v45])
              {
                v14 = v46;
                v15 = v13;
                v16 = v44;
                goto LABEL_14;
              }
            }

            else
            {
              [v49 removeBoolSetting:v8];
            }
          }

          else
          {
            v13 = [v49 defaultParametersForValueSetting:v8];
            v14 = v47;
            v15 = v13;
            v16 = v8;
LABEL_14:
            [v14 setObject:v15 forKey:v16];
          }

          v17 = [v7 objectForKey:@"PostNotification"];
          if (v17)
          {
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            CFNotificationCenterPostNotification(DarwinNotifyCenter, v17, 0, 0, 1u);
          }

          goto LABEL_19;
        }

        if (v9)
        {
          [SFRestrictionsController setSpringBoardCapability:v9 enabled:1];
        }

LABEL_19:
      }

      v4 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v4);
  }

  v19 = +[SFRestrictionsController TCCServices];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v51;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v51 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [SFRestrictionsController setSpringBoardCapability:*(*(&v50 + 1) + 8 * j) enabled:1];
      }

      v21 = [v19 countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x277D260E0];
  v25 = [v49 defaultParametersForBoolSetting:*MEMORY[0x277D260E0]];
  [v46 setObject:v25 forKeyedSubscript:v24];

  v26 = [MEMORY[0x277CBEB38] dictionary];
  v27 = *MEMORY[0x277D260E8];
  v28 = [v49 defaultParametersForIntersectionSetting:*MEMORY[0x277D260E8]];
  [v26 setObject:v28 forKeyedSubscript:v27];

  v29 = [MEMORY[0x277CBEB38] dictionary];
  v30 = *MEMORY[0x277D260F0];
  v31 = [v49 defaultParametersForUnionSetting:*MEMORY[0x277D260F0]];
  [v29 setObject:v31 forKeyedSubscript:v30];

  v32 = *MEMORY[0x277D25D40];
  v33 = [v49 defaultParametersForBoolSetting:*MEMORY[0x277D25D40]];
  [v46 setObject:v33 forKeyedSubscript:v32];

  v34 = *MEMORY[0x277D25D38];
  v35 = [v49 defaultParametersForBoolSetting:*MEMORY[0x277D25D38]];
  [v46 setObject:v35 forKeyedSubscript:v34];

  v36 = *MEMORY[0x277D25D10];
  v37 = [v49 defaultParametersForBoolSetting:*MEMORY[0x277D25D10]];
  [v46 setObject:v37 forKeyedSubscript:v36];

  v38 = *MEMORY[0x277D25DC8];
  v39 = [v49 defaultParametersForBoolSetting:*MEMORY[0x277D25DC8]];
  [v46 setObject:v39 forKeyedSubscript:v38];

  v40 = *MEMORY[0x277D26168];
  v58[0] = *MEMORY[0x277D26158];
  v58[1] = v40;
  v59[0] = v46;
  v59[1] = v47;
  v41 = *MEMORY[0x277D26198];
  v58[2] = *MEMORY[0x277D26110];
  v58[3] = v41;
  v59[2] = v26;
  v59[3] = v29;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:4];
  [v49 setParametersForSettingsByType:v42];

  v43 = *MEMORY[0x277D85DE8];
}

+ (void)resetRestrictionsPassword
{
  [SFRestrictionsPasscodeController setPIN:0];

  +[SFRestrictionsController resetRestrictions];
}

@end