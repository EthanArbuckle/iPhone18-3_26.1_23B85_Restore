@interface BRCOperation
@end

@implementation BRCOperation

void __25___BRCOperation_schedule__block_invoke_cold_2(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] scheduling %@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __22___BRCOperation_start__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 496);
  v7 = *(*(a1 + 32) + 480);
  v8 = v2;
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    *buf = 134218498;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx starting with throttle %@%@", buf, 0x20u);
  }

  [*(a1 + 32) _scheduleExecutionWithPreviousError:0];
  __brc_leave_section(&v7);
  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __25___BRCOperation_schedule__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  if (!*(*(a1 + 32) + 248))
  {
    __25___BRCOperation_schedule__block_invoke_cold_1((a1 + 32));
  }

  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __25___BRCOperation_schedule__block_invoke_cold_2(v1);
  }

  return [*(*v1 + 248) addOperation:?];
}

void __22___BRCOperation_start__block_invoke_96(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 496);
  v10 = *(*(a1 + 32) + 480);
  v11 = v2;
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    *buf = 134218498;
    v13 = v10;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx starting %@%@", buf, 0x20u);
  }

  if ([*(a1 + 32) finishIfCancelled])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 32) operationID];
      __22___BRCOperation_start__block_invoke_96_cold_1(v7, v5, buf);
    }
  }

  else
  {
    [*(a1 + 32) _main];
  }

  __brc_leave_section(&v10);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __22___BRCOperation__main__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  [*(*(a1 + 32) + 248) setupIfNeeded];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __22___BRCOperation__main__block_invoke_cold_1(v1);
  }

  return [*v1 main];
}

void __53___BRCOperation__scheduleExecutionWithPreviousError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 496);
  v7 = *(*(a1 + 32) + 480);
  v8 = v2;
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    *buf = 134218498;
    v10 = v7;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx retrying %@%@", buf, 0x20u);
  }

  [*(a1 + 32) _executeWithPreviousError:*(a1 + 40)];
  __brc_leave_section(&v7);
  v5 = *MEMORY[0x277D85DE8];
}

NSObject *__23___BRCOperation_cancel__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 352);
  if (result)
  {
    dispatch_source_cancel(result);
    v3 = *(a1 + 32);
    v4 = *(v3 + 352);
    *(v3 + 352) = 0;

    v5 = *(a1 + 32);

    return [v5 _finishIfCancelled];
  }

  return result;
}

void __43___BRCOperation_completedWithResult_error___block_invoke()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = completedWithResult_error____personalPersona;
  completedWithResult_error____personalPersona = v0;
}

uint64_t __86___BRCOperation__addSubOperation_overrideContext_allowsCellularAccess_asCompletionOf___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    __86___BRCOperation__addSubOperation_overrideContext_allowsCellularAccess_asCompletionOf___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 40);
    v4 = [v3 group];
    v5 = v4 == 0;

    if (v5)
    {
      v6 = [*(a1 + 48) group];
      [v3 setGroup:v6];
    }

    if ([*(a1 + 48) nonDiscretionary])
    {
      v7 = [v3 configuration];
      [v7 setDiscretionaryNetworkBehavior:0];

      v8 = [v3 configuration];
      [v8 setAutomaticallyRetryNetworkFailures:0];
    }

    [*(a1 + 48) _setDeviceConfigurationHeaderOnCKOp:v3];
    v9 = [v3 completionBlock];
    objc_initWeak(location, v3);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __86___BRCOperation__addSubOperation_overrideContext_allowsCellularAccess_asCompletionOf___block_invoke_130;
    v21[3] = &unk_2784FF4C8;
    v21[4] = *(a1 + 48);
    objc_copyWeak(&v23, location);
    v10 = v9;
    v22 = v10;
    [v3 setCompletionBlock:v21];

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    v3 = *(a1 + 40);
    v11 = [v3 group];
    v12 = v11 == 0;

    if (v12)
    {
      v13 = [*(a1 + 48) group];
      [v3 setGroup:v13];
    }

    if (([v3 nonDiscretionary] & 1) == 0)
    {
      [v3 setNonDiscretionary:{objc_msgSend(*(a1 + 48), "nonDiscretionary")}];
    }
  }

LABEL_15:
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v18 = [*(a1 + 48) operationID];
    v19 = [v18 UUIDString];
    v20 = *(a1 + 40);
    *location = 138412802;
    *&location[4] = v19;
    v25 = 2112;
    v26 = v20;
    v27 = 2112;
    v28 = v14;
    _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] (%@) Queuing %@%@", location, 0x20u);
  }

  [*(a1 + 32) addOperation:*(a1 + 40) allowsCellularAccess:*(a1 + 56) asCompletionOf:*(a1 + 64)];
  result = [*(a1 + 48) isCancelled];
  if (result)
  {
    result = [*(a1 + 40) cancel];
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __86___BRCOperation__addSubOperation_overrideContext_allowsCellularAccess_asCompletionOf___block_invoke_130(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 400);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        [v7 associateWithCompletedOperation:{WeakRetained, v11}];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __46___BRCOperation_blockOnHighPriorityOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v6 = WeakRetained;
  if (WeakRetained)
  {
    dispatch_group_leave(WeakRetained[47]);
    v3 = v6;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  return MEMORY[0x2821F96F8]();
}

void __34___BRCOperation_cancelAfterDelay___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __34___BRCOperation_cancelAfterDelay___block_invoke_cold_1(a1, v2, v3);
  }

  [*(*(a1 + 32) + 296) timeIntervalSinceNow];
  v5 = v4;
  v6 = [*(a1 + 32) name];
  v7 = [*(a1 + 32) nonDiscretionary];
  v8 = [*(a1 + 32) syncContext];
  v9 = +[AppTelemetryTimeSeriesEvent newOperationTimedOutEventWithTime:type:nonDiscretionary:hasForegroundClients:](AppTelemetryTimeSeriesEvent, "newOperationTimedOutEventWithTime:type:nonDiscretionary:hasForegroundClients:", v6, v7, [v8 isForeground], v5);

  v10 = [*(*(a1 + 32) + 256) analyticsReporter];
  [v10 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v9];

  [*(a1 + 32) setTimedOut:1];
  [*(a1 + 32) cancel];
}

void __22___BRCOperation__main__block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] starting main %@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __25___BRCOperation_schedule__block_invoke_cold_1(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, 0x90u))
  {
    v5 = *a1;
    v6 = 138412546;
    v7 = v5;
    OUTLINED_FUNCTION_4_0();
    v8 = v1;
    _os_log_error_impl(&dword_223E7A000, v3, 0x90u, "[ERROR] Operation %@ is missing syncContext%@", &v6, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __22___BRCOperation_start__block_invoke_96_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_8(&dword_223E7A000, v6, v4, "[DEBUG] Operation %@ cancelled before calling main%@", v5);
}

void __86___BRCOperation__addSubOperation_overrideContext_allowsCellularAccess_asCompletionOf___block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: context%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __34___BRCOperation_cancelAfterDelay___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) description];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v9 = a2;
  OUTLINED_FUNCTION_8(&dword_223E7A000, a3, v6, "[DEBUG] Timeout expired, cancelling operation %@%@", v8);

  v7 = *MEMORY[0x277D85DE8];
}

@end