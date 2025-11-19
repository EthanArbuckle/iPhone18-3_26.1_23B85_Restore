@interface SBSystemGestureManager
+ (BOOL)_isDeviceHardwareButtonGestureType:(unint64_t)a3;
+ (id)deviceHardwareButtonGestureTypes;
- (BOOL)_isGestureWithTypeAllowed:(unint64_t)a3;
- (BOOL)_isTouchGestureWithType:(unint64_t)a3;
- (BOOL)isSystemGestureRecognizer:(id)a3;
- (BOOL)shouldEnableSystemGestureWithType:(unint64_t)a3;
- (BOOL)shouldSystemGestureReceiveTouchWithLocation:(CGPoint)a3;
- (SBSystemGestureManager)init;
- (SBSystemUIPointerInteractionDelegate)systemPointerInteractionDelegate;
- (_UISystemGestureManager)systemGestureManager;
- (id)_initWithDisplayIdentity:(id)a3;
- (id)acquireSystemEdgeGesturesIgnoreHIDEdgeFlagsForReason:(id)a3;
- (id)acquireSystemGestureDisableAssertionForReason:(id)a3 exceptSystemGestureTypes:(id)a4;
- (id)acquireSystemGestureDisableAssertionForReason:(id)a3 forSystemGestureTypes:(id)a4;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (id)windowForSystemGestures;
- (int64_t)_recognitionEventForTouchGestureType:(unint64_t)a3;
- (unint64_t)typeOfSystemGesture:(id)a3;
- (void)_configureForNewSystemGestureWindowIfNecessary;
- (void)_disableSystemGesture:(id)a3 withType:(unint64_t)a4;
- (void)_enableSystemGesture:(id)a3 withType:(unint64_t)a4;
- (void)_evaluateEnablement;
- (void)_invalidateIgnoreHidEdgeFlagsAssertionForRemovedRecognizer:(id)a3;
- (void)_pencilInteraction:(id)a3 didReceiveSqueeze:(id)a4;
- (void)_systemGestureChanged:(id)a3;
- (void)_updateIgnoreHIDEdgeFlagsAssertions;
- (void)addGestureRecognizer:(id)a3 withType:(unint64_t)a4;
- (void)cancelGestureRecognizerOfType:(unint64_t)a3 reason:(id)a4;
- (void)gestureRecognizerOfType:(unint64_t)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (void)gestureRecognizerOfType:(unint64_t)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (void)ignoreScreenEdgeTouchWithIdentifier:(unsigned int)a3;
- (void)invalidate;
- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5;
- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5;
- (void)removeGestureRecognizer:(id)a3;
@end

@implementation SBSystemGestureManager

- (_UISystemGestureManager)systemGestureManager
{
  WeakRetained = objc_loadWeakRetained(&self->_systemGestureManager);

  return WeakRetained;
}

- (void)_configureForNewSystemGestureWindowIfNecessary
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v4 = *a1;
  v5 = v2;
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v4 object:? file:? lineNumber:? description:?];
}

- (id)windowForSystemGestures
{
  if (self->_displayIdentity)
  {
    v3 = [(SBSystemGestureManager *)self systemGestureManager];
    v4 = [v3 windowForSystemGesturesForDisplayWithIdentity:self->_displayIdentity];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_updateIgnoreHIDEdgeFlagsAssertions
{
  v34 = *MEMORY[0x277D85DE8];
  if ([(BSCompoundAssertion *)self->_ignoreHIDEdgeFlagsAssertion isActive])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v3 = [(NSMutableDictionary *)self->_typeToGesture allValues];
    v4 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v29;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v29 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v28 + 1) + 8 * i);
          v9 = objc_opt_class();
          v10 = v8;
          if (v9)
          {
            if (objc_opt_isKindOfClass())
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;

          if (objc_opt_respondsToSelector())
          {
            v13 = [(NSMapTable *)self->_ignoreHIDEdgeFlagsAssertions objectForKey:v12];

            if (!v13)
            {
              v14 = [v12 _beginRequiringIgnoresHIDEdgeFlagsForReason:@"SBSystemGestureManager"];
              ignoreHIDEdgeFlagsAssertions = self->_ignoreHIDEdgeFlagsAssertions;
              if (!ignoreHIDEdgeFlagsAssertions)
              {
                v16 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
                v17 = self->_ignoreHIDEdgeFlagsAssertions;
                self->_ignoreHIDEdgeFlagsAssertions = v16;

                ignoreHIDEdgeFlagsAssertions = self->_ignoreHIDEdgeFlagsAssertions;
              }

              [(NSMapTable *)ignoreHIDEdgeFlagsAssertions setObject:v14 forKey:v12];
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = [(NSMapTable *)self->_ignoreHIDEdgeFlagsAssertions copy];
    v18 = self->_ignoreHIDEdgeFlagsAssertions;
    self->_ignoreHIDEdgeFlagsAssertions = 0;

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v19 = [v3 objectEnumerator];
    v20 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v25;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v24 + 1) + 8 * j) _invalidate];
        }

        v21 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v21);
    }
  }
}

+ (id)deviceHardwareButtonGestureTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SBSystemGestureManager_deviceHardwareButtonGestureTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (deviceHardwareButtonGestureTypes_onceToken != -1)
  {
    dispatch_once(&deviceHardwareButtonGestureTypes_onceToken, block);
  }

  v2 = deviceHardwareButtonGestureTypes_deviceHardwareButtonGestureTypes;

  return v2;
}

- (void)_evaluateEnablement
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_gesturesDisabledAssertions count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = self->_gesturesDisabledAssertions;
    v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [*(*(&v17 + 1) + 8 * i) exceptions];
          v10 = v9;
          if (v6)
          {
            [v6 intersectSet:v9];
          }

          else
          {
            v6 = [v9 mutableCopy];
          }
        }

        v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    objc_storeStrong(&self->_gestureTypesAllowedWhileDisableAssertionsExist, v6);
    v12 = SBLogSystemGestureDetail();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      displayIdentity = self->_displayIdentity;
      v14 = [(NSSet *)self->_gestureTypesAllowedWhileDisableAssertionsExist bs_map:&__block_literal_global_290];
      *buf = 138543618;
      v22 = displayIdentity;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "(Display - %{public}@) System gestures globally disabled (exceptions:%{public}@)", buf, 0x16u);
    }
  }

  else
  {
    v6 = SBLogSystemGestureDetail();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = self->_displayIdentity;
      *buf = 138543362;
      v22 = v11;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "(Display - %{public}@) System gestures globally enabled (may be individually disabled)", buf, 0xCu);
    }
  }

  typeToGesture = self->_typeToGesture;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __45__SBSystemGestureManager__evaluateEnablement__block_invoke_51;
  v16[3] = &unk_2783BE2C8;
  v16[4] = self;
  [(NSMutableDictionary *)typeToGesture enumerateKeysAndObjectsUsingBlock:v16];
}

__CFString *__45__SBSystemGestureManager__evaluateEnablement__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];

  return SBSystemGestureTypeDebugName(v2);
}

void __45__SBSystemGestureManager__evaluateEnablement__block_invoke_51(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v9 = a3;
  v6 = a2;
  LODWORD(v5) = [v5 shouldEnableSystemGestureWithType:{objc_msgSend(v6, "unsignedIntegerValue")}];
  v7 = *(a1 + 32);
  v8 = [v6 unsignedIntegerValue];

  if (v5)
  {
    [v7 _enableSystemGesture:v9 withType:v8];
  }

  else
  {
    [v7 _disableSystemGesture:v9 withType:v8];
  }
}

- (SBSystemGestureManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBSystemGestureManager.m" lineNumber:99 description:@"use initWithDisplay:"];

  return 0;
}

- (id)_initWithDisplayIdentity:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [SBSystemGestureManager _initWithDisplayIdentity:];
  }

  v24.receiver = self;
  v24.super_class = SBSystemGestureManager;
  v6 = [(SBSystemGestureManager *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_displayIdentity, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    typeToGesture = v7->_typeToGesture;
    v7->_typeToGesture = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    typeToState = v7->_typeToState;
    v7->_typeToState = v10;

    v12 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    recognizingTouchGestures = v7->_recognizingTouchGestures;
    v7->_recognizingTouchGestures = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
    touchGestures = v7->_touchGestures;
    v7->_touchGestures = v14;

    if ([MEMORY[0x277D65F68] isRunningXCTest])
    {
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277D76330] sharedInstance];
    }

    objc_storeWeak(&v7->_systemGestureManager, v16);
    v17 = [v16 allowGestureRecognizersOnDisplayWithIdentity:v5];
    systemGesturesAllowedToken = v7->_systemGesturesAllowedToken;
    v7->_systemGesturesAllowedToken = v17;

    v19 = [MEMORY[0x277D75418] currentDevice];
    v20 = [v19 userInterfaceIdiom];

    if ((v20 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v21 = [[SBIndirectTouchLifecycleMonitor alloc] initWithSystemGestureManager:v7];
      indirectTouchLifecycleMonitor = v7->_indirectTouchLifecycleMonitor;
      v7->_indirectTouchLifecycleMonitor = v21;
    }

    [(SBSystemGestureManager *)v7 _evaluateEnablement];
  }

  return v7;
}

