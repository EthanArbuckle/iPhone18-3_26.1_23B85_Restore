@interface TBCoreDataStoreDescriptor
+ (id)clientStoreDescriptor;
+ (id)defaultModelURL;
+ (id)defaultPersistentStoreURLWithDirectory:(id)directory;
+ (id)defaultStoresDirectoryURL;
+ (id)directStoreDescriptor;
+ (id)serverStoreDescriptor;
+ (id)tempStoreDescriptor;
+ (id)tempStoresDirectoryURL;
- (TBCoreDataStoreDescriptor)initWithType:(unint64_t)type storeURL:(id)l modelURL:(id)rL;
@end

@implementation TBCoreDataStoreDescriptor

+ (id)directStoreDescriptor
{
  defaultStoresDirectoryURL = [objc_opt_class() defaultStoresDirectoryURL];
  v4 = [objc_opt_class() defaultPersistentStoreURLWithDirectory:defaultStoresDirectoryURL];
  v5 = [self alloc];
  defaultModelURL = [objc_opt_class() defaultModelURL];
  v7 = [v5 initWithType:1 storeURL:v4 modelURL:defaultModelURL];

  return v7;
}

+ (id)defaultStoresDirectoryURL
{
  wifiCacheDirectoryPath = [MEMORY[0x277CCAA00] wifiCacheDirectoryPath];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:wifiCacheDirectoryPath isDirectory:1];

  return v3;
}

+ (id)defaultModelURL
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"ThreeBars" withExtension:@"momd"];

  return v3;
}

+ (id)clientStoreDescriptor
{
  defaultStoresDirectoryURL = [objc_opt_class() defaultStoresDirectoryURL];
  v4 = [objc_opt_class() defaultPersistentStoreURLWithDirectory:defaultStoresDirectoryURL];
  v5 = [self alloc];
  defaultModelURL = [objc_opt_class() defaultModelURL];
  v7 = [v5 initWithType:2 storeURL:v4 modelURL:defaultModelURL];

  return v7;
}

+ (id)serverStoreDescriptor
{
  defaultStoresDirectoryURL = [objc_opt_class() defaultStoresDirectoryURL];
  v4 = [objc_opt_class() defaultPersistentStoreURLWithDirectory:defaultStoresDirectoryURL];
  v5 = [self alloc];
  defaultModelURL = [objc_opt_class() defaultModelURL];
  v7 = [v5 initWithType:0 storeURL:v4 modelURL:defaultModelURL];

  return v7;
}

+ (id)tempStoreDescriptor
{
  tempStoresDirectoryURL = [objc_opt_class() tempStoresDirectoryURL];
  v4 = [objc_opt_class() defaultPersistentStoreURLWithDirectory:tempStoresDirectoryURL];
  v5 = [self alloc];
  defaultModelURL = [objc_opt_class() defaultModelURL];
  v7 = [v5 initWithType:3 storeURL:v4 modelURL:defaultModelURL];

  return v7;
}

- (TBCoreDataStoreDescriptor)initWithType:(unint64_t)type storeURL:(id)l modelURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v21.receiver = self;
  v21.super_class = TBCoreDataStoreDescriptor;
  v11 = [(TBCoreDataStoreDescriptor *)&v21 init];
  v11->_type = type;
  objc_storeStrong(&v11->_storeURL, l);
  objc_storeStrong(&v11->_modelURL, rL);
  v12 = [MEMORY[0x277CBE4E0] persistentStoreDescriptionWithURL:v11->_storeURL];
  v13 = v12;
  type = v11->_type;
  if (type <= 3)
  {
    [v12 setType:**(&unk_2789C81D8 + type)];
  }

  [v13 setConfiguration:@"Default"];
  [v13 setShouldInferMappingModelAutomatically:1];
  [v13 setShouldMigrateStoreAutomatically:1];
  [v13 setShouldAddStoreAsynchronously:0];
  v15 = *MEMORY[0x277CBE340];
  [v13 setOption:@"com.apple.wifid.store.cache" forKey:*MEMORY[0x277CBE340]];
  v16 = *MEMORY[0x277CBE328];
  [v13 setOption:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CBE328]];
  objc_storeStrong(&v11->_storeDescription, v13);
  if (!v11->_type)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSDictionary *)v17 setObject:@"com.apple.wifid.store.cache" forKeyedSubscript:v15];
    v18 = MEMORY[0x277CBEC38];
    [(NSDictionary *)v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277CBE338]];
    [(NSDictionary *)v17 setObject:v18 forKeyedSubscript:v16];
    [(NSDictionary *)v17 setObject:v18 forKeyedSubscript:*MEMORY[0x277CBE268]];
    [(NSDictionary *)v17 setObject:*MEMORY[0x277CCA1B8] forKeyedSubscript:*MEMORY[0x277CBE240]];
    storeOptions = v11->_storeOptions;
    v11->_storeOptions = v17;
  }

  return v11;
}

+ (id)defaultPersistentStoreURLWithDirectory:(id)directory
{
  v3 = [directory URLByAppendingPathComponent:@"ThreeBars"];
  v4 = [v3 URLByAppendingPathExtension:@"sqlite"];

  return v4;
}

+ (id)tempStoresDirectoryURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = NSTemporaryDirectory();
  v4 = [v2 fileURLWithPath:v3];

  return v4;
}

@end