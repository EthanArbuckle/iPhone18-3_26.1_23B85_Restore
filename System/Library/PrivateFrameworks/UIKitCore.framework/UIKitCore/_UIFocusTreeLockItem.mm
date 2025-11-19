@interface _UIFocusTreeLockItem
- (BOOL)unlock;
- (UIFocusEnvironment)environment;
- (_UIFocusTreeLockItem)initWithEnvironment:(id)a3 finalUnlockHandler:(id)a4;
- (id)description;
- (void)_cleanup:(BOOL)a3;
- (void)dealloc;
- (void)lock;
- (void)validate;
@end

@implementation _UIFocusTreeLockItem

- (_UIFocusTreeLockItem)initWithEnvironment:(id)a3 finalUnlockHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v27.receiver = self;
  v27.super_class = _UIFocusTreeLockItem;
  v8 = [(_UIFocusTreeLockItem *)&v27 init];
  if (v8)
  {
    v9 = _Block_copy(v7);
    finalUnlockHandler = v8->_finalUnlockHandler;
    v8->_finalUnlockHandler = v9;

    objc_storeWeak(&v8->_environment, v6);
    v8->_unsafeEnvironment = v6;
    v11 = v6;
    if (v11)
    {
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v12 stringWithFormat:@"<%@: %p>", v14, v11];
    }

    else
    {
      v15 = @"(nil)";
    }

    environmentDescription = v8->_environmentDescription;
    v8->_environmentDescription = &v15->isa;

    v8->_lockCount = 0;
    v8->_lockTime = CFAbsoluteTimeGetCurrent();
    if (os_variant_has_internal_diagnostics() && _UIGetFocusTreeLockVerboseLogging())
    {
      v21 = objc_opt_new();
      lockCallStackSymbols = v8->_lockCallStackSymbols;
      v8->_lockCallStackSymbols = v21;

      v23 = objc_opt_new();
      unlockCallStackSymbols = v8->_unlockCallStackSymbols;
      v8->_unlockCallStackSymbols = v23;
    }

    v17 = [_UIWeakHelper alloc];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __63___UIFocusTreeLockItem_initWithEnvironment_finalUnlockHandler___block_invoke;
    v25[3] = &unk_1E70F3590;
    v18 = v8;
    v26 = v18;
    v19 = [(_UIWeakHelper *)v17 initWithDeallocationBlock:v25];
    objc_setAssociatedObject(v11, v18, v19, 1);
    [(_UIFocusTreeLockItem *)v18 lock];
  }

  return v8;
}

- (void)dealloc
{
  [(_UIFocusTreeLockItem *)self _cleanup:1];
  v3.receiver = self;
  v3.super_class = _UIFocusTreeLockItem;
  [(_UIFocusTreeLockItem *)&v3 dealloc];
}

- (void)lock
{
  v13 = *MEMORY[0x1E69E9840];
  ++self->_lockCount;
  lockCallStackSymbols = self->_lockCallStackSymbols;
  if (lockCallStackSymbols)
  {
    v4 = [MEMORY[0x1E696AF00] callStackSymbols];
    [(NSMutableArray *)lockCallStackSymbols addObject:v4];
  }

  CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &lock___s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      environmentDescription = self->_environmentDescription;
      lockCount = self->_lockCount;
      v9 = 138412546;
      v10 = environmentDescription;
      v11 = 2048;
      v12 = lockCount;
      _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "Locking environment %@ — %lu locks total for this environment.", &v9, 0x16u);
    }
  }
}

- (BOOL)unlock
{
  v23 = *MEMORY[0x1E69E9840];
  lockCount = self->_lockCount;
  if (!lockCount)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIFocusTreeLock.m" lineNumber:285 description:{@"Overreleasing a lock. This is a UIKit bug. Additional info:\n%@", self}];

    lockCount = self->_lockCount;
  }

  v4 = lockCount - 1;
  self->_lockCount = v4;
  unlockCallStackSymbols = self->_unlockCallStackSymbols;
  if (unlockCallStackSymbols)
  {
    v6 = [MEMORY[0x1E696AF00] callStackSymbols];
    [(NSMutableArray *)unlockCallStackSymbols addObject:v6];

    v4 = self->_lockCount;
  }

  if (v4)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49D678);
    if (*CategoryCachedImpl)
    {
      v8 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        environmentDescription = self->_environmentDescription;
        v10 = self->_lockCount;
        *buf = 138412546;
        v20 = environmentDescription;
        v21 = 2048;
        v22 = *&v10;
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "Unlocking environment %@ — %lu locks remaining for this environment.", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = __UILogGetCategoryCachedImpl("UIFocus", &_MergedGlobals_1042);
    if (*v11)
    {
      v15 = *(v11 + 8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = self->_environmentDescription;
        v17 = v15;
        v18 = CFAbsoluteTimeGetCurrent() - self->_lockTime;
        *buf = 138412546;
        v20 = v16;
        v21 = 2048;
        v22 = v18;
        _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "Unlocking environment %@ after %.2fs — 0 locks remaining for this environment.", buf, 0x16u);
      }
    }

    [(_UIFocusTreeLockItem *)self _cleanup:0];
  }

  return self->_lockCount == 0;
}

