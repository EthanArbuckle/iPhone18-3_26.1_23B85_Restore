@interface _UIPhysicalButtonInteraction
- (NSArray)_driverClasses;
- (UIView)view;
- (_UIPhysicalButtonInteraction)init;
- (_UIPhysicalButtonInteraction)initWithConfigurations:(id)configurations delegate:(id)delegate;
- (_UIPhysicalButtonInteractionDelegate)_delegate;
- (id)_bsActionDriver;
- (id)_driverForType:(uint64_t)type;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_propagatePropertiesToConfigurationSetReturningIfHasExclusiveBehavior:(uint64_t)behavior;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_driver:(id)_driver didCreateProposedAction:(id)action;
- (void)_enumerateConfigurationsSynchronizingPropertiesAndNotifyingArbiter:(uint64_t)arbiter;
- (void)_evaluateWithinSceneBoundsIfNeededWithChangeHandler:(uint64_t)handler;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_installViewComponentsAndRegisterIfAble;
- (void)_registerWithArbiterIfAble;
- (void)_registerWithArbiterSkippingEvaluationAndObservation;
- (void)_setConfigurations:(id)configurations;
- (void)_setEnabled:(BOOL)enabled;
- (void)_setIdentifier:(unint64_t)identifier;
- (void)_setName:(id)name;
- (void)_setWantsRelaxedVisibilityRequirement:(BOOL)requirement;
- (void)_setWantsSystemShellExclusivePriority:(BOOL)priority;
- (void)_uninstallViewComponentsAndUnregister;
- (void)_unregisterFromArbiter;
- (void)_willMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_windowDidMoveToScene:(id)scene;
- (void)_windowWillMoveToScene:(id)scene;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation _UIPhysicalButtonInteraction

- (void)_installViewComponentsAndRegisterIfAble
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ((*(self + 32) & 0x10) != 0)
    {
      WeakRetained = objc_loadWeakRetained((self + 40));
      [(UIView *)WeakRetained _addGeometryChangeObserver:self];
    }

    v3 = objc_loadWeakRetained((self + 40));

    if (v3)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = *(self + 8);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v11 + 1) + 8 * i);
            v10 = objc_loadWeakRetained((self + 40));
            [v9 _installToViewIfNeeded:{v10, v11}];
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }

    [(_UIPhysicalButtonInteraction *)self _registerWithArbiterIfAble];
  }
}

- (void)_registerWithArbiterIfAble
{
  if (!self)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((self + 40));
  _window = [WeakRetained _window];

  _windowHostingScene = [_window _windowHostingScene];
  if (_windowHostingScene)
  {
    [(_UIPhysicalButtonInteraction *)self _registerWithArbiterSkippingEvaluationAndObservation];
    if (!_window)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (_window)
  {
    *(self + 32) |= 2u;
LABEL_7:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__windowWillMoveToScene_ name:@"_UIWindowWillMoveToSceneNotification" object:_window];
    [defaultCenter addObserver:self selector:sel__windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:_window];
  }

LABEL_8:
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIPhysicalButtonInteraction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (NSArray)_driverClasses
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_uninstallViewComponentsAndUnregister
{
  v16 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ((*(self + 32) & 0x10) != 0)
    {
      WeakRetained = objc_loadWeakRetained((self + 40));
      [(UIView *)WeakRetained _removeGeometryChangeObserver:self];
    }

    v3 = objc_loadWeakRetained((self + 40));

    if (v3)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = *(self + 8);
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v11 + 1) + 8 * i);
            v10 = objc_loadWeakRetained((self + 40));
            [v9 _uninstallFromViewIfNeeded:{v10, v11}];
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }

    [(_UIPhysicalButtonInteraction *)self _unregisterFromArbiter];
  }
}

