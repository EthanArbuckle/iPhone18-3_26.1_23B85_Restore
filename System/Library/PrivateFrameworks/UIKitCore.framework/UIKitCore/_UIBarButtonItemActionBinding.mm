@interface _UIBarButtonItemActionBinding
- (_UIBarButtonItemActionBinding)initWithBarButtonItems:(id)items registerObservers:(id)observers unregisterObservers:(id)unregisterObservers;
- (void)_update:(id)_update;
- (void)startMonitoring;
- (void)stopMonitoring;
@end

@implementation _UIBarButtonItemActionBinding

- (_UIBarButtonItemActionBinding)initWithBarButtonItems:(id)items registerObservers:(id)observers unregisterObservers:(id)unregisterObservers
{
  itemsCopy = items;
  observersCopy = observers;
  unregisterObserversCopy = unregisterObservers;
  v19.receiver = self;
  v19.super_class = _UIBarButtonItemActionBinding;
  v11 = [(_UIBarButtonItemActionBinding *)&v19 init];
  if (v11)
  {
    v12 = [itemsCopy copy];
    barButtonItems = v11->_barButtonItems;
    v11->_barButtonItems = v12;

    v14 = _Block_copy(observersCopy);
    registerObservers = v11->_registerObservers;
    v11->_registerObservers = v14;

    v16 = _Block_copy(unregisterObserversCopy);
    unregisterObservers = v11->_unregisterObservers;
    v11->_unregisterObservers = v16;
  }

  return v11;
}

- (void)_update:(id)_update
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_barButtonItems;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        target = [v8 target];
        action = [v8 action];
        if (target)
        {
          v11 = action == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          [v8 setEnabled:{objc_msgSend(target, "canPerformAction:withSender:", action, 0)}];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)startMonitoring
{
  if ((*&self->_flags & 1) == 0)
  {
    *&self->_flags |= 1u;
    (*(self->_registerObservers + 2))();

    [(_UIBarButtonItemActionBinding *)self _update:0];
  }
}

- (void)stopMonitoring
{
  if (*&self->_flags)
  {
    *&self->_flags &= ~1u;
    unregisterObservers = self->_unregisterObservers;
    if (unregisterObservers)
    {
      unregisterObservers[2](unregisterObservers, self, sel__update_);
    }
  }
}

@end