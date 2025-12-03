@interface PALResolvedAccessorCacheKey
- (BOOL)isEqual:(id)equal;
- (PALResolvedAccessorCacheKey)initWithAccessor:(id)accessor clientProvidedIdentity:(id)identity;
@end

@implementation PALResolvedAccessorCacheKey

- (PALResolvedAccessorCacheKey)initWithAccessor:(id)accessor clientProvidedIdentity:(id)identity
{
  accessorCopy = accessor;
  identityCopy = identity;
  v12.receiver = self;
  v12.super_class = PALResolvedAccessorCacheKey;
  v9 = [(PALResolvedAccessorCacheKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_accessor, accessor);
    objc_storeStrong(&v10->_clientProvidedIdentity, identity);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if ([(PALResolvedAccessorCacheKey *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    accessor = self->_accessor;
    accessor = [(PALResolvedAccessorCacheKey *)v5 accessor];
    if ([(PAApplication *)accessor isEqual:accessor])
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