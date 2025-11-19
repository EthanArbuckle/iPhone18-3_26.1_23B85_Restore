@interface _UIPhysicalButtonInteraction
- (NSArray)_driverClasses;
- (UIView)view;
- (_UIPhysicalButtonInteraction)init;
- (_UIPhysicalButtonInteraction)initWithConfigurations:(id)a3 delegate:(id)a4;
- (_UIPhysicalButtonInteractionDelegate)_delegate;
- (id)_bsActionDriver;
- (id)_driverForType:(uint64_t)a1;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_propagatePropertiesToConfigurationSetReturningIfHasExclusiveBehavior:(uint64_t)a1;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_driver:(id)a3 didCreateProposedAction:(id)a4;
- (void)_enumerateConfigurationsSynchronizingPropertiesAndNotifyingArbiter:(uint64_t)a1;
- (void)_evaluateWithinSceneBoundsIfNeededWithChangeHandler:(uint64_t)a1;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_installViewComponentsAndRegisterIfAble;
- (void)_registerWithArbiterIfAble;
- (void)_registerWithArbiterSkippingEvaluationAndObservation;
- (void)_setConfigurations:(id)a3;
- (void)_setEnabled:(BOOL)a3;
- (void)_setIdentifier:(unint64_t)a3;
- (void)_setName:(id)a3;
- (void)_setWantsRelaxedVisibilityRequirement:(BOOL)a3;
- (void)_setWantsSystemShellExclusivePriority:(BOOL)a3;
- (void)_uninstallViewComponentsAndUnregister;
- (void)_unregisterFromArbiter;
- (void)_willMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_windowDidMoveToScene:(id)a3;
- (void)_windowWillMoveToScene:(id)a3;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UIPhysicalButtonInteraction

- (void)_installViewComponentsAndRegisterIfAble
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((*(a1 + 32) & 0x10) != 0)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      [(UIView *)WeakRetained _addGeometryChangeObserver:a1];
    }

    v3 = objc_loadWeakRetained((a1 + 40));

    if (v3)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = *(a1 + 8);
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
            v10 = objc_loadWeakRetained((a1 + 40));
            [v9 _installToViewIfNeeded:{v10, v11}];
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }

    [(_UIPhysicalButtonInteraction *)a1 _registerWithArbiterIfAble];
  }
}

- (void)_registerWithArbiterIfAble
{
  if (!a1)
  {
    return;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _window];

  v3 = [v5 _windowHostingScene];
  if (v3)
  {
    [(_UIPhysicalButtonInteraction *)a1 _registerWithArbiterSkippingEvaluationAndObservation];
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v5)
  {
    *(a1 + 32) |= 2u;
LABEL_7:
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:a1 selector:sel__windowWillMoveToScene_ name:@"_UIWindowWillMoveToSceneNotification" object:v5];
    [v4 addObserver:a1 selector:sel__windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:v5];
  }

LABEL_8:
}

- (id)succinctDescription
{
  v2 = [(_UIPhysicalButtonInteraction *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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
  if (a1)
  {
    if ((*(a1 + 32) & 0x10) != 0)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      [(UIView *)WeakRetained _removeGeometryChangeObserver:a1];
    }

    v3 = objc_loadWeakRetained((a1 + 40));

    if (v3)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = *(a1 + 8);
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
            v10 = objc_loadWeakRetained((a1 + 40));
            [v9 _uninstallFromViewIfNeeded:{v10, v11}];
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }
    }

    [(_UIPhysicalButtonInteraction *)a1 _unregisterFromArbiter];
  }
}

- (void)_registerWithArbiterSkippingEvaluationAndObservation
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v3 = [WeakRetained _window];
    v8 = [v3 _windowHostingScene];

    v4 = [v8 _physicalButtonInteractionArbiter];
    if (_UIPhysicalButtonInteractionArbiterIsAvailableForScene(v8))
    {
      if (!v4 || *(a1 + 80))
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        [v7 handleFailureInMethod:sel__registerWithArbiterSkippingEvaluationAndObservation object:a1 file:@"_UIPhysicalButtonInteraction.m" lineNumber:682 description:{@"%s: Invalid attempt to register with arbiter: %@; interaction: %@", "-[_UIPhysicalButtonInteraction _registerWithArbiterSkippingEvaluationAndObservation]", v4, a1}];
      }

      else
      {
        v5 = [(_UIPhysicalButtonInteractionArbiter *)v4 _registerPhysicalButtonInteraction:a1];
        v6 = *(a1 + 80);
        *(a1 + 80) = v5;

        [(_UIPhysicalButtonInteraction *)a1 _evaluateWithinSceneBoundsIfNeededWithChangeHandler:?];
      }
    }
  }
}

