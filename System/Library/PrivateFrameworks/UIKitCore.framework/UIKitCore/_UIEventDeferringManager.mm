@interface _UIEventDeferringManager
+ (uint64_t)isAnySceneBufferingEvents;
+ (void)setSystemShellBehaviorDelegate:(id)delegate;
+ (void)targetOfEventDeferringEnvironmentsDidUpdateForScene:(uint64_t)scene;
- (BOOL)_shouldDisableNewRecord:(void *)record outRecreationReasons:;
- (UIScene)_scene;
- (_BYTE)beginAndEndLocalEventDeferringForToken:(void *)token withReason:;
- (_BYTE)beginLocalEventDeferringInEnvironments:(void *)environments forOwningInterfaceElement:(void *)element withReason:;
- (_BYTE)beginRemoteEventDeferringInEnvironments:(void *)environments forOwningInterfaceElement:(void *)element toTarget:(void *)target withReason:;
- (_UIEventDeferringManager)initWithScene:(id)scene;
- (_UISceneUIWindowHosting)windowHostingScene;
- (id)_currentLocalOrCompatibilityRecordForEnvironment:(int)environment forcePreviousHardwareIdentifier:;
- (id)_currentLocalRecordsMatchingEnvironment:(int)environment forcePreviousHardwareIdentifier:;
- (id)_descriptorForCompatibility:(void *)compatibility environment:(uint64_t)environment deferringToken:;
- (id)_displayHardwareIndentifierAccountingForNotFinalizedChange:(id *)change;
- (id)_environmentsForLocalTargetWindowPointer:(uint64_t)pointer;
- (id)_localRecordForEnvironment:(id *)environment;
- (id)_localTargetWindowForEnvironment:(int)environment consultingFallbackIfPermitted:;
- (id)_localTargetWindowPointersUnderObservation;
- (id)_predicateForDescriptor:(uint64_t)descriptor;
- (id)_remoteDeferringRecordStackForEnvironment:(uint64_t)environment;
- (id)_remoteRecordsInStackMatchingEnvironment:(uint64_t)environment passingTest:;
- (id)_targetForDescriptor:(uint64_t)descriptor;
- (id)_topRemoteRecordInStackForEnvironment:(uint64_t)environment;
- (id)_trackedLocalTargetWindowPointerForEnvironment:(uint64_t)environment;
- (id)_trackedLocalTargetWindowPointers;
- (id)_transactionAssertion;
- (id)bufferKeyboardFocusEnvironmentEventsWithReason:(uint64_t)reason;
- (id)currentLocalDeferringTargetWindowMatchingEnvironment:(id)environment deferringToken:;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)fallbackLocalDeferringTargetWindowIfPermittedForEnvironment:(id *)environment;
- (id)internalBehavior;
- (id)localEventDeferringTargetWindowForEnvironment:(id)environment;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_displayHardwareIndentifierHasNotFinalizedChange;
- (uint64_t)_isRemoteRuleOwningElement:(id)element visibleForLocalTargetWindow:;
- (uint64_t)_removeLocalRecordForEnvironment:(uint64_t)result;
- (uint64_t)compareRemoteRuleOwningElement:(uint64_t)element toTopElementInEnvironment:;
- (void)_allEnvironments;
- (void)_currentLocalOrCompatibilityRecordMatchingEnvironment:(uint64_t)environment recordingManagerPointer:(int)pointer forcePreviousHardwareIdentifier:;
- (void)_disableEventDeferringRecordsInEnvironment:(void *)environment addingRecreationReason:(void *)reason forReason:;
- (void)_localTargetWindowDidAttachContext:(id)context;
- (void)_localTargetWindowDidDetachContext:(id)context;
- (void)_processEventDeferringActions:(uint64_t)actions actionsCount:(uint64_t)count inScope:(void *)scope forDeferringToken:(void *)token environments:(void *)environments target:(void *)target addingRecreationReason:(void *)reason removingRecreationReason:(void *)self0 forReason:;
- (void)_pushRemoteRecordOnStack:(uint64_t)stack forEnvironment:;
- (void)_recreateEventDeferringRecordsInEnvironment:(void *)environment removingRecreationReason:(void *)reason forReason:;
- (void)_removeRemoteRecord:(uint64_t)record forEnvironment:;
- (void)_sceneWillInvalidate:(id)invalidate;
- (void)_screenUniqueIdDidChange:(id)change;
- (void)_screenUniqueIdWillChange:(id)change;
- (void)_setLocalRecord:(uint64_t)record forEnvironment:;
- (void)_setTransactionAssertion:(uint64_t)assertion;
- (void)_stopObservingContextForLocalTargetWindowInEnvironment:(uint64_t)environment;
- (void)_targetProvidersByEnvironment;
- (void)_windowHostingScene:(id)scene didMoveFromScreen:(id)screen toScreen:(id)toScreen;
- (void)dealloc;
- (void)endEventDeferringForToken:(id)token withReason:;
- (void)eventDeferringManager:(id)manager didRemoveLocalCompatibilityRecordForDescriptor:(id)descriptor;
- (void)registerTargetProvider:(uint64_t)provider forEnvironment:;
- (void)removeEventDeferringRulesIfNeededForDeallocatingWindow:(id *)window;
- (void)setNeedsRemoteEventDeferringRuleComparisonInEnvironments:(id)environments forBehaviorDelegate:(id)delegate withReason:(id)reason;
@end

@implementation _UIEventDeferringManager

- (id)_localTargetWindowPointersUnderObservation
{
  v2 = *(self + 48);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(self + 48);
    *(self + 48) = v3;

    v2 = *(self + 48);
  }

  return v2;
}

- (_UISceneUIWindowHosting)windowHostingScene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

- (id)_trackedLocalTargetWindowPointers
{
  v2 = *(self + 40);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(self + 40);
    *(self + 40) = v3;

    v2 = *(self + 40);
  }

  return v2;
}

- (uint64_t)_displayHardwareIndentifierHasNotFinalizedChange
{
  selfCopy = self;
  windowHostingScene = [self windowHostingScene];
  _screen = [windowHostingScene _screen];

  displayConfiguration = [_screen displayConfiguration];
  isExternal = [displayConfiguration isExternal];

  LOBYTE(selfCopy) = selfCopy[80];
  if ((selfCopy & 0x30) == 0x10)
  {
    return isExternal;
  }

  else
  {
    return 0;
  }
}

- (id)_transactionAssertion
{
  if (self)
  {
    self = self[12];
    v1 = vars8;
  }

  return self;
}

- (void)_targetProvidersByEnvironment
{
  if (self)
  {
    selfCopy = self;
    v3 = self[4];
    if (!v3)
    {
      strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v5 = selfCopy[4];
      selfCopy[4] = strongToWeakObjectsMapTable;

      v3 = selfCopy[4];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (id)internalBehavior
{
  if (self)
  {
    self = self[13];
    v1 = vars8;
  }

  return self;
}

- (void)_allEnvironments
{
  selfCopy = self;
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2 = objc_opt_new();
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    _targetProvidersByEnvironment = [(_UIEventDeferringManager *)selfCopy _targetProvidersByEnvironment];
    v4 = [_targetProvidersByEnvironment countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(_targetProvidersByEnvironment);
          }

          [v2 addObject:{*(*(&v9 + 1) + 8 * i), v9}];
        }

        v5 = [_targetProvidersByEnvironment countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    selfCopy = [v2 copy];
  }

  return selfCopy;
}

- (void)dealloc
{
  v6[4] = *MEMORY[0x1E69E9840];
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"_UIScreenUniqueIdWillChangeNotification";
  v6[1] = @"_UIScreenUniqueIdDidChangeNotification";
  v6[2] = _UIWindowDidAttachContextNotification;
  v6[3] = _UIWindowDidDetachContextNotification;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIEventDeferringManager;
  [(_UIEventDeferringManager *)&v5 dealloc];
}

- (id)_topRemoteRecordInStackForEnvironment:(uint64_t)environment
{
  if (environment)
  {
    v2 = [(_UIEventDeferringManager *)environment _remoteDeferringRecordStackForEnvironment:a2];
    if ([v2 count])
    {
      lastObject = [v2 lastObject];
    }

    else
    {
      lastObject = 0;
    }
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (void)_setTransactionAssertion:(uint64_t)assertion
{
  if (assertion)
  {
    if (obj && *(assertion + 96))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__setTransactionAssertion_ object:assertion file:@"_UIEventDeferringManager.m" lineNumber:2154 description:{@"[%p] %s: Invalid to set a transaction assertion with one already present", assertion, "-[_UIEventDeferringManager _setTransactionAssertion:]"}];
    }

    objc_storeStrong((assertion + 96), obj);
  }
}

- (id)_localRecordForEnvironment:(id *)environment
{
  if (environment)
  {
    environment = [environment[2] objectForKey:a2];
    v2 = vars8;
  }

  return environment;
}

- (id)_descriptorForCompatibility:(void *)compatibility environment:(uint64_t)environment deferringToken:
{
  v56 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if (environment)
    {
      v7 = *(environment + 56);
      v8 = v7 != 0;
      v46 = [(_UIEventDeferringManager *)self _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
      if (v7 == 1)
      {
        v9 = [(_UIEventDeferringManager *)self _localTargetWindowForEnvironment:compatibility consultingFallbackIfPermitted:0];
        if ([self[13] shouldAllowFallbackWindowForEnvironment:compatibility])
        {
          v10 = [(_UIEventDeferringManager *)self _currentLocalOrCompatibilityRecordForEnvironment:compatibility forcePreviousHardwareIdentifier:0];
          if (!v10 || ((v11 = v10, v12 = *(v10 + 16), (v13 = v12) == 0) ? (v14 = 0) : (v14 = *(v12 + 9)), v15 = v14, v13, v11, !v15))
          {
            v15 = v9;
          }

          CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE70);
          if (*CategoryCachedImpl)
          {
            v17 = *(CategoryCachedImpl + 8);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = v17;
              *buf = 134349826;
              selfCopy3 = self;
              v50 = 2114;
              compatibilityCopy3 = compatibility;
              v52 = 1026;
              _contextId = [v9 _contextId];
              v54 = 2114;
              v55 = v9;
              _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] Returning fallback remote predicate window: contextID: 0x%{public}X; %{public}@", buf, 0x26u);
            }
          }
        }

        else
        {
          v20 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE68);
          if (*v20)
          {
            v43 = *(v20 + 8);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = v43;
              *buf = 134349826;
              selfCopy3 = self;
              v50 = 2114;
              compatibilityCopy3 = compatibility;
              v52 = 1026;
              _contextId = [v9 _contextId];
              v54 = 2114;
              v55 = v9;
              _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] Returning remote predicate window: contextID: 0x%{public}X; %{public}@", buf, 0x26u);
            }
          }

          v15 = v9;
        }

        _contextId2 = [v15 _contextId];
        v19 = 1;
LABEL_18:
        stringRepresentation = 0;
        if (!v8 && (a2 & 1) == 0)
        {
          windowHostingScene = [self windowHostingScene];
          _FBSScene = [windowHostingScene _FBSScene];
          identityToken = [_FBSScene identityToken];
          stringRepresentation = [identityToken stringRepresentation];
        }

        if (v19)
        {
          if (environment)
          {
            v25 = *(environment + 72);
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;
          v27 = [v26 pid];

          if (!v8)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v27 = 0;
          if (!v8)
          {
LABEL_25:
            v28 = [(_UIEventDeferringManager *)self _localTargetWindowForEnvironment:compatibility consultingFallbackIfPermitted:1];
            if (!v28)
            {
              currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
              [currentHandler handleFailureInMethod:sel__descriptorForCompatibility_environment_deferringToken_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3011 description:{@"[%p] [%@] %s: Missing target window for environment", self, compatibility, "-[_UIEventDeferringManager _descriptorForCompatibility:environment:deferringToken:]"}];
            }

            v29 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE78);
            if (*v29)
            {
              v40 = *(v29 + 8);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = v40;
                _contextId3 = [v28 _contextId];
                *buf = 134349826;
                selfCopy3 = self;
                v50 = 2114;
                compatibilityCopy3 = compatibility;
                v52 = 1026;
                _contextId = _contextId3;
                v54 = 2114;
                v55 = v28;
                _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] Local target window: contextID: 0x%{public}X; %{public}@", buf, 0x26u);
              }
            }

            _contextId4 = [v28 _contextId];
            _string = 0;
            goto LABEL_39;
          }
        }

        if (environment)
        {
          v32 = *(environment + 72);
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
        token = [v33 token];

        if ([token _isIdentifierOfCAContext])
        {
          _contextId4 = [token _identifierOfCAContext];
        }

        else
        {
          if ([token _isString])
          {
            _string = [token _string];
            _contextId4 = 0;
LABEL_38:

            v28 = 0;
LABEL_39:
            v35 = [_UIEventDeferringDescriptor alloc];
            if (environment)
            {
              v36 = *(environment + 56);
            }

            else
            {
              v36 = 0;
            }

            v37 = [(_UIEventDeferringDescriptor *)v35 _initWithScope:v36 compatibility:a2 environment:compatibility displayHardwareIdentifier:v46 predicateSceneIdentityString:stringRepresentation predicateWindowPointer:v15 predicateContextID:_contextId2 targetPID:v27 targetSceneIdentityString:_string targetWindowPointer:v28 targetContextID:_contextId4];

            goto LABEL_42;
          }

          _contextId4 = 0;
        }

        _string = 0;
        goto LABEL_38;
      }

      v19 = 0;
    }

    else
    {
      v46 = [(_UIEventDeferringManager *)self _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
      v19 = 0;
      v8 = 0;
    }

    v15 = 0;
    _contextId2 = 0;
    goto LABEL_18;
  }

  v37 = 0;
