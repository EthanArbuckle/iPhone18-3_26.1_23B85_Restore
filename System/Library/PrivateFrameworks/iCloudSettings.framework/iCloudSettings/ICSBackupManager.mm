@interface ICSBackupManager
+ (NSString)defaultSubtitle;
+ (id)bundleIDFor:(id)a3;
+ (id)displayNameFor:(id)a3;
- (BOOL)_backupDidFail;
- (BOOL)hasBackupError;
- (ICSBackupManager)initWithAccount:(id)a3;
- (id)_localizedHistoricalDurationStringFromDate:(id)a3 toDate:(id)a4;
- (id)dateOfLastBackup;
- (int64_t)_numberOfWeeksSinceLastBackup:(id)a3;
- (void)dateOfLastBackup;
- (void)fetchBackupDetailLabelWithCompletion:(id)a3;
- (void)fetchBackupStatusDotColorWithCompletion:(id)a3;
- (void)fetchBackupSubtitleWithCompletion:(id)a3;
- (void)fetchVisibleDomainInfoList:(id)a3;
@end

@implementation ICSBackupManager

- (ICSBackupManager)initWithAccount:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ICSBackupManager;
  v5 = [(ICSBackupManager *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D28A40]);
    v12 = 0;
    v7 = [v6 initWithAccount:v4 delegate:v5 eventQueue:MEMORY[0x277D85CD0] error:&v12];
    v8 = v12;
    mbManager = v5->_mbManager;
    v5->_mbManager = v7;

    if (v8)
    {
      v10 = LogSubsystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ICSBackupManager initWithAccount:];
      }
    }
  }

  return v5;
}

- (void)fetchBackupDetailLabelWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(2, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke;
  v7[3] = &unk_27A6665D8;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[1] backupState];
    v5 = [v4 state];

    if ((v5 - 1) > 1)
    {
      v8 = [v3[1] restoreState];
      v9 = [v8 state];

      if ((v9 - 1) > 1)
      {
        if ([v3[1] isBackupEnabled])
        {
          v11 = v3[1];
          v30 = 0;
          v12 = [v11 dateOfLastBackupWithError:&v30];
          v7 = v30;
          if (v7)
          {
            v13 = LogSubsystem();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_cold_1();
            }
          }

          v14 = LogSubsystem();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v38 = v12;
            _os_log_impl(&dword_275819000, v14, OS_LOG_TYPE_DEFAULT, "Last backup date: %@", buf, 0xCu);
          }

          if (v12)
          {
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_2_55;
            v23[3] = &unk_27A6665B0;
            v24 = v12;
            v15 = *(a1 + 40);
            v25 = *(a1 + 32);
            v26 = v15;
            dispatch_async(MEMORY[0x277D85CD0], v23);

            v16 = v24;
          }

          else
          {
            v18 = *(a1 + 32);
            v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
            v20 = [v19 localizedStringForKey:@"SUBTITLE_ON" value:&stru_288487370 table:@"Localizable-iCloud"];

            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_54;
            v27[3] = &unk_27A666588;
            v21 = *(a1 + 40);
            v28 = v20;
            v29 = v21;
            v16 = v20;
            dispatch_async(MEMORY[0x277D85CD0], v27);
          }
        }

        else
        {
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_4;
          v31[3] = &unk_27A666588;
          v17 = *(a1 + 40);
          v31[4] = *(a1 + 32);
          v32 = v17;
          dispatch_async(MEMORY[0x277D85CD0], v31);
          v7 = v32;
        }
      }

      else
      {
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_3;
        v33[3] = &unk_27A666588;
        v10 = *(a1 + 40);
        v33[4] = *(a1 + 32);
        v34 = v10;
        dispatch_async(MEMORY[0x277D85CD0], v33);
        v7 = v34;
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_2;
      block[3] = &unk_27A666588;
      v6 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v36 = v6;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v7 = v36;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_2(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"IN_PROGRESS_SUBTITLE" value:&stru_288487370 table:@"Localizable-iCloud"];
  (*(v2 + 16))(v2, v4);
}

void __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_3(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"SUBTITLE_RESTORE_IN_PROGRESS" value:&stru_288487370 table:@"Localizable-iCloud"];
  (*(v2 + 16))(v2, v4);
}

void __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_4(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"SUBTITLE_OFF" value:&stru_288487370 table:@"Localizable-iCloud"];
  (*(v2 + 16))(v2, v4);
}

