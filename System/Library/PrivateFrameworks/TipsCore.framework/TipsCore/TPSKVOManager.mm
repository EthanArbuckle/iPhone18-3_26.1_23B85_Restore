@interface TPSKVOManager
- (TPSKVOManager)initWithObserver:(id)observer;
- (__CFDictionary)KVODictionary;
- (id)observer;
- (void)addKVOObject:(id)object forKeyPath:(id)path options:(unint64_t)options context:(void *)context;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeAllKVOObjects;
- (void)removeKVOForObject:(id)object;
- (void)removeKVOObject:(id)object forKeyPath:(id)path;
@end

@implementation TPSKVOManager

- (TPSKVOManager)initWithObserver:(id)observer
{
  observerCopy = observer;
  v8.receiver = self;
  v8.super_class = TPSKVOManager;
  v5 = [(TPSKVOManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(TPSKVOManager *)v5 setObserver:observerCopy];
  }

  return v6;
}

- (void)dealloc
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  [(TPSKVOManager *)self removeAllKVOObjects];
  KVODictionary = self->_KVODictionary;
  if (KVODictionary)
  {
    CFRelease(KVODictionary);
  }

  [(TPSKVOManager *)self setObserver:0];
  v4.receiver = self;
  v4.super_class = TPSKVOManager;
  [(TPSKVOManager *)&v4 dealloc];
}

- (__CFDictionary)KVODictionary
{
  result = self->_KVODictionary;
  if (!result)
  {
    result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    self->_KVODictionary = result;
  }

  return result;
}

- (void)addKVOObject:(id)object forKeyPath:(id)path options:(unint64_t)options context:(void *)context
{
  key = object;
  pathCopy = path;
  if (key && pathCopy)
  {
    if ([(TPSKVOManager *)self KVODictionary]&& (CFDictionaryGetValue([(TPSKVOManager *)self KVODictionary], key), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      array = v11;
      if ([v11 indexOfObject:pathCopy] == 0x7FFFFFFFFFFFFFFFLL)
      {
        [key addObserver:self forKeyPath:pathCopy options:options context:context];
        [array addObject:pathCopy];
      }
    }

    else
    {
      [key addObserver:self forKeyPath:pathCopy options:options context:context];
      array = [MEMORY[0x1E695DF70] array];
      [array addObject:pathCopy];
      CFDictionarySetValue([(TPSKVOManager *)self KVODictionary], key, array);
    }
  }
}

- (void)removeKVOObject:(id)object forKeyPath:(id)path
{
  key = object;
  pathCopy = path;
  if (pathCopy && key && self->_KVODictionary)
  {
    v7 = CFDictionaryGetValue([(TPSKVOManager *)self KVODictionary], key);
    v8 = v7;
    if (v7)
    {
      v9 = [v7 indexOfObject:pathCopy];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = v9;
        [key removeObserver:self forKeyPath:pathCopy];
        [v8 removeObjectAtIndex:v10];
      }
    }
  }
}

- (void)removeKVOForObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (objectCopy && self->_KVODictionary)
  {
    v5 = CFDictionaryGetValue([(TPSKVOManager *)self KVODictionary], objectCopy);
    v6 = v5;
    if (v5)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v13;
        do
        {
          v10 = 0;
          do
          {
            if (*v13 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [objectCopy removeObserver:self forKeyPath:*(*(&v12 + 1) + 8 * v10++)];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v8);
      }

      CFDictionaryRemoveValue(self->_KVODictionary, objectCopy);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeAllKVOObjects
{
  v51 = *MEMORY[0x1E69E9840];
  KVODictionary = self->_KVODictionary;
  if (KVODictionary)
  {
    Count = CFDictionaryGetCount(KVODictionary);
    if (Count)
    {
      v5 = Count;
      memset(v50, 0, 512);
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      *values = 0u;
      v19 = 0u;
      CFDictionaryGetKeysAndValues(self->_KVODictionary, v50, values);
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          v7 = values[i];
          v13 = 0u;
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v14;
            do
            {
              v11 = 0;
              do
              {
                if (*v14 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                [*(v50 + i) removeObserver:self forKeyPath:*(*(&v13 + 1) + 8 * v11++)];
              }

              while (v9 != v11);
              v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
            }

            while (v9);
          }
        }
      }

      CFDictionaryRemoveAllValues(self->_KVODictionary);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  observer = [(TPSKVOManager *)self observer];
  v13 = objc_opt_respondsToSelector();

  observer2 = [(TPSKVOManager *)self observer];
  observer3 = observer2;
  if (v13)
  {
    [observer2 performSelector:context withObject:objectCopy withObject:changeCopy];
  }

  else
  {
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }

    observer3 = [(TPSKVOManager *)self observer];
    [observer3 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }

LABEL_6:
}

- (id)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end