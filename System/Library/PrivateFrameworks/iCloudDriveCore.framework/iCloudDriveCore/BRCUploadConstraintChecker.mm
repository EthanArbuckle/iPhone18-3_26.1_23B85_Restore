@interface BRCUploadConstraintChecker
+ (id)defaultChecker;
- (BOOL)_areConstraintsOverriden;
- (BOOL)_hasRejectedItemsDueToSize;
- (BOOL)_removeItemIDFromRejectedItemsWithItemID:(id)a3 shouldSendNotification:(BOOL *)a4;
- (BOOL)_resetAvailableSizeAndDateIfNeeded;
- (BOOL)canUploadItemWithSize:(unint64_t)a3 itemScope:(unsigned __int8)a4 itemID:(id)a5 withError:(id *)a6;
- (id)_init;
- (id)availableSizeForUpload;
- (void)_addItemIDToRejectedItemsWithItemID:(id)a3;
- (void)_rescheduleAndResetAvailableSizeAndDateIfNeededWithDidReset:(BOOL *)a3;
- (void)_scheduleNoSpaceExecutionBlocksWithAvailableSpace:(int64_t)a3;
- (void)addNoSpaceExecutionBlock:(id)a3 forPersonaID:(id)a4;
- (void)addRescheduleSuspendedJobsBlock:(id)a3 forPersonaID:(id)a4;
- (void)overrideConstraints;
- (void)removeItemWithItemID:(id)a3;
- (void)rescheduleUploadsAndSendNotificationIfNeeded;
- (void)sendCellularConstraintNotification;
- (void)updateWithUploadedBytesSize:(unint64_t)a3 forItemID:(id)a4;
@end

@implementation BRCUploadConstraintChecker

- (id)_init
{
  v23.receiver = self;
  v23.super_class = BRCUploadConstraintChecker;
  v2 = [(BRCUploadConstraintChecker *)&v23 init];
  if (v2)
  {
    v3 = [BRCUserDefaults defaultsForMangledID:0];
    v2->_availableSizeForUpload = [v3 maxBytesForUploadOnCellular];
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v3, "maxBytesForSingleItemUploadOnCellular")}];
    maxBytesForSingleItemUploadOnCellular = v2->_maxBytesForSingleItemUploadOnCellular;
    v2->_maxBytesForSingleItemUploadOnCellular = v4;

    v6 = [MEMORY[0x277CBEAA8] getLastMidnightDate];
    lastMidnightDate = v2->_lastMidnightDate;
    v2->_lastMidnightDate = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    personaIDToRescheduleSuspendedJobsBlock = v2->_personaIDToRescheduleSuspendedJobsBlock;
    v2->_personaIDToRescheduleSuspendedJobsBlock = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    personaIDToNoSpaceExecutionBlock = v2->_personaIDToNoSpaceExecutionBlock;
    v2->_personaIDToNoSpaceExecutionBlock = v10;

    v12 = objc_alloc_init(BRCDeviceConfiguration);
    v13 = [(BRCDeviceConfiguration *)v12 getConfiguration];
    v14 = [v13 objectForKeyedSubscript:@"SYNC_BUBBLE"];
    isInSyncBubble = v2->_isInSyncBubble;
    v2->_isInSyncBubble = v14;

    [v3 overrideUploadsOnCellularForTimeLimit];
    v2->_overrideUploadsOnCellularForTimeLimit = v16;
    v17 = objc_alloc(MEMORY[0x277CFAE40]);
    v18 = [v17 initForEventName:*MEMORY[0x277CFABB8]];
    cellularConstraintsNotifier = v2->_cellularConstraintsNotifier;
    v2->_cellularConstraintsNotifier = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    rejectedItemsDueToSize = v2->_rejectedItemsDueToSize;
    v2->_rejectedItemsDueToSize = v20;
  }

  return v2;
}

+ (id)defaultChecker
{
  if (defaultChecker_onceToken != -1)
  {
    +[BRCUploadConstraintChecker defaultChecker];
  }

  v3 = defaultChecker_defaultChecker;

  return v3;
}

