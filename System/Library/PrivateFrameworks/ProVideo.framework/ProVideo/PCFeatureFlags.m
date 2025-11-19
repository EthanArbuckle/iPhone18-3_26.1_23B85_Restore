@interface PCFeatureFlags
+ (BOOL)checkFeature:(id)a3;
+ (id)sharedInstance;
+ (void)overwriteFeatureFlags:(id)a3;
+ (void)setAllFeatureFlags:(id)a3;
- (BOOL)checkFeature:(id)a3;
- (void)dealloc;
- (void)overwriteFeatureFlags:(id)a3;
- (void)setAllFeatureFlags:(id)a3;
@end

@implementation PCFeatureFlags

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PCFeatureFlags;
  [(PCFeatureFlags *)&v3 dealloc];
}

- (void)setAllFeatureFlags:(id)a3
{
  if (self->_features != a3)
  {
    objc_sync_enter(self);
    v5 = [a3 copy];

    self->_features = v5;

    objc_sync_exit(self);
  }
}

- (void)overwriteFeatureFlags:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  features = self->_features;
  if (features)
  {
    v6 = [(NSDictionary *)features mutableCopy];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  objc_sync_exit(self);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [a3 keyEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v9)
  {
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [v7 setObject:objc_msgSend(a3 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v12 + 1) + 8 * v11)), *(*(&v12 + 1) + 8 * v11)}];
        ++v11;
      }

      while (v9 != v11);
      v9 = [v8 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(PCFeatureFlags *)self setAllFeatureFlags:v7];
}

- (BOOL)checkFeature:(id)a3
{
  objc_sync_enter(self);
  LOBYTE(a3) = [-[NSDictionary objectForKeyedSubscript:](self->_features objectForKeyedSubscript:{a3), "BOOLValue"}];
  objc_sync_exit(self);
  return a3;
}

+ (id)sharedInstance
{
  if (sharedInstance_sPCFeatureFlagsOnce != -1)
  {
    +[PCFeatureFlags sharedInstance];
  }

  return sharedInstance_sPCFeatureFlagsSharedInstance;
}

uint64_t __32__PCFeatureFlags_sharedInstance__block_invoke()
{
  result = objc_opt_new();
  sharedInstance_sPCFeatureFlagsSharedInstance = result;
  return result;
}

+ (BOOL)checkFeature:(id)a3
{
  v4 = +[PCFeatureFlags sharedInstance];

  return [(PCFeatureFlags *)v4 checkFeature:a3];
}

+ (void)setAllFeatureFlags:(id)a3
{
  v4 = +[PCFeatureFlags sharedInstance];

  [(PCFeatureFlags *)v4 setAllFeatureFlags:a3];
}

+ (void)overwriteFeatureFlags:(id)a3
{
  v4 = +[PCFeatureFlags sharedInstance];

  [(PCFeatureFlags *)v4 overwriteFeatureFlags:a3];
}

@end