@interface _UIEventDeferringManager
+ (uint64_t)isAnySceneBufferingEvents;
+ (void)setSystemShellBehaviorDelegate:(id)a3;
+ (void)targetOfEventDeferringEnvironmentsDidUpdateForScene:(uint64_t)a1;
- (BOOL)_shouldDisableNewRecord:(void *)a3 outRecreationReasons:;
- (UIScene)_scene;
- (_BYTE)beginAndEndLocalEventDeferringForToken:(void *)a3 withReason:;
- (_BYTE)beginLocalEventDeferringInEnvironments:(void *)a3 forOwningInterfaceElement:(void *)a4 withReason:;
- (_BYTE)beginRemoteEventDeferringInEnvironments:(void *)a3 forOwningInterfaceElement:(void *)a4 toTarget:(void *)a5 withReason:;
- (_UIEventDeferringManager)initWithScene:(id)a3;
- (_UISceneUIWindowHosting)windowHostingScene;
- (id)_currentLocalOrCompatibilityRecordForEnvironment:(int)a3 forcePreviousHardwareIdentifier:;
- (id)_currentLocalRecordsMatchingEnvironment:(int)a3 forcePreviousHardwareIdentifier:;
- (id)_descriptorForCompatibility:(void *)a3 environment:(uint64_t)a4 deferringToken:;
- (id)_displayHardwareIndentifierAccountingForNotFinalizedChange:(id *)a1;
- (id)_environmentsForLocalTargetWindowPointer:(uint64_t)a1;
- (id)_localRecordForEnvironment:(id *)a1;
- (id)_localTargetWindowForEnvironment:(int)a3 consultingFallbackIfPermitted:;
- (id)_localTargetWindowPointersUnderObservation;
- (id)_predicateForDescriptor:(uint64_t)a1;
- (id)_remoteDeferringRecordStackForEnvironment:(uint64_t)a1;
- (id)_remoteRecordsInStackMatchingEnvironment:(uint64_t)a3 passingTest:;
- (id)_targetForDescriptor:(uint64_t)a1;
- (id)_topRemoteRecordInStackForEnvironment:(uint64_t)a1;
- (id)_trackedLocalTargetWindowPointerForEnvironment:(uint64_t)a1;
- (id)_trackedLocalTargetWindowPointers;
- (id)_transactionAssertion;
- (id)bufferKeyboardFocusEnvironmentEventsWithReason:(uint64_t)a1;
- (id)currentLocalDeferringTargetWindowMatchingEnvironment:(id)a3 deferringToken:;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)fallbackLocalDeferringTargetWindowIfPermittedForEnvironment:(id *)a1;
- (id)internalBehavior;
- (id)localEventDeferringTargetWindowForEnvironment:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)_displayHardwareIndentifierHasNotFinalizedChange;
- (uint64_t)_isRemoteRuleOwningElement:(id)a3 visibleForLocalTargetWindow:;
- (uint64_t)_removeLocalRecordForEnvironment:(uint64_t)result;
- (uint64_t)compareRemoteRuleOwningElement:(uint64_t)a3 toTopElementInEnvironment:;
- (void)_allEnvironments;
- (void)_currentLocalOrCompatibilityRecordMatchingEnvironment:(uint64_t)a3 recordingManagerPointer:(int)a4 forcePreviousHardwareIdentifier:;
- (void)_disableEventDeferringRecordsInEnvironment:(void *)a3 addingRecreationReason:(void *)a4 forReason:;
- (void)_localTargetWindowDidAttachContext:(id)a3;
- (void)_localTargetWindowDidDetachContext:(id)a3;
- (void)_processEventDeferringActions:(uint64_t)a3 actionsCount:(uint64_t)a4 inScope:(void *)a5 forDeferringToken:(void *)a6 environments:(void *)a7 target:(void *)a8 addingRecreationReason:(void *)a9 removingRecreationReason:(void *)a10 forReason:;
- (void)_pushRemoteRecordOnStack:(uint64_t)a3 forEnvironment:;
- (void)_recreateEventDeferringRecordsInEnvironment:(void *)a3 removingRecreationReason:(void *)a4 forReason:;
- (void)_removeRemoteRecord:(uint64_t)a3 forEnvironment:;
- (void)_sceneWillInvalidate:(id)a3;
- (void)_screenUniqueIdDidChange:(id)a3;
- (void)_screenUniqueIdWillChange:(id)a3;
- (void)_setLocalRecord:(uint64_t)a3 forEnvironment:;
- (void)_setTransactionAssertion:(uint64_t)a1;
- (void)_stopObservingContextForLocalTargetWindowInEnvironment:(uint64_t)a1;
- (void)_targetProvidersByEnvironment;
- (void)_windowHostingScene:(id)a3 didMoveFromScreen:(id)a4 toScreen:(id)a5;
- (void)dealloc;
- (void)endEventDeferringForToken:(id)a3 withReason:;
- (void)eventDeferringManager:(id)a3 didRemoveLocalCompatibilityRecordForDescriptor:(id)a4;
- (void)registerTargetProvider:(uint64_t)a3 forEnvironment:;
- (void)removeEventDeferringRulesIfNeededForDeallocatingWindow:(id *)a1;
- (void)setNeedsRemoteEventDeferringRuleComparisonInEnvironments:(id)a3 forBehaviorDelegate:(id)a4 withReason:(id)a5;
@end

@implementation _UIEventDeferringManager

- (id)_localTargetWindowPointersUnderObservation
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 48);
    *(a1 + 48) = v3;

    v2 = *(a1 + 48);
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
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = objc_opt_new();
    v4 = *(a1 + 40);
    *(a1 + 40) = v3;

    v2 = *(a1 + 40);
  }

  return v2;
}

- (uint64_t)_displayHardwareIndentifierHasNotFinalizedChange
{
  v1 = a1;
  v2 = [a1 windowHostingScene];
  v3 = [v2 _screen];

  v4 = [v3 displayConfiguration];
  v5 = [v4 isExternal];

  LOBYTE(v1) = v1[80];
  if ((v1 & 0x30) == 0x10)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (id)_transactionAssertion
{
  if (a1)
  {
    a1 = a1[12];
    v1 = vars8;
  }

  return a1;
}

- (void)_targetProvidersByEnvironment
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[4];
    if (!v3)
    {
      v4 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
      v5 = v2[4];
      v2[4] = v4;

      v3 = v2[4];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)internalBehavior
{
  if (a1)
  {
    a1 = a1[13];
    v1 = vars8;
  }

  return a1;
}

- (void)_allEnvironments
{
  v1 = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_opt_new();
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(_UIEventDeferringManager *)v1 _targetProvidersByEnvironment];
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
            objc_enumerationMutation(v3);
          }

          [v2 addObject:{*(*(&v9 + 1) + 8 * i), v9}];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    v1 = [v2 copy];
  }

  return v1;
}

- (void)dealloc
{
  v6[4] = *MEMORY[0x1E69E9840];
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"_UIScreenUniqueIdWillChangeNotification";
  v6[1] = @"_UIScreenUniqueIdDidChangeNotification";
  v6[2] = _UIWindowDidAttachContextNotification;
  v6[3] = _UIWindowDidDetachContextNotification;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIEventDeferringManager;
  [(_UIEventDeferringManager *)&v5 dealloc];
}