LABEL_42:

  return v37;
}

- (id)_predicateForDescriptor:(uint64_t)descriptor
{
  if (!descriptor)
  {
    v5 = 0;
    goto LABEL_27;
  }

  v4 = objc_alloc_init(MEMORY[0x1E698E3F0]);
  v5 = v4;
  if (a2)
  {
    v6 = *(a2 + 32);
    [v5 setEnvironment:v6];

    v7 = *(a2 + 40);
    v8 = MEMORY[0x1E698E3C8];
    if (v7)
    {
      builtinDisplay = [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v7];
      goto LABEL_8;
    }
  }

  else
  {
    [v4 setEnvironment:0];
    v8 = MEMORY[0x1E698E3C8];
  }

  builtinDisplay = [v8 builtinDisplay];
  v7 = 0;
LABEL_8:
  [v5 setDisplay:builtinDisplay];

  if (a2)
  {
    v10 = *(a2 + 24) == 0;
    v11 = *(a2 + 48);
    v12 = *(a2 + 56) == 0;
  }

  else
  {
    v11 = 0;
    v12 = 1;
    v10 = 1;
  }

  v13 = v11;
  v14 = v13 == 0;

  if (v12)
  {
    if (a2)
    {
      v15 = *(a2 + 48);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v14 = v16 != 0;
  }

  if (!v10)
  {
    if (!v13)
    {
      if (a2)
      {
        goto LABEL_20;
      }

      goto LABEL_34;
    }

LABEL_35:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__predicateForDescriptor_ object:descriptor file:@"_UIEventDeferringManager.m" lineNumber:3066 description:{@"[%p] %s: Invalid descriptor: %@", descriptor, "-[_UIEventDeferringManager _predicateForDescriptor:]", a2}];

    if (!a2)
    {
      goto LABEL_34;
    }

LABEL_20:
    if (*(a2 + 12))
    {
      v17 = [MEMORY[0x1E698E3A0] tokenForIdentifierOfCAContext:?];
      [v5 setToken:v17];
    }

    v18 = *(a2 + 48);
    goto LABEL_23;
  }

  if (a2)
  {
    if ((*(a2 + 8) | v14))
    {
      goto LABEL_20;
    }

    goto LABEL_35;
  }

  if (!v14)
  {
    goto LABEL_35;
  }

LABEL_34:
  v18 = 0;
LABEL_23:
  v19 = v18;

  if (v19)
  {
    v20 = MEMORY[0x1E698E3A0];
    if (a2)
    {
      v21 = *(a2 + 48);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = [v20 tokenForString:v22];
    [v5 setToken:v23];
  }

LABEL_27:

  return v5;
}

- (id)_targetForDescriptor:(uint64_t)descriptor
{
  if (descriptor)
  {
    v4 = objc_alloc_init(MEMORY[0x1E698E3F8]);
    v5 = v4;
    if (a2)
    {
      if (*(a2 + 16) >= 1)
      {
        [v4 setPid:?];
      }

      if (*(a2 + 20))
      {
        v6 = *(a2 + 64);

        if (v6)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel__targetForDescriptor_ object:descriptor file:@"_UIEventDeferringManager.m" lineNumber:3087 description:{@"[%p] %s: Descriptor should not specify a target contextId and a target scene identity: %@", descriptor, "-[_UIEventDeferringManager _targetForDescriptor:]", a2}];
        }

        if (*(a2 + 20))
        {
          v8 = [MEMORY[0x1E698E3A0] tokenForIdentifierOfCAContext:?];
          [v5 setToken:v8];
        }
      }

      v9 = *(a2 + 64);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      v11 = MEMORY[0x1E698E3A0];
      if (a2)
      {
        v12 = *(a2 + 64);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v11 tokenForString:v13];
      [v5 setToken:v14];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_removeLocalRecordForEnvironment:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if (!*(result + 96))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__removeLocalRecordForEnvironment_ object:v3 file:@"_UIEventDeferringManager.m" lineNumber:2429 description:{@"[%p] %s: Invalid state. Removing records without a transaction: %@", v3, "-[_UIEventDeferringManager _removeLocalRecordForEnvironment:]", v3}];
    }

    v4 = *(v3 + 16);

    return [v4 removeObjectForKey:a2];
  }

  return result;
}

- (void)_setLocalRecord:(uint64_t)record forEnvironment:
{
  if (self)
  {
    if (!*(self + 96))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__setLocalRecord_forEnvironment_ object:self file:@"_UIEventDeferringManager.m" lineNumber:2416 description:{@"[%p] %s: Invalid state. Saving records without a transaction: %@", self, "-[_UIEventDeferringManager _setLocalRecord:forEnvironment:]", self}];
    }

    v11 = [*(self + 16) objectForKey:record];
    if (v11)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:sel__setLocalRecord_forEnvironment_ object:self file:@"_UIEventDeferringManager.m" lineNumber:2420 description:{@"[%p] %s: Invalid to set a new local record when one already exists for the environment: %@", self, "-[_UIEventDeferringManager _setLocalRecord:forEnvironment:]", record}];
    }

    v6 = *(self + 16);
    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = *(self + 16);
      *(self + 16) = v7;

      v6 = *(self + 16);
    }

    [v6 setObject:a2 forKey:record];
  }
}

- (id)_displayHardwareIndentifierAccountingForNotFinalizedChange:(id *)change
{
  changeCopy = change;
  if (change)
  {
    HasNotFinalized = [(_UIEventDeferringManager *)change _displayHardwareIndentifierHasNotFinalizedChange];
    if (a2 && HasNotFinalized)
    {
      changeCopy = changeCopy[7];
    }

    else
    {
      windowHostingScene = [changeCopy windowHostingScene];
      _screen = [windowHostingScene _screen];

      displayConfiguration = [_screen displayConfiguration];
      changeCopy = [displayConfiguration hardwareIdentifier];
    }
  }

  return changeCopy;
}

- (id)_trackedLocalTargetWindowPointerForEnvironment:(uint64_t)environment
{
  if (environment)
  {
    _trackedLocalTargetWindowPointers = [(_UIEventDeferringManager *)environment _trackedLocalTargetWindowPointers];
    v4 = [_trackedLocalTargetWindowPointers objectForKey:a2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_stopObservingContextForLocalTargetWindowInEnvironment:(uint64_t)environment
{
  v23 = *MEMORY[0x1E69E9840];
  if (environment)
  {
    v4 = [a2 description];
    uTF8String = [v4 UTF8String];

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &_stopObservingContextForLocalTargetWindowInEnvironment____s_category);
    if (*CategoryCachedImpl)
    {
      v12 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349314;
        environmentCopy = environment;
        v21 = 2082;
        v22 = uTF8String;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}s] Stop observing context for local target window", buf, 0x16u);
      }
    }

    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __83___UIEventDeferringManager__stopObservingContextForLocalTargetWindowInEnvironment___block_invoke;
    v16 = &unk_1E70FCC60;
    environmentCopy2 = environment;
    v18 = uTF8String;
    v7 = [(_UIEventDeferringManager *)environment _trackedLocalTargetWindowPointerForEnvironment:a2];
    if (v7)
    {
      _trackedLocalTargetWindowPointers = [(_UIEventDeferringManager *)environment _trackedLocalTargetWindowPointers];
      [_trackedLocalTargetWindowPointers removeObjectForKey:{a2, v13, v14}];

      _localTargetWindowPointersUnderObservation = [(_UIEventDeferringManager *)environment _localTargetWindowPointersUnderObservation];
      [_localTargetWindowPointersUnderObservation removeObject:v7];

      _localTargetWindowPointersUnderObservation2 = [(_UIEventDeferringManager *)environment _localTargetWindowPointersUnderObservation];
      v11 = [_localTargetWindowPointersUnderObservation2 countForObject:v7];

      if (!v11)
      {
        v15(&v13, v7);
      }
    }
  }
}

- (void)_removeRemoteRecord:(uint64_t)record forEnvironment:
{
  if (self)
  {
    if (!*(self + 96))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__removeRemoteRecord_forEnvironment_ object:self file:@"_UIEventDeferringManager.m" lineNumber:2497 description:{@"[%p] %s: Invalid state. Removing records without a transaction: %@", self, "-[_UIEventDeferringManager _removeRemoteRecord:forEnvironment:]", self}];
    }

    v7 = [(_UIEventDeferringManager *)self _remoteDeferringRecordStackForEnvironment:record];
    [v7 removeObjectIdenticalTo:a2];
  }
}

- (BOOL)_shouldDisableNewRecord:(void *)record outRecreationReasons:
{
  if (self)
  {
    if (!record)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__shouldDisableNewRecord_outRecreationReasons_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3100 description:{@"Invalid parameter not satisfying: %@", @"outRecreationReasons"}];
    }

    v6 = objc_opt_new();
    if ([(_UIEventDeferringManager *)self _displayHardwareIndentifierHasNotFinalizedChange])
    {
      [v6 addObject:@"_UIEventDeferringRecreationReasonChangingScreenIdentifier"];
    }

    if (a2)
    {
      v7 = *(a2 + 16);
      if (v7 && (v8 = v7[3], v7, v8))
      {
        if (v8 != 1)
        {
          v12 = 0;
          goto LABEL_20;
        }

        v9 = *(a2 + 16);
        v10 = v9;
        if (v9)
        {
          v11 = *(v9 + 7);
        }

        else
        {
          v11 = 0;
        }

        v8 = 1;
      }

      else
      {
        v15 = *(a2 + 16);
        v10 = v15;
        if (v15)
        {
          v8 = 0;
          v11 = *(v15 + 9);
        }

        else
        {
          v11 = 0;
          v8 = 0;
        }
      }
    }

    else
    {
      v11 = 0;
      v8 = 0;
      v10 = 0;
    }

    v12 = v11;

LABEL_20:
    if (![v12 _contextId])
    {
      [v6 addObject:@"_UIEventDeferringRecreationReasonDetachedContext"];
    }

    if (v8 != 1)
    {
      goto LABEL_37;
    }

    v16 = *(self + 104);
    if (a2)
    {
      WeakRetained = objc_loadWeakRetained((a2 + 32));
      v18 = WeakRetained;
      if (WeakRetained)
      {
        v19 = WeakRetained[6];
      }

      else
      {
        v19 = 0;
      }

      v20 = *(a2 + 16);
      v21 = v20;
      if (v20)
      {
        v22 = *(v20 + 4);
        goto LABEL_28;
      }
    }

    else
    {
      v21 = 0;
      v18 = 0;
      v19 = 0;
    }

    v22 = 0;
LABEL_28:
    v23 = v22;
    v24 = [v16 shouldSuppressRemoteRuleForOwningElement:v19 inEnvironment:v23];

    if (v24)
    {
      [v6 addObject:@"_UIEventDeferringRecreationReasonBehaviorDelegateSuppressed"];
    }

    if (!v12)
    {
      goto LABEL_37;
    }

    if (a2)
    {
      v25 = objc_loadWeakRetained((a2 + 32));
      v26 = v25;
      if (v25)
      {
        v27 = *(v25 + 6);
LABEL_34:
        v28 = v27;

        if (([(_UIEventDeferringManager *)self _isRemoteRuleOwningElement:v28 visibleForLocalTargetWindow:v12]& 1) == 0)
        {
          [v6 addObject:@"_UIEventDeferringRecreationReasonTopRemoteElementNotVisible"];
        }

LABEL_37:
        *record = [v6 copy];
        v14 = [v6 count] != 0;

        return v14;
      }
    }

    else
    {
      v26 = 0;
    }

    v27 = 0;
    goto LABEL_34;
  }

  return 0;
}

