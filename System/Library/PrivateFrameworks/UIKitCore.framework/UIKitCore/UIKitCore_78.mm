void _UIRTreeContainerNode<_UICollectionViewRTreeElement>::~_UIRTreeContainerNode(uint64_t a1)
{
  _UIRTreeContainerNode<_UICollectionViewRTreeElement>::~_UIRTreeContainerNode(a1);

  JUMPOUT(0x18CFE8670);
}

void sub_18949467C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _emitDebugLogForTransition(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CF28))
  {
    v8 = [(_UIEventDeferringManager *)*a4 _transactionAssertion];
    if ([a3 length])
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@actionSpecificLog: %@", @"    ", a3];
    }

    else
    {
      v9 = &stru_1EFB14550;
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CF30);
    if (*CategoryCachedImpl)
    {
      v11 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = *a4;
        v13 = *(a4 + 16);
        v14 = _NSStringFromUIDeferringState[a1];
        v15 = _NSStringFromUIDeferringAction[a2];
        v16 = v11;
        v17 = _descriptionForTransactionContext(a4);
        *buf = 134351106;
        v19 = v12;
        v20 = 2114;
        v21 = v13;
        v22 = 2114;
        v23 = v14;
        v24 = 2114;
        v25 = v15;
        v26 = 2114;
        v27 = v9;
        v28 = 2112;
        v29 = @"    ";
        v30 = 2114;
        v31 = v8;
        v32 = 2112;
        v33 = @"    ";
        v34 = 2114;
        v35 = v17;
        _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@ --%{public}@-->%{public}@ \n%@transaction: %{public}@; \n%@transactionContext: %{public}@", buf, 0x5Cu);
      }
    }
  }
}

void stateMachineSpec_block_invoke_5_0(uint64_t *a1)
{
  v2 = _queue_compatibilityRecord(a1[4], a1[5]);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void stateMachineSpec_block_invoke_9(uint64_t *a1)
{
  v2 = _queue_compatibilityRecord(a1[4], a1[5]);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t stateMachineSpec_block_invoke_13(uint64_t a1, id **a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a2[2];
  v8 = _NSStringFromUIDeferringAction[a4];
  if ((a2[6] & 1) != 0 || *(a2 + 49) == 1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stateMachineSpec_block_invoke_13"];
    [v9 handleFailureInFunction:v10 file:@"_UIEventDeferringManager.m" lineNumber:1119 description:{@"[%p] [%@] %@: Invalid state. Unexpected value of ownerInitiatedInvalidation or ownerInitiatedWriting", *a2, v7, v8}];
  }

  v11 = [(_UIEventDeferringManager *)*a2 _displayHardwareIndentifierAccountingForNotFinalizedChange:?];
  if (v11)
  {
    [MEMORY[0x1E698E3C8] displayWithHardwareIdentifier:v11];
  }

  else
  {
    [MEMORY[0x1E698E3C8] builtinDisplay];
  }
  v12 = ;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__33;
  v36 = __Block_byref_object_dispose__33;
  v37 = 0;
  v13 = _eventDeferringCompatibilityQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = stateMachineSpec_block_invoke_14;
  block[3] = &unk_1E70FB728;
  v31 = &v32;
  v14 = v12;
  v29 = v14;
  v30 = v7;
  dispatch_sync(v13, block);

  if (v33[5])
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD60);
    if (*CategoryCachedImpl)
    {
      v22 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *a2;
        v24 = v33[5];
        *buf = 134349826;
        v39 = v23;
        v40 = 2114;
        v41 = v7;
        v42 = 2114;
        v43 = v8;
        v44 = 2114;
        v45 = v24;
        _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Removed local compatibility record: %{public}@", buf, 0x2Au);
      }
    }

    v16 = v33[5];
    if (v16)
    {
      v16 = v16[3];
    }

    v17 = v16;
    [v17 invalidate];

    v18 = _eventDeferringCompatibilityQueue();
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = stateMachineSpec_block_invoke_15;
    v25[3] = &unk_1E70F35B8;
    v26 = v14;
    v27 = v7;
    dispatch_sync(v18, v25);

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD68))
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedCompatibilityRecord: %d", v19];;
    _emitDebugLogForTransition(a3, a4, v21, a2);
  }

  _Block_object_dispose(&v32, 8);
  return 10;
}

void sub_189496388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void stateMachineSpec_block_invoke_14(uint64_t *a1)
{
  v2 = _queue_compatibilityRecord(a1[4], a1[5]);
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t stateMachineSpec_block_invoke_16(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2[2];
  v8 = _NSStringFromUIDeferringAction[a4];
  if ((a2[6] & 1) == 0)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"stateMachineSpec_block_invoke_16"];
    [v22 handleFailureInFunction:v23 file:@"_UIEventDeferringManager.m" lineNumber:1599 description:{@"[%p] [%@] %@: Invalid state. Unexpected value of ownerInitiatedRemoval: %d", *a2, v7, v8, *(a2 + 48)}];
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = a2[1];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __83___UIEventDeferringManager__remoteRecordInStackMatchingEnvironment_deferringToken___block_invoke;
    v29 = &unk_1E70FCC10;
    v30 = v10;
    v11 = [(_UIEventDeferringManager *)v9 _remoteRecordsInStackMatchingEnvironment:v7 passingTest:buf];
    v12 = v11;
    if (v11 && [v11 count] >= 2)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:sel__remoteRecordInStackMatchingEnvironment_deferringToken_ object:v9 file:@"_UIEventDeferringManager.m" lineNumber:2484 description:{@"[%p] %s: Invalid state. There should not be more than one remote record matching the deferring token: matchingRecords: %@", v9, "-[_UIEventDeferringManager _remoteRecordInStackMatchingEnvironment:deferringToken:]", v12}];
    }

    v9 = [v12 firstObject];

    v13 = *a2;
  }

  else
  {
    v13 = 0;
  }

  v14 = [(_UIEventDeferringManager *)v13 _topRemoteRecordInStackForEnvironment:v7];
  if (v9)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD70);
    if (*CategoryCachedImpl)
    {
      v25 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = *a2;
        *buf = 134350082;
        *&buf[4] = v26;
        *&buf[12] = 2114;
        *&buf[14] = v7;
        *&buf[22] = 2114;
        v29 = v8;
        LOWORD(v30) = 1026;
        *(&v30 + 2) = v9 == v14;
        HIWORD(v30) = 2114;
        v31 = v9;
        _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Removing remote record: wasTop: %{public}d; %{public}@", buf, 0x30u);
      }
    }

    WeakRetained = objc_loadWeakRetained(v9 + 4);
    v17 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained[1] removeObject:v7];
      if ((v17[3] & 1) == 0 && ![v17[1] count])
      {
        *(v17 + 24) = 1;
      }
    }

    v18 = v9 == v14;

    v19 = v9[3];
    [v19 invalidate];

    [(_UIEventDeferringManager *)*a2 _removeRemoteRecord:v9 forEnvironment:v7];
    v20 = 1;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CD78))
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"removedRemoteRecord: %d wasTop: %d;", v20, v18];;
    _emitDebugLogForTransition(a3, a4, v24, a2);
  }

  return 9;
}

uint64_t stateMachineSpec_block_invoke_21(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = *(a2 + 16);
  v8 = _NSStringFromUIDeferringAction[a4];
  v9 = [(_UIEventDeferringManager *)*a2 _descriptorForCompatibility:v7 environment:*(a2 + 8) deferringToken:?];
  v10 = [(_UIEventDeferringManager *)*a2 _predicateForDescriptor:v9];
  v11 = [(_UIEventDeferringManager *)*a2 _targetForDescriptor:v9];
  v12 = [MEMORY[0x1E698E3B0] sharedInstance];
  v13 = *(a2 + 8);
  if (v13)
  {
    v13 = v13[10];
  }

  v14 = v13;
  v51 = v11;
  v52 = v10;
  v15 = [v12 deferEventsMatchingPredicate:v10 toTarget:v11 withReason:v14];

  v50 = v15;
  v16 = [[_UIEventDeferringRecord alloc] _initWithDescriptor:v9 invalidationToken:v15 deferringToken:*(a2 + 8) recordingManagerPointer:*a2 recreationReasons:0];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDD0);
  if (*CategoryCachedImpl)
  {
    v37 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = *a2;
      *buf = 134349826;
      v60 = v38;
      v61 = 2114;
      v62 = v7;
      v63 = 2114;
      v64 = v8;
      v65 = 2114;
      v66 = v16;
      _os_log_impl(&dword_188A29000, v37, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Pushing remote record onto stack: %{public}@", buf, 0x2Au);
    }
  }

  [(_UIEventDeferringManager *)*a2 _pushRemoteRecordOnStack:v16 forEnvironment:v7];
  v18 = *a2;
  v58 = 0;
  v19 = [(_UIEventDeferringManager *)v18 _shouldDisableNewRecord:v16 outRecreationReasons:&v58];
  v53 = v58;
  if (v19)
  {
    v20 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDD8);
    if (*v20)
    {
      v43 = *(v20 + 8);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        v44 = *a2;
        *buf = 134349826;
        v60 = v44;
        v61 = 2114;
        v62 = v7;
        v63 = 2114;
        v64 = v8;
        v65 = 2114;
        v66 = v16;
        _os_log_impl(&dword_188A29000, v43, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Disabling new remote record: %{public}@", buf, 0x2Au);
      }
    }

    v49 = v7;
    v46 = v9;
    v47 = a3;
    if (v16)
    {
      v21 = v16[3];
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    [v22 invalidate];

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v23 = v53;
    v24 = [v23 countByEnumeratingWithState:&v54 objects:v69 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v55;
      do
      {
        v27 = 0;
        do
        {
          if (*v55 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v54 + 1) + 8 * v27);
          v29 = _UIEventDeferringShorterRecreationReasonStringForReason(v28);
          v30 = __UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDE0);
          if (*v30)
          {
            log = *(v30 + 8);
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v31 = *a2;
              *buf = 134349826;
              v60 = v31;
              v61 = 2114;
              v62 = v49;
              v63 = 2114;
              v64 = v8;
              v65 = 2114;
              v66 = v29;
              _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "[%{public}p] [%{public}@] %{public}@: Disabling new remote record for reason: %{public}@", buf, 0x2Au);
            }
          }

          [(_UIEventDeferringRecord *)v16 addRecreationReason:v28];

          ++v27;
        }

        while (v25 != v27);
        v32 = [v23 countByEnumeratingWithState:&v54 objects:v69 count:16];
        v25 = v32;
      }

      while (v32);
    }

    v7 = v49;
    v9 = v46;
    a3 = v47;
  }

  v33 = [v7 description];
  v34 = [v33 UTF8String];

  v35 = [(__CFString *)v8 UTF8String];
  if (os_variant_has_internal_diagnostics())
  {
    v39 = *(__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDE8) + 8);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v48 = a3;
      v40 = *a2;
      v41 = v39;
      v42 = [(_UIEventDeferringRecord *)v16 needsRecreation];
      *buf = 134350082;
      v60 = v40;
      a3 = v48;
      v61 = 2082;
      v62 = v34;
      v63 = 2082;
      v64 = v35;
      v65 = 2050;
      v66 = v16;
      v67 = 1026;
      v68 = v42;
      _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_DEFAULT, "[%{public}p] [%{public}s] %{public}s: Pushed remote record: %{public}p; disabled: %{public}d", buf, 0x30u);
    }
  }

  if (*__UILogGetCategoryCachedImpl("EventDeferring", &qword_1ED49CDF0))
  {
    _emitDebugLogForTransition(a3, a4, &stru_1EFB14550, a2);
  }

  return 8;
}

void sub_189497AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189498778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id location)
{
  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1894993F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189499A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18949D148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, id location)
{
  objc_destroyWeak((v47 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18949DD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18949E630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _descriptionForTransactionContext(uint64_t a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = [*(a1 + 8) succinctDescription];
  v7 = [v1 stringWithFormat:@"<_UIDeferringTransactionContext: reason: %@ currentEnvironment: %@; recreationReasonToAdd: %@; recreationReasonToRemove: %@; deferringToken: %@>", v2, v5, v4, v3, v6];;

  return v7;
}

id UICarPlayApplicationSceneSettingValueDescription(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1 == 45 || a1 == 34)
  {
    BSSettingFlagIsYes();
    v5 = NSStringFromBOOL();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__APPLYING_SNAPSHOTS_REENTRANTLY_OR_ON_MAIN_AND_BACKGROUND_THREADS(void *a1)
{
  v1 = MEMORY[0x1E696AAA8];
  v2 = a1;
  v4 = [v1 currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__APPLYING_SNAPSHOTS_REENTRANTLY_OR_ON_MAIN_AND_BACKGROUND_THREADS(UIView *__strong)"];
  [v4 handleFailureInFunction:v3 file:@"_UIDiffableDataSourceImpl.m" lineNumber:54 description:{@"Deadlock detected: attempted to apply a snapshot to diffable data source while it was already applying a snapshot. Make sure you are consistently applying snapshots either always on the main queue or always off the main queue, and make sure you are not applying a snapshot as a side effect of updates from (i.e. underneath) another snapshot apply call. View updated by this diffable data source: %@", v2}];
}

void sub_1894A40FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894A8304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894A91E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAFUIAutoFillPossibleRespondersKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAFUIAutoFillPossibleRespondersKeySymbolLoc_ptr;
  v9 = getAFUIAutoFillPossibleRespondersKeySymbolLoc_ptr;
  if (!getAFUIAutoFillPossibleRespondersKeySymbolLoc_ptr)
  {
    v1 = AutoFillUILibrary();
    v7[3] = dlsym(v1, "AFUIAutoFillPossibleRespondersKey");
    getAFUIAutoFillPossibleRespondersKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAFUIAutoFillPossibleRespondersKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIKeyboardStateManager.m" lineNumber:317 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1894AAA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getAFUIAutoFillASPOptInKey()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getAFUIAutoFillASPOptInKeySymbolLoc_ptr;
  v9 = getAFUIAutoFillASPOptInKeySymbolLoc_ptr;
  if (!getAFUIAutoFillASPOptInKeySymbolLoc_ptr)
  {
    v1 = AutoFillUILibrary();
    v7[3] = dlsym(v1, "AFUIAutoFillASPOptInKey");
    getAFUIAutoFillASPOptInKeySymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAFUIAutoFillASPOptInKey(void)"];
    [v4 handleFailureInFunction:v5 file:@"_UIKeyboardStateManager.m" lineNumber:318 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1894AADD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894AF850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 112), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __UISimulateCrash(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = off_1ED49D5E0;
  v9 = off_1ED49D5E0;
  if (!off_1ED49D5E0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getSimulateCrashSymbolLoc_block_invoke;
    v5[3] = &unk_1E70F2F20;
    v5[4] = &v6;
    __getSimulateCrashSymbolLoc_block_invoke(v5);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1, 1801640960, @"Nil document state as argument to [UIKeyboardInput setDocumentState:]");
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL __UISimulateCrash(pid_t, mach_exception_data_type_t, NSString *__strong)"}];
    [v3 handleFailureInFunction:v4 file:@"UIDebug_Internal.h" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1894B8AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894BF194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894C0234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894C394C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v27 + 64));
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak((v29 - 104));
  _Unwind_Resume(a1);
}

void sub_1894CA820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1894D32D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894D3E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894D8A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894D9850(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1894DA7F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1894DB340(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

double latinRatio(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = [v1 characterAtIndex:v2];
      if ((v4 - 192) < 0x190 || (v4 & 0xFFFFFFDF) - 65 < 0x1A)
      {
        ++v3;
      }

      ++v2;
    }

    while ([v1 length] > v2);
    v6 = v3;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = v6 / [v1 length];

  return v7;
}

void sub_1894E1184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894E7294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1894E8048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894E837C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894F1E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1894F3214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1894F4008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __TextInputUILibraryCore_block_invoke_3()
{
  result = _sl_dlopen();
  TextInputUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

uint64_t AutoFillUILibraryCore()
{
  if (!AutoFillUILibraryCore_frameworkLibrary)
  {
    AutoFillUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return AutoFillUILibraryCore_frameworkLibrary;
}

uint64_t __AutoFillUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AutoFillUILibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAFUIAutoFillPossibleRespondersKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillUILibrary();
  result = dlsym(v2, "AFUIAutoFillPossibleRespondersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFUIAutoFillPossibleRespondersKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *AutoFillUILibrary()
{
  v0 = AutoFillUILibraryCore();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AutoFillUILibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"_UIKeyboardStateManager.m" lineNumber:316 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

void *__getAFUIAutoFillASPOptInKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillUILibrary();
  result = dlsym(v2, "AFUIAutoFillASPOptInKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFUIAutoFillASPOptInKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFUIAutoFillUUIDKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillUILibrary();
  result = dlsym(v2, "AFUIAutoFillUUIDKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFUIAutoFillUUIDKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getBEAutoFillTextSuggestionClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49D5D8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __BrowserEngineKitLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E70FE1E0;
    v8 = 0;
    qword_1ED49D5D8 = _sl_dlopen();
  }

  if (!qword_1ED49D5D8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BrowserEngineKitLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIKeyboardStateManager.m" lineNumber:307 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("BEAutoFillTextSuggestion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBEAutoFillTextSuggestionClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIKeyboardStateManager.m" lineNumber:310 description:{@"Unable to find class %s", "BEAutoFillTextSuggestion"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49D5D0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __BrowserEngineKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49D5D8 = result;
  return result;
}

void __TIGetCapsLockDelayOverrideInSecondsValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"CapsLockDelayOverrideInSeconds" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE30058];
}

void *__getSimulateCrashSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED49D5E8)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CrashReporterSupportLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E70FE1F8;
    v7 = 0;
    qword_1ED49D5E8 = _sl_dlopen();
  }

  v2 = qword_1ED49D5E8;
  if (!qword_1ED49D5E8)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CrashReporterSupportLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"UIDebug_Internal.h" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "SimulateCrash");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED49D5E0 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __CrashReporterSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49D5E8 = result;
  return result;
}

void *__getAFUIAutoFillContextKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillUILibrary();
  result = dlsym(v2, "AFUIAutoFillContextKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFUIAutoFillContextKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getTUITypedStringCandidateClass_block_invoke(uint64_t a1)
{
  TextInputUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TUITypedStringCandidate");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTUITypedStringCandidateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTUITypedStringCandidateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIKeyboardInputManagerClient.h" lineNumber:26 description:{@"Unable to find class %s", "TUITypedStringCandidate"}];

    __break(1u);
  }
}

void __TIGetUpdateLastUsedInputModeDelayValue_block_invoke()
{
  v0 = [MEMORY[0x1E69D9680] sharedPreferencesController];
  [v0 _configureKey:@"UpdateLastUsedInputModeDelay" domain:@"com.apple.keyboard" defaultValue:&unk_1EFE2E278];
}

Class __getWebEventClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49D5F8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __WebKitLegacyLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E70FE210;
    v8 = 0;
    qword_1ED49D5F8 = _sl_dlopen();
  }

  if (!qword_1ED49D5F8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebKitLegacyLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIKeyboardStateManager.m" lineNumber:313 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("WebEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWebEventClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIKeyboardStateManager.m" lineNumber:314 description:{@"Unable to find class %s", "WebEvent"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49D5F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __WebKitLegacyLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49D5F8 = result;
  return result;
}

void *__getSBSTagTouchForTypingMenuSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED49D608)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __SpringBoardServicesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E70FE228;
    v7 = 0;
    qword_1ED49D608 = _sl_dlopen();
  }

  v2 = qword_1ED49D608;
  if (!qword_1ED49D608)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"_UIKeyboardStateManager.m" lineNumber:244 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "SBSTagTouchForTypingMenu");
  *(*(a1[4] + 8) + 24) = result;
  off_1ED49D600 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED49D608 = result;
  return result;
}

