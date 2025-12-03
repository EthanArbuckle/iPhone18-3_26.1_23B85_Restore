@interface _UIAssertionController
- (BOOL)hasAssertionsForReason:(id)reason;
- (BOOL)hasAssertionsOfType:(unint64_t)type;
- (_UIAssertionController)initWithAssertionSubject:(id)subject;
- (_UIAssertionControllerSubject)subject;
- (id)debugDescription;
- (id)vendAssertionOfType:(unint64_t)type initialState:(BOOL)state reason:(id)reason requiresExplicitInvalidation:(BOOL)invalidation;
- (void)_beginTrackingAssertion:(id)assertion;
- (void)_endTrackingAssertion:(id)assertion;
- (void)_enforceSubjectAwarenessOfAssertionState:(BOOL)state forAssertionType:(unint64_t)type;
@end

@implementation _UIAssertionController

- (_UIAssertionController)initWithAssertionSubject:(id)subject
{
  subjectCopy = subject;
  v10.receiver = self;
  v10.super_class = _UIAssertionController;
  v5 = [(_UIAssertionController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_subject, subjectCopy);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeAssertionRecords = v6->_activeAssertionRecords;
    v6->_activeAssertionRecords = v7;
  }

  return v6;
}

- (id)vendAssertionOfType:(unint64_t)type initialState:(BOOL)state reason:(id)reason requiresExplicitInvalidation:(BOOL)invalidation
{
  invalidationCopy = invalidation;
  stateCopy = state;
  reasonCopy = reason;
  v11 = [[_UIAssertionBase alloc] _initWithType:type initialState:stateCopy reason:reasonCopy requiresExplicitInvalidation:invalidationCopy];

  [v11 setParentController:self];
  [(_UIAssertionController *)self _beginTrackingAssertion:v11];

  return v11;
}

- (BOOL)hasAssertionsOfType:(unint64_t)type
{
  activeAssertionRecords = self->_activeAssertionRecords;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v5 = [(NSMutableDictionary *)activeAssertionRecords objectForKey:v4];

  LOBYTE(v4) = [v5 activeAssertionCount] > 0;
  return v4;
}

- (BOOL)hasAssertionsForReason:(id)reason
{
  v18 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  v5 = self->_activeAssertionRecords;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  objectEnumerator = [(NSMutableDictionary *)v5 objectEnumerator];
  v7 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        reason = [*(*(&v13 + 1) + 8 * i) reason];
        v11 = [reason isEqualToString:reasonCopy];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)_enforceSubjectAwarenessOfAssertionState:(BOOL)state forAssertionType:(unint64_t)type
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_subject);
  v8 = [WeakRetained assertionActivationStateForType:type];

  if (v8 != stateCopy)
  {
    v9 = objc_loadWeakRetained(&self->_subject);
    [v9 assertionActivationStateChangedToState:stateCopy forType:type];
  }
}

- (void)_beginTrackingAssertion:(id)assertion
{
  v20 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  activeAssertionRecords = self->_activeAssertionRecords;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(assertionCopy, "type")}];
  v8 = [(NSMutableDictionary *)activeAssertionRecords objectForKey:v7];

  if (v8)
  {
    initialState = [v8 initialState];
    if (initialState != [assertionCopy initialState])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIAssertionController.m" lineNumber:153 description:@"Assertion controller contains existing assertion with a different initial state. This is not allowed."];
    }

    [v8 setActiveAssertionCount:{objc_msgSend(v8, "activeAssertionCount") + 1}];
    v10 = _SharedAssertionLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = 134218240;
      type = [v8 type];
      v18 = 2048;
      activeAssertionCount = [v8 activeAssertionCount];
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_INFO, "Incrementing existing assertion record of type %lu. New active count: %ld", &v16, 0x16u);
    }
  }

  else
  {
    v11 = _SharedAssertionLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      type = [assertionCopy type];
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_INFO, "Started tracking new assertion of type: %lu", &v16, 0xCu);
    }

    v10 = objc_opt_new();
    [v10 setActiveAssertionCount:1];
    -[NSObject setInitialState:](v10, "setInitialState:", [assertionCopy initialState]);
    -[NSObject setType:](v10, "setType:", [assertionCopy type]);
    reason = [assertionCopy reason];
    [v10 setReason:reason];

    v13 = self->_activeAssertionRecords;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(assertionCopy, "type")}];
    [(NSMutableDictionary *)v13 setObject:v10 forKey:v14];
  }

  -[_UIAssertionController _enforceSubjectAwarenessOfAssertionState:forAssertionType:](self, "_enforceSubjectAwarenessOfAssertionState:forAssertionType:", [assertionCopy initialState], objc_msgSend(assertionCopy, "type"));
}

- (void)_endTrackingAssertion:(id)assertion
{
  v20 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  activeAssertionRecords = self->_activeAssertionRecords;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(assertionCopy, "type")}];
  v8 = [(NSMutableDictionary *)activeAssertionRecords objectForKey:v7];

  if (!v8)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIAssertionController.m" lineNumber:180 description:@"Releasing an assertion that this controller is not aware of."];
  }

  if ([v8 activeAssertionCount] <= 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIAssertionController.m" lineNumber:183 description:@"Active assertion count reached below zero."];
  }

  [v8 setActiveAssertionCount:{objc_msgSend(v8, "activeAssertionCount") - 1}];
  v9 = _SharedAssertionLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v16 = 134218240;
    type = [v8 type];
    v18 = 2048;
    activeAssertionCount = [v8 activeAssertionCount];
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_INFO, "Decrementing assertion of type %lu. New active count: %ld", &v16, 0x16u);
  }

  if (![v8 activeAssertionCount])
  {
    v10 = _SharedAssertionLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      type2 = [v8 type];
      v16 = 134217984;
      type = type2;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_INFO, "Releasing assertion of type %lu", &v16, 0xCu);
    }

    -[_UIAssertionController _enforceSubjectAwarenessOfAssertionState:forAssertionType:](self, "_enforceSubjectAwarenessOfAssertionState:forAssertionType:", [v8 initialState] ^ 1, objc_msgSend(assertionCopy, "type"));
    v12 = self->_activeAssertionRecords;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(assertionCopy, "type")}];
    [(NSMutableDictionary *)v12 removeObjectForKey:v13];
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  allValues = [(NSMutableDictionary *)self->_activeAssertionRecords allValues];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, allValues];

  return v7;
}

- (_UIAssertionControllerSubject)subject
{
  WeakRetained = objc_loadWeakRetained(&self->_subject);

  return WeakRetained;
}

@end