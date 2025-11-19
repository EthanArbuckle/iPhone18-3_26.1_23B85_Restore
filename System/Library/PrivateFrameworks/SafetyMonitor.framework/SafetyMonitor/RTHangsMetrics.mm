@interface RTHangsMetrics
- (RTHangsMetrics)init;
- (void)submitToCoreAnalytics:(id)a3 type:(int64_t)a4 duration:(double)a5;
@end

@implementation RTHangsMetrics

- (RTHangsMetrics)init
{
  v3.receiver = self;
  v3.super_class = RTHangsMetrics;
  return [(RTHangsMetrics *)&v3 init];
}

- (void)submitToCoreAnalytics:(id)a3 type:(int64_t)a4 duration:(double)a5
{
  v8 = MEMORY[0x277CCACA8];
  label = dispatch_queue_get_label(0);
  v10 = a3;
  v11 = [v8 stringWithCString:label encoding:4];
  v12 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"- "];
  v13 = [v11 componentsSeparatedByCharactersInSet:v12];
  v20 = [v13 objectAtIndexedSubscript:0];

  v14 = objc_opt_new();
  [v14 setObject:v10 forKeyedSubscript:@"hungObject"];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v14 setObject:v15 forKeyedSubscript:@"hangType"];

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  [v14 setObject:v16 forKeyedSubscript:@"hangDuration"];

  [v14 setObject:v20 forKeyedSubscript:@"hungQueue"];
  v17 = objc_alloc(MEMORY[0x277CCACA8]);
  v18 = [v17 initWithCString:RTAnalyticsEventHangsMetrics encoding:1];
  log_analytics_submission(v18, v14);
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.%@", v18];
  AnalyticsSendEvent();
}

@end