void sub_1894FA40C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id _accessoryConfigurationAsClass(void *a1, objc_class *a2)
{
  v3 = a1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"__kindof _UICellAccessoryConfiguration * _Nonnull _accessoryConfigurationAsClass(_UICellAccessoryConfiguration * _Nonnull __strong, Class  _Nonnull __unsafe_unretained)"}];
    v7 = NSStringFromClass(a2);
    [v5 handleFailureInFunction:v6 file:@"UICollectionViewListCell.m" lineNumber:1366 description:{@"Accessory configuration is not of expected class (%@): %@", v7, v3}];
  }

  return v3;
}

void sub_1894FEC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _ListCellSeparatorLayoutGuideHeightForCell(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGFloat _ListCellSeparatorLayoutGuideHeightForCell(UICollectionViewListCell * _Nonnull __strong)"];
    [v8 handleFailureInFunction:v9 file:@"UICollectionViewListCell.m" lineNumber:2366 description:{@"Invalid parameter not satisfying: %@", @"cell != nil"}];
  }

  v2 = [v1 traitCollection];
  v3 = [v2 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v3);

  v5 = 1.0;
  if (!IsAccessibilityCategory)
  {
    [v1 _currentScreenScale];
    v5 = 1.0 / v6;
  }

  return v5;
}

id _ListCellCreateSeparatorLayoutGuideLeadingConstraint(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSLayoutConstraint * _Nonnull _ListCellCreateSeparatorLayoutGuideLeadingConstraint(NSLayoutAnchor * _Nonnull __strong, NSLayoutAnchor * _Nonnull __strong, NSString * _Nonnull __strong)"}];
    [v13 handleFailureInFunction:v14 file:@"UICollectionViewListCell.m" lineNumber:2354 description:{@"Invalid parameter not satisfying: %@", @"toAnchor != nil"}];

    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v11 = [MEMORY[0x1E696AAA8] currentHandler];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSLayoutConstraint * _Nonnull _ListCellCreateSeparatorLayoutGuideLeadingConstraint(NSLayoutAnchor * _Nonnull __strong, NSLayoutAnchor * _Nonnull __strong, NSString * _Nonnull __strong)"}];
  [v11 handleFailureInFunction:v12 file:@"UICollectionViewListCell.m" lineNumber:2353 description:{@"Invalid parameter not satisfying: %@", @"fromAnchor != nil"}];

  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v7)
  {
    goto LABEL_4;
  }

LABEL_9:
  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSLayoutConstraint * _Nonnull _ListCellCreateSeparatorLayoutGuideLeadingConstraint(NSLayoutAnchor * _Nonnull __strong, NSLayoutAnchor * _Nonnull __strong, NSString * _Nonnull __strong)"}];
  [v15 handleFailureInFunction:v16 file:@"UICollectionViewListCell.m" lineNumber:2355 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];

LABEL_4:
  v8 = [v5 constraintEqualToAnchor:v6];
  [v8 setShouldBeArchived:1];
  LODWORD(v9) = 1132068864;
  [v8 setPriority:v9];
  [v8 setIdentifier:v7];

  return v8;
}

void _ListCellReplaceSystemConstraintInLayoutGuide(void *a1, void *a2, void *a3)
{
  v21 = a1;
  v5 = a2;
  v6 = a3;
  v7 = v21;
  if (v21)
  {
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _ListCellReplaceSystemConstraintInLayoutGuide(UILayoutGuide * _Nonnull __strong, NSLayoutConstraint * _Nonnull __strong, NSLayoutConstraint * _Nonnull __strong)"}];
    [v15 handleFailureInFunction:v16 file:@"UICollectionViewListCell.m" lineNumber:2422 description:{@"Invalid parameter not satisfying: %@", @"constraintToRemove != nil"}];

    v7 = v21;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v13 = [MEMORY[0x1E696AAA8] currentHandler];
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _ListCellReplaceSystemConstraintInLayoutGuide(UILayoutGuide * _Nonnull __strong, NSLayoutConstraint * _Nonnull __strong, NSLayoutConstraint * _Nonnull __strong)"}];
  [v13 handleFailureInFunction:v14 file:@"UICollectionViewListCell.m" lineNumber:2421 description:{@"Invalid parameter not satisfying: %@", @"layoutGuide != nil"}];

  v7 = 0;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6)
  {
    goto LABEL_4;
  }

LABEL_11:
  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _ListCellReplaceSystemConstraintInLayoutGuide(UILayoutGuide * _Nonnull __strong, NSLayoutConstraint * _Nonnull __strong, NSLayoutConstraint * _Nonnull __strong)"}];
  [v17 handleFailureInFunction:v18 file:@"UICollectionViewListCell.m" lineNumber:2423 description:{@"Invalid parameter not satisfying: %@", @"constraintToAdd != nil"}];

  v7 = v21;
LABEL_4:
  v8 = [v7 _systemConstraints];
  v9 = [v8 indexOfObject:v5];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _ListCellReplaceSystemConstraintInLayoutGuide(UILayoutGuide * _Nonnull __strong, NSLayoutConstraint * _Nonnull __strong, NSLayoutConstraint * _Nonnull __strong)"}];
    [v19 handleFailureInFunction:v20 file:@"UICollectionViewListCell.m" lineNumber:2426 description:{@"Constraint to be removed %@ does not exist in the %@'s system constraints", v5, v21}];
  }

  v10 = [v21 _systemConstraints];
  v11 = [v10 mutableCopy];

  [v11 replaceObjectAtIndex:v9 withObject:v6];
  v12 = [v11 copy];
  [v21 _setSystemConstraints:v12];
}

id _UIMenuReplacingElementMatchingPredicate(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = [MEMORY[0x1E695DF70] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v28 = 0;
    v12 = *v30;
    v25 = (v7 + 2);
    v26 = (v6 + 2);
    do
    {
      v13 = 0;
      v27 = v11;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        if (v6[2](v6, v14))
        {
          v15 = v7[2](v7, v14);
          [v8 addObjectsFromArray:v15];

          v28 = 1;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v12;
            v17 = v8;
            v18 = v9;
            v19 = v14;
            v20 = [v19 children];
            v21 = _UIMenuReplacingElementMatchingPredicate(v20, v6, v7);

            if (v21)
            {
              v22 = [v19 menuByReplacingChildren:v21];

              v28 = 1;
              v19 = v22;
            }

            v8 = v17;
            [v17 addObject:{v19, v25, v26}];

            v9 = v18;
            v12 = v16;
            v11 = v27;
          }

          else
          {
            [v8 addObject:v14];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);

    if (v28)
    {
      v23 = v8;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v23 = 0;
LABEL_19:

  return v23;
}

void sub_189507570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

id _UIContextMenuSeparator(uint64_t a1, double a2)
{
  if (a1 == 1)
  {
    v3 = [off_1E70ECB18 fractionalWidthDimension:1.0];
    v4 = [off_1E70ECB18 absoluteDimension:a2];
    v5 = [off_1E70ECB40 sizeWithWidthDimension:v3 heightDimension:v4];

    [off_1E70ECB00 layoutAnchorWithEdges:1 absoluteOffset:{0.0, -a2}];
  }

  else
  {
    v6 = [off_1E70ECB18 absoluteDimension:a2];
    v7 = [off_1E70ECB18 fractionalHeightDimension:1.0];
    v5 = [off_1E70ECB40 sizeWithWidthDimension:v6 heightDimension:v7];

    [off_1E70ECB00 layoutAnchorWithEdges:2 fractionalOffset:{0.0, 0.0}];
  }
  v8 = ;
  v9 = [off_1E70ECB10 decorationItemWithSize:v5 elementKind:@"kContextMenuItemSeparator" containerAnchor:v8];
  [v9 _setRegistrationViewClass:objc_opt_class()];

  return v9;
}

__CFString *_NSStringFromUIPhysicalButtonActionSetting(unint64_t a1)
{
  if (a1 > 4)
  {
    v2 = &stru_1EFB14550;
  }

  else
  {
    v2 = *off_1E70FE9C0[a1];
  }

  return v2;
}

id _UIPhysicalButtonBSActionSettings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_new();
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  [v10 setObject:v11 forSetting:0];

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v10 setObject:v12 forSetting:4];

  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v10 setObject:v13 forSetting:1];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v10 setObject:v14 forSetting:3];

  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:a5];
  [v10 setObject:v15 forSetting:2];

  v16 = [v10 copy];

  return v16;
}

uint64_t _UIBackgroundConfigurationIsObscuring(void *a1)
{
  v1 = a1;
  v2 = [v1 backgroundColor];
  v3 = [v1 backgroundColorTransformer];
  v4 = +[UIColor clearColor];
  v5 = [v4 isEqual:v2];

  if (!v5 && !v2)
  {
    if (!v3)
    {
      v2 = 0;
LABEL_12:
      v10 = 1;
      goto LABEL_13;
    }

    v2 = +[UIColor redColor];
    goto LABEL_4;
  }

  if (v3)
  {
LABEL_4:
    v6 = (v3)[2](v3, v2);

    v2 = v6;
  }

  [v2 alphaComponent];
  if (v7 >= 0.01)
  {
    goto LABEL_12;
  }

  v8 = [v1 visualEffect];

  if (v8)
  {
    goto LABEL_12;
  }

  v9 = [v1 image];

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = [v1 _hasMaterial];
LABEL_13:

  return v10;
}

id _UISignalAnalyticsLog()
{
  if (qword_1ED49D628 != -1)
  {
    dispatch_once(&qword_1ED49D628, &__block_literal_global_115);
  }

  v1 = _MergedGlobals_1038;

  return v1;
}

id getIASignalAnalyticsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getIASignalAnalyticsClass_softClass;
  v6 = getIASignalAnalyticsClass_softClass;
  if (!getIASignalAnalyticsClass_softClass)
  {
    InputAnalyticsLibraryCore();
    v4[3] = objc_getClass("IASignalAnalytics");
    getIASignalAnalyticsClass_softClass = v4[3];
    v0 = v4[3];
  }

  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_1895185F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189518B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189518DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189518F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1895190C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getIASignalAnalyticsClass_block_invoke(uint64_t a1)
{
  InputAnalyticsLibraryCore();
  result = objc_getClass("IASignalAnalytics");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalAnalyticsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __InputAnalyticsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  InputAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getIAChannelWritingToolsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAChannelWritingTools");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAChannelWritingToolsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIASignalWritingToolsPanelRequestedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IASignalWritingToolsPanelRequested");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIASignalWritingToolsPanelRequestedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadKeyWritingToolsUISymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadKeyWritingToolsUI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadKeyWritingToolsUISymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getIAPayloadValueWritingToolsUICandidateBarSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = InputAnalyticsLibrary();
  result = dlsym(v2, "IAPayloadValueWritingToolsUICandidateBar");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIAPayloadValueWritingToolsUICandidateBarSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id _preferredAttributesFittingAttributesWithInnerView(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if ([v9 preferredAttributesCached])
  {
    v10 = v6;
  }

  else
  {
    if (!v7)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UICollectionViewLayoutAttributes *_preferredAttributesFittingAttributesWithInnerView(UICollectionReusableView *__strong, UICollectionViewLayoutAttributes *__strong, UIView *__strong)"}];
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      [v34 handleFailureInFunction:v35 file:@"UICollectionViewTableSelfSizingUtilities.m" lineNumber:38 description:{@"Cannot size a %@ without a content view!", v37}];
    }

    v11 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), v12 = v11, (objc_opt_isKindOfClass()))
    {
      v12 = [v5 contentView];
    }

    v50 = 0;
    v51 = &v50;
    v52 = 0x4010000000;
    v53 = "";
    v13 = *(MEMORY[0x1E695F058] + 16);
    v54 = *MEMORY[0x1E695F058];
    v55 = v13;
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v14 = v11;
      [v6 size];
      [v14 _updatedContentViewFrameForTargetWidth:?];
      p_x = &v51->origin.x;
      v51[1].origin.x = v16;
      p_x[5] = v17;
      p_x[6] = v18;
      p_x[7] = v19;
    }

    else
    {
      [v12 frame];
      v20 = &v51->origin.x;
      v51[1].origin.x = v21;
      v20[5] = v22;
      v20[6] = v23;
      v20[7] = v24;
    }

    Width = CGRectGetWidth(v51[1]);
    if (Width == 0.0)
    {
      [v6 size];
      Width = v26;
    }

    [v6 size];
    v28 = v27;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3010000000;
    v47 = "";
    v48 = v29;
    v49 = v27;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = ___preferredAttributesFittingAttributesWithInnerView_block_invoke;
    v38[3] = &unk_1E70FEBB0;
    v39 = v5;
    v30 = v12;
    v40 = v30;
    v41 = &v50;
    v42 = &v44;
    v43 = Width;
    [v30 _withUnsatisfiableConstraintsLoggingSuspendedIfEngineDelegateExists:v38];
    if (v28 == v45[5])
    {
      v10 = v6;
    }

    else
    {
      v10 = [v6 copy];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v31 = v11;
        [v31 _separatorHeight];
        v45[5] = v32 + v45[5];
      }

      [v10 setSize:{v45[4], v45[5]}];
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v50, 8);
  }

  return v10;
}

void sub_18951ADAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t ___preferredAttributesFittingAttributesWithInnerView_block_invoke(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 40) setFrame:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
  v18 = 0;
  v2 = [*(a1 + 40) _wantsAutolayout];
  v5 = *(a1 + 64);
  if (v2)
  {
    LODWORD(v3) = 1148846080;
    LODWORD(v4) = 1112014848;
    [*(a1 + 40) _systemLayoutSizeFittingSize:&v18 withHorizontalFittingPriority:v5 verticalFittingPriority:0.0 hasIntentionallyCollapsedHeight:{v3, v4}];
    v6 = *(*(a1 + 56) + 8);
    *(v6 + 32) = v7;
    *(v6 + 40) = v8;
    if ((v18 & 1) == 0 && *(*(*(a1 + 56) + 8) + 40) == 0.0)
    {
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = ___preferredAttributesFittingAttributesWithInnerView_block_invoke_2;
      v16 = &unk_1E70F3590;
      v17 = *(a1 + 40);
      if (_UIInternalPreference_AllowCarPlayScenesToCallMakeKeyWindow_block_invoke_once != -1)
      {
        dispatch_once(&_UIInternalPreference_AllowCarPlayScenesToCallMakeKeyWindow_block_invoke_once, &v13);
      }

      [*(a1 + 32) bounds];
      Height = CGRectGetHeight(v19);
      v10 = *(*(a1 + 56) + 8);
      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(v3) = 1148846080;
    LODWORD(v4) = 1112014848;
    [*(a1 + 32) systemLayoutSizeFittingSize:v5 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v3, v4}];
    if (Height > 0.0)
    {
      v10 = *(*(a1 + 56) + 8);
      *(v10 + 32) = v11;
LABEL_9:
      *(v10 + 40) = Height;
    }
  }

  *(*(*(a1 + 48) + 8) + 56) = *(*(*(a1 + 56) + 8) + 40);
  *(*(*(a1 + 48) + 8) + 48) = *(*(*(a1 + 56) + 8) + 32);
  return [*(a1 + 40) setFrame:{*(*(*(a1 + 48) + 8) + 32), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 48) + 8) + 48), *(*(*(a1 + 48) + 8) + 56)}];
}

void ___preferredAttributesFittingAttributesWithInnerView_block_invoke_2()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_AllowCarPlayScenesToCallMakeKeyWindow_block_invoke_2___s_category) + 8);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = v0;
    v3 = 138412290;
    v4 = objc_opt_class();
    v2 = v4;
    _os_log_impl(&dword_188A29000, v1, OS_LOG_TYPE_ERROR, "Warning once only: Detected a case where constraints ambiguously suggest a height of zero                          for a %@'s content view. We're considering the collapse unintentional and using                          standard height instead.", &v3, 0xCu);
  }
}

id mutableDictionaryByTransformingLeafDictionariesToWeakValued(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  }

  else
  {
    v2 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v3 objectForKey:{v8, v12}];
        v10 = CFDictionaryCreateWithNonRetainedValuesFromNSDictionary(v9);

        [v2 setObject:v10 forKey:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

UITargetedPreview *_UITargetedPreviewForContextMenuFromCell(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(UIPreviewParameters);
  v3 = [v1 _systemBackgroundView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 currentBackgroundColor];
    v6 = [v4 currentVisiblePathInContainerView:v1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = [v1 backgroundColor];
    v6 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  v7 = [v1 traitCollection];
  v8 = [v5 resolvedColorWithTraitCollection:v7];
  [v8 alphaComponent];
  v10 = v9;

  if (v10 == 1.0 && ([v1 _hasBackgroundMaterial] & 1) == 0)
  {
    [(UIPreviewParameters *)v2 setBackgroundColor:v5];
  }

LABEL_8:
  [(UIPreviewParameters *)v2 setVisiblePath:v6];

  v11 = [[UITargetedPreview alloc] initWithView:v1 parameters:v2];

  return v11;
}

void _UICollectionTableSetImageForMultiselectAccessoryImageViewWithAnimation(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (a3)
  {
    v7 = [MEMORY[0x1E6982288] transition];
    [v5 setSymbolImage:v6 withContentTransition:v7];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___UICollectionTableSetImageForMultiselectAccessoryImageViewWithAnimation_block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    v10 = v6;
    [UIView transitionWithView:v9 duration:5242880 options:v8 animations:0 completion:0.15];
  }
}

void sub_18951DD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18951F278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18951F6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1895240AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18952A910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_18952B9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18952C05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18953A544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18953AAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18953E284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UICollectionViewShouldRescueClientWithReloadDataFallbackForInvalidBatchUpdates(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (qword_1ED492628 != -1)
  {
    dispatch_once(&qword_1ED492628, &__block_literal_global_2276);
  }

  if (_MergedGlobals_580 == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v5 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        v6 = 138412290;
        v7 = v1;
        _os_log_fault_impl(&dword_188A29000, v5, OS_LOG_TYPE_FAULT, "%@", &v6, 0xCu);
      }
    }

    else
    {
      v2 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED492630) + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v6 = 138412290;
        v7 = v1;
        _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "%@", &v6, 0xCu);
      }
    }
  }

  v3 = _MergedGlobals_580;

  return v3;
}

id _indexPathForSelectionInteraction(void *a1)
{
  v1 = a1;
  v2 = [v1 _focusSystem];
  v3 = [v2 focusedItem];
  if (_IsKindOfUIView(v3))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [v1 _indexPathForCell:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_189555300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _UITabItemsHasAnyCustomizablePlacement(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 _hasCustomizablePlacement])
        {
          HasAnyCustomizablePlacement = 1;
          goto LABEL_14;
        }

        if ([v6 _isGroup])
        {
          v8 = [v6 children];
          HasAnyCustomizablePlacement = _UITabItemsHasAnyCustomizablePlacement();

          goto LABEL_14;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      HasAnyCustomizablePlacement = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    HasAnyCustomizablePlacement = 0;
  }

LABEL_14:

  return HasAnyCustomizablePlacement;
}

uint64_t _UITabOverridesDefaultPlacement(void *a1)
{
  v1 = _MergedGlobals_1039;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&_MergedGlobals_1039, &__block_literal_global_327_1);
  }

  v3 = [qword_1ED49D638 containsObject:v2];

  return v3;
}

void sub_18955EB40(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1895661CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,UICollectionViewLayoutAttributes * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void sub_1895681D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  _Block_object_dispose(&a45, 8);

  _Unwind_Resume(a1);
}

