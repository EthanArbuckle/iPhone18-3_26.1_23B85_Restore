@interface TPSStringCacheController
+ (id)sharedInstance;
- (BOOL)isURLValid:(id)valid;
- (id)formattedDataWithData:(id)data;
- (id)formattedDataWithFileURL:(id)l;
- (id)newDataCache;
- (void)formattedDataWithFileURL:(id)l completionHandler:(id)handler;
@end

@implementation TPSStringCacheController

+ (id)sharedInstance
{
  if (sharedInstance_predicate_5 != -1)
  {
    +[TPSStringCacheController sharedInstance];
  }

  v3 = sharedInstance_gTPSStringCacheController;

  return v3;
}

uint64_t __42__TPSStringCacheController_sharedInstance__block_invoke()
{
  v0 = [(TPSDataCacheController *)[TPSStringCacheController alloc] initWithIdentifier:@"TPSStringCacheIdentifier" directoryName:@"String" maxCacheSize:5242880 URLSessionDataType:3];
  v1 = sharedInstance_gTPSStringCacheController;
  sharedInstance_gTPSStringCacheController = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)newDataCache
{
  v2 = objc_alloc_init(TPSDataCache);
  [(TPSDataCache *)v2 setCacheType:1];
  [(TPSDataCache *)v2 setMaxAge:21600];
  return v2;
}

- (id)formattedDataWithFileURL:(id)l
{
  v4 = MEMORY[0x1E695DEF0];
  path = [l path];
  v6 = [v4 dataWithContentsOfFile:path];

  v7 = [(TPSStringCacheController *)self formattedDataWithData:v6];

  return v7;
}

- (id)formattedDataWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:4];
    if (v4)
    {
      goto LABEL_7;
    }

    v5 = +[TPSLogger data];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(TPSStringCacheController *)dataCopy formattedDataWithData:v5];
    }
  }

  v4 = 0;
LABEL_7:

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
  if ([(TPSStringCacheController *)self isURLValid:lCopy])
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __71__TPSStringCacheController_formattedDataWithFileURL_completionHandler___block_invoke;
    block[3] = &unk_1E81017C0;
    v10 = lCopy;
    selfCopy = self;
    v12 = handlerCopy;
    dispatch_async(v8, block);
  }
}

void __71__TPSStringCacheController_formattedDataWithFileURL_completionHandler___block_invoke(id *a1)
{
  v2 = objc_alloc(MEMORY[0x1E695DEF0]);
  v3 = [a1[4] path];
  v4 = [v2 initWithContentsOfFile:v3];

  v5 = [a1[5] formattedDataWithData:v4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__TPSStringCacheController_formattedDataWithFileURL_completionHandler___block_invoke_2;
  block[3] = &unk_1E8101798;
  v6 = a1[6];
  v11 = v4;
  v12 = v6;
  v10 = v5;
  v7 = v4;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)formattedDataWithData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_DEBUG, "Invalid string data %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end