- (BOOL)isSystemGestureRecognizer:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  typeToGesture = self->_typeToGesture;
  v4 = a3;
  v5 = [(NSMutableDictionary *)typeToGesture allValues];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)addGestureRecognizer:(id)a3 withType:(unint64_t)a4
{
  object = a3;
  typeToGesture = self->_typeToGesture;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v8 = [(NSMutableDictionary *)typeToGesture objectForKey:v7];

  if (v8)
  {
    [SBSystemGestureManager addGestureRecognizer:a4 withType:&self->_typeToGesture];
  }

  if (self->_isInvalidated)
  {
    [SBSystemGestureManager addGestureRecognizer:a4 withType:?];
  }

  if (object)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    objc_setAssociatedObject(object, "_SBSystemGestureType", v9, 1);

    v10 = self->_typeToGesture;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v10 setObject:object forKey:v11];

    if ([(SBSystemGestureManager *)self _isTouchGestureWithType:a4])
    {
      [(NSMutableSet *)self->_touchGestures addObject:object];
    }

    if ([(SBSystemGestureManager *)self shouldEnableSystemGestureWithType:a4])
    {
      [(SBSystemGestureManager *)self _enableSystemGesture:object withType:a4];
    }
  }

  [(SBSystemGestureManager *)self _configureForNewSystemGestureWindowIfNecessary];
  [(SBSystemGestureManager *)self _updateIgnoreHIDEdgeFlagsAssertions];
}

- (void)removeGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = objc_getAssociatedObject(v4, "_SBSystemGestureType");
  if (v5)
  {
    objc_setAssociatedObject(v4, "_SBSystemGestureType", 0, 1);
    v6 = [v5 unsignedIntegerValue];
    if ([(SBSystemGestureManager *)self _isTouchGestureWithType:v6])
    {
      [(NSMutableSet *)self->_touchGestures removeObject:v4];
    }

    [(NSMutableDictionary *)self->_typeToGesture removeObjectForKey:v5];
    [(SBSystemGestureManager *)self _disableSystemGesture:v4 withType:v6];
  }

  else
  {
    v7 = SBLogSystemGesture();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SBSystemGestureManager *)v4 removeGestureRecognizer:v7];
    }
  }

  [(SBSystemGestureManager *)self _invalidateIgnoreHidEdgeFlagsAssertionForRemovedRecognizer:v4];
}

- (void)gestureRecognizerOfType:(unint64_t)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  typeToGesture = self->_typeToGesture;
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)typeToGesture objectForKey:v8];

  [v9 requireGestureRecognizerToFail:v7];
}

- (void)gestureRecognizerOfType:(unint64_t)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v9 = a4;
  typeToGesture = self->_typeToGesture;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8 = [(NSMutableDictionary *)typeToGesture objectForKey:v7];

  if (v8)
  {
    [v9 requireGestureRecognizerToFail:v8];
  }
}

- (void)cancelGestureRecognizerOfType:(unint64_t)a3 reason:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a4;
  typeToGesture = self->_typeToGesture;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v9 = [(NSMutableDictionary *)typeToGesture objectForKey:v8];

  if (v9 && [v9 isEnabled])
  {
    v10 = SBLogSystemGesture();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 sb_briefDescription];
      v12 = [v9 state];
      if (v12 >= 6)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"<unknown: 0x%X>", v12];
      }

      else
      {
        v13 = off_2783BE308[v12];
      }

      v14 = SBSystemGestureTypeDebugName(a3);
      *buf = 138544130;
      v16 = v6;
      v17 = 2114;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      v21 = 2114;
      v22 = v14;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "canceling (reason: %{public}@) <%{public}@ state:%{public}@ sgtype:'%{public}@' >", buf, 0x2Au);
    }

    [v9 setEnabled:0];
    [v9 setEnabled:1];
  }
}