- (void)_unregisterFromArbiter
{
  v5[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    v5[0] = @"_UIWindowWillMoveToSceneNotification";
    v5[1] = @"_UIWindowDidMoveToSceneNotification";
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
    [(NSNotificationCenter *)v2 _uiRemoveObserver:a1 names:v3];

    *(a1 + 32) &= 0xDDu;
    [*(a1 + 80) invalidate];
    v4 = *(a1 + 80);
    *(a1 + 80) = 0;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:418 description:{@"%s: init is not allowed on %@", "-[_UIPhysicalButtonInteraction init]", objc_opt_class()}];

  return 0;
}

- (_UIPhysicalButtonInteraction)initWithConfigurations:(id)a3 delegate:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:425 description:{@"Invalid parameter not satisfying: %@", @"configurations"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:426 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

LABEL_3:
  v28 = 0;
  IsMostlyValid = _UIPhysicalButtonConfigurationNSSetIsMostlyValid(a3, &v28);
  v9 = v28;
  if ((IsMostlyValid & 1) == 0)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:431 description:{@"%s: Invalid configurations for reason: %@; configurations: %@", "-[_UIPhysicalButtonInteraction initWithConfigurations:delegate:]", v9, a3}];
  }

  v27.receiver = self;
  v27.super_class = _UIPhysicalButtonInteraction;
  v10 = [(_UIPhysicalButtonInteraction *)&v27 init];
  if (v10)
  {
    v11 = [_UIPhysicalButtonConfigurationSet _configurationSetFromNSSet:a3];
    configurationSet = v10->_configurationSet;
    v10->_configurationSet = v11;

    *&v10->_interactionFlags &= ~0x10u;
    if ([(_UIPhysicalButtonInteraction *)v10 _propagatePropertiesToConfigurationSetReturningIfHasExclusiveBehavior:?])
    {
      *&v10->_interactionFlags |= 0x10u;
    }

    objc_storeWeak(&v10->_delegate, a4);
    v10->_enabled = 1;
    if (!v10->_drivers)
    {
      v13 = objc_opt_new();
      drivers = v10->_drivers;
      v10->_drivers = v13;

      v15 = [(_UIPhysicalButtonInteraction *)v10 _driverClasses];
      if (!v15)
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        [v26 handleFailureInMethod:sel__createDriversIfNeeded object:v10 file:@"_UIPhysicalButtonInteraction.m" lineNumber:617 description:{@"%s: Invalid driver classes returned by subclass: %@", "-[_UIPhysicalButtonInteraction _createDriversIfNeeded]", v10}];
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v16 = v15;
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

- (void)_enumerateConfigurationsSynchronizingPropertiesAndNotifyingArbiter:(uint64_t)a1
{
  if (a1)
  {
    *(a1 + 32) &= ~0x10u;
    if ([(_UIPhysicalButtonInteraction *)a1 _propagatePropertiesToConfigurationSetReturningIfHasExclusiveBehavior:?])
    {
      *(a1 + 32) |= 0x10u;
    }

    if (*(a1 + 80))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v5 = [WeakRetained _window];

      v3 = [v5 _windowHostingScene];
      v4 = [v3 _physicalButtonInteractionArbiter];

      [(_UIPhysicalButtonInteractionArbiter *)v4 _setNeedsResolutionOfPhysicalButtonConfigurationsInWindow:v5 forReason:3uLL];
    }
  }
}

- (void)dealloc
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v7[0] = @"_UIWindowWillMoveToSceneNotification";
  v7[1] = @"_UIWindowDidMoveToSceneNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  [(BSInvalidatable *)self->_arbiterRegistrationToken invalidate];
  arbiterRegistrationToken = self->_arbiterRegistrationToken;
  self->_arbiterRegistrationToken = 0;

  v6.receiver = self;
  v6.super_class = _UIPhysicalButtonInteraction;
  [(_UIPhysicalButtonInteraction *)&v6 dealloc];
}

- (void)_setIdentifier:(unint64_t)a3
{
  self->_identifier = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v4 = [v5 stringValue];
  [(_UIPhysicalButtonInteraction *)self _setName:v4];
}

- (void)_setName:(id)a3
{
  v9 = self->_name;
  v5 = a3;
  if (v9 == v5)
  {
  }

  else
  {
    if (v5 && v9)
    {
      v6 = [(NSString *)v9 isEqual:v5];

      if (v6)
      {
        return;
      }
    }

    else
    {
    }

    v7 = [(NSString *)v5 copy];
    name = self->_name;
    self->_name = v7;

    [_UIPhysicalButtonInteraction _enumerateConfigurationsSynchronizingPropertiesAndNotifyingArbiter:?];
  }
}