- (void)_registerWithArbiterSkippingEvaluationAndObservation
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 40));
    _window = [WeakRetained _window];
    _windowHostingScene = [_window _windowHostingScene];

    _physicalButtonInteractionArbiter = [_windowHostingScene _physicalButtonInteractionArbiter];
    if (_UIPhysicalButtonInteractionArbiterIsAvailableForScene(_windowHostingScene))
    {
      if (!_physicalButtonInteractionArbiter || *(self + 80))
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel__registerWithArbiterSkippingEvaluationAndObservation object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:682 description:{@"%s: Invalid attempt to register with arbiter: %@; interaction: %@", "-[_UIPhysicalButtonInteraction _registerWithArbiterSkippingEvaluationAndObservation]", _physicalButtonInteractionArbiter, self}];
      }

      else
      {
        v5 = [(_UIPhysicalButtonInteractionArbiter *)_physicalButtonInteractionArbiter _registerPhysicalButtonInteraction:self];
        v6 = *(self + 80);
        *(self + 80) = v5;

        [(_UIPhysicalButtonInteraction *)self _evaluateWithinSceneBoundsIfNeededWithChangeHandler:?];
      }
    }
  }
}

- (void)_unregisterFromArbiter
{
  v5[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5[0] = @"_UIWindowWillMoveToSceneNotification";
    v5[1] = @"_UIWindowDidMoveToSceneNotification";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
    [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:self names:v3];

    *(self + 32) &= 0xDDu;
    [*(self + 80) invalidate];
    v4 = *(self + 80);
    *(self + 80) = 0;
  }
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = objc_loadWeakRetained(&self->_view);
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, v4];
  }

  else
  {
    v8 = @"(nil)";
  }

  v9 = [v3 appendObject:v8 withName:@"view"];
  v10 = objc_loadWeakRetained(&self->_delegate);
  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"<%@: %p>", v13, v10];
  }

  else
  {
    v14 = @"(nil)";
  }

  v15 = [v3 appendObject:v14 withName:@"delegate"];
  if ([(NSString *)self->_name length])
  {
    [v3 appendString:self->_name withName:@"name"];
  }

  v16 = [v3 appendBool:self->_enabled withName:@"enabled"];
  v17 = [v3 appendBool:self->_arbiterRegistrationToken != 0 withName:@"hasRegistered"];
  v18 = _UIPhysicalButtonSuccinctConfigurationsDescriptionForSet(&self->_configurationSet->super.isa);
  v19 = [v3 appendObject:v18 withName:@"configurations"];

  v20 = [v3 appendUnsignedInteger:-[NSMutableArray count](self->_orderedActionsForAllPhysicalButtons withName:{"count"), @"activeActions"}];

  return v3;
}

- (_UIPhysicalButtonInteraction)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:418 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonInteraction init]", objc_opt_class()}];

  return 0;
}

- (_UIPhysicalButtonInteraction)initWithConfigurations:(id)configurations delegate:(id)delegate
{
  v34 = *MEMORY[0x1E69E9840];
  if (configurations)
  {
    if (delegate)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"configurations"}];

    if (delegate)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:426 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

LABEL_3:
  v28 = 0;
  IsMostlyValid = _UIPhysicalButtonConfigurationNSSetIsMostlyValid(configurations, &v28);
  v9 = v28;
  if ((IsMostlyValid & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:431 description:{@"%s: Invalid configurations for reason: %@; configurations: %@", "-[_UIPhysicalButtonInteraction initWithConfigurations:delegate:]", v9, configurations}];
  }

  v27.receiver = self;
  v27.super_class = _UIPhysicalButtonInteraction;
  v10 = [(_UIPhysicalButtonInteraction *)&v27 init];
  if (v10)
  {
    v11 = [_UIPhysicalButtonConfigurationSet _configurationSetFromNSSet:configurations];
    configurationSet = v10->_configurationSet;
    v10->_configurationSet = v11;

    *&v10->_interactionFlags &= ~0x10u;
    if ([(_UIPhysicalButtonInteraction *)v10 _propagatePropertiesToConfigurationSetReturningIfHasExclusiveBehavior:?])
    {
      *&v10->_interactionFlags |= 0x10u;
    }

    objc_storeWeak(&v10->_delegate, delegate);
    v10->_enabled = 1;
    if (!v10->_drivers)
    {
      v13 = objc_opt_new();
      drivers = v10->_drivers;
      v10->_drivers = v13;

      _driverClasses = [(_UIPhysicalButtonInteraction *)v10 _driverClasses];
      if (!_driverClasses)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:sel__createDriversIfNeeded object:v10 file:@"_UIPhysicalButtonInteraction.m" lineNumber:617 description:{@"%s: Invalid driver classes returned by subclass: %@", "-[_UIPhysicalButtonInteraction _createDriversIfNeeded]", v10}];
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = _driverClasses;
      v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v30;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [objc_alloc(*(*(&v29 + 1) + 8 * i)) initWithReceiver:v10];
            [(NSMutableArray *)v10->_drivers addObject:v21];
          }

          v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v18);
      }
    }
  }

  return v10;
}