- (unint64_t)typeOfSystemGesture:(id)a3
{
  v3 = objc_getAssociatedObject(a3, "_SBSystemGestureType");
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (BOOL)shouldSystemGestureReceiveTouchWithLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(SBSystemGestureManager *)self windowForSystemGestures];
  v6 = [v5 windowScene];
  v7 = [v6 screen];
  v8 = [v7 displayIdentity];

  v9 = [SBApp windowSceneManager];
  v10 = [v9 windowSceneForDisplayIdentity:v8];

  v11 = [v10 pictureInPictureManager];
  v12 = [v10 screen];
  v13 = [v12 fixedCoordinateSpace];
  v14 = [v10 coordinateSpace];
  [v13 convertPoint:v14 toCoordinateSpace:{x, y}];
  v16 = v15;
  v18 = v17;

  v19 = [v11 isPointWithinAnyPictureInPictureContent:{v16, v18}] ^ 1;
  v20 = SBLogSystemGestureAppSwitcher();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v28.x = x;
    v28.y = y;
    v21 = NSStringFromPoint(v28);
    v23 = 138478083;
    v24 = v21;
    v25 = 1024;
    v26 = v19;
    _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "Should system gesture receive touch with location:%{private}@ <%{BOOL}u>", &v23, 0x12u);
  }

  return v19;
}

- (id)succinctDescription
{
  v2 = [(SBSystemGestureManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_displayIdentity withName:@"_display"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSystemGestureManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(SBSystemGestureManager *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_recognizingTouchGestures withName:@"_recognizingTouchGestures"];
  v6 = [v4 appendObject:self->_typeToGesture withName:@"_typeToGesture"];
  v7 = [v4 appendObject:self->_typeToState withName:@"_typeToState"];

  return v4;
}

- (void)invalidate
{
  typeToGesture = self->_typeToGesture;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__SBSystemGestureManager_invalidate__block_invoke;
  v11[3] = &unk_2783BE2C8;
  v11[4] = self;
  [(NSMutableDictionary *)typeToGesture enumerateKeysAndObjectsUsingBlock:v11];
  [(BSInvalidatable *)self->_systemGestureSymbolicRule invalidate];
  systemGestureSymbolicRule = self->_systemGestureSymbolicRule;
  self->_systemGestureSymbolicRule = 0;

  [(BSInvalidatable *)self->_systemGestureEventDeferringRule invalidate];
  systemGestureEventDeferringRule = self->_systemGestureEventDeferringRule;
  self->_systemGestureEventDeferringRule = 0;

  [(BSInvalidatable *)self->_pointerEventRoutingAssertion invalidate];
  pointerEventRoutingAssertion = self->_pointerEventRoutingAssertion;
  self->_pointerEventRoutingAssertion = 0;

  [(BSInvalidatable *)self->_systemGesturesAllowedToken invalidate];
  systemGesturesAllowedToken = self->_systemGesturesAllowedToken;
  self->_systemGesturesAllowedToken = 0;

  [(UIPointerInteraction *)self->_systemPointerInteraction invalidate];
  systemPointerInteraction = self->_systemPointerInteraction;
  self->_systemPointerInteraction = 0;

  [(BSInvalidatable *)self->_systemPointerContextIDAssertion invalidate];
  systemPointerContextIDAssertion = self->_systemPointerContextIDAssertion;
  self->_systemPointerContextIDAssertion = 0;

  systemPencilInteraction = self->_systemPencilInteraction;
  self->_systemPencilInteraction = 0;

  self->_isInvalidated = 1;
}

void __36__SBSystemGestureManager_invalidate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 _disableSystemGesture:v5 withType:{objc_msgSend(a2, "unsignedIntegerValue")}];
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = [v10 view];
  v13 = SBSafeCast(v11, v12);

  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionDelegate);
  v15 = [WeakRetained pointerInteraction:v10 window:v13 regionForRequest:v9 defaultRegion:v8];

  return v15;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [v7 view];
  v10 = SBSafeCast(v8, v9);

  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionDelegate);
  v12 = [WeakRetained pointerInteraction:v7 window:v10 styleForRegion:v6];

  return v12;
}

