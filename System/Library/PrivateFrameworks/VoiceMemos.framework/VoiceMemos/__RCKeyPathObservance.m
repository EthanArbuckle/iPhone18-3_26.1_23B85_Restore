@interface __RCKeyPathObservance
- (NSObject)object;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)remove;
@end

@implementation __RCKeyPathObservance

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a6 == &__keyPathObserverContext)
  {
    (*(self->_observer + 2))();
  }
}

- (void)remove
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_object);
  if (WeakRetained)
  {
    keyPaths = self->_keyPaths;
    if (keyPaths)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = keyPaths;
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          v9 = 0;
          do
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [WeakRetained removeObserver:self forKeyPath:*(*(&v13 + 1) + 8 * v9++) context:{&__keyPathObserverContext, v13}];
          }

          while (v7 != v9);
          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }

      v10 = self->_keyPaths;
      self->_keyPaths = 0;

      observer = self->_observer;
      self->_observer = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(__RCKeyPathObservance *)self remove];
  v3.receiver = self;
  v3.super_class = __RCKeyPathObservance;
  [(__RCKeyPathObservance *)&v3 dealloc];
}

- (NSObject)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end