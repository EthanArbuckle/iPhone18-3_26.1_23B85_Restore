@interface RBSAssertion
- (BOOL)_clientInvalidateWithError:(uint64_t)a1;
- (BOOL)acquireWithError:(id *)a3;
- (BOOL)invalidateSyncWithError:(id *)a3;
- (NSArray)attributes;
- (NSString)explanation;
- (RBSAssertion)init;
- (RBSAssertion)initWithExplanation:(id)a3 target:(id)a4 attributes:(id)a5;
- (RBSAssertionDescriptor)descriptor;
- (RBSAssertionIdentifier)identifier;
- (RBSTarget)target;
- (id)_initWithDescriptor:(id)a3 service:(id)a4;
- (id)_initWithServerValidatedDescriptor:(id)a3;
- (id)_initWithServerValidatedDescriptor:(id)a3 service:(id)a4;
- (id)debugDescription;
- (id)description;
- (unint64_t)state;
- (void)_serverDidChangeIdentifier:(uint64_t)a1;
- (void)_serverInvalidateWithError:(id)a3;
- (void)_serverWillInvalidate;
- (void)acquireWithInvalidationHandler:(id)a3;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)setExpirationWarningHandler:(id)a3;
- (void)setInvalidationHandler:(id)a3;
@end

@implementation RBSAssertion

- (RBSAssertionIdentifier)identifier
{
  v2 = [(RBSAssertion *)self descriptor];
  v3 = [v2 identifier];

  return v3;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = [v1 debugDescription];
  [v3 handleFailureInMethod:v0 object:v1 file:@"RBSAssertion.m" lineNumber:218 description:{@"BUG IN CLIENT OF RUNNINGBOARD: Dealloc called before invalidate for assertion %@", v2}];
}

- (RBSAssertionDescriptor)descriptor
{
  os_unfair_lock_lock(&self->_dataLock);
  v3 = [(RBSAssertionDescriptor *)self->_descriptor copy];
  os_unfair_lock_unlock(&self->_dataLock);

  return v3;
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (NSString)explanation
{
  v2 = [(RBSAssertion *)self descriptor];
  v3 = [v2 explanation];

  return v3;
}

- (id)description
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [objc_opt_class() description];
  v4 = [v2 initWithFormat:@"<%@>", v3];

  return v4;
}

- (void)_serverWillInvalidate
{
  if (a1)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = __37__RBSAssertion__serverWillInvalidate__block_invoke;
    v1[3] = &unk_1E7276440;
    v1[4] = a1;
    [RBSWorkloop performCallout:v1];
  }
}

void __37__RBSAssertion__serverWillInvalidate__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v3 = *(a1 + 32);
  if (*(v3 + 48) == 1)
  {
    v4 = [*(v3 + 8) allObjects];
    v5 = MEMORY[0x193AD5470](*(*(a1 + 32) + 24));
    v6 = *(a1 + 32);
    v7 = *(v6 + 24);
    *(v6 + 24) = 0;

    v3 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  os_unfair_lock_unlock((v3 + 56));
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 assertionWillInvalidate:{*(a1 + 32), v15}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  if (v5)
  {
    v5[2](v5, *(a1 + 32));
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (NSArray)attributes
{
  v2 = [(RBSAssertion *)self descriptor];
  v3 = [v2 attributes];

  return v3;
}

- (RBSAssertion)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSAssertion.m" lineNumber:56 description:@"-init is not allowed on RBSAssertion"];

  return 0;
}

- (RBSAssertion)initWithExplanation:(id)a3 target:(id)a4 attributes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    [RBSAssertion initWithExplanation:target:attributes:];
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    [RBSAssertion initWithExplanation:target:attributes:];
    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [RBSAssertionDescriptor descriptorWithIdentifier:0 target:v9 explanation:v8 attributes:v10];
  v12 = +[RBSConnection sharedInstance];
  v13 = [(RBSAssertion *)self _initWithDescriptor:v11 service:v12];

  return v13;
}

