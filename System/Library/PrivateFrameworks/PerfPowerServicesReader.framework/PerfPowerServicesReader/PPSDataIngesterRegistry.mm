@interface PPSDataIngesterRegistry
+ (id)_stringForFilepath:(id)filepath requestType:(int64_t)type;
+ (id)dataIngesterForFilepath:(id)filepath requestType:(int64_t)type;
+ (id)sharedInstance;
+ (void)releaseDataIngesterForFilepath:(id)filepath requestType:(int64_t)type;
- (PPSDataIngesterRegistry)init;
@end

@implementation PPSDataIngesterRegistry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PPSDataIngesterRegistry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_instance_0;

  return v2;
}

- (PPSDataIngesterRegistry)init
{
  v6.receiver = self;
  v6.super_class = PPSDataIngesterRegistry;
  v2 = [(PPSDataIngesterRegistry *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dataIngesters = v2->_dataIngesters;
    v2->_dataIngesters = v3;
  }

  return v2;
}

uint64_t __41__PPSDataIngesterRegistry_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  objc_opt_class();
  sharedInstance_instance_0 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (id)dataIngesterForFilepath:(id)filepath requestType:(int64_t)type
{
  filepathCopy = filepath;
  v6 = [objc_opt_class() _stringForFilepath:filepathCopy requestType:type];
  sharedInstance = [objc_opt_class() sharedInstance];
  dataIngesters = [sharedInstance dataIngesters];
  v9 = [dataIngesters objectForKey:v6];

  if (!v9)
  {
    if (type > 2)
    {
      v11 = PPSReaderLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PPSDataIngesterRegistry dataIngesterForFilepath:type requestType:v11];
      }

      v10 = 0;
    }

    else
    {
      v10 = objc_opt_class();
    }

    v9 = [[v10 alloc] initWithFilepath:filepathCopy];
    if (v6)
    {
      dataIngesters2 = [sharedInstance dataIngesters];
      [dataIngesters2 setObject:v9 forKeyedSubscript:v6];
    }
  }

  return v9;
}

+ (void)releaseDataIngesterForFilepath:(id)filepath requestType:(int64_t)type
{
  if (filepath)
  {
    filepathCopy = filepath;
    v8 = [objc_opt_class() _stringForFilepath:filepathCopy requestType:type];

    sharedInstance = [objc_opt_class() sharedInstance];
    dataIngesters = [sharedInstance dataIngesters];
    [dataIngesters removeObjectForKey:v8];
  }
}

+ (id)_stringForFilepath:(id)filepath requestType:(int64_t)type
{
  v5 = MEMORY[0x277CCACA8];
  path = [filepath path];
  v7 = [v5 stringWithFormat:@"%ld::%@", type, path];

  return v7;
}

+ (void)dataIngesterForFilepath:(uint64_t)a1 requestType:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_25E225000, a2, OS_LOG_TYPE_DEBUG, "Invalid ingester type: %ld.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end