- (void)pointerInteraction:(id)a3 willEnterRegion:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = [v10 view];
  v14 = SBSafeCast(v11, v12);

  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionDelegate);
  [WeakRetained pointerInteraction:v10 window:v14 willEnterRegion:v9 animator:v8];
}

- (void)pointerInteraction:(id)a3 willExitRegion:(id)a4 animator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = [v10 view];
  v14 = SBSafeCast(v11, v12);

  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionDelegate);
  [WeakRetained pointerInteraction:v10 window:v14 willExitRegion:v9 animator:v8];
}

- (void)_pencilInteraction:(id)a3 didReceiveSqueeze:(id)a4
{
  v4 = a4;
  if ([MEMORY[0x277D75820] _preferredSqueezeAction] == 6 && objc_msgSend(v4, "_phase") == 2)
  {
    v5 = SBLogSystemGesturePencilSqueeze();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "SBSystemGestureManager did receive pencil squeeze", v14, 2u);
    }

    [v4 _timestamp];
    v7 = v6;
    v8 = MEMORY[0x277CBEAA8];
    v9 = CACurrentMediaTime();
    v10 = [MEMORY[0x277CBEAA8] now];
    [v10 timeIntervalSinceReferenceDate];
    v12 = [v8 dateWithTimeIntervalSinceReferenceDate:v7 - (v9 - v11)];

    v13 = [SBApp pencilSqueezeActionControl];
    [(SBPencilSqueezeActionControl *)v13 performSqueezeActionWithTimestamp:v12];
  }
}

- (BOOL)_isGestureWithTypeAllowed:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(SBSystemGestureManager *)self areSystemGesturesDisabledForAccessibility])
  {
    v5 = SBLogSystemGestureDetail();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      displayIdentity = self->_displayIdentity;
      v15 = 138543362;
      v16 = displayIdentity;
      v7 = "(Display - %{public}@) Not allowing system gestures because accessibility has disabled them";
      v8 = v5;
      v9 = 12;
LABEL_9:
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, v7, &v15, v9);
    }
  }

  else
  {
    if (![(NSMutableSet *)self->_gesturesDisabledAssertions count])
    {
      return 1;
    }

    gestureTypesAllowedWhileDisableAssertionsExist = self->_gestureTypesAllowedWhileDisableAssertionsExist;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    LOBYTE(gestureTypesAllowedWhileDisableAssertionsExist) = [(NSSet *)gestureTypesAllowedWhileDisableAssertionsExist containsObject:v11];

    if (gestureTypesAllowedWhileDisableAssertionsExist)
    {
      return 1;
    }

    v5 = SBLogSystemGestureDetail();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_displayIdentity;
      gesturesDisabledAssertions = self->_gesturesDisabledAssertions;
      v15 = 138543618;
      v16 = v13;
      v17 = 2114;
      v18 = gesturesDisabledAssertions;
      v7 = "(Display - %{public}@) Not allowing system gestures due to assertions:%{public}@";
      v8 = v5;
      v9 = 22;
      goto LABEL_9;
    }
  }

  return 0;
}

- (int64_t)_recognitionEventForTouchGestureType:(unint64_t)a3
{
  v3 = 2;
  switch(a3)
  {
    case 1uLL:
    case 2uLL:
    case 0x38uLL:
      v4 = [MEMORY[0x277CF0CA8] sharedInstance];
      if ([v4 homeButtonType] == 2)
      {
        v3 = 3;
      }

      else if (__sb__runningInSpringBoard())
      {
        if (SBFEffectiveDeviceClass() == 2)
        {
          v3 = 3;
        }

        else
        {
          v3 = 1;
        }
      }

      else
      {
        v6 = [MEMORY[0x277D75418] currentDevice];
        if ([v6 userInterfaceIdiom] == 1)
        {
          v3 = 3;
        }

        else
        {
          v3 = 1;
        }
      }

      return v3;
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x29uLL:
    case 0x2CuLL:
    case 0x2EuLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x39uLL:
    case 0x3BuLL:
    case 0x3CuLL:
    case 0x3DuLL:
    case 0x3FuLL:
    case 0x40uLL:
    case 0x41uLL:
    case 0x42uLL:
    case 0x43uLL:
    case 0x44uLL:
    case 0x45uLL:
    case 0x46uLL:
      return 1;
    case 6uLL:
    case 7uLL:
    case 9uLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x2BuLL:
    case 0x2DuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x3AuLL:
    case 0x3EuLL:
    case 0x47uLL:
      return v3;
    case 0x13uLL:
    case 0x14uLL:
    case 0x1AuLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x2AuLL:
    case 0x33uLL:
      return 3;
    default:
      v5 = a3 - 97;
      if (a3 - 97 > 0x2E)
      {
        return 1;
      }

      if (((1 << v5) & 0x60000004A0FDLL) == 0)
      {
        if (((1 << v5) & 0x100006210000) != 0)
        {
          return 3;
        }

        else
        {
          return 1;
        }
      }

      return v3;
  }
}

