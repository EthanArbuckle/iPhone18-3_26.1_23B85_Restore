@interface TPSDataMigrator
+ (void)_performDesiredOutcomeMigration;
+ (void)_performSavedTipsMigration;
+ (void)performMigrationIfNeeded;
+ (void)revertTipStatusArchivalIfNeeded;
@end

@implementation TPSDataMigrator

+ (void)performMigrationIfNeeded
{
  [self _performDesiredOutcomeMigration];

  [self _performSavedTipsMigration];
}

+ (void)_performDesiredOutcomeMigration
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (([standardUserDefaults BOOLForKey:@"TPSDidMigrateDesiredOutcomePerformed"] & 1) == 0)
  {
    daemon = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Should perform desired outcome migration.", buf, 2u);
    }

    mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
    tipStatusController = [mEMORY[0x277D716E8] tipStatusController];

    tipStatusMap = [tipStatusController tipStatusMap];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__TPSDataMigrator__performDesiredOutcomeMigration__block_invoke;
    v8[3] = &unk_2789B1210;
    v9 = tipStatusController;
    v7 = tipStatusController;
    [tipStatusMap enumerateKeysAndObjectsUsingBlock:v8];
    [standardUserDefaults setBool:1 forKey:@"TPSDidMigrateDesiredOutcomePerformed"];
    [standardUserDefaults synchronize];
  }
}

void __50__TPSDataMigrator__performDesiredOutcomeMigration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 desiredOutcomePerformedDates];
  v7 = [v6 firstObject];

  if (v7)
  {
    [*(a1 + 32) donateDesiredOutcomePerformedForIdentifier:v5 date:v7];
    v8 = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __50__TPSDataMigrator__performDesiredOutcomeMigration__block_invoke_cold_1();
    }
  }
}

+ (void)_performSavedTipsMigration
{
  daemon = [MEMORY[0x277D71778] daemon];
  if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Should migrate saved tips and dates with correlation id.", buf, 2u);
  }

  mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
  tipStatusController = [mEMORY[0x277D716E8] tipStatusController];

  tipStatusMap = [tipStatusController tipStatusMap];
  mEMORY[0x277D71798] = [MEMORY[0x277D71798] sharedInstance];
  mEMORY[0x277D716E8]2 = [MEMORY[0x277D716E8] sharedInstance];
  majorVersion = [mEMORY[0x277D716E8]2 majorVersion];
  integerValue = [majorVersion integerValue];

  [mEMORY[0x277D71798] removeInvalidEntries];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__TPSDataMigrator__performSavedTipsMigration__block_invoke;
  v12[3] = &unk_2789B1238;
  v14 = tipStatusController;
  v15 = integerValue;
  v13 = mEMORY[0x277D71798];
  v10 = tipStatusController;
  v11 = mEMORY[0x277D71798];
  [tipStatusMap enumerateKeysAndObjectsUsingBlock:v12];
}

void __45__TPSDataMigrator__performSavedTipsMigration__block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 savedDate];
  v8 = [v6 lastUsedVersion];
  v9 = [v8 integerValue];

  if (v7 && v9 >= a1[6] - 2)
  {
    v10 = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __45__TPSDataMigrator__performSavedTipsMigration__block_invoke_cold_1();
    }

    v11 = a1[4];
    v12 = [v6 correlationIdentifier];
    v13 = [v6 identifier];
    v14 = [v6 lastUsedVersion];
    [v11 updateSavedTipsWithCorrelationId:v12 tipIdentifier:v13 savedDate:v7 lastUsedVersion:v14];

    v15 = a1[5];
    v16 = [v6 identifier];
    [v15 clearSavedDateForIdentifier:v16];
  }
}

+ (void)revertTipStatusArchivalIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (([standardUserDefaults BOOLForKey:@"TPSDidRevertArchivedTipStatuses"] & 1) == 0)
  {
    daemon = [MEMORY[0x277D71778] daemon];
    if (os_log_type_enabled(daemon, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_232D6F000, daemon, OS_LOG_TYPE_DEFAULT, "Should revert tip status archival.", &v14, 2u);
    }

    mEMORY[0x277D716E8] = [MEMORY[0x277D716E8] sharedInstance];
    archivedTipStatuses = [mEMORY[0x277D716E8] archivedTipStatuses];

    if ([archivedTipStatuses count])
    {
      mEMORY[0x277D716E8]2 = [MEMORY[0x277D716E8] sharedInstance];
      tipStatusController = [mEMORY[0x277D716E8]2 tipStatusController];

      daemon2 = [MEMORY[0x277D71778] daemon];
      if (os_log_type_enabled(daemon2, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(tipStatusController, "tipStatusCount")}];
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_232D6F000, daemon2, OS_LOG_TYPE_DEFAULT, "Pre-unarchival tip status count: %@", &v14, 0xCu);
      }

      [tipStatusController addTipStatuses:archivedTipStatuses];
      daemon3 = [MEMORY[0x277D71778] daemon];
      if (os_log_type_enabled(daemon3, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(tipStatusController, "tipStatusCount")}];
        v14 = 138412290;
        v15 = v11;
        _os_log_impl(&dword_232D6F000, daemon3, OS_LOG_TYPE_DEFAULT, "Post-unarchival tip status count: %@", &v14, 0xCu);
      }
    }

    mEMORY[0x277D716E8]3 = [MEMORY[0x277D716E8] sharedInstance];
    [mEMORY[0x277D716E8]3 deleteTipStatusArchivalDirectory];

    [standardUserDefaults setBool:1 forKey:@"TPSDidRevertArchivedTipStatuses"];
    [standardUserDefaults removeObjectForKey:@"TPSLastTipStatusArchivalMajorVersion"];
    [standardUserDefaults removeObjectForKey:@"TPSDidResetTipStatusDataProtectionLevel"];
    [standardUserDefaults synchronize];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __50__TPSDataMigrator__performDesiredOutcomeMigration__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5(&dword_232D6F000, v0, v1, "Migrate desiredOutomePerformed for identifier: %@, date: %@");
  v2 = *MEMORY[0x277D85DE8];
}

void __45__TPSDataMigrator__performSavedTipsMigration__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5(&dword_232D6F000, v0, v1, "Migrate savedTip to defaults for identifier: %@, date: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end