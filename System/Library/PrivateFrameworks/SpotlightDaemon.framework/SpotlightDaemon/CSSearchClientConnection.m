@interface CSSearchClientConnection
- (CSSearchClientConnection)initWithConnection:(id)a3;
- (CSSearchClientConnection)initWithConnectionConfiguration:(id)a3;
- (id)description;
- (id)queryTask:(int64_t)a3;
- (void)_didReceiveResultsBatchCompletion;
- (void)_willSendResultsBatch:(id)a3 qid:(int64_t)a4;
- (void)cancelQueryTasks;
- (void)dealloc;
- (void)pollResultsForQueryTask:(int64_t)a3;
- (void)setQueryTask:(id)a3 forQueryID:(int64_t)a4;
@end

@implementation CSSearchClientConnection

- (void)_didReceiveResultsBatchCompletion
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (CSSearchClientConnection)initWithConnectionConfiguration:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CSSearchClientConnection;
  v6 = [(CSSearchClientConnection *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = objc_opt_new();
    queryTasks = v7->_queryTasks;
    v7->_queryTasks = v8;

    v10 = [v5 bundleID];
    if (v10)
    {
LABEL_6:

      goto LABEL_7;
    }

    if (([v5 searchInternal] & 1) == 0)
    {
      v10 = logForCSLogCategoryDefault();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CSSearchClientConnection initWithConnectionConfiguration:v5];
      }

      goto LABEL_6;
    }
  }

LABEL_7:

  return v7;
}

- (CSSearchClientConnection)initWithConnection:(id)a3
{
  v4 = a3;
  v5 = [SDConnectionConfiguration alloc];
  v6 = [(SDConnectionConfiguration *)v5 initWithConnection:v4 isPrivate:sSearchAgentIsPrivate];

  v7 = [(CSSearchClientConnection *)self initWithConnectionConfiguration:v6];
  return v7;
}

- (void)pollResultsForQueryTask:(int64_t)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v5 = self->_queryTasks;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)self->_queryTasks objectForKeyedSubscript:v4];
    objc_sync_exit(v5);

    [v6 poll];
  }
}

- (id)queryTask:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = self->_queryTasks;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_queryTasks objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)setQueryTask:(id)a3 forQueryID:(int64_t)a4
{
  v8 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v7 = self->_queryTasks;
  objc_sync_enter(v7);
  [(NSMutableDictionary *)self->_queryTasks setObject:v8 forKeyedSubscript:v6];
  objc_sync_exit(v7);
}

- (void)cancelQueryTasks
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = self->_queryTasks;
  objc_sync_enter(v3);
  if ([(NSMutableDictionary *)self->_queryTasks count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_queryTasks;
    v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [(NSMutableDictionary *)self->_queryTasks objectForKeyedSubscript:*(*(&v10 + 1) + 8 * v7), v10];
          [v8 cancel];

          ++v7;
        }

        while (v5 != v7);
        v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    [(NSMutableDictionary *)self->_queryTasks removeAllObjects];
  }

  objc_sync_exit(v3);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(CSSearchClientConnection *)self cancelQueryTasks];
  v3.receiver = self;
  v3.super_class = CSSearchClientConnection;
  [(CSSearchClientConnection *)&v3 dealloc];
}

- (void)_willSendResultsBatch:(id)a3 qid:(int64_t)a4
{
  v6 = a3;
  add = atomic_fetch_add(&self->_outBatchCount, 1u);
  if (add == 6)
  {
    v8 = logForCSLogCategoryQuery();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CSSearchClientConnection _willSendResultsBatch:qid:];
    }

    if (!self->_pausedTasks)
    {
      v9 = objc_opt_new();
      pausedTasks = self->_pausedTasks;
      self->_pausedTasks = v9;
    }
  }

  if (self->_pausedTasks)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    if (([(NSMutableOrderedSet *)self->_pausedTasks containsObject:v11]& 1) == 0)
    {
      [(NSMutableOrderedSet *)self->_pausedTasks addObject:v11];
      v12 = logForCSLogCategoryQuery();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(CSSearchClientConnection *)add _willSendResultsBatch:a4 qid:v12];
      }

      [v6 pauseResults];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SDConnectionConfiguration *)self->_configuration bundleID];
  v5 = [(SDConnectionConfiguration *)self->_configuration protectionClass];
  v6 = [(SDConnectionConfiguration *)self->_configuration connection];
  v7 = [v3 stringWithFormat:@"CSSearchClientConnection bundleID:%@, protectionClass:%@, conn:%@", v4, v5, v6];

  return v7;
}

- (void)initWithConnectionConfiguration:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 connection];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_willSendResultsBatch:qid:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_willSendResultsBatch:(os_log_t)log qid:.cold.2(int a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = a1;
  _os_log_debug_impl(&dword_231A35000, log, OS_LOG_TYPE_DEBUG, "Paused results qid: %ld count: %ld", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end