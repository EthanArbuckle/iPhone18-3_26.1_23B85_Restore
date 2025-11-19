@interface SPUISearchModelZKW
- (SPUISearchModelZKW)init;
- (void)_refreshRequested;
- (void)dealloc;
- (void)didReceiveResponse:(id)a3;
- (void)refreshUpdatingQueryId:(BOOL)a3 withQueryContext:(id)a4;
- (void)updateWithQueryContext:(id)a3;
@end

@implementation SPUISearchModelZKW

- (SPUISearchModelZKW)init
{
  v6.receiver = self;
  v6.super_class = SPUISearchModelZKW;
  v2 = [(SPUISearchModelZKW *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D65730]);
    session = v2->_session;
    v2->_session = v3;
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = SPUISearchModelZKW;
  [(SPUISearchModelZKW *)&v5 dealloc];
}

- (void)refreshUpdatingQueryId:(BOOL)a3 withQueryContext:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277D4C898];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SPUISearchModelZKW_refreshUpdatingQueryId_withQueryContext___block_invoke;
  v9[3] = &unk_279D070E0;
  v9[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  [v7 dispatchMainIfNecessary:v9];
}

void __62__SPUISearchModelZKW_refreshUpdatingQueryId_withQueryContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 searchAgentHasWindow:*(a1 + 32)];

  if (v3)
  {
    v4 = SPLogForSPLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_26B837000, v4, OS_LOG_TYPE_DEFAULT, "refreshing zkw", v11, 2u);
    }

    [*(a1 + 32) setIgnoreNextPartialUpdate:1];
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v7 = [*(a1 + 32) queryTask];
      v8 = [v7 query];
      v6 = [v8 queryContext];
    }

    if (*(a1 + 48) == 1)
    {
      v9 = [MEMORY[0x277D65D70] updateQueryContext:v6 withSearchString:&stru_287C49600 showSuggestions:1 view:0];

      v10 = [*(a1 + 32) delegate];
      [v9 setDeviceAuthenticationState:{objc_msgSend(v10, "currentDeviceAuthenticationState")}];

      v6 = v9;
    }

    [*(a1 + 32) updateWithQueryContext:v6];
  }
}

- (void)_refreshRequested
{
  v3 = MEMORY[0x277D65D40];
  v4 = *MEMORY[0x277D65D40];
  if (!*MEMORY[0x277D65D40])
  {
    SPUIInitLogging();
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B837000, v4, OS_LOG_TYPE_DEFAULT, "zkw refresh requested", v5, 2u);
  }

  [(SPUISearchModelZKW *)self refreshUpdatingQueryId:1 withQueryContext:0];
}

- (void)updateWithQueryContext:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v5 = objc_opt_new();
    v6 = [(SPUISearchModel *)self delegate];
    [v5 setDeviceAuthenticationState:{objc_msgSend(v6, "currentDeviceAuthenticationState")}];
  }

  v7 = MEMORY[0x277D65D40];
  v8 = *MEMORY[0x277D65D40];
  if (!*MEMORY[0x277D65D40])
  {
    SPUIInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26B837000, v8, OS_LOG_TYPE_DEFAULT, "querying zkw", buf, 2u);
  }

  self->_shouldCacheResults = 1;
  v9 = [(SPUISearchModelZKW *)self session];
  v10 = [v9 queryTaskWithContext:v5];
  [(SPUISearchModel *)self setQueryTask:v10];

  [(SPUISearchModel *)self setLastResponse:0];
  self->_newQuery = 1;
  v11 = [(SPUISearchModel *)self queryTask];
  [v11 setDelegate:self];

  v12 = [(SPUISearchModel *)self queryTask];
  [v12 start];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SPUISearchModelZKW_updateWithQueryContext___block_invoke;
  block[3] = &unk_279D06C78;
  block[4] = self;
  if (updateWithQueryContext__onceToken != -1)
  {
    dispatch_once(&updateWithQueryContext__onceToken, block);
  }
}

void __45__SPUISearchModelZKW_updateWithQueryContext___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, *(a1 + 32), homeScreenPrefChanged, @"com.apple.suggestions.settingsChanged", 0, CFNotificationSuspensionBehaviorDrop);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v3, *(a1 + 32), homeScreenPrefChanged, @"com.apple.duetexpertd.spotlightActionsSuggestionUpdate", 0, CFNotificationSuspensionBehaviorDrop);
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel__refreshRequested name:*MEMORY[0x277D65C08] object:0];
}

- (void)didReceiveResponse:(id)a3
{
  v4 = a3;
  if ([v4 state] == 2 && -[SPUISearchModelZKW ignoreNextPartialUpdate](self, "ignoreNextPartialUpdate"))
  {
    [(SPUISearchModelZKW *)self setIgnoreNextPartialUpdate:0];
    [(SPUISearchModel *)self setQueryPartiallyComplete:1];
    v5 = MEMORY[0x277D65D40];
    v6 = *MEMORY[0x277D65D40];
    if (!*MEMORY[0x277D65D40])
    {
      SPUIInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "ignoring partial zkw update";
LABEL_11:
      _os_log_impl(&dword_26B837000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SPUISearchModelZKW;
    [(SPUISearchModel *)&v9 didReceiveResponse:v4];
    v8 = MEMORY[0x277D65D40];
    v6 = *MEMORY[0x277D65D40];
    if (!*MEMORY[0x277D65D40])
    {
      SPUIInitLogging();
      v6 = *v8;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "updating zkw with response";
      goto LABEL_11;
    }
  }
}

@end