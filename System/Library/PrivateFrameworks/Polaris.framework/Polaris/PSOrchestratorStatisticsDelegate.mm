@interface PSOrchestratorStatisticsDelegate
- (PSOrchestratorStatisticsDelegate)initWithHistoryCapacity:(unint64_t)capacity getTime:(id)time;
- (id)statistics;
- (void)dealloc;
- (void)didEndOrchestration;
@end

@implementation PSOrchestratorStatisticsDelegate

- (PSOrchestratorStatisticsDelegate)initWithHistoryCapacity:(unint64_t)capacity getTime:(id)time
{
  timeCopy = time;
  v13.receiver = self;
  v13.super_class = PSOrchestratorStatisticsDelegate;
  v7 = [(PSOrchestratorStatisticsDelegate *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_allTimeStatistics.numberOfOrchestrations = 0;
    *&v7->_allTimeStatistics.max.start = 0u;
    *&v7->_allTimeStatistics.max.orchestrationNumber = 0u;
    v7->_recentHistoryBufferCapacity = capacity;
    v7->_recentHistory = malloc_type_calloc(capacity, 0x10uLL, 0x1000040451B5BE8uLL);
    v9 = objc_retainBlock(timeCopy);
    getTime = v8->_getTime;
    v8->_getTime = v9;

    v11 = os_log_create("com.apple.polaris", "orchestrator");
    [(PSOrchestratorStatisticsDelegate *)v8 setLog:v11];
  }

  return v8;
}

- (void)dealloc
{
  free(self->_recentHistory);
  v3.receiver = self;
  v3.super_class = PSOrchestratorStatisticsDelegate;
  [(PSOrchestratorStatisticsDelegate *)&v3 dealloc];
}

- (void)didEndOrchestration
{
  v3 = (*(self->_getTime + 2))();
  startTime = self->_startTime;
  v5 = v3 - startTime;
  if (v3 - startTime > self->_allTimeStatistics.max.duration)
  {
    self->_allTimeStatistics.max.start = startTime;
    self->_allTimeStatistics.max.duration = v5;
    self->_allTimeStatistics.max.orchestrationNumber = self->_allTimeStatistics.numberOfOrchestrations;
    v6 = [(PSOrchestratorStatisticsDelegate *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      numberOfOrchestrations = self->_allTimeStatistics.numberOfOrchestrations;
      _os_log_unreliable_impl();
    }

    startTime = self->_startTime;
  }

  v7 = self->_allTimeStatistics.numberOfOrchestrations;
  v8 = &self->_recentHistory[v7 % self->_recentHistoryBufferCapacity];
  v9 = self->_allTimeStatistics.total + v5;
  v8->var0 = startTime;
  v8->var1 = v5;
  self->_allTimeStatistics.total = v9;
  self->_allTimeStatistics.numberOfOrchestrations = v7 + 1;
}

- (id)statistics
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "duration", self->_allTimeStatistics.max.duration);
  xpc_dictionary_set_uint64(v3, "startTimestamp", self->_allTimeStatistics.max.start);
  xpc_dictionary_set_uint64(v3, "orchestrationNumber", self->_allTimeStatistics.max.orchestrationNumber);
  xpc_dictionary_set_uint64(v3, "total", self->_allTimeStatistics.total);
  xpc_dictionary_set_uint64(v3, "numberOfOrchestrationsRecorded", self->_allTimeStatistics.numberOfOrchestrations);
  if (self->_allTimeStatistics.numberOfOrchestrations >= self->_recentHistoryBufferCapacity)
  {
    recentHistoryBufferCapacity = self->_recentHistoryBufferCapacity;
  }

  else
  {
    recentHistoryBufferCapacity = self->_allTimeStatistics.numberOfOrchestrations;
  }

  v5 = xpc_array_create(0, 0);
  value = recentHistoryBufferCapacity;
  if (recentHistoryBufferCapacity)
  {
    v6 = recentHistoryBufferCapacity;
    v7 = self->_allTimeStatistics.numberOfOrchestrations - recentHistoryBufferCapacity;
    do
    {
      v8 = v7 % self->_recentHistoryBufferCapacity;
      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v9, "orchestrationNumber", v7);
      xpc_dictionary_set_uint64(v9, "startTimestamp", self->_recentHistory[v8].var0);
      xpc_dictionary_set_uint64(v9, "duration", self->_recentHistory[v8].var1);
      xpc_array_append_value(v5, v9);

      ++v7;
      --v6;
    }

    while (v6);
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_value(v10, "allTimeStatistics", v3);
  xpc_dictionary_set_uint64(v10, "historyCount", value);
  xpc_dictionary_set_value(v10, "history", v5);

  return v10;
}

@end