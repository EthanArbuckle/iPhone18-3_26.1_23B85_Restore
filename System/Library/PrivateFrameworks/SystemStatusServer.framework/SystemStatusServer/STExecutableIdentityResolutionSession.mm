@interface STExecutableIdentityResolutionSession
- (STExecutableIdentityResolutionSession)initWithResolver:(id)a3 cache:(id)a4;
- (id)resolvedIdentityForIdentity:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)resolveIdentities:(id)a3;
@end

@implementation STExecutableIdentityResolutionSession

- (STExecutableIdentityResolutionSession)initWithResolver:(id)a3 cache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = STExecutableIdentityResolutionSession;
  v9 = [(STExecutableIdentityResolutionSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resolver, a3);
    objc_storeStrong(&v10->_cache, a4);
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = STExecutableIdentityResolutionSession;
  [(STExecutableIdentityResolutionSession *)&v2 dealloc];
}

- (void)resolveIdentities:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self)
  {
    v5 = self->_cache;
    resolver = self->_resolver;
  }

  else
  {
    v5 = 0;
    resolver = 0;
  }

  v7 = resolver;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [(STReferenceCountedCache *)v5 cachedObjectForKey:v12];
        if (!v13)
        {
          v13 = [(STExecutableIdentityResolving *)v7 resolvedIdentityForIdentity:v12];
          if (v13)
          {
            [(STReferenceCountedCache *)v5 cacheObject:v13 forKey:v12];
            [(STReferenceCountedCache *)v5 incrementReferenceCountForKey:v12];
          }
        }

        [(STReferenceCountedCache *)v5 incrementReferenceCountForKey:v12];
      }

      v9 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  if (self)
  {
    cachedIdentities = self->_cachedIdentities;
  }

  else
  {
    cachedIdentities = 0;
  }

  v15 = cachedIdentities;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(STReferenceCountedCache *)v5 decrementReferenceCountForKey:*(*(&v22 + 1) + 8 * j), v22];
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  if (self)
  {
    objc_setProperty_nonatomic_copy(self, v20, v4, 32);
  }

  v21 = *MEMORY[0x277D85DE8];
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
    cachedIdentities = self->_cachedIdentities;
  }

  else
  {
    cachedIdentities = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
  }

  v4 = cachedIdentities;
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
    objc_setProperty_nonatomic_copy(self, v11, 0, 32);
    objc_storeStrong(&self->_resolver, 0);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)resolvedIdentityForIdentity:(id)a3
{
  v4 = a3;
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
      resolver = self->_resolver;
    }

    else
    {
      resolver = 0;
    }

    v9 = [(STExecutableIdentityResolving *)resolver resolvedIdentityForIdentity:v4];
  }

  v11 = v9;

  return v11;
}

@end