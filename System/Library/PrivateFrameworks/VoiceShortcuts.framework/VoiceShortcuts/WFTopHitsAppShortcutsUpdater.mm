@interface WFTopHitsAppShortcutsUpdater
- (WFTopHitsAppShortcutsUpdater)initWithXPCEventHandler:(id)handler;
- (void)_updateWithCompletion:(id)completion;
- (void)applicationRegistered:(id)registered;
- (void)handleFavoriteCallsUpdate;
- (void)handleRecentCallsUpdate;
- (void)registerForUpcomingMediaSuggestionChanged;
- (void)start;
- (void)updateWithCompletion:(id)completion;
@end

@implementation WFTopHitsAppShortcutsUpdater

- (void)registerForUpcomingMediaSuggestionChanged
{
  keyPathForIntentsDataDictionary = [MEMORY[0x277CFE338] keyPathForIntentsDataDictionary];
  v4 = MEMORY[0x277CCAC30];
  intentClassKey = [MEMORY[0x277CFE338] intentClassKey];
  v6 = [v4 predicateWithFormat:@"self.%@.value.%@ == %@", keyPathForIntentsDataDictionary, intentClassKey, @"INPlayMediaIntent"];

  v7 = [MEMORY[0x277CFE360] predicateForKeyPath:keyPathForIntentsDataDictionary withPredicate:v6];
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277CFE350];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__WFTopHitsAppShortcutsUpdater_registerForUpcomingMediaSuggestionChanged__block_invoke;
  v12[3] = &unk_278900258;
  objc_copyWeak(&v13, &location);
  v9 = [v8 localWakingRegistrationWithIdentifier:@"com.apple.siriactionsd.TopHitsAppShortcutsUpdater" contextualPredicate:v7 clientIdentifier:@"com.apple.siriactionsd.contextstore-registration" callback:v12];
  [(WFTopHitsAppShortcutsUpdater *)self setChangeRegistration:v9];
  userContext = [MEMORY[0x277CFE318] userContext];
  [(WFTopHitsAppShortcutsUpdater *)self setClientContext:userContext];

  clientContext = [(WFTopHitsAppShortcutsUpdater *)self clientContext];
  [clientContext registerCallback:v9];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __73__WFTopHitsAppShortcutsUpdater_registerForUpcomingMediaSuggestionChanged__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained clientContext];
    v4 = [MEMORY[0x277CFE338] keyPathForIntentsDataDictionary];
    v5 = [v3 objectForKeyedSubscript:v4];
    v6 = [v5 copy];

    if (_NSIsNSDictionary())
    {
      v7 = [MEMORY[0x277CFE338] intentSourceBundleIDKey];
      v8 = [v6 objectForKeyedSubscript:v7];

      if (([v8 isEqualToString:*MEMORY[0x277D7A288]] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", *MEMORY[0x277D7A2B0]))
      {
        v9 = getWFTopHitsLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 136315394;
          v12 = "[WFTopHitsAppShortcutsUpdater registerForUpcomingMediaSuggestionChanged]_block_invoke";
          v13 = 2112;
          v14 = v8;
          _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Received media suggestion update for %@, triggering update", &v11, 0x16u);
        }

        [v2 updateWithCompletion:&__block_literal_global_214_7434];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateWithCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v4 = getWFTopHitsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[WFTopHitsAppShortcutsUpdater _updateWithCompletion:]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_DEFAULT, "%s Attempting App Shortcuts update", buf, 0xCu);
  }

  v5 = [MEMORY[0x277D23BB0] policyWithBundleIdentifier:*MEMORY[0x277D7A2D8]];
  v12 = 0;
  v6 = [v5 connectionWithError:&v12];
  v7 = v12;
  if (v6)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__WFTopHitsAppShortcutsUpdater__updateWithCompletion___block_invoke;
    v10[3] = &unk_2789001E0;
    v11 = completionCopy;
    [v6 updateAppShortcutParametersWithCompletionHandler:v10];
  }

  else
  {
    v8 = getWFTopHitsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[WFTopHitsAppShortcutsUpdater _updateWithCompletion:]";
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s App Shortcuts update connection failed: %@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, v7);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54__WFTopHitsAppShortcutsUpdater__updateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFTopHitsLogObject();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "[WFTopHitsAppShortcutsUpdater _updateWithCompletion:]_block_invoke";
      v15 = 2112;
      v16 = v3;
      v6 = "%s App Shortcuts update failed: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 22;
LABEL_6:
      _os_log_impl(&dword_23103C000, v7, v8, v6, &v13, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[WFTopHitsAppShortcutsUpdater _updateWithCompletion:]_block_invoke";
    v6 = "%s App Shortcuts update completed";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v3, v10, v11);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__WFTopHitsAppShortcutsUpdater_updateWithCompletion___block_invoke;
  v6[3] = &unk_2789001E0;
  v7 = completionCopy;
  v5 = completionCopy;
  [(WFTopHitsAppShortcutsUpdater *)self _updateWithCompletion:v6];
}

