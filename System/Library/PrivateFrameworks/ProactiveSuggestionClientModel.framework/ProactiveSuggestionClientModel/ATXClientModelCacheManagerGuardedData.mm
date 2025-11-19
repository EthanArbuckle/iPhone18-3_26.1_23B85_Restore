@interface ATXClientModelCacheManagerGuardedData
- (ATXClientModelCacheManagerGuardedData)init;
@end

@implementation ATXClientModelCacheManagerGuardedData

- (ATXClientModelCacheManagerGuardedData)init
{
  v6.receiver = self;
  v6.super_class = ATXClientModelCacheManagerGuardedData;
  v2 = [(ATXClientModelCacheManagerGuardedData *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    clientModelCacheHandlers = v2->_clientModelCacheHandlers;
    v2->_clientModelCacheHandlers = v3;
  }

  return v2;
}

@end