@interface PPLocalTemporalClusterStore
+ (id)defaultStore;
- (PPLocalTemporalClusterStore)init;
- (PPLocalTemporalClusterStore)initWithStorage:(id)a3;
@end

@implementation PPLocalTemporalClusterStore

- (PPLocalTemporalClusterStore)init
{
  v3 = +[PPTemporalClusterStorage defaultStorage];
  if (v3)
  {
    self = [(PPLocalTemporalClusterStore *)self initWithStorage:v3];
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PPLocalTemporalClusterStore)initWithStorage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PPLocalTemporalClusterStore;
  v6 = [(PPLocalTemporalClusterStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, a3);
  }

  return v7;
}

+ (id)defaultStore
{
  pthread_mutex_lock(&defaultStore_lock_21108);
  if (!defaultStore_instance_21109)
  {
    v2 = objc_opt_new();
    v3 = defaultStore_instance_21109;
    defaultStore_instance_21109 = v2;

    if (!defaultStore_instance_21109)
    {
      v4 = pp_temporal_clusters_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_INFO, "PPLocalTemporalClusterStore defaultStore did not initialize, will try again later. Device may be Class C locked.", v7, 2u);
      }
    }
  }

  v5 = defaultStore_instance_21109;
  pthread_mutex_unlock(&defaultStore_lock_21108);

  return v5;
}

@end