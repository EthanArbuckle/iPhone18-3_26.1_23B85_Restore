@interface SNNetworkActivityTracing
+ (id)sharedInstance;
- (id)_init;
@end

@implementation SNNetworkActivityTracing

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SNNetworkActivityTracing sharedInstance];
  }

  v3 = sharedInstance_sSharedInstance;

  return v3;
}

void __42__SNNetworkActivityTracing_sharedInstance__block_invoke()
{
  v0 = [[SNNetworkActivityTracing alloc] _init];
  v1 = sharedInstance_sSharedInstance;
  sharedInstance_sSharedInstance = v0;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = SNNetworkActivityTracing;
  v2 = [(SNNetworkActivityTracing *)&v6 init];
  if (v2)
  {
    v3 = +[SNNetworkActivityTracingInternal shared];
    underlyingNetworkActivityTracingInternal = v2->_underlyingNetworkActivityTracingInternal;
    v2->_underlyingNetworkActivityTracingInternal = v3;
  }

  return v2;
}

@end