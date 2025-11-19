@interface UIEventDeferringManager
@end

@implementation UIEventDeferringManager

id __42___UIEventDeferringManager_initWithScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained descriptionBuilderWithMultilinePrefix:&stru_1EFB14550];
  v3 = [v2 build];

  return v3;
}

void __42___UIEventDeferringManager_initWithScene___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 11);
    if ([v2 _allowsEventUIWindowRouting])
    {
      v3 = objc_loadWeakRetained(v4 + 11);
    }

    else
    {
      v3 = 0;
    }

    [_UIEventDeferringManager targetOfEventDeferringEnvironmentsDidUpdateForScene:v3];
    WeakRetained = v4;
  }
}

void __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 activeMultilinePrefix];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v6[3] = &unk_1E70F35B8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v2 appendBodySectionWithName:0 multilinePrefix:v3 block:v6];
}

void __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) windowHostingScene];
  v4 = [v3 succinctDescription];
  v5 = [v2 appendObject:v4 withName:@"scene"];

  v6 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 104) withName:@"behavior"];
  [*(a1 + 32) appendDictionarySection:*(*(a1 + 40) + 16) withName:@"localDeferringRecords" skipIfEmpty:0];
  v7 = *(a1 + 32);
  v8 = [v7 activeMultilinePrefix];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_3;
  v29[3] = &unk_1E70F35B8;
  v19 = *(a1 + 32);
  v9 = v19.i64[0];
  v30 = vextq_s8(v19, v19, 8uLL);
  [v7 appendBodySectionWithName:@"localCompatibilityDeferringRecords" multilinePrefix:v8 block:v29];

  [*(a1 + 32) appendDictionarySection:*(*(a1 + 40) + 24) withName:@"remoteDeferringRecordStacks" skipIfEmpty:0];
  v10 = *(a1 + 32);
  v11 = [v10 activeMultilinePrefix];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_5;
  v27[3] = &unk_1E70F35B8;
  v20 = *(a1 + 32);
  v12 = v20.i64[0];
  v28 = vextq_s8(v20, v20, 8uLL);
  [v10 appendBodySectionWithName:@"targetWindowProvidersByEnvironment" multilinePrefix:v11 block:v27];

  v13 = *(a1 + 32);
  v14 = [v13 activeMultilinePrefix];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_6;
  v25[3] = &unk_1E70F35B8;
  v21 = *(a1 + 32);
  v15 = v21.i64[0];
  v26 = vextq_s8(v21, v21, 8uLL);
  [v13 appendBodySectionWithName:@"trackedLocalTargetWindowPointersByEnvironment" multilinePrefix:v14 block:v25];

  v16 = *(a1 + 32);
  v17 = [v16 activeMultilinePrefix];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_7;
  v23[3] = &unk_1E70F35B8;
  v22 = *(a1 + 32);
  v18 = v22.i64[0];
  v24 = vextq_s8(v22, v22, 8uLL);
  [v16 appendBodySectionWithName:@"localTargetWindowPointersUnderObservation" multilinePrefix:v17 block:v23];
}

void __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_3(uint64_t a1)
{
  v2 = [(_UIEventDeferringManager *)*(a1 + 32) _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
  if (v2)
  {
    [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v2];
  }

  else
  {
    [MEMORY[0x1E698E3C8] builtinDisplay];
  }
  v3 = ;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__33;
  v16 = __Block_byref_object_dispose__33;
  v17 = 0;
  v4 = _eventDeferringCompatibilityQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_4;
  block[3] = &unk_1E70FCDA0;
  v11 = &v12;
  v5 = v3;
  v10 = v5;
  dispatch_sync(v4, block);

  v6 = *(a1 + 40);
  v7 = v13[5];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"display: %@", v5];
  [v6 appendDictionarySection:v7 withName:v8 skipIfEmpty:0];

  _Block_object_dispose(&v12, 8);
}