- (id)_topRemoteRecordInStackForEnvironment:(uint64_t)a1
{
  if (a1)
  {
    v2 = [(_UIEventDeferringManager *)a1 _remoteDeferringRecordStackForEnvironment:a2];
    if ([v2 count])
    {
      v3 = [v2 lastObject];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setTransactionAssertion:(uint64_t)a1
{
  if (a1)
  {
    if (obj && *(a1 + 96))
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:sel__setTransactionAssertion_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:2154 description:{@"[%p] %s: Invalid to set a transaction assertion with one already present", a1, "-[_UIEventDeferringManager _setTransactionAssertion:]"}];
    }

    objc_storeStrong((a1 + 96), obj);
  }
}

- (id)_localRecordForEnvironment:(id *)a1
{
  if (a1)
  {
    a1 = [a1[2] objectForKey:a2];
    v2 = vars8;
  }

  return a1;
}

- (id)_descriptorForCompatibility:(void *)a3 environment:(uint64_t)a4 deferringToken:
{
  v56 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a4)
    {
      v7 = *(a4 + 56);
      v8 = v7 != 0;
      v46 = [(_UIEventDeferringManager *)a1 _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
      if (v7 == 1)
      {
        v9 = [(_UIEventDeferringManager *)a1 _localTargetWindowForEnvironment:a3 consultingFallbackIfPermitted:0];
        if ([a1[13] shouldAllowFallbackWindowForEnvironment:a3])
        {
          v10 = [(_UIEventDeferringManager *)a1 _currentLocalOrCompatibilityRecordForEnvironment:a3 forcePreviousHardwareIdentifier:0];
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
              v49 = a1;
              v50 = 2114;
              v51 = a3;
              v52 = 1026;
              v53 = [v9 _contextId];
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
              v49 = a1;
              v50 = 2114;
              v51 = a3;
              v52 = 1026;
              v53 = [v9 _contextId];
              v54 = 2114;
              v55 = v9;
              _os_log_impl(&dword_188A29000, v44, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] Returning remote predicate window: contextID: 0x%{public}X; %{public}@", buf, 0x26u);
            }
          }

          v15 = v9;
        }

        v45 = [v15 _contextId];
        v19 = 1;
LABEL_18:
        v21 = 0;
        if (!v8 && (a2 & 1) == 0)
        {
          v22 = [a1 windowHostingScene];
          v23 = [v22 _FBSScene];
          v24 = [v23 identityToken];
          v21 = [v24 stringRepresentation];
        }

        if (v19)
        {
          if (a4)
          {
            v25 = *(a4 + 72);
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
            v28 = [(_UIEventDeferringManager *)a1 _localTargetWindowForEnvironment:a3 consultingFallbackIfPermitted:1];
            if (!v28)
            {
              v39 = [MEMORY[0x1E696AAA8] currentHandler];
              [v39 handleFailureInMethod:sel__descriptorForCompatibility_environment_deferringToken_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3011 description:{@"[%p] [%@] %s: Missing target window for environment", a1, a3, "-[_UIEventDeferringManager _descriptorForCompatibility:environment:deferringToken:]"}];
            }

            v29 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE78);
            if (*v29)
            {
              v40 = *(v29 + 8);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = v40;
                v42 = [v28 _contextId];
                *buf = 134349826;
                v49 = a1;
                v50 = 2114;
                v51 = a3;
                v52 = 1026;
                v53 = v42;
                v54 = 2114;
                v55 = v28;
                _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] Local target window: contextID: 0x%{public}X; %{public}@", buf, 0x26u);
              }
            }

            v30 = [v28 _contextId];
            v31 = 0;
            goto LABEL_39;
          }
        }

        if (a4)
        {
          v32 = *(a4 + 72);
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
        v34 = [v33 token];

        if ([v34 _isIdentifierOfCAContext])
        {
          v30 = [v34 _identifierOfCAContext];
        }

        else
        {
          if ([v34 _isString])
          {
            v31 = [v34 _string];
            v30 = 0;
LABEL_38:

            v28 = 0;
LABEL_39:
            v35 = [_UIEventDeferringDescriptor alloc];
            if (a4)
            {
              v36 = *(a4 + 56);
            }

            else
            {
              v36 = 0;
            }

            v37 = [(_UIEventDeferringDescriptor *)v35 _initWithScope:v36 compatibility:a2 environment:a3 displayHardwareIdentifier:v46 predicateSceneIdentityString:v21 predicateWindowPointer:v15 predicateContextID:v45 targetPID:v27 targetSceneIdentityString:v31 targetWindowPointer:v28 targetContextID:v30];

            goto LABEL_42;
          }

          v30 = 0;
        }

        v31 = 0;
        goto LABEL_38;
      }

      v19 = 0;
    }

    else
    {
      v46 = [(_UIEventDeferringManager *)a1 _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
      v19 = 0;
      v8 = 0;
    }

    v15 = 0;
    v45 = 0;
    goto LABEL_18;
  }

  v37 = 0;
LABEL_42:

  return v37;
}

- (id)_predicateForDescriptor:(uint64_t)a1
{
  if (!a1)
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
      v9 = [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v7];
      goto LABEL_8;
    }
  }

  else
  {
    [v4 setEnvironment:0];
    v8 = MEMORY[0x1E698E3C8];
  }

  v9 = [v8 builtinDisplay];
  v7 = 0;
LABEL_8:
  [v5 setDisplay:v9];

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
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:sel__predicateForDescriptor_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3066 description:{@"[%p] %s: Invalid descriptor: %@", a1, "-[_UIEventDeferringManager _predicateForDescriptor:]", a2}];

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

- (id)_targetForDescriptor:(uint64_t)a1
{
  if (a1)
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
          v7 = [MEMORY[0x1E696AAA8] currentHandler];
          [v7 handleFailureInMethod:sel__targetForDescriptor_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3087 description:{@"[%p] %s: Descriptor should not specify a target contextId and a target scene identity: %@", a1, "-[_UIEventDeferringManager _targetForDescriptor:]", a2}];
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
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:sel__removeLocalRecordForEnvironment_ object:v3 file:@"_UIEventDeferringManager.m" lineNumber:2429 description:{@"[%p] %s: Invalid state. Removing records without a transaction: %@", v3, "-[_UIEventDeferringManager _removeLocalRecordForEnvironment:]", v3}];
    }

    v4 = *(v3 + 16);

    return [v4 removeObjectForKey:a2];
  }

  return result;
}

- (void)_setLocalRecord:(uint64_t)a3 forEnvironment:
{
  if (a1)
  {
    if (!*(a1 + 96))
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:sel__setLocalRecord_forEnvironment_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:2416 description:{@"[%p] %s: Invalid state. Saving records without a transaction: %@", a1, "-[_UIEventDeferringManager _setLocalRecord:forEnvironment:]", a1}];
    }

    v11 = [*(a1 + 16) objectForKey:a3];
    if (v11)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel__setLocalRecord_forEnvironment_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:2420 description:{@"[%p] %s: Invalid to set a new local record when one already exists for the environment: %@", a1, "-[_UIEventDeferringManager _setLocalRecord:forEnvironment:]", a3}];
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      v7 = objc_opt_new();
      v8 = *(a1 + 16);
      *(a1 + 16) = v7;

      v6 = *(a1 + 16);
    }

    [v6 setObject:a2 forKey:a3];
  }
}

- (id)_displayHardwareIndentifierAccountingForNotFinalizedChange:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    HasNotFinalized = [(_UIEventDeferringManager *)a1 _displayHardwareIndentifierHasNotFinalizedChange];
    if (a2 && HasNotFinalized)
    {
      v2 = v2[7];
    }

    else
    {
      v5 = [v2 windowHostingScene];
      v6 = [v5 _screen];

      v7 = [v6 displayConfiguration];
      v2 = [v7 hardwareIdentifier];
    }
  }

  return v2;
}

- (id)_trackedLocalTargetWindowPointerForEnvironment:(uint64_t)a1
{
  if (a1)
  {
    v3 = [(_UIEventDeferringManager *)a1 _trackedLocalTargetWindowPointers];
    v4 = [v3 objectForKey:a2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_stopObservingContextForLocalTargetWindowInEnvironment:(uint64_t)a1
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [a2 description];
    v5 = [v4 UTF8String];

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &_stopObservingContextForLocalTargetWindowInEnvironment____s_category);
    if (*CategoryCachedImpl)
    {
      v12 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349314;
        v20 = a1;
        v21 = 2082;
        v22 = v5;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}s] Stop observing context for local target window", buf, 0x16u);
      }
    }

    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __83___UIEventDeferringManager__stopObservingContextForLocalTargetWindowInEnvironment___block_invoke;
    v16 = &unk_1E70FCC60;
    v17 = a1;
    v18 = v5;
    v7 = [(_UIEventDeferringManager *)a1 _trackedLocalTargetWindowPointerForEnvironment:a2];
    if (v7)
    {
      v8 = [(_UIEventDeferringManager *)a1 _trackedLocalTargetWindowPointers];
      [v8 removeObjectForKey:{a2, v13, v14}];

      v9 = [(_UIEventDeferringManager *)a1 _localTargetWindowPointersUnderObservation];
      [v9 removeObject:v7];

      v10 = [(_UIEventDeferringManager *)a1 _localTargetWindowPointersUnderObservation];
      v11 = [v10 countForObject:v7];

      if (!v11)
      {
        v15(&v13, v7);
      }
    }
  }
}

- (void)_removeRemoteRecord:(uint64_t)a3 forEnvironment:
{
  if (a1)
  {
    if (!*(a1 + 96))
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel__removeRemoteRecord_forEnvironment_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:2497 description:{@"[%p] %s: Invalid state. Removing records without a transaction: %@", a1, "-[_UIEventDeferringManager _removeRemoteRecord:forEnvironment:]", a1}];
    }

    v7 = [(_UIEventDeferringManager *)a1 _remoteDeferringRecordStackForEnvironment:a3];
    [v7 removeObjectIdenticalTo:a2];
  }
}

- (BOOL)_shouldDisableNewRecord:(void *)a3 outRecreationReasons:
{
  if (a1)
  {
    if (!a3)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:sel__shouldDisableNewRecord_outRecreationReasons_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3100 description:{@"Invalid parameter not satisfying: %@", @"outRecreationReasons"}];
    }

    v6 = objc_opt_new();
    if ([(_UIEventDeferringManager *)a1 _displayHardwareIndentifierHasNotFinalizedChange])
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

    v16 = *(a1 + 104);
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

        if (([(_UIEventDeferringManager *)a1 _isRemoteRuleOwningElement:v28 visibleForLocalTargetWindow:v12]& 1) == 0)
        {
          [v6 addObject:@"_UIEventDeferringRecreationReasonTopRemoteElementNotVisible"];
        }