- (BOOL)_isTouchGestureWithType:(unint64_t)a3
{
  result = 1;
  switch(a3)
  {
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xFuLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x3AuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x4AuLL:
    case 0x4BuLL:
    case 0x4CuLL:
    case 0x4DuLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x50uLL:
    case 0x51uLL:
    case 0x52uLL:
    case 0x53uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x5AuLL:
    case 0x5BuLL:
    case 0x5CuLL:
    case 0x5DuLL:
    case 0x5EuLL:
    case 0x61uLL:
    case 0x62uLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x70uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x89uLL:
    case 0x8BuLL:
    case 0x8EuLL:
    case 0x8FuLL:
      result = 0;
      break;
    default:
      return result;
  }

  return result;
}

- (BOOL)shouldEnableSystemGestureWithType:(unint64_t)a3
{
  v5 = [(SBSystemGestureManager *)self _shouldEnableSystemGestureWithType:?];
  if (v5)
  {
    if ([(NSMutableSet *)self->_gesturesDisabledAssertions count])
    {
      gestureTypesAllowedWhileDisableAssertionsExist = self->_gestureTypesAllowedWhileDisableAssertionsExist;
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      LOBYTE(gestureTypesAllowedWhileDisableAssertionsExist) = [(NSSet *)gestureTypesAllowedWhileDisableAssertionsExist containsObject:v7];

      LOBYTE(v5) = gestureTypesAllowedWhileDisableAssertionsExist;
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)_enableSystemGesture:(id)a3 withType:(unint64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  typeToState = self->_typeToState;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v9 = [(NSMutableDictionary *)typeToState objectForKey:v8];
  v10 = [v9 BOOLValue];

  if ((v10 & 1) == 0)
  {
    v11 = SBLogSystemGestureDetail();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      displayIdentity = self->_displayIdentity;
      v19 = SBSystemGestureTypeDebugName(a4);
      v20 = 138412802;
      v21 = displayIdentity;
      v22 = 2114;
      v23 = v19;
      v24 = 2112;
      v25 = v6;
      _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "(Display - %@) Enabling System Gesture Type: %{public}@ - %@", &v20, 0x20u);
    }

    v12 = self->_typeToState;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v12 setObject:MEMORY[0x277CBEC38] forKey:v13];

    [v6 addTarget:self action:sel__systemGestureChanged_];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SBIndirectTouchLifecycleMonitor *)self->_indirectTouchLifecycleMonitor addObserver:v6];
    }

    v14 = [v6 allowedTouchTypes];
    v15 = [v14 count];

    if (v15)
    {
      v16 = [(SBSystemGestureManager *)self _recognitionEventForTouchGestureType:a4];
    }

    else
    {
      v16 = 2;
    }

    v17 = [(SBSystemGestureManager *)self systemGestureManager];
    [v17 addGestureRecognizer:v6 recognitionEvent:v16 toDisplayWithIdentity:self->_displayIdentity];
  }
}

- (void)_disableSystemGesture:(id)a3 withType:(unint64_t)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  typeToState = self->_typeToState;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v9 = [(NSMutableDictionary *)typeToState objectForKey:v8];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = SBLogSystemGestureDetail();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      displayIdentity = self->_displayIdentity;
      v16 = SBSystemGestureTypeDebugName(a4);
      v17 = 138412802;
      v18 = displayIdentity;
      v19 = 2114;
      v20 = v16;
      v21 = 2112;
      v22 = v6;
      _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "(Display - %@) Disabling System Gesture Type: %{public}@ - %@", &v17, 0x20u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SBIndirectTouchLifecycleMonitor *)self->_indirectTouchLifecycleMonitor removeObserver:v6];
    }

    v12 = self->_typeToState;
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    [(NSMutableDictionary *)v12 removeObjectForKey:v13];

    [v6 removeTarget:self action:0];
    v14 = [(SBSystemGestureManager *)self systemGestureManager];
    [v14 removeGestureRecognizer:v6 fromDisplayWithIdentity:self->_displayIdentity];
    [(NSMapTable *)self->_recognizingTouchGestures removeObjectForKey:v6];
  }
}