void __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_4(uint64_t a1)
{
  v2 = _queue_compatibilityRecordsForDisplay(*(a1 + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_5(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [*(*(a1 + 32) + 32) objectForKey:{v7, v13}];
        v10 = [v9 description];
        v11 = [v7 description];
        v12 = [v8 appendObject:v10 withName:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_6(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(*(a1 + 32) + 40) objectForKey:{v7, v13}];
        v9 = *(a1 + 40);
        v10 = [v8 pointerValue];
        v11 = [v7 description];
        v12 = [v9 appendPointer:v10 withName:v11];
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void __66___UIEventDeferringManager_descriptionBuilderWithMultilinePrefix___block_invoke_7(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(*(a1 + 32) + 48);
  v2 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v13;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v12 + 1) + 8 * i);
        v7 = [*(*(a1 + 32) + 48) countForObject:v6];
        v8 = *(a1 + 40);
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p count", objc_msgSend(v6, "pointerValue")];
        v10 = [v8 appendUnsignedInteger:v7 withName:v9];
      }

      v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v3);
  }
}

void __100___UIEventDeferringManager__currentLocalRecordsMatchingEnvironment_forcePreviousHardwareIdentifier___block_invoke(uint64_t *a1)
{
  v2 = _queue_compatibilityRecord(a1[4], a1[5]);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

BOOL __83___UIEventDeferringManager__remoteRecordInStackMatchingEnvironment_deferringToken___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a2 + 32));
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = WeakRetained == *(a1 + 32);

  *a3 = v6;
  return v6;
}

uint64_t __65___UIEventDeferringManager__sortRemoteRecordStackForEnvironment___block_invoke(uint64_t a1, id *a2, id *a3)
{
  v6 = [(_UIEventDeferringManager *)*(a1 + 32) internalBehavior];
  if (a2 && (WeakRetained = objc_loadWeakRetained(a2 + 4), (a2 = WeakRetained) != 0))
  {
    v8 = WeakRetained[6];
    if (!a3)
    {
LABEL_8:
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  v9 = objc_loadWeakRetained(a3 + 4);
  a3 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9[6];
LABEL_6:
  v11 = [v6 compareRemoteRuleOwningElement:v8 toElement:v10 inEnvironment:*(a1 + 40)];

  return v11;
}

void __85___UIEventDeferringManager__startObservingContextForLocalTargetWindow_inEnvironment___block_invoke(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &__systemShellBehaviorDelegate_block_invoke_25___s_category);
  if (*CategoryCachedImpl)
  {
    v5 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = a1[5];
      v7 = a1[6];
      v8 = a1[4];
      v9 = v5;
      v10 = 134349826;
      v11 = v8;
      v12 = 2082;
      v13 = v7;
      v14 = 2050;
      v15 = v6;
      v16 = 1026;
      v17 = [v6 _contextId];
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}s] Began tracking context for local target window: %{public}p; contextId: 0x%{public}X", &v10, 0x26u);
    }
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:a1[4] selector:sel__localTargetWindowDidAttachContext_ name:_UIWindowDidAttachContextNotification object:a1[5]];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:a1[4] selector:sel__localTargetWindowDidDetachContext_ name:_UIWindowDidDetachContextNotification object:a1[5]];
}

void __83___UIEventDeferringManager__stopObservingContextForLocalTargetWindowInEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [a2 pointerValue];
  if (v3)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", __systemShellBehaviorDelegate_block_invoke_26___s_category);
    if (*CategoryCachedImpl)
    {
      v7 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *(a1 + 32);
        v9 = *(a1 + 40);
        v10 = v7;
        v11 = 134349826;
        v12 = v8;
        v13 = 2082;
        v14 = v9;
        v15 = 2050;
        v16 = v3;
        v17 = 1026;
        v18 = [v3 _contextId];
        _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}s] End tracking context for local target window: %{public}p; contextId: 0x%{public}X", &v11, 0x26u);
      }
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:*(a1 + 32) name:_UIWindowDidAttachContextNotification object:v3];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 removeObserver:*(a1 + 32) name:_UIWindowDidDetachContextNotification object:v3];
  }
}

id __175___UIEventDeferringManager__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) descriptionBuilderWithMultilinePrefix:0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __175___UIEventDeferringManager__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason___block_invoke_2;
  v11[3] = &unk_1E70FCCD8;
  v5 = v4;
  v12 = v5;
  v13 = a2;
  v6 = *(a1 + 80);
  v16 = *(a1 + 72);
  v17 = v6;
  v7 = *(a1 + 56);
  v14 = *(a1 + 40);
  v15 = v7;
  v8 = [v5 modifyBody:v11];
  v9 = v5;

  return v5;
}

