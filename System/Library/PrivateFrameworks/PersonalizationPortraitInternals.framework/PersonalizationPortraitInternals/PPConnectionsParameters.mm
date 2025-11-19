@interface PPConnectionsParameters
+ (PPConnectionsParameters)sharedInstance;
- (PPConnectionsParameters)init;
- (double)doubleValueForKey:(unint64_t)a3 default:;
- (id)assetValueForKey:(id *)a1;
- (id)donationAllowedApps;
- (id)donationAllowedWebsites;
- (id)donationBlockedApps;
- (id)donationBlockedWebsites;
- (id)locationPredictionBlockedApps;
- (uint64_t)BOOLValueForKey:(id *)a1 default:(void *)a2;
- (uint64_t)integerValueForKey:(uint64_t)a3 default:;
- (uint64_t)unsignedIntegerValueForKey:(id *)a1 default:(void *)a2;
@end

@implementation PPConnectionsParameters

+ (PPConnectionsParameters)sharedInstance
{
  if (sharedInstance_once_16701 != -1)
  {
    dispatch_once(&sharedInstance_once_16701, &__block_literal_global_16702);
  }

  v3 = sharedInstance_shared_16703;

  return v3;
}

- (id)donationBlockedApps
{
  v2 = [(PPConnectionsParameters *)&self->super.isa assetValueForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)assetValueForKey:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    pthread_mutex_lock(&_PPConnectionsParametersAssetMutex);
    v2 = [v2[1] objectForKeyedSubscript:v3];

    pthread_mutex_unlock(&_PPConnectionsParametersAssetMutex);
  }

  return v2;
}

- (id)donationAllowedApps
{
  v2 = [(PPConnectionsParameters *)&self->super.isa assetValueForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)donationBlockedWebsites
{
  v2 = [(PPConnectionsParameters *)&self->super.isa assetValueForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)donationAllowedWebsites
{
  v2 = [(PPConnectionsParameters *)&self->super.isa assetValueForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (id)locationPredictionBlockedApps
{
  v2 = [(PPConnectionsParameters *)&self->super.isa assetValueForKey:?];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (uint64_t)BOOLValueForKey:(id *)a1 default:(void *)a2
{
  if (!a1)
  {
    return 0;
  }

  v2 = [(PPConnectionsParameters *)a1 assetValueForKey:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)doubleValueForKey:(unint64_t)a3 default:
{
  if (!a1)
  {
    return 0.0;
  }

  v4 = [(PPConnectionsParameters *)a1 assetValueForKey:a2];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = a3;
  }

  return v7;
}

- (uint64_t)integerValueForKey:(uint64_t)a3 default:
{
  if (!a1)
  {
    return 0;
  }

  v4 = [(PPConnectionsParameters *)a1 assetValueForKey:a2];
  v5 = v4;
  if (v4)
  {
    a3 = [v4 integerValue];
  }

  return a3;
}

- (uint64_t)unsignedIntegerValueForKey:(id *)a1 default:(void *)a2
{
  if (!a1)
  {
    return 0;
  }

  v2 = [(PPConnectionsParameters *)a1 assetValueForKey:a2];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 unsignedIntegerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (PPConnectionsParameters)init
{
  v12.receiver = self;
  v12.super_class = PPConnectionsParameters;
  v2 = [(PPConnectionsParameters *)&v12 init];
  if (v2)
  {
    v3 = qos_class_self();
    v4 = dispatch_queue_attr_make_with_qos_class(0, v3, 0);
    v5 = dispatch_queue_create("com.apple.proactive.PersonalizationPortrait.PPConnectionsParametersQueue", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    objc_initWeak(&location, v2);
    v7 = v2->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __31__PPConnectionsParameters_init__block_invoke;
    v9[3] = &unk_2789797B8;
    objc_copyWeak(&v10, &location);
    dispatch_async(v7, v9);
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __31__PPConnectionsParameters_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = +[PPTrialWrapper sharedInstance];
    v3 = [v2 plistForFactorName:@"PPConnectionsParameters.plist" namespaceName:@"PERSONALIZATION_PORTRAIT_CONNECTIONS"];

    if (v3)
    {
      pthread_mutex_lock(&_PPConnectionsParametersAssetMutex);
      objc_storeStrong(WeakRetained + 1, v3);
      pthread_mutex_unlock(&_PPConnectionsParametersAssetMutex);
    }

    else
    {
      v4 = pp_quicktype_log_handle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v5 = 0;
        _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, "PPConnectionsParameters: Could not find asset path for PPConnectionsParameters.plist", v5, 2u);
      }
    }
  }
}

uint64_t __41__PPConnectionsParameters_sharedInstance__block_invoke()
{
  sharedInstance_shared_16703 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end