- (id)_remoteDeferringRecordStackForEnvironment:(uint64_t)environment
{
  if (environment)
  {
    v4 = *(environment + 24);
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(environment + 24);
      *(environment + 24) = v5;

      v4 = *(environment + 24);
    }

    v7 = [v4 objectForKey:a2];
    if (!v7)
    {
      v7 = objc_opt_new();
      [*(environment + 24) setObject:v7 forKey:a2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_currentLocalOrCompatibilityRecordForEnvironment:(int)environment forcePreviousHardwareIdentifier:
{
  selfCopy = self;
  if (self)
  {
    v4 = [(_UIEventDeferringManager *)self _currentLocalRecordsMatchingEnvironment:a2 forcePreviousHardwareIdentifier:environment];
    if ([selfCopy[13] wantsLocalIdealRules])
    {
      v5 = @"LocalIdealRecord";
    }

    else
    {
      if (![selfCopy[13] wantsLocalCompatibilityRules])
      {
        selfCopy = 0;
        goto LABEL_8;
      }

      v5 = @"LocalCompatibilityRecord";
    }

    selfCopy = [v4 objectForKey:v5];
LABEL_8:
  }

  return selfCopy;
}

- (uint64_t)_isRemoteRuleOwningElement:(id)element visibleForLocalTargetWindow:
{
  if (!self)
  {
    return 0;
  }

  if (a2)
  {
    if (element)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__isRemoteRuleOwningElement_visibleForLocalTargetWindow_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3158 description:{@"Invalid parameter not satisfying: %@", @"remoteRuleElement"}];

    if (element)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel__isRemoteRuleOwningElement_visibleForLocalTargetWindow_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3159 description:{@"Invalid parameter not satisfying: %@", @"localTargetWindow"}];

LABEL_4:
  v6 = self[13];
  interfaceElementCategory = [a2 interfaceElementCategory];
  if (interfaceElementCategory != 1)
  {
    v8 = interfaceElementCategory;
    if (interfaceElementCategory == 3)
    {
      _existingView = [a2 _existingView];
      window = [_existingView window];

      if (!window)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (interfaceElementCategory != 2)
      {
        v10 = 0;
        window = 0;
        goto LABEL_15;
      }

      window = a2;
      if (!window)
      {
LABEL_8:
        v10 = 0;
        goto LABEL_15;
      }
    }

    v12 = [v6 isRemoteRuleOwningElement:a2 andContainingWindow:window visibleComparedToLocalTargetWindow:element];
    if (v12)
    {
      v13 = v12 == 1;
LABEL_28:
      v23 = v13;
      goto LABEL_29;
    }

    v10 = 1;
LABEL_15:
    IsElementOccludedByWindow = _UIEventDeferringBehaviorIsElementOccludedByWindow(a2, element);
    if (IsElementOccludedByWindow != 1)
    {
      if (IsElementOccludedByWindow)
      {
        if (IsElementOccludedByWindow == -1)
        {
LABEL_18:
          v23 = 0;
LABEL_29:

          v14 = v23;
          goto LABEL_30;
        }

        goto LABEL_20;
      }

      if ((v8 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
LABEL_20:
        if ((v10 & 1) != 0 && window != element)
        {
          if (([v6 wantsLocalIdealRules] & 1) != 0 || !objc_msgSend(v6, "wantsLocalCompatibilityRules"))
          {
            windowHostingScene = [self windowHostingScene];
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __83___UIEventDeferringManager__isRemoteRuleOwningElement_visibleForLocalTargetWindow___block_invoke;
            v21[3] = &unk_1E70FCC88;
            v21[4] = element;
            window = window;
            v22 = window;
            v17 = [windowHostingScene _topVisibleWindowPassingTest:v21];

            v23 = !v17 || v17 != element;
            goto LABEL_29;
          }

          goto LABEL_18;
        }
      }
    }

    v13 = 1;
    goto LABEL_28;
  }

  v14 = 1;
LABEL_30:

  return v14;
}

- (void)_pushRemoteRecordOnStack:(uint64_t)stack forEnvironment:
{
  if (self)
  {
    if (!*(self + 96))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__pushRemoteRecordOnStack_forEnvironment_ object:self file:@"_UIEventDeferringManager.m" lineNumber:2491 description:{@"[%p] %s: Invalid state. Saving records without a transaction: %@", self, "-[_UIEventDeferringManager _pushRemoteRecordOnStack:forEnvironment:]", self}];
    }

    v7 = [(_UIEventDeferringManager *)self _remoteDeferringRecordStackForEnvironment:stack];
    [v7 addObject:a2];
  }
}

- (_UIEventDeferringManager)initWithScene:(id)scene
{
  v62 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = _UIEventDeferringManager;
  v5 = [(_UIEventDeferringManager *)&v47 init];
  if (v5)
  {
    if (([scene _hostsWindows] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v5 file:@"_UIEventDeferringManager.m" lineNumber:1901 description:{@"Invalid parameter not satisfying: %@", @"[scene _hostsWindows]"}];
    }

    objc_storeWeak(&v5->_scene, scene);
    v5->_currentState = 1;
    v6 = _UIEventDeferringBehaviorForManager(v5);
    behavior = v5->_behavior;
    v5->_behavior = v6;

    atomic_store(0, &v5->_bufferingAssertionCount);
    *&v5->_deferringManagerFlags = *&v5->_deferringManagerFlags & 0xFE | _UIEventDeferringManagerIsAvailableForProcess();
    WeakRetained = objc_loadWeakRetained(&v5->_scene);
    v9 = objc_opt_class();
    Name = class_getName(v9);

    v11 = objc_opt_class();
    v12 = class_getName(v11);
    v13 = objc_loadWeakRetained(&v5->_scene);
    v14 = _UISceneSystemShellManagesKeyboardFocusForScene(v13);

    v15 = *(__UILogGetCategoryCachedImpl("EventDeferring", &initWithScene____s_category_0) + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = objc_loadWeakRetained(&v5->_scene);
      v18 = v5->_behavior;
      v19 = *&v5->_deferringManagerFlags & 1;
      *buf = 134350594;
      v49 = v5;
      v50 = 2082;
      v51 = Name;
      v52 = 2050;
      v53 = v17;
      v54 = 2082;
      v55 = v12;
      v56 = 2050;
      v57 = v18;
      v58 = 1026;
      v59 = v19;
      v60 = 1026;
      v61 = v14;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}p] Initialized with scene: <%{public}s: %{public}p>; behavior: <%{public}s: %{public}p>; availableForProcess: %{public}d, systemShellManagesKeyboardFocus: %{public}d", buf, 0x40u);
    }

    if (*&v5->_deferringManagerFlags)
    {
      if ((*&v5->_deferringManagerFlags & 4) == 0)
      {
        *&v5->_deferringManagerFlags |= 4u;
        windowHostingScene = [(_UIEventDeferringManager *)v5 windowHostingScene];
        _screen = [windowHostingScene _screen];

        displayConfiguration = [_screen displayConfiguration];
        isExternal = [displayConfiguration isExternal];

        v24 = [(_UIEventDeferringManager *)&v5->super.isa _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = isExternal;
        }

        if (v25 == 1)
        {
          *&v5->_deferringManagerFlags |= 0x10u;
          if (_screen)
          {
            v26 = _screen[32];
          }

          else
          {
            v26 = 0;
          }

          objc_storeStrong(&v5->_previousExternalScreenIdentifier, v26);
        }
      }

      keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
      [(_UIEventDeferringManager *)v5 registerTargetProvider:v5 forEnvironment:keyboardFocusEnvironment];

      v28 = v5->_behavior;
      LODWORD(keyboardFocusEnvironment) = [(_UIEventDeferringBehavior *)v28 wantsSystemKeyCommandOverlayRules];

      if (keyboardFocusEnvironment)
      {
        ui_systemKeyCommandOverlayEnvironment = [MEMORY[0x1E698E398] ui_systemKeyCommandOverlayEnvironment];
        [(_UIEventDeferringManager *)v5 registerTargetProvider:v5 forEnvironment:ui_systemKeyCommandOverlayEnvironment];
      }

      windowHostingScene2 = [(_UIEventDeferringManager *)v5 windowHostingScene];
      _screen2 = [windowHostingScene2 _screen];

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v5 selector:sel__screenUniqueIdWillChange_ name:@"_UIScreenUniqueIdWillChangeNotification" object:_screen2];
      [defaultCenter addObserver:v5 selector:sel__screenUniqueIdDidChange_ name:@"_UIScreenUniqueIdDidChangeNotification" object:_screen2];

      objc_initWeak(buf, v5);
      v33 = MEMORY[0x1E696AEC0];
      windowHostingScene3 = [(_UIEventDeferringManager *)v5 windowHostingScene];
      _sceneIdentifier = [windowHostingScene3 _sceneIdentifier];
      v36 = [v33 stringWithFormat:@"UIKit - EventDeferringState - %@", _sceneIdentifier];

      v37 = MEMORY[0x1E69E96A0];
      v45[1] = MEMORY[0x1E69E9820];
      v45[2] = 3221225472;
      v45[3] = __42___UIEventDeferringManager_initWithScene___block_invoke;
      v45[4] = &unk_1E70F6320;
      objc_copyWeak(&v46, buf);
      v38 = BSLogAddStateCaptureBlockWithTitle();
      stateCaptureToken = v5->_stateCaptureToken;
      v5->_stateCaptureToken = v38;

      v40 = objc_loadWeakRetained(&v5->_scene);
      LODWORD(_sceneIdentifier) = [v40 _isTargetOfKeyboardEventDeferringEnvironment];

      if (_sceneIdentifier)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __42___UIEventDeferringManager_initWithScene___block_invoke_2;
        block[3] = &unk_1E70F5A28;
        objc_copyWeak(v45, buf);
        v41 = MEMORY[0x1E69E96A0];
        dispatch_async(MEMORY[0x1E69E96A0], block);

        objc_destroyWeak(v45);
      }

      objc_destroyWeak(&v46);

      objc_destroyWeak(buf);
    }
  }

  return v5;
}

- (void)registerTargetProvider:(uint64_t)provider forEnvironment:
{
  if (self)
  {
    _targetProvidersByEnvironment = [(_UIEventDeferringManager *)self _targetProvidersByEnvironment];
    v7 = [_targetProvidersByEnvironment objectForKey:provider];

    if (!v7)
    {
      _targetProvidersByEnvironment2 = [(_UIEventDeferringManager *)self _targetProvidersByEnvironment];
      [_targetProvidersByEnvironment2 setObject:a2 forKey:provider];
    }
  }
}

+ (void)targetOfEventDeferringEnvironmentsDidUpdateForScene:(uint64_t)scene
{
  v64 = *MEMORY[0x1E69E9840];
  v38 = objc_opt_self();
  if ([a2 _isTargetOfKeyboardEventDeferringEnvironment])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [UIScene _scenesIncludingInternal:1];
    v41 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v41)
    {
      v3 = 0;
      v40 = *v51;
      do
      {
        v4 = 0;
        do
        {
          if (*v51 != v40)
          {
            v5 = v4;
            objc_enumerationMutation(obj);
            v4 = v5;
          }

          v42 = v4;
          v6 = *(*(&v50 + 1) + 8 * v4);
          _eventDeferringManager = [v6 _eventDeferringManager];
          if (_eventDeferringManager && ([v3 containsObject:_eventDeferringManager] & 1) == 0)
          {
            if (!v3)
            {
              v3 = objc_opt_new();
            }

            [v3 addObject:_eventDeferringManager];
            systemShellManagesKeyboardFocus = [_eventDeferringManager[13] systemShellManagesKeyboardFocus];
            v9 = _UISceneSystemShellManagesKeyboardFocusForScene(v6);
            eligibleForLocalCompatibilityRuleRemoval = [_eventDeferringManager[13] eligibleForLocalCompatibilityRuleRemoval];
            v11 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE50) + 8);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = v11;
              windowHostingScene = [_eventDeferringManager windowHostingScene];
              *buf = 134350080;
              *&buf[4] = _eventDeferringManager;
              *&buf[12] = 2050;
              *&buf[14] = windowHostingScene;
              *&buf[22] = 1026;
              LODWORD(v57) = systemShellManagesKeyboardFocus;
              WORD2(v57) = 1026;
              *(&v57 + 6) = v9;
              WORD5(v57) = 1026;
              HIDWORD(v57) = eligibleForLocalCompatibilityRuleRemoval;
              _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}p] Scene target of event deferring environments did update: scene: %{public}p; current systemShellManagesKeyboardFocus: %{public}d; systemShellManagesKeyboardFocusForScene: %{public}d; eligibleForRecordRemoval: %{public}d;", buf, 0x28u);
            }

            if (!(systemShellManagesKeyboardFocus & 1 | ((v9 & 1) == 0)) && ((eligibleForLocalCompatibilityRuleRemoval ^ 1) & 1) == 0)
            {
              v14 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE58) + 8);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134349312;
                *&buf[4] = v38;
                *&buf[12] = 1026;
                *&buf[14] = 1;
                _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}p] Updating system shell management of keyboard focus to: %{public}d", buf, 0x12u);
              }

              [_eventDeferringManager[13] setSystemShellManagesKeyboardFocus:1];
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              _allEnvironments = [(_UIEventDeferringManager *)_eventDeferringManager _allEnvironments];
              v45 = [_allEnvironments countByEnumeratingWithState:&v46 objects:v54 count:16];
              if (v45)
              {
                v44 = *v47;
                do
                {
                  v15 = 0;
                  do
                  {
                    if (*v47 != v44)
                    {
                      objc_enumerationMutation(_allEnvironments);
                    }

                    v16 = *(*(&v46 + 1) + 8 * v15);
                    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Removing local compatibility record for system shell managing keyboard focus in %@", objc_opt_class(), _eventDeferringManager, v16];
                    if (([_eventDeferringManager[13] eligibleForLocalCompatibilityRuleRemoval] & 1) == 0)
                    {
                      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                      windowHostingScene2 = [_eventDeferringManager windowHostingScene];
                      [currentHandler handleFailureInMethod:sel__removeLocalCompatibilityEventDeferringForSystemShellKeyboardFocusInEnvironment_withReason_ object:_eventDeferringManager file:@"_UIEventDeferringManager.m" lineNumber:3488 description:{@"[%p] %s: Invalid to request compatibility record removal on this scene: %@", _eventDeferringManager, "-[_UIEventDeferringManager _removeLocalCompatibilityEventDeferringForSystemShellKeyboardFocusInEnvironment:withReason:]", windowHostingScene2}];
                    }

                    v18 = [v16 description];
                    v19 = v18;
                    uTF8String = [v18 UTF8String];

                    v21 = v17;
                    uTF8String2 = [v17 UTF8String];
                    v23 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEB0) + 8);
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      *v60 = 134349570;
                      *&v60[4] = _eventDeferringManager;
                      *&v60[12] = 2082;
                      *&v60[14] = uTF8String;
                      *&v60[22] = 2082;
                      v61 = uTF8String2;
                      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] Removing all local compatibility event deferring rules for reason: %{public}s", v60, 0x20u);
                    }

                    v24 = [(_UIEventDeferringManager *)_eventDeferringManager _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
                    if (v24)
                    {
                      [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v24];
                    }

                    else
                    {
                      [MEMORY[0x1E698E3C8] builtinDisplay];
                    }
                    v25 = ;
                    *v60 = 0;
                    *&v60[8] = v60;
                    *&v60[16] = 0x3032000000;
                    v61 = __Block_byref_object_copy__33;
                    v62 = __Block_byref_object_dispose__33;
                    v63 = 0;
                    v26 = _eventDeferringCompatibilityQueue();
                    *buf = MEMORY[0x1E69E9820];
                    *&buf[8] = 3221225472;
                    *&buf[16] = __119___UIEventDeferringManager__removeLocalCompatibilityEventDeferringForSystemShellKeyboardFocusInEnvironment_withReason___block_invoke;
                    *&v57 = &unk_1E70FB728;
                    v59 = v60;
                    v27 = v25;
                    *(&v57 + 1) = v27;
                    v58 = v16;
                    dispatch_sync(v26, buf);

                    v28 = *(*&v60[8] + 40);
                    if (v28)
                    {
                      WeakRetained = objc_loadWeakRetained((v28 + 32));
                      v30 = [MEMORY[0x1E695DFD8] setWithObject:v16];
                      v31 = v3;
                      if (WeakRetained)
                      {
                        v32 = WeakRetained[7];
                        v33 = WeakRetained[9];
                      }

                      else
                      {
                        v32 = 0;
                        v33 = 0;
                      }

                      v34 = v33;
                      [(_UIEventDeferringManager *)_eventDeferringManager _processEventDeferringActions:2 actionsCount:v32 inScope:WeakRetained forDeferringToken:v30 environments:v34 target:0 addingRecreationReason:0 removingRecreationReason:v17 forReason:?];
                      v3 = v31;
                    }

                    _Block_object_dispose(v60, 8);
                    ++v15;
                  }

                  while (v45 != v15);
                  v37 = [_allEnvironments countByEnumeratingWithState:&v46 objects:v54 count:16];
                  v45 = v37;
                }

                while (v37);
              }
            }
          }

          v4 = v42 + 1;
        }

        while (v42 + 1 != v41);
        v41 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v41);
    }

    else
    {
      v3 = 0;
    }
  }
}

