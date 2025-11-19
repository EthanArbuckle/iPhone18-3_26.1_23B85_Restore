@interface RBProcessMap
- (BOOL)containsIdentity:(id)a3;
- (RBProcessMap)init;
- (id)allIdentities;
- (id)allValue;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionary;
- (id)removeValueForIdentity:(id)a3;
- (id)removeValueForIdentity:(id)a3 withPredicate:(id)a4;
- (id)setValue:(id)a3 forIdentity:(id)a4;
- (id)valueForIdentity:(id)a3;
- (unint64_t)count;
- (void)addIdentity:(id)a3;
- (void)enumerateWithBlock:(id)a3;
- (void)removeAllObjects;
- (void)removeIdentity:(id)a3;
@end

@implementation RBProcessMap

- (RBProcessMap)init
{
  v7.receiver = self;
  v7.super_class = RBProcessMap;
  v2 = [(RBProcessMap *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    valueMap = v3->_valueMap;
    v3->_valueMap = v4;
  }

  return v3;
}

- (id)allIdentities
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_valueMap allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)allValue
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  v3 = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMutableDictionary *)self->_valueMap allValues];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (v9)
        {
          v10 = [MEMORY[0x277CBEB68] null];

          if (v9 != v10)
          {
            [v3 addObject:v9];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (unint64_t)count
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_valueMap count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)removeAllObjects
{
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_valueMap removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addIdentity:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    [(RBProcessMap *)a2 addIdentity:?];
  }

  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_valueMap objectForKey:v8];

  if (!v5)
  {
    valueMap = self->_valueMap;
    v7 = [MEMORY[0x277CBEB68] null];
    [(NSMutableDictionary *)valueMap setObject:v7 forKey:v8];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeIdentity:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(RBProcessMap *)a2 removeIdentity:?];
  }

  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_valueMap removeObjectForKey:v5];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)containsIdentity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_valueMap objectForKey:v4];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)valueForIdentity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [(NSMutableDictionary *)self->_valueMap objectForKey:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB68] null];

    if (v5 == v6)
    {

LABEL_5:
      v5 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)removeValueForIdentity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_valueMap objectForKey:v4];
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [MEMORY[0x277CBEB68] null];

    if (v5 != v6)
    {
      [(NSMutableDictionary *)self->_valueMap removeObjectForKey:v4];
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)removeValueForIdentity:(id)a3 withPredicate:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  if (!v6)
  {
    goto LABEL_7;
  }

  v8 = [(NSMutableDictionary *)self->_valueMap objectForKey:v6];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [MEMORY[0x277CBEB68] null];

  if (v8 == v9)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (v7[2](v7, v8))
  {
    [(NSMutableDictionary *)self->_valueMap removeObjectForKey:v6];
  }

LABEL_8:
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)setValue:(id)a3 forIdentity:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [RBProcessMap setValue:a2 forIdentity:self];
  }

  os_unfair_lock_lock_with_options();
  v9 = [(NSMutableDictionary *)self->_valueMap objectForKey:v8];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];

    if (v9 == v10)
    {

      v9 = 0;
    }
  }

  valueMap = self->_valueMap;
  if (v7)
  {
    [(NSMutableDictionary *)self->_valueMap setObject:v7 forKey:v8];
  }

  else
  {
    v12 = [MEMORY[0x277CBEB68] null];
    [(NSMutableDictionary *)valueMap setObject:v12 forKey:v8];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)enumerateWithBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_valueMap copy];
  os_unfair_lock_unlock(&self->_lock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__RBProcessMap_enumerateWithBlock___block_invoke;
  v7[3] = &unk_279B337A0;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

void __35__RBProcessMap_enumerateWithBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CBEB68];
  v8 = a3;
  v9 = a2;
  v11 = [v7 null];
  if (v11 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  (*(v6 + 16))(v6, v9, v10, a4);
}

- (id)dictionary
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_valueMap copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(RBProcessMap);
  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)v4->_valueMap addEntriesFromDictionary:self->_valueMap];
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)addIdentity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACC8] callStackSymbols];
  [v5 handleFailureInMethod:a1 object:a2 file:@"RBProcessMap.m" lineNumber:47 description:{@"identity cannot be nil %@", v4}];
}

- (void)removeIdentity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBProcessMap.m" lineNumber:57 description:@"identity cannot be nil"];
}

- (void)setValue:(uint64_t)a1 forIdentity:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACC8] callStackSymbols];
  [v5 handleFailureInMethod:a1 object:a2 file:@"RBProcessMap.m" lineNumber:128 description:{@"identity cannot be nil %@", v4}];
}

@end