LABEL_37:
        *a3 = [v6 copy];
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

- (id)_remoteDeferringRecordStackForEnvironment:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 24);
    if (!v4)
    {
      v5 = objc_opt_new();
      v6 = *(a1 + 24);
      *(a1 + 24) = v5;

      v4 = *(a1 + 24);
    }

    v7 = [v4 objectForKey:a2];
    if (!v7)
    {
      v7 = objc_opt_new();
      [*(a1 + 24) setObject:v7 forKey:a2];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_currentLocalOrCompatibilityRecordForEnvironment:(int)a3 forcePreviousHardwareIdentifier:
{
  v3 = a1;
  if (a1)
  {
    v4 = [(_UIEventDeferringManager *)a1 _currentLocalRecordsMatchingEnvironment:a2 forcePreviousHardwareIdentifier:a3];
    if ([v3[13] wantsLocalIdealRules])
    {
      v5 = @"LocalIdealRecord";
    }

    else
    {
      if (![v3[13] wantsLocalCompatibilityRules])
      {
        v3 = 0;
        goto LABEL_8;
      }

      v5 = @"LocalCompatibilityRecord";
    }

    v3 = [v4 objectForKey:v5];
LABEL_8:
  }

  return v3;
}

- (uint64_t)_isRemoteRuleOwningElement:(id)a3 visibleForLocalTargetWindow:
{
  if (!a1)
  {
    return 0;
  }

  if (a2)
  {
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:sel__isRemoteRuleOwningElement_visibleForLocalTargetWindow_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3158 description:{@"Invalid parameter not satisfying: %@", @"remoteRuleElement"}];

    if (a3)
    {
      goto LABEL_4;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:sel__isRemoteRuleOwningElement_visibleForLocalTargetWindow_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3159 description:{@"Invalid parameter not satisfying: %@", @"localTargetWindow"}];

LABEL_4:
  v6 = a1[13];
  v7 = [a2 interfaceElementCategory];
  if (v7 != 1)
  {
    v8 = v7;
    if (v7 == 3)
    {
      v11 = [a2 _existingView];
      v9 = [v11 window];

      if (!v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v7 != 2)
      {
        v10 = 0;
        v9 = 0;
        goto LABEL_15;
      }

      v9 = a2;
      if (!v9)
      {
LABEL_8:
        v10 = 0;
        goto LABEL_15;
      }
    }

    v12 = [v6 isRemoteRuleOwningElement:a2 andContainingWindow:v9 visibleComparedToLocalTargetWindow:a3];
    if (v12)
    {
      v13 = v12 == 1;
LABEL_28:
      v23 = v13;
      goto LABEL_29;
    }

    v10 = 1;
LABEL_15:
    IsElementOccludedByWindow = _UIEventDeferringBehaviorIsElementOccludedByWindow(a2, a3);
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
        if ((v10 & 1) != 0 && v9 != a3)
        {
          if (([v6 wantsLocalIdealRules] & 1) != 0 || !objc_msgSend(v6, "wantsLocalCompatibilityRules"))
          {
            v16 = [a1 windowHostingScene];
            v21[0] = MEMORY[0x1E69E9820];
            v21[1] = 3221225472;
            v21[2] = __83___UIEventDeferringManager__isRemoteRuleOwningElement_visibleForLocalTargetWindow___block_invoke;
            v21[3] = &unk_1E70FCC88;
            v21[4] = a3;
            v9 = v9;
            v22 = v9;
            v17 = [v16 _topVisibleWindowPassingTest:v21];

            v23 = !v17 || v17 != a3;
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

- (void)_pushRemoteRecordOnStack:(uint64_t)a3 forEnvironment:
{
  if (a1)
  {
    if (!*(a1 + 96))
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:sel__pushRemoteRecordOnStack_forEnvironment_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:2491 description:{@"[%p] %s: Invalid state. Saving records without a transaction: %@", a1, "-[_UIEventDeferringManager _pushRemoteRecordOnStack:forEnvironment:]", a1}];
    }

    v7 = [(_UIEventDeferringManager *)a1 _remoteDeferringRecordStackForEnvironment:a3];
    [v7 addObject:a2];
  }
}

- (_UIEventDeferringManager)initWithScene:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v47.receiver = self;
  v47.super_class = _UIEventDeferringManager;
  v5 = [(_UIEventDeferringManager *)&v47 init];
  if (v5)
  {
    if (([a3 _hostsWindows] & 1) == 0)
    {
      v43 = [MEMORY[0x1E696AAA8] currentHandler];
      [v43 handleFailureInMethod:a2 object:v5 file:@"_UIEventDeferringManager.m" lineNumber:1901 description:{@"Invalid parameter not satisfying: %@", @"[scene _hostsWindows]"}];
    }

    objc_storeWeak(&v5->_scene, a3);
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
        v20 = [(_UIEventDeferringManager *)v5 windowHostingScene];
        v21 = [v20 _screen];

        v22 = [v21 displayConfiguration];
        v23 = [v22 isExternal];

        v24 = [(_UIEventDeferringManager *)&v5->super.isa _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
        if (v24)
        {
          v25 = 0;
        }

        else
        {
          v25 = v23;
        }

        if (v25 == 1)
        {
          *&v5->_deferringManagerFlags |= 0x10u;
          if (v21)
          {
            v26 = v21[32];
          }

          else
          {
            v26 = 0;
          }

          objc_storeStrong(&v5->_previousExternalScreenIdentifier, v26);
        }
      }

      v27 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
      [(_UIEventDeferringManager *)v5 registerTargetProvider:v5 forEnvironment:v27];

      v28 = v5->_behavior;
      LODWORD(v27) = [(_UIEventDeferringBehavior *)v28 wantsSystemKeyCommandOverlayRules];

      if (v27)
      {
        v29 = [MEMORY[0x1E698E398] ui_systemKeyCommandOverlayEnvironment];
        [(_UIEventDeferringManager *)v5 registerTargetProvider:v5 forEnvironment:v29];
      }

      v30 = [(_UIEventDeferringManager *)v5 windowHostingScene];
      v31 = [v30 _screen];

      v32 = [MEMORY[0x1E696AD88] defaultCenter];
      [v32 addObserver:v5 selector:sel__screenUniqueIdWillChange_ name:@"_UIScreenUniqueIdWillChangeNotification" object:v31];
      [v32 addObserver:v5 selector:sel__screenUniqueIdDidChange_ name:@"_UIScreenUniqueIdDidChangeNotification" object:v31];

      objc_initWeak(buf, v5);
      v33 = MEMORY[0x1E696AEC0];
      v34 = [(_UIEventDeferringManager *)v5 windowHostingScene];
      v35 = [v34 _sceneIdentifier];
      v36 = [v33 stringWithFormat:@"UIKit - EventDeferringState - %@", v35];

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
      LODWORD(v35) = [v40 _isTargetOfKeyboardEventDeferringEnvironment];

      if (v35)
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

- (void)registerTargetProvider:(uint64_t)a3 forEnvironment:
{
  if (a1)
  {
    v6 = [(_UIEventDeferringManager *)a1 _targetProvidersByEnvironment];
    v7 = [v6 objectForKey:a3];

    if (!v7)
    {
      v8 = [(_UIEventDeferringManager *)a1 _targetProvidersByEnvironment];
      [v8 setObject:a2 forKey:a3];
    }
  }
}

+ (void)targetOfEventDeferringEnvironmentsDidUpdateForScene:(uint64_t)a1
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
          v7 = [v6 _eventDeferringManager];
          if (v7 && ([v3 containsObject:v7] & 1) == 0)
          {
            if (!v3)
            {
              v3 = objc_opt_new();
            }

            [v3 addObject:v7];
            v8 = [v7[13] systemShellManagesKeyboardFocus];
            v9 = _UISceneSystemShellManagesKeyboardFocusForScene(v6);
            v10 = [v7[13] eligibleForLocalCompatibilityRuleRemoval];
            v11 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE50) + 8);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = v11;
              v13 = [v7 windowHostingScene];
              *buf = 134350080;
              *&buf[4] = v7;
              *&buf[12] = 2050;
              *&buf[14] = v13;
              *&buf[22] = 1026;
              LODWORD(v57) = v8;
              WORD2(v57) = 1026;
              *(&v57 + 6) = v9;
              WORD5(v57) = 1026;
              HIDWORD(v57) = v10;
              _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}p] Scene target of event deferring environments did update: scene: %{public}p; current systemShellManagesKeyboardFocus: %{public}d; systemShellManagesKeyboardFocusForScene: %{public}d; eligibleForRecordRemoval: %{public}d;", buf, 0x28u);
            }

            if (!(v8 & 1 | ((v9 & 1) == 0)) && ((v10 ^ 1) & 1) == 0)
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

              [v7[13] setSystemShellManagesKeyboardFocus:1];
              v48 = 0u;
              v49 = 0u;
              v46 = 0u;
              v47 = 0u;
              v43 = [(_UIEventDeferringManager *)v7 _allEnvironments];
              v45 = [v43 countByEnumeratingWithState:&v46 objects:v54 count:16];
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
                      objc_enumerationMutation(v43);
                    }

                    v16 = *(*(&v46 + 1) + 8 * v15);
                    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: Removing local compatibility record for system shell managing keyboard focus in %@", objc_opt_class(), v7, v16];
                    if (([v7[13] eligibleForLocalCompatibilityRuleRemoval] & 1) == 0)
                    {
                      v35 = [MEMORY[0x1E696AAA8] currentHandler];
                      v36 = [v7 windowHostingScene];
                      [v35 handleFailureInMethod:sel__removeLocalCompatibilityEventDeferringForSystemShellKeyboardFocusInEnvironment_withReason_ object:v7 file:@"_UIEventDeferringManager.m" lineNumber:3488 description:{@"[%p] %s: Invalid to request compatibility record removal on this scene: %@", v7, "-[_UIEventDeferringManager _removeLocalCompatibilityEventDeferringForSystemShellKeyboardFocusInEnvironment:withReason:]", v36}];
                    }

                    v18 = [v16 description];
                    v19 = v18;
                    v20 = [v18 UTF8String];

                    v21 = v17;
                    v22 = [v17 UTF8String];
                    v23 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEB0) + 8);
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      *v60 = 134349570;
                      *&v60[4] = v7;
                      *&v60[12] = 2082;
                      *&v60[14] = v20;
                      *&v60[22] = 2082;
                      v61 = v22;
                      _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] Removing all local compatibility event deferring rules for reason: %{public}s", v60, 0x20u);
                    }

                    v24 = [(_UIEventDeferringManager *)v7 _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
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
                      [(_UIEventDeferringManager *)v7 _processEventDeferringActions:2 actionsCount:v32 inScope:WeakRetained forDeferringToken:v30 environments:v34 target:0 addingRecreationReason:0 removingRecreationReason:v17 forReason:?];
                      v3 = v31;
                    }

                    _Block_object_dispose(v60, 8);
                    ++v15;
                  }

                  while (v45 != v15);
                  v37 = [v43 countByEnumeratingWithState:&v46 objects:v54 count:16];
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

