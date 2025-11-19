@interface _UIViewServiceSessionActivityRecord
+ (_UIViewServiceSessionActivityRecord)activityRecordForProvider:(uint64_t)a3 userInterfaceIdiom:;
- (_UIViewServiceSessionActivityRecord)init;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)associateHostedWindow:(uint64_t)a1;
- (void)disassociateHostedWindow:(uint64_t)a1;
- (void)invalidate;
@end

@implementation _UIViewServiceSessionActivityRecord

+ (_UIViewServiceSessionActivityRecord)activityRecordForProvider:(uint64_t)a3 userInterfaceIdiom:
{
  v5 = objc_opt_self();
  if (_NSIsNSObject() && [a2 __isKindOfUIViewController])
  {
    if (!a2)
    {
LABEL_21:
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [(_UIViewServiceSessionActivityRecord *)v24 handleFailureInMethod:sel_activityRecordForProvider_userInterfaceIdiom_ object:v5 file:@"_UIActiveViewServiceSessionTracker.m" lineNumber:206 description:@"Attempting to obtain a view service session activity record with an invalid provider: %@", a2];
      v25 = 0;
      goto LABEL_18;
    }

    v6 = (a2[192] >> 7) & 1;
  }

  else
  {
    v6 = 0;
  }

  if (!a2 || v6)
  {
    goto LABEL_21;
  }

  v7 = _UIActiveViewServiceSessionEffectiveIdiomForIdiom(a3);
  IsPrimary = _UIActiveViewServiceSessionProviderIsPrimary(a2);
  v9 = [a2 _sessionIdentifier];
  v10 = _UIViewServiceSessionActivityRecordsByUUID();
  v11 = _UIViewServiceSessionActivityRecordsByUUID();
  v12 = [v11 objectForKey:v9];

  if (!v12 && IsPrimary)
  {
    v13 = a2;
    v12 = [_UIViewServiceSessionActivityRecord alloc];
    if (v12)
    {
      v14 = [v13 _primaryHostedWindow];
      if (!v14)
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        [v27 handleFailureInMethod:sel__initWithPrimaryActivityProvider_userInterfaceIdiom_ object:v12 file:@"_UIActiveViewServiceSessionTracker.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"primaryHostedWindow"}];
      }

      v28.receiver = v12;
      v28.super_class = _UIViewServiceSessionActivityRecord;
      v15 = objc_msgSendSuper2(&v28, sel_init);
      v16 = v15;
      if (v15)
      {
        v15[16] = 0;
        v17 = [v13 _sessionIdentifier];
        v18 = *(v16 + 7);
        *(v16 + 7) = v17;

        *(v16 + 8) = v7;
        objc_storeWeak(v16 + 9, v14);
        v19 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
        v20 = *(v16 + 1);
        *(v16 + 1) = v19;

        v21 = *(v16 + 1);
        WeakRetained = objc_loadWeakRetained(v16 + 9);
        [v21 addObject:WeakRetained];

        objc_storeWeak(v16 + 4, v13);
      }

      v12 = v16;
    }

    [v10 setObject:v12 forKey:v9];
    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    [v23 postNotificationName:@"_UIViewServiceSessionWasCreatedNotification" object:v12];
  }

  v24 = v12;

  v25 = v24;
LABEL_18:

  return v25;
}

- (_UIViewServiceSessionActivityRecord)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIActiveViewServiceSessionTracker.m" lineNumber:229 description:{@"%s: init is not allowed on %@", "-[_UIViewServiceSessionActivityRecord init]", objc_opt_class()}];

  return 0;
}

