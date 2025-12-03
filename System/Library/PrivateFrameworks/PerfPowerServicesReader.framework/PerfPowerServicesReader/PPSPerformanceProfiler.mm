@interface PPSPerformanceProfiler
+ (id)sharedInstance;
- (PPSPerformanceProfiler)init;
- (id)getProfilingStatsForQuery;
- (void)endProfilingForPhase:(id)phase;
- (void)startProfilingForPhase:(id)phase;
@end

@implementation PPSPerformanceProfiler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[PPSPerformanceProfiler sharedInstance];
  }

  v3 = sharedInstance_perfProfiler;

  return v3;
}

uint64_t __40__PPSPerformanceProfiler_sharedInstance__block_invoke()
{
  sharedInstance_perfProfiler = objc_alloc_init(PPSPerformanceProfiler);

  return MEMORY[0x2821F96F8]();
}

- (PPSPerformanceProfiler)init
{
  v8.receiver = self;
  v8.super_class = PPSPerformanceProfiler;
  v2 = [(PPSPerformanceProfiler *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    start_times = v2->_start_times;
    v2->_start_times = v3;

    v5 = objc_opt_new();
    profilingStats = v2->_profilingStats;
    v2->_profilingStats = v5;
  }

  return v2;
}

- (void)startProfilingForPhase:(id)phase
{
  phaseCopy = phase;
  v4 = [(NSMutableDictionary *)self->_start_times objectForKeyedSubscript:?];

  if (!v4)
  {
    v5 = MEMORY[0x277CCABB0];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
    [(NSMutableDictionary *)self->_start_times setObject:v7 forKeyedSubscript:phaseCopy];
  }
}

- (void)endProfilingForPhase:(id)phase
{
  phaseCopy = phase;
  v4 = [(NSMutableDictionary *)self->_start_times objectForKeyedSubscript:?];

  if (v4)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v7 = v6;
    v8 = [(NSMutableDictionary *)self->_start_times objectForKeyedSubscript:phaseCopy];
    [v8 doubleValue];
    v10 = v7 - v9;

    v11 = [MEMORY[0x277CCABB0] numberWithDouble:round(v10 * 1000.0) / 1000.0];
    [(NSMutableDictionary *)self->_profilingStats setObject:v11 forKeyedSubscript:phaseCopy];
  }
}

- (id)getProfilingStatsForQuery
{
  v3 = [(NSMutableDictionary *)self->_profilingStats copy];
  NSLog(&cfstr_PerformancePro.isa, v3);
  [(NSMutableDictionary *)self->_start_times removeAllObjects];
  [(NSMutableDictionary *)self->_profilingStats removeAllObjects];

  return v3;
}

@end