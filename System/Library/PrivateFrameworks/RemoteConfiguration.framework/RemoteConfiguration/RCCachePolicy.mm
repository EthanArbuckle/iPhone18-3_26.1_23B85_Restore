@interface RCCachePolicy
+ (id)cacheOnlyPolicy;
+ (id)defaultCachePolicy;
+ (id)ignoreCachePolicy;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation RCCachePolicy

+ (id)defaultCachePolicy
{
  if (defaultCachePolicy_onceToken != -1)
  {
    +[RCCachePolicy defaultCachePolicy];
  }

  v3 = defaultCachePolicy_result;

  return v3;
}

uint64_t __35__RCCachePolicy_defaultCachePolicy__block_invoke()
{
  v0 = objc_alloc_init(RCCachePolicy);
  v1 = defaultCachePolicy_result;
  defaultCachePolicy_result = v0;

  v2 = defaultCachePolicy_result;

  return [v2 setRequestCachePolicy:0];
}

+ (id)ignoreCachePolicy
{
  if (ignoreCachePolicy_onceToken != -1)
  {
    +[RCCachePolicy ignoreCachePolicy];
  }

  v3 = ignoreCachePolicy_result;

  return v3;
}

uint64_t __34__RCCachePolicy_ignoreCachePolicy__block_invoke()
{
  v0 = objc_alloc_init(RCCachePolicy);
  v1 = ignoreCachePolicy_result;
  ignoreCachePolicy_result = v0;

  v2 = ignoreCachePolicy_result;

  return [v2 setRequestCachePolicy:1];
}

+ (id)cacheOnlyPolicy
{
  if (cacheOnlyPolicy_onceToken != -1)
  {
    +[RCCachePolicy cacheOnlyPolicy];
  }

  v3 = cacheOnlyPolicy_result;

  return v3;
}

uint64_t __32__RCCachePolicy_cacheOnlyPolicy__block_invoke()
{
  v0 = objc_alloc_init(RCCachePolicy);
  v1 = cacheOnlyPolicy_result;
  cacheOnlyPolicy_result = v0;

  v2 = cacheOnlyPolicy_result;

  return [v2 setRequestCachePolicy:2];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setRequestCachePolicy:{-[RCCachePolicy requestCachePolicy](self, "requestCachePolicy")}];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(RCCachePolicy *)self requestCachePolicy];
    v7 = [v5 requestCachePolicy];

    v8 = v6 == v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RCCachePolicy requestCachePolicy](self, "requestCachePolicy")}];
  v3 = [v2 hash];

  return v3;
}

@end