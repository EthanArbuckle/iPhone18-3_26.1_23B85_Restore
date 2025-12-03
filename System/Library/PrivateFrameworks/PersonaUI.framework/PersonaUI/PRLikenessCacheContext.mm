@interface PRLikenessCacheContext
+ (id)contextWithCacheSize:(unint64_t)size;
- (PRLikenessCacheContext)init;
@end

@implementation PRLikenessCacheContext

+ (id)contextWithCacheSize:(unint64_t)size
{
  v4 = objc_alloc_init(self);
  v4[2] = size;

  return v4;
}

- (PRLikenessCacheContext)init
{
  v3.receiver = self;
  v3.super_class = PRLikenessCacheContext;
  result = [(PRLikenessCacheContext *)&v3 init];
  if (result)
  {
    *&result->_circular = 0;
    result->_scale = 1.0;
  }

  return result;
}

@end