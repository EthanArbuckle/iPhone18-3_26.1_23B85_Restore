@interface MetricDelegate
- (void)metricMonitor:(id)monitor didEndWithError:(id)error;
- (void)metricMonitor:(id)monitor didUpdateWithMetrics:(id)metrics;
- (void)metricMonitorInterruptionDidBegin:(id)begin;
- (void)metricMonitorInterruptionDidEnd:(id)end;
@end

@implementation MetricDelegate

- (void)metricMonitor:(id)monitor didEndWithError:(id)error
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [MetricDelegate metricMonitor:error didEndWithError:?];
  }
}

- (void)metricMonitor:(id)monitor didUpdateWithMetrics:(id)metrics
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    [MetricDelegate metricMonitor:metrics didUpdateWithMetrics:?];
  }
}

- (void)metricMonitorInterruptionDidBegin:(id)begin
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "\nInterrupted; attempting to resume...", v3, 2u);
  }
}

- (void)metricMonitorInterruptionDidEnd:(id)end
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "\nInterruption ended!", v3, 2u);
  }
}

- (void)metricMonitor:(void *)a1 didEndWithError:.cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [a1 localizedDescription];
  v3 = 136315138;
  v4 = [v1 UTF8String];
  _os_log_fault_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "\nError: %s\n", &v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

- (void)metricMonitor:(void *)a1 didUpdateWithMetrics:.cold.1(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = [a1 description];
  v3 = 136315138;
  v4 = [v1 UTF8String];
  _os_log_fault_impl(&dword_1BACB7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "metric collect \n %s \n", &v3, 0xCu);

  v2 = *MEMORY[0x1E69E9840];
}

@end