@interface STAttributedEntityResolutionSession
- (STAttributedEntityResolutionSession)initWithEntityResolver:(id)resolver identityResolver:(id)identityResolver cache:(id)cache;
- (id)_entityWithResolvedIdentityForEntity:(uint64_t)entity;
- (id)resolveEntity:(id)entity;
- (void)dealloc;
- (void)invalidate;
- (void)resolveEntities:(id)entities;
@end

@implementation STAttributedEntityResolutionSession

- (STAttributedEntityResolutionSession)initWithEntityResolver:(id)resolver identityResolver:(id)identityResolver cache:(id)cache
{
  resolverCopy = resolver;
  identityResolverCopy = identityResolver;
  cacheCopy = cache;
  v15.receiver = self;
  v15.super_class = STAttributedEntityResolutionSession;
  v12 = [(STAttributedEntityResolutionSession *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_entityResolver, resolver);
    objc_storeStrong(&v13->_identityResolver, identityResolver);
    objc_storeStrong(&v13->_cache, cache);
  }

  return v13;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = STAttributedEntityResolutionSession;
  [(STAttributedEntityResolutionSession *)&v2 dealloc];
}

- (void)resolveEntities:(id)entities
{
  v37 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v6 = cache;
  v7 = [entitiesCopy bs_map:&__block_literal_global_9];
  v26 = v7;
  if (self)
  {
    [(STExecutableIdentityBatchResolving *)self->_identityResolver resolveIdentities:v7];
    entityResolver = self->_entityResolver;
  }

  else
  {
    [0 resolveIdentities:v7];
    entityResolver = 0;
  }

  v9 = entityResolver;
  array = [MEMORY[0x277CBEB18] array];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = entitiesCopy;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [(STAttributedEntityResolutionSession *)self _entityWithResolvedIdentityForEntity:?];
        [array addObject:v16];
        v17 = [(STReferenceCountedCache *)v6 cachedObjectForKey:v16];
        if (!v17)
        {
          v17 = [(STAttributedEntityResolving *)v9 resolveEntity:v16];
          if (v17)
          {
            [(STReferenceCountedCache *)v6 cacheObject:v17 forKey:v16];
            [(STReferenceCountedCache *)v6 incrementReferenceCountForKey:v16];
          }
        }

        [(STReferenceCountedCache *)v6 incrementReferenceCountForKey:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v13);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (self)
  {
    cachedEntities = self->_cachedEntities;
  }

  else
  {
    cachedEntities = 0;
  }

  v19 = cachedEntities;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(STReferenceCountedCache *)v6 decrementReferenceCountForKey:*(*(&v27 + 1) + 8 * v23++)];
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v21);
  }

  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v24, array, 40);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_entityWithResolvedIdentityForEntity:(uint64_t)entity
{
  if (entity)
  {
    v3 = *(entity + 24);
    v4 = a2;
    executableIdentity = [v4 executableIdentity];
    v6 = [v3 resolvedIdentityForIdentity:executableIdentity];

    website = [v4 website];
    isSystemService = [v4 isSystemService];
    localizedDisplayName = [v4 localizedDisplayName];
    localizedExecutableDisplayName = [v4 localizedExecutableDisplayName];

    v11 = [objc_alloc(MEMORY[0x277D6B8F0]) initWithExecutableIdentity:v6 website:website systemService:isSystemService localizedDisplayName:localizedDisplayName localizedExecutableDisplayName:localizedExecutableDisplayName];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)invalidate
{
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self->_invalidated = 1;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    cachedEntities = self->_cachedEntities;
  }

  else
  {
    cachedEntities = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
  }

  v4 = cachedEntities;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (self)
        {
          cache = self->_cache;
        }

        else
        {
          cache = 0;
        }

        [(STReferenceCountedCache *)cache decrementReferenceCountForKey:*(*(&v13 + 1) + 8 * v8++), v13];
      }

      while (v6 != v8);
      v10 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v6 = v10;
    }

    while (v10);
  }

  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v11, 0, 40);
    objc_storeStrong(&self->_entityResolver, 0);
    [(STExecutableIdentityBatchResolving *)self->_identityResolver invalidate];
    objc_storeStrong(&self->_identityResolver, 0);
  }

  else
  {
    [0 invalidate];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)resolveEntity:(id)entity
{
  v4 = [(STAttributedEntityResolutionSession *)self _entityWithResolvedIdentityForEntity:entity];
  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v6 = cache;
  v7 = [(STReferenceCountedCache *)v6 cachedObjectForKey:v4];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    if (self)
    {
      entityResolver = self->_entityResolver;
    }

    else
    {
      entityResolver = 0;
    }

    v9 = [(STAttributedEntityResolving *)entityResolver resolveEntity:v4];
  }

  v11 = v9;

  return v11;
}

@end