- (void)invalidate
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *(a1 + 16) = 1;
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      v3 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionActivityTracking", &_removeViewServiceSessionActivityRecord____s_category) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        v5 = [a1 succinctDescription];
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v5;
        _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "Removing session: %{public}@", &buf, 0xCu);
      }

      v6 = *(a1 + 64);
      v7 = WeakRetained[1];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
      v9 = [v7 objectForKey:v8];

      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v15 = __78___UIActiveViewServiceSessionTracker__removeViewServiceSessionActivityRecord___block_invoke;
      v16 = &unk_1E70F35B8;
      v17 = v9;
      v18 = a1;
      v10 = v9;
      [(_UIActiveViewServiceSessionTracker *)WeakRetained _notifyChangeOfTopEvaluatedObjectIfNeededForIdiom:v6 withSortedActivityRecords:v10 mutatedByBlock:&buf];
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 postNotificationName:@"_UIViewServiceSessionDidInvalidateNotification" object:a1];

    v13 = _UIViewServiceSessionActivityRecordsByUUID();
    [v13 removeObjectForKey:*(a1 + 56)];
    objc_storeWeak((a1 + 24), 0);
    objc_storeWeak((a1 + 72), 0);
    v12 = *(a1 + 8);
    *(a1 + 8) = 0;

    objc_storeWeak((a1 + 32), 0);
  }
}

- (void)associateHostedWindow:(uint64_t)a1
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v4 = [a2 _isHostedInAnotherProcess];
      v5 = (a2[89] & 8) == 0;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = _UIViewServiceSessionActivityRecordsByUUID();
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        v10 = 0;
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v32 + 1) + 8 * v10);
          v12 = _UIViewServiceSessionActivityRecordsByUUID();
          v13 = [v12 objectForKey:v11];

          if (v13)
          {
            WeakRetained = objc_loadWeakRetained(v13 + 9);
          }

          else
          {
            WeakRetained = 0;
          }

          if (WeakRetained == a2)
          {

            v19 = 1;
            goto LABEL_23;
          }

          ++v10;
        }

        while (v8 != v10);
        v15 = [v6 countByEnumeratingWithState:&v32 objects:v46 count:16];
        v8 = v15;
      }

      while (v15);
    }

    if (v4 & v5)
    {
      if ([*(a1 + 8) containsObject:a2])
      {
        return;
      }

      [*(a1 + 8) addObject:a2];
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("ViewServiceSessionActivityTracking", &qword_1ED49C768);
      if (*CategoryCachedImpl)
      {
        v25 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          if (a2)
          {
            v26 = MEMORY[0x1E696AEC0];
            v27 = a2;
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            v30 = [v26 stringWithFormat:@"<%@: %p>", v29, v27, v32];
          }

          else
          {
            v30 = @"(nil)";
          }

          v31 = *(a1 + 56);
          *buf = 138412546;
          v39 = v30;
          v40 = 2112;
          *v41 = v31;
          _os_log_impl(&dword_188A29000, v25, OS_LOG_TYPE_ERROR, "Associating hosted window: %@; with sessionIdentifier: %@", buf, 0x16u);
        }
      }

      v36 = @"_UIViewServiceSessionAssociatedNonPrimaryWindowKey";
      v37 = a2;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v18 = [MEMORY[0x1E696AD88] defaultCenter];
      [(__CFString *)v18 postNotificationName:@"_UIViewServiceSessionDidAssociateNonPrimaryHostedWindowNotification" object:a1 userInfo:v17];
    }

    else
    {
      v19 = 0;
LABEL_23:
      v17 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionActivityTracking", &_MergedGlobals_985) + 8);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }

      if (a2)
      {
        v20 = MEMORY[0x1E696AEC0];
        v21 = a2;
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v18 = [v20 stringWithFormat:@"<%@: %p>", v23, v21, v32];
      }

      else
      {
        v18 = @"(nil)";
      }

      v24 = *(a1 + 56);
      *buf = 138413314;
      v39 = v18;
      v40 = 1024;
      *v41 = v4;
      *&v41[4] = 1024;
      *&v41[6] = v5;
      v42 = 1024;
      v43 = v19;
      v44 = 2112;
      v45 = v24;
      _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Attempting to associate invalid window: %@; isHosted: %d; isNotDeallocating: %d; isPrimaryHostedWindowElsewhere: %d; sessionIdentifier: %@", buf, 0x28u);
    }

LABEL_29:
  }
}