- (uint64_t)_propagatePropertiesToConfigurationSetReturningIfHasExclusiveBehavior:(uint64_t)a1
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
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
          [v9 _setWantsSystemShellExclusivePriority:{(*(a1 + 32) >> 3) & 1, v11}];
          if (*(a1 + 72))
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

- (void)_setConfigurations:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:521 description:{@"Invalid parameter not satisfying: %@", @"configurations"}];
  }

  v28 = 0;
  IsMostlyValid = _UIPhysicalButtonConfigurationNSSetIsMostlyValid(a3, &v28);
  v7 = v28;
  if (IsMostlyValid)
  {
    v8 = self->_configurationSet;
    interactionFlags = self->_interactionFlags;
    v10 = [_UIPhysicalButtonConfigurationSet _configurationSetFromNSSet:a3];
    v11 = [(_UIPhysicalButtonInteraction *)self _propagatePropertiesToConfigurationSetReturningIfHasExclusiveBehavior:v10];
    if (![(_UIPhysicalButtonConfigurationSet *)v8 isEqual:v10])
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
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [(_UIPhysicalButtonConfigurationSet *)v8 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:526 description:@"%s: Invalid configurations for reason: %@; configurations: %@", "[_UIPhysicalButtonInteraction _setConfigurations:]", v7, a3];
  }
}

- (void)_setWantsSystemShellExclusivePriority:(BOOL)a3
{
  interactionFlags = self->_interactionFlags;
  if (((((interactionFlags & 8) == 0) ^ a3) & 1) == 0)
  {
    if (a3)
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

- (id)_driverForType:(uint64_t)a1
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = *(a1 + 8);
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
  if (a1)
  {
    a1 = [(_UIPhysicalButtonInteraction *)a1 _driverForType:?];
    v1 = vars8;
  }

  return a1;
}

- (void)_evaluateWithinSceneBoundsIfNeededWithChangeHandler:(uint64_t)a1
{
  if (a1 && *(a1 + 80) && (*(a1 + 32) & 0x10) != 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = [WeakRetained _window];
    v5 = [v4 _windowHostingScene];
    v6 = *(a1 + 32);
    [WeakRetained frame];
    v9 = v8 + v7 * 0.5;
    v12 = v11 + v10 * 0.5;
    v13 = [v5 _coordinateSpace];
    [WeakRetained convertPoint:v13 toCoordinateSpace:{v9, v12}];
    v15 = v14;
    v17 = v16;
    [v13 bounds];
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

    *(a1 + 32) = *(a1 + 32) & 0xDF | v18;
    if (a2 && ((v6 >> 5) & 1) != v18 >> 5)
    {
      v19 = [v5 _physicalButtonInteractionArbiter];
      (*(a2 + 16))(a2, v19, v4);
    }
  }
}

- (void)_setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    if (a3)
    {
      [(_UIPhysicalButtonInteraction *)self _installViewComponentsAndRegisterIfAble];
    }

    else
    {
      [(_UIPhysicalButtonInteraction *)self _uninstallViewComponentsAndUnregister];
    }
  }
}

- (void)willMoveToView:(id)a3
{
  [(_UIPhysicalButtonInteraction *)self _uninstallViewComponentsAndUnregister];

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  v5 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    enabled = self->_enabled;

    if (enabled)
    {

      [(_UIPhysicalButtonInteraction *)self _installViewComponentsAndRegisterIfAble];
    }
  }
}