- (void)_systemGestureChanged:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableSet *)self->_touchGestures containsObject:v4])
  {
    v5 = [v4 state];
    v6 = objc_getAssociatedObject(v4, "_SBSystemGestureType");
    v7 = *MEMORY[0x277D67680];
    v21[0] = *MEMORY[0x277D67688];
    v21[1] = v7;
    v22[0] = v6;
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
    v22[1] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v10 = MEMORY[0x277D65DD0];
    v11 = v9;
    v12 = [v10 sharedInstance];
    [v12 emitEvent:12 withPayload:v11];

    if ((v5 - 3) >= 3)
    {
      if (v5 != 1)
      {
LABEL_14:

        goto LABEL_15;
      }

      v16 = SBLogSystemGestureDetail();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemGestureManager _systemGestureChanged:];
      }

      v17 = SBSystemGestureTypeDebugName([v6 unsignedIntegerValue]);
      v18 = [v17 stringByReplacingOccurrencesOfString:@" " withString:&stru_283094718];

      v14 = [v18 stringByAppendingString:@"-Dragging"];

      v19 = [MEMORY[0x277CCAC38] processInfo];
      v20 = [v19 beginActivityWithOptions:0x200000000000 reason:v14];

      [(NSMapTable *)self->_recognizingTouchGestures setObject:v20 forKey:v4];
    }

    else
    {
      v13 = SBLogSystemGestureDetail();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemGestureManager _systemGestureChanged:];
      }

      v14 = [(NSMapTable *)self->_recognizingTouchGestures objectForKey:v4];
      if (v14 && v5 == 3)
      {
        v15 = [MEMORY[0x277CCAC38] processInfo];
        [v15 endActivity:v14];
      }

      [(NSMapTable *)self->_recognizingTouchGestures removeObjectForKey:v4];
    }

    goto LABEL_14;
  }

LABEL_15:
}

- (void)ignoreScreenEdgeTouchWithIdentifier:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(NSMutableDictionary *)self->_typeToGesture objectForKey:&unk_2833718A0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 _ignoreTouchForTouchIdentifier:v3];
  }
}

- (id)acquireSystemGestureDisableAssertionForReason:(id)a3 exceptSystemGestureTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_gesturesDisabledAssertions)
  {
    v8 = objc_opt_new();
    gesturesDisabledAssertions = self->_gesturesDisabledAssertions;
    self->_gesturesDisabledAssertions = v8;
  }

  v10 = [SBDisableSystemGestureAssertion alloc];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__SBSystemGestureManager_acquireSystemGestureDisableAssertionForReason_exceptSystemGestureTypes___block_invoke;
  v14[3] = &unk_2783A8A98;
  v14[4] = self;
  v11 = [(BSSimpleAssertion *)v10 initWithIdentifier:@"SystemGesturesDisabled" forReason:v6 queue:MEMORY[0x277D85CD0] invalidationBlock:v14];
  v12 = v11;
  if (v7)
  {
    [(SBDisableSystemGestureAssertion *)v11 setExceptions:v7];
  }

  [(NSMutableSet *)self->_gesturesDisabledAssertions addObject:v12];
  [(SBSystemGestureManager *)self _evaluateEnablement];

  return v12;
}

uint64_t __97__SBSystemGestureManager_acquireSystemGestureDisableAssertionForReason_exceptSystemGestureTypes___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(*(a1 + 32) + 56) removeObject:a2];
  v3 = *(a1 + 32);

  return [v3 _evaluateEnablement];
}

- (id)acquireSystemGestureDisableAssertionForReason:(id)a3 forSystemGestureTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:145];
  for (i = 1; i != 145; ++i)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    if (([v7 containsObject:v10] & 1) == 0)
    {
      [v8 addObject:v10];
    }
  }

  v11 = [(SBSystemGestureManager *)self acquireSystemGestureDisableAssertionForReason:v6 exceptSystemGestureTypes:v8];

  return v11;
}

