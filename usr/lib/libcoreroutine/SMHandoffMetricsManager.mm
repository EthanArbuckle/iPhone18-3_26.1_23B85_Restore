@interface SMHandoffMetricsManager
- (SMHandoffMetricsManager)init;
- (void)addMetricErrorCode:(int64_t)code;
- (void)addMetricErrorDomain:(id)domain;
- (void)addMetricForLatencyEligibilityChecks:(double)checks;
- (void)addMetricForLatencyFetchActiveSessionDetailsCK:(double)k;
- (void)addMetricForLatencyHandoffCriteria:(double)criteria;
- (void)addMetricForLatencyHandoffEndToEnd:(double)end;
- (void)addMetricForLatencyWriteActiveSessionDetailsCK:(double)k;
- (void)addMetricHandoffReason:(int64_t)reason;
- (void)addMetricSucceeded:(BOOL)succeeded;
- (void)resetMetrics;
@end

@implementation SMHandoffMetricsManager

- (SMHandoffMetricsManager)init
{
  v4.receiver = self;
  v4.super_class = SMHandoffMetricsManager;
  v2 = [(RTMetric *)&v4 init];
  [(SMHandoffMetricsManager *)v2 resetMetrics];
  return v2;
}

- (void)addMetricHandoffReason:(int64_t)reason
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:reason];
  metrics = [(RTMetric *)self metrics];
  [metrics setObject:v5 forKeyedSubscript:@"handoffReason"];
}

- (void)addMetricErrorCode:(int64_t)code
{
  v5 = [MEMORY[0x277CCABB0] numberWithLong:code];
  metrics = [(RTMetric *)self metrics];
  [metrics setObject:v5 forKeyedSubscript:@"errorCodeForDomain"];
}

- (void)addMetricErrorDomain:(id)domain
{
  domainCopy = domain;
  metrics = [(RTMetric *)self metrics];
  [metrics setObject:domainCopy forKeyedSubscript:@"errorDomain"];
}

- (void)addMetricForLatencyEligibilityChecks:(double)checks
{
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:round(checks)];
  v8 = [v5 binForNumber:v6 bins:&unk_2845A09E0];

  metrics = [(RTMetric *)self metrics];
  [metrics setObject:v8 forKeyedSubscript:@"latencyEligibilityChecks"];
}

- (void)addMetricForLatencyFetchActiveSessionDetailsCK:(double)k
{
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:round(k)];
  v8 = [v5 binForNumber:v6 bins:&unk_2845A09F8];

  metrics = [(RTMetric *)self metrics];
  [metrics setObject:v8 forKeyedSubscript:@"latencyFetchActiveSessionDetailsCK"];
}

- (void)addMetricForLatencyHandoffCriteria:(double)criteria
{
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:round(criteria)];
  v8 = [v5 binForNumber:v6 bins:&unk_2845A0A10];

  metrics = [(RTMetric *)self metrics];
  [metrics setObject:v8 forKeyedSubscript:@"latencyHandoffCriteria"];
}

- (void)addMetricForLatencyHandoffEndToEnd:(double)end
{
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:round(end)];
  v8 = [v5 binForNumber:v6 bins:&unk_2845A0A28];

  metrics = [(RTMetric *)self metrics];
  [metrics setObject:v8 forKeyedSubscript:@"latencyHandoffEndToEnd"];
}

- (void)addMetricForLatencyWriteActiveSessionDetailsCK:(double)k
{
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:round(k)];
  v8 = [v5 binForNumber:v6 bins:&unk_2845A0A40];

  metrics = [(RTMetric *)self metrics];
  [metrics setObject:v8 forKeyedSubscript:@"latencyWriteActiveSessionDetailsCK"];
}

- (void)addMetricSucceeded:(BOOL)succeeded
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:succeeded];
  metrics = [(RTMetric *)self metrics];
  [metrics setObject:v5 forKeyedSubscript:@"succeeded"];
}

- (void)resetMetrics
{
  metrics = [(RTMetric *)self metrics];
  [metrics setObject:&unk_28459C510 forKeyedSubscript:@"handoffReason"];

  [(SMHandoffMetricsManager *)self addMetricErrorCode:0];
  [(SMHandoffMetricsManager *)self addMetricErrorDomain:@"Unknown"];
  [(SMHandoffMetricsManager *)self addMetricForLatencyEligibilityChecks:-1.0];
  [(SMHandoffMetricsManager *)self addMetricForLatencyFetchActiveSessionDetailsCK:-1.0];
  [(SMHandoffMetricsManager *)self addMetricForLatencyHandoffCriteria:-1.0];
  [(SMHandoffMetricsManager *)self addMetricForLatencyHandoffEndToEnd:-1.0];
  [(SMHandoffMetricsManager *)self addMetricForLatencyWriteActiveSessionDetailsCK:-1.0];

  [(SMHandoffMetricsManager *)self addMetricSucceeded:0];
}

@end