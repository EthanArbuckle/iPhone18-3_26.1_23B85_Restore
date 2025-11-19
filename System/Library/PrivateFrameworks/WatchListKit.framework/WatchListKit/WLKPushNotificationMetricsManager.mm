@interface WLKPushNotificationMetricsManager
- (WLKPushNotificationMetricsManager)initWithNotificationSettings:(id)a3 notificationSettingsForTopic:(id)a4;
- (id)_createDisplayCriteriaFromSettings:(id)a3;
- (id)_stringFromNotificationSetting:(int64_t)a3;
@end

@implementation WLKPushNotificationMetricsManager

- (WLKPushNotificationMetricsManager)initWithNotificationSettings:(id)a3 notificationSettingsForTopic:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = WLKPushNotificationMetricsManager;
  v8 = [(WLKPushNotificationMetricsManager *)&v30 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    displayCriteria = v8->_displayCriteria;
    v8->_displayCriteria = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = [(WLKPushNotificationMetricsManager *)v8 _createDisplayCriteriaFromSettings:v6];
    [v11 addEntriesFromDictionary:v12];

    if (v7 && [v7 count])
    {
      v24 = v11;
      v25 = v6;
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v14 = [v7 keyEnumerator];
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v27;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v26 + 1) + 8 * i);
            v20 = [v7 objectForKeyedSubscript:{v19, v24}];
            v21 = [(WLKPushNotificationMetricsManager *)v8 _createDisplayCriteriaFromSettings:v20];
            [v13 setObject:v21 forKeyedSubscript:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v16);
      }

      v11 = v24;
      [v24 setObject:v13 forKeyedSubscript:@"subsections"];

      v6 = v25;
    }

    [(NSMutableDictionary *)v8->_displayCriteria setObject:v11 forKeyedSubscript:@"displayCriteria", v24];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)_createDisplayCriteriaFromSettings:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = -[WLKPushNotificationMetricsManager _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 alertSetting]);
  [v5 setObject:v6 forKeyedSubscript:@"alertSetting"];

  v7 = -[WLKPushNotificationMetricsManager _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 badgeSetting]);
  [v5 setObject:v7 forKeyedSubscript:@"badgeSetting"];

  v8 = -[WLKPushNotificationMetricsManager _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 carPlaySetting]);
  [v5 setObject:v8 forKeyedSubscript:@"carPlaySetting"];

  v9 = -[WLKPushNotificationMetricsManager _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 criticalAlertSetting]);
  [v5 setObject:v9 forKeyedSubscript:@"criticalAlertSetting"];

  v10 = -[WLKPushNotificationMetricsManager _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 directMessagesSetting]);
  [v5 setObject:v10 forKeyedSubscript:@"directMessagesSetting"];

  v11 = -[WLKPushNotificationMetricsManager _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 lockScreenSetting]);
  [v5 setObject:v11 forKeyedSubscript:@"lockScreenSetting"];

  v12 = -[WLKPushNotificationMetricsManager _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 notificationCenterSetting]);
  [v5 setObject:v12 forKeyedSubscript:@"notificationCenterSetting"];

  v13 = -[WLKPushNotificationMetricsManager _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 scheduledDeliverySetting]);
  [v5 setObject:v13 forKeyedSubscript:@"scheduledDeliverySetting"];

  v14 = -[WLKPushNotificationMetricsManager _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 soundSetting]);
  [v5 setObject:v14 forKeyedSubscript:@"soundSetting"];

  v15 = -[WLKPushNotificationMetricsManager _stringFromNotificationSetting:](self, "_stringFromNotificationSetting:", [v4 timeSensitiveSetting]);
  [v5 setObject:v15 forKeyedSubscript:@"timeSensitiveSetting"];

  v16 = [v4 alertStyle];
  if (v16 > 2)
  {
    v17 = &stru_288206BC0;
  }

  else
  {
    v17 = off_279E5ED28[v16];
  }

  [v5 setObject:v17 forKeyedSubscript:@"alertStyle"];
  v18 = [v4 authorizationStatus];
  if (v18 > 4)
  {
    v19 = &stru_288206BC0;
  }

  else
  {
    v19 = off_279E5ED40[v18];
  }

  [v5 setObject:v19 forKeyedSubscript:@"authorizationStatus"];
  v20 = [v4 groupingSetting];
  if (v20 > 2)
  {
    v21 = &stru_288206BC0;
  }

  else
  {
    v21 = off_279E5ED68[v20];
  }

  [v5 setObject:v21 forKeyedSubscript:@"groupingSetting"];
  if ([v4 providesAppNotificationSettings])
  {
    v22 = @"yes";
  }

  else
  {
    v22 = @"no";
  }

  [v5 setObject:v22 forKeyedSubscript:@"providesAppNotificationSettings"];
  v23 = [v4 showPreviewsSetting];
  if (v23 > 2)
  {
    v24 = &stru_288206BC0;
  }

  else
  {
    v24 = off_279E5ED80[v23];
  }

  [v5 setObject:v24 forKeyedSubscript:@"showPreviewsSetting"];
  v25 = MEMORY[0x277CEE688];
  v26 = WLKTVAppBundleID();
  v27 = [v25 explicitContentSettingForBundleID:v26];

  if (v27 != -1)
  {
    if (v27 == 1)
    {
      v28 = @"explicit";
    }

    else
    {
      v28 = @"clean";
    }

    [v5 setObject:v28 forKeyedSubscript:@"explicitEnabled"];
  }

  return v5;
}

- (id)_stringFromNotificationSetting:(int64_t)a3
{
  if (a3 > 2)
  {
    return &stru_288206BC0;
  }

  else
  {
    return off_279E5ED98[a3];
  }
}

@end