- (void)_sceneWillInvalidate:(id)invalidate
{
  v38 = *MEMORY[0x1E69E9840];
  deferringManagerFlags = self->_deferringManagerFlags;
  windowHostingScene = [(_UIEventDeferringManager *)self windowHostingScene];
  _hasInvalidated = [windowHostingScene _hasInvalidated];

  if (_hasInvalidated)
  {
    if (*&self->_deferringManagerFlags & 2 | deferringManagerFlags & 1)
    {
      if ((*&self->_deferringManagerFlags & 2) == 0)
      {
        invalidate = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: removing all deferring rules due to scene invalidation: %p", objc_opt_class(), self, invalidate];
        _allEnvironments = [(_UIEventDeferringManager *)self _allEnvironments];
        objc_initWeak(&location, self);
        v9 = [_UIEventDeferringOwnershipToken alloc];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __103___UIEventDeferringManager__removeEventDeferringRecordsForAllEnvironmentsWithOwningElement_withReason___block_invoke;
        v31[3] = &unk_1E70FCD28;
        objc_copyWeak(&v32, &location);
        v10 = [(_UIEventDeferringOwnershipToken *)v9 _initWithOwner:1 scope:_allEnvironments environments:0 target:invalidate reason:v31 endDeferringBlock:?];
        v11 = invalidate;
        uTF8String = [invalidate UTF8String];
        v13 = *(__UILogGetCategoryCachedImpl("EventDeferring", &_removeEventDeferringRecordsForAllEnvironmentsWithOwningElement_withReason____s_category) + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349314;
          selfCopy = self;
          v36 = 2082;
          v37 = uTF8String;
          _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}p] Removing all event deferring rules for reason: %{public}s", buf, 0x16u);
        }

        if (v10)
        {
          v14 = *(v10 + 7);
          v15 = *(v10 + 8);
          v16 = *(v10 + 9);
        }

        else
        {
          v15 = 0;
          v14 = 0;
          v16 = 0;
        }

        v17 = v16;
        [(_UIEventDeferringManager *)self _processEventDeferringActions:3 actionsCount:v14 inScope:v10 forDeferringToken:v15 environments:v17 target:0 addingRecreationReason:0 removingRecreationReason:invalidate forReason:?];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v18 = _allEnvironments;
        v19 = [v18 countByEnumeratingWithState:&v27 objects:buf count:16];
        if (v19)
        {
          v20 = *v28;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v28 != v20)
              {
                objc_enumerationMutation(v18);
              }

              if (v10)
              {
                [*(v10 + 1) removeObject:*(*(&v27 + 1) + 8 * i)];
                if ((v10[24] & 1) == 0 && ![*(v10 + 1) count])
                {
                  v10[24] = 1;
                }
              }
            }

            v19 = [v18 countByEnumeratingWithState:&v27 objects:buf count:16];
          }

          while (v19);
        }

        objc_destroyWeak(&v32);
        objc_destroyWeak(&location);

        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter removeObserver:self];

        v23 = self->_behavior;
        systemShellBehaviorDelegate = [(_UIEventDeferringBehavior *)v23 systemShellBehaviorDelegate];

        if (systemShellBehaviorDelegate)
        {
          v25 = self->_behavior;
          [(_UIEventDeferringBehavior *)v25 setSystemShellBehaviorDelegate:0];
        }

        *&self->_deferringManagerFlags |= 2u;
      }
    }

    else
    {
      *&self->_deferringManagerFlags |= 2u;
    }
  }
}

+ (void)setSystemShellBehaviorDelegate:(id)delegate
{
  v31 = *MEMORY[0x1E69E9840];
  if ((_UIEventDeferringSystemShellBehaviorIsAllowedForProcess() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEventDeferringManager.m" lineNumber:2172 description:{@"%s: A system shell behavior delegate is not allowed for this process", "+[_UIEventDeferringManager setSystemShellBehaviorDelegate:]"}];
  }

  v6 = qword_1ED49CE40;
  v7 = v6;
  if (delegate && v6)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringManager.m" lineNumber:2175 description:{@"%s: Invalid to set a system shell behavior delegate with one already present", "+[_UIEventDeferringManager setSystemShellBehaviorDelegate:]"}];
  }

  v8 = objc_opt_class();
  Name = class_getName(v8);
  v10 = objc_opt_class();
  v11 = class_getName(v10);
  v12 = *(__UILogGetCategoryCachedImpl("EventDeferring", algn_1ED49CE48) + 8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v28 = Name;
    v29 = 2082;
    v30 = v11;
    _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "Setting system shell behavior delegate: existing: %{public}s; new: %{public}s", buf, 0x16u);
  }

  objc_storeStrong(&qword_1ED49CE40, delegate);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = [UIScene _scenesIncludingInternal:1];
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v13);
        }

        _eventDeferringManager = [*(*(&v22 + 1) + 8 * i) _eventDeferringManager];
        if (_eventDeferringManager && ([v16 containsObject:_eventDeferringManager] & 1) == 0)
        {
          if (!v16)
          {
            v16 = objc_opt_new();
          }

          [v16 addObject:_eventDeferringManager];
          [_eventDeferringManager[13] setSystemShellBehaviorDelegate:qword_1ED49CE40];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }
}

- (void)eventDeferringManager:(id)manager didRemoveLocalCompatibilityRecordForDescriptor:(id)descriptor
{
  if (descriptor)
  {
    v6 = *(descriptor + 4);
  }

  else
  {
    v6 = 0;
  }

  v11 = v6;
  v7 = [(_UIEventDeferringManager *)self _trackedLocalTargetWindowPointerForEnvironment:v11];
  v8 = v7;
  if (v7)
  {
    pointerValue = [v7 pointerValue];
    v10 = descriptor ? *(descriptor + 9) : 0;
    if (pointerValue == v10)
    {
      [(_UIEventDeferringManager *)self _stopObservingContextForLocalTargetWindowInEnvironment:v11];
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIEventDeferringManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:_NSStringFromUIDeferringState[self->_currentState] withName:@"currentState"];
  v4 = [v3 appendObject:self->_transactionAssertion withName:@"transactionAssertion"];
  internalBehavior = [(_UIEventDeferringManager *)&self->super.isa internalBehavior];
  succinctDescription = [internalBehavior succinctDescription];
  v7 = [v3 appendObject:succinctDescription withName:@"behavior"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_UIEventDeferringManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIEventDeferringManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:prefix];
  [v5 appendString:_NSStringFromUIDeferringState[self->_currentState] withName:@"currentState"];
  v6 = [v5 appendObject:self->_transactionAssertion withName:@"transactionAssertion"];
  v7 = atomic_load(&self->_bufferingAssertionCount);
  v8 = [v5 appendInteger:v7 withName:@"bufferingAssertionCount"];
  v9 = [v5 appendBool:(*&self->_deferringManagerFlags >> 1) & 1 withName:@"hasInvalidated"];
  v10 = [v5 appendBool:(*&self->_deferringManagerFlags >> 2) & 1 withName:@"evaluatedInitialExternalScreenDisconnection"];
  v11 = [v5 appendBool:(*&self->_deferringManagerFlags >> 3) & 1 withName:@"processingScreenIdentifierWillChange"];
  v12 = [v5 appendBool:(*&self->_deferringManagerFlags >> 4) & 1 withName:@"processedScreenIdentifierWillChange"];
  v13 = [v5 appendBool:(*&self->_deferringManagerFlags >> 5) & 1 withName:@"processingScreenIdentifierDidChange"];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v18[3] = &unk_1E70F35B8;
  v14 = v5;
  v19 = v14;
  selfCopy = self;
  v15 = [v14 modifyBody:v18];
  v16 = v14;

  return v14;
}

- (id)_currentLocalRecordsMatchingEnvironment:(int)environment forcePreviousHardwareIdentifier:
{
  v6 = [self[2] objectForKey:a2];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__33;
  v24 = __Block_byref_object_dispose__33;
  v25 = 0;
  if (environment)
  {
    v7 = self[7];
  }

  else
  {
    v7 = [(_UIEventDeferringManager *)self _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
  }

  v8 = v7;
  if (v7)
  {
    [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v7];
  }

  else
  {
    [MEMORY[0x1E698E3C8] builtinDisplay];
  }
  v9 = ;
  v10 = _eventDeferringCompatibilityQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100___UIEventDeferringManager__currentLocalRecordsMatchingEnvironment_forcePreviousHardwareIdentifier___block_invoke;
  block[3] = &unk_1E70FB728;
  v19 = &v20;
  v11 = v9;
  v17 = v11;
  v18 = a2;
  dispatch_sync(v10, block);

  if (v6 || v21[5])
  {
    v12 = objc_opt_new();
    v13 = v12;
    if (v6)
    {
      [v12 setObject:v6 forKeyedSubscript:@"LocalIdealRecord"];
    }

    v14 = v21[5];
    if (v14)
    {
      [v13 setObject:v14 forKeyedSubscript:@"LocalCompatibilityRecord"];
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F8];
  }

  _Block_object_dispose(&v20, 8);

  return v13;
}

- (void)_currentLocalOrCompatibilityRecordMatchingEnvironment:(uint64_t)environment recordingManagerPointer:(int)pointer forcePreviousHardwareIdentifier:
{
  v5 = [(_UIEventDeferringManager *)self _currentLocalOrCompatibilityRecordForEnvironment:a2 forcePreviousHardwareIdentifier:pointer];
  v6 = v5;
  if (v5)
  {
    if (*(v5 + 40) == environment)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)_remoteRecordsInStackMatchingEnvironment:(uint64_t)environment passingTest:
{
  v18 = *MEMORY[0x1E69E9840];
  [(_UIEventDeferringManager *)self _remoteDeferringRecordStackForEnvironment:a2];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v14;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v14 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(*(&v13 + 1) + 8 * v9);
      v12 = 0;
      if ((*(environment + 16))(environment, v10, &v12))
      {
        if (!v7)
        {
          v7 = objc_opt_new();
        }

        [v7 addObject:v10];
        if (v12 == 1)
        {
          break;
        }
      }

      if (v6 == ++v9)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_environmentsForLocalTargetWindowPointer:(uint64_t)pointer
{
  v18 = *MEMORY[0x1E69E9840];
  if (pointer)
  {
    _trackedLocalTargetWindowPointers = [(_UIEventDeferringManager *)pointer _trackedLocalTargetWindowPointers];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [_trackedLocalTargetWindowPointers countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(_trackedLocalTargetWindowPointers);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [_trackedLocalTargetWindowPointers objectForKeyedSubscript:v9];
          v11 = [a2 isEqualToValue:v10];

          if (v11)
          {
            if (!v6)
            {
              v6 = objc_opt_new();
            }

            [v6 addObject:v9];
          }
        }

        v5 = [_trackedLocalTargetWindowPointers countByEnumeratingWithState:&v13 objects:v17 count:16];
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

  return v6;
}

- (void)_localTargetWindowDidAttachContext:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  object = [context object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [context object];
  }

  else
  {
    object2 = 0;
  }

  windowHostingScene = [(_UIEventDeferringManager *)self windowHostingScene];
  v8 = windowHostingScene;
  if (object2)
  {
    if (windowHostingScene)
    {
      _windowHostingScene = [object2 _windowHostingScene];

      if (_windowHostingScene == v8)
      {
        v10 = [MEMORY[0x1E696B098] valueWithPointer:object2];
        v11 = [(_UIEventDeferringManager *)self _environmentsForLocalTargetWindowPointer:v10];
        if (v11)
        {
          v20 = v10;
          v21 = v8;
          _contextId = [object2 _contextId];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v19 = v11;
          obj = v11;
          v13 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v24;
            do
            {
              v16 = 0;
              do
              {
                if (*v24 != v15)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v23 + 1) + 8 * v16);
                v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: recreating %@: context attached for window: %p contextID: 0x%X", objc_opt_class(), self, v17, object2, _contextId];;
                [(_UIEventDeferringManager *)self _recreateEventDeferringRecordsInEnvironment:v17 removingRecreationReason:@"_UIEventDeferringRecreationReasonDetachedContext" forReason:v18];

                ++v16;
              }

              while (v14 != v16);
              v14 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
            }

            while (v14);
          }

          v10 = v20;
          v8 = v21;
          v11 = v19;
        }
      }
    }
  }
}

- (void)_recreateEventDeferringRecordsInEnvironment:(void *)environment removingRecreationReason:(void *)reason forReason:
{
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = [a2 description];
    uTF8String = [v8 UTF8String];

    if (environment)
    {
      v10 = _UIEventDeferringShorterRecreationReasonStringForReason(environment);
    }

    else
    {
      v10 = @"(nil)";
    }

    uTF8String2 = [(__CFString *)v10 UTF8String];
    uTF8String3 = [reason UTF8String];
    v13 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE90) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349826;
      selfCopy2 = self;
      v28 = 2082;
      v29 = uTF8String;
      v30 = 2082;
      v31 = uTF8String2;
      v32 = 2082;
      v33 = uTF8String3;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] Recreation of event deferring records requested: removing recreation reason: %{public}s; for reason: %{public}s", buf, 0x2Au);
    }

    v14 = [(_UIEventDeferringManager *)self _currentLocalOrCompatibilityRecordMatchingEnvironment:a2 recordingManagerPointer:self forcePreviousHardwareIdentifier:(*(self + 80) >> 5) & 1];
    v15 = v14;
    if (environment && v14)
    {
      recreationReasons = [(_UIEventDeferringRecord *)v14 recreationReasons];
      v17 = [recreationReasons containsObject:environment];

      if ((v17 & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        recreationReasons2 = [(_UIEventDeferringRecord *)v15 recreationReasons];
        [currentHandler handleFailureInMethod:sel__recreateEventDeferringRecordsInEnvironment_removingRecreationReason_forReason_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3411 description:{@"[%p] %s: Invalid state for recreating record. Recreation reason should be present but is not: %@; reasons: %@; record: %@", self, "-[_UIEventDeferringManager _recreateEventDeferringRecordsInEnvironment:removingRecreationReason:forReason:]", environment, recreationReasons2, v15}];
      }
    }

    else if (!v14)
    {
      v25 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE98) + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        selfCopy2 = self;
        v28 = 2082;
        v29 = uTF8String;
        _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] No records. Exiting event deferring records recreation request.", buf, 0x16u);
      }

      goto LABEL_15;
    }

    WeakRetained = objc_loadWeakRetained(v15 + 4);
    v21 = [MEMORY[0x1E695DFD8] setWithObject:a2];
    if (WeakRetained)
    {
      v22 = WeakRetained[7];
      v23 = WeakRetained[9];
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    v24 = v23;
    [(_UIEventDeferringManager *)self _processEventDeferringActions:3 actionsCount:v22 inScope:WeakRetained forDeferringToken:v21 environments:v24 target:0 addingRecreationReason:environment removingRecreationReason:reason forReason:?];

LABEL_15:
  }
}

- (void)_localTargetWindowDidDetachContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  object = [context object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [context object];
  }

  else
  {
    object2 = 0;
  }

  if ([object2 allowsWeakReference])
  {
    v7 = object2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  windowHostingScene = [(_UIEventDeferringManager *)self windowHostingScene];
  v10 = windowHostingScene;
  if (v8)
  {
    v11 = windowHostingScene == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    _windowHostingScene = [v8 _windowHostingScene];

    if (_windowHostingScene == v10)
    {
      v13 = [MEMORY[0x1E696B098] valueWithPointer:v8];
      v14 = [(_UIEventDeferringManager *)self _environmentsForLocalTargetWindowPointer:v13];
      if (v14)
      {
        v25 = v13;
        v26 = v10;
        v27 = object2;
        userInfo = [context userInfo];
        v16 = [userInfo objectForKeyedSubscript:@"contextId"];
        unsignedIntValue = [v16 unsignedIntValue];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v24 = v14;
        obj = v14;
        v18 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v30;
          do
          {
            v21 = 0;
            do
            {
              if (*v30 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v29 + 1) + 8 * v21);
              v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: disabling %@: context detached for window: %p contextID: 0x%X", objc_opt_class(), self, v22, v8, unsignedIntValue];;
              [(_UIEventDeferringManager *)&self->super.isa _disableEventDeferringRecordsInEnvironment:v22 addingRecreationReason:@"_UIEventDeferringRecreationReasonDetachedContext" forReason:v23];

              ++v21;
            }

            while (v19 != v21);
            v19 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v19);
        }

        v10 = v26;
        object2 = v27;
        v14 = v24;
        v13 = v25;
      }
    }
  }
}

- (void)_disableEventDeferringRecordsInEnvironment:(void *)environment addingRecreationReason:(void *)reason forReason:
{
  v34 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v8 = [a2 description];
    uTF8String = [v8 UTF8String];

    v10 = _UIEventDeferringShorterRecreationReasonStringForReason(environment);
    uTF8String2 = [v10 UTF8String];

    uTF8String3 = [reason UTF8String];
    v13 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEA0) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349826;
      selfCopy2 = self;
      v28 = 2082;
      v29 = uTF8String;
      v30 = 2082;
      v31 = uTF8String2;
      v32 = 2082;
      v33 = uTF8String3;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] Disabling event deferring records requested: adding recreation reason: %{public}s; for reason: %{public}s", buf, 0x2Au);
    }

    v14 = [(_UIEventDeferringManager *)self _currentLocalOrCompatibilityRecordMatchingEnvironment:a2 recordingManagerPointer:self forcePreviousHardwareIdentifier:0];
    v15 = v14;
    if (v14)
    {
      recreationReasons = [(_UIEventDeferringRecord *)v14 recreationReasons];
      v17 = [recreationReasons containsObject:environment];

      if (v17)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        recreationReasons2 = [(_UIEventDeferringRecord *)v15 recreationReasons];
        [currentHandler handleFailureInMethod:sel__disableEventDeferringRecordsInEnvironment_addingRecreationReason_forReason_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3456 description:{@"[%p] %s: Invalid state for disabling. Recreation reason should not be present but is: %@; reasons: %@; record: %@", self, "-[_UIEventDeferringManager _disableEventDeferringRecordsInEnvironment:addingRecreationReason:forReason:]", environment, recreationReasons2, v15}];
      }

      WeakRetained = objc_loadWeakRetained(v15 + 4);
      v19 = [MEMORY[0x1E695DFD8] setWithObject:a2];
      if (WeakRetained)
      {
        v20 = WeakRetained[7];
        v21 = WeakRetained[9];
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      v22 = v21;
      [(_UIEventDeferringManager *)self _processEventDeferringActions:3 actionsCount:v20 inScope:WeakRetained forDeferringToken:v19 environments:v22 target:environment addingRecreationReason:0 removingRecreationReason:reason forReason:?];
    }

    else
    {
      v23 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEA8) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        selfCopy2 = self;
        v28 = 2082;
        v29 = uTF8String;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] No records. Exiting event deferring records disable request.", buf, 0x16u);
      }
    }
  }
}

- (void)_screenUniqueIdWillChange:(id)change
{
  v39 = *MEMORY[0x1E69E9840];
  object = [change object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [change object];
  }

  else
  {
    object2 = 0;
  }

  windowHostingScene = [(_UIEventDeferringManager *)self windowHostingScene];
  v8 = windowHostingScene;
  if (object2)
  {
    if (windowHostingScene)
    {
      _screen = [windowHostingScene _screen];

      displayConfiguration = [object2 displayConfiguration];
      isExternal = [displayConfiguration isExternal];

      if (_screen == object2 && isExternal && (*&self->_deferringManagerFlags & 0x10) == 0)
      {
        v31 = v8;
        v33 = object2;
        *&self->_deferringManagerFlags |= 8u;
        v12 = [(_UIEventDeferringManager *)&self->super.isa _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
        previousExternalScreenIdentifier = self->_previousExternalScreenIdentifier;
        self->_previousExternalScreenIdentifier = v12;

        v14 = self->_previousExternalScreenIdentifier;
        if (!v14)
        {
          v14 = @"(nil)";
        }

        v15 = v14;
        userInfo = [change userInfo];
        v17 = [userInfo objectForKeyedSubscript:@"_UIScreenNewUniqueIdUserInfoKey"];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = @"(nil)";
        }

        v20 = v19;

        v30 = v15;
        uTF8String = [(__CFString *)v15 UTF8String];
        v29 = v20;
        uTF8String2 = [(__CFString *)v20 UTF8String];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        obj = [(_UIEventDeferringManager *)self _allEnvironments];
        v23 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v35;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v35 != v25)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v34 + 1) + 8 * i);
              v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: disabling %@: screen identifier will change for screen: %p current: %s; new: %s", objc_opt_class(), self, v27, v33, uTF8String, uTF8String2];;
              [(_UIEventDeferringManager *)&self->super.isa _disableEventDeferringRecordsInEnvironment:v27 addingRecreationReason:@"_UIEventDeferringRecreationReasonChangingScreenIdentifier" forReason:v28];
            }

            v24 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v24);
        }

        *&self->_deferringManagerFlags = *&self->_deferringManagerFlags & 0xE7 | 0x10;
        object2 = v33;
        v8 = v31;
      }
    }
  }
}

- (void)_screenUniqueIdDidChange:(id)change
{
  v31 = *MEMORY[0x1E69E9840];
  object = [change object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [change object];
  }

  else
  {
    object2 = 0;
  }

  windowHostingScene = [(_UIEventDeferringManager *)self windowHostingScene];
  v8 = windowHostingScene;
  if (object2 && windowHostingScene)
  {
    _screen = [windowHostingScene _screen];
    if (_screen == object2)
    {
      deferringManagerFlags = self->_deferringManagerFlags;

      if ((deferringManagerFlags & 0x10) != 0)
      {
        v11 = [(_UIEventDeferringManager *)&self->super.isa _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
        if (v11)
        {
          v24 = v8;
          *&self->_deferringManagerFlags |= 0x20u;
          previousExternalScreenIdentifier = self->_previousExternalScreenIdentifier;
          if (!previousExternalScreenIdentifier)
          {
            previousExternalScreenIdentifier = @"(nil)";
          }

          v22 = previousExternalScreenIdentifier;
          uTF8String = [(__CFString *)v22 UTF8String];
          v23 = v11;
          uTF8String2 = [v11 UTF8String];
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          obj = [(_UIEventDeferringManager *)self _allEnvironments];
          v15 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v27;
            do
            {
              v18 = 0;
              do
              {
                if (*v27 != v17)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v26 + 1) + 8 * v18);
                v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: recreating %@: screen identifier changed for screen: %p current: %s; new: %s", objc_opt_class(), self, v19, object2, uTF8String, uTF8String2];;
                [(_UIEventDeferringManager *)self _recreateEventDeferringRecordsInEnvironment:v19 removingRecreationReason:@"_UIEventDeferringRecreationReasonChangingScreenIdentifier" forReason:v20];

                ++v18;
              }

              while (v16 != v18);
              v16 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
            }

            while (v16);
          }

          *&self->_deferringManagerFlags &= 0xC7u;
          v21 = self->_previousExternalScreenIdentifier;
          self->_previousExternalScreenIdentifier = 0;

          v11 = v23;
          v8 = v24;
        }
      }
    }

    else
    {
    }
  }
}

- (void)_windowHostingScene:(id)scene didMoveFromScreen:(id)screen toScreen:(id)toScreen
{
  v42 = *MEMORY[0x1E69E9840];
  windowHostingScene = [(_UIEventDeferringManager *)self windowHostingScene];
  if (windowHostingScene == scene)
  {
    obja = windowHostingScene;
    windowHostingScene2 = [(_UIEventDeferringManager *)self windowHostingScene];
    _screen = [windowHostingScene2 _screen];

    if (_screen == toScreen)
    {
      if ((*&self->_deferringManagerFlags & 0x10) != 0)
      {
        displayConfiguration = [screen displayConfiguration];
        hardwareIdentifier = [displayConfiguration hardwareIdentifier];
        v15 = hardwareIdentifier;
        if (hardwareIdentifier)
        {
          v16 = hardwareIdentifier;
        }

        else
        {
          v16 = @"(nil)";
        }

        v17 = v16;

        displayConfiguration2 = [toScreen displayConfiguration];
        hardwareIdentifier2 = [displayConfiguration2 hardwareIdentifier];
        v20 = hardwareIdentifier2;
        if (hardwareIdentifier2)
        {
          v21 = hardwareIdentifier2;
        }

        else
        {
          v21 = @"(nil)";
        }

        v22 = v21;

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEventDeferringManager.m" lineNumber:2790 description:{@"Invalid state: window hosting scene moved screens while a screen hardware identifier change is in process: previousExternalScreenIdentifier: %@; oldScreenHardwareIdentifier: %@; newScreenHardwareIdentifier: %@; self: %@", self->_previousExternalScreenIdentifier, v17, v22, self}];
      }

      screenCopy = screen;
      toScreenCopy = toScreen;
      sceneCopy = scene;
      v27 = objc_opt_class();
      Name = class_getName(v27);
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = [(_UIEventDeferringManager *)self _allEnvironments];
      v29 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v38;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v37 + 1) + 8 * i);
            toScreenCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: recreating %@: window hosting scene moved screens: scene: <%s: %p> oldScreen: %p; newScreen: %p", objc_opt_class(), self, v33, Name, sceneCopy, screenCopy, toScreenCopy];;
            [(_UIEventDeferringManager *)self _recreateEventDeferringRecordsInEnvironment:v33 removingRecreationReason:0 forReason:toScreenCopy];
          }

          v30 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
        }

        while (v30);
      }
    }
  }

  else
  {
  }
}

