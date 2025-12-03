@interface RBProcessMap
- (BOOL)containsIdentity:(id)identity;
- (RBProcessMap)init;
- (id)allIdentities;
- (id)allValue;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionary;
- (id)removeValueForIdentity:(id)identity;
- (id)removeValueForIdentity:(id)identity withPredicate:(id)predicate;
- (id)setValue:(id)value forIdentity:(id)identity;
- (id)valueForIdentity:(id)identity;
- (unint64_t)count;
- (void)addIdentity:(id)identity;
- (void)enumerateWithBlock:(id)block;
- (void)removeAllObjects;
- (void)removeIdentity:(id)identity;
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
  allKeys = [(NSMutableDictionary *)self->_valueMap allKeys];
  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (id)allValue
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allValues = [(NSMutableDictionary *)self->_valueMap allValues];
  v5 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (v9)
        {
          null = [MEMORY[0x277CBEB68] null];

          if (v9 != null)
          {
            [array addObject:v9];
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = *MEMORY[0x277D85DE8];

  return array;
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

- (void)addIdentity:(id)identity
{
  identityCopy = identity;
  if (!identityCopy)
  {
    [(RBProcessMap *)a2 addIdentity:?];
  }

  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_valueMap objectForKey:identityCopy];

  if (!v5)
  {
    valueMap = self->_valueMap;
    null = [MEMORY[0x277CBEB68] null];
    [(NSMutableDictionary *)valueMap setObject:null forKey:identityCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeIdentity:(id)identity
{
  identityCopy = identity;
  if (!identityCopy)
  {
    [(RBProcessMap *)a2 removeIdentity:?];
  }

  os_unfair_lock_lock_with_options();
  [(NSMutableDictionary *)self->_valueMap removeObjectForKey:identityCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)containsIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock_with_options();
  if (identityCopy)
  {
    v5 = [(NSMutableDictionary *)self->_valueMap objectForKey:identityCopy];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)valueForIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock_with_options();
  if (!identityCopy)
  {
    goto LABEL_5;
  }

  v5 = [(NSMutableDictionary *)self->_valueMap objectForKey:identityCopy];
  if (v5)
  {
    null = [MEMORY[0x277CBEB68] null];

    if (v5 == null)
    {

LABEL_5:
      v5 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)removeValueForIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock_with_options();
  if (identityCopy)
  {
    v5 = [(NSMutableDictionary *)self->_valueMap objectForKey:identityCopy];
    if (!v5)
    {
      goto LABEL_7;
    }

    null = [MEMORY[0x277CBEB68] null];

    if (v5 != null)
    {
      [(NSMutableDictionary *)self->_valueMap removeObjectForKey:identityCopy];
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)removeValueForIdentity:(id)identity withPredicate:(id)predicate
{
  identityCopy = identity;
  predicateCopy = predicate;
  os_unfair_lock_lock_with_options();
  if (!identityCopy)
  {
    goto LABEL_7;
  }

  v8 = [(NSMutableDictionary *)self->_valueMap objectForKey:identityCopy];
  if (!v8)
  {
    goto LABEL_8;
  }

  null = [MEMORY[0x277CBEB68] null];

  if (v8 == null)
  {

LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  if (predicateCopy[2](predicateCopy, v8))
  {
    [(NSMutableDictionary *)self->_valueMap removeObjectForKey:identityCopy];
  }

LABEL_8:
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)setValue:(id)value forIdentity:(id)identity
{
  valueCopy = value;
  identityCopy = identity;
  if (!identityCopy)
  {
    [RBProcessMap setValue:a2 forIdentity:self];
  }

  os_unfair_lock_lock_with_options();
  v9 = [(NSMutableDictionary *)self->_valueMap objectForKey:identityCopy];
  if (v9)
  {
    null = [MEMORY[0x277CBEB68] null];

    if (v9 == null)
    {

      v9 = 0;
    }
  }

  valueMap = self->_valueMap;
  if (valueCopy)
  {
    [(NSMutableDictionary *)self->_valueMap setObject:valueCopy forKey:identityCopy];
  }

  else
  {
    null2 = [MEMORY[0x277CBEB68] null];
    [(NSMutableDictionary *)valueMap setObject:null2 forKey:identityCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)enumerateWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_valueMap copy];
  os_unfair_lock_unlock(&self->_lock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__RBProcessMap_enumerateWithBlock___block_invoke;
  v7[3] = &unk_279B337A0;
  v8 = blockCopy;
  v6 = blockCopy;
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

- (id)copyWithZone:(_NSZone *)zone
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