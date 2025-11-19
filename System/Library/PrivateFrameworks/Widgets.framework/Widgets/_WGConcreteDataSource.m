@interface _WGConcreteDataSource
- (_WGConcreteDataSource)init;
- (id)datumWithIdentifier:(id)a3;
- (void)addObserver:(id)a3 completion:(id)a4;
- (void)dataSource:(id)a3 removeDatumWithIdentifier:(id)a4 observerUpdateBlock:(id)a5;
- (void)dataSource:(id)a3 replaceWithDatum:(id)a4 observerUpdateBlock:(id)a5;
- (void)removeObserver:(id)a3 completion:(id)a4;
@end

@implementation _WGConcreteDataSource

- (_WGConcreteDataSource)init
{
  v8.receiver = self;
  v8.super_class = _WGConcreteDataSource;
  v2 = [(_WGConcreteDataSource *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifiersToData = v2->_identifiersToData;
    v2->_identifiersToData = v5;
  }

  return v2;
}

- (void)addObserver:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(NSMutableArray *)self->_observers addObject:v7];
  }

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)removeObserver:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [(NSMutableArray *)self->_observers removeObject:v7];
  }

  if (v6)
  {
    v6[2](v6);
  }
}

- (void)dataSource:(id)a3 replaceWithDatum:(id)a4 observerUpdateBlock:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7 && v8)
  {
    identifiersToData = self->_identifiersToData;
    v11 = [v7 datumIdentifier];
    [(NSMutableDictionary *)identifiersToData setObject:v7 forKey:v11];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = self->_observers;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          (v9)[2](v9, *(*(&v17 + 1) + 8 * v16++), v7);
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (void)dataSource:(id)a3 removeDatumWithIdentifier:(id)a4 observerUpdateBlock:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = [v7 length];
  if (v8 && v9)
  {
    v10 = [(NSMutableDictionary *)self->_identifiersToData objectForKey:v7];
    if (v10)
    {
      [(NSMutableDictionary *)self->_identifiersToData removeObjectForKey:v7];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v11 = self->_observers;
      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          v15 = 0;
          do
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v8[2](v8, *(*(&v16 + 1) + 8 * v15++), v10);
          }

          while (v13 != v15);
          v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }
}

- (id)datumWithIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMutableDictionary *)self->_identifiersToData objectForKey:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end