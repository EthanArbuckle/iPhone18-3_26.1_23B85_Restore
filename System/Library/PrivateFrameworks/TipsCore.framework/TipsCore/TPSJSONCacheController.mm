@interface TPSJSONCacheController
+ (id)sharedInstance;
- (BOOL)isURLValid:(id)valid;
- (id)formattedDataWithData:(id)data;
- (id)formattedDataWithFileURL:(id)l;
- (id)newDataCache;
- (void)formattedDataWithFileURL:(id)l completionHandler:(id)handler;
@end

@implementation TPSJSONCacheController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_0 != -1)
  {
    +[TPSJSONCacheController sharedInstance];
  }

  v3 = sharedInstance_gTPSJSONCacheController;

  return v3;
}

uint64_t __40__TPSJSONCacheController_sharedInstance__block_invoke()
{
  v0 = [(TPSDataCacheController *)[TPSJSONCacheController alloc] initWithIdentifier:@"TPSJSONCacheIdentifier" directoryName:@"JSON" maxCacheSize:0x800000 URLSessionDataType:1];
  v1 = sharedInstance_gTPSJSONCacheController;
  sharedInstance_gTPSJSONCacheController = v0;

  v2 = sharedInstance_gTPSJSONCacheController;

  return [v2 setBackgroundOriginUpdate:1];
}

- (id)newDataCache
{
  v2 = objc_alloc_init(TPSDataCache);
  [(TPSDataCache *)v2 setCacheType:0];
  [(TPSDataCache *)v2 setMaxAge:108000];
  return v2;
}

- (id)formattedDataWithFileURL:(id)l
{
  v4 = MEMORY[0x1E695DEF0];
  path = [l path];
  v6 = [v4 dataWithContentsOfFile:path];

  v7 = [(TPSJSONCacheController *)self formattedDataWithData:v6];

  return v7;
}

- (id)formattedDataWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v10 = 0;
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:1 error:&v10];
    v5 = v10;
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
      v7 = +[TPSLogger data];
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        if (v8)
        {
          [(TPSJSONCacheController *)v5 formattedDataWithData:v6, v7];
        }
      }

      else if (v8)
      {
        [(TPSJSONCacheController *)v5 formattedDataWithData:v7];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isURLValid:(id)valid
{
  v3 = MEMORY[0x1E696AC08];
  validCopy = valid;
  defaultManager = [v3 defaultManager];
  path = [validCopy path];

  LOBYTE(validCopy) = [defaultManager fileExistsAtPath:path];
  return validCopy;
}

- (void)formattedDataWithFileURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if ([(TPSJSONCacheController *)self isURLValid:lCopy])
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__TPSJSONCacheController_formattedDataWithFileURL_completionHandler___block_invoke;
    block[3] = &unk_1E81017C0;
    v10 = lCopy;
    selfCopy = self;
    v12 = handlerCopy;
    dispatch_async(v8, block);
  }
}

void __69__TPSJSONCacheController_formattedDataWithFileURL_completionHandler___block_invoke(id *a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  v3 = [a1[4] path];
  v4 = [v2 initWithContentsOfFile:v3];

  v5 = [a1[5] formattedDataWithData:v4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__TPSJSONCacheController_formattedDataWithFileURL_completionHandler___block_invoke_2;
  block[3] = &unk_1E8101798;
  v6 = a1[6];
  v11 = v4;
  v12 = v6;
  v10 = v5;
  v7 = v4;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)formattedDataWithData:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1C00A7000, log, OS_LOG_TYPE_DEBUG, "Invalid json data %@, error string %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)formattedDataWithData:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "Invalid json data %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end