id _UITreeFindFirstAncestorMatchingCondition(void *a1, const char *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v13 = 0;
  v7 = v5;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    while ((v6[2](v6, v9, &v13) & 1) == 0)
    {
      if (v13)
      {
        v11 = 0;
        goto LABEL_10;
      }

      v10 = [v9 a2];

      v9 = v10;
      if (!v10)
      {
        break;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v9 = v9;
  v11 = v9;
LABEL_10:

  return v11;
}

void _UIEnumerateOptions(unint64_t a1, void *a2)
{
  v3 = a2;
  v6 = 0;
  if (a1)
  {
    v4 = 0;
    do
    {
      if (a1)
      {
        v3[2](v3, 1 << v4, &v6);
        if (v6)
        {
          break;
        }
      }

      ++v4;
      v5 = a1 > 1;
      a1 >>= 1;
    }

    while (v5);
  }
}

void sub_18956A12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void UICollectionViewFlowLayoutAlertForInvalidItemSize(void *a1, CGFloat a2, CGFloat a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (os_variant_has_internal_diagnostics())
  {
    v7 = __UIFaultDebugAssertLog();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_5;
    }

    v15.width = a2;
    v15.height = a3;
    v8 = NSStringFromCGSize(v15);
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "Negative or zero item sizes are not supported by flow layout. Make a symbolic breakpoint at UICollectionViewFlowLayoutAlertForInvalidItemSize to catch this in the debugger. Invalid size: %@; collection view: %@", &v9, 0x16u);
LABEL_4:

LABEL_5:
    goto LABEL_6;
  }

  v6 = *(__UILogGetCategoryCachedImpl("Assert", &UICollectionViewFlowLayoutAlertForInvalidItemSize___s_category) + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = v6;
    v14.width = a2;
    v14.height = a3;
    v8 = NSStringFromCGSize(v14);
    v9 = 138412546;
    v10 = v8;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Negative or zero item sizes are not supported by flow layout. Make a symbolic breakpoint at UICollectionViewFlowLayoutAlertForInvalidItemSize to catch this in the debugger. Invalid size: %@; collection view: %@", &v9, 0x16u);
    goto LABEL_4;
  }

LABEL_6:
}

void sub_18956EC74(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 304), 8);
  _Block_object_dispose((v1 - 272), 8);
  _Unwind_Resume(a1);
}

void sub_18956F118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_UIStringFromCollectionElementCategory(uint64_t a1)
{
  v1 = @"cell";
  if (a1 == 1)
  {
    v1 = @"supplementaryView";
  }

  if (a1 == 2)
  {
    return @"decorationView";
  }

  else
  {
    return v1;
  }
}

void sub_189577180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_189577CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18957DFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_18957EB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18957ECF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t _UIGetFocusTreeLockVerboseLogging()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_FocusTreeLockVerboseLogging, _UIInternalPreferencesRevisionVar == _UIInternalPreference_FocusTreeLockVerboseLogging))
  {
    v1 = 1;
  }

  else
  {
    do
    {
      v1 = v0 >= v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_FocusTreeLockVerboseLogging, @"FocusTreeLockVerboseLogging", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_FocusTreeLockVerboseLogging;
    }

    while (v0 != _UIInternalPreference_FocusTreeLockVerboseLogging);
  }

  return byte_1ED48AAFC || v1;
}

void UICollectionViewFlowLayoutBreakForInvalidSizes(uint64_t a1)
{
  if (!a1)
  {
    NSLog(&stru_1EFB25110.isa, v1, v2);
  }
}

void sub_1895817B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *__UICVIndexPathDescription(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E696AEC0];
    v2 = MEMORY[0x1E696AD98];
    v3 = a1;
    v4 = [v2 numberWithInteger:{objc_msgSend(v3, "section")}];
    v5 = MEMORY[0x1E696AD98];
    v6 = [v3 item];

    v7 = [v5 numberWithInteger:v6];
    v8 = [v1 stringWithFormat:@"(%@, %@)", v4, v7];
  }

  else
  {
    v8 = @"(nil)";
  }

  return v8;
}

id __UICVIndexPathsDescription(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if ([v1 count])
  {
    v3 = 0;
    do
    {
      if (v3)
      {
        [v2 appendString:{@", "}];
      }

      v4 = [v1 objectAtIndexedSubscript:v3];
      v5 = __UICVIndexPathDescription(v4);
      [v2 appendString:v5];

      ++v3;
    }

    while (v3 < [v1 count]);
  }

  if (![v2 length])
  {
    [v2 appendString:@"()"];
  }

  return v2;
}

void sub_189593080(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void eventProfileCollectionCallback()
{
  v0 = _MergedGlobals_1044;
  eventProfileCollectionCheckEnabled();
  _MergedGlobals_1044 = v1;
  if (v0 == 1 && (v1 & 1) == 0)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v2 = off_1ED49D6C0;
    v9 = off_1ED49D6C0;
    if (!off_1ED49D6C0)
    {
      v3 = EventTimingProfileServiceInterfaceLibrary();
      v7[3] = dlsym(v3, "ETPCollectionDone");
      off_1ED49D6C0 = v7[3];
      v2 = v7[3];
    }

    _Block_object_dispose(&v6, 8);
    if (v2)
    {
      v2();
    }

    else
    {
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ETPCollectionDone(void)"];
      [v4 handleFailureInFunction:v5 file:@"_UIEventProfileCollection.m" lineNumber:32 description:{@"%s", dlerror()}];

      __break(1u);
    }
  }
}

void sub_18959556C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _ETPCollectionSubmitEvent(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getETPCollectionSubmitEventSymbolLoc_ptr;
  v9 = getETPCollectionSubmitEventSymbolLoc_ptr;
  if (!getETPCollectionSubmitEventSymbolLoc_ptr)
  {
    v3 = EventTimingProfileServiceInterfaceLibrary();
    v7[3] = dlsym(v3, "ETPCollectionSubmitEvent");
    getETPCollectionSubmitEventSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _ETPCollectionSubmitEvent(IOHIDEventRef)"];
    [v4 handleFailureInFunction:v5 file:@"_UIEventProfileCollection.m" lineNumber:29 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1895956D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getETPCollectionDoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EventTimingProfileServiceInterfaceLibrary();
  result = dlsym(v2, "ETPCollectionDone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED49D6C0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *EventTimingProfileServiceInterfaceLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!EventTimingProfileServiceInterfaceLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __EventTimingProfileServiceInterfaceLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7100500;
    v6 = 0;
    EventTimingProfileServiceInterfaceLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = EventTimingProfileServiceInterfaceLibraryCore_frameworkLibrary;
  if (!EventTimingProfileServiceInterfaceLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EventTimingProfileServiceInterfaceLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UIEventProfileCollection.m" lineNumber:23 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __EventTimingProfileServiceInterfaceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  EventTimingProfileServiceInterfaceLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getETPCollectionEnabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EventTimingProfileServiceInterfaceLibrary();
  result = dlsym(v2, "ETPCollectionEnabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getETPCollectionEnabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __logNextEventInfoStats_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  IOHIDEventGetIntegerValue();
  IOHIDEventGetIntegerValue();
  if (IOHIDEventGetIntegerValue() == 65308 && IOHIDEventGetIntegerValue() == 32)
  {
    TimeStamp = IOHIDEventGetTimeStamp();
    EventFlags = IOHIDEventGetEventFlags();
    DataValue = IOHIDEventGetDataValue();
    v5 = *(a1 + 40);
    v6 = *(DataValue + 1) - *(DataValue + 2);
    v7 = *(__UILogGetCategoryCachedImpl("EventFetcher", &qword_1ED49D6D0) + 8);
    if (os_signpost_enabled(v7))
    {
      v8 = v5 - TimeStamp;
      v9 = EventFlags & 0x20;
      v10 = *algn_1ED49D6C8 < v8 && v9 == 0;
      v11 = v7;
      v12 = _UIMediaDurationForMachDuration(v8);
      v13 = _UIMediaDurationForMachDuration(*algn_1ED49D6C8);
      v14 = DataValue[1];
      v15 = *DataValue;
      v16[0] = 67110912;
      v16[1] = v10;
      v17 = 2048;
      v18 = v12;
      v19 = 2048;
      v20 = v13;
      v21 = 1024;
      v22 = v9 >> 5;
      v23 = 1024;
      v24 = byte_1ED49D6B9;
      v25 = 1024;
      v26 = v14;
      v27 = 1024;
      v28 = v15;
      v29 = 2048;
      v30 = _UIMediaDurationForMachDuration(v6);
      _os_signpost_emit_with_name_impl(&dword_188A29000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NextEventInfo", "late=%u, receivedIn=%.06fs, expectedIn=%.06f, interpolated=%u, expected=%u, informational=%u, nextExpected=%u, nextReceivedIn=%.06f", v16, 0x3Eu);
    }

    byte_1ED49D6B9 = *DataValue;
    *algn_1ED49D6C8 = v6;
  }
}

void *__getETPCollectionSubmitEventSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = EventTimingProfileServiceInterfaceLibrary();
  result = dlsym(v2, "ETPCollectionSubmitEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getETPCollectionSubmitEventSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_189597B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18959F6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18959F890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _UITextFormattingViewControllerConfigurationClasses()
{
  if (qword_1ED49D6E0 != -1)
  {
    dispatch_once(&qword_1ED49D6E0, &__block_literal_global_124);
  }

  v1 = _MergedGlobals_1045;

  return v1;
}

id GetExampleSentencesForLanguage(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695DF58];
  v2 = a1;
  v3 = [&unk_1EFE34108 allKeys];
  v9[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v1 matchedLanguagesFromAvailableLanguages:v3 forPreferredLanguages:v4];

  v6 = [v5 firstObject];

  v7 = [&unk_1EFE34108 objectForKeyedSubscript:v6];

  return v7;
}

id GetAlternativeExampleSentencesForLanguage(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E695DF58];
  v2 = a1;
  v3 = [&unk_1EFE34130 allKeys];
  v9[0] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v1 matchedLanguagesFromAvailableLanguages:v3 forPreferredLanguages:v4];

  v6 = [v5 firstObject];

  v7 = [&unk_1EFE34130 objectForKeyedSubscript:v6];

  return v7;
}

id _UIResponderModallyPresentedViewControllerContainingResponder(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
    while (1)
    {
      if ([v3 __isKindOfUIViewController])
      {
        v5 = v3;
        v3 = v5;
        goto LABEL_10;
      }

      if (_IsKindOfUIView(v3))
      {
        break;
      }

      v4 = [v3 nextResponder];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    v5 = [v3 _viewControllerForAncestor];
LABEL_10:
    v4 = v5;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

LABEL_11:
  v6 = [v4 presentingViewController];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 presentedViewController];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id _simpleObjectDescription(void *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = a1;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v1 stringWithFormat:@"%@ (%p)", v4, v2];

  return v5;
}

id _selectorDescription(const char *a1)
{
  v1 = MEMORY[0x1E696AEC0];
  v2 = NSStringFromSelector(a1);
  v3 = [v1 stringWithFormat:@"“%@”", v2];

  return v3;
}

uint64_t _UIResponderCanPerformAction(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 canPerformAction:a2 withSender:v5];
  }

  else
  {
    v7 = objc_opt_respondsToSelector();
  }

  v8 = v7;

  return v8 & 1;
}

id _UIResponderTargetForAction(void *a1, const char *a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  if (objc_opt_respondsToSelector())
  {
    [v6 targetForAction:a2 withSender:v5];
  }

  else
  {
    _UIResponderTargetForActionWithTestBlock(v6, a2, v5, &__block_literal_global_34);
  }
  v7 = ;

  return v7;
}

void sub_1895A2DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _mapAsArray(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a1];
  if (a1)
  {
    v5 = 0;
    do
    {
      v6 = v3[2](v3, v5);
      if (v6 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld->X", v5, v9];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld->%ld", v5, v6];
      }
      v7 = ;
      [v4 addObject:v7];

      ++v5;
    }

    while (a1 != v5);
  }

  return v4;
}

void sub_1895A696C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1895A94F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1895A9900(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1895ACD8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1895ADEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1895AFA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1895AFE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

__n128 _UIActionSheetPresentationControllerAvailableBoundsForLayout(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a3;
  v16 = *(a1 + 16);
  v15 = *(a1 + 32);
  if (v15.f64[0] <= *(a1 + 40))
  {
    [v13 convertRect:v14 fromCoordinateSpace:{a4, a5, a6, a7, *(a1 + 32), *(a1 + 40), *&v16}];
  }

  else
  {
    v17 = vsubq_f64(v15, vdupq_laneq_s64(v15, 1));
    __asm { FMOV            V1.2D, #0.5 }

    v23 = vaddq_f64(v16, vmulq_f64(v17, _Q1));
    [v13 convertRect:v14 fromCoordinateSpace:{a4, a5, a6, a7, *(a1 + 40), *&v23.f64[1], vrndaq_f64(v23)}];
  }

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  if (!CGRectIsEmpty(*&v24) && (*(a1 + 104) & 1) == 0)
  {
    v34.origin.x = v28;
    v34.origin.y = v29;
    v34.size.width = v30;
    v34.size.height = v31;
    CGRectGetMinY(v34);
  }

  return v33;
}

void UIActionSheetPresentationControllerLayoutViews(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char *a7, double a8, double a9, double a10, double a11)
{
  v90 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v22 = a2;
  v23 = *(a7 + 5);
  v84 = *(a7 + 4);
  v85 = v23;
  v24 = *(a7 + 7);
  *v86 = *(a7 + 6);
  *&v86[16] = v24;
  v25 = *(a7 + 1);
  *v82 = *a7;
  *&v82[16] = v25;
  v26 = *(a7 + 3);
  *&v82[32] = *(a7 + 2);
  v83 = v26;
  v27 = a6;
  v28 = a5;
  v77 = a4;
  v29 = a3;
  v30 = a10;
  v31 = a11;
  v32 = UIActionSheetPresentationControllerFrameForPresentedView(v82, v28, v27, a8, a9, v30, a11);
  v75 = v33;
  v76 = v32;
  v73 = v35;
  v74 = v34;
  v36 = *a7;
  v37 = *(a7 + 17);
  v88 = *(a7 + 1);
  *v89 = v37;
  *&v89[15] = *(a7 + 4);
  v38 = *(a7 + 5);
  v81 = *(a7 + 3);
  v40 = *(a7 + 8);
  v39 = *(a7 + 9);
  v41 = *(a7 + 10);
  v42 = *(a7 + 11);
  v43 = *(a7 + 12);
  v44 = a7[104];
  v45 = a7[105];
  v46 = *(a7 + 106);
  *(v87 + 14) = *(a7 + 15);
  v87[0] = v46;
  v82[0] = v36;
  *&v82[1] = *(a7 + 1);
  *&v82[17] = *(a7 + 17);
  *&v82[32] = *(a7 + 4);
  *&v82[40] = v38;
  v66 = v38;
  v83 = *(a7 + 3);
  *&v84 = v40;
  *(&v84 + 1) = v39;
  *&v85 = v41;
  *(&v85 + 1) = v42;
  *v86 = v43;
  v86[8] = v44;
  v86[9] = v45;
  v47 = *(a7 + 106);
  *&v86[24] = *(a7 + 15);
  *&v86[10] = v47;
  *&v48 = _UIActionSheetPresentationControllerAvailableBoundsForLayout(v82, v28, v27, a8, a9, a10, v31).n128_u64[0];
  v50 = v49;
  v52 = v51;
  v65 = v53;
  *&v82[1] = v88;
  v82[0] = v36;
  *&v82[17] = *v89;
  *&v82[32] = *&v89[15];
  *&v82[40] = v38;
  v83 = v81;
  *&v84 = v40;
  *(&v84 + 1) = v39;
  *&v85 = v41;
  *(&v85 + 1) = v42;
  *v86 = v43;
  v86[8] = v44;
  v86[9] = v45;
  *&v86[10] = v87[0];
  *&v86[24] = *(v87 + 14);
  v54 = v48;
  v55 = _UIActionSheetPresentationControllerFrameForDismissButtonInAvailableBounds(v82, v48, v49, v51, v53);
  v67 = v57;
  v68 = v55;
  v70 = v56;
  v72 = v58;
  *&v82[1] = v88;
  if (v45)
  {
    v59 = 0.0;
  }

  else
  {
    v59 = v43 + v56;
  }

  v82[0] = v36;
  *&v82[17] = *v89;
  *&v82[32] = *&v89[15];
  *&v82[40] = v66;
  v83 = v81;
  *&v84 = v40;
  *(&v84 + 1) = v39;
  *&v85 = v41;
  *(&v85 + 1) = v42;
  *v86 = v43;
  v86[8] = v44;
  v86[9] = v45;
  *&v86[10] = v87[0];
  *&v86[24] = *(v87 + 14);
  _UIActionSheetPresentationControllerFrameForPresentedViewInAvailableBounds(v82, v39 + v54, v40 + v50, v52 - (v39 + v42), v65 - (v41 + v40 + v59));
  v61 = v66 - v60;
  if (v36)
  {
    v61 = 0.0;
  }

  v62 = v67 + v61;

  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __UIActionSheetPresentationControllerLayoutViews_block_invoke;
  v78[3] = &unk_1E70F35B8;
  v79 = v22;
  v80 = v21;
  v63 = v21;
  v64 = v22;
  [UIView performWithoutAnimation:v78];
  [v63 setFrame:{v76, v75, v74, v73}];
  [v64 setFrame:{v76, v75, v74, v73}];
  [v64 layoutIfNeeded];
  [v29 setFrame:{v68 + 0.0, v62, v72, v70}];

  [v77 setFrame:{*(a7 + 2), *(a7 + 3), *(a7 + 4), *(a7 + 5)}];
}

CGFloat UIActionSheetPresentationControllerFrameForPresentedView(double *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v8 = *(a1 + 5);
  v38 = *(a1 + 4);
  v39 = v8;
  v9 = *(a1 + 7);
  v40 = *(a1 + 6);
  v41 = v9;
  v10 = *(a1 + 1);
  v34 = *a1;
  v35 = v10;
  v11 = *(a1 + 3);
  v36 = *(a1 + 2);
  v37 = v11;
  *&v12 = _UIActionSheetPresentationControllerAvailableBoundsForLayout(&v34, a2, a3, a4, a5, a6, a7).n128_u64[0];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *(a1 + 5);
  v38 = *(a1 + 4);
  v39 = v19;
  v20 = *(a1 + 7);
  v40 = *(a1 + 6);
  v41 = v20;
  v21 = *(a1 + 1);
  v34 = *a1;
  v35 = v21;
  v22 = *(a1 + 3);
  v36 = *(a1 + 2);
  v37 = v22;
  _UIActionSheetPresentationControllerFrameForDismissButtonInAvailableBounds(&v34, v12, v14, v15, v17);
  v25 = a1[8];
  v24 = a1[9];
  if (*(a1 + 105))
  {
    v26 = 0.0;
  }

  else
  {
    v26 = v23 + a1[12];
  }

  v27 = v16 - (v24 + a1[11]);
  v28 = v18 - (a1[10] + v25 + v26);
  v29 = *(a1 + 5);
  v38 = *(a1 + 4);
  v39 = v29;
  v30 = *(a1 + 7);
  v40 = *(a1 + 6);
  v41 = v30;
  v31 = *(a1 + 1);
  v34 = *a1;
  v35 = v31;
  v32 = *(a1 + 3);
  v36 = *(a1 + 2);
  v37 = v32;
  return _UIActionSheetPresentationControllerFrameForPresentedViewInAvailableBounds(&v34, v12 + v24, v14 + v25, v27, v28) + 0.0;
}

uint64_t __UIActionSheetPresentationControllerLayoutViews_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(a1 + 40) frame];

  return [v1 setFrame:?];
}

