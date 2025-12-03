@interface _UIDeallocInvalidatable
- (_UIDeallocInvalidatable)init;
- (id)initWithIdentifier:(char)identifier faultForDeallocInvalidation:(void *)invalidation invalidationBlock:;
- (void)_invalidate;
- (void)appendDescriptionToStream:(id)stream;
- (void)dealloc;
@end

@implementation _UIDeallocInvalidatable

- (void)_invalidate
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDeallocInvalidatable.m" lineNumber:56 description:@"Call must be made on main thread"];
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
        selfCopy2 = self;
        _os_log_fault_impl(&dword_188A29000, v4, OS_LOG_TYPE_FAULT, "_UIInvalidatable deallocated without being invalidated: %@", buf, 0xCu);
      }
    }

    else
    {
      v3 = *(__UILogGetCategoryCachedImpl("Assert", &dealloc___s_category_8) + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy2 = self;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDeallocInvalidatable.m" lineNumber:29 description:{@"%s: init is not allowed on %@", "-[_UIDeallocInvalidatable init]", objc_opt_class()}];

  return 0;
}

- (id)initWithIdentifier:(char)identifier faultForDeallocInvalidation:(void *)invalidation invalidationBlock:
{
  v7 = a2;
  invalidationCopy = invalidation;
  v9 = invalidationCopy;
  if (!self)
  {
    goto LABEL_6;
  }

  if (v7)
  {
    if (invalidationCopy)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithIdentifier_faultForDeallocInvalidation_invalidationBlock_ object:self file:@"_UIDeallocInvalidatable.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v9)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:sel_initWithIdentifier_faultForDeallocInvalidation_invalidationBlock_ object:self file:@"_UIDeallocInvalidatable.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"invalidationBlock"}];

LABEL_4:
  v19.receiver = self;
  v19.super_class = _UIDeallocInvalidatable;
  self = objc_msgSendSuper2(&v19, sel_init);
  if (self)
  {
    v10 = [v7 copy];
    v11 = *(self + 4);
    *(self + 4) = v10;

    *(self + 8) = identifier;
    v12 = objc_opt_new();
    v13 = *(self + 2);
    *(self + 2) = v12;

    v14 = [v9 copy];
    v15 = *(self + 3);
    *(self + 3) = v14;
  }

LABEL_6:

  return self;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53___UIDeallocInvalidatable_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = streamCopy;
  selfCopy = self;
  v5 = streamCopy;
  [v5 appendProem:self block:v6];
}

@end