- (void)_willMoveFromWindow:(id)a3 toWindow:(id)a4
{
  if (!self->_enabled)
  {
    return;
  }

  v8 = [a4 _windowHostingScene];
  if (self->_arbiterRegistrationToken)
  {
    if (a3 && a4 && v8)
    {
      *&self->_interactionFlags |= 1u;
LABEL_7:
      v9 = v8;
      [(_UIPhysicalButtonInteraction *)self _unregisterFromArbiter];
      v8 = v9;
      goto LABEL_11;
    }

    if (!a4 || !v8)
    {
      goto LABEL_7;
    }
  }

LABEL_11:
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  if (!self->_enabled)
  {
    return;
  }

  v17 = [a3 _windowHostingScene];
  v8 = [a4 _windowHostingScene];
  arbiterRegistrationToken = self->_arbiterRegistrationToken;
  interactionFlags = self->_interactionFlags;
  v11 = (a3 != 0) & interactionFlags;
  if (!a4)
  {
    v11 = 0;
  }

  if (!(a3 | arbiterRegistrationToken))
  {
    v11 = 1;
  }

  if (arbiterRegistrationToken)
  {
    v12 = v17 == 0;
  }

  else
  {
    v12 = 1;
  }

  v15 = !v12 && v8 != 0 && v17 != v8;
  if (v11 == 1 && v8 != 0)
  {
    *&self->_interactionFlags = interactionFlags & 0xFE;
LABEL_30:
    [(_UIPhysicalButtonInteraction *)self _registerWithArbiterIfAble];
    goto LABEL_31;
  }

  if (!a3 && a4 && !arbiterRegistrationToken && !v8)
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

- (void)_windowWillMoveToScene:(id)a3
{
  v5 = [a3 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_7;
  }

  v11 = [a3 object];

  if (!v11)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  v7 = [WeakRetained _window];

  v8 = v11;
  if (v7 == v11)
  {
    arbiterRegistrationToken = self->_arbiterRegistrationToken;
    if (arbiterRegistrationToken)
    {
      [(BSInvalidatable *)arbiterRegistrationToken invalidate];
      v10 = self->_arbiterRegistrationToken;
      self->_arbiterRegistrationToken = 0;

      v8 = v11;
      *&self->_interactionFlags |= 2u;
    }
  }

LABEL_8:
}

- (void)_windowDidMoveToScene:(id)a3
{
  v5 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [a3 object];

    v6 = v9;
    if (v9)
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      v8 = [WeakRetained _window];

      v6 = v9;
      if (v8 == v9 && !self->_arbiterRegistrationToken && (*&self->_interactionFlags & 2) != 0)
      {
        *&self->_interactionFlags &= ~2u;
        [(_UIPhysicalButtonInteraction *)self _registerWithArbiterSkippingEvaluationAndObservation];
        v6 = v9;
      }
    }
  }

  else
  {

    v6 = 0;
  }
}

- (void)_setWantsRelaxedVisibilityRequirement:(BOOL)a3
{
  v3 = a3;
  IsSpringBoard = _UIApplicationProcessIsSpringBoard();
  if (!IsSpringBoard && v3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIPhysicalButtonInteraction.m" lineNumber:912 description:{@"%s: Invalid request to relax visibility requirement for interaction: %@", "-[_UIPhysicalButtonInteraction _setWantsRelaxedVisibilityRequirement:]", self}];
  }

  else if (IsSpringBoard)
  {
    interactionFlags = self->_interactionFlags;
    if (((((interactionFlags & 4) == 0) ^ v3) & 1) == 0)
    {
      v8 = v3 ? 4 : 0;
      *&self->_interactionFlags = interactionFlags & 0xFB | v8;
      if (self->_arbiterRegistrationToken)
      {
        WeakRetained = objc_loadWeakRetained(&self->_view);
        v13 = [WeakRetained _window];

        v10 = [v13 _windowHostingScene];
        v11 = [v10 _physicalButtonInteractionArbiter];

        [(_UIPhysicalButtonInteractionArbiter *)v11 _setNeedsResolutionOfPhysicalButtonConfigurationsInWindow:v13 forReason:4uLL];
      }
    }
  }
}

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  if ((a3->var0 & 6) != 0 && (*&self->_interactionFlags & 0x10) != 0)
  {
    [(_UIPhysicalButtonInteraction *)self _evaluateWithinSceneBoundsIfNeededWithChangeHandler:?];
  }
}

- (void)_driver:(id)a3 didCreateProposedAction:(id)a4
{
  v6 = [a4 _state];
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

  v23 = a4;
  v11 = [v23 _button];
  v12 = self->_actionsByPhysicalButton;
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  v14 = [(NSMutableDictionary *)v12 objectForKey:v13];

  if (v14)
  {
    v15 = self->_actionsByPhysicalButton;
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    [(NSMutableDictionary *)v15 removeObjectForKey:v16];

    [(NSMutableArray *)self->_orderedActionsForAllPhysicalButtons removeObjectIdenticalTo:v14];
  }

  v17 = self->_actionsByPhysicalButton;
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
  [(NSMutableDictionary *)v17 setObject:v23 forKey:v18];

  [(NSMutableArray *)self->_orderedActionsForAllPhysicalButtons addObject:v23];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v20 = [(NSMutableArray *)self->_orderedActionsForAllPhysicalButtons copy];
  [WeakRetained _physicalButtonInteraction:self handleAction:v23 withActiveActions:v20];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v21 = self->_actionsByPhysicalButton;
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
    [(NSMutableDictionary *)v21 removeObjectForKey:v22];

    [(NSMutableArray *)self->_orderedActionsForAllPhysicalButtons removeObjectIdenticalTo:v23];
  }
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonInteraction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIPhysicalButtonInteraction *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v6 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v6 setActiveMultilinePrefix:a3];
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
  v25 = self;
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