uint64_t __44__BRCUploadConstraintChecker_defaultChecker__block_invoke()
{
  defaultChecker_defaultChecker = [[BRCUploadConstraintChecker alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)_areConstraintsOverriden
{
  v2 = self;
  objc_sync_enter(v2);
  lastOverrideDate = v2->_lastOverrideDate;
  if (lastOverrideDate)
  {
    [(NSDate *)lastOverrideDate timeIntervalSinceNow];
    v5 = v2->_overrideUploadsOnCellularForTimeLimit >= -v4;
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(v2);

  return v5;
}

- (BOOL)_resetAvailableSizeAndDateIfNeeded
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEAA8] getLastMidnightDate];
  v4 = v3;
  if (v2->_lastMidnightDate && ([v3 timeIntervalSinceDate:?], v6 = v5, +[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", 0), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "refreshRateForUploadOnCellular"), v9 = v8, v7, v6 >= v9))
  {
    objc_storeStrong(&v2->_lastMidnightDate, v4);
    v11 = [BRCUserDefaults defaultsForMangledID:0];
    v2->_availableSizeForUpload = [v11 maxBytesForUploadOnCellular];

    [(BRCUploadConstraintChecker *)v2 sendCellularConstraintNotification];
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  objc_sync_exit(v2);
  return v10;
}

- (id)availableSizeForUpload
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:v2->_availableSizeForUpload];
  objc_sync_exit(v2);

  return v3;
}

- (void)_scheduleNoSpaceExecutionBlocksWithAvailableSpace:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)v4->_personaIDToNoSpaceExecutionBlock copy];
  objc_sync_exit(v4);

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __80__BRCUploadConstraintChecker__scheduleNoSpaceExecutionBlocksWithAvailableSpace___block_invoke;
  v6[3] = &__block_descriptor_40_e31_v32__0__NSString_8___v___16_B24l;
  v6[4] = a3;
  [v5 enumerateKeysAndObjectsUsingBlock:v6];
}

void __80__BRCUploadConstraintChecker__scheduleNoSpaceExecutionBlocksWithAvailableSpace___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"__defaultPersonaID__"])
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = v5;
  if (!v8)
  {
    if (_block_invoke___personaOnceToken_4 != -1)
    {
      __80__BRCUploadConstraintChecker__scheduleNoSpaceExecutionBlocksWithAvailableSpace___block_invoke_cold_1();
    }

    v9 = _block_invoke___personalPersona_4;
  }

  v10 = [MEMORY[0x277D77BF8] sharedManager];
  v11 = [v10 currentPersona];

  v26 = 0;
  v12 = [v11 userPersonaUniqueString];
  v13 = v12;
  if (v12 == v9 || ([v12 isEqualToString:v9] & 1) != 0)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v25 = 0;
    v16 = [v11 copyCurrentPersonaContextWithError:&v25];
    v17 = v25;
    v18 = v26;
    v26 = v16;

    if (v17)
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        __80__BRCUploadConstraintChecker__scheduleNoSpaceExecutionBlocksWithAvailableSpace___block_invoke_cold_4();
      }
    }

    v14 = [v11 br_generateAndRestorePersonaContextWithPersonaUniqueString:v9];

    if (v14)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, 0x90u))
      {
        *buf = 138412802;
        v28 = v5;
        v29 = 2112;
        v30 = v14;
        v31 = 2112;
        v32 = v21;
        _os_log_error_impl(&dword_223E7A000, v22, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_28:
    }
  }

  else
  {
    if (!v8 && ([v11 isDataSeparatedPersona] & 1) == 0)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v14 = 0;
      goto LABEL_28;
    }

    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3();
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_11:
  v6[2](v6, *(a1 + 32));

  _BRRestorePersona();
  v15 = *MEMORY[0x277D85DE8];
}

void __80__BRCUploadConstraintChecker__scheduleNoSpaceExecutionBlocksWithAvailableSpace___block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke___personalPersona_4;
  _block_invoke___personalPersona_4 = v0;
}

- (BOOL)_removeItemIDFromRejectedItemsWithItemID:(id)a3 shouldSendNotification:(BOOL *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(NSMutableSet *)v7->_rejectedItemsDueToSize containsObject:v6];
  if (v8)
  {
    [(NSMutableSet *)v7->_rejectedItemsDueToSize removeObject:v6];
    *a4 = [(NSMutableSet *)v7->_rejectedItemsDueToSize count]== 0;
  }

  objc_sync_exit(v7);

  return v8;
}

- (void)_addItemIDToRejectedItemsWithItemID:(id)a3
{
  v5 = a3;
  v4 = self;
  objc_sync_enter(v4);
  [(NSMutableSet *)v4->_rejectedItemsDueToSize addObject:v5];
  objc_sync_exit(v4);
}

- (BOOL)_hasRejectedItemsDueToSize
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableSet *)v2->_rejectedItemsDueToSize count]!= 0;
  objc_sync_exit(v2);

  return v3;
}

- (void)updateWithUploadedBytesSize:(unint64_t)a3 forItemID:(id)a4
{
  v10 = a4;
  [(BRCUploadConstraintChecker *)self removeItemWithItemID:?];
  [(BRCUploadConstraintChecker *)self _resetAvailableSizeAndDateIfNeeded];
  v6 = [MEMORY[0x277CFAEA0] sharedReachabilityMonitor];
  v7 = [v6 isCellularNetwork];

  if (v7)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = v8->_availableSizeForUpload - a3;
    v8->_availableSizeForUpload = v9;
    if (v9 <= 0)
    {
      [(BRCUploadConstraintChecker *)v8 _scheduleNoSpaceExecutionBlocksWithAvailableSpace:?];
    }

    objc_sync_exit(v8);
  }
}

