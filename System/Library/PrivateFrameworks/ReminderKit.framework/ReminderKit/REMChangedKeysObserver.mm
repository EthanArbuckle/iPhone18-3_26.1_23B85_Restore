@interface REMChangedKeysObserver
- (REMChangedKeysObserver)initWithTarget:(id)target keysToObserve:(id)observe includeInitial:(BOOL)initial;
- (void)dealloc;
- (void)keyDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation REMChangedKeysObserver

- (REMChangedKeysObserver)initWithTarget:(id)target keysToObserve:(id)observe includeInitial:(BOOL)initial
{
  initialCopy = initial;
  v29 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  observeCopy = observe;
  v27.receiver = self;
  v27.super_class = REMChangedKeysObserver;
  v11 = [(REMChangedKeysObserver *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_target, target);
    objc_storeStrong(&v12->_keysToObserve, observe);
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mutableChangedKeys = v12->_mutableChangedKeys;
    v12->_mutableChangedKeys = v13;

    v25 = 0u;
    v26 = 0u;
    if (initialCopy)
    {
      v15 = 7;
    }

    else
    {
      v15 = 3;
    }

    v23 = 0uLL;
    v24 = 0uLL;
    v16 = observeCopy;
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [targetCopy addObserver:v12 forKeyPath:*(*(&v23 + 1) + 8 * i) options:v15 context:{0, v23}];
        }

        v18 = [v16 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v18);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_keysToObserve;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [self->_target removeObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v7++) context:0];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = REMChangedKeysObserver;
  [(REMChangedKeysObserver *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v24 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v9 = *MEMORY[0x1E696A500];
  changeCopy = change;
  v11 = [changeCopy objectForKeyedSubscript:v9];
  v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (v11 != v12)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v14 = [v12 isEqual:null];

    if (v14)
    {

      v12 = 0;
    }

    if (v11 != v12 && ([v11 isEqual:v12] & 1) == 0)
    {
      v15 = +[REMLog utility];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = 138412802;
        v19 = pathCopy;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = v12;
        _os_log_debug_impl(&dword_19A0DB000, v15, OS_LOG_TYPE_DEBUG, "REMChangedKeysObserver detected a change {keyPath: %@, old: %@, new: %@}", &v18, 0x20u);
      }

      mutableChangedKeys = [(REMChangedKeysObserver *)self mutableChangedKeys];
      [mutableChangedKeys addObject:pathCopy];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)keyDidChange:(id)change
{
  changeCopy = change;
  mutableChangedKeys = [(REMChangedKeysObserver *)self mutableChangedKeys];
  [mutableChangedKeys addObject:changeCopy];
}

@end