@interface SCMLPerformance
- (SCMLPerformance)initWithOptions:(id)a3;
- (void)run:(id)a3 block:(id)a4;
@end

@implementation SCMLPerformance

- (SCMLPerformance)initWithOptions:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SCMLPerformance;
  v5 = [(SCMLPerformance *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:SCMLTrackPerformance[0]];
    v7 = [v6 BOOLValue];
    v5->_computePerf = v7;
    if (v7)
    {
      v8 = [MEMORY[0x1E695DF90] dictionary];
      results = v5->_results;
      v5->_results = v8;
    }
  }

  return v5;
}

- (void)run:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SCMLPerformance *)self computePerf])
  {
    pc_session_create();
    v8 = [MEMORY[0x1E696AE30] processInfo];
    [v8 processIdentifier];
    pc_session_set_procpid();

    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_begin();
    v9 = [MEMORY[0x1E695DF00] date];
    if (v7)
    {
      v7[2](v7);
    }

    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:v9];
    v12 = v11;

    pc_session_end();
    v13 = [[SCMLPerformanceResult alloc] initWithName:v6];
    pc_session_get_value();
    pc_session_get_value();
    pc_session_get_value();
    pc_session_get_value();
    pc_session_get_value();
    pc_session_get_value();
    pc_session_destroy();
    v14 = vdupq_n_s64(0x3F50000000000000uLL);
    *&v13->maxpeak = vmulq_f64(*&v13->maxpeak, v14);
    *&v13->recentpeak = vmulq_f64(*&v13->recentpeak, v14);
    v13->cpuTime = v13->cpuTime / 1000000.0;
    v13->timeInterval = v12;
    v15 = [(SCMLPerformance *)self results];
    v16 = [v15 objectForKeyedSubscript:v6];

    if (!v16)
    {
      v17 = [MEMORY[0x1E695DF70] array];
      v18 = [(SCMLPerformance *)self results];
      [v18 setObject:v17 forKeyedSubscript:v6];
    }

    v19 = [(SCMLPerformance *)self results];
    v20 = [v19 objectForKeyedSubscript:v6];
    v21 = [(SCMLPerformanceResult *)v13 dict];
    [v20 addObject:v21];
  }

  else if (v7)
  {
    v7[2](v7);
  }
}

@end