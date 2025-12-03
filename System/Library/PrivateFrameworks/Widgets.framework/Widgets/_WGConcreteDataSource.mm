@interface _WGConcreteDataSource
- (_WGConcreteDataSource)init;
- (id)datumWithIdentifier:(id)identifier;
- (void)addObserver:(id)observer completion:(id)completion;
- (void)dataSource:(id)source removeDatumWithIdentifier:(id)identifier observerUpdateBlock:(id)block;
- (void)dataSource:(id)source replaceWithDatum:(id)datum observerUpdateBlock:(id)block;
- (void)removeObserver:(id)observer completion:(id)completion;
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

- (void)addObserver:(id)observer completion:(id)completion
{
  observerCopy = observer;
  completionCopy = completion;
  if (observerCopy)
  {
    [(NSMutableArray *)self->_observers addObject:observerCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)removeObserver:(id)observer completion:(id)completion
{
  observerCopy = observer;
  completionCopy = completion;
  if (observerCopy)
  {
    [(NSMutableArray *)self->_observers removeObject:observerCopy];
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)dataSource:(id)source replaceWithDatum:(id)datum observerUpdateBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  datumCopy = datum;
  blockCopy = block;
  v9 = blockCopy;
  if (datumCopy && blockCopy)
  {
    identifiersToData = self->_identifiersToData;
    datumIdentifier = [datumCopy datumIdentifier];
    [(NSMutableDictionary *)identifiersToData setObject:datumCopy forKey:datumIdentifier];

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

          (v9)[2](v9, *(*(&v17 + 1) + 8 * v16++), datumCopy);
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (void)dataSource:(id)source removeDatumWithIdentifier:(id)identifier observerUpdateBlock:(id)block
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  blockCopy = block;
  v9 = [identifierCopy length];
  if (blockCopy && v9)
  {
    v10 = [(NSMutableDictionary *)self->_identifiersToData objectForKey:identifierCopy];
    if (v10)
    {
      [(NSMutableDictionary *)self->_identifiersToData removeObjectForKey:identifierCopy];
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

            blockCopy[2](blockCopy, *(*(&v16 + 1) + 8 * v15++), v10);
          }

          while (v13 != v15);
          v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }
  }
}

- (id)datumWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_identifiersToData objectForKey:identifierCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end