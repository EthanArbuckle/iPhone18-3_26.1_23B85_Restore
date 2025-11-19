@interface PPSDataIngesterRegistry
+ (id)_stringForFilepath:(id)a3 requestType:(int64_t)a4;
+ (id)dataIngesterForFilepath:(id)a3 requestType:(int64_t)a4;
+ (id)sharedInstance;
+ (void)releaseDataIngesterForFilepath:(id)a3 requestType:(int64_t)a4;
- (PPSDataIngesterRegistry)init;
@end

@implementation PPSDataIngesterRegistry

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PPSDataIngesterRegistry_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

+ (id)dataIngesterForFilepath:(id)a3 requestType:(int64_t)a4
{
  v5 = a3;
  v6 = [objc_opt_class() _stringForFilepath:v5 requestType:a4];
  v7 = [objc_opt_class() sharedInstance];
  v8 = [v7 dataIngesters];
  v9 = [v8 objectForKey:v6];

  if (!v9)
  {
    if (a4 > 2)
    {
      v11 = PPSReaderLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PPSDataIngesterRegistry dataIngesterForFilepath:a4 requestType:v11];
      }

      v10 = 0;
    }

    else
    {
      v10 = objc_opt_class();
    }

    v9 = [[v10 alloc] initWithFilepath:v5];
    if (v6)
    {
      v12 = [v7 dataIngesters];
      [v12 setObject:v9 forKeyedSubscript:v6];
    }
  }

  return v9;
}

+ (void)releaseDataIngesterForFilepath:(id)a3 requestType:(int64_t)a4
{
  if (a3)
  {
    v5 = a3;
    v8 = [objc_opt_class() _stringForFilepath:v5 requestType:a4];

    v6 = [objc_opt_class() sharedInstance];
    v7 = [v6 dataIngesters];
    [v7 removeObjectForKey:v8];
  }
}

+ (id)_stringForFilepath:(id)a3 requestType:(int64_t)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [a3 path];
  v7 = [v5 stringWithFormat:@"%ld::%@", a4, v6];

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