- (void)_sceneWillInvalidate:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  deferringManagerFlags = self->_deferringManagerFlags;
  v6 = [(_UIEventDeferringManager *)self windowHostingScene];
  v7 = [v6 _hasInvalidated];

  if (v7)
  {
    if (*&self->_deferringManagerFlags & 2 | deferringManagerFlags & 1)
    {
      if ((*&self->_deferringManagerFlags & 2) == 0)
      {
        v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: removing all deferring rules due to scene invalidation: %p", objc_opt_class(), self, a3];
        v8 = [(_UIEventDeferringManager *)self _allEnvironments];
        objc_initWeak(&location, self);
        v9 = [_UIEventDeferringOwnershipToken alloc];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __103___UIEventDeferringManager__removeEventDeferringRecordsForAllEnvironmentsWithOwningElement_withReason___block_invoke;
        v31[3] = &unk_1E70FCD28;
        objc_copyWeak(&v32, &location);
        v10 = [(_UIEventDeferringOwnershipToken *)v9 _initWithOwner:1 scope:v8 environments:0 target:v26 reason:v31 endDeferringBlock:?];
        v11 = v26;
        v12 = [v26 UTF8String];
        v13 = *(__UILogGetCategoryCachedImpl("EventDeferring", &_removeEventDeferringRecordsForAllEnvironmentsWithOwningElement_withReason____s_category) + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349314;
          v35 = self;
          v36 = 2082;
          v37 = v12;
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
        [(_UIEventDeferringManager *)self _processEventDeferringActions:3 actionsCount:v14 inScope:v10 forDeferringToken:v15 environments:v17 target:0 addingRecreationReason:0 removingRecreationReason:v26 forReason:?];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v18 = v8;
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

        v22 = [MEMORY[0x1E696AD88] defaultCenter];
        [v22 removeObserver:self];

        v23 = self->_behavior;
        v24 = [(_UIEventDeferringBehavior *)v23 systemShellBehaviorDelegate];

        if (v24)
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

+ (void)setSystemShellBehaviorDelegate:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  if ((_UIEventDeferringSystemShellBehaviorIsAllowedForProcess() & 1) == 0)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"_UIEventDeferringManager.m" lineNumber:2172 description:{@"%s: A system shell behavior delegate is not allowed for this process", "+[_UIEventDeferringManager setSystemShellBehaviorDelegate:]"}];
  }

  v6 = qword_1ED49CE40;
  v7 = v6;
  if (a3 && v6)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:a1 file:@"_UIEventDeferringManager.m" lineNumber:2175 description:{@"%s: Invalid to set a system shell behavior delegate with one already present", "+[_UIEventDeferringManager setSystemShellBehaviorDelegate:]"}];
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

  objc_storeStrong(&qword_1ED49CE40, a3);
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

        v19 = [*(*(&v22 + 1) + 8 * i) _eventDeferringManager];
        if (v19 && ([v16 containsObject:v19] & 1) == 0)
        {
          if (!v16)
          {
            v16 = objc_opt_new();
          }

          [v16 addObject:v19];
          [v19[13] setSystemShellBehaviorDelegate:qword_1ED49CE40];
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

- (void)eventDeferringManager:(id)a3 didRemoveLocalCompatibilityRecordForDescriptor:(id)a4
{
  if (a4)
  {
    v6 = *(a4 + 4);
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
    v9 = [v7 pointerValue];
    v10 = a4 ? *(a4 + 9) : 0;
    if (v9 == v10)
    {
      [(_UIEventDeferringManager *)self _stopObservingContextForLocalTargetWindowInEnvironment:v11];
    }
  }
}

- (id)succinctDescription
{
  v2 = [(_UIEventDeferringManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:_NSStringFromUIDeferringState[self->_currentState] withName:@"currentState"];
  v4 = [v3 appendObject:self->_transactionAssertion withName:@"transactionAssertion"];
  v5 = [(_UIEventDeferringManager *)&self->super.isa internalBehavior];
  v6 = [v5 succinctDescription];
  v7 = [v3 appendObject:v6 withName:@"behavior"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEventDeferringManager *)self succinctDescriptionBuilder];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIEventDeferringManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v5 setActiveMultilinePrefix:a3];
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
  v20 = self;
  v15 = [v14 modifyBody:v18];
  v16 = v14;

  return v14;
}

- (id)_currentLocalRecordsMatchingEnvironment:(int)a3 forcePreviousHardwareIdentifier:
{
  v6 = [a1[2] objectForKey:a2];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__33;
  v24 = __Block_byref_object_dispose__33;
  v25 = 0;
  if (a3)
  {
    v7 = a1[7];
  }

  else
  {
    v7 = [(_UIEventDeferringManager *)a1 _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
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

- (void)_currentLocalOrCompatibilityRecordMatchingEnvironment:(uint64_t)a3 recordingManagerPointer:(int)a4 forcePreviousHardwareIdentifier:
{
  v5 = [(_UIEventDeferringManager *)a1 _currentLocalOrCompatibilityRecordForEnvironment:a2 forcePreviousHardwareIdentifier:a4];
  v6 = v5;
  if (v5)
  {
    if (*(v5 + 40) == a3)
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

- (id)_remoteRecordsInStackMatchingEnvironment:(uint64_t)a3 passingTest:
{
  v18 = *MEMORY[0x1E69E9840];
  [(_UIEventDeferringManager *)a1 _remoteDeferringRecordStackForEnvironment:a2];
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
      if ((*(a3 + 16))(a3, v10, &v12))
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

- (id)_environmentsForLocalTargetWindowPointer:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = [(_UIEventDeferringManager *)a1 _trackedLocalTargetWindowPointers];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v3 objectForKeyedSubscript:v9];
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

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_localTargetWindowDidAttachContext:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a3 object];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_UIEventDeferringManager *)self windowHostingScene];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [v6 _windowHostingScene];

      if (v9 == v8)
      {
        v10 = [MEMORY[0x1E696B098] valueWithPointer:v6];
        v11 = [(_UIEventDeferringManager *)self _environmentsForLocalTargetWindowPointer:v10];
        if (v11)
        {
          v20 = v10;
          v21 = v8;
          v12 = [v6 _contextId];
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
                v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: recreating %@: context attached for window: %p contextID: 0x%X", objc_opt_class(), self, v17, v6, v12];;
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

- (void)_recreateEventDeferringRecordsInEnvironment:(void *)a3 removingRecreationReason:(void *)a4 forReason:
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = [a2 description];
    v9 = [v8 UTF8String];

    if (a3)
    {
      v10 = _UIEventDeferringShorterRecreationReasonStringForReason(a3);
    }

    else
    {
      v10 = @"(nil)";
    }

    v11 = [(__CFString *)v10 UTF8String];
    v12 = [a4 UTF8String];
    v13 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE90) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349826;
      v27 = a1;
      v28 = 2082;
      v29 = v9;
      v30 = 2082;
      v31 = v11;
      v32 = 2082;
      v33 = v12;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] Recreation of event deferring records requested: removing recreation reason: %{public}s; for reason: %{public}s", buf, 0x2Au);
    }

    v14 = [(_UIEventDeferringManager *)a1 _currentLocalOrCompatibilityRecordMatchingEnvironment:a2 recordingManagerPointer:a1 forcePreviousHardwareIdentifier:(*(a1 + 80) >> 5) & 1];
    v15 = v14;
    if (a3 && v14)
    {
      v16 = [(_UIEventDeferringRecord *)v14 recreationReasons];
      v17 = [v16 containsObject:a3];

      if ((v17 & 1) == 0)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        v19 = [(_UIEventDeferringRecord *)v15 recreationReasons];
        [v18 handleFailureInMethod:sel__recreateEventDeferringRecordsInEnvironment_removingRecreationReason_forReason_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3411 description:{@"[%p] %s: Invalid state for recreating record. Recreation reason should be present but is not: %@; reasons: %@; record: %@", a1, "-[_UIEventDeferringManager _recreateEventDeferringRecordsInEnvironment:removingRecreationReason:forReason:]", a3, v19, v15}];
      }
    }

    else if (!v14)
    {
      v25 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE98) + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v27 = a1;
        v28 = 2082;
        v29 = v9;
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
    [(_UIEventDeferringManager *)a1 _processEventDeferringActions:3 actionsCount:v22 inScope:WeakRetained forDeferringToken:v21 environments:v24 target:0 addingRecreationReason:a3 removingRecreationReason:a4 forReason:?];

LABEL_15:
  }
}

