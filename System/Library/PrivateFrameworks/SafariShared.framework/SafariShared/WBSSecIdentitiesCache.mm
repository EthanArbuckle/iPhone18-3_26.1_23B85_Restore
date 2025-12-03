@interface WBSSecIdentitiesCache
- (WBSSecIdentitiesCache)init;
- (__SecIdentity)secIdentityForDomain:(id)domain;
- (void)setSecIdentity:(__SecIdentity *)identity forDomain:(id)domain;
@end

@implementation WBSSecIdentitiesCache

- (WBSSecIdentitiesCache)init
{
  v7.receiver = self;
  v7.super_class = WBSSecIdentitiesCache;
  v2 = [(WBSSecIdentitiesCache *)&v7 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    domainsToIdentities = v2->_domainsToIdentities;
    v2->_domainsToIdentities = dictionary;

    v5 = v2;
  }

  return v2;
}

- (__SecIdentity)secIdentityForDomain:(id)domain
{
  v3 = [(NSMutableDictionary *)self->_domainsToIdentities objectForKeyedSubscript:domain];

  return v3;
}

- (void)setSecIdentity:(__SecIdentity *)identity forDomain:(id)domain
{
  domainsToIdentities = self->_domainsToIdentities;
  if (identity)
  {
    [(NSMutableDictionary *)domainsToIdentities setObject:identity forKeyedSubscript:domain];
  }

  else
  {
    [(NSMutableDictionary *)domainsToIdentities removeObjectForKey:domain];
  }
}

@end