void __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_2_55(uint64_t a1)
{
  [*(a1 + 32) timeIntervalSinceNow];
  v3 = v2;
  v4 = LogSubsystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_2_55_cold_1(v4, v3);
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [v6 _localizedHistoricalDurationStringFromDate:v7 toDate:v8];
  (*(v5 + 16))(v5, v9);
}

- (void)fetchBackupSubtitleWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(2, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ICSBackupManager_fetchBackupSubtitleWithCompletion___block_invoke;
  v7[3] = &unk_27A666600;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __54__ICSBackupManager_fetchBackupSubtitleWithCompletion___block_invoke(id *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v20 = 0;
    v5 = [v4 dateOfLastBackupWithError:&v20];
    v6 = v20;
    if (v6)
    {
      v7 = LogSubsystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_cold_1();
      }
    }

    v8 = LogSubsystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&dword_275819000, v8, OS_LOG_TYPE_DEFAULT, "Last backup date: %@", buf, 0xCu);
    }

    if (v5)
    {
      v9 = a1 + 4;
      if ([a1[4] _numberOfWeeksSinceLastBackup:v5] > 12)
      {
        v15 = v19;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __54__ICSBackupManager_fetchBackupSubtitleWithCompletion___block_invoke_57;
        v19[3] = &unk_27A666588;
        v19[5] = a1[5];
LABEL_21:
        v15[4] = *v9;
        dispatch_async(MEMORY[0x277D85CD0], v15);

        goto LABEL_22;
      }

      v10 = LogSubsystem();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __54__ICSBackupManager_fetchBackupSubtitleWithCompletion___block_invoke_cold_2(v10);
      }
    }

    if ([v3[1] isBackupEnabled])
    {
      v11 = [v3[1] backupState];
      if ([v11 state] == 6)
      {
        v12 = [v3[1] backupState];
        v13 = [v12 error];
        v14 = [v3 _shouldShowFailedMessageForErrorCode:{objc_msgSend(v13, "code")}];

        if (v14)
        {
          v15 = v18;
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __54__ICSBackupManager_fetchBackupSubtitleWithCompletion___block_invoke_61;
          v18[3] = &unk_27A666588;
          v18[5] = a1[5];
LABEL_20:
          v9 = a1 + 4;
          goto LABEL_21;
        }
      }

      else
      {
      }
    }

    v15 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__ICSBackupManager_fetchBackupSubtitleWithCompletion___block_invoke_2;
    v17[3] = &unk_27A666588;
    v17[5] = a1[5];
    goto LABEL_20;
  }

LABEL_22:

  v16 = *MEMORY[0x277D85DE8];
}

void __54__ICSBackupManager_fetchBackupSubtitleWithCompletion___block_invoke_57(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"BACKUP_NEEDED" value:&stru_288487370 table:@"Localizable-iCloud"];
  (*(v2 + 16))(v2, v4);
}

void __54__ICSBackupManager_fetchBackupSubtitleWithCompletion___block_invoke_61(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v5 localizedStringForKey:@"FAILED_SUBTITLE" value:&stru_288487370 table:@"Localizable-iCloud"];
  (*(v2 + 16))(v2, v4);
}

void __54__ICSBackupManager_fetchBackupSubtitleWithCompletion___block_invoke_2(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = [objc_opt_class() defaultSubtitle];
  (*(v2 + 16))(v2, v4);
}

- (void)fetchBackupStatusDotColorWithCompletion:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ICSBackupManager_fetchBackupStatusDotColorWithCompletion___block_invoke;
  block[3] = &unk_27A666628;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __60__ICSBackupManager_fetchBackupStatusDotColorWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained[1] isBackupEnabled])
    {
      v4 = [v3 _backupDidFail];
      v5 = v6;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __60__ICSBackupManager_fetchBackupStatusDotColorWithCompletion___block_invoke_3;
      v6[3] = &unk_27A6661E8;
      v7 = v4;
    }

    else
    {
      v5 = v8;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __60__ICSBackupManager_fetchBackupStatusDotColorWithCompletion___block_invoke_2;
      v8[3] = &unk_27A666238;
    }

    v5[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __60__ICSBackupManager_fetchBackupStatusDotColorWithCompletion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277D75348] systemGrayColor];
  (*(v1 + 16))(v1, v2);
}

void __60__ICSBackupManager_fetchBackupStatusDotColorWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGreenColor];
  }
  v2 = ;
  (*(v1 + 16))(v1);
}