- (void)_localTargetWindowDidDetachContext:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a3 object];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 allowsWeakReference])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [(_UIEventDeferringManager *)self windowHostingScene];
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v12 = [v8 _windowHostingScene];

    if (v12 == v10)
    {
      v13 = [MEMORY[0x1E696B098] valueWithPointer:v8];
      v14 = [(_UIEventDeferringManager *)self _environmentsForLocalTargetWindowPointer:v13];
      if (v14)
      {
        v25 = v13;
        v26 = v10;
        v27 = v6;
        v15 = [a3 userInfo];
        v16 = [v15 objectForKeyedSubscript:@"contextId"];
        v17 = [v16 unsignedIntValue];

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
              v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: disabling %@: context detached for window: %p contextID: 0x%X", objc_opt_class(), self, v22, v8, v17];;
              [(_UIEventDeferringManager *)&self->super.isa _disableEventDeferringRecordsInEnvironment:v22 addingRecreationReason:@"_UIEventDeferringRecreationReasonDetachedContext" forReason:v23];

              ++v21;
            }

            while (v19 != v21);
            v19 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
          }

          while (v19);
        }

        v10 = v26;
        v6 = v27;
        v14 = v24;
        v13 = v25;
      }
    }
  }
}

- (void)_disableEventDeferringRecordsInEnvironment:(void *)a3 addingRecreationReason:(void *)a4 forReason:
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = [a2 description];
    v9 = [v8 UTF8String];

    v10 = _UIEventDeferringShorterRecreationReasonStringForReason(a3);
    v11 = [v10 UTF8String];

    v12 = [a4 UTF8String];
    v13 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEA0) + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349826;
      v27 = a1;
      v28 = 2082;
      v29 = v9;
      v30 = 2082;
      v31 = v11;
      v32 = 2082;
      v33 = v12;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] Disabling event deferring records requested: adding recreation reason: %{public}s; for reason: %{public}s", buf, 0x2Au);
    }

    v14 = [(_UIEventDeferringManager *)a1 _currentLocalOrCompatibilityRecordMatchingEnvironment:a2 recordingManagerPointer:a1 forcePreviousHardwareIdentifier:0];
    v15 = v14;
    if (v14)
    {
      v16 = [(_UIEventDeferringRecord *)v14 recreationReasons];
      v17 = [v16 containsObject:a3];

      if (v17)
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        v25 = [(_UIEventDeferringRecord *)v15 recreationReasons];
        [v24 handleFailureInMethod:sel__disableEventDeferringRecordsInEnvironment_addingRecreationReason_forReason_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3456 description:{@"[%p] %s: Invalid state for disabling. Recreation reason should not be present but is: %@; reasons: %@; record: %@", a1, "-[_UIEventDeferringManager _disableEventDeferringRecordsInEnvironment:addingRecreationReason:forReason:]", a3, v25, v15}];
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
      [(_UIEventDeferringManager *)a1 _processEventDeferringActions:3 actionsCount:v20 inScope:WeakRetained forDeferringToken:v19 environments:v22 target:a3 addingRecreationReason:0 removingRecreationReason:a4 forReason:?];
    }

    else
    {
      v23 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEA8) + 8);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349314;
        v27 = a1;
        v28 = 2082;
        v29 = v9;
        _os_log_impl(&dword_188A29000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] No records. Exiting event deferring records disable request.", buf, 0x16u);
      }
    }
  }
}

- (void)_screenUniqueIdWillChange:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a3 object];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_UIEventDeferringManager *)self windowHostingScene];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = [v7 _screen];

      v10 = [v6 displayConfiguration];
      v11 = [v10 isExternal];

      if (v9 == v6 && v11 && (*&self->_deferringManagerFlags & 0x10) == 0)
      {
        v31 = v8;
        v33 = v6;
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
        v16 = [a3 userInfo];
        v17 = [v16 objectForKeyedSubscript:@"_UIScreenNewUniqueIdUserInfoKey"];
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
        v21 = [(__CFString *)v15 UTF8String];
        v29 = v20;
        v22 = [(__CFString *)v20 UTF8String];
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
              v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: disabling %@: screen identifier will change for screen: %p current: %s; new: %s", objc_opt_class(), self, v27, v33, v21, v22];;
              [(_UIEventDeferringManager *)&self->super.isa _disableEventDeferringRecordsInEnvironment:v27 addingRecreationReason:@"_UIEventDeferringRecreationReasonChangingScreenIdentifier" forReason:v28];
            }

            v24 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
          }

          while (v24);
        }

        *&self->_deferringManagerFlags = *&self->_deferringManagerFlags & 0xE7 | 0x10;
        v6 = v33;
        v8 = v31;
      }
    }
  }
}

- (void)_screenUniqueIdDidChange:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a3 object];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_UIEventDeferringManager *)self windowHostingScene];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v7 _screen];
    if (v9 == v6)
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
          v13 = [(__CFString *)v22 UTF8String];
          v23 = v11;
          v14 = [v11 UTF8String];
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
                v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: recreating %@: screen identifier changed for screen: %p current: %s; new: %s", objc_opt_class(), self, v19, v6, v13, v14];;
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

