@interface WKProcessPool(Embeds)
+ (id)embedProcessPool;
@end

@implementation WKProcessPool(Embeds)

+ (id)embedProcessPool
{
  v0 = __embedProcessPool;
  if (!__embedProcessPool)
  {
    v1 = objc_alloc_init(MEMORY[0x1E6985340]);
    v2 = __embedProcessPool;
    __embedProcessPool = v1;

    _configuration = [__embedProcessPool _configuration];
    [_configuration setAlwaysRunsAtBackgroundPriority:1];

    v0 = __embedProcessPool;
  }

  return v0;
}

@end