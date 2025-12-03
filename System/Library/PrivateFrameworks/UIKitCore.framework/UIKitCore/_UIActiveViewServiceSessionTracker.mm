@interface _UIActiveViewServiceSessionTracker
+ (id)sharedTracker;
- (_UIActiveViewServiceSessionTracker)init;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)viewServiceSessionForHostedWindow:(uint64_t)window inUserInterfaceIdiom:;
- (uint64_t)hasTrackedSessions;
- (void)_notifyChangeOfTopEvaluatedObjectIfNeededForIdiom:(id *)idiom withSortedActivityRecords:(uint64_t)records mutatedByBlock:;
- (void)dealloc;
- (void)handleViewServiceActivity:(_BYTE *)activity inHostedWindow:(__CFString *)window fromProvider:(uint64_t)provider forSessionActivityRecord:;
- (void)mostActiveViewServiceSessionForUserInterfaceIdiom:(void *)idiom;
@end

@implementation _UIActiveViewServiceSessionTracker

+ (id)sharedTracker
{
  if (qword_1ED49C780 != -1)
  {
    dispatch_once(&qword_1ED49C780, &__block_literal_global_156);
  }

  v3 = qword_1ED49C788;

  return v3;
}

- (uint64_t)hasTrackedSessions
{
  selfCopy = self;
  v17 = *MEMORY[0x1E69E9840];
  if (self)
  {
    if ([*(self + 8) count])
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v2 = *(selfCopy + 8);
      v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v13;
        do
        {
          v6 = 0;
          do
          {
            if (*v13 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = [*(selfCopy + 8) objectForKey:{*(*(&v12 + 1) + 8 * v6), v12}];
            if (v7)
            {
              v8 = v7;
              v9 = [*(v7 + 24) count];

              if (v9)
              {
                selfCopy = 1;
                goto LABEL_16;
              }
            }

            ++v6;
          }

          while (v4 != v6);
          v10 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
          v4 = v10;
        }

        while (v10);
      }

      selfCopy = 0;
LABEL_16:
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (_UIActiveViewServiceSessionTracker)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIActiveViewServiceSessionTracker.m" lineNumber:417 description:{@"%s: init is not allowed on %@", "-[_UIActiveViewServiceSessionTracker init]", objc_opt_class()}];

  return 0;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_stateCaptureToken invalidate];
  v3.receiver = self;
  v3.super_class = _UIActiveViewServiceSessionTracker;
  [(_UIActiveViewServiceSessionTracker *)&v3 dealloc];
}

- (void)_notifyChangeOfTopEvaluatedObjectIfNeededForIdiom:(id *)idiom withSortedActivityRecords:(uint64_t)records mutatedByBlock:
{
  v29 = *MEMORY[0x1E69E9840];
  topEvaluatedObject = [(_UIEvaluatedObjectCache *)idiom topEvaluatedObject];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ViewServiceSessionActivityTracking", &qword_1ED49C790);
  if (*CategoryCachedImpl)
  {
    v15 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      v17 = _NSStringFromUIUserInterfaceIdiom(a2);
      succinctDescription = [topEvaluatedObject succinctDescription];
      *buf = 138412546;
      v26 = v17;
      v27 = 2112;
      v28 = succinctDescription;
      _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "mostActiveViewServiceSession for %@: current: %@", buf, 0x16u);
    }
  }

  (*(records + 16))(records);
  topEvaluatedObject2 = [(_UIEvaluatedObjectCache *)idiom topEvaluatedObject];
  v11 = __UILogGetCategoryCachedImpl("ViewServiceSessionActivityTracking", &qword_1ED49C798);
  if (*v11)
  {
    v19 = *(v11 + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      v21 = _NSStringFromUIUserInterfaceIdiom(a2);
      succinctDescription2 = [topEvaluatedObject2 succinctDescription];
      *buf = 138412546;
      v26 = v21;
      v27 = 2112;
      v28 = succinctDescription2;
      _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "mostActiveViewServiceSession for %@: new: %@", buf, 0x16u);
    }
  }

  if (topEvaluatedObject2 != topEvaluatedObject)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:{a2, @"_UIActiveViewServiceSessionChangingIdiomKey"}];
    v24 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"_UIActiveViewServiceSessionDidChangeNotification" object:self userInfo:v13];
  }
}