- (void)_enumerateConfigurationsSynchronizingPropertiesAndNotifyingArbiter:(uint64_t)arbiter
{
  if (arbiter)
  {
    *(arbiter + 32) &= ~0x10u;
    if ([(_UIPhysicalButtonInteraction *)arbiter _propagatePropertiesToConfigurationSetReturningIfHasExclusiveBehavior:?])
    {
      *(arbiter + 32) |= 0x10u;
    }

    if (*(arbiter + 80))
    {
      WeakRetained = objc_loadWeakRetained((arbiter + 40));
      _window = [WeakRetained _window];

      _windowHostingScene = [_window _windowHostingScene];
      _physicalButtonInteractionArbiter = [_windowHostingScene _physicalButtonInteractionArbiter];

      [(_UIPhysicalButtonInteractionArbiter *)_physicalButtonInteractionArbiter _setNeedsResolutionOfPhysicalButtonConfigurationsInWindow:_window forReason:3uLL];
    }
  }
}

- (void)dealloc
{
  v7[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v7[0] = @"_UIWindowWillMoveToSceneNotification";
  v7[1] = @"_UIWindowDidMoveToSceneNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  [(BSInvalidatable *)self->_arbiterRegistrationToken invalidate];
  arbiterRegistrationToken = self->_arbiterRegistrationToken;
  self->_arbiterRegistrationToken = 0;

  v6.receiver = self;
  v6.super_class = _UIPhysicalButtonInteraction;
  [(_UIPhysicalButtonInteraction *)&v6 dealloc];
}

- (void)_setIdentifier:(unint64_t)identifier
{
  self->_identifier = identifier;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  stringValue = [v5 stringValue];
  [(_UIPhysicalButtonInteraction *)self _setName:stringValue];
}

- (void)_setName:(id)name
{
  v9 = self->_name;
  nameCopy = name;
  if (v9 == nameCopy)
  {
  }

  else
  {
    if (nameCopy && v9)
    {
      v6 = [(NSString *)v9 isEqual:nameCopy];

      if (v6)
      {
        return;
      }
    }

    else
    {
    }

    v7 = [(NSString *)nameCopy copy];
    name = self->_name;
    self->_name = v7;

    [_UIPhysicalButtonInteraction _enumerateConfigurationsSynchronizingPropertiesAndNotifyingArbiter:?];
  }
}

- (uint64_t)_propagatePropertiesToConfigurationSetReturningIfHasExclusiveBehavior:(uint64_t)behavior
{
  v16 = *MEMORY[0x1E69E9840];
  if (behavior)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = a2;
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v11 + 1) + 8 * i);
          [v9 _setWantsSystemShellExclusivePriority:{(*(behavior + 32) >> 3) & 1, v11}];
          if (*(behavior + 72))
          {
            [v9 _setName:?];
          }

          v6 |= [v9 _behavior] != 2;
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_setConfigurations:(id)configurations
{
  v30 = *MEMORY[0x1E69E9840];
  if (!configurations)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:521 description:{@"Invalid parameter not satisfying: %@", @"configurations"}];
  }

  v28 = 0;
  IsMostlyValid = _UIPhysicalButtonConfigurationNSSetIsMostlyValid(configurations, &v28);
  v7 = v28;
  if (IsMostlyValid)
  {
    currentHandler2 = self->_configurationSet;
    interactionFlags = self->_interactionFlags;
    v10 = [_UIPhysicalButtonConfigurationSet _configurationSetFromNSSet:configurations];
    v11 = [(_UIPhysicalButtonInteraction *)self _propagatePropertiesToConfigurationSetReturningIfHasExclusiveBehavior:v10];
    if (![(_UIPhysicalButtonConfigurationSet *)currentHandler2 isEqual:v10])
    {
      arbiterRegistrationToken = self->_arbiterRegistrationToken;
      if (arbiterRegistrationToken)
      {
        [(_UIPhysicalButtonInteraction *)self _unregisterFromArbiter];
      }

      objc_storeStrong(&self->_configurationSet, v10);
      if (((((interactionFlags & 0x10) == 0) ^ v11) & 1) == 0)
      {
        v13 = v11 ? 16 : 0;
        *&self->_interactionFlags = *&self->_interactionFlags & 0xEF | v13;
        WeakRetained = objc_loadWeakRetained(&self->_view);

        if (WeakRetained)
        {
          v15 = self->_interactionFlags;
          v16 = objc_loadWeakRetained(&self->_view);
          v17 = v16;
          if ((v15 & 0x10) != 0)
          {
            [(UIView *)v16 _addGeometryChangeObserver:?];
          }

          else
          {
            [(UIView *)v16 _removeGeometryChangeObserver:?];
          }
        }
      }

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v18 = self->_drivers;
      v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v25;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v25 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [*(*(&v24 + 1) + 8 * i) _physicalButtonConfigurationsDidChange];
          }

          v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v20);
      }

      if (arbiterRegistrationToken)
      {
        [(_UIPhysicalButtonInteraction *)self _registerWithArbiterIfAble];
      }
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [(_UIPhysicalButtonConfigurationSet *)currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:526 description:@"%s: Invalid configurations for reason: %@; configurations: %@", "[_UIPhysicalButtonInteraction _setConfigurations:]", v7, configurations];
  }
}

