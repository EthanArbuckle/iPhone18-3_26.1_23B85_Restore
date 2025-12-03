@interface STExecutableIdentityResolver
+ (id)responsibleIdentityForAuditToken:(id *)token;
- (STExecutableIdentityResolver)init;
- (id)beginBatchResolutionSession;
- (id)resolvedIdentityForIdentity:(id)identity;
@end

@implementation STExecutableIdentityResolver

- (STExecutableIdentityResolver)init
{
  v6.receiver = self;
  v6.super_class = STExecutableIdentityResolver;
  v2 = [(STExecutableIdentityResolver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(STReferenceCountedCache);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

+ (id)responsibleIdentityForAuditToken:(id *)token
{
  v4 = objc_alloc(MEMORY[0x277D6B980]);
  v5 = *&token->var0[4];
  v9[0] = *token->var0;
  v9[1] = v5;
  v6 = [v4 initWithAuditToken:v9];
  v7 = _STExecutableIdentityResolvedIdentityForIdentity(v6, 1, 0);

  return v7;
}

- (id)beginBatchResolutionSession
{
  v3 = [STExecutableIdentityResolutionSession alloc];
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v5 = [(STExecutableIdentityResolutionSession *)v3 initWithResolver:self cache:cache];

  return v5;
}

- (id)resolvedIdentityForIdentity:(id)identity
{
  identityCopy = identity;
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v6 = [(STReferenceCountedCache *)cache cachedObjectForKey:identityCopy];
  if (!v6)
  {
    v6 = _STExecutableIdentityResolvedIdentityForIdentity(identityCopy, 0, 1);
  }

  return v6;
}

@end