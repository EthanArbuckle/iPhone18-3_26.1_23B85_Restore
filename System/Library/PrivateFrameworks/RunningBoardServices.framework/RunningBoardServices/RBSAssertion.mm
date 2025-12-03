@interface RBSAssertion
- (BOOL)_clientInvalidateWithError:(uint64_t)error;
- (BOOL)acquireWithError:(id *)error;
- (BOOL)invalidateSyncWithError:(id *)error;
- (NSArray)attributes;
- (NSString)explanation;
- (RBSAssertion)init;
- (RBSAssertion)initWithExplanation:(id)explanation target:(id)target attributes:(id)attributes;
- (RBSAssertionDescriptor)descriptor;
- (RBSAssertionIdentifier)identifier;
- (RBSTarget)target;
- (id)_initWithDescriptor:(id)descriptor service:(id)service;
- (id)_initWithServerValidatedDescriptor:(id)descriptor;
- (id)_initWithServerValidatedDescriptor:(id)descriptor service:(id)service;
- (id)debugDescription;
- (id)description;
- (unint64_t)state;
- (void)_serverDidChangeIdentifier:(uint64_t)identifier;
- (void)_serverInvalidateWithError:(id)error;
- (void)_serverWillInvalidate;
- (void)acquireWithInvalidationHandler:(id)handler;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
- (void)setExpirationWarningHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
@end

@implementation RBSAssertion

- (RBSAssertionIdentifier)identifier
{
  descriptor = [(RBSAssertion *)self descriptor];
  identifier = [descriptor identifier];

  return identifier;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = [v1 debugDescription];
  [currentHandler handleFailureInMethod:v0 object:v1 file:@"RBSAssertion.m" lineNumber:218 description:{@"BUG IN CLIENT OF RUNNINGBOARD: Dealloc called before invalidate for assertion %@", v2}];
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
  descriptor = [(RBSAssertion *)self descriptor];
  explanation = [descriptor explanation];

  return explanation;
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
  if (self)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = __37__RBSAssertion__serverWillInvalidate__block_invoke;
    v1[3] = &unk_1E7276440;
    v1[4] = self;
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
  descriptor = [(RBSAssertion *)self descriptor];
  attributes = [descriptor attributes];

  return attributes;
}

- (RBSAssertion)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSAssertion.m" lineNumber:56 description:@"-init is not allowed on RBSAssertion"];

  return 0;
}

- (RBSAssertion)initWithExplanation:(id)explanation target:(id)target attributes:(id)attributes
{
  explanationCopy = explanation;
  targetCopy = target;
  attributesCopy = attributes;
  if (!targetCopy)
  {
    [RBSAssertion initWithExplanation:target:attributes:];
    if (explanationCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    [RBSAssertion initWithExplanation:target:attributes:];
    goto LABEL_3;
  }

  if (!explanationCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = [RBSAssertionDescriptor descriptorWithIdentifier:0 target:targetCopy explanation:explanationCopy attributes:attributesCopy];
  v12 = +[RBSConnection sharedInstance];
  v13 = [(RBSAssertion *)self _initWithDescriptor:v11 service:v12];

  return v13;
}

- (BOOL)acquireWithError:(id *)error
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
  target = [observers target];

  if (!target)
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

  explanation = [observers explanation];

  if (!explanation)
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
  if (error)
  {
    v23 = v6;
    *error = v6;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)acquireWithInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__RBSAssertion_acquireWithInvalidationHandler___block_invoke;
  v6[3] = &unk_1E72763F0;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
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

- (BOOL)invalidateSyncWithError:(id *)error
{
  v6 = 0;
  [(RBSAssertion *)self _clientInvalidateWithError:?];
  v4 = v6;
  if (error)
  {
    v4 = v6;
    *error = v4;
  }

  return v4 == 0;
}

- (RBSTarget)target
{
  descriptor = [(RBSAssertion *)self descriptor];
  target = [descriptor target];

  return target;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
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
      v6 = observerCopy;
      selfCopy = self;
      [RBSWorkloop performCallout:v5];
    }
  }

  else
  {
    [(NSHashTable *)self->_observers addObject:observerCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [RBSAssertion removeObserver:];
  }

  os_unfair_lock_lock_with_options();
  [(NSHashTable *)self->_observers removeObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock_with_options();
  if (self->_state)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"RBSAssertion.m" lineNumber:208 description:@"can only call before acquisition"];
  }

  v5 = [handlerCopy copy];
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setExpirationWarningHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  os_unfair_lock_lock_with_options();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  attributes = [(RBSAssertion *)self attributes];
  v7 = [attributes countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(attributes);
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

      v7 = [attributes countByEnumeratingWithState:&v17 objects:v21 count:16];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"RBSAssertion.m" lineNumber:254 description:@"can only call before acquisition"];
  }

  if ((v7 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"RBSAssertion.m" lineNumber:255 description:@"this assertion does not contain an applicable RBSDurationAttribute"];
  }

  v12 = [handlerCopy copy];
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

  descriptor = [(RBSAssertion *)self descriptor];
  v8 = [v3 initWithFormat:@"<%@:%p| state:%@ descriptor:<%@>", v4, self, v6, descriptor];

  return v8;
}