void __175___UIEventDeferringManager__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 activeMultilinePrefix];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __175___UIEventDeferringManager__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason___block_invoke_3;
  v7[3] = &unk_1E70FCCB0;
  v8 = *(a1 + 32);
  v5 = *(a1 + 88);
  v11 = *(a1 + 80);
  v12 = v5;
  v6 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v6;
  [v2 appendBodySectionWithName:v3 multilinePrefix:v4 block:v7];
}

void __175___UIEventDeferringManager__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  for (i = objc_opt_new(); v4; --v4)
  {
    v6 = *v3++;
    [i addObject:_NSStringFromUIDeferringAction[v6]];
  }

  [v2 appendArraySection:i withName:@"actions" skipIfEmpty:0];

  v7 = [*(a1 + 32) appendObject:*(a1 + 40) withName:@"deferringToken"];
  v8 = *(a1 + 32);
  v9 = [v8 activeMultilinePrefix];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __175___UIEventDeferringManager__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason___block_invoke_4;
  v15 = &unk_1E70F35B8;
  v16 = *(a1 + 48);
  v17 = *(a1 + 32);
  [v8 appendBodySectionWithName:@"environments" multilinePrefix:v9 block:&v12];

  v10 = [*(a1 + 32) appendObject:*(a1 + 56) withName:{@"target", v12, v13, v14, v15, v16}];
  v11 = [*(a1 + 32) appendObject:*(a1 + 64) withName:@"reason"];
}

void __175___UIEventDeferringManager__processEventDeferringActions_actionsCount_inScope_forDeferringToken_environments_target_addingRecreationReason_removingRecreationReason_forReason___block_invoke_4(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 description];
        v10 = [v8 appendObject:v7 withName:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void __119___UIEventDeferringManager__removeLocalCompatibilityEventDeferringForSystemShellKeyboardFocusInEnvironment_withReason___block_invoke(uint64_t *a1)
{
  v2 = _queue_compatibilityRecord(a1[4], a1[5]);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

BOOL __83___UIEventDeferringManager_removeEventDeferringRulesIfNeededForDeallocatingWindow___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    WeakRetained = 0;
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained((a2 + 32));
  if (!WeakRetained)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_4;
  }

  v4 = WeakRetained[6];
LABEL_4:
  v5 = v4 == *(a1 + 32);

  return v5;
}

void __83___UIEventDeferringManager_removeEventDeferringRulesIfNeededForDeallocatingWindow___block_invoke_522(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIEventDeferringManager *)WeakRetained endEventDeferringForToken:a2 withReason:a3];
}

void __103___UIEventDeferringManager__removeEventDeferringRecordsForAllEnvironmentsWithOwningElement_withReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIEventDeferringManager *)WeakRetained endEventDeferringForToken:a2 withReason:a3];
}

void __104___UIEventDeferringManager_beginLocalEventDeferringInEnvironments_forOwningInterfaceElement_withReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIEventDeferringManager *)WeakRetained endEventDeferringForToken:a2 withReason:a3];
}

void __114___UIEventDeferringManager_beginRemoteEventDeferringInEnvironments_forOwningInterfaceElement_toTarget_withReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(_UIEventDeferringManager *)WeakRetained endEventDeferringForToken:a2 withReason:a3];
}

void __116___UIEventDeferringManager_setNeedsRemoteEventDeferringRuleComparisonInEnvironments_forBehaviorDelegate_withReason___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  objc_initWeak(&location, *(a1 + 32));
  [(_UIEventDeferringManager *)*(a1 + 32) endEventDeferringForToken:a2 withReason:a3];
  objc_destroyWeak(&location);
}

uint64_t __75___UIEventDeferringManager_bufferKeyboardFocusEnvironmentEventsWithReason___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) invalidate];
  atomic_fetch_add((*(a1 + 40) + 72), 0xFFFFFFFFFFFFFFFFLL);
  return result;
}

@end