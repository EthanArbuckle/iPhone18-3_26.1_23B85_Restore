@interface PUTimingManager
+ (id)defaultManager;
- (PUTimingManager)init;
- (id)stopwatchForKey:(id)a3;
@end

@implementation PUTimingManager

- (id)stopwatchForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_stopwatches objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = [PUVFXStopWatch alloc];
    v7 = __log();
    v8 = [(PUVFXStopWatch *)v6 initWithLog:v7];
    [(NSMutableDictionary *)self->_stopwatches setObject:v8 forKeyedSubscript:v4];
  }

  v9 = [(NSMutableDictionary *)self->_stopwatches objectForKeyedSubscript:v4];

  return v9;
}

- (PUTimingManager)init
{
  v6.receiver = self;
  v6.super_class = PUTimingManager;
  v2 = [(PUTimingManager *)&v6 init];
  v3 = objc_opt_new();
  stopwatches = v2->_stopwatches;
  v2->_stopwatches = v3;

  return v2;
}

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    dispatch_once(&defaultManager_onceToken, &__block_literal_global_615);
  }

  v3 = defaultManager___default;

  return v3;
}

uint64_t __33__PUTimingManager_defaultManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = defaultManager___default;
  defaultManager___default = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end