- (void)handleViewServiceActivity:(_BYTE *)activity inHostedWindow:(__CFString *)window fromProvider:(uint64_t)provider forSessionActivityRecord:
{
  v79 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return;
  }

  if (provider && *(provider + 16) != 1)
  {
    WeakRetained = objc_loadWeakRetained((provider + 24));
    v13 = a2 != 0;
    v63 = a2 == 2;
    v14 = a2 != 2;
    IsPrimary = _UIActiveViewServiceSessionProviderIsPrimary(window);
    v65 = a2;
    if (activity && [activity _isHostedInAnotherProcess])
    {
      v16 = (activity[89] & 8) == 0;
      if (!WeakRetained)
      {
LABEL_17:
        v21 = IsPrimary;
        v64 = WeakRetained;
        v22 = *(provider + 56);
        _sessionIdentifier = [(__CFString *)window _sessionIdentifier];
        v24 = v13 & (v14 | v21);
        v25 = v22;
        v26 = _sessionIdentifier;
        v27 = v26;
        if (v25 == v26)
        {
          v28 = 1;
        }

        else
        {
          v28 = 0;
          if (v25 && v26)
          {
            v28 = [v25 isEqual:v26];
          }
        }

        WeakRetained = v64;
        if (v24 & v16) == 1 && (v28)
        {
          v29 = *(provider + 40);
          *(provider + 40) = v65;
          objc_storeWeak((provider + 32), window);
          *(provider + 48) = mach_absolute_time();
          v30 = objc_loadWeakRetained((provider + 72));

          if (v30 != activity)
          {
            [(_UIViewServiceSessionActivityRecord *)provider associateHostedWindow:activity];
          }

          if (((v65 == 2) & v21) == 1)
          {
            windowCopy = window;
            _effectiveViewControllerAppearState = [(__CFString *)windowCopy _effectiveViewControllerAppearState];
            v33 = _effectiveViewControllerAppearState;
            v35 = _effectiveViewControllerAppearState != 3 && _effectiveViewControllerAppearState != 0;
            v61 = v35;
            v36 = MEMORY[0x1E696AEC0];
            v37 = _NSStringFromUIViewControllerAppearState(_effectiveViewControllerAppearState);
            v62 = [v36 stringWithFormat:@"appearState: %@ ", v37];;

            *(provider + 20) = v33;
          }

          else
          {
            v61 = 0;
            v62 = &stru_1EFB14550;
          }

          v38 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionActivityTracking", &qword_1ED49C7A8) + 8);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            if (v65 > 4)
            {
              v39 = &stru_1EFB14550;
            }

            else
            {
              v39 = off_1E70F63B8[v65 - 1];
            }

            if (activity)
            {
              v40 = MEMORY[0x1E696AEC0];
              activityCopy = activity;
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              activityCopy = [v40 stringWithFormat:@"<%@: %p>", v43, activityCopy];
            }

            else
            {
              activityCopy = @"(nil)";
            }

            v45 = activityCopy;
            if (window)
            {
              v46 = MEMORY[0x1E696AEC0];
              windowCopy2 = window;
              v48 = objc_opt_class();
              v49 = NSStringFromClass(v48);
              windowCopy2 = [v46 stringWithFormat:@"<%@: %p>", v49, windowCopy2];
            }

            else
            {
              windowCopy2 = @"(nil)";
            }

            v51 = *(provider + 56);
            *buf = 138544386;
            *&buf[4] = v39;
            *&buf[12] = 2112;
            *&buf[14] = v62;
            *&buf[22] = 2114;
            windowCopy3 = v45;
            v75 = 2114;
            providerCopy = windowCopy2;
            v77 = 2114;
            v78 = v51;
            v52 = windowCopy2;
            _os_log_impl(&dword_188A29000, v38, OS_LOG_TYPE_DEFAULT, "Activity: %{public}@; %@window: %{public}@; provider: %{public}@; session: %{public}@", buf, 0x34u);
          }

          v53 = *(provider + 64);
          v54 = [MEMORY[0x1E696AD98] numberWithInteger:v53];
          v55 = self[1];
          if (!v55)
          {
            v56 = objc_opt_new();
            v57 = self[1];
            self[1] = v56;

            v55 = self[1];
          }

          v58 = [v55 objectForKey:v54];
          if (!v58)
          {
            objc_initWeak(&location, self);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __65___UIActiveViewServiceSessionTracker__createEvaluatedObjectCache__block_invoke;
            windowCopy3 = &unk_1E70F6348;
            objc_copyWeak(&v75, &location);
            v59 = _Block_copy(buf);
            v58 = [[_UIEvaluatedObjectCache alloc] initWithSortComparator:v59 evaluationBlock:?];

            objc_destroyWeak(&v75);
            objc_destroyWeak(&location);
            [self[1] setObject:v58 forKey:v54];
          }

          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __117___UIActiveViewServiceSessionTracker_handleViewServiceActivity_inHostedWindow_fromProvider_forSessionActivityRecord___block_invoke;
          v66[3] = &unk_1E70F6370;
          v66[4] = v64;
          v66[5] = provider;
          v66[6] = self;
          v67 = v58;
          v68 = v29;
          v69 = v65;
          v70 = v63;
          v71 = v61;
          v60 = v58;
          [(_UIActiveViewServiceSessionTracker *)self _notifyChangeOfTopEvaluatedObjectIfNeededForIdiom:v53 withSortedActivityRecords:v60 mutatedByBlock:v66];

          WeakRetained = v64;
          goto LABEL_53;
        }

LABEL_13:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = currentHandler;
        if (v65 > 4)
        {
          v19 = &stru_1EFB14550;
        }

        else
        {
          v19 = off_1E70F6390[v65];
        }

        [currentHandler handleFailureInMethod:sel_handleViewServiceActivity_inHostedWindow_fromProvider_forSessionActivityRecord_ object:self file:@"_UIActiveViewServiceSessionTracker.m" lineNumber:528 description:{@"Invalid state: activity: %@; window: %@; provider: %@; session: %@", v19, activity, window, provider}];

LABEL_53:
        return;
      }
    }

    else
    {
      v16 = 0;
      if (!WeakRetained)
      {
        goto LABEL_17;
      }
    }

    if (WeakRetained != self)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v9 = *(__UILogGetCategoryCachedImpl("ViewServiceSessionActivityTracking", &qword_1ED49C7A0) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    if (a2 > 4)
    {
      v10 = &stru_1EFB14550;
    }

    else
    {
      v10 = off_1E70F6390[a2];
    }

    *buf = 138544130;
    *&buf[4] = v10;
    *&buf[12] = 2114;
    *&buf[14] = activity;
    *&buf[22] = 2114;
    windowCopy3 = window;
    v75 = 2114;
    providerCopy = provider;
    v20 = v9;
    _os_log_impl(&dword_188A29000, v20, OS_LOG_TYPE_ERROR, "Invalid session activity record was provided to handleViewServiceActivity: activity: %{public}@; window: %{public}@; provider: %{public}@; session: %{public}@", buf, 0x2Au);
  }
}

