@interface PPSMetricMonitorConfiguration
+ (id)defaultConfiguration;
+ (id)instrumentsConfiguration;
+ (id)tracingConfiguration:(double)a3;
- (PPSMetricMonitorConfiguration)initWithCoder:(id)a3;
- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)a3 updateInterval:(double)a4 updateDelegate:(BOOL)a5;
- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)a3 updateInterval:(double)a4 updateDelegate:(BOOL)a5 emitSignposts:(BOOL)a6;
- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)a3 updateInterval:(double)a4 updateDelegate:(BOOL)a5 emitSignposts:(BOOL)a6 includeBackBoardUsage:(BOOL)a7 emitTracingSignposts:(BOOL)a8 isHeadless:(BOOL)a9;
- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)a3 updateInterval:(double)a4 updateDelegate:(BOOL)a5 includeBackBoardUsage:(BOOL)a6 emitTracingSignposts:(BOOL)a7 isHeadless:(BOOL)a8;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPSMetricMonitorConfiguration

+ (id)defaultConfiguration
{
  v2 = [[a1 alloc] initWithMode:0 updateInterval:1 updateDelegate:1 emitSignposts:0.2];

  return v2;
}

+ (id)tracingConfiguration:(double)a3
{
  v3 = [[a1 alloc] initWithMode:0 updateInterval:0 updateDelegate:0 emitSignposts:0 includeBackBoardUsage:1 emitTracingSignposts:1 isHeadless:a3];

  return v3;
}

+ (id)instrumentsConfiguration
{
  v2 = objc_opt_class();

  return [v2 defaultConfiguration];
}

- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)a3 updateInterval:(double)a4 updateDelegate:(BOOL)a5 emitSignposts:(BOOL)a6
{
  v11.receiver = self;
  v11.super_class = PPSMetricMonitorConfiguration;
  result = [(PPSMetricMonitorConfiguration *)&v11 init];
  if (result)
  {
    result->_mode = a3;
    result->_updateInterval = a4;
    result->_updateDelegate = a5;
    result->_emitSignposts = a6;
    result->_includeBackBoardUsage = 0;
    *&result->_emitTracingSignposts = 0;
  }

  return result;
}

- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)a3 updateInterval:(double)a4 updateDelegate:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = PPSMetricMonitorConfiguration;
  result = [(PPSMetricMonitorConfiguration *)&v9 init];
  if (result)
  {
    result->_mode = a3;
    result->_updateInterval = a4;
    result->_updateDelegate = a5;
    *&result->_includeBackBoardUsage = 0;
  }

  return result;
}

- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)a3 updateInterval:(double)a4 updateDelegate:(BOOL)a5 emitSignposts:(BOOL)a6 includeBackBoardUsage:(BOOL)a7 emitTracingSignposts:(BOOL)a8 isHeadless:(BOOL)a9
{
  v17.receiver = self;
  v17.super_class = PPSMetricMonitorConfiguration;
  result = [(PPSMetricMonitorConfiguration *)&v17 init];
  if (result)
  {
    result->_mode = a3;
    result->_updateInterval = a4;
    result->_updateDelegate = a5;
    result->_includeBackBoardUsage = a7;
    result->_emitTracingSignposts = a8;
    result->_isHeadless = a9;
    result->_emitSignposts = a6;
  }

  return result;
}

- (PPSMetricMonitorConfiguration)initWithMode:(int64_t)a3 updateInterval:(double)a4 updateDelegate:(BOOL)a5 includeBackBoardUsage:(BOOL)a6 emitTracingSignposts:(BOOL)a7 isHeadless:(BOOL)a8
{
  v15.receiver = self;
  v15.super_class = PPSMetricMonitorConfiguration;
  result = [(PPSMetricMonitorConfiguration *)&v15 init];
  if (result)
  {
    result->_mode = a3;
    result->_updateInterval = a4;
    result->_updateDelegate = a5;
    result->_includeBackBoardUsage = a6;
    result->_emitTracingSignposts = a7;
    result->_isHeadless = a8;
    result->_emitSignposts = 0;
  }

  return result;
}

- (PPSMetricMonitorConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PPSMetricMonitorConfiguration;
  v5 = [(PPSMetricMonitorConfiguration *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
    v5->_mode = [v6 intValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateInterval"];
    [v7 doubleValue];
    v5->_updateInterval = v8;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateDelegate"];
    v5->_updateDelegate = [v9 BOOLValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includeBackBoardUsage"];
    v5->_includeBackBoardUsage = [v10 BOOLValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isHeadless"];
    v5->_isHeadless = [v11 BOOLValue];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emitTracingSignpost"];
    v5->_emitTracingSignposts = [v12 BOOLValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"emitSignposts"];
    v5->_emitSignposts = [v13 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithInteger:{-[PPSMetricMonitorConfiguration mode](self, "mode")}];
  [v5 encodeObject:v6 forKey:@"mode"];

  v7 = MEMORY[0x277CCABB0];
  [(PPSMetricMonitorConfiguration *)self updateInterval];
  v8 = [v7 numberWithDouble:?];
  [v5 encodeObject:v8 forKey:@"updateInterval"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricMonitorConfiguration updateDelegate](self, "updateDelegate")}];
  [v5 encodeObject:v9 forKey:@"updateDelegate"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricMonitorConfiguration includeBackBoardUsage](self, "includeBackBoardUsage")}];
  [v5 encodeObject:v10 forKey:@"includeBackBoardUsage"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricMonitorConfiguration emitTracingSignposts](self, "emitTracingSignposts")}];
  [v5 encodeObject:v11 forKey:@"emitTracingSignpost"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricMonitorConfiguration isHeadless](self, "isHeadless")}];
  [v5 encodeObject:v12 forKey:@"isHeadless"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[PPSMetricMonitorConfiguration emitSignposts](self, "emitSignposts")}];
  [v5 encodeObject:v13 forKey:@"emitSignposts"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PPSMetricMonitorConfiguration *)self mode];
  [(PPSMetricMonitorConfiguration *)self updateInterval];
  return [v3 stringWithFormat:@"PPSMetricMonitorConfig(mode: %ld updateInterval: %f updateDelegate: %d includeBackBoardUsage: %d isHeadless: %d emitTracingSignposts: %d emitSignposts: %d)"], v4, v5, -[PPSMetricMonitorConfiguration updateDelegate](self, "updateDelegate"), -[PPSMetricMonitorConfiguration includeBackBoardUsage](self, "includeBackBoardUsage"), -[PPSMetricMonitorConfiguration isHeadless](self, "isHeadless"), -[PPSMetricMonitorConfiguration emitTracingSignposts](self, "emitTracingSignposts"), -[PPSMetricMonitorConfiguration emitSignposts](self, "emitSignposts"));
}

@end