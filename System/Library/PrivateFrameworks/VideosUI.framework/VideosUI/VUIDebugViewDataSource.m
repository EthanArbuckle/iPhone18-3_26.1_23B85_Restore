@interface VUIDebugViewDataSource
- (VUIDebugViewDataSource)init;
- (id)_createDefaultsDataSource;
- (id)_createMetricsDataSource;
@end

@implementation VUIDebugViewDataSource

- (VUIDebugViewDataSource)init
{
  v9.receiver = self;
  v9.super_class = VUIDebugViewDataSource;
  v2 = [(VUIDebugViewDataSource *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(VUIDebugViewDataSource *)v2 _createMetricsDataSource];
    metricsDataSource = v3->_metricsDataSource;
    v3->_metricsDataSource = v4;

    v6 = [(VUIDebugViewDataSource *)v3 _createDefaultsDataSource];
    defaultsDataSource = v3->_defaultsDataSource;
    v3->_defaultsDataSource = v6;
  }

  return v3;
}

- (id)_createDefaultsDataSource
{
  v2 = objc_opt_new();
  v3 = [VUIDebugViewDefaults alloc];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [(VUIDebugViewDefaults *)v3 initWithTitle:@"Enable Debug UI" subtitle:0 domain:v5 defaultName:*MEMORY[0x1E69DF820] BOOLType:1];
  [v2 addObject:v6];

  v7 = [VUIDebugViewDefaults alloc];
  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 bundleIdentifier];
  v10 = [(VUIDebugViewDefaults *)v7 initWithTitle:@"Stage Demo" subtitle:0 domain:v9 defaultName:*MEMORY[0x1E69DF828] BOOLType:1];
  [v2 addObject:v10];

  v11 = [[VUIDebugViewDefaults alloc] initWithTitle:@"Ignore HTTP Cache" subtitle:0 domain:@"com.apple.ITMLKit" defaultName:@"IgnoreHTTPCache" BOOLType:1];
  [v2 addObject:v11];

  v12 = [[VUIDebugViewDefaults alloc] initWithTitle:@"Print Document XML" subtitle:0 domain:@"com.apple.ITMLKit" defaultName:@"LogDocumentXML" BOOLType:1];
  [v2 addObject:v12];

  v13 = [[VUIDebugViewDefaults alloc] initWithTitle:@"JS Console Logging" subtitle:0 domain:@"com.apple.ITMLKit" defaultName:@"LogJSConsole" BOOLType:1];
  [v2 addObject:v13];

  v14 = [[VUIDebugViewDefaults alloc] initWithTitle:@"Purge Images on Launch" subtitle:0 domain:@"com.apple.TVMLKit" defaultName:@"PurgeImageCache" BOOLType:1];
  [v2 addObject:v14];

  v15 = [[VUIDebugViewDefaults alloc] initWithTitle:@"Page Perf UI" subtitle:0 domain:@"com.apple.TVMLKit" defaultName:@"PagePerformanceUIEnabled" BOOLType:1];
  [v2 addObject:v15];

  v16 = [[VUIDebugViewDefaults alloc] initWithTitle:@"UI Animation Coefficient" subtitle:@"Values (0 domain:2 defaultName:5 BOOLType:10, 25)", @"com.apple.UIKit", @"UIAnimationDragCoefficient", 0];
  [v2 addObject:v16];
  v17 = [v2 copy];

  return v17;
}

- (id)_createMetricsDataSource
{
  v2 = objc_opt_new();
  v3 = [VUIDebugViewDefaults alloc];
  v4 = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [(VUIDebugViewDefaults *)v3 initWithTitle:@"Show logging in Console" subtitle:0 domain:v5 defaultName:*MEMORY[0x1E69DF840] BOOLType:1];
  [v2 addObject:v6];

  v7 = [VUIDebugViewDefaults alloc];
  v8 = [MEMORY[0x1E696AAE8] mainBundle];
  v9 = [v8 bundleIdentifier];
  v10 = [(VUIDebugViewDefaults *)v7 initWithTitle:@"Show expanded logging in Console" subtitle:0 domain:v9 defaultName:*MEMORY[0x1E69DF838] BOOLType:1];
  [v2 addObject:v10];

  v11 = [VUIDebugViewDefaults alloc];
  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 bundleIdentifier];
  v14 = [(VUIDebugViewDefaults *)v11 initWithTitle:@"Metrics Expanded Click Logging" subtitle:0 domain:v13 defaultName:*MEMORY[0x1E69DF830] BOOLType:1];
  [v2 addObject:v14];

  v15 = [VUIDebugViewDefaults alloc];
  v16 = [MEMORY[0x1E696AAE8] mainBundle];
  v17 = [v16 bundleIdentifier];
  v18 = [(VUIDebugViewDefaults *)v15 initWithTitle:@"Log pageRender events" subtitle:0 domain:v17 defaultName:*MEMORY[0x1E69DF848] BOOLType:1];
  [v2 addObject:v18];

  v19 = [v2 copy];

  return v19;
}

@end