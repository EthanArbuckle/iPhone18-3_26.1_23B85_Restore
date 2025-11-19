@interface PLDTCostElement
+ (id)getCostElementInstance;
- (PLDTCostElement)init;
- (PLDTCostElement)initWithTime:(id)a3;
- (id)getCostUptoTime:(id)a3;
- (void)addEvent:(double)a3 atTime:(id)a4;
@end

@implementation PLDTCostElement

+ (id)getCostElementInstance
{
  if (getCostElementInstance_onceCostElement != -1)
  {
    +[PLDTCostElement getCostElementInstance];
  }

  v3 = getCostElementInstance_singletonCostElement;

  return v3;
}

uint64_t __41__PLDTCostElement_getCostElementInstance__block_invoke()
{
  v0 = objc_alloc_init(PLDTCostElement);
  getCostElementInstance_singletonCostElement = v0;

  return MEMORY[0x2821F96F8](v0);
}

- (PLDTCostElement)init
{
  v6.receiver = self;
  v6.super_class = PLDTCostElement;
  v2 = [(PLDTCostElement *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = _trackedProcesses;
    _trackedProcesses = v3;
  }

  return v2;
}

- (PLDTCostElement)initWithTime:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PLDTCostElement;
  v6 = [(PLDTCostElement *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_startDate, a3);
    objc_storeStrong(&v7->_costReturnedTillDate, a3);
    v7->_costAggregated = 0.0;
    v8 = objc_opt_new();
    v9 = _trackedProcesses;
    _trackedProcesses = v8;
  }

  return v7;
}

- (void)addEvent:(double)a3 atTime:(id)a4
{
  v7 = a4;
  objc_sync_enter(@"___Sync___");
  [(PLDTCostElement *)self costAggregated];
  [(PLDTCostElement *)self setCostAggregated:v6 + a3];
  if (a3 > 0.0)
  {
    [(PLDTCostElement *)self setLastOverheadStart:v7];
  }

  objc_sync_exit(@"___Sync___");
}

- (id)getCostUptoTime:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(PLDTCostElement *)self costReturnedTillDate];
  [v4 timeIntervalSinceDate:v6];
  v8 = v7;

  [v5 setObject:&unk_287146420 forKeyedSubscript:@"cost"];
  [v5 setObject:&unk_287146420 forKeyedSubscript:@"overhead"];
  if (v8 >= 0.0)
  {
    objc_sync_enter(@"___Sync___");
    if (v8 > 0.0)
    {
      [(PLDTCostElement *)self costAggregated];
      if (v9 > 0.0)
      {
        [(PLDTCostElement *)self costAggregated];
        v11 = [MEMORY[0x277CCABB0] numberWithDouble:{fmin(v10 / v8 * 0.0009765625 * 0.0009765625 * 500.0 + 500.0, 1000.0)}];
        [v5 setObject:v11 forKeyedSubscript:@"cost"];
      }
    }

    v12 = [(PLDTCostElement *)self lastOverheadStart];
    [v4 timeIntervalSinceDate:v12];
    v14 = v13;

    if (v14 < 5.0)
    {
      [v5 setObject:&unk_287146438 forKeyedSubscript:@"overhead"];
    }

    [(PLDTCostElement *)self setCostAggregated:0.0];
    objc_sync_exit(@"___Sync___");
  }

  [(PLDTCostElement *)self setCostReturnedTillDate:v4];

  return v5;
}

@end