- (void)_setWantsSystemShellExclusivePriority:(BOOL)priority
{
  interactionFlags = self->_interactionFlags;
  if (((((interactionFlags & 8) == 0) ^ priority) & 1) == 0)
  {
    if (priority)
    {
      v4 = 8;
    }

    else
    {
      v4 = 0;
    }

    *&self->_interactionFlags = interactionFlags & 0xF7 | v4;
    [_UIPhysicalButtonInteraction _enumerateConfigurationsSynchronizingPropertiesAndNotifyingArbiter:?];
  }
}

- (id)_driverForType:(uint64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  if (type)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = *(type + 8);
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 _driverType] == a2)
          {
            v9 = v8;
            goto LABEL_12;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_bsActionDriver
{
  if (self)
  {
    self = [(_UIPhysicalButtonInteraction *)self _driverForType:?];
    v1 = vars8;
  }

  return self;
}

- (void)_evaluateWithinSceneBoundsIfNeededWithChangeHandler:(uint64_t)handler
{
  if (handler && *(handler + 80) && (*(handler + 32) & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained((handler + 40));
    _window = [WeakRetained _window];
    _windowHostingScene = [_window _windowHostingScene];
    v6 = *(handler + 32);
    [WeakRetained frame];
    v9 = v8 + v7 * 0.5;
    v12 = v11 + v10 * 0.5;
    _coordinateSpace = [_windowHostingScene _coordinateSpace];
    [WeakRetained convertPoint:_coordinateSpace toCoordinateSpace:{v9, v12}];
    v15 = v14;
    v17 = v16;
    [_coordinateSpace bounds];
    v22.x = v15;
    v22.y = v17;
    if (CGRectContainsPoint(v23, v22))
    {
      v18 = 32;
    }

    else
    {
      v18 = 0;
    }

    *(handler + 32) = *(handler + 32) & 0xDF | v18;
    if (a2 && ((v6 >> 5) & 1) != v18 >> 5)
    {
      _physicalButtonInteractionArbiter = [_windowHostingScene _physicalButtonInteractionArbiter];
      (*(a2 + 16))(a2, _physicalButtonInteractionArbiter, _window);
    }
  }
}

- (void)_setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    if (enabled)
    {
      [(_UIPhysicalButtonInteraction *)self _installViewComponentsAndRegisterIfAble];
    }

    else
    {
      [(_UIPhysicalButtonInteraction *)self _uninstallViewComponentsAndUnregister];
    }
  }
}

