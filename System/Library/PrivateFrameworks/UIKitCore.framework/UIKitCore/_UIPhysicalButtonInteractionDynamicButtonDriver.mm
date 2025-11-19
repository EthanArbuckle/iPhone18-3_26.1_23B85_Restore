@interface _UIPhysicalButtonInteractionDynamicButtonDriver
- (_UIPhysicalButtonInteractionDynamicButtonDriver)init;
- (_UIPhysicalButtonInteractionDynamicButtonDriver)initWithReceiver:(id)a3;
- (void)_dynamicButtonGestureRecognizer:(id)a3 dynamicButtonsDidUpdate:(id)a4 allDynamicButtons:(id)a5;
- (void)_installToViewIfNeeded:(id)a3;
- (void)_physicalButtonConfigurationsDidChange;
@end

@implementation _UIPhysicalButtonInteractionDynamicButtonDriver

- (_UIPhysicalButtonInteractionDynamicButtonDriver)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteractionDynamicButtonDriver.m" lineNumber:31 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonInteractionDynamicButtonDriver init]", objc_opt_class()}];

  return 0;
}

- (_UIPhysicalButtonInteractionDynamicButtonDriver)initWithReceiver:(id)a3
{
  v7.receiver = self;
  v7.super_class = _UIPhysicalButtonInteractionDynamicButtonDriver;
  v4 = [(_UIPhysicalButtonInteractionDynamicButtonDriver *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_receiver, a3);
  }

  return v5;
}

- (void)_installToViewIfNeeded:(id)a3
{
  dynamicButtonGesture = self->_dynamicButtonGesture;
  if (!dynamicButtonGesture)
  {
    v6 = [_UIDynamicButtonNotifyingGestureRecognizer alloc];
    WeakRetained = objc_loadWeakRetained(&self->_receiver);
    v8 = [WeakRetained _configurationSet];
    v9 = [(_UIDynamicButtonNotifyingGestureRecognizer *)v6 initWithPhysicalButtonConfigurations:v8 dynamicButtonObserver:self];
    v10 = self->_dynamicButtonGesture;
    self->_dynamicButtonGesture = v9;

    dynamicButtonGesture = self->_dynamicButtonGesture;
  }

  [a3 addGestureRecognizer:dynamicButtonGesture];
}

- (void)_physicalButtonConfigurationsDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);
  v3 = [WeakRetained _configurationSet];
  dynamicButtonGesture = self->_dynamicButtonGesture;
  if (dynamicButtonGesture)
  {
    [(_UIDynamicButtonNotifyingGestureRecognizer *)dynamicButtonGesture _evaluateAllowedPhysicalButtons];
  }
}

- (void)_dynamicButtonGestureRecognizer:(id)a3 dynamicButtonsDidUpdate:(id)a4 allDynamicButtons:(id)a5
{
  v59 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("PhysicalButtonInteraction", &_dynamicButtonGestureRecognizer_dynamicButtonsDidUpdate_allDynamicButtons____s_category);
  if (*CategoryCachedImpl)
  {
    v26 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v27 = MEMORY[0x1E696AEC0];
        v28 = self;
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = [v27 stringWithFormat:@"<%@: %p>", v30, v28];
      }

      else
      {
        v31 = @"(nil)";
      }

      v32 = v31;
      v33 = objc_loadWeakRetained(&self->_receiver);
      if (v33)
      {
        v34 = MEMORY[0x1E696AEC0];
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = [v34 stringWithFormat:@"<%@: %p>", v36, v33];
      }

      else
      {
        v37 = @"(nil)";
      }

      *buf = 138412802;
      v54 = v32;
      v55 = 2112;
      v56 = v37;
      v57 = 2112;
      v58 = a4;
      _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Received updated dynamic buttons for driver: %@; interaction: %@; buttons: %@", buf, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_receiver);
  v42 = [WeakRetained _configurationSet];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = a4;
  v9 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v40 = *v48;
    do
    {
      v11 = 0;
      do
      {
        if (*v48 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * v11);
        v13 = [v12 _physicalButton];
        v14 = [v42 _configurationForButton:v13];
        if (v14)
        {
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v15 = a5;
          v16 = [v15 countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v44;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v44 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v43 + 1) + 8 * i);
                if (v20 != v12 && [v20 _physicalButton] == v13)
                {

                  [v12 _phase];
                  goto LABEL_20;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v43 objects:v51 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v21 = [v12 _phase];
          if (v21 > 4)
          {
LABEL_20:
            v22 = 1;
          }

          else
          {
            v22 = qword_18A679918[v21];
          }

          v23 = [_UIPhysicalButtonAction _actionFromDynamicButton:v12 withConfiguration:v14 state:v22 andDriver:[(_UIPhysicalButtonInteractionDynamicButtonDriver *)self _driverType]];
          v24 = objc_loadWeakRetained(&self->_receiver);
          [v24 _driver:self didCreateProposedAction:v23];
        }

        else
        {
          v23 = [MEMORY[0x1E696AAA8] currentHandler];
          [v23 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteractionDynamicButtonDriver.m" lineNumber:78 description:{@"Invalid state: no configuration for physical button allowed by gesture: allowedPhysicalButtons: %lu; physicalButtonConfigurations: %@", -[_UIAbstractDynamicButtonGestureRecognizer _allowedPhysicalButtons](self->_dynamicButtonGesture, "_allowedPhysicalButtons"), v42}];
        }

        ++v11;
      }

      while (v11 != v10);
      v25 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
      v10 = v25;
    }

    while (v25);
  }
}

@end