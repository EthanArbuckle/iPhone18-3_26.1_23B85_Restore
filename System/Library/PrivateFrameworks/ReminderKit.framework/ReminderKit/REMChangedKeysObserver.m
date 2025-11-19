@interface REMChangedKeysObserver
- (REMChangedKeysObserver)initWithTarget:(id)a3 keysToObserve:(id)a4 includeInitial:(BOOL)a5;
- (void)dealloc;
- (void)keyDidChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation REMChangedKeysObserver

- (REMChangedKeysObserver)initWithTarget:(id)a3 keysToObserve:(id)a4 includeInitial:(BOOL)a5
{
  v5 = a5;
  v29 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v27.receiver = self;
  v27.super_class = REMChangedKeysObserver;
  v11 = [(REMChangedKeysObserver *)&v27 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_target, a3);
    objc_storeStrong(&v12->_keysToObserve, a4);
    v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mutableChangedKeys = v12->_mutableChangedKeys;
    v12->_mutableChangedKeys = v13;

    v25 = 0u;
    v26 = 0u;
    if (v5)
    {
      v15 = 7;
    }

    else
    {
      v15 = 3;
    }

    v23 = 0uLL;
    v24 = 0uLL;
    v16 = v10;
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

          [v9 addObserver:v12 forKeyPath:*(*(&v23 + 1) + 8 * i) options:v15 context:{0, v23}];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = *MEMORY[0x1E696A500];
  v10 = a5;
  v11 = [v10 objectForKeyedSubscript:v9];
  v12 = [v10 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

  if (v11 != v12)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
    v14 = [v12 isEqual:v13];

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
        v19 = v8;
        v20 = 2112;
        v21 = v11;
        v22 = 2112;
        v23 = v12;
        _os_log_debug_impl(&dword_19A0DB000, v15, OS_LOG_TYPE_DEBUG, "REMChangedKeysObserver detected a change {keyPath: %@, old: %@, new: %@}", &v18, 0x20u);
      }

      v16 = [(REMChangedKeysObserver *)self mutableChangedKeys];
      [v16 addObject:v8];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)keyDidChange:(id)a3
{
  v4 = a3;
  v5 = [(REMChangedKeysObserver *)self mutableChangedKeys];
  [v5 addObject:v4];
}

@end