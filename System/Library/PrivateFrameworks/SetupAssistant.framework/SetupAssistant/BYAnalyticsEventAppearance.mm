@interface BYAnalyticsEventAppearance
- (BYAnalyticsEventAppearance)initWithAnalyticsManager:(id)a3 buddyPreferencesExcludedFromBackup:(id)a4;
- (id)_biomeEvent;
- (id)_eventPayload;
- (id)_eventPayloadFromPreferences;
- (id)_eventPayloadFromPreferencesIfComplete;
- (void)_analyticsManagerDidProduceLazyEvents;
- (void)didChooseAppearanceModeName:(id)a3 forDisposition:(unint64_t)a4;
- (void)setChildAge:(id)a3;
@end

@implementation BYAnalyticsEventAppearance

- (BYAnalyticsEventAppearance)initWithAnalyticsManager:(id)a3 buddyPreferencesExcludedFromBackup:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = BYAnalyticsEventAppearance;
  v8 = [(BYAnalyticsEventAppearance *)&v19 init];
  v9 = v8;
  if (v8)
  {
    [(BYAnalyticsEventAppearance *)v8 setBuddyPreferencesExcludedFromBackup:v7];
    [(BYAnalyticsEventAppearance *)v9 setShouldRemoveAnalyticsEventPayloadFromPreferences:0];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__BYAnalyticsEventAppearance_initWithAnalyticsManager_buddyPreferencesExcludedFromBackup___block_invoke;
    v17[3] = &unk_1E7D036A0;
    v10 = v9;
    v18 = v10;
    [v6 addEvent:@"com.apple.settings.personalizedsetup_appearance_setup" withPayloadBlock:v17 persist:0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90__BYAnalyticsEventAppearance_initWithAnalyticsManager_buddyPreferencesExcludedFromBackup___block_invoke_2;
    v15[3] = &unk_1E7D036C8;
    v11 = v10;
    v16 = v11;
    [v6 setAppearanceSetupEventBlock:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __90__BYAnalyticsEventAppearance_initWithAnalyticsManager_buddyPreferencesExcludedFromBackup___block_invoke_3;
    v13[3] = &unk_1E7D027A8;
    v14 = v11;
    [v6 addDidProduceLazyEventsBlock:v13];
  }

  return v9;
}

- (void)didChooseAppearanceModeName:(id)a3 forDisposition:(unint64_t)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(BYAnalyticsEventAppearance *)self _eventPayloadFromPreferences];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  if ((v4 & 0x10) != 0)
  {
    v8 = @"child_size_choice";
  }

  else
  {
    v8 = @"size_choice";
  }

  [v7 setObject:v10 forKeyedSubscript:v8];
  v9 = [(BYAnalyticsEventAppearance *)self buddyPreferencesExcludedFromBackup];
  [v9 setObject:v7 forKey:@"AppearanceAnalyticsEventPayload" persistImmediately:1];
}

- (void)setChildAge:(id)a3
{
  v4 = a3;
  v5 = [(BYAnalyticsEventAppearance *)self _eventPayloadFromPreferences];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    [v6 setObject:v4 forKeyedSubscript:@"child_age"];
    v7 = [(BYAnalyticsEventAppearance *)self buddyPreferencesExcludedFromBackup];
    [v7 setObject:v6 forKey:@"AppearanceAnalyticsEventPayload" persistImmediately:1];
  }

  else
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BYAnalyticsEventAppearance didChooseToSetUpForChild:v7];
    }
  }
}

- (id)_eventPayloadFromPreferences
{
  v2 = [(BYAnalyticsEventAppearance *)self buddyPreferencesExcludedFromBackup];
  v3 = [v2 objectForKey:@"AppearanceAnalyticsEventPayload"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v3 = 0;
  }

  return v3;
}

- (id)_eventPayloadFromPreferencesIfComplete
{
  v2 = [(BYAnalyticsEventAppearance *)self _eventPayloadFromPreferences];
  v3 = [v2 objectForKeyedSubscript:@"child_setup"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v3 BOOLValue])
    {
      v4 = [v2 objectForKeyedSubscript:@"child_size_choice"];

      if (!v4)
      {
        v5 = _BYLoggingFacility();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          [(BYAnalyticsEventAppearance *)v5 _eventPayloadFromPreferencesIfComplete];
        }

        v2 = 0;
      }
    }
  }

  return v2;
}

- (id)_eventPayload
{
  v3 = [(BYAnalyticsEventAppearance *)self _eventPayloadFromPreferencesIfComplete];
  if (v3)
  {
    [(BYAnalyticsEventAppearance *)self setShouldRemoveAnalyticsEventPayloadFromPreferences:1];
  }

  return v3;
}

- (id)_biomeEvent
{
  v3 = [(BYAnalyticsEventAppearance *)self _eventPayloadFromPreferencesIfComplete];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"size_choice"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = [v4 objectForKeyedSubscript:@"size_choice"];
    }

    else
    {
      v7 = 0;
    }

    v9 = [v4 objectForKeyedSubscript:@"child_setup"];
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if (v10)
    {
      v11 = [v4 objectForKeyedSubscript:@"child_setup"];
    }

    else
    {
      v11 = 0;
    }

    v12 = [v4 objectForKeyedSubscript:@"child_size_choice"];
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    if (v13)
    {
      v14 = [v4 objectForKeyedSubscript:@"child_size_choice"];
    }

    else
    {
      v14 = 0;
    }

    v15 = [v4 objectForKeyedSubscript:@"child_age"];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      v17 = [v4 objectForKeyedSubscript:@"child_age"];
    }

    else
    {
      v17 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x1E698EF50]) initWithChoice:v7 childSetup:v11 childChoice:v14 childAge:v17];
    [(BYAnalyticsEventAppearance *)self setShouldRemoveAnalyticsEventPayloadFromPreferences:1];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_analyticsManagerDidProduceLazyEvents
{
  if ([(BYAnalyticsEventAppearance *)self shouldRemoveAnalyticsEventPayloadFromPreferences])
  {
    v3 = [(BYAnalyticsEventAppearance *)self buddyPreferencesExcludedFromBackup];
    [v3 removeObjectForKey:@"AppearanceAnalyticsEventPayload" onlyFromMemory:0];

    [(BYAnalyticsEventAppearance *)self setShouldRemoveAnalyticsEventPayloadFromPreferences:0];
  }
}

@end