@interface RBBundlePropertiesBSXPCProvider
- (RBBundlePropertiesBSXPCProvider)init;
- (id)debugDescription;
- (id)propertiesForIdentifier:(id)a3;
- (void)removePropertiesForIdentifier:(id)a3;
@end

@implementation RBBundlePropertiesBSXPCProvider

- (RBBundlePropertiesBSXPCProvider)init
{
  v7.receiver = self;
  v7.super_class = RBBundlePropertiesBSXPCProvider;
  v2 = [(RBBundlePropertiesBSXPCProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    propertiesByIdentifier = v3->_propertiesByIdentifier;
    v3->_propertiesByIdentifier = v4;
  }

  return v3;
}

- (id)propertiesForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMapTable *)self->_propertiesByIdentifier objectForKey:v4];
  if (!v5)
  {
    v5 = -[RBXPCBundleProperties initWithPID:]([RBXPCBundleProperties alloc], "initWithPID:", [v4 pid]);
    [(NSMapTable *)self->_propertiesByIdentifier setObject:v5 forKey:v4];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)removePropertiesForIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSMapTable *)self->_propertiesByIdentifier removeObjectForKey:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)debugDescription
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  os_unfair_lock_lock(&self->_lock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_propertiesByIdentifier;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        v10 = [(NSMapTable *)self->_propertiesByIdentifier objectForKey:v9];
        if (v10)
        {
          v11 = [v9 description];
          [v3 appendFormat:@"%@=%@\n\t\t", v11, v10, v17];
        }
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [objc_opt_class() description];
  v14 = [v12 initWithFormat:@"<%@| propertiesByIdentifier:{\n\t\t%@}>", v13, v3];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end