double _UIActionSheetPresentationControllerFrameForDismissButtonInAvailableBounds(double *a1, double a2, double a3, double a4, double a5)
{
  v5 = round(a2 + (a4 - a5) * 0.5);
  if (a1[4] > a1[5])
  {
    a2 = v5;
  }

  return a2 + a1[9];
}

CGFloat _UIActionSheetPresentationControllerFrameForPresentedViewInAvailableBounds(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = *(a1 + 8);
  if (v9 > 0.0 && v9 != -1.0)
  {
    CGRectGetMinY(*&a2);
    v12.origin.x = a2;
    v12.origin.y = a3;
    v12.size.width = a4;
    v12.size.height = a5;
    CGRectGetMaxY(v12);
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    CGRectGetMaxY(v13);
  }

  return a2 + (a4 - a4) * 0.5;
}

void UIActionSheetPresentationControllerAdjustForKeyboardNotification(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, _OWORD *a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  if (a17 > 0.0)
  {
    v37 = a7[5];
    v71[4] = a7[4];
    v71[5] = v37;
    v38 = a7[7];
    v71[6] = a7[6];
    v71[7] = v38;
    v39 = a7[1];
    v71[0] = *a7;
    v71[1] = v39;
    v40 = a7[3];
    v71[2] = a7[2];
    v71[3] = v40;
    UIActionSheetPresentationControllerLayoutViews(v31, v32, v33, v34, v35, v36, v71, a9, a10, a11, a12);
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __UIActionSheetPresentationControllerAdjustForKeyboardNotification_block_invoke;
  v52[3] = &unk_1E7101658;
  v53 = v31;
  v54 = v32;
  v55 = v33;
  v56 = v34;
  v57 = v35;
  v58 = v36;
  v41 = a7[5];
  v63 = a7[4];
  v64 = v41;
  v42 = a7[7];
  v65 = a7[6];
  v66 = v42;
  v43 = a7[1];
  v59 = *a7;
  v60 = v43;
  v44 = a7[3];
  v61 = a7[2];
  v62 = v44;
  v67 = a13;
  v68 = a14;
  v69 = a15;
  v70 = a16;
  v45 = v36;
  v46 = v35;
  v47 = v34;
  v48 = v33;
  v49 = v32;
  v50 = v31;
  [UIView animateWithDuration:a8 | 0x406 delay:v52 options:0 animations:a17 completion:0.0];
}

void __UIActionSheetPresentationControllerAdjustForKeyboardNotification_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 160);
  v11[4] = *(a1 + 144);
  v11[5] = v7;
  v8 = *(a1 + 192);
  v11[6] = *(a1 + 176);
  v11[7] = v8;
  v9 = *(a1 + 96);
  v11[0] = *(a1 + 80);
  v11[1] = v9;
  v10 = *(a1 + 128);
  v11[2] = *(a1 + 112);
  v11[3] = v10;
  UIActionSheetPresentationControllerLayoutViews(v2, v1, v3, v4, v5, v6, v11, *(a1 + 208), *(a1 + 216), *(a1 + 224), *(a1 + 232));
}

double UIActionSheetPresentationControllerCurrentKeyboardFrame(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(UIScene *)UIWindowScene _scenesIncludingInternal:1, 0];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v15 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v14 + 1) + 8 * v6);
      v8 = [v7 screen];

      if (v8 == v1)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v9 = v7;

    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = [v9 keyboardSceneDelegate];
    [v10 visibleFrameInView:0];
    v12 = v11;
  }

  else
  {
LABEL_9:

LABEL_12:
    v12 = *MEMORY[0x1E695F050];
  }

  return v12;
}

double _UIActionSheetPresentationControllerContentInsetsAdjustedForSafeAreaWithStandardContentInsets(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = a1;
  [v6 safeAreaInsets];
  v8 = v7;
  v9 = [v6 window];
  v10 = [v9 rootViewController];

  if (v10 && [v10 _providesCustomBasePresentationInsets])
  {
    [v10 _customBasePresentationInsetsForView:v6];
    v8 = v11;
  }

  [v6 bounds];
  v13 = v12;
  v15 = v14;
  v16 = [v6 window];
  [v16 bounds];
  if (v13 == v18 && v15 == v17)
  {
    v20 = [v6 traitCollection];
    v21 = [v20 userInterfaceIdiom];

    if (v21 != 3)
    {
      v22 = fmax(a2, v8);
      goto LABEL_12;
    }
  }

  else
  {
  }

  v22 = a2 + v8;
LABEL_12:

  return v22;
}

void UIActionSheetPresentationControllerAddViewsToContainerView(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  [v13 addSubview:v11];
  [v13 insertSubview:v12 belowSubview:v11];

  [v13 insertSubview:v10 aboveSubview:v12];
  [v13 addSubview:v9];
}

id UIActionSheetPresentationControllerToUse(void *a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v9 = a3;
  v10 = a4;
  v11 = v9;
  v12 = a1;
  v13 = [v12 horizontalSizeClass];
  v14 = [v12 verticalSizeClass];

  if (a2 == 2)
  {
    v15 = a5;
  }

  else
  {
    v15 = 1;
  }

  if (v13 != 1)
  {
    v15 = 0;
  }

  if (a2 == 1 || (v15 & 1) != 0 || (v16 = v11, v14 == 1))
  {
    v16 = v10;
  }

  return v16;
}

_UIAnimationCoordinator *UIActionSheetPresentationControllerAnimationCoordinatorForFrameChangeOfView(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, double a7, double a8, double a9, double a10, double a11)
{
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a3;
  v25 = a2;
  v26 = a1;
  v27 = objc_alloc_init(_UIAnimationCoordinator);
  [(_UIAnimationCoordinator *)v27 setDuration:a11];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __UIActionSheetPresentationControllerAnimationCoordinatorForFrameChangeOfView_block_invoke;
  v44[3] = &unk_1E7101680;
  v45 = v21;
  v28 = v21;
  [(_UIAnimationCoordinator *)v27 setPreperation:v44];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __UIActionSheetPresentationControllerAnimationCoordinatorForFrameChangeOfView_block_invoke_2;
  v42[3] = &unk_1E7101680;
  v43 = v22;
  v29 = v22;
  [(_UIAnimationCoordinator *)v27 setAnimator:v42];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __UIActionSheetPresentationControllerAnimationCoordinatorForFrameChangeOfView_block_invoke_3;
  v40[3] = &unk_1E7101680;
  v41 = v23;
  v30 = v23;
  [(_UIAnimationCoordinator *)v27 setCompletion:v40];
  [(_UIAnimationCoordinator *)v27 setContainerView:v25];

  [(_UIAnimationCoordinator *)v27 setViewController:v24];
  [v26 frame];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  [(_UIAnimationCoordinator *)v27 setStartFrame:v32, v34, v36, v38];
  [(_UIAnimationCoordinator *)v27 setEndFrame:a7, a8, a9, a10];

  return v27;
}

void sub_1895B5E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  objc_destroyWeak(&a37);
  objc_destroyWeak(&a42);
  objc_destroyWeak((v42 - 224));
  objc_destroyWeak((v42 - 216));
  _Unwind_Resume(a1);
}

void sub_1895B8BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1895B9D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_NSStringForUIPresentationControllerState(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E7101B90[a1];
  }
}

double _frameIgnoringLayerTransformOnOrAfterYukon(void *a1)
{
  v1 = a1;
  if (dyld_program_sdk_at_least())
  {
    [v1 _frameIgnoringLayerTransform];
  }

  else
  {
    [v1 frame];
  }

  v3 = v2;

  return v3;
}

void sub_1895C405C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 8);
  objc_destroyWeak(v1 + 7);
  objc_destroyWeak(v1 + 6);
  objc_destroyWeak((v2 - 112));
  objc_destroyWeak((v2 - 104));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_1895C4B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52, id a53)
{
  objc_destroyWeak((v53 + 40));
  objc_destroyWeak(&a53);
  objc_destroyWeak(&a52);
  _Unwind_Resume(a1);
}

uint64_t _UIMaterialPresentationsEnabled()
{
  result = _UISolariumEnabled();
  if (result)
  {
    result = dyld_program_sdk_at_least();
    if (result)
    {
      LODWORD(result) = _UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_MaterialPresentationsEnabled, @"MaterialPresentationsEnabled");
      if (byte_1ED48AB5C)
      {
        return 1;
      }

      else
      {
        return result;
      }
    }
  }

  return result;
}

void sub_1895CA0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1895CAAB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

double _UISheetTransitionDuration()
{
  v0 = _UIFallbackSheetMetrics();
  [v0 transitionDuration];
  v2 = v1;

  return v2;
}

id _UISheetTransitionSpringParametersHighSpeed(uint64_t a1)
{
  v2 = _UIFallbackSheetMetrics();
  v3 = [v2 transitionSpringParametersHighSpeed:a1];

  return v3;
}

id _UISheetTransitionTimingCurve()
{
  if (qword_1ED49D790 != -1)
  {
    dispatch_once(&qword_1ED49D790, &__block_literal_global_135);
  }

  v1 = _MergedGlobals_1050;

  return v1;
}

void _UISheetAnimateWithCompletion(void *a1, void *a2)
{
  v8 = a2;
  v3 = a1;
  v4 = [UIViewPropertyAnimator alloc];
  v5 = _UISheetTransitionDuration();
  v6 = _UISheetTransitionTimingCurve();
  v7 = [(UIViewPropertyAnimator *)v4 initWithDuration:v6 timingParameters:v5];

  [(UIViewPropertyAnimator *)v7 addAnimations:v3];
  if (v8)
  {
    [(UIViewPropertyAnimator *)v7 addCompletion:v8];
  }

  [(UIViewPropertyAnimator *)v7 startAnimation];
}

void _UISheetTransform(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v25 = a1;
  v26 = _UIFallbackSheetMetrics();
  [_UISheetLayoutInfoProvider transformForViewControllerView:v25 untransformedSheetFrame:a2 fullHeightUntransformedFrameForDepthLevel:v26 topAlignment:a3 depthLevel:a4 peeks:a5 metrics:a6, a7, a8, a9, a10, a17, a18];
}

uint64_t _UISheetIndexOfDetentWithIdentifier(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___UISheetIndexOfDetentWithIdentifier_block_invoke;
  v9[3] = &unk_1E7101EA0;
  v10 = v5;
  v6 = v5;
  v7 = [a1 indexOfObjectPassingTest:v9];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    a3 = v7;
  }

  return a3;
}

id __UIMoreListImageForViewController(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    v8 = [v6 moreListSelectedImage];
    if (v8)
    {
LABEL_3:
      v9 = v8;
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [v6 moreListImage];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v10 = [v7 tabBarItem];
  v9 = [v10 _internalTemplateImage];

LABEL_6:

  return v9;
}

BOOL _UIArrayShallowEqual(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 == v4)
  {
    goto LABEL_9;
  }

  v5 = [v3 count];
  if (v5 != [v4 count])
  {
    v10 = 0;
    goto LABEL_11;
  }

  if (![v3 count])
  {
LABEL_9:
    v10 = 1;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v6];
      v8 = [v4 objectAtIndexedSubscript:v6];

      v9 = v7 == v8;
      v10 = v7 == v8;
      if (!v9)
      {
        break;
      }

      ++v6;
    }

    while (v6 < [v3 count]);
  }

LABEL_11:

  return v10;
}

uint64_t _UITabBarControllerWantsFloatingTabBar()
{
  if (qword_1ED498E08 != -1)
  {
    dispatch_once(&qword_1ED498E08, &__block_literal_global_137);
  }

  return _MergedGlobals_63_0;
}

void sub_1895D9BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1895DF0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location, id a25, id a26)
{
  objc_destroyWeak((v26 + 48));
  objc_destroyWeak((v26 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);
  _Unwind_Resume(a1);
}

void sub_1895E111C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1895E1480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getEMFEmojiLocaleDataClass_block_invoke(uint64_t a1)
{
  EmojiFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiLocaleData");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    _MergedGlobals_1052 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiLocaleDataClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationTipEmojiHandler.m" lineNumber:21 description:{@"Unable to find class %s", "EMFEmojiLocaleData"}];

    __break(1u);
  }
}

void EmojiFoundationLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!EmojiFoundationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __EmojiFoundationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7102230;
    v5 = 0;
    EmojiFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!EmojiFoundationLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *EmojiFoundationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIDictationTipEmojiHandler.m" lineNumber:19 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __EmojiFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  EmojiFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void __getEMFEmojiTokenClass_block_invoke(uint64_t a1)
{
  EmojiFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("EMFEmojiToken");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49D7D0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getEMFEmojiTokenClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDictationTipEmojiHandler.m" lineNumber:20 description:{@"Unable to find class %s", "EMFEmojiToken"}];

    __break(1u);
  }
}

void sub_1895E19E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getQLItemClass_block_invoke(uint64_t a1)
{
  QuickLookLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("QLItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49D7E0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getQLItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDocument_PDFGeneration.m" lineNumber:19 description:{@"Unable to find class %s", "QLItem"}];

    __break(1u);
  }
}

void QuickLookLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __QuickLookLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7102298;
    v5 = 0;
    QuickLookLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!QuickLookLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *QuickLookLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIDocument_PDFGeneration.m" lineNumber:18 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __QuickLookLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  QuickLookLibraryCore_frameworkLibrary = result;
  return result;
}

void __getQLPreviewControllerClass_block_invoke(uint64_t a1)
{
  QuickLookLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("QLPreviewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49D7E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getQLPreviewControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIDocument_PDFGeneration.m" lineNumber:20 description:{@"Unable to find class %s", "QLPreviewController"}];

    __break(1u);
  }
}

Class __getUIPrintInteractionControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49D7F8)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __PrintKitUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71022B0;
    v8 = 0;
    qword_1ED49D7F8 = _sl_dlopen();
  }

  if (!qword_1ED49D7F8)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PrintKitUILibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDocument_PDFGeneration.m" lineNumber:15 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UIPrintInteractionController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIPrintInteractionControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDocument_PDFGeneration.m" lineNumber:16 description:{@"Unable to find class %s", "UIPrintInteractionController"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49D7F0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __PrintKitUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49D7F8 = result;
  return result;
}

uint64_t stateMachineSpec_block_invoke_5_1(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 delegate];
  [v3 clickDriver:v2 didPerformEvent:2];

  return 1;
}

void sub_1895E2DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _CreateRotationSnapshot(void *a1, void *a2, UISnapshotView **a3, void *a4, uint64_t a5, uint64_t a6, double a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11)
{
  if (a1)
  {
    v12 = a11;
    v13 = a10;
    v14 = a9;
    v15 = a8;
    v49.origin.x = a8;
    v49.origin.y = a9;
    v49.size.width = a10;
    v49.size.height = a11;
    if (CGRectIsEmpty(v49))
    {
      [a1 bounds];
      [a2 convertRect:a1 fromView:?];
      v15 = v22;
      v14 = v23;
      v13 = v24;
      v12 = v25;
    }

    v26 = [[UISnapshotView alloc] initWithFrame:v15, v14, v13, v12];
    [(UISnapshotView *)v26 setEdgeInsets:0.0, 0.0, a7, 0.0];
    [(UISnapshotView *)v26 captureSnapshotOfView:a1 withSnapshotType:a6];
    if (a5 && *(a5 + 1) == 1)
    {
      [(UISnapshotView *)v26 setVerticalStretchEnabled:0];
      v27 = [a1 backgroundColor] ? objc_msgSend(a1, "backgroundColor") : +[UIColor whiteColor](UIColor, "whiteColor");
      [(UIView *)v26 setBackgroundColor:v27];
      if (*(a5 + 8) != 0.0)
      {
        [a1 bounds];
        if (v28 <= v29)
        {
          v30 = 0.001;
        }

        else
        {
          v30 = v28 - v29;
        }

        [(CALayer *)[(UIView *)[(UISnapshotView *)v26 _snapshotView] layer] setContentsCenter:1.0 / v28 * (v28 - *(a5 + 8) + -0.5 - v30), 0.0, 1.0 / v28 * v30, 1.0];
      }
    }

    if (a4)
    {
      [a2 insertSubview:v26 belowSubview:a4];
    }

    else
    {
      [a2 insertSubview:v26 atIndex:0];
    }

    *a3 = v26;
    if (objc_opt_respondsToSelector())
    {
      v31 = [a1 _shadowView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (v31)
      {
        if ((isKindOfClass & 1) != 0 && [v31 image])
        {
          v47 = -[UIImageView initWithImage:]([UIImageView alloc], "initWithImage:", [v31 image]);
        }

        else if ([v31 backgroundColor])
        {
          v33 = [UIView alloc];
          [v31 frame];
          v47 = [(UIView *)v33 initWithFrame:?];
          -[UIImageView setBackgroundColor:](v47, "setBackgroundColor:", [v31 backgroundColor]);
        }

        else
        {
          v47 = 0;
        }

        [v31 bounds];
        [(UIView *)v26 convertRect:v31 fromView:?];
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        v42 = [a4 shadowView];
        if (v42)
        {
          [v42 frame];
          v35 = v43;
          v37 = v44;
          v39 = v45;
          v41 = v46;
        }

        [(UIImageView *)v47 setFrame:v35, v37, v39, v41];
        -[UIView setAutoresizingMask:](v47, "setAutoresizingMask:", [v31 autoresizingMask]);
        [(UISnapshotView *)v26 setShadowView:v47];
      }
    }
  }
}

BOOL UIImagePickerLoadPhotoLibraryIfNecessary()
{
  if (UIImagePickerLoadPhotoLibraryIfNecessary___FrameworkLoaded)
  {
    return 1;
  }

  __PhotoLibraryFrameworkHandle = dlopen([@"/System/Library/PrivateFrameworks/PhotoLibrary.framework/PhotoLibrary" fileSystemRepresentation], 2);
  result = 1;
  if (!__PhotoLibraryFrameworkHandle)
  {
    v1 = *MEMORY[0x1E69E9848];
    v2 = dlerror();
    fprintf(v1, "Couldn't load framework: %s\n", v2);
    result = __PhotoLibraryFrameworkHandle != 0;
  }

  UIImagePickerLoadPhotoLibraryIfNecessary___FrameworkLoaded = 1;
  return result;
}

void UIImagePickerEnsureViewIsInsidePopover(void *a1)
{
  v14 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [v14 _valueForProperty:@"_UIImagePickerControllerAllowAnySuperview"];
    if ([v1 BOOLValue])
    {
LABEL_8:

      goto LABEL_9;
    }

    v2 = [v14 sourceType];

    if (v2 == 1)
    {
      goto LABEL_9;
    }
  }

  v3 = +[UIDevice currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    goto LABEL_9;
  }

  v1 = [v14 view];
  v5 = [v1 window];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [v14 view];
  v8 = [_UIPopoverView popoverViewContainingView:v7];

  if (!v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [v9 stringWithFormat:@"On iPad, %@ must be presented via UIPopoverController", v11];

    v13 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0];
    objc_exception_throw(v13);
  }

LABEL_9:
}

id MediaTypeForCameraCaptureMode(uint64_t a1)
{
  if (!a1)
  {
    v3 = MEMORY[0x1E6982E30];
LABEL_5:
    v4 = [*v3 identifier];

    return v4;
  }

  if (a1 == 1)
  {
    v3 = MEMORY[0x1E6982EE8];
    goto LABEL_5;
  }

  v4 = 0;

  return v4;
}

