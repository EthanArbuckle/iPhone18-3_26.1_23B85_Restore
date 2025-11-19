@interface PALResolvedAccessorCacheKey
- (BOOL)isEqual:(id)a3;
- (PALResolvedAccessorCacheKey)initWithAccessor:(id)a3 clientProvidedIdentity:(id)a4;
@end

@implementation PALResolvedAccessorCacheKey

- (PALResolvedAccessorCacheKey)initWithAccessor:(id)a3 clientProvidedIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PALResolvedAccessorCacheKey;
  v9 = [(PALResolvedAccessorCacheKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessor, a3);
    objc_storeStrong(&v10->_clientProvidedIdentity, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else if ([(PALResolvedAccessorCacheKey *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    accessor = self->_accessor;
    v7 = [(PALResolvedAccessorCacheKey *)v5 accessor];
    if ([(PAApplication *)accessor isEqual:v7])
    {
      clientProvidedIdentity = self->_clientProvidedIdentity;
      if (clientProvidedIdentity == v5->_clientProvidedIdentity)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(PABridgedTCCIdentity *)clientProvidedIdentity isEqual:?];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end