- (void)_windowHostingScene:(id)a3 didMoveFromScreen:(id)a4 toScreen:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = [(_UIEventDeferringManager *)self windowHostingScene];
  if (v10 == a3)
  {
    obja = v10;
    v11 = [(_UIEventDeferringManager *)self windowHostingScene];
    v12 = [v11 _screen];

    if (v12 == a5)
    {
      if ((*&self->_deferringManagerFlags & 0x10) != 0)
      {
        v13 = [a4 displayConfiguration];
        v14 = [v13 hardwareIdentifier];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = @"(nil)";
        }

        v17 = v16;

        v18 = [a5 displayConfiguration];
        v19 = [v18 hardwareIdentifier];
        v20 = v19;
        if (v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = @"(nil)";
        }

        v22 = v21;

        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringManager.m" lineNumber:2790 description:{@"Invalid state: window hosting scene moved screens while a screen hardware identifier change is in process: previousExternalScreenIdentifier: %@; oldScreenHardwareIdentifier: %@; newScreenHardwareIdentifier: %@; self: %@", self->_previousExternalScreenIdentifier, v17, v22, self}];
      }

      v24 = a4;
      v25 = a5;
      v26 = a3;
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
            v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: recreating %@: window hosting scene moved screens: scene: <%s: %p> oldScreen: %p; newScreen: %p", objc_opt_class(), self, v33, Name, v26, v24, v25];;
            [(_UIEventDeferringManager *)self _recreateEventDeferringRecordsInEnvironment:v33 removingRecreationReason:0 forReason:v34];
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

- (id)localEventDeferringTargetWindowForEnvironment:(id)a3
{
  if (self)
  {
    v3 = [(_UIEventDeferringManager *)self windowHostingScene];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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

  v6 = [(UIWindowScene *)v5 _keyWindow];

  return v6;
}

- (id)currentLocalDeferringTargetWindowMatchingEnvironment:(id)a3 deferringToken:
{
  if (a1)
  {
    v4 = [(_UIEventDeferringManager *)a1 _currentLocalOrCompatibilityRecordForEnvironment:a2 forcePreviousHardwareIdentifier:0];
    v5 = v4;
    if (v4 && (WeakRetained = objc_loadWeakRetained((v4 + 32)), WeakRetained, WeakRetained == a3))
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

- (id)_localTargetWindowForEnvironment:(int)a3 consultingFallbackIfPermitted:
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = [(_UIEventDeferringManager *)a1 _targetProvidersByEnvironment];
  v7 = [v6 objectForKey:a2];

  if (!v7)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:sel__targetProviderForEnvironment_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:2819 description:{@"[%p] [%@] %s: No registered target provider for this environment", a1, a2, "-[_UIEventDeferringManager _targetProviderForEnvironment:]"}];
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
      v16 = a1;
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

  if (!v8 && a3)
  {
    if ([*(a1 + 104) shouldAllowFallbackWindowForEnvironment:a2])
    {
      v8 = [(_UIEventDeferringManager *)a1 fallbackLocalDeferringTargetWindowIfPermittedForEnvironment:a2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)fallbackLocalDeferringTargetWindowIfPermittedForEnvironment:(id *)a1
{
  v22 = *MEMORY[0x1E69E9840];
  if (a1 && [a1[13] shouldAllowFallbackWindowForEnvironment:a2])
  {
    v4 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    v5 = [a2 isEqual:v4];

    if (v5)
    {
      v6 = [a1 windowHostingScene];
      v7 = UIApp;
      v8 = [v6 _screen];
      v9 = [v7 _keyWindowForScreen:v8];

      v10 = [v9 _windowHostingScene];
      if (v10 == v6)
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
        v17 = a1;
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

- (void)_processEventDeferringActions:(uint64_t)a3 actionsCount:(uint64_t)a4 inScope:(void *)a5 forDeferringToken:(void *)a6 environments:(void *)a7 target:(void *)a8 addingRecreationReason:(void *)a9 removingRecreationReason:(void *)a10 forReason:
{
  v80 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if (![a6 count])
  {
    v40 = [MEMORY[0x1E696AAA8] currentHandler];
    [v40 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3269 description:{@"Invalid parameter not satisfying: %@", @"environments.count > 0"}];
  }

  if (![a10 length])
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3270 description:{@"Invalid parameter not satisfying: %@", @"reason.length > 0"}];
  }

  v16 = 0;
  v17 = 0;
  do
  {
    v17 |= 1 << LODWORD(a2[v16++]);
  }

  while (a3 != v16);
  if ((*&v17 & 0x28003) != 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:a1 file:"-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]" lineNumber:? description:?];
  }

  if (a5)
  {
    v19 = a5[6];
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 != a1 && (v17 & 0x84) != 0;
  if (v19 == a1)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    v21 = ((v17 & 4) == 0) & (v17 >> 5) | ((v17 & 0x80) == 0) & (v17 >> 10);
  }

  v58 = v21;
  v59 = v20;
  if (a4 && (v17 & 4) != 0)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:a1 file:"-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]" lineNumber:? description:?];
  }

  if (a4 != 1 && (v17 & 0x80) != 0)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:a1 file:"-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]" lineNumber:? description:?];

    if (a4)
    {
      goto LABEL_25;
    }
  }

  else if (a4)
  {
    goto LABEL_25;
  }

  if (a7)
  {
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = a1;
    [v44 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3319 description:{@"[%p] %s: It is invalid to specify a target when deferring events locally", a1, "-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]"}];

    goto LABEL_26;
  }

LABEL_25:
  v22 = a1;
  if (!a7)
  {
    goto LABEL_28;
  }

LABEL_26:
  if ([a7 pid] >= 1)
  {
    v23 = [a7 pid];
    if (v23 != getpid())
    {
LABEL_28:
      if (a8)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  v39 = [MEMORY[0x1E696AAA8] currentHandler];
  v22 = a1;
  [v39 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3320 description:{@"[%p] %s: Remote event deferring cannot be pointed at the originating process", a1, "-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]"}];

  if (a8)
  {
LABEL_29:
    if (a9)
    {
      v57 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = a1;
      [v57 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3327 description:{@"[%p] %s: Invalid combination of recreation reasons: add: %@; remove: %@", a1, "-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]", a8, a9}];
    }
  }

LABEL_31:
  v24 = [v22 windowHostingScene];

  if (!v24)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3330 description:{@"[%p] %s: Invalid %@ object. There is no scene", a1, "-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]", objc_opt_class()}];
  }

  v25 = a1;
  v26 = [(_UIEventDeferringManager *)a1 _transactionAssertion];

  if (v26)
  {
    v46 = [MEMORY[0x1E696AAA8] currentHandler];
    v25 = a1;
    [v46 handleFailureInMethod:sel__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3333 description:{@"[%p] %s: Invalid state. Processing actions with an existing transaction: %@", a1, "-[_UIEventDeferringManager _processEventDeferringActions:actionsCount:inScope:forDeferringToken:environments:target:addingRecreationReason:removingRecreationReason:forReason:]", a1}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __175___UIEventDeferringManager__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason___block_invoke;
  aBlock[3] = &unk_1E70FCD00;
  aBlock[9] = a2;
  aBlock[10] = a3;
  aBlock[4] = v25;
  aBlock[5] = a5;
  aBlock[6] = a6;
  aBlock[7] = a7;
  aBlock[8] = a10;
  v60 = _Block_copy(aBlock);
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CE80);
  if (*CategoryCachedImpl)
  {
    v47 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = a8;
      v49 = v60[2];
      v50 = v47;
      v49(v60, @"Processing actions");
      v51 = v50;
      v52 = a8 = v48;
      v53 = [v52 build];
      *buf = 134349314;
      *&buf[4] = a1;
      *&buf[12] = 2114;
      *&buf[14] = v53;
      _os_log_impl(&dword_188A29000, v51, OS_LOG_TYPE_ERROR, "[%{public}p] State before processing actions:\n%{public}@", buf, 0x16u);
    }
  }

  if ((*(a1 + 80) & 0x20) != 0)
  {
    v28 = *(a1 + 56);
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  v78 = 0;
  *buf = a1;
  *&buf[8] = a5;
  *&buf[16] = 0;
  v75 = a8;
  v76 = a9;
  v77 = a10;
  LOBYTE(v78) = v58;
  BYTE1(v78) = v59;
  BYTE2(v78) = (*(a1 + 80) & 0x20) != 0;
  v61 = v29;
  v79 = v61;
  v30 = (a1 + 8);
  handleEvent(stateMachineSpec, *(a1 + 8), 0, buf, (a1 + 8));
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v31 = a6;
  v32 = [v31 countByEnumeratingWithState:&v64 objects:v73 count:16];
  if (v32)
  {
    v33 = *v65;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v65 != v33)
        {
          objc_enumerationMutation(v31);
        }

        objc_storeStrong(&buf[16], *(*(&v64 + 1) + 8 * i));
        handleEvent(stateMachineSpec, *v30, 1, buf, v30);
        v35 = a2;
        v36 = a3;
        do
        {
          v37 = *v35++;
          handleEvent(stateMachineSpec, *v30, v37, buf, v30);
          --v36;
        }

        while (v36);
        handleEvent(stateMachineSpec, *v30, 15, buf, v30);
      }

      v32 = [v31 countByEnumeratingWithState:&v64 objects:v73 count:16];
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
      v56 = [v55 build];
      *v69 = 134349314;
      v70 = a1;
      v71 = 2114;
      v72 = v56;
      _os_log_impl(&dword_188A29000, v54, OS_LOG_TYPE_ERROR, "[%{public}p] State after processing actions:\n%{public}@", v69, 0x16u);
    }
  }

  __destructor_8_s8_s16_s24_s32_s40_s56(buf);
}

