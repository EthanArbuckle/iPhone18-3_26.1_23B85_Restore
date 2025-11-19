@interface SKUIStateRestorationContext
+ (id)sharedContext;
+ (void)setSharedContext:(id)a3;
@end

@implementation SKUIStateRestorationContext

+ (void)setSharedContext:(id)a3
{
  v3 = a3;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIStateRestorationContext *)v4 setSharedContext:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = sContext;
  sContext = v3;
}

+ (id)sharedContext
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIStateRestorationContext *)v2 sharedContext:v3];
      }
    }
  }

  v10 = sContext;

  return v10;
}

@end