- (void)mostActiveViewServiceSessionForUserInterfaceIdiom:(void *)idiom
{
  idiomCopy = idiom;
  if (idiom)
  {
    v3 = _UIActiveViewServiceSessionEffectiveIdiomForIdiom(a2);
    v4 = idiomCopy[1];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    v6 = [v4 objectForKey:v5];

    idiomCopy = [(_UIEvaluatedObjectCache *)v6 topEvaluatedObject];
  }

  return idiomCopy;
}

- (id)viewServiceSessionForHostedWindow:(uint64_t)window inUserInterfaceIdiom:
{
  v25 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v5 = _UIActiveViewServiceSessionEffectiveIdiomForIdiom(window);
    v6 = *(self + 8);
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v8 = [v6 objectForKey:v7];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    sortedObjects = [(_UIEvaluatedObjectCache *)v8 sortedObjects];
    v10 = [sortedObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(sortedObjects);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          if (v15)
          {
            if ([v15[1] count])
            {
              v16 = [v15[1] copy];
              v17 = [v16 containsObject:a2];

              if (v17)
              {
                v18 = v15;

                v12 = v18;
              }
            }
          }
        }

        v11 = [sortedObjects countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_UIActiveViewServiceSessionTracker *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIActiveViewServiceSessionTracker *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_UIActiveViewServiceSessionTracker *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v5 = [MEMORY[0x1E698E680] builderWithObject:self];
  if ([(NSMutableDictionary *)self->_sortedActivityRecordsByIdiom count])
  {
    [v5 setActiveMultilinePrefix:prefix];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __76___UIActiveViewServiceSessionTracker_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    selfCopy = self;
    v6 = [v9 modifyBody:v8];
  }

  return v5;
}

@end