- (id)localEventDeferringTargetWindowForEnvironment:(id)environment
{
  if (self)
  {
    windowHostingScene = [(_UIEventDeferringManager *)self windowHostingScene];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = windowHostingScene;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  _keyWindow = [(UIWindowScene *)v5 _keyWindow];

  return _keyWindow;
}

- (id)currentLocalDeferringTargetWindowMatchingEnvironment:(id)environment deferringToken:
{
  if (self)
  {
    v4 = [(_UIEventDeferringManager *)self _currentLocalOrCompatibilityRecordForEnvironment:a2 forcePreviousHardwareIdentifier:0];
    v5 = v4;
    if (v4 && (WeakRetained = objc_loadWeakRetained((v4 + 32)), WeakRetained, WeakRetained == environment))
    {
      v8 = v5[2];
      v9 = v8;
      if (v8)
      {
        v10 = *(v8 + 9);
      }

      else
      {
        v10 = 0;
      }

      v7 = v10;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_localTargetWindowForEnvironment:(int)environment consultingFallbackIfPermitted:
{
  v25 = *MEMORY[0x1E69E9840];
  _targetProvidersByEnvironment = [(_UIEventDeferringManager *)self _targetProvidersByEnvironment];
  v7 = [_targetProvidersByEnvironment objectForKey:a2];

  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__targetProviderForEnvironment_ object:self file:@"_UIEventDeferringManager.m" lineNumber:2819 description:{@"[%p] [%@] %s: No registered target provider for this environment", self, a2, "-[_UIEventDeferringManager _targetProviderForEnvironment:]"}];
  }

  v8 = [v7 localEventDeferringTargetWindowForEnvironment:a2];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &_localTargetWindowForEnvironment_consultingFallbackIfPermitted____s_category);
  if (*CategoryCachedImpl)
  {
    v12 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      *buf = 134350082;
      selfCopy = self;
      v17 = 2114;
      v18 = a2;
      v19 = 2114;
      v20 = objc_opt_class();
      v21 = 2050;
      v22 = v7;
      v23 = 2114;
      v24 = v8;
      v14 = v20;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] Target provider: <%{public}@: %{public}p>; returned local target window: %{public}@", buf, 0x34u);
    }
  }

  if (!v8 && environment)
  {
    if ([*(self + 104) shouldAllowFallbackWindowForEnvironment:a2])
    {
      v8 = [(_UIEventDeferringManager *)self fallbackLocalDeferringTargetWindowIfPermittedForEnvironment:a2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)fallbackLocalDeferringTargetWindowIfPermittedForEnvironment:(id *)environment
{
  v22 = *MEMORY[0x1E69E9840];
  if (environment && [environment[13] shouldAllowFallbackWindowForEnvironment:a2])
  {
    keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    v5 = [a2 isEqual:keyboardFocusEnvironment];

    if (v5)
    {
      windowHostingScene = [environment windowHostingScene];
      v7 = UIApp;
      _screen = [windowHostingScene _screen];
      v9 = [v7 _keyWindowForScreen:_screen];

      _windowHostingScene = [v9 _windowHostingScene];
      if (_windowHostingScene == windowHostingScene)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &fallbackLocalDeferringTargetWindowIfPermittedForEnvironment____s_category);
    if (*CategoryCachedImpl)
    {
      v15 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 134349570;
        environmentCopy = environment;
        v18 = 2114;
        v19 = a2;
        v20 = 2114;
        v21 = v12;
        _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] Returning fallback target window: %{public}@", &v16, 0x20u);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_processEventDeferringActions:(uint64_t)actions actionsCount:(uint64_t)count inScope:(void *)scope forDeferringToken:(void *)token environments:(void *)environments target:(void *)target addingRecreationReason:(void *)reason removingRecreationReason:(void *)self0 forReason:
{
  v80 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  if (![token count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3269 description:{@"Invalid parameter not satisfying: %@", @"environments.count > 0"}];
  }

  if (![recreationReason length])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3270 description:{@"Invalid parameter not satisfying: %@", @"reason.length > 0"}];
  }

  v16 = 0;
  v17 = 0;
  do
  {
    v17 |= 1 << LODWORD(a2[v16++]);
  }

  while (actions != v16);
  if ((*&v17 & 0x28003) != 0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:self file:"-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]" lineNumber:? description:?];
  }

  if (scope)
  {
    v19 = scope[6];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 != self && (v17 & 0x84) != 0;
  if (v19 == self)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = ((v17 & 4) == 0) & (v17 >> 5) | ((v17 & 0x80) == 0) & (v17 >> 10);
  }

  v58 = v21;
  v59 = v20;
  if (count && (v17 & 4) != 0)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:self file:"-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]" lineNumber:? description:?];
  }

  if (count != 1 && (v17 & 0x80) != 0)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:self file:"-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]" lineNumber:? description:?];

    if (count)
    {
      goto LABEL_25;
    }
  }

  else if (count)
  {
    goto LABEL_25;
  }

  if (environments)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    selfCopy4 = self;
    [currentHandler6 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3319 description:{@"[%p] %s: It is invalid to specify a target when deferring events locally", self, "-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]"}];

    goto LABEL_26;
  }

LABEL_25:
  selfCopy4 = self;
  if (!environments)
  {
    goto LABEL_28;
  }

LABEL_26:
  if ([environments pid] >= 1)
  {
    v23 = [environments pid];
    if (v23 != getpid())
    {
LABEL_28:
      if (target)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
  selfCopy4 = self;
  [currentHandler7 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3320 description:{@"[%p] %s: Remote event deferring cannot be pointed at the originating process", self, "-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]"}];

  if (target)
  {
LABEL_29:
    if (reason)
    {
      currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
      selfCopy4 = self;
      [currentHandler8 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3327 description:{@"[%p] %s: Invalid combination of recreation reasons: add: %@; remove: %@", self, "-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]", target, reason}];
    }
  }

LABEL_31:
  windowHostingScene = [selfCopy4 windowHostingScene];

  if (!windowHostingScene)
  {
    currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler9 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3330 description:{@"[%p] %s: Invalid %@ object. There is no scene", self, "-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]", objc_opt_class()}];
  }

  selfCopy6 = self;
  _transactionAssertion = [(_UIEventDeferringManager *)self _transactionAssertion];

  if (_transactionAssertion)
  {
    currentHandler10 = [MEMORY[0x1E696AAA8] currentHandler];
    selfCopy6 = self;
    [currentHandler10 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:self file:@"_UIEventDeferringManager.m" lineNumber:3333 description:{@"[%p] %s: Invalid state. Processing actions with an existing transaction: %@", self, "-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]", self}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __175___UIEventDeferringManager__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason___block_invoke;
  aBlock[3] = &unk_1E70FCD00;
  aBlock[9] = a2;
  aBlock[10] = actions;
  aBlock[4] = selfCopy6;
  aBlock[5] = scope;
  aBlock[6] = token;
  aBlock[7] = environments;
  aBlock[8] = recreationReason;
  v60 = _Block_copy(aBlock);
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE80);
  if (*CategoryCachedImpl)
  {
    v47 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      targetCopy = target;
      v49 = v60[2];
      v50 = v47;
      v49(v60, @"Processing actions");
      v51 = v50;
      v52 = target = targetCopy;
      build = [v52 build];
      *buf = 134349314;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = build;
      _os_log_impl(&dword_188A29000, v51, OS_LOG_TYPE_ERROR, "[%{public}p] State before processing actions:\n%{public}@", buf, 0x16u);
    }
  }

  if ((*(self + 80) & 0x20) != 0)
  {
    v28 = *(self + 56);
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v78 = 0;
  *buf = self;
  *&buf[8] = scope;
  *&buf[16] = 0;
  targetCopy2 = target;
  reasonCopy = reason;
  recreationReasonCopy = recreationReason;
  LOBYTE(v78) = v58;
  BYTE1(v78) = v59;
  BYTE2(v78) = (*(self + 80) & 0x20) != 0;
  v61 = v29;
  v79 = v61;
  v30 = (self + 8);
  handleEvent(stateMachineSpec, *(self + 8), 0, buf, (self + 8));
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  tokenCopy = token;
  v32 = [tokenCopy countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v32)
  {
    v33 = *v65;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v65 != v33)
        {
          objc_enumerationMutation(tokenCopy);
        }

        objc_storeStrong(&buf[16], *(*(&v64 + 1) + 8 * i));
        handleEvent(stateMachineSpec, *v30, 1, buf, v30);
        v35 = a2;
        actionsCopy = actions;
        do
        {
          v37 = *v35++;
          handleEvent(stateMachineSpec, *v30, v37, buf, v30);
          --actionsCopy;
        }

        while (actionsCopy);
        handleEvent(stateMachineSpec, *v30, 15, buf, v30);
      }

      v32 = [tokenCopy countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v32);
  }

  handleEvent(stateMachineSpec, *v30, 17, buf, v30);
  v38 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE88);
  if (*v38)
  {
    v54 = *(v38 + 8);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = (v60[2])(v60, @"Processed actions");
      build2 = [v55 build];
      *v69 = 134349314;
      selfCopy7 = self;
      v71 = 2114;
      v72 = build2;
      _os_log_impl(&dword_188A29000, v54, OS_LOG_TYPE_ERROR, "[%{public}p] State after processing actions:\n%{public}@", v69, 0x16u);
    }
  }

  __destructor_8_s8_s16_s24_s32_s40_s56(buf);
}

- (void)removeEventDeferringRulesIfNeededForDeallocatingWindow:(id *)window
{
  v111 = *MEMORY[0x1E69E9840];
  if (!window)
  {
    return;
  }

  v4 = objc_opt_class();
  Name = class_getName(v4);
  _windowHostingScene = [a2 _windowHostingScene];
  v7 = objc_opt_class();
  v8 = class_getName(v7);

  if (os_variant_has_internal_diagnostics())
  {
    v64 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEB8) + 8);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = v64;
      _windowHostingScene2 = [a2 _windowHostingScene];
      *buf = 134350082;
      windowCopy5 = window;
      v98 = 2082;
      v99 = Name;
      v100 = 2050;
      v101 = a2;
      v102 = 2082;
      v103 = v8;
      v104 = 2050;
      v105 = _windowHostingScene2;
      _os_log_impl(&dword_188A29000, v65, OS_LOG_TYPE_DEFAULT, "[%{public}p] Removing all event deferring rules (if needed) for deallocating window: <%{public}s: %{public}p>; scene: <%{public}s: %{public}p>", buf, 0x34u);
    }
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = [(_UIEventDeferringManager *)window _allEnvironments];
  v77 = [obj countByEnumeratingWithState:&v90 objects:v110 count:16];
  if (!v77)
  {
    v73 = 0;
    v75 = 0;
    goto LABEL_48;
  }

  v73 = 0;
  v76 = *v91;
  v75 = 0;
  do
  {
    v9 = 0;
    do
    {
      if (*v91 != v76)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v90 + 1) + 8 * v9);
      v11 = [(_UIEventDeferringManager *)window _trackedLocalTargetWindowPointerForEnvironment:v10];
      v12 = v11;
      if (v11 && [v11 pointerValue] == a2)
      {
        v13 = v73;
        if (!v73)
        {
          v13 = objc_opt_new();
        }

        v73 = v13;
        [v13 addObject:v10];
      }

      v14 = [(_UIEventDeferringManager *)window _currentLocalOrCompatibilityRecordMatchingEnvironment:v10 recordingManagerPointer:window forcePreviousHardwareIdentifier:0];
      v15 = [(_UIEventDeferringManager *)window _currentLocalOrCompatibilityRecordForEnvironment:v10 forcePreviousHardwareIdentifier:0];
      if (os_variant_has_internal_diagnostics())
      {
        v26 = [v10 description];
        v27 = v26;
        uTF8String = [v26 UTF8String];

        if (v15)
        {
          WeakRetained = objc_loadWeakRetained((v15 + 32));
          v29 = WeakRetained;
          if (WeakRetained)
          {
            v30 = *(WeakRetained + 10);
            goto LABEL_36;
          }
        }

        else
        {
          v29 = 0;
        }

        v30 = 0;
LABEL_36:
        v31 = v30;
        v32 = v31;
        uTF8String2 = [v31 UTF8String];

        v33 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEC0) + 8);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = v33;
          if (v15)
          {
            v35 = *(v15 + 40);
          }

          else
          {
            v35 = 0;
          }

          pointerValue = [v12 pointerValue];
          *buf = 134350594;
          windowCopy5 = window;
          v98 = 2082;
          v99 = uTF8String;
          v100 = 2050;
          v101 = v14;
          v102 = 2050;
          v103 = v15;
          v104 = 2050;
          v105 = v35;
          v106 = 2082;
          v107 = uTF8String2;
          v108 = 2050;
          v109 = pointerValue;
          _os_log_impl(&dword_188A29000, v34, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] Record matching manager: %{public}p; wild card match: %{public}p; wild card match recording manager: %{public}p; wild card match reason: %{public}s; target window for environment: %{public}p", buf, 0x48u);
        }
      }

      if (v14)
      {
        v16 = objc_loadWeakRetained(v14 + 4);
        v17 = v16 ? v16[6] : 0;
        v18 = v17 == a2;

        if (v18)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel_removeEventDeferringRulesIfNeededForDeallocatingWindow_ object:window file:@"_UIEventDeferringManager.m" lineNumber:3557 description:{@"[%p] %s: Bug in event deferring client: owning interface element is deallocating before deferring has ended: %@", window, "-[_UIEventDeferringManager removeEventDeferringRulesIfNeededForDeallocatingWindow:]", v14}];
        }
      }

      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __83___UIEventDeferringManager_removeEventDeferringRulesIfNeededForDeallocatingWindow___block_invoke;
      v89[3] = &unk_1E70FCC10;
      v89[4] = a2;
      v19 = [(_UIEventDeferringManager *)window _remoteRecordsInStackMatchingEnvironment:v10 passingTest:v89];
      v20 = v19;
      if (v19 && [v19 count])
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:sel_removeEventDeferringRulesIfNeededForDeallocatingWindow_ object:window file:@"_UIEventDeferringManager.m" lineNumber:3564 description:{@"[%p] %s: Bug in event deferring client: owning interface element is deallocating before deferring has ended: %@", window, "-[_UIEventDeferringManager removeEventDeferringRulesIfNeededForDeallocatingWindow:]", v20}];
      }

      if (v14)
      {
        v21 = v14[2];
        v22 = v21;
        if (v21)
        {
          v23 = *(v21 + 9);
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      if (v24 == a2)
      {
        v25 = v75;
        if (!v75)
        {
          v25 = objc_opt_new();
        }

        v75 = v25;
        [v25 addObject:v10];
      }

      ++v9;
    }

    while (v77 != v9);
    v39 = [obj countByEnumeratingWithState:&v90 objects:v110 count:16];
    v77 = v39;
  }

  while (v39);