- (void)removeEventDeferringRulesIfNeededForDeallocatingWindow:(id *)a1
{
  v111 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v4 = objc_opt_class();
  Name = class_getName(v4);
  v6 = [a2 _windowHostingScene];
  v7 = objc_opt_class();
  v8 = class_getName(v7);

  if (os_variant_has_internal_diagnostics())
  {
    v64 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEB8) + 8);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      v65 = v64;
      v66 = [a2 _windowHostingScene];
      *buf = 134350082;
      v97 = a1;
      v98 = 2082;
      v99 = Name;
      v100 = 2050;
      v101 = a2;
      v102 = 2082;
      v103 = v8;
      v104 = 2050;
      v105 = v66;
      _os_log_impl(&dword_188A29000, v65, OS_LOG_TYPE_DEFAULT, "[%{public}p] Removing all event deferring rules (if needed) for deallocating window: <%{public}s: %{public}p>; scene: <%{public}s: %{public}p>", buf, 0x34u);
    }
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = [(_UIEventDeferringManager *)a1 _allEnvironments];
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
      v11 = [(_UIEventDeferringManager *)a1 _trackedLocalTargetWindowPointerForEnvironment:v10];
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

      v14 = [(_UIEventDeferringManager *)a1 _currentLocalOrCompatibilityRecordMatchingEnvironment:v10 recordingManagerPointer:a1 forcePreviousHardwareIdentifier:0];
      v15 = [(_UIEventDeferringManager *)a1 _currentLocalOrCompatibilityRecordForEnvironment:v10 forcePreviousHardwareIdentifier:0];
      if (os_variant_has_internal_diagnostics())
      {
        v26 = [v10 description];
        v27 = v26;
        v72 = [v26 UTF8String];

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
        v71 = [v31 UTF8String];

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

          v36 = [v12 pointerValue];
          *buf = 134350594;
          v97 = a1;
          v98 = 2082;
          v99 = v72;
          v100 = 2050;
          v101 = v14;
          v102 = 2050;
          v103 = v15;
          v104 = 2050;
          v105 = v35;
          v106 = 2082;
          v107 = v71;
          v108 = 2050;
          v109 = v36;
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
          v37 = [MEMORY[0x1E696AAA8] currentHandler];
          [v37 handleFailureInMethod:sel_removeEventDeferringRulesIfNeededForDeallocatingWindow_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3557 description:{@"[%p] %s: Bug in event deferring client: owning interface element is deallocating before deferring has ended: %@", a1, "-[_UIEventDeferringManager removeEventDeferringRulesIfNeededForDeallocatingWindow:]", v14}];
        }
      }

      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __83___UIEventDeferringManager_removeEventDeferringRulesIfNeededForDeallocatingWindow___block_invoke;
      v89[3] = &unk_1E70FCC10;
      v89[4] = a2;
      v19 = [(_UIEventDeferringManager *)a1 _remoteRecordsInStackMatchingEnvironment:v10 passingTest:v89];
      v20 = v19;
      if (v19 && [v19 count])
      {
        v38 = [MEMORY[0x1E696AAA8] currentHandler];
        [v38 handleFailureInMethod:sel_removeEventDeferringRulesIfNeededForDeallocatingWindow_ object:a1 file:@"_UIEventDeferringManager.m" lineNumber:3564 description:{@"[%p] %s: Bug in event deferring client: owning interface element is deallocating before deferring has ended: %@", a1, "-[_UIEventDeferringManager removeEventDeferringRulesIfNeededForDeallocatingWindow:]", v20}];
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
      v97 = a1;
      v98 = 2050;
      v99 = v69;
      v100 = 2050;
      v101 = v70;
      _os_log_impl(&dword_188A29000, v68, OS_LOG_TYPE_DEFAULT, "[%{public}p] Environments to remove for deallocating window: %{public}lu; separate environments to end observation for deallocating window: %{public}lu", buf, 0x20u);
    }
  }

  if (v75)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %p: removing deferring rules for deallocating window: %p", objc_opt_class(), a1, a2];
    objc_initWeak(&location, a1);
    v41 = [_UIEventDeferringOwnershipToken alloc];
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __83___UIEventDeferringManager_removeEventDeferringRulesIfNeededForDeallocatingWindow___block_invoke_522;
    v86[3] = &unk_1E70FCD28;
    objc_copyWeak(&v87, &location);
    v42 = [(_UIEventDeferringOwnershipToken *)v41 _initWithOwner:a1 scope:0 environments:v75 target:0 reason:v40 endDeferringBlock:v86];
    v43 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CED0) + 8);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [a2 _contextId];
      *buf = 134349568;
      v97 = a1;
      v98 = 2050;
      v99 = a2;
      v100 = 1026;
      LODWORD(v101) = v44;
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
    [(_UIEventDeferringManager *)a1 _processEventDeferringActions:2 actionsCount:v45 inScope:v42 forDeferringToken:v46 environments:v48 target:0 addingRecreationReason:0 removingRecreationReason:v40 forReason:?];

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
          v61 = [v59 UTF8String];

          if (os_variant_has_internal_diagnostics())
          {
            v62 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CED8) + 8);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134349570;
              v97 = a1;
              v98 = 2082;
              v99 = v61;
              v100 = 2050;
              v101 = a2;
              _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] Ending observation of deallocating window: [%{public}p", buf, 0x20u);
            }
          }

          [(_UIEventDeferringManager *)a1 _stopObservingContextForLocalTargetWindowInEnvironment:v58];
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

- (void)endEventDeferringForToken:(id)a3 withReason:
{
  v79 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v5 = a1;
  if (a2)
  {
    if (*(a2 + 24))
    {
      return;
    }

    v6 = *(a2 + 56);
    if (v6 == 1)
    {
      v7 = [a3 UTF8String];
      v8 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CF18) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = *(a2 + 64);
        *buf = 134349826;
        v64 = v5;
        v65 = 2050;
        v66 = a2;
        v67 = 2048;
        v68 = [v10 count];
        v69 = 2082;
        v70 = v7;
        _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}p] End remote event deferring requested for token: %{public}p; environments: %lu; reason: %{public}s", buf, 0x2Au);
      }

      if (*(a2 + 24) == 1)
      {
        v11 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CF20) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349312;
          v64 = v5;
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
        [(_UIEventDeferringManager *)v5 _processEventDeferringActions:3 actionsCount:v44 inScope:a2 forDeferringToken:v45 environments:v46 target:0 addingRecreationReason:0 removingRecreationReason:a3 forReason:?];

LABEL_60:
      }

      return;
    }

    if (v6)
    {
      v50 = [MEMORY[0x1E696AAA8] currentHandler];
      [v50 handleFailureInMethod:sel_endLocalEventDeferringForToken_withReason_ object:v5 file:@"_UIEventDeferringManager.m" lineNumber:3853 description:{@"[%p] %s: Wrong method for deferring token: %@", v5, "-[_UIEventDeferringManager endLocalEventDeferringForToken:withReason:]", a2}];
    }
  }

  v13 = [a3 UTF8String];
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
    v72 = v5;
    v73 = 2050;
    v74 = a2;
    v75 = 2048;
    v76 = [v17 count];
    v77 = 2082;
    v78 = v13;
    _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}p] End local event deferring requested for token: %{public}p; environments: %lu; reason: %{public}s", v71, 0x2Au);
  }

  if (!a2)
  {
    v51 = a3;
    v18 = 0;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    goto LABEL_22;
  }

  if (*(a2 + 24) != 1)
  {
    v51 = a3;
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

          v24 = [(_UIEventDeferringManager *)v5 _currentLocalRecordsMatchingEnvironment:0 forcePreviousHardwareIdentifier:?];
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
              v32 = v5;
              v33 = v22;
              v34 = objc_loadWeakRetained((v29 + 32));

              v35 = v34 == a2;
              v22 = v33;
              v5 = v32;
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
            [(_UIEventDeferringManager *)v5 _processEventDeferringActions:2 actionsCount:v47 inScope:a2 forDeferringToken:v45 environments:v49 target:0 addingRecreationReason:0 removingRecreationReason:v51 forReason:?];

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
      v72 = v5;
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
    v72 = v5;
    v73 = 2050;
    v74 = a2;
    v12 = v71;
    goto LABEL_20;
  }
}

- (_BYTE)beginLocalEventDeferringInEnvironments:(void *)a3 forOwningInterfaceElement:(void *)a4 withReason:
{
  v47 = *MEMORY[0x1E69E9840];
  if (!a1 || (a1[80] & 2) != 0)
  {
    v18 = 0;
  }

  else
  {
    _UIEventDeferringAssertForInvalidOwningInterfaceElement(a3);
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
          v13 = [(_UIEventDeferringManager *)a1 _localTargetWindowForEnvironment:v12 consultingFallbackIfPermitted:1];
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

    v15 = a4;
    v16 = [a4 UTF8String];
    if (v8 && [v8 count])
    {
      v17 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEE0) + 8);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349570;
        v39 = a1;
        v40 = 2114;
        v41 = v8;
        v42 = 2082;
        v43 = v16;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "[%{public}p] Exiting request to begin local event deferring as environments are missing local target windows: %{public}@; request reason: %{public}s", buf, 0x20u);
      }

      v18 = 0;
    }

    else
    {
      objc_initWeak(&location, a1);
      v19 = [_UIEventDeferringOwnershipToken alloc];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __104___UIEventDeferringManager_beginLocalEventDeferringInEnvironments_forOwningInterfaceElement_withReason___block_invoke;
      v31[3] = &unk_1E70FCD28;
      objc_copyWeak(&v32, &location);
      v18 = [(_UIEventDeferringOwnershipToken *)v19 _initWithOwner:a3 scope:0 environments:v7 target:0 reason:a4 endDeferringBlock:v31];
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
        v39 = a1;
        v40 = 2050;
        v41 = v18;
        v42 = 2048;
        v43 = v23;
        v44 = 2082;
        v45 = v16;
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
      [(_UIEventDeferringManager *)a1 _processEventDeferringActions:5 actionsCount:v24 inScope:v18 forDeferringToken:v25 environments:v26 target:@"_UIEventDeferringRecreationReasonTopRemoteElementNotVisible" addingRecreationReason:0 removingRecreationReason:v28 forReason:?];

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }
  }

  return v18;
}