void sub_1895EC3E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1895EC820(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_1895ECD1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1895ED2E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void UIImageWriteToSavedPhotosAlbum(UIImage *image, id completionTarget, SEL completionSelector, void *contextInfo)
{
  v13 = image;
  v7 = completionTarget;
  PhotoLibraryIfNecessary = UIImagePickerLoadPhotoLibraryIfNecessary();
  v9 = UIImageWriteToSavedPhotosAlbum___PLSaveImageToCameraRoll;
  if (PhotoLibraryIfNecessary && __PhotoLibraryFrameworkHandle && UIImageWriteToSavedPhotosAlbum___PLSaveImageToCameraRoll == 0)
  {
    v9 = dlsym(__PhotoLibraryFrameworkHandle, "PLSaveImageToCameraRoll");
    UIImageWriteToSavedPhotosAlbum___PLSaveImageToCameraRoll = v9;
  }

  if (v9)
  {
    (v9)(v13, v7, completionSelector, contextInfo);
  }

  else if (v7 && completionSelector)
  {
    v11 = *MEMORY[0x1E69E9848];
    v12 = dlerror();
    fprintf(v11, "Couldn't find saving function. %s\n", v12);
  }
}

void UIImageDataWriteToSavedPhotosAlbum(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v7 = a2;
  PhotoLibraryIfNecessary = UIImagePickerLoadPhotoLibraryIfNecessary();
  v9 = UIImageDataWriteToSavedPhotosAlbum___PLSaveImageDataToCameraRoll;
  if (PhotoLibraryIfNecessary && __PhotoLibraryFrameworkHandle && UIImageDataWriteToSavedPhotosAlbum___PLSaveImageDataToCameraRoll == 0)
  {
    v9 = dlsym(__PhotoLibraryFrameworkHandle, "PLSaveImageDataToCameraRoll");
    UIImageDataWriteToSavedPhotosAlbum___PLSaveImageDataToCameraRoll = v9;
  }

  if (v9)
  {
    (v9)(v13, v7, a3, a4);
  }

  else if (v7 && a3)
  {
    v11 = *MEMORY[0x1E69E9848];
    v12 = dlerror();
    fprintf(v11, "Couldn't find saving function. %s\n", v12);
  }
}

BOOL UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(NSString *videoPath)
{
  v1 = videoPath;
  PhotoLibraryIfNecessary = UIImagePickerLoadPhotoLibraryIfNecessary();
  v3 = UIVideoAtPathIsCompatibleWithSavedPhotosAlbum___PLCanSaveVideoToCameraRoll;
  if (PhotoLibraryIfNecessary && __PhotoLibraryFrameworkHandle && UIVideoAtPathIsCompatibleWithSavedPhotosAlbum___PLCanSaveVideoToCameraRoll == 0)
  {
    v3 = dlsym(__PhotoLibraryFrameworkHandle, "PLCanSaveVideoToCameraRoll");
    UIVideoAtPathIsCompatibleWithSavedPhotosAlbum___PLCanSaveVideoToCameraRoll = v3;
  }

  if (v3)
  {
    v5 = (v3)(v1);
  }

  else
  {
    v6 = *MEMORY[0x1E69E9848];
    v7 = dlerror();
    fprintf(v6, "Couldn't find 'can save video' function. %s\n", v7);
    v5 = 0;
  }

  return v5;
}

void UISaveVideoAtPathToSavedPhotosAlbum(NSString *videoPath, id completionTarget, SEL completionSelector, void *contextInfo)
{
  v13 = videoPath;
  v7 = completionTarget;
  PhotoLibraryIfNecessary = UIImagePickerLoadPhotoLibraryIfNecessary();
  v9 = UISaveVideoAtPathToSavedPhotosAlbum___PLSaveVideoToCameraRoll;
  if (PhotoLibraryIfNecessary && __PhotoLibraryFrameworkHandle && UISaveVideoAtPathToSavedPhotosAlbum___PLSaveVideoToCameraRoll == 0)
  {
    v9 = dlsym(__PhotoLibraryFrameworkHandle, "PLSaveVideoToCameraRoll");
    UISaveVideoAtPathToSavedPhotosAlbum___PLSaveVideoToCameraRoll = v9;
  }

  if (v9)
  {
    (v9)(v13, v7, completionSelector, contextInfo);
  }

  else if (v7 && completionSelector)
  {
    v11 = *MEMORY[0x1E69E9848];
    v12 = dlerror();
    fprintf(v11, "Couldn't find saving function. %s\n", v12);
  }
}

UIImageView *_shadowImageInRectForSlice(void *a1, unsigned int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = a1;
  v20 = [[UIImageView alloc] initWithFrame:a3, a4, a5, a6];
  [(UIView *)v20 setAutoresizingMask:a2];
  [v19 scale];
  v22 = v21;
  v23 = a7 * v21;
  v24 = a8 * v21;
  v25 = a9 * v21;
  v26 = a10 * v21;
  v27 = [v19 CGImage];

  v32.origin.x = v23;
  v32.origin.y = v24;
  v32.size.width = v25;
  v32.size.height = v26;
  v28 = CGImageCreateWithImageInRect(v27, v32);
  v29 = [[UIImage alloc] initWithCGImage:v28 scale:0 orientation:v22];
  [(UIImageView *)v20 setImage:v29];
  CFRelease(v28);

  return v20;
}

void sub_1895F0C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1895F3968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, id location)
{
  objc_destroyWeak((v62 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1895F5D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _updateToolbarForViewControllerAnimated(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = [a2 toolbarItems];
  [v5 setItems:v6 animated:a3];
}

void sub_1895FF48C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189607FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(exception_object);
    v14 = *(__UILogGetCategoryCachedImpl("UINavigationController_in_UISplitViewController", &qword_1ED4979C8) + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *(v12 - 160) = 0;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "Failed to retrieve _internalState. Logging code needs updating", (v12 - 160), 2u);
    }

    objc_end_catch();
    JUMPOUT(0x189607D58);
  }

  _Unwind_Resume(exception_object);
}

void sub_189608EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _gestureProgress(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  [v6 translationInView:a1];
  v7 = [v5 stash];

  v8 = [v7 objectForKeyedSubscript:@"NavigationBarTravelDistance"];
  [v8 doubleValue];

  [v6 bias];
}

void sub_189610840(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 160));
  _Unwind_Resume(a1);
}

void sub_189613A00(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_189614018(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_189614360(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void ___allowRelaxRepeatedPushAssertionForSplitViewController_block_invoke()
{
  byte_1ED49790D = _resolvedPrefValue(@"UINavigationControllerRelaxRepeatedPushAssertionForSplitViewController");
  if (qword_1ED497A18 != -1)
  {
    dispatch_once(&qword_1ED497A18, &__block_literal_global_1823);
  }

  if (byte_1ED49790C == 1)
  {
    v0 = *(__UILogGetCategoryCachedImpl("NavigationControllerVerboseLoggingForStrictRepeatedPushAssertion", &qword_1ED497A28) + 8);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      *v1 = 0;
      _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "Verbose logging for navigation controller pushes are in the category NavigationControllerVerboseLoggingForStrictRepeatedPushAssertion", v1, 2u);
    }
  }
}

void UIPageViewControllerCommonInitWithTransitionStyleAndNavigationOrientation(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v5[126] = a2;
  v5[127] = a3;
  v5[128] = a2 == 0;
  *(v5 + 1032) = 0;
  v5[156] = -1;
  v15 = v5;
  if (a2)
  {
    v6 = v5;
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:1];
    v8 = &OBJC_IVAR___UIPageViewController__cachedViewControllersForScroll;
  }

  else
  {
    v9 = [[UIPanGestureRecognizer alloc] initWithTarget:v5 action:sel__handlePanGesture_];
    v10 = v15[132];
    v15[132] = v9;

    [v15[132] setMaximumNumberOfTouches:1];
    [v15[132] setDelegate:?];
    v11 = [[UITapGestureRecognizer alloc] initWithTarget:v15 action:sel__handleTapGesture_];
    v12 = v15[133];
    v15[133] = v11;

    [v15[133] setDelegate:?];
    v8 = &OBJC_IVAR___UIPageViewController__cachedViewControllersForCurl;
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v13 = *v8;
  v14 = *(v15 + v13);
  *(v15 + v13) = v7;

  v6 = v15;
LABEL_6:
}

void sub_189618C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189619120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18961A7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18961FAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189621458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189621B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __MediaExperienceLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaExperienceLibraryCore_frameworkLibrary = result;
  return result;
}

id _UIPageCurlFilterPropertyNameForAnimationKeyPath(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 lastObject];
  v3 = [@"curl" stringByAppendingFormat:@"-%@", v2];

  return v3;
}

void sub_1896260FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18962C2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18962E424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189630D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_18963285C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189633C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189638368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, id a41)
{
  objc_destroyWeak(&a36);
  objc_destroyWeak(&a41);
  objc_destroyWeak((v41 - 216));
  _Unwind_Resume(a1);
}

UIView *CreateSeparatorView()
{
  v0 = [UIView alloc];
  v1 = [(UIView *)v0 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v2 = +[UIColor separatorColor];
  [(UIView *)v1 setBackgroundColor:v2];

  return v1;
}

void sub_189639178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18963AB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18963B4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18963BEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18963C1B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void WebKitLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __WebKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7103550;
    v5 = 0;
    WebKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!WebKitLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"UIReferenceLibraryViewController.m" lineNumber:51 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __WebKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  WebKitLibraryCore_frameworkLibrary = result;
  return result;
}

void __getWKUserContentControllerClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKUserContentController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49A5D8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWKUserContentControllerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIReferenceLibraryViewController.m" lineNumber:54 description:{@"Unable to find class %s", "WKUserContentController"}];

    __break(1u);
  }
}

void __getWKWebViewConfigurationClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebViewConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49A5E0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWKWebViewConfigurationClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIReferenceLibraryViewController.m" lineNumber:55 description:{@"Unable to find class %s", "WKWebViewConfiguration"}];

    __break(1u);
  }
}

void __getWKWebViewClass_block_invoke(uint64_t a1)
{
  WebKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49A5E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWKWebViewClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"UIReferenceLibraryViewController.m" lineNumber:52 description:{@"Unable to find class %s", "WKWebView"}];

    __break(1u);
  }
}

void *__getDCSDictionaryAssetAttributesDownloadedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DictionaryServicesLibrary();
  result = dlsym(v2, "DCSDictionaryAssetAttributesDownloaded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDCSDictionaryAssetAttributesDownloadedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *DictionaryServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DictionaryServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DictionaryServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7103568;
    v6 = 0;
    DictionaryServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DictionaryServicesLibraryCore_frameworkLibrary;
  if (!DictionaryServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DictionaryServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIReferenceLibraryViewController.m" lineNumber:46 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __DictionaryServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DictionaryServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getDCSDictionaryAssetAttributesWillBePurgedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DictionaryServicesLibrary();
  result = dlsym(v2, "DCSDictionaryAssetAttributesWillBePurged");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDCSDictionaryAssetAttributesWillBePurgedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_18963E940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18963F0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18963F2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18963FAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189640568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getDCSDictionaryCreateWithAssetAttributesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DictionaryServicesLibrary_0();
  result = dlsym(v2, "DCSDictionaryCreateWithAssetAttributes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDCSDictionaryCreateWithAssetAttributesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *DictionaryServicesLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DictionaryServicesLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DictionaryServicesLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71035C8;
    v6 = 0;
    DictionaryServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = DictionaryServicesLibraryCore_frameworkLibrary_0;
  if (!DictionaryServicesLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DictionaryServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"_UIDictionaryManager.m" lineNumber:32 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __DictionaryServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  DictionaryServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getDCSHasDefinitionForTermSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DictionaryServicesLibrary_0();
  result = dlsym(v2, "DCSHasDefinitionForTerm");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDCSHasDefinitionForTermSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getDCSCopyDefinitionMarkupSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DictionaryServicesLibrary_0();
  result = dlsym(v2, "DCSCopyDefinitionMarkup");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDCSCopyDefinitionMarkupSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getDCSDictionaryAssetGetAssetTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DictionaryServicesLibrary_0();
  result = dlsym(v2, "DCSDictionaryAssetGetAssetType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDCSDictionaryAssetGetAssetTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getDCSDictionaryAssetGetCompatibilityVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DictionaryServicesLibrary_0();
  result = dlsym(v2, "DCSDictionaryAssetGetCompatibilityVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDCSDictionaryAssetGetCompatibilityVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRTTSettingsClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED49D860)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __RTTUtilitiesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E71035E0;
    v8 = 0;
    qword_1ED49D860 = _sl_dlopen();
  }

  if (!qword_1ED49D860)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *RTTUtilitiesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"_UIDictionaryManager.m" lineNumber:41 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("RTTSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getRTTSettingsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"_UIDictionaryManager.m" lineNumber:42 description:{@"Unable to find class %s", "RTTSettings"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED49D858 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __RTTUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED49D860 = result;
  return result;
}

void sub_189640F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id VisibleViewController(void *a1)
{
  v1 = a1;
  DataDetectorsUIGetClass(@"DDParsecCollectionViewController");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 visibleViewController];
  }

  v3 = v2;

  return v3;
}

void UISearchDisplayControllerNoLongerSupported()
{
  if (qword_1ED49B0F8 != -1)
  {
    dispatch_once(&qword_1ED49B0F8, &__block_literal_global_148);
  }

  if (_MergedGlobals_21_2 == 1)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v3 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v3, OS_LOG_TYPE_FAULT, "rdar://101286541 (AMS Finance UI uses UISearchDisplayController, which is no longer supported)", buf, 2u);
      }
    }

    else
    {
      v0 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49B100) + 8);
      if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
      {
        *v4 = 0;
        _os_log_impl(&dword_188A29000, v0, OS_LOG_TYPE_ERROR, "rdar://101286541 (AMS Finance UI uses UISearchDisplayController, which is no longer supported)", v4, 2u);
      }
    }
  }

  else if (dyld_program_sdk_at_least())
  {
    v1 = MEMORY[0x1E695DF30];
    v2 = *MEMORY[0x1E695D920];

    [v1 raise:v2 format:@"UISearchDisplayController is no longer supported when linking against this version of iOS. Please migrate your application to UISearchController."];
  }
}

void __UISearchDisplayControllerNoLongerSupported_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  _MergedGlobals_21_2 = [v0 isEqualToString:@"com.apple.MobileStore"];
}

void UISearchDisplayControllerCommonInit(void *a1)
{
  v1 = a1;
  [v1 setAutomaticallyShowsNoResultsMessage:1];
  [v1 setDimTableViewOnEmptySearchString:1];
  [v1 setNavigationBarHidingEnabled:1];
  *(v1 + 17) = -1;
  *(v1 + 128) |= 0x1000u;
}

uint64_t _EnableScrollView(void *a1)
{
  [a1 setScrollEnabled:1];

  return [a1 setProgrammaticScrollEnabled:1];
}

id __copy_helper_block_e8_56n6_8_8_s0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  *(a1 + 56) = result;
  return result;
}

void sub_18964ACC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18964F658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _updateTreatsHiddenAsOverlapsInStates(void *a1, int a2, int a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = v7;
  if ((a2 & 1) != 0 || (a3 & 1) != 0 || a4)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          if (a2)
          {
            [*(*(&v17 + 1) + 8 * v12) leadingWidth];
            if (v14 == 0.0)
            {
              [v13 _setTreatLeadingHiddenAsOverlaps:1];
            }
          }

          if (a3)
          {
            [v13 trailingWidth];
            if (v15 == 0.0)
            {
              [v13 _setTreatTrailingHiddenAsOverlaps:1];
            }
          }

          if (a4)
          {
            [v13 supplementaryWidth];
            if (v16 == 0.0)
            {
              [v13 _setTreatSupplementaryHiddenAsOverlaps:1];
            }
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }
}

void sub_189654D30(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

double _transitionInsetsForViewController(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [a1 view];
  v5 = [v3 mainViewController];
  v6 = [v5 _isNavigationController];

  if (v6)
  {
    v7 = [v3 mainViewController];
    v8 = [v3 collapsedState];
    v9 = [v3 leadingViewController];
    v10 = [v9 view];
    v11 = [v10 window];

    v12 = v8 & 0xFFFFFFFFFFFFFFFDLL;
    v13 = v7;
    if (v12 == 1)
    {
      v13 = v7;
      if (v11)
      {
        v14 = [v3 leadingViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v16 = [v3 leadingViewController];
          v17 = [v16 navControllers];

          v18 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
          v13 = v7;
          if (v18)
          {
            v19 = v18;
            v20 = *v38;
            while (2)
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v38 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v37 + 1) + 8 * i);
                v23 = [v22 view];
                v24 = [v23 window];

                if (v24)
                {
                  v13 = v22;

                  goto LABEL_18;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v37 objects:v41 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }

            v13 = v7;
          }

LABEL_18:
        }

        else
        {
          v26 = [v3 leadingViewController];
          objc_opt_class();
          v27 = objc_opt_isKindOfClass();

          v13 = v7;
          if (v27)
          {
            v13 = [v3 leadingViewController];
          }
        }
      }
    }

    if ([v13 _isNavigationController])
    {
      v28 = v13;
      v29 = [v28 topViewController];
      v30 = [v29 view];

      MaxY = 0.0;
      if (([v28 isNavigationBarHidden] & 1) == 0)
      {
        v31 = [v28 existingPaletteForEdge:2];
        v32 = v31;
        if (v31 && [v31 isAttached])
        {
          [v32 frame];
          MaxY = CGRectGetMaxY(v43);
        }

        else
        {
          v33 = [v28 _navigationBarForNestedNavigationController];
          [v33 frame];
          MaxY = CGRectGetMaxY(v44);
        }
      }

      if (([v28 isToolbarHidden] & 1) == 0)
      {
        v34 = [v28 view];
        [v34 bounds];
        CGRectGetHeight(v45);
        v35 = [v28 toolbar];
        [v35 frame];
        CGRectGetMinY(v46);
      }
    }

    else
    {
      v30 = [v13 view];
      v28 = v4;
      MaxY = 0.0;
    }

    v4 = v30;
  }

  else
  {
    MaxY = 0.0;
  }

  [v4 layoutMargins];
  [v4 layoutMargins];

  return MaxY;
}

void sub_189657AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  objc_destroyWeak((v32 + 40));
  _Unwind_Resume(a1);
}

void sub_189658AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t affectedSidesFromState(void *a1)
{
  v1 = a1;
  [v1 leadingWidth];
  v3 = v2;
  [v1 trailingWidth];
  v5 = 2;
  if (v3 > 0.0)
  {
    v5 = 3;
  }

  if (v4 <= 0.0)
  {
    v6 = v3 > 0.0;
  }

  else
  {
    v6 = v5;
  }

  if (v6)
  {
    [v1 supplementaryWidth];
    if (v7 > 0.0)
    {
      v6 |= 4uLL;
    }
  }

  return v6;
}

void sub_189658D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v7 + 40));
  _Unwind_Resume(a1);
}

void layoutPresentationViews(void *a1, void *a2, void *a3)
{
  v21 = a1;
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    [v21 bounds];
    [v6 setFrame:?];
  }

  v7 = [v5 view];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v5 childModalViewController];
  if (v16)
  {
    v17 = v16;
    do
    {
      v18 = [v17 presentationController];
      v19 = [v18 shouldPresentInFullscreen];

      if (v19)
      {
        break;
      }

      [v17 _updateControlledViewsToFrame:{v9, v11, v13, v15}];
      v20 = [v17 presentedViewController];

      v17 = v20;
    }

    while (v20);
  }
}

