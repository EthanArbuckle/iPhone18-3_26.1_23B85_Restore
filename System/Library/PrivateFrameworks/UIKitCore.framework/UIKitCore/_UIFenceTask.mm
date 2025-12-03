@interface _UIFenceTask
+ (BOOL)_processRequiresFenceAssertions;
- (_UIFenceTask)init;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _UIFenceTask

- (_UIFenceTask)init
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = _UIFenceTask;
  v2 = [(_UIFenceTask *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = atomic_fetch_add(&qword_1ED4A2D68, 1uLL) + 1;
    v2->_identifier = v4;
    if (os_variant_has_internal_diagnostics())
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Fence", &qword_1ED4A2D70);
      if (*CategoryCachedImpl)
      {
        v11 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v15 = v4;
          _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "_UIFenceTask:%llu created", buf, 0xCu);
        }
      }
    }

    v3->_lock._os_unfair_lock_opaque = 0;
    v3->_lock_invalidated = 0;
    if (+[_UIFenceTask _processRequiresFenceAssertions])
    {
      v5 = objc_alloc(MEMORY[0x1E698D038]);
      v6 = getpid();
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __20___UIFenceTask_init__block_invoke;
      v12[3] = &__block_descriptor_40_e8_v12__0B8l;
      v12[4] = v4;
      v7 = [v5 initWithPID:v6 flags:7 reason:4 name:@"systemAnimationFence" withHandler:v12];
      assertion = v3->_assertion;
      v3->_assertion = v7;
    }
  }

  return v3;
}

+ (BOOL)_processRequiresFenceAssertions
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&algn_1ED4A2D62[2]);
  if ((_MergedGlobals_1396 & 1) == 0)
  {
    currentProcess = [MEMORY[0x1E69C75D0] currentProcess];
    currentState = [currentProcess currentState];

    if (currentState)
    {
      _MergedGlobals_1396 = 1;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      assertions = [currentState assertions];
      v5 = [assertions countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(assertions);
            }

            domain = [*(*(&v13 + 1) + 8 * i) domain];
            if ([domain hasPrefix:@"com.apple.underlying"] && objc_msgSend(domain, "rangeOfString:", @"DarwinRoleUI") != 0x7FFFFFFFFFFFFFFFLL)
            {
              if (os_variant_has_internal_diagnostics())
              {
                v11 = *(__UILogGetCategoryCachedImpl("Fence", &qword_1ED4A2D78) + 8);
                if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
                {
                  *v12 = 0;
                  _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "Found underlying UI assertion! Fence assertions are disabled for this process.", v12, 2u);
                }
              }

              byte_1ED4A2D61 = 1;

              goto LABEL_15;
            }
          }

          v6 = [assertions countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  os_unfair_lock_unlock(&algn_1ED4A2D62[2]);
  return (byte_1ED4A2D61 & 1) == 0;
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_lock_invalidated = 1;
    os_unfair_lock_unlock(&self->_lock);
    assertion = self->_assertion;

    [(BKSProcessAssertion *)assertion invalidate];
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFenceTask.m" lineNumber:56 description:{@"must invalidate _UIFenceTask:%llu before dealloc", self->_identifier}];
  }

  if (os_variant_has_internal_diagnostics())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Fence", &dealloc___s_category_13);
    if (*CategoryCachedImpl)
    {
      v6 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        identifier = self->_identifier;
        *buf = 134217984;
        v10 = identifier;
        _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "_UIFenceTask:%llu destroyed", buf, 0xCu);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v8.receiver = self;
  v8.super_class = _UIFenceTask;
  [(_UIFenceTask *)&v8 dealloc];
}

@end