- (BOOL)acquireWithError:(id *)a3
{
  v33[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  state = self->_state;
  if (state == 2)
  {
    v15 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A588];
    v29 = @"Assertion has already been invalidated";
    observers = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v6 = [v15 errorWithDomain:@"RBSAssertionErrorDomain" code:1 userInfo:observers];
LABEL_13:

LABEL_14:
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    warningHandler = self->_warningHandler;
    self->_warningHandler = 0;

    v12 = 0;
    observers = self->_observers;
    self->_observers = 0;
    goto LABEL_15;
  }

  v6 = 0;
  if (state == 1)
  {
    v12 = 1;
    goto LABEL_16;
  }

  if (state)
  {
    goto LABEL_14;
  }

  observers = [(RBSAssertion *)self descriptor];
  v8 = [observers target];

  if (!v8)
  {
    self->_state = 2;
    v16 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33[0] = @"Missing assertion target";
    v17 = MEMORY[0x1E695DF20];
    v18 = v33;
    v19 = &v32;
LABEL_12:
    v20 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:1];
    v6 = [v16 errorWithDomain:@"RBSAssertionErrorDomain" code:2 userInfo:v20];

    goto LABEL_13;
  }

  v9 = [observers explanation];

  if (!v9)
  {
    self->_state = 2;
    v16 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A588];
    v31 = @"Missing assertion explanation";
    v17 = MEMORY[0x1E695DF20];
    v18 = &v31;
    v19 = &v30;
    goto LABEL_12;
  }

  service = self->_service;
  v27 = 0;
  v11 = [(RBSServiceLocalProtocol *)service acquireAssertion:self error:&v27];
  v6 = v27;
  if (!v11)
  {
    v26 = rbs_assertion_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(RBSAssertion *)v6 acquireWithError:v26];
    }

    self->_state = 2;
    goto LABEL_13;
  }

  v12 = 1;
  self->_state = 1;
  os_unfair_lock_lock(&self->_dataLock);
  v13 = [observers copyWithIdentifier:v11];
  descriptor = self->_descriptor;
  self->_descriptor = v13;

  os_unfair_lock_unlock(&self->_dataLock);
LABEL_15:

LABEL_16:
  os_unfair_lock_unlock(&self->_lock);
  if (a3)
  {
    v23 = v6;
    *a3 = v6;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)acquireWithInvalidationHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__RBSAssertion_acquireWithInvalidationHandler___block_invoke;
  v6[3] = &unk_1E72763F0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [RBSWorkloop performBackgroundWork:v6];
}

void __47__RBSAssertion_acquireWithInvalidationHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  os_unfair_lock_unlock((*(a1 + 32) + 56));
  v6 = *(a1 + 32);
  v15 = 0;
  v7 = [v6 acquireWithError:&v15];
  v8 = v15;
  if ((v7 & 1) == 0)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __47__RBSAssertion_acquireWithInvalidationHandler___block_invoke_2;
      v12[3] = &unk_1E72763C8;
      v10 = v9;
      v11 = *(a1 + 32);
      v14 = v10;
      v12[4] = v11;
      v13 = v8;
      [RBSWorkloop performCallout:v12];
    }
  }
}

- (BOOL)invalidateSyncWithError:(id *)a3
{
  v6 = 0;
  [(RBSAssertion *)self _clientInvalidateWithError:?];
  v4 = v6;
  if (a3)
  {
    v4 = v6;
    *a3 = v4;
  }

  return v4 == 0;
}

- (RBSTarget)target
{
  v2 = [(RBSAssertion *)self descriptor];
  v3 = [v2 target];

  return v3;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [RBSAssertion addObserver:];
  }

  os_unfair_lock_lock_with_options();
  if (self->_state == 2)
  {
    if (objc_opt_respondsToSelector())
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __28__RBSAssertion_addObserver___block_invoke;
      v5[3] = &unk_1E7276418;
      v6 = v4;
      v7 = self;
      [RBSWorkloop performCallout:v5];
    }
  }

  else
  {
    [(NSHashTable *)self->_observers addObject:v4];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [RBSAssertion removeObserver:];
  }

  os_unfair_lock_lock_with_options();
  [(NSHashTable *)self->_observers removeObject:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setInvalidationHandler:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock_with_options();
  if (self->_state)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"RBSAssertion.m" lineNumber:208 description:@"can only call before acquisition"];
  }

  v5 = [v8 copy];
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setExpirationWarningHandler:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(RBSAssertion *)self attributes];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 warningDuration];
          if (v11 > 0.0)
          {
            LOBYTE(v7) = 1;
            goto LABEL_12;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  if (self->_state)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"RBSAssertion.m" lineNumber:254 description:@"can only call before acquisition"];
  }

  if ((v7 & 1) == 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"RBSAssertion.m" lineNumber:255 description:@"this assertion does not contain an applicable RBSDurationAttribute"];
  }

  v12 = [v5 copy];
  warningHandler = self->_warningHandler;
  self->_warningHandler = v12;

  os_unfair_lock_unlock(&self->_lock);
  v14 = *MEMORY[0x1E69E9840];
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_opt_class() description];
  state = self->_state;
  if (state > 2)
  {
    v6 = @"(invalid assertion state)";
  }

  else
  {
    v6 = off_1E7276460[state];
  }

  v7 = [(RBSAssertion *)self descriptor];
  v8 = [v3 initWithFormat:@"<%@:%p| state:%@ descriptor:<%@>", v4, self, v6, v7];

  return v8;
}