void layoutClippingView(void *a1, void *a2, int a3)
{
  v5 = a1;
  if (v5)
  {
    v41 = v5;
    v6 = [a2 _configuredFloatableView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v41 superview];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [v15 convertRect:v6 fromView:{v8, v10, v12, v14}];
    if (a3)
    {
      v28 = CGRectGetMaxX(*&v24) + 5.0;
      [v6 frame];
      v29 = CGRectGetWidth(v43) + 5.0;
      [v15 safeAreaInsets];
      v31 = v29 + v30;
      v32 = v28;
    }

    else
    {
      v33 = CGRectGetMinX(*&v24) + -5.0;
      if (v33 <= 0.0)
      {
        v32 = v33;
      }

      else
      {
        v32 = 0.0;
      }

      v44.origin.x = v17;
      v44.origin.y = v19;
      v44.size.width = v21;
      v44.size.height = v23;
      v28 = CGRectGetMaxX(v44) - v33;
      v45.origin.x = v17;
      v45.origin.y = v19;
      v45.size.width = v21;
      v45.size.height = v23;
      MaxX = CGRectGetMaxX(v45);
      [v6 frame];
      v35 = MaxX - CGRectGetWidth(v46) + -5.0;
      [v15 safeAreaInsets];
      v31 = v35 - v36;
    }

    v47.origin.x = v32;
    v47.origin.y = v19;
    v47.size.width = v21;
    v47.size.height = v23;
    v37 = CGRectGetWidth(v47) - v28;
    if (v37 >= 0.0)
    {
      v38 = v37;
    }

    else
    {
      v38 = 0.0;
    }

    [v41 setFrame:{v32, v19, v38, v23}];
    v48.origin.x = v17;
    v48.origin.y = v19;
    v48.size.width = v21;
    v48.size.height = v23;
    v39 = CGRectGetWidth(v48) - v31;
    v40 = v38 / v39;
    if (v39 <= 0.0)
    {
      v40 = 1.0;
    }

    [v41 setAlpha:{fmax(fmin(v40, 1.0), 0.0)}];
    [v15 layoutIfNeeded];

    v5 = v41;
  }
}

double totalObscuredPrimaryWidthForState(void *a1)
{
  v1 = a1;
  [v1 leadingDragOffset];
  v3 = v2;
  [v1 trailingDragOffset];
  v5 = v3 + v4;
  [v1 supplementaryDragOffset];
  v7 = v6;

  return v5 + v7;
}

void sub_18965FDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43)
{
  objc_destroyWeak(&a43);
  objc_destroyWeak((v43 + 56));
  objc_destroyWeak((v43 + 48));
  objc_destroyWeak((v44 - 152));
  objc_destroyWeak((v44 - 144));
  _Unwind_Resume(a1);
}

void sub_18965FF28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_189660824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a32);
  objc_destroyWeak((v32 - 128));
  _Unwind_Resume(a1);
}

id findTransitioningChildNavigationController(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 _isNavigationController])
  {
    v2 = v1;
    if ([v2 _isTransitioning])
    {
      goto LABEL_16;
    }
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v1 childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_6:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = findTransitioningChildNavigationController(*(*(&v11 + 1) + 8 * v7));
      if (v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:

    v9 = [v1 presentedViewController];
    v3 = v9;
    if (!v9)
    {
      v2 = 0;
      goto LABEL_15;
    }

    v8 = findTransitioningChildNavigationController(v9);
  }

  v2 = v8;
LABEL_15:

LABEL_16:

  return v2;
}

void __unspecifiedLayoutSideBySideViews_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  v21 = a2;
  v9 = a3;
  v10 = a4;
  if (v21)
  {
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 24);
    if (*(a1 + 64))
    {
      v13 = *(a1 + 56);
      *(v11 + 24) = v12 + a5;
    }

    else
    {
      *(v11 + 24) = v12 - a5;
      v12 = *(*(*(a1 + 48) + 8) + 24);
      v13 = *(a1 + 56);
    }

    if ([*(a1 + 32) containsObject:v21])
    {
      [*(a1 + 40) _keyboardAdjustment];
      v13 = v13 - v14;
    }

    v15 = v21;
    v16 = v9;
    v17 = v10;
    v18 = v17;
    if (v16)
    {
      v20 = *MEMORY[0x1E695EFF8];
      v19 = *(MEMORY[0x1E695EFF8] + 8);
      [v16 setFrame:{v12, 0.0, a5 + 0.0, v13}];
      v12 = v20;
      if (v18)
      {
LABEL_9:
        [v18 _updateControlledViewsToFrame:{v12, v19, a5, v13}];
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v19 = 0.0;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    [v15 setFrame:{v12, v19, a5, v13}];
    goto LABEL_12;
  }

LABEL_13:
}

void __layoutSideBySideViewsColumnStyle_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, double a5, double a6, double a7)
{
  v27 = a2;
  v13 = a3;
  v14 = a4;
  if (v27)
  {
    v15 = *(a1 + 64);
    if (a7 == 0.0 && (v15 & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) - a5;
    }

    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 24);
    v18 = *(a1 + 56);
    if (a7 == 0.0 && v15)
    {
      *(v16 + 24) = v17 + a5;
    }

    if ([*(a1 + 32) containsObject:v27])
    {
      [*(a1 + 40) _keyboardAdjustment];
      v18 = v18 - v19;
    }

    v20 = v27;
    v21 = v13;
    v22 = v14;
    v23 = v22;
    if (v21)
    {
      if (a6 >= 0.0)
      {
        v24 = a5 + a6;
        v25 = *MEMORY[0x1E695EFF8];
        v26 = *(MEMORY[0x1E695EFF8] + 8);
      }

      else
      {
        v24 = a5 - a6;
        v17 = v17 + a6;
        v25 = -a6;
        v26 = 0.0;
      }

      [v21 setFrame:{v17, 0.0, v24, v18}];
      v17 = v25;
      if (v23)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0.0;
      if (v22)
      {
LABEL_17:
        [v23 _updateControlledViewsToFrame:{v17, v26, a5, v18}];
        goto LABEL_18;
      }
    }

    [v20 setFrame:{v17, v26, a5, v18}];
LABEL_18:
  }
}

id _UIUpdateInputScopeDebugDescription(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    v2 = mach_absolute_time();
  }

  v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"Input Scope, groupChanged=%u (scope=%llu, group=%llu), sets:", *a1 != *(*(a1 + 8) + 16), *a1, *(*(a1 + 8) + 16)];
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      v7 = _UIUpdateInputSetDebugDescription(*(a1 + 56 + v6), v2);
      v8 = _UIUpdateDebugDescriptionIndented(v7, @"\n  - ", @"    ");
      [v4 appendString:v8];

      v6 -= 8;
    }

    while (v6);
  }

  v9 = _UIUpdateInputAggregateCacheDebugDescription((a1 + 16), v2);
  v10 = _UIUpdateDebugDescriptionIndented(v9, @"\n  ", @"  ");
  [v4 appendString:v10];

  return v4;
}

id _StringFromCollapsedState(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E7103B40;
  v4[1] = *off_1E7103B50;
  v1 = *(v4 + a1);
  for (i = 24; i != -8; i -= 8)
  {
  }

  return v1;
}

void sub_189665F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_18966CE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1896702B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

void sub_1896714AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189678974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_UISplitViewControllerDisplayModeDescription(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu (not defined as an enum value)", a1];
  }

  else
  {
    v2 = off_1E7103E60[a1];
  }

  return v2;
}

__CFString *_UISplitViewControllerStyleDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu (not defined as an enum value)", a1];
  }

  else
  {
    v2 = off_1E7103E98[a1];
  }

  return v2;
}

__CFString *_UISplitViewControllerSplitBehaviorDescription(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu (not defined as an enum value)", a1];
  }

  else
  {
    v2 = off_1E7103EB0[a1];
  }

  return v2;
}

uint64_t _UISplitViewControllerColumnIsVisibleForDisplayMode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UISplitViewControllerColumnIsVisibleForDisplayMode(UISplitViewControllerStyle, UISplitViewControllerColumn, UISplitViewControllerDisplayMode)"}];
    [v10 handleFailureInFunction:v11 file:@"UISplitViewControllerPanelImpl.m" lineNumber:402 description:@"Unexpected request for information from an unspecified-style UISplitViewController"];
  }

  v6 = a1 == 1;
  if (a2 == 1)
  {
    v6 = a1 == 2;
  }

  v7 = (a3 - 2) <= 1 && v6;
  if ((a3 - 4) >= 3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (a2 == 3)
  {
    v8 = 0;
  }

  if (a2 == 2)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

double minNonzeroPrimaryWidthInStates(void *a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if (a2)
        {
          [v9 leadingWidth];
        }

        else
        {
          [v9 trailingWidth];
        }

        if ((v10 < v7 || v7 == 0.0) && v10 > 0.0)
        {
          v7 = v10;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

double minNonzeroSupplementaryWidthInStateWithPrimaryWidthGetMatchingState(void *a1, int a2, void *a3, double a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v8)
  {
    v10 = 0;
    v12 = 0.0;
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v22;
  v12 = 0.0;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v21 + 1) + 8 * i);
      if (a2)
      {
        [v14 leadingWidth];
      }

      else
      {
        [v14 trailingWidth];
      }

      if (v15 == a4)
      {
        [v14 supplementaryWidth];
        v17 = v16;
        if (v16 > 0.0 && (v12 == 0.0 || v16 < v12))
        {
          v18 = v14;

          v12 = v17;
          v10 = v18;
        }

        else if (!v10 && v16 == 0.0 && v12 == 0.0)
        {
          v10 = v14;
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v9);
  if (a3)
  {
LABEL_21:
    v19 = v10;
    *a3 = v10;
  }

LABEL_22:

  return v12;
}

uint64_t _UISplitViewControllerColumnIsHiddenOrDimmedForDisplayMode(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _UISplitViewControllerColumnIsHiddenOrDimmedForDisplayMode(UISplitViewControllerStyle, UISplitViewControllerColumn, UISplitViewControllerDisplayMode)"}];
    [v10 handleFailureInFunction:v11 file:@"UISplitViewControllerPanelImpl.m" lineNumber:436 description:@"Unexpected request for information from an unspecified-style UISplitViewController"];
  }

  IsVisibleForDisplayMode = _UISplitViewControllerColumnIsVisibleForDisplayMode(a1, a2, a3);
  v7 = IsVisibleForDisplayMode ^ 1;
  v8 = 0x68u >> a3;
  if (a3 > 6)
  {
    LOBYTE(v8) = 0;
  }

  if (!IsVisibleForDisplayMode)
  {
    LOBYTE(v8) = 1;
  }

  if (a2 == 2)
  {
    v7 = v8;
  }

  return v7 & 1;
}

uint64_t _UISplitViewControllerWantsPickerBehaviors(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v2 _presentationSemanticContext];

  if (v3 == 2)
  {
    v4 = [v1 _ignoresSheetContext] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _UISplitViewControllerAutoHidesColumns(void *a1)
{
  v1 = a1;
  if (qword_1ED49D950 != -1)
  {
    dispatch_once(&qword_1ED49D950, &__block_literal_global_1561);
  }

  if (byte_1ED49D881)
  {
    v2 = 1;
  }

  else if (_MergedGlobals_1058 == 1)
  {
    v3 = [v1 _existingView];
    v4 = [v3 _window];
    v5 = [v4 windowScene];
    if ([v5 _enhancedWindowingEnabled])
    {
      v2 = _UISplitViewControllerWantsPickerBehaviors(v1) ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL _UIGetUISplitViewControllerChamoisResizeLogging()
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v0 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1 || (v3 = _UIInternalPreference_UISplitViewControllerChamoisResizeLogging, _UIInternalPreferencesRevisionVar == _UIInternalPreference_UISplitViewControllerChamoisResizeLogging))
  {
    v1 = 0;
  }

  else
  {
    do
    {
      v1 = v0 < v3;
      if (v0 < v3)
      {
        break;
      }

      _UIInternalPreferenceSync(v0, &_UIInternalPreference_UISplitViewControllerChamoisResizeLogging, @"UISplitViewControllerChamoisResizeLogging", _UIInternalPreferenceUpdateBool);
      v3 = _UIInternalPreference_UISplitViewControllerChamoisResizeLogging;
    }

    while (v0 != _UIInternalPreference_UISplitViewControllerChamoisResizeLogging);
  }

  return byte_1ED48AC84 && v1;
}

uint64_t _UISplitViewControllerAutoRevealsFullSidebar(void *a1)
{
  if (_UISplitViewControllerAutoHidesColumns(a1) && qword_1ED49D958 != -1)
  {
    dispatch_once(&qword_1ED49D958, &__block_literal_global_1594);
  }

  return byte_1ED49D882;
}

uint64_t _UISplitViewControllerAutoRevealsProximateSidebar(void *a1)
{
  if (_UISplitViewControllerAutoHidesColumns(a1) && qword_1ED49D960 != -1)
  {
    dispatch_once(&qword_1ED49D960, &__block_literal_global_1599);
  }

  return byte_1ED49D883;
}

uint64_t _nextVisibleColumnForResponderAfterColumn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 1)
  {
    goto LABEL_11;
  }

  if (a1 != 2)
  {
    return 999;
  }

  v5 = 1;
  if ((_UISplitViewControllerColumnIsVisibleForDisplayMode(a2, 1, a3) & 1) == 0)
  {
LABEL_11:
    if (_UISplitViewControllerColumnIsVisibleForDisplayMode(a2, 0, a3))
    {
      return 0;
    }

    else
    {
      return 999;
    }
  }

  return v5;
}

void sub_18968F41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1896905F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189697ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose((v48 - 232), 8);
  _Block_object_dispose((v48 - 184), 8);
  _Block_object_dispose((v48 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_18969A2B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1896A2828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1896A3934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_NSStringFromUIViewControllerAppearState(unsigned int a1)
{
  if (a1 > 3)
  {
    return &stru_1EFB14550;
  }

  else
  {
    return off_1E71044F8[a1];
  }
}

id UIViewControllerMissingInitialTraitCollection(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  _UIIsPrivateMainBundle();
  if (dyld_program_sdk_at_least())
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UITraitCollection *UIViewControllerMissingInitialTraitCollection(UIViewController *__strong, UIApplicationSystemVersion)"}];
    [v2 handleFailureInFunction:v3 file:@"UIViewController.m" lineNumber:2849 description:@"UIViewController is missing its initial trait collection populated during initialization. This is a serious bug, likely caused by accessing properties or methods on the view controller before calling a UIViewController initializer. View controller: %@", v1];

LABEL_3:
    goto LABEL_7;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v2 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v9 = v1;
      _os_log_fault_impl(&dword_188A29000, v2, OS_LOG_TYPE_FAULT, "UIViewController is missing its initial trait collection populated during initialization. This is a serious bug, likely caused by accessing properties or methods on the view controller before calling a UIViewController initializer. View controller: %@Set a symbolic breakpoint on UIViewControllerMissingInitialTraitCollection and check the backtrace to see what's causing this. This will become an assert in a future version.", buf, 0xCu);
    }

    goto LABEL_3;
  }

  v4 = *(__UILogGetCategoryCachedImpl("Assert", &UIViewControllerMissingInitialTraitCollection___s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v9 = v1;
    _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "UIViewController is missing its initial trait collection populated during initialization. This is a serious bug, likely caused by accessing properties or methods on the view controller before calling a UIViewController initializer. View controller: %@Set a symbolic breakpoint on UIViewControllerMissingInitialTraitCollection and check the backtrace to see what's causing this. This will become an assert in a future version.", buf, 0xCu);
  }

LABEL_7:
  v5 = [objc_opt_self() mainScreen];
  v6 = [v5 traitCollection];

  return v6;
}

void sub_1896B2FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1896B4784(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

id recursiveDescription(void *a1, char a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __recursiveDescription_block_invoke_2;
  v4[3] = &__block_descriptor_33_e43___NSString_28__0__UIViewController_8i16__20l;
  v5 = a2;
  v2 = _UIRecursiveDescription(a1, &__block_literal_global_2637, v4);

  return v2;
}

void sub_1896B6018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *_UIInterfaceOrientationDebugDescription(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%li)", a1];
  }

  else
  {
    v2 = off_1E7104518[a1];
  }

  return v2;
}