void __53__WFTopHitsAppShortcutsUpdater_updateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    v3 = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
    v4 = objc_opt_new();
    [v3 setObject:v4 forKey:*MEMORY[0x277D7CD38]];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)handleFavoriteCallsUpdate
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = getWFTopHitsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[WFTopHitsAppShortcutsUpdater handleFavoriteCallsUpdate]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEFAULT, "%s Got favorite calls updated notification, triggering App Shortcuts update", &v5, 0xCu);
  }

  [(WFTopHitsAppShortcutsUpdater *)self updateWithCompletion:&__block_literal_global_197];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleRecentCallsUpdate
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = getWFTopHitsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[WFTopHitsAppShortcutsUpdater handleRecentCallsUpdate]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEFAULT, "%s Got recent calls updated notification, triggering App Shortcuts update", &v5, 0xCu);
  }

  [(WFTopHitsAppShortcutsUpdater *)self updateWithCompletion:&__block_literal_global_195];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)applicationRegistered:(id)registered
{
  v19 = *MEMORY[0x277D85DE8];
  registeredCopy = registered;
  userInfo = [registeredCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"isPlaceholder"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  bOOLValue = [v8 BOOLValue];
  if ((bOOLValue & 1) == 0)
  {
    userInfo2 = [registeredCopy userInfo];
    v11 = [userInfo2 objectForKeyedSubscript:@"bundleIDs"];

    if (v11)
    {
      objc_opt_class();
      v12 = (objc_opt_isKindOfClass() & 1) != 0 ? v11 : 0;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = [v13 containsObject:*MEMORY[0x277D7A338]];
    if (v14)
    {
      v15 = getWFTopHitsLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315138;
        v18 = "[WFTopHitsAppShortcutsUpdater applicationRegistered:]";
        _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s Shortcuts app installed, triggering App Shortcuts update", &v17, 0xCu);
      }

      [(WFTopHitsAppShortcutsUpdater *)self updateWithCompletion:&__block_literal_global_193];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v19 = *MEMORY[0x277D85DE8];
  xpcEventHandler = [(WFTopHitsAppShortcutsUpdater *)self xpcEventHandler];
  [xpcEventHandler addObserver:self selector:sel_applicationRegistered_ name:@"ApplicationRegistered"];

  xpcEventHandler2 = [(WFTopHitsAppShortcutsUpdater *)self xpcEventHandler];
  [xpcEventHandler2 addObserver:self selector:sel_handleRecentCallsUpdate name:@"com.apple.callhistory.notification.calls-changed"];

  xpcEventHandler3 = [(WFTopHitsAppShortcutsUpdater *)self xpcEventHandler];
  [xpcEventHandler3 addObserver:self selector:sel_handleFavoriteCallsUpdate name:@"CNFavoritesChangedExternallyNotification"];

  [(WFTopHitsAppShortcutsUpdater *)self registerForUpcomingMediaSuggestionChanged];
  v6 = [[WFXPCActivityScheduler alloc] initWithActivityIdentifier:@"com.apple.siriactionsd.UpdateAppShortcutsCheckIn"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__WFTopHitsAppShortcutsUpdater_start__block_invoke;
  v14[3] = &unk_278900208;
  v14[4] = self;
  [(WFXPCActivityScheduler *)v6 scheduleWithRunHandler:v14];
  lastAppShortcutUpdateDate = [MEMORY[0x277CBEBD0] lastAppShortcutUpdateDate];
  if (lastAppShortcutUpdateDate && (v8 = objc_opt_new(), [v8 timeIntervalSinceDate:lastAppShortcutUpdateDate], v10 = v9, v8, v10 <= 3600.0))
  {
    v12 = getWFTopHitsLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[WFTopHitsAppShortcutsUpdater start]";
      v17 = 2112;
      v18 = lastAppShortcutUpdateDate;
      _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEFAULT, "%s Last update at: %@ was within the past hour, ignoring initial update", buf, 0x16u);
    }
  }

  else
  {
    v11 = getWFTopHitsLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[WFTopHitsAppShortcutsUpdater start]";
      v17 = 2112;
      v18 = lastAppShortcutUpdateDate;
      _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Last update at: %@ was more than an hour ago, performing initial App Shortcuts update", buf, 0x16u);
    }

    [(WFTopHitsAppShortcutsUpdater *)self updateWithCompletion:&__block_literal_global_7462];
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __37__WFTopHitsAppShortcutsUpdater_start__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getWFTopHitsLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[WFTopHitsAppShortcutsUpdater start]_block_invoke";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Triggering scheduled App Shortcuts update", buf, 0xCu);
  }

  v6 = *(a1 + 32);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __37__WFTopHitsAppShortcutsUpdater_start__block_invoke_178;
  v10[3] = &unk_2789001E0;
  v11 = v4;
  v7 = v4;
  [v6 updateWithCompletion:v10];

  v8 = *MEMORY[0x277D85DE8];
  return 0;
}

void __37__WFTopHitsAppShortcutsUpdater_start__block_invoke_183(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = getWFTopHitsLogObject();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "[WFTopHitsAppShortcutsUpdater start]_block_invoke";
      v12 = 2114;
      v13 = v2;
      v5 = "%s Initial App Shortcuts update completed with error: %{public}@";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 22;
LABEL_6:
      _os_log_impl(&dword_23103C000, v6, v7, v5, &v10, v8);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[WFTopHitsAppShortcutsUpdater start]_block_invoke";
    v5 = "%s Initial App Shortcuts update completed!";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 12;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (WFTopHitsAppShortcutsUpdater)initWithXPCEventHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = WFTopHitsAppShortcutsUpdater;
  v6 = [(WFTopHitsAppShortcutsUpdater *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcEventHandler, handler);
    v8 = v7;
  }

  return v7;
}

@end