- (id)_initWithServerValidatedDescriptor:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 identifier];

  if (!v8)
  {
    [RBSAssertion _initWithServerValidatedDescriptor:service:];
  }

  v9 = [(RBSAssertion *)self _initWithDescriptor:v6 service:v7];
  v10 = v9;
  if (v9)
  {
    v9[6] = 1;
  }

  return v10;
}

- (id)_initWithServerValidatedDescriptor:(id)a3
{
  v4 = a3;
  v5 = +[RBSConnection sharedInstance];
  v6 = [(RBSAssertion *)self _initWithServerValidatedDescriptor:v4 service:v5];

  return v6;
}

- (id)_initWithDescriptor:(id)a3 service:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RBSAssertion;
  v8 = [(RBSAssertion *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = v9;

    v11 = [v6 copy];
    descriptor = v8->_descriptor;
    v8->_descriptor = v11;

    v8->_state = 0;
    objc_storeStrong(&v8->_service, a4);
    *&v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (void)_serverInvalidateWithError:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  state = self->_state;
  self->_state = 2;
  os_unfair_lock_unlock(&self->_lock);
  if (state != 2)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__RBSAssertion__serverInvalidateWithError___block_invoke;
    v6[3] = &unk_1E7276418;
    v6[4] = self;
    v7 = v4;
    [RBSWorkloop performCallout:v6];
  }
}

void __43__RBSAssertion__serverInvalidateWithError___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v3 = MEMORY[0x193AD5470](*(*(a1 + 32) + 16));
  v4 = [*(*(a1 + 32) + 8) allObjects];
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  *(v7 + 24) = 0;

  v9 = *(a1 + 32);
  v10 = *(v9 + 8);
  *(v9 + 8) = 0;

  os_unfair_lock_unlock((*(a1 + 32) + 56));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 assertion:*(a1 + 32) didInvalidateWithError:{*(a1 + 40), v18}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  if (v3)
  {
    v3[2](v3, *(a1 + 32), *(a1 + 40));
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)_clientInvalidateWithError:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock_with_options();
    v4 = *(a1 + 48);
    *(a1 + 48) = 2;
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;

    v6 = *(a1 + 24);
    *(a1 + 24) = 0;

    v7 = *(a1 + 8);
    *(a1 + 8) = 0;

    os_unfair_lock_unlock((a1 + 56));
    if (v4 == 1)
    {
      [*(a1 + 40) invalidateAssertion:a1 error:a2];
    }
  }

  return a1 != 0;
}

- (void)_serverDidChangeIdentifier:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v8 = v3;
    if (!v3)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_0();
      [v7 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
    }

    os_unfair_lock_lock_with_options();
    if (*(a1 + 48) == 1)
    {
      os_unfair_lock_lock((a1 + 60));
      v4 = [*(a1 + 32) copyWithIdentifier:v8];
      v5 = *(a1 + 32);
      *(a1 + 32) = v4;

      os_unfair_lock_unlock((a1 + 60));
      os_unfair_lock_unlock((a1 + 56));
    }

    else
    {
      os_unfair_lock_unlock((a1 + 56));
      [*(a1 + 40) invalidateAssertionWithIdentifier:v8 error:0];
    }

    v3 = v8;
  }
}

- (void)initWithExplanation:target:attributes:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"target" object:? file:? lineNumber:? description:?];
}

- (void)initWithExplanation:target:attributes:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"explanation" object:? file:? lineNumber:? description:?];
}

- (void)acquireWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_ERROR, "Error acquiring assertion: <%{public}@>", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)addObserver:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"observer != nil" object:? file:? lineNumber:? description:?];
}

- (void)removeObserver:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"observer != nil" object:? file:? lineNumber:? description:?];
}

- (void)_initWithServerValidatedDescriptor:service:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[descriptor identifier] != nil" object:? file:? lineNumber:? description:?];
}

@end