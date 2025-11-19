@interface TUIKTStateManager
- (BOOL)isCDPErrorState;
- (BOOL)isErrorState;
- (NSUUID)firstRecentFailedEventId;
- (TUIKTStateManager)init;
- (id)stateDescription;
- (id)stateLabel;
- (int64_t)state;
- (unint64_t)optIn;
- (unint64_t)recentFailedEventIdsCount;
- (void)init;
- (void)isManateeAvailableWithCompletion:(id)a3;
- (void)setExpectedResolutionDays:(id)a3;
- (void)stateLabel;
- (void)updateStateWithKTStatusResult:(id)a3;
@end

@implementation TUIKTStateManager

- (TUIKTStateManager)init
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
  {
    [TUIKTStateManager init];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTStateManager init];
  }

  v4.receiver = self;
  v4.super_class = TUIKTStateManager;
  result = [(TUIKTStateManager *)&v4 init];
  if (result)
  {
    result->_state = -1;
  }

  return result;
}

uint64_t __25__TUIKTStateManager_init__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (int64_t)state
{
  v2 = self;
  objc_sync_enter(v2);
  state = v2->_state;
  objc_sync_exit(v2);

  return state;
}

- (unint64_t)optIn
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(KTStatusResult *)v2->_ktStatusResult optIn];
  objc_sync_exit(v2);

  return v3;
}

- (unint64_t)recentFailedEventIdsCount
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(KTStatusResult *)v2->_ktStatusResult recentFailedEventIds];
  v4 = [v3 count];

  objc_sync_exit(v2);
  return v4;
}

- (NSUUID)firstRecentFailedEventId
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(KTStatusResult *)v2->_ktStatusResult recentFailedEventIds];
  if ([v3 count])
  {
    v4 = [(KTStatusResult *)v2->_ktStatusResult recentFailedEventIds];
    v5 = [v4 firstObject];
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v2);

  return v5;
}

- (void)updateStateWithKTStatusResult:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
  {
    [TUIKTStateManager updateStateWithKTStatusResult:];
  }

  v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(TUIKTStateManager *)v6 stateDescription];
    v18 = 136315906;
    v19 = "[TUIKTStateManager updateStateWithKTStatusResult:]";
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v5;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEFAULT, "%s current %{public}@, %{public}@ on %{public}@", &v18, 0x2Au);
  }

  objc_storeStrong(&v6->_ktStatusResult, a3);
  if ([(TUIKTStateManager *)v5 accountStatus]== 5)
  {
    v9 = 10;
    goto LABEL_38;
  }

  if ([(TUIKTStateManager *)v5 optIn]== 1)
  {
    if ([(TUIKTStateManager *)v5 accountStatus]== 2)
    {
LABEL_9:
      v9 = 5;
      goto LABEL_38;
    }

    if (_os_feature_enabled_impl() && ![(TUIKTStateManager *)v5 idsAccountStatus]|| (_os_feature_enabled_impl() & 1) == 0 && [(TUIKTStateManager *)v5 idsAccountStatus]!= 3)
    {
      v9 = 3;
      goto LABEL_38;
    }

    if ([(TUIKTStateManager *)v5 accountStatus]== 3)
    {
      v9 = 6;
      goto LABEL_38;
    }

    if ([(TUIKTStateManager *)v5 accountStatus]== 4 && [(TUIKTStateManager *)v5 selfStatus]== 1)
    {
      v9 = 4;
      goto LABEL_38;
    }

    if ([(TUIKTStateManager *)v5 accountStatus]== 4 && ([(TUIKTStateManager *)v5 selfStatus]== 3 || [(TUIKTStateManager *)v5 selfStatus]== 4))
    {
      v10 = [(TUIKTStateManager *)v5 systemStatus]== 3;
      v9 = 7;
      v11 = 9;
LABEL_36:
      if (v10)
      {
        v9 = v11;
      }

      goto LABEL_38;
    }

    if ([(TUIKTStateManager *)v5 accountStatus]== 4 && ([(TUIKTStateManager *)v5 selfStatus]== 2 || [(TUIKTStateManager *)v5 systemStatus]== 2 || [(TUIKTStateManager *)v5 systemStatus]== 4))
    {
      v16 = [(TUIKTStateManager *)v5 systemStatus];
      v9 = 8;
      if (v16 == 3)
      {
        v9 = 9;
      }
    }

    else
    {
      v17 = [(TUIKTStateManager *)v5 systemStatus];
      v9 = 12;
      if (v17 != 5)
      {
        v9 = 1;
      }
    }
  }

  else
  {
    if ([(TUIKTStateManager *)v5 optIn]== 2)
    {
      if ([(TUIKTStateManager *)v5 serverOptIn]== 1)
      {
        if ([(TUIKTStateManager *)v5 accountStatus]== 2)
        {
          goto LABEL_9;
        }

        v10 = [(TUIKTStateManager *)v5 accountStatus]== 3;
        v9 = 2;
        v11 = 6;
      }

      else
      {
        if ([(TUIKTStateManager *)v5 accountStatus]== 3)
        {
          v9 = 11;
          goto LABEL_38;
        }

        v10 = [(TUIKTStateManager *)v5 accountStatus]== 2;
        v9 = 2;
        v11 = 10;
      }

      goto LABEL_36;
    }

    if ([(TUIKTStateManager *)v5 optIn])
    {
      v9 = -1;
    }

    else
    {
      v12 = [(TUIKTStateManager *)v5 systemStatus];
      v9 = 12;
      if (v12 != 5)
      {
        v9 = 0;
      }
    }
  }