- (void)willMoveToView:(id)view
{
  [(_UIPhysicalButtonInteraction *)self _uninstallViewComponentsAndUnregister];

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  v5 = objc_storeWeak(&self->_view, view);
  if (view)
  {
    enabled = self->_enabled;

    if (enabled)
    {

      [(_UIPhysicalButtonInteraction *)self _installViewComponentsAndRegisterIfAble];
    }
  }
}

- (void)_willMoveFromWindow:(id)window toWindow:(id)toWindow
{
  if (!self->_enabled)
  {
    return;
  }

  _windowHostingScene = [toWindow _windowHostingScene];
  if (self->_arbiterRegistrationToken)
  {
    if (window && toWindow && _windowHostingScene)
    {
      *&self->_interactionFlags |= 1u;
LABEL_7:
      v9 = _windowHostingScene;
      [(_UIPhysicalButtonInteraction *)self _unregisterFromArbiter];
      _windowHostingScene = v9;
      goto LABEL_11;
    }

    if (!toWindow || !_windowHostingScene)
    {
      goto LABEL_7;
    }
  }

LABEL_11:
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  if (!self->_enabled)
  {
    return;
  }

  _windowHostingScene = [window _windowHostingScene];
  _windowHostingScene2 = [toWindow _windowHostingScene];
  arbiterRegistrationToken = self->_arbiterRegistrationToken;
  interactionFlags = self->_interactionFlags;
  v11 = (window != 0) & interactionFlags;
  if (!toWindow)
  {
    v11 = 0;
  }

  if (!(window | arbiterRegistrationToken))
  {
    v11 = 1;
  }

  if (arbiterRegistrationToken)
  {
    v12 = _windowHostingScene == 0;
  }

  else
  {
    v12 = 1;
  }

  v15 = !v12 && _windowHostingScene2 != 0 && _windowHostingScene != _windowHostingScene2;
  if (v11 == 1 && _windowHostingScene2 != 0)
  {
    *&self->_interactionFlags = interactionFlags & 0xFE;
LABEL_30:
    [(_UIPhysicalButtonInteraction *)self _registerWithArbiterIfAble];
    goto LABEL_31;
  }

  if (!window && toWindow && !arbiterRegistrationToken && !_windowHostingScene2)
  {
    goto LABEL_30;
  }

  if (v15)
  {
    [(_UIPhysicalButtonInteraction *)self _unregisterFromArbiter];
    goto LABEL_30;
  }

LABEL_31:
}

- (void)_windowWillMoveToScene:(id)scene
{
  object = [scene object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  object2 = [scene object];

  if (!object2)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  _window = [WeakRetained _window];

  v8 = object2;
  if (_window == object2)
  {
    arbiterRegistrationToken = self->_arbiterRegistrationToken;
    if (arbiterRegistrationToken)
    {
      [(BSInvalidatable *)arbiterRegistrationToken invalidate];
      v10 = self->_arbiterRegistrationToken;
      self->_arbiterRegistrationToken = 0;

      v8 = object2;
      *&self->_interactionFlags |= 2u;
    }
  }

LABEL_8:
}

- (void)_windowDidMoveToScene:(id)scene
{
  object = [scene object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [scene object];

    v6 = object2;
    if (object2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      _window = [WeakRetained _window];

      v6 = object2;
      if (_window == object2 && !self->_arbiterRegistrationToken && (*&self->_interactionFlags & 2) != 0)
      {
        *&self->_interactionFlags &= ~2u;
        [(_UIPhysicalButtonInteraction *)self _registerWithArbiterSkippingEvaluationAndObservation];
        v6 = object2;
      }
    }
  }

  else
  {

    v6 = 0;
  }
}

- (void)_setWantsRelaxedVisibilityRequirement:(BOOL)requirement
{
  requirementCopy = requirement;
  IsSpringBoard = _UIApplicationProcessIsSpringBoard();
  if (!IsSpringBoard && requirementCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:912 description:{@"%s: Invalid request to relax visibility requirement for interaction: %@", "-[_UIPhysicalButtonInteraction _setWantsRelaxedVisibilityRequirement:]", self}];
  }

  else if (IsSpringBoard)
  {
    interactionFlags = self->_interactionFlags;
    if (((((interactionFlags & 4) == 0) ^ requirementCopy) & 1) == 0)
    {
      v8 = requirementCopy ? 4 : 0;
      *&self->_interactionFlags = interactionFlags & 0xFB | v8;
      if (self->_arbiterRegistrationToken)
      {
        WeakRetained = objc_loadWeakRetained(&self->_view);
        _window = [WeakRetained _window];

        _windowHostingScene = [_window _windowHostingScene];
        _physicalButtonInteractionArbiter = [_windowHostingScene _physicalButtonInteractionArbiter];

        [(_UIPhysicalButtonInteractionArbiter *)_physicalButtonInteractionArbiter _setNeedsResolutionOfPhysicalButtonConfigurationsInWindow:_window forReason:4uLL];
      }
    }
  }
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if ((changed->var0 & 6) != 0 && (*&self->_interactionFlags & 0x10) != 0)
  {
    [(_UIPhysicalButtonInteraction *)self _evaluateWithinSceneBoundsIfNeededWithChangeHandler:?];
  }
}