- (id)_initWithServerValidatedDescriptor:(id)descriptor service:(id)service
{
  descriptorCopy = descriptor;
  serviceCopy = service;
  identifier = [descriptorCopy identifier];

  if (!identifier)
  {
    [RBSAssertion _initWithServerValidatedDescriptor:service:];
  }

  v9 = [(RBSAssertion *)self _initWithDescriptor:descriptorCopy service:serviceCopy];
  v10 = v9;
  if (v9)
  {
    v9[6] = 1;
  }

  return v10;
}

- (id)_initWithServerValidatedDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = +[RBSConnection sharedInstance];
  v6 = [(RBSAssertion *)self _initWithServerValidatedDescriptor:descriptorCopy service:v5];

  return v6;
}

- (id)_initWithDescriptor:(id)descriptor service:(id)service
{
  descriptorCopy = descriptor;
  serviceCopy = service;
  v14.receiver = self;
  v14.super_class = RBSAssertion;
  v8 = [(RBSAssertion *)&v14 init];
  if (v8)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = weakObjectsHashTable;

    v11 = [descriptorCopy copy];
    descriptor = v8->_descriptor;
    v8->_descriptor = v11;

    v8->_state = 0;
    objc_storeStrong(&v8->_service, service);
    *&v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (void)_serverInvalidateWithError:(id)error
{
  errorCopy = error;
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
    v7 = errorCopy;
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

- (BOOL)_clientInvalidateWithError:(uint64_t)error
{
  if (error)
  {
    os_unfair_lock_lock_with_options();
    v4 = *(error + 48);
    *(error + 48) = 2;
    v5 = *(error + 16);
    *(error + 16) = 0;

    v6 = *(error + 24);
    *(error + 24) = 0;

    v7 = *(error + 8);
    *(error + 8) = 0;

    os_unfair_lock_unlock((error + 56));
    if (v4 == 1)
    {
      [*(error + 40) invalidateAssertion:error error:a2];
    }
  }

  return error != 0;
}

- (void)_serverDidChangeIdentifier:(uint64_t)identifier
{
  v3 = a2;
  if (identifier)
  {
    v8 = v3;
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      OUTLINED_FUNCTION_0_0();
      [v7 handleFailureInMethod:@"identifier != nil" object:? file:? lineNumber:? description:?];
    }

    os_unfair_lock_lock_with_options();
    if (*(identifier + 48) == 1)
    {
      os_unfair_lock_lock((identifier + 60));
      v4 = [*(identifier + 32) copyWithIdentifier:v8];
      v5 = *(identifier + 32);
      *(identifier + 32) = v4;

      os_unfair_lock_unlock((identifier + 60));
      os_unfair_lock_unlock((identifier + 56));
    }

    else
    {
      os_unfair_lock_unlock((identifier + 56));
      [*(identifier + 40) invalidateAssertionWithIdentifier:v8 error:0];
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