void __72__SBSystemGestureManager__configureForNewSystemGestureWindowIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setPinOnButtonDown:SBFIsChamoisExternalDisplayControllerAvailable()];
}

void __58__SBSystemGestureManager_deviceHardwareButtonGestureTypes__block_invoke(uint64_t a1)
{
  v6 = [MEMORY[0x277CBEB58] set];
  for (i = 1; i != 145; ++i)
  {
    if ([*(a1 + 32) _isDeviceHardwareButtonGestureType:i])
    {
      v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
      [v6 addObject:v3];
    }
  }

  v4 = [v6 copy];
  v5 = deviceHardwareButtonGestureTypes_deviceHardwareButtonGestureTypes;
  deviceHardwareButtonGestureTypes_deviceHardwareButtonGestureTypes = v4;
}

+ (BOOL)_isDeviceHardwareButtonGestureType:(unint64_t)a3
{
  if (a3 - 72 < 0x11)
  {
    return 1;
  }

  result = 0;
  if (a3 - 91 <= 0x30 && ((1 << (a3 - 91)) & 0x1000000000007) != 0)
  {
    return 1;
  }

  return result;
}

- (id)acquireSystemEdgeGesturesIgnoreHIDEdgeFlagsForReason:(id)a3
{
  v4 = a3;
  ignoreHIDEdgeFlagsAssertion = self->_ignoreHIDEdgeFlagsAssertion;
  if (!ignoreHIDEdgeFlagsAssertion)
  {
    objc_initWeak(&location, self);
    v6 = MEMORY[0x277CF0BD0];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ignoreHIDEdgeFlags(%@)", self];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__SBSystemGestureManager_acquireSystemEdgeGesturesIgnoreHIDEdgeFlagsForReason___block_invoke;
    v14[3] = &unk_2783AD688;
    objc_copyWeak(&v15, &location);
    v8 = [v6 assertionWithIdentifier:v7 stateDidChangeHandler:v14];
    v9 = self->_ignoreHIDEdgeFlagsAssertion;
    self->_ignoreHIDEdgeFlagsAssertion = v8;

    v10 = self->_ignoreHIDEdgeFlagsAssertion;
    v11 = SBLogSystemGesture();
    [(BSCompoundAssertion *)v10 setLog:v11];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    ignoreHIDEdgeFlagsAssertion = self->_ignoreHIDEdgeFlagsAssertion;
  }

  v12 = [(BSCompoundAssertion *)ignoreHIDEdgeFlagsAssertion acquireForReason:v4];

  return v12;
}

void __79__SBSystemGestureManager_acquireSystemEdgeGesturesIgnoreHIDEdgeFlagsForReason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateIgnoreHIDEdgeFlagsAssertions];
}

- (void)_invalidateIgnoreHidEdgeFlagsAssertionForRemovedRecognizer:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v9;
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

  v7 = v6;

  if (v7)
  {
    v8 = [(NSMapTable *)self->_ignoreHIDEdgeFlagsAssertions objectForKey:v7];
    if (v8)
    {
      [(NSMapTable *)self->_ignoreHIDEdgeFlagsAssertions removeObjectForKey:v7];
      [v8 _invalidate];
    }
  }
}

- (SBSystemUIPointerInteractionDelegate)systemPointerInteractionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemPointerInteractionDelegate);

  return WeakRetained;
}

- (void)_initWithDisplayIdentity:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"displayIdentity" object:? file:? lineNumber:? description:?];
}

- (void)addGestureRecognizer:(uint64_t)a1 withType:(void *)a2 .cold.1(uint64_t a1, void **a2)
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v5 = *a2;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v7 = [v5 objectForKey:v6];
  OUTLINED_FUNCTION_0_3();
  [v8 handleFailureInMethod:v4 object:v7 file:? lineNumber:? description:?];
}

- (void)addGestureRecognizer:(uint64_t)a1 withType:.cold.2(uint64_t a1)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  OUTLINED_FUNCTION_0_3();
  [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)removeGestureRecognizer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "we don't currently think this is a system gesture: %{public}@", &v2, 0xCu);
}

- (void)_systemGestureChanged:.cold.1()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0_43();
  OUTLINED_FUNCTION_2_28(&dword_21ED4E000, v0, v1, "%s: (Display - %@) - %@", v2);
}

@end