- (void)disassociateHostedWindow:(uint64_t)a1
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = _UIViewServiceSessionActivityRecordsByUUID();
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v29 + 1) + 8 * v8);
          v10 = _UIViewServiceSessionActivityRecordsByUUID();
          v11 = [v10 objectForKey:v9];

          if (v11)
          {
            WeakRetained = objc_loadWeakRetained(v11 + 9);
          }

          else
          {
            WeakRetained = 0;
          }

          if (WeakRetained == a2)
          {

            v15 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionActivityTracking", &qword_1ED49C770) + 8);
            if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_23;
            }

            if (a2)
            {
              v17 = MEMORY[0x1E696AEC0];
              v18 = a2;
              v19 = objc_opt_class();
              v20 = NSStringFromClass(v19);
              v16 = [v17 stringWithFormat:@"<%@: %p>", v20, v18, v29];
            }

            else
            {
              v16 = @"(nil)";
            }

            v21 = *(a1 + 56);
            *buf = 138412802;
            v36 = v16;
            v37 = 1024;
            LODWORD(v38[0]) = 1;
            WORD2(v38[0]) = 2112;
            *(v38 + 6) = v21;
            _os_log_impl(&dword_188A29000, v15, OS_LOG_TYPE_ERROR, "Attempting to disassociate invalid window: %@; isPrimaryHostedWindow: %d; sessionIdentifier: %@", buf, 0x1Cu);
            goto LABEL_22;
          }

          ++v8;
        }

        while (v6 != v8);
        v13 = [v4 countByEnumeratingWithState:&v29 objects:v39 count:16];
        v6 = v13;
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    if ([*(a1 + 8) containsObject:a2])
    {
      [*(a1 + 8) removeObject:a2];
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("ViewServiceSessionActivityTracking", &qword_1ED49C778);
      if (*CategoryCachedImpl)
      {
        v22 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          if (a2)
          {
            v23 = MEMORY[0x1E696AEC0];
            v24 = a2;
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            v27 = [v23 stringWithFormat:@"<%@: %p>", v26, v24, v29];
          }

          else
          {
            v27 = @"(nil)";
          }

          v28 = *(a1 + 56);
          *buf = 138412546;
          v36 = v27;
          v37 = 2112;
          v38[0] = v28;
          _os_log_impl(&dword_188A29000, v22, OS_LOG_TYPE_ERROR, "Disassociating hosted window: %@; from sessionIdentifier: %@", buf, 0x16u);
        }
      }

      v33 = @"_UIViewServiceSessionAssociatedNonPrimaryWindowKey";
      v34 = a2;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v16 = [MEMORY[0x1E696AD88] defaultCenter];
      [(__CFString *)v16 postNotificationName:@"_UIViewServiceSessionDidDisassociateNonPrimaryHostedWindowNotification" object:a1 userInfo:v15];
LABEL_22:

LABEL_23:
    }
  }
}

- (id)succinctDescription
{
  v2 = [(_UIViewServiceSessionActivityRecord *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [(NSUUID *)self->_sessionIdentifier UUIDString];
  v5 = [v3 appendObject:v4 withName:@"sessionIdentifier"];

  v6 = objc_loadWeakRetained(&self->_tracker);
  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"<%@: %p>", v9, v6];
  }

  else
  {
    v10 = @"(nil)";
  }

  v11 = [v3 appendObject:v10 withName:@"tracker"];
  v12 = objc_loadWeakRetained(&self->_primaryHostedWindow);
  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"<%@: %p>", v15, v12];
  }

  else
  {
    v16 = @"(nil)";
  }

  v17 = [v3 appendObject:v16 withName:@"primaryHostedWindow"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIViewServiceSessionActivityRecord *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_UIViewServiceSessionActivityRecord *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  v6 = [(NSUUID *)self->_sessionIdentifier UUIDString];
  v7 = [v5 appendObject:v6 withName:@"sessionIdentifier"];

  [v5 setActiveMultilinePrefix:a3];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77___UIViewServiceSessionActivityRecord_descriptionBuilderWithMultilinePrefix___block_invoke;
  v12[3] = &unk_1E70F35B8;
  v8 = v5;
  v13 = v8;
  v14 = self;
  v9 = [v8 modifyBody:v12];
  v10 = v8;

  return v8;
}

@end