- (void)_rescheduleAndResetAvailableSizeAndDateIfNeededWithDidReset:(BOOL *)a3
{
  v5 = [(BRCUploadConstraintChecker *)self _resetAvailableSizeAndDateIfNeeded];
  if (v5 || -[BRCUploadConstraintChecker _areConstraintsOverriden](self, "_areConstraintsOverriden") || (+[BRCContainerCellularSettings containerCellularSettings](BRCContainerCellularSettings, "containerCellularSettings"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isUnlimitedCellularUpdatesEnabled], v6, v7))
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(NSMutableDictionary *)v8->_personaIDToRescheduleSuspendedJobsBlock copy];
    objc_sync_exit(v8);

    if (v9)
    {
      [v9 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_21_0];
    }
  }

  if (a3)
  {
    *a3 = v5;
  }
}

void __90__BRCUploadConstraintChecker__rescheduleAndResetAvailableSizeAndDateIfNeededWithDidReset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if ([v4 isEqualToString:@"__defaultPersonaID__"])
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;
  v8 = v4;
  if (!v7)
  {
    if (_block_invoke_2___personaOnceToken_1 != -1)
    {
      __90__BRCUploadConstraintChecker__rescheduleAndResetAvailableSizeAndDateIfNeededWithDidReset___block_invoke_cold_1();
    }

    v8 = _block_invoke_2___personalPersona_1;
  }

  v9 = [MEMORY[0x277D77BF8] sharedManager];
  v10 = [v9 currentPersona];

  v25 = 0;
  v11 = [v10 userPersonaUniqueString];
  v12 = v11;
  if (v11 == v8 || ([v11 isEqualToString:v8] & 1) != 0)
  {
    v13 = 0;
    goto LABEL_11;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v24 = 0;
    v15 = [v10 copyCurrentPersonaContextWithError:&v24];
    v16 = v24;
    v17 = v25;
    v25 = v15;

    if (v16)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        __80__BRCUploadConstraintChecker__scheduleNoSpaceExecutionBlocksWithAvailableSpace___block_invoke_cold_4();
      }
    }

    v13 = [v10 br_generateAndRestorePersonaContextWithPersonaUniqueString:v8];

    if (v13)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, 0x90u))
      {
        *buf = 138412802;
        v27 = v4;
        v28 = 2112;
        v29 = v13;
        v30 = 2112;
        v31 = v20;
        _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_28:
    }
  }

  else
  {
    if (!v7 && ([v10 isDataSeparatedPersona] & 1) == 0)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v13 = 0;
      goto LABEL_28;
    }

    v22 = brc_bread_crumbs();
    v23 = brc_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3();
    }

    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_11:
  v5[2](v5);

  _BRRestorePersona();
  v14 = *MEMORY[0x277D85DE8];
}

void __90__BRCUploadConstraintChecker__rescheduleAndResetAvailableSizeAndDateIfNeededWithDidReset___block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _block_invoke_2___personalPersona_1;
  _block_invoke_2___personalPersona_1 = v0;
}

- (BOOL)canUploadItemWithSize:(unint64_t)a3 itemScope:(unsigned __int8)a4 itemID:(id)a5 withError:(id *)a6
{
  v7 = a4;
  v10 = a5;
  v11 = +[BRCSystemResourcesManager manager];
  v12 = [v11 isNetworkAvailableForDriveWithError:a6];

  if ((v12 & 1) == 0)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [BRCUploadConstraintChecker canUploadItemWithSize:itemScope:itemID:withError:];
    }

    goto LABEL_13;
  }

  v13 = [MEMORY[0x277CFAEA0] sharedReachabilityMonitor];
  v14 = [v13 isCellularNetwork];

  if (v7 != 1)
  {
    if (v14)
    {
      if (![(NSNumber *)self->_isInSyncBubble BOOLValue]&& ![(BRCUploadConstraintChecker *)self _areConstraintsOverriden])
      {
        v15 = +[BRCContainerCellularSettings containerCellularSettings];
        v16 = [v15 isUnlimitedCellularUpdatesEnabled];

        if (!v16)
        {
          v21 = self;
          objc_sync_enter(v21);
          if (v21->_availableSizeForUpload >= 1)
          {
            if ([(NSNumber *)v21->_maxBytesForSingleItemUploadOnCellular unsignedLongLongValue]>= a3)
            {
              objc_sync_exit(v21);

              v24 = 0;
              [(BRCUploadConstraintChecker *)v21 _rescheduleAndResetAvailableSizeAndDateIfNeededWithDidReset:&v24];
              if (v24)
              {
                goto LABEL_9;
              }

              goto LABEL_8;
            }

            [(BRCUploadConstraintChecker *)v21 _addItemIDToRejectedItemsWithItemID:v10];
          }

          objc_sync_exit(v21);

          [(BRCUploadConstraintChecker *)v21 sendCellularConstraintNotification];
          v22 = brc_bread_crumbs();
          v23 = brc_default_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [BRCUploadConstraintChecker canUploadItemWithSize:itemScope:itemID:withError:];
          }

          if (a6)
          {
            [MEMORY[0x277CCA9B8] brc_errorNetworkUnreachableDueToCellularConstraint];
            *a6 = v17 = 0;
            goto LABEL_14;
          }

LABEL_13:
          v17 = 0;
          goto LABEL_14;
        }
      }
    }
  }

  if ((([(BRCUploadConstraintChecker *)self _resetAvailableSizeAndDateIfNeeded]| v14) & 1) == 0)
  {
LABEL_8:
    [(BRCUploadConstraintChecker *)self sendCellularConstraintNotification];
  }