LABEL_48:

  [v73 minusSet:v75];
  if (os_variant_has_internal_diagnostics())
  {
    v67 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEC8) + 8);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      v68 = v67;
      v69 = [v75 count];
      v70 = [v73 count];
      *buf = 134349568;
      windowCopy5 = window;
      v98 = 2050;
      v99 = v69;
      v100 = 2050;
      v101 = v70;
      _os_log_impl(&dword_188A29000, v68, OS_LOG_TYPE_DEFAULT, "[%{public}p] Environments to remove for deallocating window: %{public}lu; separate environments to end observation for deallocating window: %{public}lu", buf, 0x20u);
    }
  }

  if (v75)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: removing deferring rules for deallocating window: %p", objc_opt_class(), window, a2];
    objc_initWeak(&location, window);
    v41 = [_UIEventDeferringOwnershipToken alloc];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __83___UIEventDeferringManager_removeEventDeferringRulesIfNeededForDeallocatingWindow___block_invoke_522;
    v86[3] = &unk_1E70FCD28;
    objc_copyWeak(&v87, &location);
    v42 = [(_UIEventDeferringOwnershipToken *)v41 _initWithOwner:window scope:0 environments:v75 target:0 reason:v40 endDeferringBlock:v86];
    v43 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CED0) + 8);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      _contextId = [a2 _contextId];
      *buf = 134349568;
      windowCopy5 = window;
      v98 = 2050;
      v99 = a2;
      v100 = 1026;
      LODWORD(v101) = _contextId;
      _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}p] Removing all event deferring rules for deallocating window: %{public}p; contextId: 0x%{public}X", buf, 0x1Cu);
    }

    if (v42)
    {
      v45 = *(v42 + 7);
      v46 = *(v42 + 8);
      v47 = *(v42 + 9);
    }

    else
    {
      v46 = 0;
      v45 = 0;
      v47 = 0;
    }

    v48 = v47;
    [(_UIEventDeferringManager *)window _processEventDeferringActions:2 actionsCount:v45 inScope:v42 forDeferringToken:v46 environments:v48 target:0 addingRecreationReason:0 removingRecreationReason:v40 forReason:?];

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v49 = v75;
    v50 = [v49 countByEnumeratingWithState:&v82 objects:v95 count:16];
    if (v50)
    {
      v51 = *v83;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v83 != v51)
          {
            objc_enumerationMutation(v49);
          }

          if (v42)
          {
            [*(v42 + 1) removeObject:*(*(&v82 + 1) + 8 * i)];
            if ((v42[24] & 1) == 0 && ![*(v42 + 1) count])
            {
              v42[24] = 1;
            }
          }
        }

        v50 = [v49 countByEnumeratingWithState:&v82 objects:v95 count:16];
      }

      while (v50);
    }

    objc_destroyWeak(&v87);
    objc_destroyWeak(&location);
  }

  v53 = v73;
  if (v73)
  {
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v54 = v73;
    v55 = [v54 countByEnumeratingWithState:&v78 objects:v94 count:16];
    if (v55)
    {
      v56 = *v79;
      do
      {
        v57 = 0;
        do
        {
          if (*v79 != v56)
          {
            objc_enumerationMutation(v54);
          }

          v58 = *(*(&v78 + 1) + 8 * v57);
          v59 = [v58 description];
          v60 = v59;
          uTF8String3 = [v59 UTF8String];

          if (os_variant_has_internal_diagnostics())
          {
            v62 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CED8) + 8);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134349570;
              windowCopy5 = window;
              v98 = 2082;
              v99 = uTF8String3;
              v100 = 2050;
              v101 = a2;
              _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] Ending observation of deallocating window: [%{public}p", buf, 0x20u);
            }
          }

          [(_UIEventDeferringManager *)window _stopObservingContextForLocalTargetWindowInEnvironment:v58];
          ++v57;
        }

        while (v55 != v57);
        v63 = [v54 countByEnumeratingWithState:&v78 objects:v94 count:16];
        v55 = v63;
      }

      while (v63);
    }

    v53 = v73;
  }
}

- (void)endEventDeferringForToken:(id)token withReason:
{
  v79 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  selfCopy = self;
  if (a2)
  {
    if (*(a2 + 24))
    {
      return;
    }

    v6 = *(a2 + 56);
    if (v6 == 1)
    {
      uTF8String = [token UTF8String];
      v8 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CF18) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = *(a2 + 64);
        *buf = 134349826;
        v64 = selfCopy;
        v65 = 2050;
        v66 = a2;
        v67 = 2048;
        v68 = [v10 count];
        v69 = 2082;
        v70 = uTF8String;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}p] End remote event deferring requested for token: %{public}p; environments: %lu; reason: %{public}s", buf, 0x2Au);
      }

      if (*(a2 + 24) == 1)
      {
        v11 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CF20) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349312;
          v64 = selfCopy;
          v65 = 2050;
          v66 = a2;
          v12 = buf;
LABEL_20:
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}p] Performing no actions as deferring token has already been invalidated: %{public}p", v12, 0x16u);
          return;
        }
      }

      else
      {
        v44 = *(a2 + 56);
        v45 = *(a2 + 64);
        v46 = *(a2 + 72);
        [(_UIEventDeferringManager *)selfCopy _processEventDeferringActions:3 actionsCount:v44 inScope:a2 forDeferringToken:v45 environments:v46 target:0 addingRecreationReason:0 removingRecreationReason:token forReason:?];

LABEL_60:
      }

      return;
    }

    if (v6)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_endLocalEventDeferringForToken_withReason_ object:selfCopy file:@"_UIEventDeferringManager.m" lineNumber:3853 description:{@"[%p] %s: Wrong method for deferring token: %@", selfCopy, "-[_UIEventDeferringManager endLocalEventDeferringForToken:withReason:]", a2}];
    }
  }

  uTF8String2 = [token UTF8String];
  v14 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CF00) + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    if (a2)
    {
      v16 = *(a2 + 64);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    *v71 = 134349826;
    v72 = selfCopy;
    v73 = 2050;
    v74 = a2;
    v75 = 2048;
    v76 = [v17 count];
    v77 = 2082;
    v78 = uTF8String2;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}p] End local event deferring requested for token: %{public}p; environments: %lu; reason: %{public}s", v71, 0x2Au);
  }

  if (!a2)
  {
    tokenCopy2 = token;
    v18 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_22;
  }

  if (*(a2 + 24) != 1)
  {
    tokenCopy2 = token;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v18 = *(a2 + 64);
LABEL_22:
    obj = v18;
    v19 = [obj countByEnumeratingWithState:&v58 objects:buf count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v59;
      v22 = @"LocalIdealRecord";
      while (2)
      {
        v23 = 0;
        v52 = v20;
        do
        {
          if (*v59 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = [(_UIEventDeferringManager *)selfCopy _currentLocalRecordsMatchingEnvironment:0 forcePreviousHardwareIdentifier:?];
          if ([v24 count])
          {
            v25 = objc_opt_new();
            v26 = [v24 objectForKeyedSubscript:v22];
            v27 = v26;
            if (v26)
            {
              WeakRetained = objc_loadWeakRetained((v26 + 32));

              if (WeakRetained == a2)
              {
                [v25 setObject:v27 forKeyedSubscript:v22];
              }
            }

            v29 = [v24 objectForKeyedSubscript:@"LocalCompatibilityRecord"];
            v30 = v29;
            if (v29)
            {
              v31 = v21;
              v32 = selfCopy;
              v33 = v22;
              v34 = objc_loadWeakRetained((v29 + 32));

              v35 = v34 == a2;
              v22 = v33;
              selfCopy = v32;
              v21 = v31;
              v20 = v52;
              if (v35)
              {
                [v25 setObject:v30 forKeyedSubscript:@"LocalCompatibilityRecord"];
              }
            }
          }

          else
          {
            v25 = v24;
          }

          v36 = [v25 count];
          if (v36)
          {

            if (a2)
            {
              v47 = *(a2 + 56);
              v45 = *(a2 + 64);
              v48 = *(a2 + 72);
            }

            else
            {
              v45 = 0;
              v47 = 0;
              v48 = 0;
            }

            v49 = v48;
            [(_UIEventDeferringManager *)selfCopy _processEventDeferringActions:2 actionsCount:v47 inScope:a2 forDeferringToken:v45 environments:v49 target:0 addingRecreationReason:0 removingRecreationReason:tokenCopy2 forReason:?];

            goto LABEL_60;
          }

          ++v23;
        }

        while (v20 != v23);
        v20 = [obj countByEnumeratingWithState:&v58 objects:buf count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v37 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CF10) + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v71 = 134349312;
      v72 = selfCopy;
      v73 = 2050;
      v74 = a2;
      _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_DEFAULT, "[%{public}p] No existing records found, invalidating token for all environments: %{public}p", v71, 0x16u);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    if (a2)
    {
      v38 = *(a2 + 64);
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
    v40 = [v39 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v55;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v55 != v42)
          {
            objc_enumerationMutation(v39);
          }

          if (a2)
          {
            [*(a2 + 8) removeObject:*(*(&v54 + 1) + 8 * i)];
            if ((*(a2 + 24) & 1) == 0 && ![*(a2 + 8) count])
            {
              *(a2 + 24) = 1;
            }
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v41);
    }

    return;
  }

  v11 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CF08) + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v71 = 134349312;
    v72 = selfCopy;
    v73 = 2050;
    v74 = a2;
    v12 = v71;
    goto LABEL_20;
  }
}

- (_BYTE)beginLocalEventDeferringInEnvironments:(void *)environments forOwningInterfaceElement:(void *)element withReason:
{
  v47 = *MEMORY[0x1E69E9840];
  if (!self || (self[80] & 2) != 0)
  {
    v18 = 0;
  }

  else
  {
    _UIEventDeferringAssertForInvalidOwningInterfaceElement(environments);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v7 = a2;
    v8 = 0;
    v9 = [v7 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v9)
    {
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v13 = [(_UIEventDeferringManager *)self _localTargetWindowForEnvironment:v12 consultingFallbackIfPermitted:1];
          v14 = v13 == 0;

          if (v14)
          {
            if (!v8)
            {
              v8 = objc_opt_new();
            }

            [v8 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v9);
    }

    elementCopy = element;
    uTF8String = [element UTF8String];
    if (v8 && [v8 count])
    {
      v17 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEE0) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349570;
        selfCopy2 = self;
        v40 = 2114;
        v41 = v8;
        v42 = 2082;
        v43 = uTF8String;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "[%{public}p] Exiting request to begin local event deferring as environments are missing local target windows: %{public}@; request reason: %{public}s", buf, 0x20u);
      }

      v18 = 0;
    }

    else
    {
      objc_initWeak(&location, self);
      v19 = [_UIEventDeferringOwnershipToken alloc];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __104___UIEventDeferringManager_beginLocalEventDeferringInEnvironments_forOwningInterfaceElement_withReason___block_invoke;
      v31[3] = &unk_1E70FCD28;
      objc_copyWeak(&v32, &location);
      v18 = [(_UIEventDeferringOwnershipToken *)v19 _initWithOwner:environments scope:0 environments:v7 target:0 reason:element endDeferringBlock:v31];
      v20 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEE8) + 8);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        if (v18)
        {
          v21 = *(v18 + 8);
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;
        v23 = [v22 count];
        *buf = 134349826;
        selfCopy2 = self;
        v40 = 2050;
        v41 = v18;
        v42 = 2048;
        v43 = v23;
        v44 = 2082;
        v45 = uTF8String;
        _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}p] Begin local event deferring requested for token: %{public}p; environments: %lu; reason: %{public}s", buf, 0x2Au);
      }

      if (v18)
      {
        v24 = *(v18 + 7);
        v25 = *(v18 + 8);
        v26 = *(v18 + 9);
        v27 = *(v18 + 10);
      }

      else
      {
        v26 = 0;
        v24 = 0;
        v25 = 0;
        v27 = 0;
      }

      v28 = v27;
      [(_UIEventDeferringManager *)self _processEventDeferringActions:5 actionsCount:v24 inScope:v18 forDeferringToken:v25 environments:v26 target:@"_UIEventDeferringRecreationReasonTopRemoteElementNotVisible" addingRecreationReason:0 removingRecreationReason:v28 forReason:?];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }
  }

  return v18;
}

