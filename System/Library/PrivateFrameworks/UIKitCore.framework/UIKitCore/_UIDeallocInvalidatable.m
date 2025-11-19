@interface _UIDeallocInvalidatable
- (_UIDeallocInvalidatable)init;
- (id)initWithIdentifier:(char)a3 faultForDeallocInvalidation:(void *)a4 invalidationBlock:;
- (void)_invalidate;
- (void)appendDescriptionToStream:(id)a3;
- (void)dealloc;
@end

@implementation _UIDeallocInvalidatable

- (void)_invalidate
{
  if (pthread_main_np() != 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UIDeallocInvalidatable.m" lineNumber:56 description:@"Call must be made on main thread"];
  }

  if ([(BSAtomicSignal *)self->_invalidationSignal signal])
  {
    (*(self->_invalidationBlock + 2))();
    invalidationBlock = self->_invalidationBlock;
    self->_invalidationBlock = 0;
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_faultForDeallocInvalidation && ([(BSAtomicSignal *)self->_invalidationSignal hasBeenSignalled]& 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v4 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v7 = self;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "_UIInvalidatable deallocated without being invalidated: %@", buf, 0xCu);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &dealloc___s_category_8) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v7 = self;
        _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_ERROR, "_UIInvalidatable deallocated without being invalidated: %@", buf, 0xCu);
      }
    }
  }

  [(_UIDeallocInvalidatable *)self _invalidate];
  v5.receiver = self;
  v5.super_class = _UIDeallocInvalidatable;
  [(_UIDeallocInvalidatable *)&v5 dealloc];
}

- (_UIDeallocInvalidatable)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIDeallocInvalidatable.m" lineNumber:29 description:{@"%s: init is not allowed on %@", "-[_UIDeallocInvalidatable init]", objc_opt_class()}];

  return 0;
}

- (id)initWithIdentifier:(char)a3 faultForDeallocInvalidation:(void *)a4 invalidationBlock:
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (v7)
  {
    if (v8)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:sel_initWithIdentifier_faultForDeallocInvalidation_invalidationBlock_ object:a1 file:@"_UIDeallocInvalidatable.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v9)
    {
      goto LABEL_4;
    }
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:sel_initWithIdentifier_faultForDeallocInvalidation_invalidationBlock_ object:a1 file:@"_UIDeallocInvalidatable.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"invalidationBlock"}];

LABEL_4:
  v19.receiver = a1;
  v19.super_class = _UIDeallocInvalidatable;
  a1 = objc_msgSendSuper2(&v19, sel_init);
  if (a1)
  {
    v10 = [v7 copy];
    v11 = *(a1 + 4);
    *(a1 + 4) = v10;

    *(a1 + 8) = a3;
    v12 = objc_opt_new();
    v13 = *(a1 + 2);
    *(a1 + 2) = v12;

    v14 = [v9 copy];
    v15 = *(a1 + 3);
    *(a1 + 3) = v14;
  }

LABEL_6:

  return a1;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53___UIDeallocInvalidatable_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

@end