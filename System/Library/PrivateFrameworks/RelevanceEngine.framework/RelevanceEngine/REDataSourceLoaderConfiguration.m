@interface REDataSourceLoaderConfiguration
+ (id)sharedInstance;
- (BOOL)shouldLoadBundleClass:(Class)a3 forKey:(id)a4;
- (Class)desiredClassFromBundle:(id)a3 forKey:(id)a4;
@end

@implementation REDataSourceLoaderConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[REDataSourceLoaderConfiguration sharedInstance];
  }

  v3 = sharedInstance_Shared;

  return v3;
}

uint64_t __49__REDataSourceLoaderConfiguration_sharedInstance__block_invoke()
{
  sharedInstance_Shared = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (Class)desiredClassFromBundle:(id)a3 forKey:(id)a4
{
  v5 = a4;
  if (!v5)
  {
    v5 = @"REPrimaryDataSourceKey";
  }

  v6 = [a3 dataSourceClassForKey:v5];

  return v6;
}

- (BOOL)shouldLoadBundleClass:(Class)a3 forKey:(id)a4
{
  v4 = a4;
  if (!v4)
  {
    v4 = @"REPrimaryDataSourceKey";
  }

  if (([(__CFString *)v4 isEqualToString:@"REPrimaryDataSourceKey"]& 1) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = [(__CFString *)v4 isEqualToString:@"REDemoDataSourceKey"];
  }

  return v5;
}

@end