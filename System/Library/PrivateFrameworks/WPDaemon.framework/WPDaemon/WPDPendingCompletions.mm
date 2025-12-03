@interface WPDPendingCompletions
- (WPDPendingCompletions)initWithName:(id)name;
- (id)description;
- (unint64_t)addCompletion:(id)completion;
- (void)completeID:(unint64_t)d success:(BOOL)success;
@end

@implementation WPDPendingCompletions

- (WPDPendingCompletions)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = WPDPendingCompletions;
  v6 = [(WPDPendingCompletions *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    v7->_lastID = 0;
    v8 = objc_opt_new();
    pendingCompletions = v7->_pendingCompletions;
    v7->_pendingCompletions = v8;
  }

  return v7;
}

- (id)description
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ pending completions:%lu, last ID:%lu\n", selfCopy->_name, -[NSMutableArray count](selfCopy->_pendingCompletions, "count"), selfCopy->_lastID];
  objc_sync_exit(selfCopy);

  return v3;
}

- (unint64_t)addCompletion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (completionCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(WPDPendingCompletions *)selfCopy lastID]== -1)
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPendingCompletions addCompletion:];
      }

      v8 = WiProxLog;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(WPDPendingCompletions *)selfCopy->_name addCompletion:[(NSMutableArray *)selfCopy->_pendingCompletions count], v8];
      }

      v7 = 0;
    }

    else
    {
      pendingCompletions = [(WPDPendingCompletions *)selfCopy pendingCompletions];
      [pendingCompletions addObject:completionCopy];

      v7 = [(WPDPendingCompletions *)selfCopy lastID]+ 1;
      [(WPDPendingCompletions *)selfCopy setLastID:v7];
      if (WPLogInitOnce != -1)
      {
        [WPDPendingCompletions addCompletion:];
      }

      v8 = WiProxLog;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        name = selfCopy->_name;
        v10 = [(NSMutableArray *)selfCopy->_pendingCompletions count];
        v13 = 138412802;
        v14 = name;
        v15 = 2048;
        v16 = v7;
        v17 = 2048;
        v18 = v10;
        _os_log_debug_impl(&dword_272965000, v8, OS_LOG_TYPE_DEBUG, "WPDSearchPartyAgent %@ added completion ID:%lu, outstanding:%lu", &v13, 0x20u);
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)completeID:(unint64_t)d success:(BOOL)success
{
  v31 = *MEMORY[0x277D85DE8];
  if (d)
  {
    successCopy = success;
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = d - selfCopy->_lastID + [(NSMutableArray *)selfCopy->_pendingCompletions count];
    if (v9 <= [(NSMutableArray *)selfCopy->_pendingCompletions count])
    {
      v11 = [(NSMutableArray *)selfCopy->_pendingCompletions subarrayWithRange:0, v9];
      [(NSMutableArray *)selfCopy->_pendingCompletions removeObjectsInRange:0, v9];
      if (![(NSMutableArray *)selfCopy->_pendingCompletions count])
      {
        selfCopy->_lastID = 0;
      }

      if (WPLogInitOnce != -1)
      {
        [WPDPendingCompletions completeID:success:];
      }

      v12 = WiProxLog;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        lastID = selfCopy->_lastID;
        name = selfCopy->_name;
        v19 = [(NSMutableArray *)selfCopy->_pendingCompletions count];
        *buf = 138413570;
        v22 = name;
        v23 = 2048;
        dCopy2 = d;
        v25 = 2048;
        v26 = v9;
        v27 = 1024;
        *v28 = successCopy;
        *&v28[4] = 2048;
        *&v28[6] = lastID;
        v29 = 2048;
        v30 = v19;
        _os_log_debug_impl(&dword_272965000, v12, OS_LOG_TYPE_DEBUG, "WPDSearchPartyAgent %@ will complete ID:%lu (count %lu), success:%d, last ID:%lU pending:%lu", buf, 0x3Au);
      }

      objc_sync_exit(selfCopy);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __44__WPDPendingCompletions_completeID_success___block_invoke_137;
      v20[3] = &__block_descriptor_40_e22_v32__0___v__q_8Q16_B24l;
      v20[4] = !successCopy;
      [(WPDPendingCompletions *)v11 enumerateObjectsUsingBlock:v20];
      selfCopy = v11;
    }

    else
    {
      if (WPLogInitOnce != -1)
      {
        [WPDPendingCompletions completeID:success:];
      }

      v10 = WiProxLog;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v14 = selfCopy->_lastID;
        v15 = selfCopy->_name;
        v16 = [(NSMutableArray *)selfCopy->_pendingCompletions count];
        *buf = 138413058;
        v22 = v15;
        v23 = 2048;
        dCopy2 = d;
        v25 = 2048;
        v26 = v14;
        v27 = 2048;
        *v28 = v16;
        _os_log_error_impl(&dword_272965000, v10, OS_LOG_TYPE_ERROR, "WPDSearchPartyAgent %@ NOOP unexpected completion ID:%lu, last known ID:%lu, pending count:%lu", buf, 0x2Au);
      }

      objc_sync_exit(selfCopy);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (WPLogInitOnce != -1)
    {
      [WPDPendingCompletions completeID:success:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      [WPDPendingCompletions completeID:? success:?];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addCompletion:(uint64_t)a3 .cold.3(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = 0;
  *(buf + 11) = 2048;
  *(buf + 3) = a3;
  _os_log_error_impl(&dword_272965000, log, OS_LOG_TYPE_ERROR, "WPDSearchPartyAgent %@ cannot increment completion ID:%lu, outstanding:%lu", buf, 0x20u);
}

- (void)completeID:(uint64_t)a1 success:.cold.4(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 24);
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end