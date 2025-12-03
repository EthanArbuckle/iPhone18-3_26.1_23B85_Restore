@interface BRCCKMetricEndpoint
- (BRCCKMetricEndpoint)initWithSession:(id)session;
- (void)submitEventMetric:(id)metric;
@end

@implementation BRCCKMetricEndpoint

- (BRCCKMetricEndpoint)initWithSession:(id)session
{
  sessionCopy = session;
  v9.receiver = self;
  v9.super_class = BRCCKMetricEndpoint;
  v6 = [(BRCCKMetricEndpoint *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
  }

  return v7;
}

- (void)submitEventMetric:(id)metric
{
  metricCopy = metric;
  if (metricCopy)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCCKMetricEndpoint submitEventMetric:];
    }

    associatedCKEventMetricIfAvailable = [metricCopy associatedCKEventMetricIfAvailable];
    if (!associatedCKEventMetricIfAvailable)
    {
      v8 = objc_alloc(MEMORY[0x277CBC358]);
      eventName = [metricCopy eventName];
      startTime = [metricCopy startTime];
      associatedCKEventMetricIfAvailable = [v8 initWithEventName:eventName atTime:startTime];
    }

    startTime2 = [metricCopy startTime];
    [associatedCKEventMetricIfAvailable setStartTime:startTime2];

    endTime = [metricCopy endTime];
    [associatedCKEventMetricIfAvailable setEndTime:endTime];

    additionalPayload = [metricCopy additionalPayload];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__BRCCKMetricEndpoint_submitEventMetric___block_invoke;
    v18[3] = &unk_278500270;
    v19 = associatedCKEventMetricIfAvailable;
    v14 = associatedCKEventMetricIfAvailable;
    [additionalPayload enumerateKeysAndObjectsUsingBlock:v18];

    syncContextProvider = [(BRCAccountSession *)self->_session syncContextProvider];
    defaultSyncContext = [syncContextProvider defaultSyncContext];
    ckContainer = [defaultSyncContext ckContainer];

    [ckContainer submitEventMetric:v14];
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