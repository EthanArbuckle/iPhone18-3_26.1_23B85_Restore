@interface BRCCKMetricEndpoint
- (BRCCKMetricEndpoint)initWithSession:(id)a3;
- (void)submitEventMetric:(id)a3;
@end

@implementation BRCCKMetricEndpoint

- (BRCCKMetricEndpoint)initWithSession:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRCCKMetricEndpoint;
  v6 = [(BRCCKMetricEndpoint *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, a3);
  }

  return v7;
}

- (void)submitEventMetric:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCCKMetricEndpoint submitEventMetric:];
    }

    v7 = [v4 associatedCKEventMetricIfAvailable];
    if (!v7)
    {
      v8 = objc_alloc(MEMORY[0x277CBC358]);
      v9 = [v4 eventName];
      v10 = [v4 startTime];
      v7 = [v8 initWithEventName:v9 atTime:v10];
    }

    v11 = [v4 startTime];
    [v7 setStartTime:v11];

    v12 = [v4 endTime];
    [v7 setEndTime:v12];

    v13 = [v4 additionalPayload];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__BRCCKMetricEndpoint_submitEventMetric___block_invoke;
    v18[3] = &unk_278500270;
    v19 = v7;
    v14 = v7;
    [v13 enumerateKeysAndObjectsUsingBlock:v18];

    v15 = [(BRCAccountSession *)self->_session syncContextProvider];
    v16 = [v15 defaultSyncContext];
    v17 = [v16 ckContainer];

    [v17 submitEventMetric:v14];
  }
}

- (void)submitEventMetric:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end