LABEL_9:
  [(BRCUploadConstraintChecker *)self removeItemWithItemID:v10];
  v17 = 1;
LABEL_14:

  return v17;
}

- (void)sendCellularConstraintNotification
{
  v3 = [MEMORY[0x277CFAEA0] sharedReachabilityMonitor];
  v4 = [v3 isCellularNetwork];

  v5 = self;
  objc_sync_enter(v5);
  v6 = +[BRCContainerCellularSettings containerCellularSettings];
  if (([v6 isUnlimitedCellularUpdatesEnabled] & 1) != 0 || -[BRCUploadConstraintChecker _areConstraintsOverriden](v5, "_areConstraintsOverriden"))
  {
    v7 = 0;
  }

  else
  {
    v7 = v5->_availableSizeForUpload < 1 || [(BRCUploadConstraintChecker *)v5 _hasRejectedItemsDueToSize];
  }

  objc_sync_exit(v5);
  cellularConstraintsNotifier = v5->_cellularConstraintsNotifier;

  [(BRDarwinNotifySender *)cellularConstraintsNotifier notifyChangedState:v4 & v7];
}

- (void)addRescheduleSuspendedJobsBlock:(id)a3 forPersonaID:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(NSMutableDictionary *)v7->_personaIDToRescheduleSuspendedJobsBlock objectForKeyedSubscript:v6];

    if (!v8)
    {
      v9 = MEMORY[0x22AA4A310](v10);
      [(NSMutableDictionary *)v7->_personaIDToRescheduleSuspendedJobsBlock setObject:v9 forKeyedSubscript:v6];
    }

    objc_sync_exit(v7);
  }
}

- (void)addNoSpaceExecutionBlock:(id)a3 forPersonaID:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(NSMutableDictionary *)v7->_personaIDToNoSpaceExecutionBlock objectForKeyedSubscript:v6];

    if (!v8)
    {
      v9 = MEMORY[0x22AA4A310](v10);
      [(NSMutableDictionary *)v7->_personaIDToNoSpaceExecutionBlock setObject:v9 forKeyedSubscript:v6];
    }

    objc_sync_exit(v7);
  }
}

- (void)overrideConstraints
{
  v2 = self;
  objc_sync_enter(v2);
  if (![(BRCUploadConstraintChecker *)v2 _areConstraintsOverriden])
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    lastOverrideDate = v2->_lastOverrideDate;
    v2->_lastOverrideDate = v3;

    [(NSMutableSet *)v2->_rejectedItemsDueToSize removeAllObjects];
    v5 = 0;
    [(BRCUploadConstraintChecker *)v2 _rescheduleAndResetAvailableSizeAndDateIfNeededWithDidReset:&v5];
    if ((v5 & 1) == 0)
    {
      [(BRCUploadConstraintChecker *)v2 sendCellularConstraintNotification];
    }
  }

  objc_sync_exit(v2);
}

- (void)removeItemWithItemID:(id)a3
{
  v4 = 0;
  if ([(BRCUploadConstraintChecker *)self _removeItemIDFromRejectedItemsWithItemID:a3 shouldSendNotification:&v4])
  {
    if (v4 == 1)
    {
      [(BRCUploadConstraintChecker *)self sendCellularConstraintNotification];
    }
  }
}

- (void)rescheduleUploadsAndSendNotificationIfNeeded
{
  [(BRCUploadConstraintChecker *)self _rescheduleAndResetAvailableSizeAndDateIfNeededWithDidReset:0];

  [(BRCUploadConstraintChecker *)self sendCellularConstraintNotification];
}

@end