__CFString *_UIInterfaceOrientationMaskDebugDescription(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = v2;
    if ((v1 & 2) != 0)
    {
      [v2 addObject:@"portrait"];
      v1 &= ~2uLL;
      if ((v1 & 0x10) == 0)
      {
LABEL_4:
        if ((v1 & 8) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v1 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"landscapeLeft"];
    v1 &= ~0x10uLL;
    if ((v1 & 8) == 0)
    {
LABEL_5:
      if ((v1 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    [v3 addObject:@"landscapeRight"];
    v1 &= ~8uLL;
    if ((v1 & 4) == 0)
    {
LABEL_6:
      if (!v1)
      {
LABEL_8:
        v5 = [v3 componentsJoinedByString:{@", "}];

        goto LABEL_10;
      }

LABEL_7:
      v4 = _UIInterfaceOrientationDebugDescription(v1);
      [v3 addObject:v4];

      goto LABEL_8;
    }

LABEL_16:
    [v3 addObject:@"portraitUpsideDown"];
    v1 &= ~4uLL;
    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = @"none";
LABEL_10:

  return v5;
}

uint64_t _UIViewControllerIsBeingPresentedOrDismissesFullscreen(void *a1)
{
  v1 = a1;
  v2 = [v1 presentedViewController];
  v3 = [v2 isBeingDismissed];

  if (v3)
  {
    v4 = [v1 presentedViewController];
    v5 = [v4 modalPresentationStyle] == 0;
  }

  else if (([v1 isBeingPresented] & 1) != 0 || (objc_msgSend(v1, "presentingViewController"), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v5 = [v1 modalPresentationStyle] == 0;
  }

  return v5;
}

void sub_1896C249C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

float adjustOffsetAndDimension(float *a1, float *a2, int a3, float result, float a5)
{
  if (a3)
  {
    v5 = a5 - result;
    if ((a5 - result) != 0.0)
    {
      v6 = *a1;
      v7 = *a2;
      if (a3 > 3)
      {
        if (a3 == 4)
        {
          v9 = v6 + (v5 * -0.5);
        }

        else if (a3 == 6)
        {
          v9 = v6 - (v5 * 0.5);
          v18 = v7 == 0.0 && v6 == result;
          v19 = (v5 * 0.5) + v7;
          v7 = v5 + v7;
          if (!v18)
          {
            v7 = v19;
          }
        }

        else
        {
          v13 = result == 0.0;
          v14 = a5 / result;
          v15 = v14 * v6;
          v16 = v14 * v7;
          v17 = v7 + a5;
          if (v13)
          {
            v15 = *a1;
          }

          if (v13)
          {
            v16 = v17;
          }

          if (a3 == 7)
          {
            v9 = v15;
          }

          else
          {
            v9 = *a1;
          }

          if (a3 == 7)
          {
            v7 = v16;
          }
        }
      }

      else
      {
        v8 = v5 * 0.5;
        v9 = (v5 * 0.5) + v6;
        v10 = v5 + v7;
        v11 = v8 + v7;
        if (v6 == 0.0)
        {
          v12 = *a1;
        }

        else
        {
          v12 = v9;
        }

        if (v6 == 0.0)
        {
          v11 = v10;
        }

        if (a3 != 3)
        {
          v12 = *a1;
          v11 = *a2;
        }

        if (a3 == 2)
        {
          v11 = v10;
        }

        else
        {
          v6 = v12;
        }

        if (a3 != 1)
        {
          v9 = v6;
          v7 = v11;
        }
      }

      *a1 = roundf(v9);
      result = roundf(v7);
      *a2 = result;
    }
  }

  return result;
}

void sub_1896C4F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1896C603C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

id __recursiveDescription_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 childModalViewController];
  v4 = [v2 childViewControllers];
  if (v3)
  {
    v5 = [v2 childModalViewController];
    v6 = [v4 arrayByAddingObject:v5];

    v4 = v6;
  }

  return v4;
}

id __recursiveDescription_block_invoke_2(uint64_t a1, void *a2, unsigned int a3, void *a4)
{
  v7 = a2;
  v8 = [(UIViewController *)v7 _parentViewController];
  if (v8)
  {

LABEL_4:
    v9 = [(UIViewController *)v7 _descriptionForPrintingHierarchyIncludingInsets:?];
    goto LABEL_5;
  }

  if ([v7 _isRootViewController])
  {
    goto LABEL_4;
  }

  v11 = objc_opt_new();
  if (a3 >= 2)
  {
    v12 = a3 - 1;
    do
    {
      [v11 appendString:@"   | "];
      --v12;
    }

    while (v12);
  }

  [v11 appendString:@"   + "];
  v13 = v11;
  *a4 = v11;
  v14 = MEMORY[0x1E696AD60];
  v15 = [(UIViewController *)v7 _descriptionForPrintingHierarchyIncludingInsets:?];
  v16 = [v7 presentingViewController];
  v17 = [v16 _presentationController];
  v18 = [v17 _descriptionForPrintingViewControllerHierarchy];
  v9 = [v14 stringWithFormat:@"%@, presented with: %@", v15, v18];

LABEL_5:

  return v9;
}

void sub_1896CAC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_1896D00B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1896D1B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1896D439C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak(&STACK[0x2C0]);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Unwind_Resume(a1);
}

void sub_1896D92D4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_1896DB1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

UIVisualEffectView *_UIContextMenuConfigureSeparatorView(void *a1)
{
  v1 = a1;
  v2 = +[UIDevice currentDevice];
  v3 = _UIContextMenuGetPlatformMetrics([v2 userInterfaceIdiom]);

  v4 = [UIVisualEffectView alloc];
  v5 = [v3 itemSeparatorBackgroundEffect];
  v6 = [(UIVisualEffectView *)v4 initWithEffect:v5];

  v7 = [v3 itemSeparatorColor];
  v8 = [(UIVisualEffectView *)v6 contentView];
  [v8 setBackgroundColor:v7];

  v9 = [(UIVisualEffectView *)v6 contentView];
  v10 = [v9 layer];
  [v10 setAllowsEdgeAntialiasing:1];

  v11 = [(UIVisualEffectView *)v6 contentView];
  [v11 setClipsToBounds:0];

  [v1 bounds];
  [(UIView *)v6 setFrame:?];
  [(UIView *)v6 setAutoresizingMask:18];
  [v1 addSubview:v6];

  return v6;
}

void sub_1896E25FC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x348], 8);
  _Block_object_dispose(&STACK[0x368], 8);
  _Block_object_dispose(&STACK[0x388], 8);
  _Block_object_dispose(&STACK[0x3A8], 8);
  _Block_object_dispose(&STACK[0x3C8], 8);
  _Block_object_dispose(&STACK[0x408], 8);
  _Block_object_dispose(&STACK[0x448], 8);
  _Block_object_dispose(&STACK[0x468], 8);
  _Block_object_dispose(&STACK[0x4A8], 8);
  _Block_object_dispose(&STACK[0x4E8], 8);
  _Block_object_dispose(&STACK[0x528], 8);
  _Block_object_dispose(&STACK[0x568], 8);
  _Block_object_dispose(&STACK[0x5A8], 8);
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

void _UIMenuLeafKeyboardShortcutHardwareKeyboardLayoutChanged()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = +[UIDevice currentDevice];
  if ([v0 _isHardwareKeyboardAvailable])
  {
    v1 = [UIApp _hardwareKeyboard:0];

    if (v1)
    {
      [UIApp _hardwareKeyboard:0];
      v2 = GSKeyboardGetLayout();
      goto LABEL_6;
    }
  }

  else
  {
  }

  v2 = @"US";
LABEL_6:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [&unk_1EFE2BCB0 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(&unk_1EFE2BCB0);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [MEMORY[0x1E69D9658] shortcutWithKeyEquivalent:v7 modifierFlags:0];
        v9 = [MEMORY[0x1E69D9658] localizedKeyboardShortcut:v8 forKeyboardLayout:v2];
        v10 = [v9 keyEquivalent];
        v11 = v10;
        if (v7)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          v13 = v7;
          v14 = _UIMenuLeafKeyboardShortcutGetLocalizedKeyEquivalentDict();
          [v14 setObject:v11 forKeyedSubscript:v13];
        }
      }

      v4 = [&unk_1EFE2BCB0 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

void sub_1896E8ABC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_1896E8D90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1896E9008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(v18 + 7);
  objc_destroyWeak(v18 + 6);
  objc_destroyWeak(v18 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak((v19 - 64));
  objc_destroyWeak((v19 - 56));
  _Unwind_Resume(a1);
}

void sub_1896EB528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

CGAffineTransform *_randomPlatterTransform(uint64_t a1, int a2, int a3, uint64_t a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  *&v42[16] = a11;
  *&v42[24] = a12;
  *v42 = a9;
  *&v42[8] = a10;
  v19 = MEMORY[0x1E695EFD0];
  v20 = *(MEMORY[0x1E695EFD0] + 16);
  *a1 = *MEMORY[0x1E695EFD0];
  *(a1 + 16) = v20;
  *(a1 + 32) = *(v19 + 32);
  if (a2)
  {
    v21 = arc4random();
    v22 = v21 / 4294967300.0 * 8.0 - (1.0 - v21 / 4294967300.0) * 8.0;
    v23 = arc4random();
    CGAffineTransformMakeTranslation(a1, v22, v23 / 4294967300.0 * 8.0 - (1.0 - v23 / 4294967300.0) * 8.0);
  }

  v45.origin.x = a5;
  v45.origin.y = a6;
  v45.size.width = a7;
  v45.size.height = a8;
  Width = CGRectGetWidth(v45);
  v25 = fmin(asin(30.0 / Width * 0.5), 0.104719755);
  v26 = arc4random();
  v27 = *(a1 + 16);
  *&v43.a = *a1;
  *&v43.c = v27;
  *&v43.tx = *(a1 + 32);
  result = CGAffineTransformRotate(&v44, &v43, v26 / 4294967300.0 * v25 - (1.0 - v26 / 4294967300.0) * v25);
  v29 = *&v44.c;
  *a1 = *&v44.a;
  *(a1 + 16) = v29;
  *(a1 + 32) = *&v44.tx;
  if (a3)
  {
    v30 = _UIContextMenuGetPlatformMetrics(a4);
    [v30 maxLiftScale];
    v32 = v31;
    [v30 maxLiftScaleUpPoints];
    v34 = v33;
    v46.origin.x = a5;
    v46.origin.y = a6;
    v46.size.width = a7;
    v46.size.height = a8;
    v35 = CGRectGetWidth(v46);
    v47.origin.x = a5;
    v47.origin.y = a6;
    v47.size.width = a7;
    v47.size.height = a8;
    Height = CGRectGetHeight(v47);
    if (v35 >= Height)
    {
      v37 = v35;
    }

    else
    {
      v37 = Height;
    }

    v38 = CGRectGetWidth(*v42) / v35;
    if (v38 >= v32)
    {
      v38 = v32;
    }

    if ((v34 + v37) / v37 >= v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = (v34 + v37) / v37;
    }

    v40 = *(a1 + 16);
    *&v43.a = *a1;
    *&v43.c = v40;
    *&v43.tx = *(a1 + 32);
    result = CGAffineTransformScale(&v44, &v43, v39, v39);
    v41 = *&v44.c;
    *a1 = *&v44.a;
    *(a1 + 16) = v41;
    *(a1 + 32) = *&v44.tx;
  }

  return result;
}

uint64_t _UILayerAncestorsHaveAllBeenCommitted_0(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 hasBeenCommitted])
    {
      v3 = [v2 superlayer];
      HaveAllBeenCommitted_0 = _UILayerAncestorsHaveAllBeenCommitted_0();
    }

    else
    {
      HaveAllBeenCommitted_0 = 0;
    }
  }

  else
  {
    HaveAllBeenCommitted_0 = 1;
  }

  return HaveAllBeenCommitted_0;
}

void sub_1896F4448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1896F8578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _GetScrubberThumbImage()
{
  v0 = _GetScrubberThumbImage___image;
  if (!_GetScrubberThumbImage___image)
  {
    v1 = _UIImageWithName(@"UIMovieScrubberThumb.png");
    v2 = _GetScrubberThumbImage___image;
    _GetScrubberThumbImage___image = v1;

    v0 = _GetScrubberThumbImage___image;
  }

  return v0;
}

uint64_t IsInNavigationBar(void *a1)
{
  v1 = [a1 superview];
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 1;
    }

    else
    {
      v2 = IsInNavigationBar(v1);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void _RemoveAllAnimationsForView(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 layer];
  [v2 removeAllAnimations];

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [v1 subviews];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        _RemoveAllAnimationsForView(*(*(&v8 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

id __CopyProgressStringForSeconds(int a1, int a2, int a3)
{
  if (a1)
  {
    a3 = 1;
  }

  if (a1 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = -a1;
  }

  if (a3)
  {
    v6 = &stru_1EFB14550;
  }

  else
  {
    v6 = @"-";
  }

  if (a1 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"-";
  }

  v8 = v5 % 0x3C;
  v9 = v5 / 0x3C - 60 * (((143165577 * (v5 / 0x3C)) >> 32) >> 1);
  v10 = v5 - v8 - 60 * v9;
  v11 = (v10 / 3600);
  v12 = v10 + 3599;
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (a2)
  {
    if (v12 >= 0x1C1F)
    {
      v14 = [v13 initWithFormat:@"%@%02d:%02d:%02d", v7, v11, v9, v8];
    }

    else
    {
      v14 = [v13 initWithFormat:@"%@%02d:%02d", v7, v9, v8, v16];
    }
  }

  else if (v12 >= 0x1C1F)
  {
    v14 = [v13 initWithFormat:@"%@%d:%02d:%02d", v7, v11, v9, v8];
  }

  else
  {
    v14 = [v13 initWithFormat:@"%@%d:%02d", v7, v9, v8, v16];
  }

  return v14;
}

id EnclosingNavigationBar(void *a1)
{
  v1 = [a1 superview];
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = EnclosingNavigationBar(v1);
    }

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id _UIUpdateInputStateDebugDescription(unsigned int *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    mach_absolute_time();
  }

  v3 = MEMORY[0x1E696AEC0];
  *__str = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *a1;
  UCTimeToSeconds();
  v6 = v5;
  UCTimeToSeconds();
  v8 = v7;
  snprintf(__str, 0x30uLL, "%.06f(%+.06f)s", v6, v6 - v7);
  *v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  UCTimeToSeconds();
  snprintf(v12, 0x30uLL, "%.06f(%+.06f)s", v9, v9 - v8);
  v10 = [v3 stringWithFormat:@"mode=%u, earliestModelTime=%s, latestModelTime=%s", v4, __str, v12];

  return v10;
}

id _UIUpdateInputExtentDebugDescription(unsigned int *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    mach_absolute_time();
  }

  v3 = MEMORY[0x1E696AEC0];
  *__str = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *a1;
  UCTimeToSeconds();
  v6 = v5;
  UCTimeToSeconds();
  snprintf(__str, 0x30uLL, "%.06f(%+.06f)s", v6, v6 - v7);
  v8 = [v3 stringWithFormat:@"mode=%u, earliestModelTime=%s", v4, __str];

  return v8;
}

id _UIUpdateInputDebugDescription(unsigned int *a1, uint64_t a2)
{
  v2 = a2;
  v40 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v2 = mach_absolute_time();
  }

  v32 = 0;
  v33 = 0;
  v4 = *a1;
  if (v4 == 2)
  {
    v6 = *(a1 + 1);
    v7 = *(a1 + 5);
    v8 = v6 + *(a1 + 4);
    v4 = 2;
    v32 = 2;
    v33 = v8;
    v5 = v7 + v6;
  }

  else
  {
    v5 = 0;
    if (v4)
    {
      v32 = *a1;
    }

    else
    {
      v4 = 0;
    }
  }

  v31[0] = v4;
  v31[1] = v5;
  v9 = MEMORY[0x1E696AEC0];
  v10 = *(a1 + 4);
  *__str = 0u;
  v38 = 0u;
  v39 = 0u;
  if (v10 > 0x7999999999999999)
  {
    v11 = "max-%.06fs";
  }

  else
  {
    v11 = "%.06fs";
  }

  if (v10 < 0x8666666666666666)
  {
    v12 = "min+%.06fs";
  }

  else
  {
    v12 = v11;
  }

  UCTimeToSeconds();
  snprintf(__str, 0x30uLL, v12, v13);
  v14 = *(a1 + 5);
  *v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  if (v14 > 0x7999999999999999)
  {
    v15 = "max-%.06fs";
  }

  else
  {
    v15 = "%.06fs";
  }

  if (v14 < 0x8666666666666666)
  {
    v16 = "min+%.06fs";
  }

  else
  {
    v16 = v15;
  }

  UCTimeToSeconds();
  snprintf(v34, 0x30uLL, v16, v17);
  v18 = [v9 stringWithFormat:@"{normal=%s, lowLatency=%s}", __str, v34];
  v29 = *(a1 + 11);
  v30 = MEMORY[0x1E696AEC0];
  v19 = _UIUpdateInputStateDebugDescription(a1, v2);
  v20 = [v19 UTF8String];
  v21 = *(a1 + 9) != 0;
  v22 = a1[6];
  v23 = [v18 UTF8String];
  v24 = _UIUpdateInputExtentDebugDescription(&v32, v2);
  v25 = [v24 UTF8String];
  v26 = _UIUpdateInputExtentDebugDescription(v31, v2);
  v27 = [v30 stringWithFormat:@"Input, %s (%s, flags=0x%x, readyCallback=%u, alignments=%s), extents:\n - normal: %s\n - lowLatency: %s", v29, v20, v22, v21, v23, v25, objc_msgSend(v26, "UTF8String")];

  return v27;
}

void UIRefreshControlReceivedOffscreenBeginRefreshing(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (dyld_program_sdk_at_least())
  {
    v2 = *(__UILogGetCategoryCachedImpl("RefreshControl", &qword_1ED499200) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v1;
      v3 = "A UIRefreshControl received offscreen beginRefreshing. Ignored. Break on UIRefreshControlReceivedOffscreenBeginRefreshing to debug. %@";
LABEL_6:
      _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, v3, &v4, 0xCu);
    }
  }

  else
  {
    v2 = *(__UILogGetCategoryCachedImpl("RefreshControl", &qword_1ED499208) + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v1;
      v3 = "A UIRefreshControl received offscreen beginRefreshing. This request will be ignored in a future release. Break on UIRefreshControlReceivedOffscreenBeginRefreshing to debug %@";
      goto LABEL_6;
    }
  }
}

void sub_189709D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id UISegmentedControlSegmentContentView(void *a1)
{
  v1 = a1;
  v2 = v1[61];
  if (v2)
  {
    v3 = v1[78];
    if ((v3 & 0x80000000) != 0)
    {
      v5 = [v2 contentView];
    }

    else
    {
      if ((v3 & 0x400000000) != 0)
      {
        v4 = -2032;
      }

      else
      {
        v4 = -2031;
      }

      v5 = [v1 viewWithTag:v4];
    }
  }

  else
  {
    v5 = v1;
  }

  v6 = v5;

  return v6;
}

_UIPortalView *_itemViewFromItem(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v10 = [v9 view];

  if (v10)
  {
    v11 = [_UIPortalView alloc];
    v12 = [v9 view];
    v13 = [(_UIPortalView *)v11 initWithSourceView:v12];

    [(UIView *)v13 setUserInteractionEnabled:0];
  }

  else
  {
    v14 = [v9 icon];

    if (v14)
    {
      v15 = [UIImageView alloc];
      v16 = [v9 icon];
      v13 = [(UIImageView *)v15 initWithImage:v16];

      if (_UISolariumEnabled())
      {
        v17 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD20];
        v18 = [UIImageSymbolConfiguration configurationWithFont:v17 scale:3];
        [(_UIPortalView *)v13 setPreferredSymbolConfiguration:v18];
      }

      else
      {
        v17 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleBody" scale:3];
        [(_UIPortalView *)v13 setPreferredSymbolConfiguration:v17];
      }

      [(_UIPortalView *)v13 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
      v21 = [v9 identifier];
      [(_UIPortalView *)v13 _setSuppressPixelAlignment:v21 != 0];
    }

    else
    {
      v13 = objc_opt_new();
      v19 = [v9 name];
      [(_UIPortalView *)v13 setText:v19];

      if (_UISolariumEnabled())
      {
        v20 = [off_1E70ECC18 _preferredFontForTextStyle:@"UICTFontTextStyleBody" weight:*off_1E70ECD20];
        [(_UIPortalView *)v13 setFont:v20];
      }

      [(_UIPortalView *)v13 _setTextColorFollowsTintColor:1];
    }

    [(UIView *)v13 sizeToFit];
  }

  v22 = [v9 tintColor];

  if (v22)
  {
    v23 = [v9 tintColor];
    [(UIView *)v13 setTintColor:v23];
  }

  else if (_UISolariumEnabled())
  {
    [(UIView *)v13 _setMonochromaticTreatment:2];
    [(UIView *)v13 _setEnableMonochromaticTreatment:1];
  }

  _updateSourceCenterForItemView(v9, v13, a2, a3, a4, a5);
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v24 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar >= 1)
  {
    v26 = _UIInternalPreference_BarCustomizationDebugEnabled;
    if (_UIInternalPreferencesRevisionVar != _UIInternalPreference_BarCustomizationDebugEnabled)
    {
      while (v24 >= v26)
      {
        _UIInternalPreferenceSync(v24, &_UIInternalPreference_BarCustomizationDebugEnabled, @"BarCustomizationDebugEnabled", _UIInternalPreferenceUpdateBool);
        v26 = _UIInternalPreference_BarCustomizationDebugEnabled;
        if (v24 == _UIInternalPreference_BarCustomizationDebugEnabled)
        {
          goto LABEL_19;
        }
      }

      if (byte_1EA95E154)
      {
        v27 = [UIColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.2];
        [(UIView *)v13 setBackgroundColor:v27];
      }
    }
  }

LABEL_19:

  return v13;
}

void _updateSourceCenterForItemView(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v22 = a1;
  v11 = a2;
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  if (!CGRectIsEmpty(v24))
  {
    [v11 _getSourceCenter];
    if (v13 == *MEMORY[0x1E695EFF8] && v12 == *(MEMORY[0x1E695EFF8] + 8))
    {
      [v22 _sourceFrameInContainer:0];
      v17 = v16 + v15 * 0.5;
      v20 = v19 + v18 * 0.5;
      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      v21 = v17 - CGRectGetMinX(v25);
      v26.origin.x = a3;
      v26.origin.y = a4;
      v26.size.width = a5;
      v26.size.height = a6;
      [v11 _setSourceCenter:{v21, v20 - CGRectGetMinY(v26)}];
    }
  }
}

