@interface PPSMetricMonitorConfiguration
+ (id)defaultConfiguration;
+ (id)instrumentsConfiguration;
+ (id)tracingConfiguration:(double)configuration;
- (PPSMetricMonitorConfiguration)initWithCoder:(id)coder;
- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)mode updateInterval:(double)interval updateDelegate:(BOOL)delegate;
- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)mode updateInterval:(double)interval updateDelegate:(BOOL)delegate emitSignposts:(BOOL)signposts;
- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)mode updateInterval:(double)interval updateDelegate:(BOOL)delegate emitSignposts:(BOOL)signposts includeBackBoardUsage:(BOOL)usage emitTracingSignposts:(BOOL)tracingSignposts isHeadless:(BOOL)headless;
- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)mode updateInterval:(double)interval updateDelegate:(BOOL)delegate includeBackBoardUsage:(BOOL)usage emitTracingSignposts:(BOOL)signposts isHeadless:(BOOL)headless;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPSMetricMonitorConfiguration

+ (id)defaultConfiguration
{
  v2 = [[self alloc] initWithMode:0 updateInterval:1 updateDelegate:1 emitSignposts:0.2];

  return v2;
}

+ (id)tracingConfiguration:(double)configuration
{
  v3 = [[self alloc] initWithMode:0 updateInterval:0 updateDelegate:0 emitSignposts:0 includeBackBoardUsage:1 emitTracingSignposts:1 isHeadless:configuration];

  return v3;
}

+ (id)instrumentsConfiguration
{
  v2 = objc_opt_class();

  return [v2 defaultConfiguration];
}

- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)mode updateInterval:(double)interval updateDelegate:(BOOL)delegate emitSignposts:(BOOL)signposts
{
  v11.receiver = self;
  v11.super_class = PPSMetricMonitorConfiguration;
  result = [(PPSMetricMonitorConfiguration *)&v11 init];
  if (result)
  {
    result->_mode = mode;
    result->_updateInterval = interval;
    result->_updateDelegate = delegate;
    result->_emitSignposts = signposts;
    result->_includeBackBoardUsage = 0;
    *&result->_emitTracingSignposts = 0;
  }

  return result;
}

- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)mode updateInterval:(double)interval updateDelegate:(BOOL)delegate
{
  v9.receiver = self;
  v9.super_class = PPSMetricMonitorConfiguration;
  result = [(PPSMetricMonitorConfiguration *)&v9 init];
  if (result)
  {
    result->_mode = mode;
    result->_updateInterval = interval;
    result->_updateDelegate = delegate;
    *&result->_includeBackBoardUsage = 0;
  }

  return result;
}

- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)mode updateInterval:(double)interval updateDelegate:(BOOL)delegate emitSignposts:(BOOL)signposts includeBackBoardUsage:(BOOL)usage emitTracingSignposts:(BOOL)tracingSignposts isHeadless:(BOOL)headless
{
  v17.receiver = self;
  v17.super_class = PPSMetricMonitorConfiguration;
  result = [(PPSMetricMonitorConfiguration *)&v17 init];
  if (result)
  {
    result->_mode = mode;
    result->_updateInterval = interval;
    result->_updateDelegate = delegate;
    result->_includeBackBoardUsage = usage;
    result->_emitTracingSignposts = tracingSignposts;
    result->_isHeadless = headless;
    result->_emitSignposts = signposts;
  }

  return result;
}

- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)mode updateInterval:(double)interval updateDelegate:(BOOL)delegate includeBackBoardUsage:(BOOL)usage emitTracingSignposts:(BOOL)signposts isHeadless:(BOOL)headless
{
  v15.receiver = self;
  v15.super_class = PPSMetricMonitorConfiguration;
  result = [(PPSMetricMonitorConfiguration *)&v15 init];
  if (result)
  {
    result->_mode = mode;
    result->_updateInterval = interval;
    result->_updateDelegate = delegate;
    result->_includeBackBoardUsage = usage;
    result->_emitTracingSignposts = signposts;
    result->_isHeadless = headless;
    result->_emitSignposts = 0;
  }

  return result;
}

- (PPSMetricMonitorConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PPSMetricMonitorConfiguration;
  v5 = [(PPSMetricMonitorConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    v5->_mode = [v6 intValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateInterval"];
    [v7 doubleValue];
    v5->_updateInterval = v8;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateDelegate"];
    v5->_updateDelegate = [v9 BOOLValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"includeBackBoardUsage"];
    v5->_includeBackBoardUsage = [v10 BOOLValue];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isHeadless"];
    v5->_isHeadless = [v11 BOOLValue];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emitTracingSignpost"];
    v5->_emitTracingSignposts = [v12 BOOLValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"emitSignposts"];
    v5->_emitSignposts = [v13 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithInteger:{-[PPSMetricMonitorConfiguration mode](self, "mode")}];
  [coderCopy encodeObject:v6 forKey:@"mode"];

  v7 = MEMORY[0x277CCABB0];
  [(PPSMetricMonitorConfiguration *)self updateInterval];
  v8 = [v7 numberWithDouble:?];
  [coderCopy encodeObject:v8 forKey:@"updateInterval"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricMonitorConfiguration updateDelegate](self, "updateDelegate")}];
  [coderCopy encodeObject:v9 forKey:@"updateDelegate"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricMonitorConfiguration includeBackBoardUsage](self, "includeBackBoardUsage")}];
  [coderCopy encodeObject:v10 forKey:@"includeBackBoardUsage"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricMonitorConfiguration emitTracingSignposts](self, "emitTracingSignposts")}];
  [coderCopy encodeObject:v11 forKey:@"emitTracingSignpost"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricMonitorConfiguration isHeadless](self, "isHeadless")}];
  [coderCopy encodeObject:v12 forKey:@"isHeadless"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricMonitorConfiguration emitSignposts](self, "emitSignposts")}];
  [coderCopy encodeObject:v13 forKey:@"emitSignposts"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  mode = [(PPSMetricMonitorConfiguration *)self mode];
  [(PPSMetricMonitorConfiguration *)self updateInterval];
  return [v3 stringWithFormat:@"PPSMetricMonitorConfig(mode: %ld updateInterval: %f updateDelegate: %d includeBackBoardUsage: %d isHeadless: %d emitTracingSignposts: %d emitSignposts: %d)"], mode, v5, -[PPSMetricMonitorConfiguration updateDelegate](self, "updateDelegate"), -[PPSMetricMonitorConfiguration includeBackBoardUsage](self, "includeBackBoardUsage"), -[PPSMetricMonitorConfiguration isHeadless](self, "isHeadless"), -[PPSMetricMonitorConfiguration emitTracingSignposts](self, "emitTracingSignposts"), -[PPSMetricMonitorConfiguration emitSignposts](self, "emitSignposts"));
}

@end