- (void)_driver:(id)_driver didCreateProposedAction:(id)action
{
  _state = [action _state];
  if (!self->_actionsByPhysicalButton)
  {
    v7 = objc_opt_new();
    actionsByPhysicalButton = self->_actionsByPhysicalButton;
    self->_actionsByPhysicalButton = v7;
  }

  if (!self->_orderedActionsForAllPhysicalButtons)
  {
    v9 = objc_opt_new();
    orderedActionsForAllPhysicalButtons = self->_orderedActionsForAllPhysicalButtons;
    self->_orderedActionsForAllPhysicalButtons = v9;
  }

  actionCopy = action;
  _button = [actionCopy _button];
  v12 = self->_actionsByPhysicalButton;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_button];
  v14 = [(NSMutableDictionary *)v12 objectForKey:v13];

  if (v14)
  {
    v15 = self->_actionsByPhysicalButton;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_button];
    [(NSMutableDictionary *)v15 removeObjectForKey:v16];

    [(NSMutableArray *)self->_orderedActionsForAllPhysicalButtons removeObjectIdenticalTo:v14];
  }

  v17 = self->_actionsByPhysicalButton;
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_button];
  [(NSMutableDictionary *)v17 setObject:actionCopy forKey:v18];

  [(NSMutableArray *)self->_orderedActionsForAllPhysicalButtons addObject:actionCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v20 = [(NSMutableArray *)self->_orderedActionsForAllPhysicalButtons copy];
  [WeakRetained _physicalButtonInteraction:self handleAction:actionCopy withActiveActions:v20];

  if ((_state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v21 = self->_actionsByPhysicalButton;
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:_button];
    [(NSMutableDictionary *)v21 removeObjectForKey:v22];

    [(NSMutableArray *)self->_orderedActionsForAllPhysicalButtons removeObjectIdenticalTo:actionCopy];
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonInteraction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIPhysicalButtonInteraction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v6 setActiveMultilinePrefix:prefix];
  v7 = objc_loadWeakRetained(&self->_view);
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"<%@: %p>", v10, v7];
  }

  else
  {
    v11 = @"(nil)";
  }

  v12 = [v6 appendObject:v11 withName:@"view"];
  v13 = objc_loadWeakRetained(&self->_delegate);
  if (v13)
  {
    v14 = MEMORY[0x1E696AEC0];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"<%@: %p>", v16, v13];
  }

  else
  {
    v17 = @"(nil)";
  }

  v18 = [v6 appendObject:v17 withName:@"delegate"];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __70___UIPhysicalButtonInteraction_descriptionBuilderWithMultilinePrefix___block_invoke;
  v23[3] = &unk_1E70F5AF0;
  v19 = v6;
  v24 = v19;
  selfCopy = self;
  v26 = has_internal_diagnostics;
  v20 = [v19 modifyBody:v23];
  v21 = v19;

  return v19;
}

- (_UIPhysicalButtonInteractionDelegate)_delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end