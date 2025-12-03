@interface SCMLPerformance
- (SCMLPerformance)initWithOptions:(id)options;
- (void)run:(id)run block:(id)block;
@end

@implementation SCMLPerformance

- (SCMLPerformance)initWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = SCMLPerformance;
  v5 = [(SCMLPerformance *)&v11 init];
  if (v5)
  {
    v6 = [optionsCopy objectForKeyedSubscript:SCMLTrackPerformance[0]];
    bOOLValue = [v6 BOOLValue];
    v5->_computePerf = bOOLValue;
    if (bOOLValue)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      results = v5->_results;
      v5->_results = dictionary;
    }
  }

  return v5;
}

- (void)run:(id)run block:(id)block
{
  runCopy = run;
  blockCopy = block;
  if ([(SCMLPerformance *)self computePerf])
  {
    pc_session_create();
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo processIdentifier];
    pc_session_set_procpid();

    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_add_metric();
    pc_session_begin();
    date = [MEMORY[0x1E695DF00] date];
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    date2 = [MEMORY[0x1E695DF00] date];
    [date2 timeIntervalSinceDate:date];
    v12 = v11;

    pc_session_end();
    v13 = [[SCMLPerformanceResult alloc] initWithName:runCopy];
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
    results = [(SCMLPerformance *)self results];
    v16 = [results objectForKeyedSubscript:runCopy];

    if (!v16)
    {
      array = [MEMORY[0x1E695DF70] array];
      results2 = [(SCMLPerformance *)self results];
      [results2 setObject:array forKeyedSubscript:runCopy];
    }

    results3 = [(SCMLPerformance *)self results];
    v20 = [results3 objectForKeyedSubscript:runCopy];
    dict = [(SCMLPerformanceResult *)v13 dict];
    [v20 addObject:dict];
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }
}

@end