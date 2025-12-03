@interface BRCBarrier
- (BOOL)waitForBarrierWithTimeout:(unint64_t)timeout;
- (BRCBarrier)initWithName:(id)name;
- (void)dealloc;
- (void)signalAndRetakeBarrier;
- (void)signalBarrier;
@end

@implementation BRCBarrier

- (BRCBarrier)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = BRCBarrier;
  v6 = [(BRCBarrier *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
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
  v1 = *self;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Signalling barrier %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (void)signalAndRetakeBarrier
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *self;
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v2, v3, "[DEBUG] Signalling and retaking barrier %@%@");
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)waitForBarrierWithTimeout:(unint64_t)timeout
{
  v25 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = selfCopy->_barrierGroup;
  objc_sync_exit(selfCopy);

  if (v5)
  {
    name = selfCopy->_name;
    p_name = &selfCopy->_name;
    if (name)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [BRCBarrier waitForBarrierWithTimeout:?];
      }
    }

    v10 = dispatch_group_wait(v5, timeout);
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