void sub_189724DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id MutableReusableViewMapDescription(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v3 = [a1 allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 _ui_shortDescription];
        v12 = [a1 objectForKeyedSubscript:v10];
        [v2 appendFormat:@"\n\t%@ = %@;", v11, v12, v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [v2 appendString:@"\n}"];

  return v2;
}

id StringToMutableReusableViewMapMapDescription(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v3 = [a1 allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [a1 objectForKeyedSubscript:v9];
        v11 = MutableReusableViewMapDescription(v10);
        v12 = [v11 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
        [v2 appendFormat:@"\n\t%@ = %@;", v9, v12];
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  [v2 appendString:@"\n}"];

  return v2;
}

void sub_18972CB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18972D568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id location, id a41)
{
  objc_destroyWeak((v41 + 48));
  objc_destroyWeak((v41 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a41);
  _Unwind_Resume(a1);
}

void sub_18972D6C0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18972D93C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18972E7E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_18972F714(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_18972F904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18972FB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18972FD58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1897303A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1897305C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1897308E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1897341F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 224));
  _Unwind_Resume(a1);
}

void sub_189736154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_189736E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _UIActionSliderTrackMaskPath(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = CGRectGetHeight(*&a1) * 0.5;
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  if (CGRectGetWidth(v12) >= 115.0)
  {
    [UIBezierPath _bezierPathWithPillRect:a1 + 0.0 cornerRadius:a2 + -2.0, a3, a4 + 4.0, v8];
  }

  else
  {
    [UIBezierPath bezierPathWithRoundedRect:-1 byRoundingCorners:a1 cornerRadii:a2, a3, a4, v8, v8];
  }
  v9 = ;

  return v9;
}

void sub_18973CA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak(&a14);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *_UIRefreshControlStateDescription(unint64_t a1)
{
  if (a1 >= 7)
  {
    v2 = [@"unknown state" stringByAppendingFormat:@": %lu", a1];
  }

  else
  {
    v2 = off_1E7105488[a1];
  }

  return v2;
}

id _UIDictationConnectionLog()
{
  if (_UIDictationConnectionLog_onceToken != -1)
  {
    dispatch_once(&_UIDictationConnectionLog_onceToken, &__block_literal_global_171);
  }

  v1 = _UIDictationConnectionLog_log;

  return v1;
}

id _UIDictationControllerLog()
{
  if (_UIDictationControllerLog_onceToken != -1)
  {
    dispatch_once(&_UIDictationControllerLog_onceToken, &__block_literal_global_3_0);
  }

  v1 = _UIDictationControllerLog_log;

  return v1;
}

id _UIDictationControllerUndoRedoLog()
{
  if (_UIDictationControllerUndoRedoLog_onceToken != -1)
  {
    dispatch_once(&_UIDictationControllerUndoRedoLog_onceToken, &__block_literal_global_6_4);
  }

  v1 = _UIDictationControllerUndoRedoLog_log;

  return v1;
}

BOOL CheckSandboxAccess(void *a1)
{
  v1 = [a1 path];
  [v1 fileSystemRepresentation];
  v2 = sandbox_check() == 0;

  return v2;
}

void WarnSetterIsNoop(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __WarnSetterIsNoop_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (WarnSetterIsNoop_onceToken != -1)
  {
    dispatch_once(&WarnSetterIsNoop_onceToken, block);
  }
}

void sub_1897405B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189740720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1897408A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189740CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189741380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFPIsFileProviderBookmarkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FileProviderLibrary();
  result = dlsym(v2, "FPIsFileProviderBookmark");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFPIsFileProviderBookmarkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *FileProviderLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __FileProviderLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71054F0;
    v6 = 0;
    FileProviderLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = FileProviderLibraryCore_frameworkLibrary;
  if (!FileProviderLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"NSURL+UIDocumentPicker.m" lineNumber:26 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __FileProviderLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FileProviderLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getFPMarkAsFileProviderBookmarkSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = FileProviderLibrary();
  result = dlsym(v2, "FPMarkAsFileProviderBookmark");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFPMarkAsFileProviderBookmarkSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getBRIsURLInMobileDocumentsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudDocsLibrary();
  result = dlsym(v2, "BRIsURLInMobileDocuments");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBRIsURLInMobileDocumentsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CloudDocsLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudDocsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudDocsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7105508;
    v6 = 0;
    CloudDocsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CloudDocsLibraryCore_frameworkLibrary;
  if (!CloudDocsLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudDocsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"NSURL+UIDocumentPicker.m" lineNumber:31 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CloudDocsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CloudDocsLibraryCore_frameworkLibrary = result;
  return result;
}

void __getBRContainerClass_block_invoke(uint64_t a1)
{
  CloudDocsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BRContainer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1ED49DA08 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getBRContainerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"NSURL+UIDocumentPicker.m" lineNumber:34 description:{@"Unable to find class %s", "BRContainer"}];

    __break(1u);
  }
}

void *__getBRUbiquitousDefaultContainerIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudDocsLibrary();
  result = dlsym(v2, "BRUbiquitousDefaultContainerID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED49DA10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_189742DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBRGetCloudEnabledStatusSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudDocsLibrary_0();
  result = dlsym(v2, "BRGetCloudEnabledStatus");
  *(*(*(a1 + 32) + 8) + 24) = result;
  _MergedGlobals_1_4 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *CloudDocsLibrary_0()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!CloudDocsLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __CloudDocsLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E71055C0;
    v6 = 0;
    CloudDocsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = CloudDocsLibraryCore_frameworkLibrary_0;
  if (!CloudDocsLibraryCore_frameworkLibrary_0)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CloudDocsLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"UIDocumentMenuViewController.m" lineNumber:43 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __CloudDocsLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CloudDocsLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getBRICloudContainerIdentifiersEntitlementSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CloudDocsLibrary_0();
  result = dlsym(v2, "BRICloudContainerIdentifiersEntitlement");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED499218 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getDOCConfigurationClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = _MergedGlobals_1_5;
  v7 = _MergedGlobals_1_5;
  if (!_MergedGlobals_1_5)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDOCConfigurationClass_block_invoke;
    v3[3] = &unk_1E70F2F20;
    v3[4] = &v4;
    __getDOCConfigurationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_189745258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_189745A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDOCConfigurationClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499228)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DocumentManagerCoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7105618;
    v8 = 0;
    qword_1ED499228 = _sl_dlopen();
  }

  if (!qword_1ED499228)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DocumentManagerCoreLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDocumentPickerViewController.m" lineNumber:44 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("DOCConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getDOCConfigurationClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDocumentPickerViewController.m" lineNumber:45 description:{@"Unable to find class %s", "DOCConfiguration"}];

LABEL_10:
    __break(1u);
  }

  _MergedGlobals_1_5 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DocumentManagerCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED499228 = result;
  return result;
}

Class __getUIDocumentBrowserViewControllerClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED499238)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __DocumentManagerLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7105630;
    v8 = 0;
    qword_1ED499238 = _sl_dlopen();
  }

  if (!qword_1ED499238)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *DocumentManagerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"UIDocumentPickerViewController.m" lineNumber:41 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("UIDocumentBrowserViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUIDocumentBrowserViewControllerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"UIDocumentPickerViewController.m" lineNumber:42 description:{@"Unable to find class %s", "UIDocumentBrowserViewController"}];

LABEL_10:
    __break(1u);
  }

  qword_1ED499230 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DocumentManagerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED499238 = result;
  return result;
}

void *__getFPDocumentURLFromBookmarkableStringSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!qword_1ED49A048)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __FileProviderLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7105670;
    v7 = 0;
    qword_1ED49A048 = _sl_dlopen();
  }

  v2 = qword_1ED49A048;
  if (!qword_1ED49A048)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FileProviderLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"_UIDocumentPickerRemoteViewController.m" lineNumber:31 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "FPDocumentURLFromBookmarkableString");
  *(*(a1[4] + 8) + 24) = result;
  _MergedGlobals_3_7 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __FileProviderLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  qword_1ED49A048 = result;
  return result;
}

void sub_18974801C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_189748C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _appleDoublePathForRealPath_DotUnderscore(void *a1)
{
  v1 = a1;
  v2 = [v1 lastPathComponent];
  v3 = [@"._" stringByAppendingString:v2];

  v4 = [v1 stringByDeletingLastPathComponent];

  v5 = [v4 stringByAppendingPathComponent:v3];

  return v5;
}

uint64_t _isPossibleAppleDoublePath_MACOSX(void *a1)
{
  v1 = [a1 stringByStandardizingPath];
  v2 = [v1 pathComponents];

  v3 = [v2 firstObject];
  if (![v3 isEqualToString:@"/"])
  {

    goto LABEL_5;
  }

  v4 = [v2 count];

  if (v4 < 2)
  {
LABEL_5:
    v5 = [v2 firstObject];
    goto LABEL_6;
  }

  v5 = [v2 objectAtIndexedSubscript:1];
LABEL_6:
  v6 = v5;
  v7 = [v5 isEqualToString:@"__MACOSX"];

  return v7;
}

uint64_t _isPossibleAppleDoublePath_DotUnderscore(void *a1)
{
  v1 = [a1 stringByStandardizingPath];
  v2 = [v1 lastPathComponent];
  v3 = [v2 hasPrefix:@"._"];

  return v3;
}

void _UIAppleDoubleMergeAppleDoubleItemsIntoRealFiles(void *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v3;
  v5 = [v3 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v44;
    v41 = *MEMORY[0x1E696A578];
    v42 = *MEMORY[0x1E696A798];
    v40 = *MEMORY[0x1E696AA08];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        v10 = [v9 pathInArchive];
        v11 = [v4 stringByAppendingPathComponent:v10];

        v12 = [v9 pathToAppleDoubleRealFileCounterpart];
        v13 = [v4 stringByAppendingPathComponent:v12];

        v14 = v11;
        v15 = v13;
        if ([v15 length] || !_isPossibleAppleDoublePath_MACOSX(v14) || (LOBYTE(v48[0]) = 0, v16 = MEMORY[0x1E696AC08], v17 = v14, objc_msgSend(v16, "defaultManager"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "fileExistsAtPath:isDirectory:", v17, v48), v17, v20 = v48[0], v18, !v19) || (v20 & 1) == 0)
        {
          v21 = copyfile([v14 UTF8String], objc_msgSend(v15, "UTF8String"), 0, 0x8C0005u);
          if (v21)
          {
            v22 = [MEMORY[0x1E696ABC0] errorWithDomain:v42 code:v21 userInfo:0];
            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to copy attributes stored in AppleDouble file %@ into %@", v14, v15];
            v24 = MEMORY[0x1E696ABC0];
            *&v49 = v41;
            *(&v49 + 1) = v40;
            v48[0] = v23;
            v48[1] = v22;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v49 count:2];
            v26 = [v24 errorWithDomain:@"_UIArchiveErrorDomain" code:-1 userInfo:v25];
          }

          v27 = [MEMORY[0x1E696AC08] defaultManager];
          [v27 removeItemAtPath:v14 error:0];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
    }

    while (v6);
  }

  v28 = [v4 stringByAppendingPathComponent:@"__MACOSX"];
  v29 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = [v29 enumeratorAtPath:v28];
  v31 = [v30 allObjects];

  v32 = [v31 sortedArrayUsingComparator:&__block_literal_global_37];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v33 = v32;
  v34 = [v33 countByEnumeratingWithState:&v49 objects:v48 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v50;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v50 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = [v28 stringByAppendingPathComponent:*(*(&v49 + 1) + 8 * j)];
        _removeIfEmptyDirectoryAtAbsolutePath(v38);
      }

      v35 = [v33 countByEnumeratingWithState:&v49 objects:v48 count:16];
    }

    while (v35);
  }

  _removeIfEmptyDirectoryAtAbsolutePath(v28);
}

BOOL ___removeEmptyAppleDoubleDirectoriesInRootDirectory_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 length];
  v6 = [v4 length];

  return v5 < v6;
}

int *_removeIfEmptyDirectoryAtAbsolutePath(void *a1)
{
  result = rmdir([a1 fileSystemRepresentation]);
  if (result)
  {

    return __error();
  }

  return result;
}

void ui_archive_read_new()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getarchive_read_newSymbolLoc_ptr;
  v7 = getarchive_read_newSymbolLoc_ptr;
  if (!getarchive_read_newSymbolLoc_ptr)
  {
    v1 = libarchiveLibrary();
    v5[3] = dlsym(v1, "archive_read_new");
    getarchive_read_newSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"struct ui_archive *__ui_archive_read_new(void)"];
    [v2 handleFailureInFunction:v3 file:@"_UILibArchiveSoftLinking.m" lineNumber:15 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189749A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_read_support_compression_all(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_read_support_compression_allSymbolLoc_ptr;
  v9 = getarchive_read_support_compression_allSymbolLoc_ptr;
  if (!getarchive_read_support_compression_allSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_read_support_compression_all");
    getarchive_read_support_compression_allSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __ui_archive_read_support_compression_all(struct ui_archive *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:16 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189749BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_read_support_format_all(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_read_support_format_allSymbolLoc_ptr;
  v9 = getarchive_read_support_format_allSymbolLoc_ptr;
  if (!getarchive_read_support_format_allSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_read_support_format_all");
    getarchive_read_support_format_allSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __ui_archive_read_support_format_all(struct ui_archive *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:17 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189749D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_read_open_filename(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 fileSystemRepresentation];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v7 = getarchive_read_open_filenameSymbolLoc_ptr;
  v14 = getarchive_read_open_filenameSymbolLoc_ptr;
  if (!getarchive_read_open_filenameSymbolLoc_ptr)
  {
    v8 = libarchiveLibrary();
    v12[3] = dlsym(v8, "archive_read_open_filename");
    getarchive_read_open_filenameSymbolLoc_ptr = v12[3];
    v7 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (v7)
  {
    v7(a1, v6, a3);
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int __ui_archive_read_open_filename(struct ui_archive *, const char *, size_t)"}];
    [v9 handleFailureInFunction:v10 file:@"_UILibArchiveSoftLinking.m" lineNumber:18 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_189749EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_read_close(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_read_closeSymbolLoc_ptr;
  v9 = getarchive_read_closeSymbolLoc_ptr;
  if (!getarchive_read_closeSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_read_close");
    getarchive_read_closeSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __ui_archive_read_close(struct ui_archive *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974A050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_read_finish(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_read_finishSymbolLoc_ptr;
  v9 = getarchive_read_finishSymbolLoc_ptr;
  if (!getarchive_read_finishSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_read_finish");
    getarchive_read_finishSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __ui_archive_read_finish(struct ui_archive *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:20 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974A1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_format_name(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getarchive_format_nameSymbolLoc_ptr;
  v11 = getarchive_format_nameSymbolLoc_ptr;
  if (!getarchive_format_nameSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v9[3] = dlsym(v3, "archive_format_name");
    getarchive_format_nameSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = v2(a1);
    if (v4)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    }

    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const char *__ui_archive_format_name(struct ui_archive *)"];
    [v6 handleFailureInFunction:v7 file:@"_UILibArchiveSoftLinking.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974A340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_format(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_formatSymbolLoc_ptr;
  v9 = getarchive_formatSymbolLoc_ptr;
  if (!getarchive_formatSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_format");
    getarchive_formatSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __ui_archive_format(struct ui_archive *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974A4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_read_next_header(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getarchive_read_next_headerSymbolLoc_ptr;
  v11 = getarchive_read_next_headerSymbolLoc_ptr;
  if (!getarchive_read_next_headerSymbolLoc_ptr)
  {
    v5 = libarchiveLibrary();
    v9[3] = dlsym(v5, "archive_read_next_header");
    getarchive_read_next_headerSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int __ui_archive_read_next_header(struct ui_archive *, struct ui_archive_entry **)"}];
    [v6 handleFailureInFunction:v7 file:@"_UILibArchiveSoftLinking.m" lineNumber:24 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974A610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_entry_pathname(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v2 = getarchive_entry_pathnameSymbolLoc_ptr;
  v11 = getarchive_entry_pathnameSymbolLoc_ptr;
  if (!getarchive_entry_pathnameSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v9[3] = dlsym(v3, "archive_entry_pathname");
    getarchive_entry_pathnameSymbolLoc_ptr = v9[3];
    v2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v2)
  {
    v4 = v2(a1);
    if (v4)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    }

    v5 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"const char *__ui_archive_entry_pathname(struct ui_archive_entry *)"];
    [v6 handleFailureInFunction:v7 file:@"_UILibArchiveSoftLinking.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974A79C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_entry_filetype(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_entry_filetypeSymbolLoc_ptr;
  v9 = getarchive_entry_filetypeSymbolLoc_ptr;
  if (!getarchive_entry_filetypeSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_entry_filetype");
    getarchive_entry_filetypeSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"mode_t __ui_archive_entry_filetype(struct ui_archive_entry *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:26 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974A900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_entry_size_is_set(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_entry_size_is_setSymbolLoc_ptr;
  v9 = getarchive_entry_size_is_setSymbolLoc_ptr;
  if (!getarchive_entry_size_is_setSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_entry_size_is_set");
    getarchive_entry_size_is_setSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __ui_archive_entry_size_is_set(struct ui_archive_entry *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:27 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974AA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_entry_size(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_entry_sizeSymbolLoc_ptr;
  v9 = getarchive_entry_sizeSymbolLoc_ptr;
  if (!getarchive_entry_sizeSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_entry_size");
    getarchive_entry_sizeSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int64_t __ui_archive_entry_size(struct ui_archive_entry *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:28 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974ABC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_write_disk_new()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getarchive_write_disk_newSymbolLoc_ptr;
  v7 = getarchive_write_disk_newSymbolLoc_ptr;
  if (!getarchive_write_disk_newSymbolLoc_ptr)
  {
    v1 = libarchiveLibrary();
    v5[3] = dlsym(v1, "archive_write_disk_new");
    getarchive_write_disk_newSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"struct ui_archive *__ui_archive_write_disk_new(void)"];
    [v2 handleFailureInFunction:v3 file:@"_UILibArchiveSoftLinking.m" lineNumber:29 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974AD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_write_disk_set_standard_lookup(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_write_disk_set_standard_lookupSymbolLoc_ptr;
  v9 = getarchive_write_disk_set_standard_lookupSymbolLoc_ptr;
  if (!getarchive_write_disk_set_standard_lookupSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_write_disk_set_standard_lookup");
    getarchive_write_disk_set_standard_lookupSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __ui_archive_write_disk_set_standard_lookup(struct ui_archive *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:30 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974AE80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_write_disk_set_options(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v4 = getarchive_write_disk_set_optionsSymbolLoc_ptr;
  v11 = getarchive_write_disk_set_optionsSymbolLoc_ptr;
  if (!getarchive_write_disk_set_optionsSymbolLoc_ptr)
  {
    v5 = libarchiveLibrary();
    v9[3] = dlsym(v5, "archive_write_disk_set_options");
    getarchive_write_disk_set_optionsSymbolLoc_ptr = v9[3];
    v4 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (v4)
  {
    v4(a1, a2);
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int __ui_archive_write_disk_set_options(struct ui_archive *, int)"}];
    [v6 handleFailureInFunction:v7 file:@"_UILibArchiveSoftLinking.m" lineNumber:31 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974AFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_write_close(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_write_closeSymbolLoc_ptr;
  v9 = getarchive_write_closeSymbolLoc_ptr;
  if (!getarchive_write_closeSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_write_close");
    getarchive_write_closeSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __ui_archive_write_close(struct ui_archive *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974B150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ui_archive_write_finish(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getarchive_write_finishSymbolLoc_ptr;
  v9 = getarchive_write_finishSymbolLoc_ptr;
  if (!getarchive_write_finishSymbolLoc_ptr)
  {
    v3 = libarchiveLibrary();
    v7[3] = dlsym(v3, "archive_write_finish");
    getarchive_write_finishSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __ui_archive_write_finish(struct ui_archive *)"];
    [v4 handleFailureInFunction:v5 file:@"_UILibArchiveSoftLinking.m" lineNumber:33 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_18974B2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}