- (void)_cleanup:(BOOL)a3
{
  v24 = *MEMORY[0x1E69E9840];
  didCleanup = self->_didCleanup;
  if (!didCleanup || a3)
  {
    if (a3 && !didCleanup)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49D688);
      if (*CategoryCachedImpl)
      {
        v13 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          environmentDescription = self->_environmentDescription;
          v15 = MEMORY[0x1E696AF00];
          v16 = v13;
          v17 = [v15 callStackSymbols];
          v18 = 138412802;
          v19 = environmentDescription;
          v20 = 2112;
          v21 = v17;
          v22 = 2112;
          v23 = self;
          _os_log_impl(&dword_188A29000, v16, OS_LOG_TYPE_ERROR, "Cleaning up environment lock for %@ from dealloc. Cleanup from dealloc might indicate an unbalanced lock call. Stack trace:\n%@\nAdditional info:\n%@", &v18, 0x20u);
        }
      }
    }

    self->_didCleanup = 1;
    (*(self->_finalUnlockHandler + 2))();
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    v9 = WeakRetained;
    if (!WeakRetained)
    {
      goto LABEL_12;
    }

    v10 = objc_getAssociatedObject(WeakRetained, self);
    [v10 invalidate];
    objc_setAssociatedObject(v9, self, 0, 1);
LABEL_11:

LABEL_12:
    return;
  }

  v5 = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49D680);
  if (*v5)
  {
    v6 = *(v5 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = self->_environmentDescription;
      v8 = MEMORY[0x1E696AF00];
      v9 = v6;
      v10 = [v8 callStackSymbols];
      v18 = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = self;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Ignoring call to cleanup environment lock for %@. Cleanup has already happened. Stack trace:\n%@\nAdditional info:\n%@", &v18, 0x20u);
      goto LABEL_11;
    }
  }
}

- (void)validate
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  if (WeakRetained)
  {
    v4 = CFAbsoluteTimeGetCurrent() - self->_lockTime;
    if (!self->_didSoftAssert && v4 >= 20.0)
    {
      if ((_UIKitProcessIsBeingDebugged() & 1) == 0)
      {
        if (os_variant_has_internal_diagnostics())
        {
          v15 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            environmentDescription = self->_environmentDescription;
            v17 = 138412802;
            v18 = environmentDescription;
            v19 = 2048;
            v20 = v4;
            v21 = 2112;
            v22 = self;
            _os_log_fault_impl(&dword_188A29000, v15, OS_LOG_TYPE_FAULT, "Lock for environment %@ was aquired %.2f seconds ago and might be stuck. This can have a serious impact on focus updates. Additional info:\n%@", &v17, 0x20u);
          }
        }

        else
        {
          v12 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D698) + 8);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = self->_environmentDescription;
            v17 = 138412802;
            v18 = v13;
            v19 = 2048;
            v20 = v4;
            v21 = 2112;
            v22 = self;
            _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Lock for environment %@ was aquired %.2f seconds ago and might be stuck. This can have a serious impact on focus updates. Additional info:\n%@", &v17, 0x20u);
          }
        }
      }

      self->_didSoftAssert = 1;
    }

    if (v4 > 5.0)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("UIFocus", &qword_1ED49D6A0);
      if (*CategoryCachedImpl)
      {
        v10 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = self->_environmentDescription;
          v17 = 138412546;
          v18 = v11;
          v19 = 2048;
          v20 = v4;
          v7 = "Lock for environment %@ was aquired %.2f seconds ago and might be stuck or take very long to be unlocked.";
          v8 = v10;
          v9 = 22;
          goto LABEL_14;
        }
      }
    }
  }

  else if (os_variant_has_internal_diagnostics())
  {
    v14 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v17 = 138412290;
      v18 = self;
      _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Found a nil focus environment in the list of locked environments. This is a UIKit bug. Additional info:\n%@", &v17, 0xCu);
    }
  }

  else
  {
    v6 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49D690) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = 138412290;
      v18 = self;
      v7 = "Found a nil focus environment in the list of locked environments. This is a UIKit bug. Additional info:\n%@";
      v8 = v6;
      v9 = 12;
LABEL_14:
      _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, v7, &v17, v9);
    }
  }
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = objc_loadWeakRetained(&self->_environment);
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, v4];

    v9 = [v3 appendObject:v8 withName:@"environment"];
  }

  else
  {
    v10 = [v3 appendObject:@"(nil)" withName:@"environment"];

    v11 = [v3 appendObject:self->_environmentDescription withName:@"environmentDescription"];
  }

  v12 = [v3 appendUnsignedInteger:self->_lockCount withName:@"lockCount"];
  v13 = [v3 appendDouble:@"duration" withName:2 decimalPrecision:CFAbsoluteTimeGetCurrent() - self->_lockTime];
  lockCallStackSymbols = self->_lockCallStackSymbols;
  if (lockCallStackSymbols)
  {
    v15 = [v3 appendObject:lockCallStackSymbols withName:@"LOCK call stacks"];
  }

  unlockCallStackSymbols = self->_unlockCallStackSymbols;
  if (unlockCallStackSymbols)
  {
    v17 = [v3 appendObject:unlockCallStackSymbols withName:@"UNLOCK call stacks"];
  }

  v18 = [v3 build];

  return v18;
}

- (UIFocusEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end