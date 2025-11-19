@interface SASRequestTrigger
- (SASRequestTrigger)initWithRequestOptions:(id)a3 updateHandle:(id *)a4;
- (void)_updateState:(int64_t)a3;
- (void)addTriggerTarget:(id)a3 action:(SEL)a4;
@end

@implementation SASRequestTrigger

- (SASRequestTrigger)initWithRequestOptions:(id)a3 updateHandle:(id *)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = SASRequestTrigger;
  v7 = [(SASRequestTrigger *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_state = a4 != 0;
    v9 = [v6 copy];
    options = v8->_options;
    v8->_options = v9;

    if (v8->_state == 1)
    {
      [(SASRequestOptions *)v8->_options setUseAutomaticEndpointing:0];
    }

    if (a4)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __57__SASRequestTrigger_initWithRequestOptions_updateHandle___block_invoke;
      v14[3] = &unk_1E82F4730;
      v15 = v8;
      v11 = [v14 copy];
      v12 = *a4;
      *a4 = v11;
    }
  }

  return v8;
}

- (void)_updateState:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  self->_state = a3;
  v4 = [(NSMapTable *)self->_observers copy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [(NSMapTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
        v11 = NSMapGet(v5, v10);
        [v10 performSelector:v11 withObject:{self, v13}];
      }

      v7 = [(NSMapTable *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addTriggerTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  observers = self->_observers;
  key = v6;
  if (!observers)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:2 capacity:1];
    v9 = self->_observers;
    self->_observers = v8;

    v6 = key;
    observers = self->_observers;
  }

  NSMapInsert(observers, v6, a4);
}

@end