@interface __PLKLRUCacheKeyTuple
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidCacheKeyForObject:(id)object context:(id)context;
- (__PLKLRUCacheKeyTuple)initWithObject:(id)object context:(id)context;
@end

@implementation __PLKLRUCacheKeyTuple

- (__PLKLRUCacheKeyTuple)initWithObject:(id)object context:(id)context
{
  objectCopy = object;
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = __PLKLRUCacheKeyTuple;
  v9 = [(__PLKLRUCacheKeyTuple *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_object, object);
    objc_storeStrong(&v10->_context, context);
    v11 = [objectCopy hash];
    v10->_cacheHash = [contextCopy hash] ^ v11;
  }

  return v10;
}

- (BOOL)isValidCacheKeyForObject:(id)object context:(id)context
{
  contextCopy = context;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  object = [equalCopy object];
  context = [equalCopy context];

  LOBYTE(self) = [(__PLKLRUCacheKeyTuple *)self isValidCacheKeyForObject:object context:context];
  return self;
}

@end