@interface RBBundlePropertiesLSProvider
- (NSString)debugDescription;
- (RBBundlePropertiesLSProvider)init;
- (RBBundlePropertiesLSProviderDelegate)delegate;
- (id)propertiesForIdentity:(id)a3;
- (void)_removeCachedValuesForAppProxies:(uint64_t)a1;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation RBBundlePropertiesLSProvider

- (RBBundlePropertiesLSProvider)init
{
  v10.receiver = self;
  v10.super_class = RBBundlePropertiesLSProvider;
  v2 = [(RBBundlePropertiesLSProvider *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEA78]);
    propertiesByIdentity = v3->_propertiesByIdentity;
    v3->_propertiesByIdentity = v4;

    [(NSCache *)v3->_propertiesByIdentity setCountLimit:5];
    v6 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__RBBundlePropertiesLSProvider_init__block_invoke;
    block[3] = &unk_279B32CB0;
    v9 = v3;
    dispatch_async(v6, block);
  }

  return v3;
}

void __36__RBBundlePropertiesLSProvider_init__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"test"];
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 addObserver:*(a1 + 32)];
}

- (RBBundlePropertiesLSProviderDelegate)delegate
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)propertiesForIdentity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [v4 embeddedApplicationIdentifier];
  if (v5)
  {
  }

  else
  {
    v6 = [v4 xpcServiceIdentifier];

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v6 = [(NSCache *)self->_propertiesByIdentity objectForKey:v4];
  if (!v6)
  {
    if ([v4 isEmbeddedApplication])
    {
      [(RBBundlePropertiesLSProvider *)v4 propertiesForIdentity:?];
    }

    else
    {
      if (![v4 isXPCService])
      {
        v6 = objc_alloc_init(RBLSBundleProperties);
LABEL_8:
        [(NSCache *)self->_propertiesByIdentity setObject:v6 forKey:v4];
        goto LABEL_9;
      }

      [(RBBundlePropertiesLSProvider *)v4 propertiesForIdentity:?];
    }

    v6 = v8;
    goto LABEL_8;
  }

LABEL_9:
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = RBBundlePropertiesLSProvider;
  [(RBBundlePropertiesLSProvider *)&v4 dealloc];
}

- (NSString)debugDescription
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  os_unfair_lock_lock(&self->_lock);
  v4 = [(NSCache *)self->_propertiesByIdentity mapTableRepresentation];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v4 objectForKey:v9];
        v11 = [v9 description];
        [v3 appendFormat:@"%@=%@\n\t\t", v11, v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [objc_opt_class() description];
  v14 = [v12 initWithFormat:@"<%@| propertiesByIdentity:{\n\t\t%@}>", v13, v3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_removeCachedValuesForAppProxies:(uint64_t)a1
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    os_unfair_lock_lock((a1 + 24));
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = MEMORY[0x277D46F60];
          v11 = [*(*(&v15 + 1) + 8 * v9) bundleIdentifier];
          v12 = [v10 identityForEmbeddedApplicationIdentifier:v11];

          [*(a1 + 8) removeObjectForKey:v12];
          [v4 addObject:v12];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    os_unfair_lock_unlock((a1 + 24));
    [WeakRetained bundlePropertiesProvider:a1 didChangePropertiesForProcessIdentities:v4];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)propertiesForIdentity:(void *)a1 .cold.1(void *a1, uint64_t *a2)
{
  v3 = MEMORY[0x277CC1E88];
  v4 = [a1 xpcServiceIdentifier];
  v5 = [v3 bundleProxyForIdentifier:v4];

  *a2 = [[RBLSBundleProperties alloc] initWithBundleProxy:v5];
}

- (void)propertiesForIdentity:(void *)a1 .cold.2(void *a1, uint64_t *a2)
{
  v3 = MEMORY[0x277CC1E60];
  v4 = [a1 embeddedApplicationIdentifier];
  v5 = [v3 applicationProxyForIdentifier:v4];

  *a2 = [[RBLSBundleProperties alloc] initWithApplicationProxy:v5];
}

@end