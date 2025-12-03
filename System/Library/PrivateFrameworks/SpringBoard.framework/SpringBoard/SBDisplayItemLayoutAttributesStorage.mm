@interface SBDisplayItemLayoutAttributesStorage
- (SBDisplayItemLayoutAttributesStorage)init;
- (id)bestEffortLayoutAttributesForKey:(id)key;
- (id)layoutAttributesMap;
- (int64_t)lasInteractionTimeForDisplayItem:(id)item;
- (void)enumarateLayoutAttributesForDisplayItem:(id)item block:(id)block;
- (void)setLayoutAttributes:(id)attributes forKey:(id)key;
- (void)updateEntriesWithBlock:(id)block;
@end

@implementation SBDisplayItemLayoutAttributesStorage

- (SBDisplayItemLayoutAttributesStorage)init
{
  v8.receiver = self;
  v8.super_class = SBDisplayItemLayoutAttributesStorage;
  v2 = [(SBDisplayItemLayoutAttributesStorage *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAB00]);
    layoutAttributesMap = v2->_layoutAttributesMap;
    v2->_layoutAttributesMap = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAB00]);
    cachedKeySets = v2->_cachedKeySets;
    v2->_cachedKeySets = v5;
  }

  return v2;
}

- (id)layoutAttributesMap
{
  v2 = [(NSMapTable *)self->_layoutAttributesMap copy];

  return v2;
}

- (id)bestEffortLayoutAttributesForKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (![keyCopy orientation] || (-[SBDisplayItemLayoutAttributesStorage layoutAttributesForKey:](self, "layoutAttributesForKey:", keyCopy), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    cachedKeySets = self->_cachedKeySets;
    displayItem = [keyCopy displayItem];
    v8 = [(NSMapTable *)cachedKeySets objectForKey:displayItem];

    if (v8)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v18;
LABEL_6:
        v13 = 0;
        while (1)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v17 + 1) + 8 * v13);
          if ([v14 orientation])
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
            if (v11)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }

        anyObject = v14;

        if (anyObject)
        {
          goto LABEL_15;
        }
      }

      else
      {
LABEL_12:
      }

      anyObject = [v9 anyObject];
LABEL_15:
      v5 = [(SBDisplayItemLayoutAttributesStorage *)self layoutAttributesForKey:anyObject];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)setLayoutAttributes:(id)attributes forKey:(id)key
{
  keyCopy = key;
  [(NSMapTable *)self->_layoutAttributesMap setObject:attributes forKey:keyCopy];
  displayItem = [keyCopy displayItem];
  v7 = [(NSMapTable *)self->_cachedKeySets objectForKey:displayItem];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
  }

  v10 = v9;

  [v10 addObject:keyCopy];
  [(NSMapTable *)self->_cachedKeySets setObject:v10 forKey:displayItem];
}

- (void)enumarateLayoutAttributesForDisplayItem:(id)item block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v7 = [(NSMapTable *)self->_cachedKeySets objectForKey:item];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 copy];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        v14 = [(SBDisplayItemLayoutAttributesStorage *)self layoutAttributesForKey:v13];
        if (v14)
        {
          blockCopy[2](blockCopy, v13, v14);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (int64_t)lasInteractionTimeForDisplayItem:(id)item
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [(NSMapTable *)self->_cachedKeySets objectForKey:item];
  queue = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [(SBDisplayItemLayoutAttributesStorage *)self layoutAttributesForKey:*(*(&v12 + 1) + 8 * v9)];
        if ([(SBHomeScreenConfigurationServer *)v10 queue]> queue)
        {
          queue = [(SBHomeScreenConfigurationServer *)v10 queue];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return queue;
}

- (void)updateEntriesWithBlock:(id)block
{
  v18 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMapTable *)self->_layoutAttributesMap copy];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(NSMapTable *)self->_layoutAttributesMap objectForKey:v10];
        v12 = blockCopy[2](blockCopy, v10, v11);
        [(NSMapTable *)self->_layoutAttributesMap setObject:v12 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

@end