- (_BYTE)beginAndEndLocalEventDeferringForToken:(void *)a3 withReason:
{
  v3 = a1;
  v67 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if ((a1[80] & 2) != 0)
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
      v3 = [v9 countByEnumeratingWithState:&v51 objects:v66 count:16];
      if (v3)
      {
        v15 = *v52;
        do
        {
          for (i = 0; i != v3; ++i)
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

          v3 = [v9 countByEnumeratingWithState:&v51 objects:v66 count:16];
        }

        while (v3);
      }
    }

    else
    {
      if (a2)
      {
        if (*(a2 + 56))
        {
          v37 = [MEMORY[0x1E696AAA8] currentHandler];
          [v37 handleFailureInMethod:sel_beginAndEndLocalEventDeferringForToken_withReason_ object:v3 file:@"_UIEventDeferringManager.m" lineNumber:3752 description:{@"[%p] %s: Attempting to begin and end local event deferring for a non-local token: %@", v3, "-[_UIEventDeferringManager beginAndEndLocalEventDeferringForToken:withReason:]", a2}];
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
            v13 = [(_UIEventDeferringManager *)v3 _localTargetWindowForEnvironment:v12 consultingFallbackIfPermitted:1];

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

      v17 = [a3 UTF8String];
      if (v9 && [v9 count])
      {
        v18 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CEF0) + 8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 134349570;
          v57 = v3;
          v58 = 2114;
          v59 = v9;
          v60 = 2082;
          v61 = v17;
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
        v3 = [v20 countByEnumeratingWithState:&v43 objects:v64 count:16];
        if (v3)
        {
          v21 = *v44;
          do
          {
            for (k = 0; k != v3; ++k)
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

            v3 = [v20 countByEnumeratingWithState:&v43 objects:v64 count:16];
          }

          while (v3);
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
          v57 = v3;
          v58 = 2050;
          v59 = a2;
          v60 = 2048;
          v61 = v27;
          v62 = 2082;
          v63 = v17;
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
        v3 = [(_UIEventDeferringManager *)v3 beginLocalEventDeferringInEnvironments:v29 forOwningInterfaceElement:v20 withReason:a3];

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

  return v3;
}

- (_BYTE)beginRemoteEventDeferringInEnvironments:(void *)a3 forOwningInterfaceElement:(void *)a4 toTarget:(void *)a5 withReason:
{
  v35 = *MEMORY[0x1E69E9840];
  if (!a1 || (a1[80] & 2) != 0)
  {
    v11 = 0;
  }

  else
  {
    _UIEventDeferringAssertForInvalidOwningInterfaceElement(a3);
    objc_initWeak(&location, a1);
    v10 = [_UIEventDeferringOwnershipToken alloc];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __114___UIEventDeferringManager_beginRemoteEventDeferringInEnvironments_forOwningInterfaceElement_toTarget_withReason___block_invoke;
    v24[3] = &unk_1E70FCD28;
    objc_copyWeak(&v25, &location);
    v11 = [(_UIEventDeferringOwnershipToken *)v10 _initWithOwner:a3 scope:1 environments:a2 target:a4 reason:a5 endDeferringBlock:v24];
    v12 = a5;
    v13 = [a5 UTF8String];
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
      v28 = a1;
      v29 = 2050;
      v30 = v11;
      v31 = 2048;
      v32 = v17;
      v33 = 2082;
      v34 = v13;
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
    [(_UIEventDeferringManager *)a1 _processEventDeferringActions:5 actionsCount:v18 inScope:v11 forDeferringToken:v19 environments:v20 target:@"_UIEventDeferringRecreationReasonNoLongerTopRemoteRecord" addingRecreationReason:0 removingRecreationReason:v22 forReason:?];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)setNeedsRemoteEventDeferringRuleComparisonInEnvironments:(id)a3 forBehaviorDelegate:(id)a4 withReason:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  if ((*&self->_deferringManagerFlags & 2) == 0)
  {
    if ((_UIEventDeferringSystemShellBehaviorIsAllowedForProcess() & 1) == 0)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringManager.m" lineNumber:3949 description:{@"[%p] %s: System shell behavior is not allowed for this process", self, "-[_UIEventDeferringManager setNeedsRemoteEventDeferringRuleComparisonInEnvironments:forBehaviorDelegate:withReason:]"}];
    }

    v10 = +[_UIEventDeferringManager systemShellBehaviorDelegate];

    if (v10 != a4)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:self file:@"_UIEventDeferringManager.m" lineNumber:3952 description:{@"[%p] %s: Incoming delegate does not match existing delegate: %@", self, "-[_UIEventDeferringManager setNeedsRemoteEventDeferringRuleComparisonInEnvironments:forBehaviorDelegate:withReason:]", a4}];
    }

    v11 = objc_opt_class();
    Name = class_getName(v11);
    v13 = [a5 UTF8String];
    v14 = *(__UILogGetCategoryCachedImpl("EventDeferring", &setNeedsRemoteEventDeferringRuleComparisonInEnvironments_forBehaviorDelegate_withReason____s_category) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349826;
      v36 = self;
      v37 = 2082;
      v38 = Name;
      v39 = 2050;
      v40 = a4;
      v41 = 2082;
      v42 = v13;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}p] Remote event deferring rule comparison requested by system shell behavior delegate: <%{public}s: %{public}p>; reason: %{public}s", buf, 0x2Au);
    }

    objc_initWeak(buf, self);
    v15 = [_UIEventDeferringOwnershipToken alloc];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __116___UIEventDeferringManager_setNeedsRemoteEventDeferringRuleComparisonInEnvironments_forBehaviorDelegate_withReason___block_invoke;
    v33[3] = &unk_1E70FCD50;
    v33[4] = self;
    v16 = [(_UIEventDeferringOwnershipToken *)v15 _initWithOwner:1 scope:a3 environments:0 target:a5 reason:v33 endDeferringBlock:?];
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
    v23 = a3;
    v24 = [v23 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v24)
    {
      v25 = *v30;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v30 != v25)
          {
            objc_enumerationMutation(v23);
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

        v24 = [v23 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v24);
    }

    objc_destroyWeak(buf);
  }
}

- (uint64_t)compareRemoteRuleOwningElement:(uint64_t)a3 toTopElementInEnvironment:
{
  if (!a1 || (*(a1 + 80) & 2) != 0)
  {
    return 0;
  }

  v6 = [(_UIEventDeferringManager *)a1 _topRemoteRecordInStackForEnvironment:a3];
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
      v12 = [*(a1 + 104) compareRemoteRuleOwningElement:v11 toElement:a2 inEnvironment:a3];
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

        v4 = [*(*(&v7 + 1) + 8 * i) _eventDeferringManager];
        if (v4)
        {
          v5 = atomic_load(v4 + 9);

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

- (id)bufferKeyboardFocusEnvironmentEventsWithReason:(uint64_t)a1
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 80) & 2) == 0 && ([a1 _scene], v4 = objc_claimAutoreleasedReturnValue(), v5 = _UISceneSystemShellManagesKeyboardFocusForScene(v4), v4, v5))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v7 = objc_opt_class();
    Name = class_getName(v7);

    v9 = [a2 UTF8String];
    v10 = *(__UILogGetCategoryCachedImpl("EventDeferring", &bufferKeyboardFocusEnvironmentEventsWithReason____s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = objc_loadWeakRetained((a1 + 88));
      *buf = 134349826;
      v33 = a1;
      v34 = 2082;
      v35 = Name;
      v36 = 2050;
      v37 = v12;
      v38 = 2082;
      v39 = v9;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}p] Buffer events for keyboard focus environment in scene: <%{public}s: %{public}p>; reason: %{public}s", buf, 0x2Au);
    }

    v13 = objc_alloc_init(MEMORY[0x1E698E3F0]);
    v14 = [(_UIEventDeferringManager *)a1 _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
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
    v17 = [MEMORY[0x1E698E398] keyboardFocusEnvironment];
    [v13 setEnvironment:v17];

    v18 = [a1 windowHostingScene];
    v19 = [v18 _FBSScene];
    v20 = [v19 identityToken];
    v21 = [v20 stringRepresentation];

    v22 = [MEMORY[0x1E698E3A0] tokenForString:v21];
    [v13 setToken:v22];

    v23 = [MEMORY[0x1E698E3B0] sharedInstance];
    v24 = [v23 bufferEventsMatchingPredicate:v13 withReason:a2];

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%p> - Wrapper", v24];
    v26 = objc_alloc(MEMORY[0x1E698E778]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __75___UIEventDeferringManager_bufferKeyboardFocusEnvironmentEventsWithReason___block_invoke;
    v29[3] = &unk_1E70FCD78;
    v30 = v24;
    v31 = a1;
    v27 = v24;
    v15 = [v26 initWithIdentifier:v25 forReason:a2 invalidationBlock:v29];
    atomic_fetch_add((a1 + 72), 1uLL);
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