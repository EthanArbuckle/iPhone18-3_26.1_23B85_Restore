@interface _VUIAppDocumentUpdateEventObserverContext
- (id)_refreshTimerWithRefreshTimeEventDescriptor:(id)a3;
- (void)_cancelAllRefreshTimers;
- (void)_cancelRefreshTimer:(id)a3;
- (void)_cancelRefreshTimers:(id)a3;
- (void)_startRefreshTimer:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)setEventDescriptors:(id)a3;
- (void)updateDescriptorsWithDescriptors:(id)a3;
@end

@implementation _VUIAppDocumentUpdateEventObserverContext

- (void)dealloc
{
  [(_VUIAppDocumentUpdateEventObserverContext *)self invalidate];
  v3.receiver = self;
  v3.super_class = _VUIAppDocumentUpdateEventObserverContext;
  [(_VUIAppDocumentUpdateEventObserverContext *)&v3 dealloc];
}

- (void)invalidate
{
  [(_VUIAppDocumentUpdateEventObserverContext *)self setEventDescriptors:0];
  [(_VUIAppDocumentUpdateEventObserverContext *)self setRefreshTimerFiredBlock:0];

  [(_VUIAppDocumentUpdateEventObserverContext *)self _cancelAllRefreshTimers];
}

- (void)setEventDescriptors:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [a3 copy];
  eventDescriptors = self->_eventDescriptors;
  self->_eventDescriptors = v4;

  v6 = [(_VUIAppDocumentUpdateEventObserverContext *)self refreshTimerByEventDescriptor];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_eventDescriptors;
  v9 = [(NSSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
          v15 = [v6 objectForKey:{v14, v18}];
          if (v15)
          {
            v16 = v15;
            [v6 removeObjectForKey:v14];
            goto LABEL_10;
          }

          v16 = [(_VUIAppDocumentUpdateEventObserverContext *)self _refreshTimerWithRefreshTimeEventDescriptor:v14];
          [(_VUIAppDocumentUpdateEventObserverContext *)self _startRefreshTimer:v16];
          if (v16)
          {
LABEL_10:
            [v7 setObject:v16 forKey:v14];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSSet *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v17 = [v6 allValues];
  [(_VUIAppDocumentUpdateEventObserverContext *)self _cancelRefreshTimers:v17];

  [(_VUIAppDocumentUpdateEventObserverContext *)self setRefreshTimerByEventDescriptor:v7];
}

- (void)updateDescriptorsWithDescriptors:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_VUIAppDocumentUpdateEventObserverContext *)self eventDescriptors];
  v6 = [v5 setByAddingObjectsFromSet:v4];
  eventDescriptors = self->_eventDescriptors;
  self->_eventDescriptors = v6;

  v8 = [(_VUIAppDocumentUpdateEventObserverContext *)self refreshTimerByEventDescriptor];
  v9 = [v8 mutableCopy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
          v17 = [v9 objectForKey:{v16, v19}];
          if (v17)
          {
            [v9 removeObjectForKey:v16];
            [(_VUIAppDocumentUpdateEventObserverContext *)self _cancelRefreshTimer:v17];
          }

          v18 = [(_VUIAppDocumentUpdateEventObserverContext *)self _refreshTimerWithRefreshTimeEventDescriptor:v16];

          if (v18)
          {
            [(_VUIAppDocumentUpdateEventObserverContext *)self _startRefreshTimer:v18];
            [v9 setObject:v18 forKey:v16];
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  [(_VUIAppDocumentUpdateEventObserverContext *)self setRefreshTimerByEventDescriptor:v9];
}

- (id)_refreshTimerWithRefreshTimeEventDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 delayInSeconds];
  if (v5)
  {
    v6 = v5;
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    objc_initWeak(&location, self);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __89___VUIAppDocumentUpdateEventObserverContext__refreshTimerWithRefreshTimeEventDescriptor___block_invoke;
    handler[3] = &unk_1E872F038;
    objc_copyWeak(&v12, &location);
    v11 = v4;
    dispatch_source_set_event_handler(v7, handler);
    v8 = dispatch_time(0, 1000000000 * v6);
    dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_startRefreshTimer:(id)a3
{
  if (a3)
  {
    dispatch_resume(a3);
  }
}

- (void)_cancelRefreshTimer:(id)a3
{
  if (a3)
  {
    dispatch_source_cancel(a3);
  }
}

- (void)_cancelRefreshTimers:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(_VUIAppDocumentUpdateEventObserverContext *)self _cancelRefreshTimer:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_cancelAllRefreshTimers
{
  v3 = [(_VUIAppDocumentUpdateEventObserverContext *)self refreshTimerByEventDescriptor];
  v4 = [v3 allValues];

  [(_VUIAppDocumentUpdateEventObserverContext *)self setRefreshTimerByEventDescriptor:0];
  [(_VUIAppDocumentUpdateEventObserverContext *)self _cancelRefreshTimers:v4];
}

@end