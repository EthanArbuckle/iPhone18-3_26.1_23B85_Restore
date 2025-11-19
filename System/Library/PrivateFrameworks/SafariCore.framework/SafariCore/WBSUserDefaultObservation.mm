@interface WBSUserDefaultObservation
- (WBSUserDefaultObservation)initWithUserDefaults:(id)a3 keys:(id)a4 queue:(id)a5 notifyForInitialValue:(BOOL)a6 handler:(id)a7;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation WBSUserDefaultObservation

- (WBSUserDefaultObservation)initWithUserDefaults:(id)a3 keys:(id)a4 queue:(id)a5 notifyForInitialValue:(BOOL)a6 handler:(id)a7
{
  v8 = a6;
  v39 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v37.receiver = self;
  v37.super_class = WBSUserDefaultObservation;
  v17 = [(WBSUserDefaultObservation *)&v37 init];
  v18 = v17;
  if (v17)
  {
    v32 = v15;
    objc_storeStrong(&v17->_defaults, a3);
    v19 = [v16 copy];
    handler = v18->_handler;
    v18->_handler = v19;

    v21 = [v14 copy];
    keys = v18->_keys;
    v18->_keys = v21;

    objc_storeStrong(&v18->_queue, a5);
    v35 = 0u;
    v36 = 0u;
    if (v8)
    {
      v23 = 7;
    }

    else
    {
      v23 = 3;
    }

    v33 = 0uLL;
    v34 = 0uLL;
    v24 = v14;
    v25 = [v24 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v34;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v34 != v27)
          {
            objc_enumerationMutation(v24);
          }

          [v13 addObserver:v18 forKeyPath:*(*(&v33 + 1) + 8 * i) options:v23 context:kvoContext];
        }

        v26 = [v24 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v26);
    }

    v29 = v18;
    v15 = v32;
  }

  v30 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)dealloc
{
  [(WBSUserDefaultObservation *)self invalidate];
  v3.receiver = self;
  v3.super_class = WBSUserDefaultObservation;
  [(WBSUserDefaultObservation *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (kvoContext == a6)
  {
    v12 = *MEMORY[0x1E696A500];
    v13 = a5;
    v11 = [v13 objectForKeyedSubscript:v12];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];

    if (v11 | v14 && ([v11 isEqual:v14] & 1) == 0)
    {
      queue = self->_queue;
      if (queue)
      {
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __76__WBSUserDefaultObservation_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v17[3] = &unk_1E7CF1708;
        v17[4] = self;
        v18 = v10;
        dispatch_async(queue, v17);
      }

      else
      {
        defaults = self->_defaults;
        (*(self->_handler + 2))();
      }
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = WBSUserDefaultObservation;
    v11 = a5;
    [(WBSUserDefaultObservation *)&v19 observeValueForKeyPath:v10 ofObject:a4 change:v11 context:a6];
  }
}

uint64_t __76__WBSUserDefaultObservation_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 8);
  return (*(*(v2 + 16) + 16))();
}

- (void)invalidate
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_handler)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_keys;
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

          [(NSUserDefaults *)self->_defaults removeObserver:self forKeyPath:*(*(&v10 + 1) + 8 * v7++) context:kvoContext, v10];
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    handler = self->_handler;
    self->_handler = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end