@interface __PLKLRUCacheKeyTuple
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidCacheKeyForObject:(id)a3 context:(id)a4;
- (__PLKLRUCacheKeyTuple)initWithObject:(id)a3 context:(id)a4;
@end

@implementation __PLKLRUCacheKeyTuple

- (__PLKLRUCacheKeyTuple)initWithObject:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = __PLKLRUCacheKeyTuple;
  v9 = [(__PLKLRUCacheKeyTuple *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_object, a3);
    objc_storeStrong(&v10->_context, a4);
    v11 = [v7 hash];
    v10->_cacheHash = [v8 hash] ^ v11;
  }

  return v10;
}

- (BOOL)isValidCacheKeyForObject:(id)a3 context:(id)a4
{
  v5 = a4;
  object = self->_object;
  if (BSEqualObjects())
  {
    context = self->_context;
    v8 = BSEqualObjects();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  v6 = [v4 context];

  LOBYTE(self) = [(__PLKLRUCacheKeyTuple *)self isValidCacheKeyForObject:v5 context:v6];
  return self;
}

@end