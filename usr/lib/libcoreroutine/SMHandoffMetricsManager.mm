@interface SMHandoffMetricsManager
- (SMHandoffMetricsManager)init;
- (void)addMetricErrorCode:(int64_t)a3;
- (void)addMetricErrorDomain:(id)a3;
- (void)addMetricForLatencyEligibilityChecks:(double)a3;
- (void)addMetricForLatencyFetchActiveSessionDetailsCK:(double)a3;
- (void)addMetricForLatencyHandoffCriteria:(double)a3;
- (void)addMetricForLatencyHandoffEndToEnd:(double)a3;
- (void)addMetricForLatencyWriteActiveSessionDetailsCK:(double)a3;
- (void)addMetricHandoffReason:(int64_t)a3;
- (void)addMetricSucceeded:(BOOL)a3;
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

- (void)addMetricHandoffReason:(int64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v4 = [(RTMetric *)self metrics];
  [v4 setObject:v5 forKeyedSubscript:@"handoffReason"];
}

- (void)addMetricErrorCode:(int64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  v4 = [(RTMetric *)self metrics];
  [v4 setObject:v5 forKeyedSubscript:@"errorCodeForDomain"];
}

- (void)addMetricErrorDomain:(id)a3
{
  v4 = a3;
  v5 = [(RTMetric *)self metrics];
  [v5 setObject:v4 forKeyedSubscript:@"errorDomain"];
}

- (void)addMetricForLatencyEligibilityChecks:(double)a3
{
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:round(a3)];
  v8 = [v5 binForNumber:v6 bins:&unk_2845A09E0];

  v7 = [(RTMetric *)self metrics];
  [v7 setObject:v8 forKeyedSubscript:@"latencyEligibilityChecks"];
}

- (void)addMetricForLatencyFetchActiveSessionDetailsCK:(double)a3
{
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:round(a3)];
  v8 = [v5 binForNumber:v6 bins:&unk_2845A09F8];

  v7 = [(RTMetric *)self metrics];
  [v7 setObject:v8 forKeyedSubscript:@"latencyFetchActiveSessionDetailsCK"];
}

- (void)addMetricForLatencyHandoffCriteria:(double)a3
{
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:round(a3)];
  v8 = [v5 binForNumber:v6 bins:&unk_2845A0A10];

  v7 = [(RTMetric *)self metrics];
  [v7 setObject:v8 forKeyedSubscript:@"latencyHandoffCriteria"];
}

- (void)addMetricForLatencyHandoffEndToEnd:(double)a3
{
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:round(a3)];
  v8 = [v5 binForNumber:v6 bins:&unk_2845A0A28];

  v7 = [(RTMetric *)self metrics];
  [v7 setObject:v8 forKeyedSubscript:@"latencyHandoffEndToEnd"];
}

- (void)addMetricForLatencyWriteActiveSessionDetailsCK:(double)a3
{
  v5 = objc_opt_class();
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:round(a3)];
  v8 = [v5 binForNumber:v6 bins:&unk_2845A0A40];

  v7 = [(RTMetric *)self metrics];
  [v7 setObject:v8 forKeyedSubscript:@"latencyWriteActiveSessionDetailsCK"];
}

- (void)addMetricSucceeded:(BOOL)a3
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  v4 = [(RTMetric *)self metrics];
  [v4 setObject:v5 forKeyedSubscript:@"succeeded"];
}

- (void)resetMetrics
{
  v3 = [(RTMetric *)self metrics];
  [v3 setObject:&unk_28459C510 forKeyedSubscript:@"handoffReason"];

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