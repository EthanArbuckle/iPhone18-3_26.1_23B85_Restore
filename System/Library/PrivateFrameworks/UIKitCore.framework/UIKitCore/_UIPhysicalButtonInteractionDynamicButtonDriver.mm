@interface _UIPhysicalButtonInteractionDynamicButtonDriver
- (_UIPhysicalButtonInteractionDynamicButtonDriver)init;
- (_UIPhysicalButtonInteractionDynamicButtonDriver)initWithReceiver:(id)receiver;
- (void)_dynamicButtonGestureRecognizer:(id)recognizer dynamicButtonsDidUpdate:(id)update allDynamicButtons:(id)buttons;
- (void)_installToViewIfNeeded:(id)needed;
- (void)_physicalButtonConfigurationsDidChange;
@end

@implementation _UIPhysicalButtonInteractionDynamicButtonDriver

- (_UIPhysicalButtonInteractionDynamicButtonDriver)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteractionDynamicButtonDriver.m" lineNumber:31 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonInteractionDynamicButtonDriver init]", objc_opt_class()}];

  return 0;
}

- (_UIPhysicalButtonInteractionDynamicButtonDriver)initWithReceiver:(id)receiver
{
  v7.receiver = self;
  v7.super_class = _UIPhysicalButtonInteractionDynamicButtonDriver;
  v4 = [(_UIPhysicalButtonInteractionDynamicButtonDriver *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_receiver, receiver);
  }

  return v5;
}

- (void)_installToViewIfNeeded:(id)needed
{
  dynamicButtonGesture = self->_dynamicButtonGesture;
  if (!dynamicButtonGesture)
  {
    v6 = [_UIDynamicButtonNotifyingGestureRecognizer alloc];
    WeakRetained = objc_loadWeakRetained(&self->_receiver);
    _configurationSet = [WeakRetained _configurationSet];
    v9 = [(_UIDynamicButtonNotifyingGestureRecognizer *)v6 initWithPhysicalButtonConfigurations:_configurationSet dynamicButtonObserver:self];
    v10 = self->_dynamicButtonGesture;
    self->_dynamicButtonGesture = v9;

    dynamicButtonGesture = self->_dynamicButtonGesture;
  }

  [needed addGestureRecognizer:dynamicButtonGesture];
}

- (void)_physicalButtonConfigurationsDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);
  _configurationSet = [WeakRetained _configurationSet];
  dynamicButtonGesture = self->_dynamicButtonGesture;
  if (dynamicButtonGesture)
  {
    [(_UIDynamicButtonNotifyingGestureRecognizer *)dynamicButtonGesture _evaluateAllowedPhysicalButtons];
  }
}

- (void)_dynamicButtonGestureRecognizer:(id)recognizer dynamicButtonsDidUpdate:(id)update allDynamicButtons:(id)buttons
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
        selfCopy = self;
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        selfCopy = [v27 stringWithFormat:@"<%@: %p>", v30, selfCopy];
      }

      else
      {
        selfCopy = @"(nil)";
      }

      v32 = selfCopy;
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
      updateCopy = update;
      _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_ERROR, "Received updated dynamic buttons for driver: %@; interaction: %@; buttons: %@", buf, 0x20u);
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_receiver);
  _configurationSet = [WeakRetained _configurationSet];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = update;
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
        _physicalButton = [v12 _physicalButton];
        v14 = [_configurationSet _configurationForButton:_physicalButton];
        if (v14)
        {
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          buttonsCopy = buttons;
          v16 = [buttonsCopy countByEnumeratingWithState:&v43 objects:v51 count:16];
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
                  objc_enumerationMutation(buttonsCopy);
                }

                v20 = *(*(&v43 + 1) + 8 * i);
                if (v20 != v12 && [v20 _physicalButton] == _physicalButton)
                {

                  [v12 _phase];
                  goto LABEL_20;
                }
              }

              v17 = [buttonsCopy countByEnumeratingWithState:&v43 objects:v51 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          _phase = [v12 _phase];
          if (_phase > 4)
          {
LABEL_20:
            v22 = 1;
          }

          else
          {
            v22 = qword_18A679918[_phase];
          }

          currentHandler = [_UIPhysicalButtonAction _actionFromDynamicButton:v12 withConfiguration:v14 state:v22 andDriver:[(_UIPhysicalButtonInteractionDynamicButtonDriver *)self _driverType]];
          v24 = objc_loadWeakRetained(&self->_receiver);
          [v24 _driver:self didCreateProposedAction:currentHandler];
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteractionDynamicButtonDriver.m" lineNumber:78 description:{@"Invalid state: no configuration for physical button allowed by gesture: allowedPhysicalButtons: %lu; physicalButtonConfigurations: %@", -[_UIAbstractDynamicButtonGestureRecognizer _allowedPhysicalButtons](self->_dynamicButtonGesture, "_allowedPhysicalButtons"), _configurationSet}];
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