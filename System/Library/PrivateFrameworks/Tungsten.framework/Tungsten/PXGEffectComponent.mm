@interface PXGEffectComponent
- (PXGEffectComponent)initWithDataStore:(id)a3;
- (PXGEffectComponentDelegate)delegate;
- (const)effectIds;
- (id)effectForId:(unsigned int)a3;
- (unsigned)mutableEffectIds;
- (void)cleanupUnusedObjects;
- (void)didUseEffect:(id)a3;
- (void)performChanges:(id)a3;
- (void)registerEffect:(id)a3 withEffectId:(unsigned int)a4;
- (void)setContentsFrom:(id)a3;
- (void)unregisterEffectId:(unsigned int)a3;
- (void)willDestroyEntities:(id *)a3 count:(int64_t)a4;
@end

@implementation PXGEffectComponent

- (unsigned)mutableEffectIds
{
  v2 = [(PXGComponent *)self mutableDataStore];
  v3 = [v2 mutableContents];

  return v3;
}

- (const)effectIds
{
  v2 = [(PXGComponent *)self dataStore];
  v3 = [v2 contents];

  return v3;
}

- (void)cleanupUnusedObjects
{
  v15.receiver = self;
  v15.super_class = PXGEffectComponent;
  [(PXGComponent *)&v15 cleanupUnusedObjects];
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v4 = [(PXGComponent *)self dataStore];
  v5 = [v4 capacity];

  v6 = [(PXGEffectComponent *)self effectIds];
  if (v5 >= 1)
  {
    v7 = v6;
    do
    {
      if (*v7++)
      {
        [v3 addIndex:?];
      }

      --v5;
    }

    while (v5);
  }

  allEffects = self->_allEffects;
  v10 = MEMORY[0x277CCAC30];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__PXGEffectComponent_cleanupUnusedObjects__block_invoke;
  v13[3] = &unk_2782A8910;
  v14 = v3;
  v11 = v3;
  v12 = [v10 predicateWithBlock:v13];
  [(NSMutableSet *)allEffects filterUsingPredicate:v12];
}

uint64_t __42__PXGEffectComponent_cleanupUnusedObjects__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 effectId];

  return [v2 containsIndex:v3];
}

- (PXGEffectComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didUseEffect:(id)a3
{
  v4 = a3;
  v5 = [(PXGEffectComponent *)self delegate];
  [v5 effectComponent:self prepareForEffect:v4];
}

- (id)effectForId:(unsigned int)a3
{
  v3 = *&a3;
  os_unfair_lock_lock(&self->_lock);
  lock_effectById = self->_lock_effectById;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v7 = [(NSMapTable *)lock_effectById objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)unregisterEffectId:(unsigned int)a3
{
  v3 = *&a3;
  os_unfair_lock_lock(&self->_lock);
  lock_effectById = self->_lock_effectById;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  [(NSMapTable *)lock_effectById removeObjectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)registerEffect:(id)a3 withEffectId:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  lock_effectById = self->_lock_effectById;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(NSMapTable *)lock_effectById setObject:v6 forKey:v8];

  [(NSMutableSet *)self->_allEffects addObject:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)willDestroyEntities:(id *)a3 count:(int64_t)a4
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__PXGEffectComponent_willDestroyEntities_count___block_invoke;
  v8[3] = &__block_descriptor_48_e55_v16__0__PXGEffectComponent_PXGMutableEffectComponent__8l;
  v8[4] = a4;
  v8[5] = a3;
  [(PXGEffectComponent *)self performChanges:v8];
  v7.receiver = self;
  v7.super_class = PXGEffectComponent;
  [(PXGComponent *)&v7 willDestroyEntities:a3 count:a4];
}

uint64_t __48__PXGEffectComponent_willDestroyEntities_count___block_invoke(uint64_t a1, id a2)
{
  v4 = a2;
  result = [a2 mutableEffectIds];
  v6 = *(a1 + 32);
  if (v6 >= 1)
  {
    v7 = *(a1 + 40);
    do
    {
      v8 = *v7++;
      *(result + 4 * v8) = 0;
      --v6;
    }

    while (v6);
  }

  return result;
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXGEffectComponent;
  [(PXGComponent *)&v3 performChanges:a3];
}

- (void)setContentsFrom:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self != v4)
  {
    os_unfair_lock_lock(&self->_lock);
    os_unfair_lock_lock(&v4->_lock);
    v5 = self->_lock_effectById;
    v6 = v4->_lock_effectById;
    [(NSMapTable *)v5 removeAllObjects];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(NSMapTable *)v6 keyEnumerator];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [(NSMapTable *)v6 objectForKey:v12];
          if (v13)
          {
            [(NSMapTable *)v5 setObject:v13 forKey:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v14 = [(PXGComponent *)self mutableDataStore];
    v15 = [(PXGComponent *)v4 dataStore];
    [v14 setContentsFrom:v15];

    [(NSMutableSet *)self->_allEffects setSet:v4->_allEffects];
    os_unfair_lock_unlock(&v4->_lock);
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (PXGEffectComponent)initWithDataStore:(id)a3
{
  v10.receiver = self;
  v10.super_class = PXGEffectComponent;
  v3 = [(PXGComponent *)&v10 initWithDataStore:a3];
  v4 = v3;
  if (v3)
  {
    v3->_lock._os_unfair_lock_opaque = 0;
    v5 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    lock_effectById = v4->_lock_effectById;
    v4->_lock_effectById = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    allEffects = v4->_allEffects;
    v4->_allEffects = v7;
  }

  return v4;
}

@end