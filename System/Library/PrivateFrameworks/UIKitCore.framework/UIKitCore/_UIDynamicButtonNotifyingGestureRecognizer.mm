@interface _UIDynamicButtonNotifyingGestureRecognizer
- (BOOL)_shouldReceiveDynamicButton:(id)a3;
- (id)initWithPhysicalButtonConfigurations:(void *)a3 dynamicButtonObserver:;
- (uint64_t)_evaluateAllowedPhysicalButtons;
- (void)_dynamicButtonsBegan:(id)a3 withEvent:(id)a4;
- (void)_dynamicButtonsCancelled:(id)a3 withEvent:(id)a4;
- (void)_dynamicButtonsChanged:(id)a3 withEvent:(id)a4;
- (void)_dynamicButtonsEnded:(id)a3 withEvent:(id)a4;
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

          v8 = [*(*(&v10 + 1) + 8 * i) _button];
          v9 = 1 << v8;
          if (v8 >= 8)
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

- (id)initWithPhysicalButtonConfigurations:(void *)a3 dynamicButtonObserver:
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = _UIDynamicButtonNotifyingGestureRecognizer;
  v5 = objc_msgSendSuper2(&v8, sel_initWithTarget_action_, 0, 0);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 38, a2);
    objc_storeWeak(v6 + 36, a3);
    [(_UIDynamicButtonNotifyingGestureRecognizer *)v6 _evaluateAllowedPhysicalButtons];
    [v6 _setRequiresSystemGesturesToFail:0];
  }

  return v6;
}

- (BOOL)_shouldReceiveDynamicButton:(id)a3
{
  v4 = [a3 _physicalButton];
  if (v4 >= 8)
  {
    v5 = 0;
  }

  else
  {
    v5 = 1 << v4;
  }

  return (v5 & ~[(_UIAbstractDynamicButtonGestureRecognizer *)self _allowedPhysicalButtons]) == 0;
}

- (void)_dynamicButtonsBegan:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UIDynamicButtonNotifyingGestureRecognizer;
  [_UIAbstractDynamicButtonGestureRecognizer _dynamicButtonsBegan:sel__dynamicButtonsBegan_withEvent_ withEvent:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(v7);
      }

      ++self->_activeDynamicButtons;
      if (!--v9)
      {
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
  v12 = [a4 _allDynamicButtons];
  [WeakRetained _dynamicButtonGestureRecognizer:self dynamicButtonsDidUpdate:v7 allDynamicButtons:v12];
}

- (void)_dynamicButtonsChanged:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = _UIDynamicButtonNotifyingGestureRecognizer;
  [_UIAbstractDynamicButtonGestureRecognizer _dynamicButtonsChanged:sel__dynamicButtonsChanged_withEvent_ withEvent:?];
  WeakRetained = objc_loadWeakRetained(&self->_dynamicButtonObserver);
  v8 = [a4 _allDynamicButtons];
  [WeakRetained _dynamicButtonGestureRecognizer:self dynamicButtonsDidUpdate:a3 allDynamicButtons:v8];
}

- (void)_dynamicButtonsEnded:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UIDynamicButtonNotifyingGestureRecognizer;
  [_UIAbstractDynamicButtonGestureRecognizer _dynamicButtonsEnded:sel__dynamicButtonsEnded_withEvent_ withEvent:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(v7);
      }

      --self->_activeDynamicButtons;
      if (!--v9)
      {
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
  v12 = [a4 _allDynamicButtons];
  [WeakRetained _dynamicButtonGestureRecognizer:self dynamicButtonsDidUpdate:v7 allDynamicButtons:v12];
}

- (void)_dynamicButtonsCancelled:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = _UIDynamicButtonNotifyingGestureRecognizer;
  [_UIAbstractDynamicButtonGestureRecognizer _dynamicButtonsCancelled:sel__dynamicButtonsCancelled_withEvent_ withEvent:?];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    while (1)
    {
      if (*v14 != v10)
      {
        objc_enumerationMutation(v7);
      }

      --self->_activeDynamicButtons;
      if (!--v9)
      {
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
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
  v12 = [a4 _allDynamicButtons];
  [WeakRetained _dynamicButtonGestureRecognizer:self dynamicButtonsDidUpdate:v7 allDynamicButtons:v12];
}

@end