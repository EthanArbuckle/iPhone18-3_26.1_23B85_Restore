@interface _UIFocusTreeLock
- (BOOL)isEnvironmentLocked:(id)locked;
- (BOOL)unlockEnvironmentTree:(id)tree;
- (_UIFocusTreeLock)init;
- (id)description;
- (void)_validateLockedEnvironments;
- (void)lockEnvironmentTree:(id)tree;
@end

@implementation _UIFocusTreeLock

- (_UIFocusTreeLock)init
{
  v15.receiver = self;
  v15.super_class = _UIFocusTreeLock;
  v2 = [(_UIFocusTreeLock *)&v15 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:258 valueOptions:0 capacity:10];
    lockedEnvironments = v2->_lockedEnvironments;
    v2->_lockedEnvironments = v3;

    if (os_variant_has_internal_diagnostics())
    {
      objc_initWeak(&location, v2);
      v6 = MEMORY[0x1E695DFF0];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __24___UIFocusTreeLock_init__block_invoke;
      v12 = &unk_1E70F4130;
      objc_copyWeak(&v13, &location);
      v7 = [v6 scheduledTimerWithTimeInterval:1 repeats:&v9 block:5.0];
      validationTimer = v2->_validationTimer;
      v2->_validationTimer = v7;

      [(NSTimer *)v2->_validationTimer setTolerance:1.0, v9, v10, v11, v12];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

- (void)lockEnvironmentTree:(id)tree
{
  treeCopy = tree;
  if (!treeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusTreeLock.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v6 = [(NSMapTable *)self->_lockedEnvironments objectForKey:treeCopy];
  if (v6)
  {
    v7 = v6;
    [(_UIFocusTreeLockItem *)v6 lock];
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = [_UIFocusTreeLockItem alloc];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40___UIFocusTreeLock_lockEnvironmentTree___block_invoke;
    v10[3] = &unk_1E7100270;
    objc_copyWeak(&v11, &location);
    v7 = [(_UIFocusTreeLockItem *)v8 initWithEnvironment:treeCopy finalUnlockHandler:v10];
    [(NSMapTable *)self->_lockedEnvironments setObject:v7 forKey:treeCopy];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

- (BOOL)unlockEnvironmentTree:(id)tree
{
  v23 = *MEMORY[0x1E69E9840];
  treeCopy = tree;
  if (!treeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusTreeLock.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"environment"}];
  }

  v6 = [(NSMapTable *)self->_lockedEnvironments objectForKey:treeCopy];
  v7 = v6;
  if (!v6)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v11 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_13;
      }

      v17 = treeCopy;
      if (treeCopy)
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v16 = [v18 stringWithFormat:@"<%@: %p>", v20, v17];
      }

      else
      {
        v16 = @"(nil)";
      }

      *buf = 138412290;
      v22 = v16;
      _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Unbalanced call to unlockEnvironmentTree: for an environment that is not locked: %@", buf, 0xCu);
    }

    else
    {
      v11 = *(__UILogGetCategoryCachedImpl("Assert", &unlockEnvironmentTree____s_category) + 8);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_13:

        unlock = 1;
        goto LABEL_5;
      }

      v12 = treeCopy;
      if (treeCopy)
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

      *buf = 138412290;
      v22 = v16;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "Unbalanced call to unlockEnvironmentTree: for an environment that is not locked: %@", buf, 0xCu);
    }

    goto LABEL_13;
  }

  unlock = [v6 unlock];
LABEL_5:

  return unlock;
}

- (BOOL)isEnvironmentLocked:(id)locked
{
  v25 = *MEMORY[0x1E69E9840];
  lockedCopy = locked;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  objectEnumerator = [(NSMapTable *)self->_lockedEnvironments objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        environment = [v10 environment];
        if (!environment)
        {
          if (os_variant_has_internal_diagnostics())
          {
            loga = __UIFaultDebugAssertLog();
            if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412290;
              v23 = v10;
              _os_log_fault_impl(&dword_188A29000, loga, OS_LOG_TYPE_FAULT, "Found a nil focus environment in the list of locked environments. This is a UIKit bug. Additional info:\n%@", buf, 0xCu);
            }
          }

          else
          {
            log = *(__UILogGetCategoryCachedImpl("Assert", &isEnvironmentLocked____s_category) + 8);
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v23 = v10;
              _os_log_impl(&dword_188A29000, log, OS_LOG_TYPE_ERROR, "Found a nil focus environment in the list of locked environments. This is a UIKit bug. Additional info:\n%@", buf, 0xCu);
            }
          }
        }

        HaveCommonHierarchy = _UIFocusEnvironmentsHaveCommonHierarchy(lockedCopy, environment);

        if (HaveCommonHierarchy)
        {
          v14 = 1;
          goto LABEL_19;
        }

        ++v9;
      }

      while (v7 != v9);
      v13 = [objectEnumerator countByEnumeratingWithState:&v18 objects:v24 count:16];
      v7 = v13;
    }

    while (v13);
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (void)_validateLockedEnvironments
{
  v13 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    objectEnumerator = [(NSMapTable *)self->_lockedEnvironments objectEnumerator];
    v4 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          [*(*(&v8 + 1) + 8 * v7++) validate];
        }

        while (v5 != v7);
        v5 = [objectEnumerator countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_lockedEnvironments withName:@"lockedEnvironments"];
  build = [v3 build];

  return build;
}

@end