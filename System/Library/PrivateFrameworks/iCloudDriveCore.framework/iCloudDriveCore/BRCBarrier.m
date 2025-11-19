@interface BRCBarrier
- (BOOL)waitForBarrierWithTimeout:(unint64_t)a3;
- (BRCBarrier)initWithName:(id)a3;
- (void)dealloc;
- (void)signalAndRetakeBarrier;
- (void)signalBarrier;
@end

@implementation BRCBarrier

- (BRCBarrier)initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BRCBarrier;
  v6 = [(BRCBarrier *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = dispatch_group_create();
    barrierGroup = v7->_barrierGroup;
    v7->_barrierGroup = v8;

    dispatch_group_enter(v7->_barrierGroup);
  }

  return v7;
}

- (void)dealloc
{
  [(BRCBarrier *)self signalBarrier];
  v3.receiver = self;
  v3.super_class = BRCBarrier;
  [(BRCBarrier *)&v3 dealloc];
}

- (void)signalBarrier
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Signalling barrier %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)signalAndRetakeBarrier
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Signalling and retaking barrier %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)waitForBarrierWithTimeout:(unint64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  v5 = v4->_barrierGroup;
  objc_sync_exit(v4);

  if (v5)
  {
    name = v4->_name;
    p_name = &v4->_name;
    if (name)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [BRCBarrier waitForBarrierWithTimeout:?];
      }
    }

    v10 = dispatch_group_wait(v5, a3);
    v11 = v10 == 0;
    if (*p_name)
    {
      v12 = v10;
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v17 = *p_name;
        v18 = @"timeout";
        v19 = 138412802;
        if (!v12)
        {
          v18 = @"success";
        }

        v20 = v17;
        v21 = 2112;
        v22 = v18;
        v23 = 2112;
        v24 = v13;
        _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] Done Waiting for barrier %@ with result %@%@", &v19, 0x20u);
      }
    }
  }

  else
  {
    v11 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)waitForBarrierWithTimeout:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Waiting for barrier %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

@end