- (_BYTE)beginAndEndLocalEventDeferringForToken:(void *)token withReason:
{
  selfCopy = self;
  v67 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ((self[80] & 2) != 0)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      if (a2)
      {
        v14 = *(a2 + 64);
      }

      else
      {
        v14 = 0;
      }

      v9 = v14;
      selfCopy = [v9 countByEnumeratingWithState:&v51 objects:v66 count:16];
      if (selfCopy)
      {
        v15 = *v52;
        do
        {
          for (i = 0; i != selfCopy; ++i)
          {
            if (*v52 != v15)
            {
              objc_enumerationMutation(v9);
            }

            if (a2)
            {
              [*(a2 + 8) removeObject:*(*(&v51 + 1) + 8 * i)];
              if ((*(a2 + 24) & 1) == 0 && ![*(a2 + 8) count])
              {
                *(a2 + 24) = 1;
              }
            }
          }

          selfCopy = [v9 countByEnumeratingWithState:&v51 objects:v66 count:16];
        }

        while (selfCopy);
      }
    }

    else
    {
      if (a2)
      {
        if (*(a2 + 56))
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:sel_beginAndEndLocalEventDeferringForToken_withReason_ object:selfCopy file:@"_UIEventDeferringManager.m" lineNumber:3752 description:{@"[%p] %s: Attempting to begin and end local event deferring for a non-local token: %@", selfCopy, "-[_UIEventDeferringManager beginAndEndLocalEventDeferringForToken:withReason:]", a2}];
        }

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v5 = *(a2 + 64);
      }

      else
      {
        v5 = 0;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
      }

      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v47 objects:v65 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = 0;
        v10 = *v48;
        do
        {
          for (j = 0; j != v8; ++j)
          {
            if (*v48 != v10)
            {
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v47 + 1) + 8 * j);
            v13 = [(_UIEventDeferringManager *)selfCopy _localTargetWindowForEnvironment:v12 consultingFallbackIfPermitted:1];

            if (!v13)
            {
              if (!v9)
              {
                v9 = objc_opt_new();
              }

              [v9 addObject:v12];
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v47 objects:v65 count:16];
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      uTF8String = [token UTF8String];
      if (v9 && [v9 count])
      {
        v18 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEF0) + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349570;
          v57 = selfCopy;
          v58 = 2114;
          v59 = v9;
          v60 = 2082;
          v61 = uTF8String;
          _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "[%{public}p] Exiting request to begin and end local event deferring as environments are missing local target windows: %{public}@; request reason: %{public}s", buf, 0x20u);
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        if (a2)
        {
          v19 = *(a2 + 64);
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;
        selfCopy = [v20 countByEnumeratingWithState:&v43 objects:v64 count:16];
        if (selfCopy)
        {
          v21 = *v44;
          do
          {
            for (k = 0; k != selfCopy; ++k)
            {
              if (*v44 != v21)
              {
                objc_enumerationMutation(v20);
              }

              if (a2)
              {
                [*(a2 + 8) removeObject:*(*(&v43 + 1) + 8 * k)];
                if ((*(a2 + 24) & 1) == 0 && ![*(a2 + 8) count])
                {
                  *(a2 + 24) = 1;
                }
              }
            }

            selfCopy = [v20 countByEnumeratingWithState:&v43 objects:v64 count:16];
          }

          while (selfCopy);
        }
      }

      else
      {
        v23 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEF8) + 8);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          if (a2)
          {
            v25 = *(a2 + 64);
          }

          else
          {
            v25 = 0;
          }

          v26 = v25;
          v27 = [v26 count];
          *buf = 134349826;
          v57 = selfCopy;
          v58 = 2050;
          v59 = a2;
          v60 = 2048;
          v61 = v27;
          v62 = 2082;
          v63 = uTF8String;
          _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}p] Beginning and ending local event deferring requested for token: %{public}p; environments: %lu; reason: %{public}s", buf, 0x2Au);
        }

        if (a2)
        {
          v20 = *(a2 + 48);
          v28 = *(a2 + 64);
        }

        else
        {
          v20 = 0;
          v28 = 0;
        }

        v29 = v28;
        selfCopy = [(_UIEventDeferringManager *)selfCopy beginLocalEventDeferringInEnvironments:v29 forOwningInterfaceElement:v20 withReason:token];

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        if (a2)
        {
          v30 = *(a2 + 64);
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;
        v32 = [v31 countByEnumeratingWithState:&v39 objects:v55 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v40;
          do
          {
            for (m = 0; m != v33; ++m)
            {
              if (*v40 != v34)
              {
                objc_enumerationMutation(v31);
              }

              if (a2)
              {
                [*(a2 + 8) removeObject:*(*(&v39 + 1) + 8 * m)];
                if ((*(a2 + 24) & 1) == 0 && ![*(a2 + 8) count])
                {
                  *(a2 + 24) = 1;
                }
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v39 objects:v55 count:16];
          }

          while (v33);
        }
      }
    }
  }

  return selfCopy;
}

- (_BYTE)beginRemoteEventDeferringInEnvironments:(void *)environments forOwningInterfaceElement:(void *)element toTarget:(void *)target withReason:
{
  v35 = *MEMORY[0x1E69E9840];
  if (!self || (self[80] & 2) != 0)
  {
    v11 = 0;
  }

  else
  {
    _UIEventDeferringAssertForInvalidOwningInterfaceElement(environments);
    objc_initWeak(&location, self);
    v10 = [_UIEventDeferringOwnershipToken alloc];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __114___UIEventDeferringManager_beginRemoteEventDeferringInEnvironments_forOwningInterfaceElement_toTarget_withReason___block_invoke;
    v24[3] = &unk_1E70FCD28;
    objc_copyWeak(&v25, &location);
    v11 = [(_UIEventDeferringOwnershipToken *)v10 _initWithOwner:environments scope:1 environments:a2 target:element reason:target endDeferringBlock:v24];
    targetCopy = target;
    uTF8String = [target UTF8String];
    v14 = *(__UILogGetCategoryCachedImpl("EventDeferring", &beginRemoteEventDeferringInEnvironments_forOwningInterfaceElement_toTarget_withReason____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (v11)
      {
        v15 = *(v11 + 8);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = [v16 count];
      *buf = 134349826;
      selfCopy = self;
      v29 = 2050;
      v30 = v11;
      v31 = 2048;
      v32 = v17;
      v33 = 2082;
      v34 = uTF8String;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}p] Begin remote event deferring requested for token: %{public}p; environments: %lu; reason: %{public}s", buf, 0x2Au);
    }

    if (v11)
    {
      v18 = *(v11 + 7);
      v19 = *(v11 + 8);
      v20 = *(v11 + 9);
      v21 = *(v11 + 10);
    }

    else
    {
      v20 = 0;
      v18 = 0;
      v19 = 0;
      v21 = 0;
    }

    v22 = v21;
    [(_UIEventDeferringManager *)self _processEventDeferringActions:5 actionsCount:v18 inScope:v11 forDeferringToken:v19 environments:v20 target:@"_UIEventDeferringRecreationReasonNoLongerTopRemoteRecord" addingRecreationReason:0 removingRecreationReason:v22 forReason:?];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)setNeedsRemoteEventDeferringRuleComparisonInEnvironments:(id)environments forBehaviorDelegate:(id)delegate withReason:(id)reason
{
  v43 = *MEMORY[0x1E69E9840];
  if ((*&self->_deferringManagerFlags & 2) == 0)
  {
    if ((_UIEventDeferringSystemShellBehaviorIsAllowedForProcess() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEventDeferringManager.m" lineNumber:3949 description:{@"[%p] %s: System shell behavior is not allowed for this process", self, "-[_UIEventDeferringManager setNeedsRemoteEventDeferringRuleComparisonInEnvironments:forBehaviorDelegate:withReason:]"}];
    }

    v10 = +[_UIEventDeferringManager systemShellBehaviorDelegate];

    if (v10 != delegate)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringManager.m" lineNumber:3952 description:{@"[%p] %s: Incoming delegate does not match existing delegate: %@", self, "-[_UIEventDeferringManager setNeedsRemoteEventDeferringRuleComparisonInEnvironments:forBehaviorDelegate:withReason:]", delegate}];
    }

    v11 = objc_opt_class();
    Name = class_getName(v11);
    uTF8String = [reason UTF8String];
    v14 = *(__UILogGetCategoryCachedImpl("EventDeferring", &setNeedsRemoteEventDeferringRuleComparisonInEnvironments_forBehaviorDelegate_withReason____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349826;
      selfCopy = self;
      v37 = 2082;
      v38 = Name;
      v39 = 2050;
      delegateCopy = delegate;
      v41 = 2082;
      v42 = uTF8String;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}p] Remote event deferring rule comparison requested by system shell behavior delegate: <%{public}s: %{public}p>; reason: %{public}s", buf, 0x2Au);
    }

    objc_initWeak(buf, self);
    v15 = [_UIEventDeferringOwnershipToken alloc];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __116___UIEventDeferringManager_setNeedsRemoteEventDeferringRuleComparisonInEnvironments_forBehaviorDelegate_withReason___block_invoke;
    v33[3] = &unk_1E70FCD50;
    v33[4] = self;
    v16 = [(_UIEventDeferringOwnershipToken *)v15 _initWithOwner:1 scope:environments environments:0 target:reason reason:v33 endDeferringBlock:?];
    v17 = v16;
    if (v16)
    {
      v18 = *(v16 + 7);
      v19 = *(v16 + 8);
      v20 = v17[9];
      v21 = v17[10];
    }

    else
    {
      v20 = 0;
      v18 = 0;
      v19 = 0;
      v21 = 0;
    }

    v22 = v21;
    [(_UIEventDeferringManager *)self _processEventDeferringActions:5 actionsCount:v18 inScope:v17 forDeferringToken:v19 environments:v20 target:@"_UIEventDeferringRecreationReasonNoLongerTopRemoteRecord" addingRecreationReason:0 removingRecreationReason:v22 forReason:?];

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    environmentsCopy = environments;
    v24 = [environmentsCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v24)
    {
      v25 = *v30;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(environmentsCopy);
          }

          if (v17)
          {
            [v17[1] removeObject:*(*(&v29 + 1) + 8 * i)];
            if ((v17[3] & 1) == 0 && ![v17[1] count])
            {
              *(v17 + 24) = 1;
            }
          }
        }

        v24 = [environmentsCopy countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v24);
    }

    objc_destroyWeak(buf);
  }
}

- (uint64_t)compareRemoteRuleOwningElement:(uint64_t)element toTopElementInEnvironment:
{
  if (!self || (*(self + 80) & 2) != 0)
  {
    return 0;
  }

  v6 = [(_UIEventDeferringManager *)self _topRemoteRecordInStackForEnvironment:element];
  v7 = v6;
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained((v6 + 32));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      v10 = *(WeakRetained + 6);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11 == a2)
    {
      v12 = -1;
    }

    else
    {
      v12 = [*(self + 104) compareRemoteRuleOwningElement:v11 toElement:a2 inEnvironment:element];
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

+ (uint64_t)isAnySceneBufferingEvents
{
  v12 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v0 = [UIScene _scenesIncludingInternal:1, 0];
  v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = *v8;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v8 != v2)
        {
          objc_enumerationMutation(v0);
        }

        _eventDeferringManager = [*(*(&v7 + 1) + 8 * i) _eventDeferringManager];
        if (_eventDeferringManager)
        {
          v5 = atomic_load(_eventDeferringManager + 9);

          if (v5 > 0)
          {
            v1 = 1;
            goto LABEL_12;
          }
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v1;
}

- (id)bufferKeyboardFocusEnvironmentEventsWithReason:(uint64_t)reason
{
  v40 = *MEMORY[0x1E69E9840];
  if (reason && (*(reason + 80) & 2) == 0 && ([reason _scene], v4 = objc_claimAutoreleasedReturnValue(), v5 = _UISceneSystemShellManagesKeyboardFocusForScene(v4), v4, v5))
  {
    WeakRetained = objc_loadWeakRetained((reason + 88));
    v7 = objc_opt_class();
    Name = class_getName(v7);

    uTF8String = [a2 UTF8String];
    v10 = *(__UILogGetCategoryCachedImpl("EventDeferring", &bufferKeyboardFocusEnvironmentEventsWithReason____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = objc_loadWeakRetained((reason + 88));
      *buf = 134349826;
      reasonCopy = reason;
      v34 = 2082;
      v35 = Name;
      v36 = 2050;
      v37 = v12;
      v38 = 2082;
      v39 = uTF8String;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}p] Buffer events for keyboard focus environment in scene: <%{public}s: %{public}p>; reason: %{public}s", buf, 0x2Au);
    }

    v13 = objc_alloc_init(MEMORY[0x1E698E3F0]);
    v14 = [(_UIEventDeferringManager *)reason _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
    if (v14)
    {
      [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v14];
    }

    else
    {
      [MEMORY[0x1E698E3C8] builtinDisplay];
    }
    v16 = ;
    [v13 setDisplay:v16];
    keyboardFocusEnvironment = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    [v13 setEnvironment:keyboardFocusEnvironment];

    windowHostingScene = [reason windowHostingScene];
    _FBSScene = [windowHostingScene _FBSScene];
    identityToken = [_FBSScene identityToken];
    stringRepresentation = [identityToken stringRepresentation];

    v22 = [MEMORY[0x1E698E3A0] tokenForString:stringRepresentation];
    [v13 setToken:v22];

    mEMORY[0x1E698E3B0] = [MEMORY[0x1E698E3B0] sharedInstance];
    v24 = [mEMORY[0x1E698E3B0] bufferEventsMatchingPredicate:v13 withReason:a2];

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p> - Wrapper", v24];
    v26 = objc_alloc(MEMORY[0x1E698E778]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __75___UIEventDeferringManager_bufferKeyboardFocusEnvironmentEventsWithReason___block_invoke;
    v29[3] = &unk_1E70FCD78;
    v30 = v24;
    reasonCopy2 = reason;
    v27 = v24;
    v15 = [v26 initWithIdentifier:v25 forReason:a2 invalidationBlock:v29];
    atomic_fetch_add((reason + 72), 1uLL);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end