LABEL_38:
  v6->_state = v9;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
  {
    [TUIKTStateManager updateStateWithKTStatusResult:];
  }

  v13 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(TUIKTStateManager *)v6 stateDescription];
    v18 = 136315650;
    v19 = "[TUIKTStateManager updateStateWithKTStatusResult:]";
    v20 = 2114;
    v21 = v14;
    v22 = 2114;
    v23 = v6;
    _os_log_impl(&dword_26F50B000, v13, OS_LOG_TYPE_DEFAULT, "%s new %{public}@ on %{public}@", &v18, 0x20u);
  }

  objc_sync_exit(v6);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __51__TUIKTStateManager_updateStateWithKTStatusResult___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __51__TUIKTStateManager_updateStateWithKTStatusResult___block_invoke_23()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)isManateeAvailableWithCompletion:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
  {
    [TUIKTStateManager isManateeAvailableWithCompletion:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTStateManager isManateeAvailableWithCompletion:];
  }

  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28;
  block[3] = &unk_279DDAF50;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
    {
      __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28_cold_1();
    }

    v3 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v11 = "[TUIKTStateManager isManateeAvailableWithCompletion:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v3, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", buf, 0xCu);
    }
  }

  v4 = objc_alloc(MEMORY[0x277CFD548]);
  v5 = [MEMORY[0x277CFD4A8] contextForPrimaryAccount];
  v6 = [v4 initWithContext:v5];

  v9 = 0;
  LOBYTE(v5) = [v6 isManateeAvailable:&v9];
  v7 = v9;
  if ((v5 & 1) == 0)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
    {
      __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28_cold_2();
    }

    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_ERROR))
    {
      __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28_cold_3();
    }
  }

  (*(*(a1 + 32) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_32()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isErrorState
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = (v2->_state - 3) < 0xA;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isCDPErrorState
{
  v2 = self;
  objc_sync_enter(v2);
  state = v2->_state;
  v4 = state < 0xC;
  v5 = 0xC60u >> state;
  objc_sync_exit(v2);

  return v4 & v5;
}

- (id)stateLabel
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  state = v2->_state;
  if (state <= 0xC)
  {
    if (((1 << state) & 0x1708) != 0)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"UNAVAILABLE" value:&stru_287F92480 table:@"Localizable"];
      goto LABEL_8;
    }

    if (((1 << state) & 0xB0) != 0)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"ERROR" value:&stru_287F92480 table:@"Localizable"];
LABEL_8:
      v6 = v5;

      goto LABEL_9;
    }

    if (((1 << state) & 0x840) != 0)
    {
      v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v4 localizedStringForKey:@"WAITING" value:&stru_287F92480 table:@"Localizable"];
      goto LABEL_8;
    }
  }

  v9 = [(KTStatusResult *)v2->_ktStatusResult recentFailedEventIds];
  v10 = [v9 count];

  if (v10)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
    {
      [TUIKTStateManager stateLabel];
    }

    v11 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(KTStatusResult *)v2->_ktStatusResult recentFailedEventIds];
      [(TUIKTStateManager *)v12 stateLabel:v2];
    }

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v13 localizedStringForKey:@"ERROR" value:&stru_287F92480 table:@"Localizable"];
  }

  else
  {
    v6 = &stru_287F92480;
  }

LABEL_9:
  objc_sync_exit(v2);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __31__TUIKTStateManager_stateLabel__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)setExpectedResolutionDays:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    v6 = [MEMORY[0x277CBEA80] currentCalendar];
    v7 = [MEMORY[0x277CBEAA8] now];
    v8 = [v6 components:16 fromDate:v7 toDate:v4 options:0];

    v5->_expectedResolutionDays = [v8 day] + 1;
  }

  else
  {
    v5->_expectedResolutionDays = 0;
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_12 != -1)
  {
    [TUIKTStateManager setExpectedResolutionDays:];
  }

  v9 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12, OS_LOG_TYPE_DEBUG))
  {
    [(TUIKTStateManager *)v5 setExpectedResolutionDays:v9];
  }

  objc_sync_exit(v5);
}

uint64_t __47__TUIKTStateManager_setExpectedResolutionDays___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_12 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (id)stateDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_state + 1;
  if (v3 >= 0xD)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"unexpected UI state (%ld)", v2->_state];
  }

  else
  {
    v4 = off_279DDAF70[v3];
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"UI state = %@", v4];

  objc_sync_exit(v2);

  return v5;
}

- (void)init
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)isManateeAvailableWithCompletion:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __54__TUIKTStateManager_isManateeAvailableWithCompletion___block_invoke_28_cold_3()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_26F50B000, v2, OS_LOG_TYPE_ERROR, "%s error = %{public}@ on %{public}@", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)stateLabel
{
  *buf = 136315650;
  *(buf + 4) = "[TUIKTStateManager stateLabel]";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  *(buf + 11) = 2114;
  *(buf + 3) = a2;
  _os_log_debug_impl(&dword_26F50B000, log, OS_LOG_TYPE_DEBUG, "%s recentFailedEventIds: %{public}@ on %{public}@", buf, 0x20u);
}

- (void)setExpectedResolutionDays:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[TUIKTStateManager setExpectedResolutionDays:]";
  v6 = 2048;
  v7 = v2;
  v8 = 2114;
  v9 = a1;
  _os_log_debug_impl(&dword_26F50B000, a2, OS_LOG_TYPE_DEBUG, "%s expectedResolutionDays = %ld on %{public}@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end