- (void)fetchVisibleDomainInfoList:(id)a3
{
  v4 = a3;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__ICSBackupManager_fetchVisibleDomainInfoList___block_invoke;
  v7[3] = &unk_27A666260;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__ICSBackupManager_fetchVisibleDomainInfoList___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [*(*(a1 + 32) + 8) domainInfoList];
  v4 = v3;
  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          v10 = [getPSGBackupUtilsClass() bundleIdForDomainInfo:v9];
          if (([getPSGBackupUtilsClass() shouldIgnoreBundleId:v10] & 1) == 0)
          {
            [v2 addObject:v9];
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

+ (NSString)defaultSubtitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"THIS_DEVICE"];
  v4 = [v2 localizedStringForKey:v3 value:&stru_288487370 table:@"Localizable-iCloud"];

  return v4;
}

- (BOOL)hasBackupError
{
  v3 = [(MBManager *)self->_mbManager isBackupEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(ICSBackupManager *)self _backupDidFail];
  }

  return v3;
}

- (BOOL)_backupDidFail
{
  v3 = [(MBManager *)self->_mbManager backupState];
  if ([v3 state] == 6)
  {
    v4 = [(MBManager *)self->_mbManager backupState];
    v5 = [v4 error];
    v6 = -[ICSBackupManager _shouldShowFailedMessageForErrorCode:](self, "_shouldShowFailedMessageForErrorCode:", [v5 code]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)displayNameFor:(id)a3
{
  v3 = a3;
  v4 = [getPSGBackupUtilsClass() displayNameForDomainInfo:v3];

  return v4;
}

+ (id)bundleIDFor:(id)a3
{
  v3 = a3;
  v4 = [getPSGBackupUtilsClass() bundleIdForDomainInfo:v3];

  return v4;
}

- (id)dateOfLastBackup
{
  mbManager = self->_mbManager;
  v8 = 0;
  v3 = [(MBManager *)mbManager dateOfLastBackupWithError:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = LogSubsystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [ICSBackupManager dateOfLastBackup];
    }

    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

- (id)_localizedHistoricalDurationStringFromDate:(id)a3 toDate:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 currentCalendar];
  v9 = [v8 components:8432 fromDate:v7 toDate:v6 options:0];

  if ([v9 weekOfYear] < 1)
  {
    if ([v9 day] < 1)
    {
      if ([v9 hour] < 1)
      {
        if ([v9 minute] < 1)
        {
          if ([v9 second] < 1)
          {
            goto LABEL_3;
          }

          v11 = MEMORY[0x277CCACA8];
          v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v13 = [v12 localizedStringForKey:@"X_SECONDS_AGO" value:&stru_288487370 table:@"Localizable-iCloud"];
          v14 = [v9 second];
        }

        else
        {
          v11 = MEMORY[0x277CCACA8];
          v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v13 = [v12 localizedStringForKey:@"X_MINUTES_AGO" value:&stru_288487370 table:@"Localizable-iCloud"];
          v14 = [v9 minute];
        }
      }

      else
      {
        v11 = MEMORY[0x277CCACA8];
        v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v13 = [v12 localizedStringForKey:@"X_HOURS_AGO" value:&stru_288487370 table:@"Localizable-iCloud"];
        v14 = [v9 hour];
      }
    }

    else
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = [v12 localizedStringForKey:@"X_DAYS_AGO" value:&stru_288487370 table:@"Localizable-iCloud"];
      v14 = [v9 day];
    }
  }

  else
  {
    if ([v9 weekOfYear] > 12)
    {
LABEL_3:
      v10 = &stru_288487370;
      goto LABEL_14;
    }

    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"X_WEEKS_AGO" value:&stru_288487370 table:@"Localizable-iCloud"];
    v14 = [v9 weekOfYear];
  }

  v10 = [v11 stringWithFormat:v13, v14];

LABEL_14:

  return v10;
}

- (int64_t)_numberOfWeeksSinceLastBackup:(id)a3
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a3;
  v5 = [v3 currentCalendar];
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v5 components:0x2000 fromDate:v4 toDate:v6 options:0];

  v8 = [v7 weekOfYear];
  return v8;
}

- (void)initWithAccount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_275819000, v0, v1, "Error initializing MBManager: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_275819000, v0, v1, "Failed to fetch last backup date w/ error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__ICSBackupManager_fetchBackupDetailLabelWithCompletion___block_invoke_2_55_cold_1(NSObject *a1, double a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEAA8] date];
  OUTLINED_FUNCTION_1_0();
  v7 = 2048;
  v8 = a2;
  _os_log_debug_impl(&dword_275819000, a1, OS_LOG_TYPE_DEBUG, "NSDate.date: %@, lastBackupInterval: %f", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dateOfLastBackup
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_275819000, v0, v1, "ICSBackupManager error while fetching date of last backup: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end