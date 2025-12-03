@interface _UIDynamicButtonNotifyingGestureRecognizer
- (BOOL)_shouldReceiveDynamicButton:(id)button;
- (id)initWithPhysicalButtonConfigurations:(void *)configurations dynamicButtonObserver:;
- (uint64_t)_evaluateAllowedPhysicalButtons;
- (void)_dynamicButtonsBegan:(id)began withEvent:(id)event;
- (void)_dynamicButtonsCancelled:(id)cancelled withEvent:(id)event;
- (void)_dynamicButtonsChanged:(id)changed withEvent:(id)event;
- (void)_dynamicButtonsEnded:(id)ended withEvent:(id)event;
@end

@implementation _UIDynamicButtonNotifyingGestureRecognizer

- (uint64_t)_evaluateAllowedPhysicalButtons
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(result + 304);
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v2);
          }

          _button = [*(*(&v10 + 1) + 8 * i) _button];
          v9 = 1 << _button;
          if (_button >= 8)
          {
            v9 = 0;
          }

          v5 |= v9;
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    return [v1 _setAllowedPhysicalButtons:v5];
  }

  return result;
}

- (id)initWithPhysicalButtonConfigurations:(void *)configurations dynamicButtonObserver:
{
  if (!self)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = _UIDynamicButtonNotifyingGestureRecognizer;
  v5 = objc_msgSendSuper2(&v8, sel_initWithTarget_action_, 0, 0);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 38, a2);
    objc_storeWeak(v6 + 36, configurations);
    [(_UIDynamicButtonNotifyingGestureRecognizer *)v6 _evaluateAllowedPhysicalButtons];
    [v6 _setRequiresSystemGesturesToFail:0];
  }

  return v6;
}

- (BOOL)_shouldReceiveDynamicButton:(id)button
{
  _physicalButton = [button _physicalButton];
  if (_physicalButton >= 8)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1 << _physicalButton;
  }

  return (v5 & ~[(_UIAbstractDynamicButtonGestureRecognizer *)self _allowedPhysicalButtons]) == 0;
}

- (void)_dynamicButtonsBegan:(id)began withEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UIDynamicButtonNotifyingGestureRecognizer;
  [_UIAbstractDynamicButtonGestureRecognizer _dynamicButtonsBegan:sel__dynamicButtonsBegan_withEvent_ withEvent:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  beganCopy = began;
  v8 = [beganCopy countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(beganCopy);
      }

      ++self->_activeDynamicButtons;
      if (!--v9)
      {
        v9 = [beganCopy countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  else
  {

    if (!self)
    {
      goto LABEL_11;
    }
  }

  if ([(UIGestureRecognizer *)self state]== UIGestureRecognizerStatePossible)
  {
    [(UIGestureRecognizer *)self setState:1];
  }

LABEL_11:
  WeakRetained = objc_loadWeakRetained(&self->_dynamicButtonObserver);
  _allDynamicButtons = [event _allDynamicButtons];
  [WeakRetained _dynamicButtonGestureRecognizer:self dynamicButtonsDidUpdate:beganCopy allDynamicButtons:_allDynamicButtons];
}

- (void)_dynamicButtonsChanged:(id)changed withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = _UIDynamicButtonNotifyingGestureRecognizer;
  [_UIAbstractDynamicButtonGestureRecognizer _dynamicButtonsChanged:sel__dynamicButtonsChanged_withEvent_ withEvent:?];
  WeakRetained = objc_loadWeakRetained(&self->_dynamicButtonObserver);
  _allDynamicButtons = [event _allDynamicButtons];
  [WeakRetained _dynamicButtonGestureRecognizer:self dynamicButtonsDidUpdate:changed allDynamicButtons:_allDynamicButtons];
}

- (void)_dynamicButtonsEnded:(id)ended withEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UIDynamicButtonNotifyingGestureRecognizer;
  [_UIAbstractDynamicButtonGestureRecognizer _dynamicButtonsEnded:sel__dynamicButtonsEnded_withEvent_ withEvent:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  endedCopy = ended;
  v8 = [endedCopy countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(endedCopy);
      }

      --self->_activeDynamicButtons;
      if (!--v9)
      {
        v9 = [endedCopy countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  else
  {

    if (!self)
    {
      goto LABEL_11;
    }
  }

  if (!self->_activeDynamicButtons)
  {
    [(UIGestureRecognizer *)self setState:3, v13];
  }

LABEL_11:
  WeakRetained = objc_loadWeakRetained(&self->_dynamicButtonObserver);
  _allDynamicButtons = [event _allDynamicButtons];
  [WeakRetained _dynamicButtonGestureRecognizer:self dynamicButtonsDidUpdate:endedCopy allDynamicButtons:_allDynamicButtons];
}

- (void)_dynamicButtonsCancelled:(id)cancelled withEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UIDynamicButtonNotifyingGestureRecognizer;
  [_UIAbstractDynamicButtonGestureRecognizer _dynamicButtonsCancelled:sel__dynamicButtonsCancelled_withEvent_ withEvent:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  cancelledCopy = cancelled;
  v8 = [cancelledCopy countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(cancelledCopy);
      }

      --self->_activeDynamicButtons;
      if (!--v9)
      {
        v9 = [cancelledCopy countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  else
  {

    if (!self)
    {
      goto LABEL_11;
    }
  }

  if (!self->_activeDynamicButtons)
  {
    [(UIGestureRecognizer *)self setState:4, v13];
  }

LABEL_11:
  WeakRetained = objc_loadWeakRetained(&self->_dynamicButtonObserver);
  _allDynamicButtons = [event _allDynamicButtons];
  [WeakRetained _dynamicButtonGestureRecognizer:self dynamicButtonsDidUpdate:cancelledCopy allDynamicButtons:_allDynamicButtons];
}

@end