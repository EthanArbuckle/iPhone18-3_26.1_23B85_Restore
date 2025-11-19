@interface _UIAssertionController
- (BOOL)hasAssertionsForReason:(id)a3;
- (BOOL)hasAssertionsOfType:(unint64_t)a3;
- (_UIAssertionController)initWithAssertionSubject:(id)a3;
- (_UIAssertionControllerSubject)subject;
- (id)debugDescription;
- (id)vendAssertionOfType:(unint64_t)a3 initialState:(BOOL)a4 reason:(id)a5 requiresExplicitInvalidation:(BOOL)a6;
- (void)_beginTrackingAssertion:(id)a3;
- (void)_endTrackingAssertion:(id)a3;
- (void)_enforceSubjectAwarenessOfAssertionState:(BOOL)a3 forAssertionType:(unint64_t)a4;
@end

@implementation _UIAssertionController

- (_UIAssertionController)initWithAssertionSubject:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _UIAssertionController;
  v5 = [(_UIAssertionController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_subject, v4);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    activeAssertionRecords = v6->_activeAssertionRecords;
    v6->_activeAssertionRecords = v7;
  }

  return v6;
}

- (id)vendAssertionOfType:(unint64_t)a3 initialState:(BOOL)a4 reason:(id)a5 requiresExplicitInvalidation:(BOOL)a6
{
  v6 = a6;
  v7 = a4;
  v10 = a5;
  v11 = [[_UIAssertionBase alloc] _initWithType:a3 initialState:v7 reason:v10 requiresExplicitInvalidation:v6];

  [v11 setParentController:self];
  [(_UIAssertionController *)self _beginTrackingAssertion:v11];

  return v11;
}

- (BOOL)hasAssertionsOfType:(unint64_t)a3
{
  activeAssertionRecords = self->_activeAssertionRecords;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)activeAssertionRecords objectForKey:v4];

  LOBYTE(v4) = [v5 activeAssertionCount] > 0;
  return v4;
}

- (BOOL)hasAssertionsForReason:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_activeAssertionRecords;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSMutableDictionary *)v5 objectEnumerator];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) reason];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_enforceSubjectAwarenessOfAssertionState:(BOOL)a3 forAssertionType:(unint64_t)a4
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_subject);
  v8 = [WeakRetained assertionActivationStateForType:a4];

  if (v8 != v5)
  {
    v9 = objc_loadWeakRetained(&self->_subject);
    [v9 assertionActivationStateChangedToState:v5 forType:a4];
  }
}

- (void)_beginTrackingAssertion:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  activeAssertionRecords = self->_activeAssertionRecords;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "type")}];
  v8 = [(NSMutableDictionary *)activeAssertionRecords objectForKey:v7];

  if (v8)
  {
    v9 = [v8 initialState];
    if (v9 != [v5 initialState])
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"_UIAssertionController.m" lineNumber:153 description:@"Assertion controller contains existing assertion with a different initial state. This is not allowed."];
    }

    [v8 setActiveAssertionCount:{objc_msgSend(v8, "activeAssertionCount") + 1}];
    v10 = _SharedAssertionLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = 134218240;
      v17 = [v8 type];
      v18 = 2048;
      v19 = [v8 activeAssertionCount];
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_INFO, "Incrementing existing assertion record of type %lu. New active count: %ld", &v16, 0x16u);
    }
  }

  else
  {
    v11 = _SharedAssertionLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v16 = 134217984;
      v17 = [v5 type];
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_INFO, "Started tracking new assertion of type: %lu", &v16, 0xCu);
    }

    v10 = objc_opt_new();
    [v10 setActiveAssertionCount:1];
    -[NSObject setInitialState:](v10, "setInitialState:", [v5 initialState]);
    -[NSObject setType:](v10, "setType:", [v5 type]);
    v12 = [v5 reason];
    [v10 setReason:v12];

    v13 = self->_activeAssertionRecords;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "type")}];
    [(NSMutableDictionary *)v13 setObject:v10 forKey:v14];
  }

  -[_UIAssertionController _enforceSubjectAwarenessOfAssertionState:forAssertionType:](self, "_enforceSubjectAwarenessOfAssertionState:forAssertionType:", [v5 initialState], objc_msgSend(v5, "type"));
}

- (void)_endTrackingAssertion:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  activeAssertionRecords = self->_activeAssertionRecords;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "type")}];
  v8 = [(NSMutableDictionary *)activeAssertionRecords objectForKey:v7];

  if (!v8)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIAssertionController.m" lineNumber:180 description:@"Releasing an assertion that this controller is not aware of."];
  }

  if ([v8 activeAssertionCount] <= 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIAssertionController.m" lineNumber:183 description:@"Active assertion count reached below zero."];
  }

  [v8 setActiveAssertionCount:{objc_msgSend(v8, "activeAssertionCount") - 1}];
  v9 = _SharedAssertionLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v16 = 134218240;
    v17 = [v8 type];
    v18 = 2048;
    v19 = [v8 activeAssertionCount];
    _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_INFO, "Decrementing assertion of type %lu. New active count: %ld", &v16, 0x16u);
  }

  if (![v8 activeAssertionCount])
  {
    v10 = _SharedAssertionLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v8 type];
      v16 = 134217984;
      v17 = v11;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_INFO, "Releasing assertion of type %lu", &v16, 0xCu);
    }

    -[_UIAssertionController _enforceSubjectAwarenessOfAssertionState:forAssertionType:](self, "_enforceSubjectAwarenessOfAssertionState:forAssertionType:", [v8 initialState] ^ 1, objc_msgSend(v5, "type"));
    v12 = self->_activeAssertionRecords;
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "type")}];
    [(NSMutableDictionary *)v12 removeObjectForKey:v13];
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSMutableDictionary *)self->_activeAssertionRecords allValues];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v6];

  return v7;
}

- (_UIAssertionControllerSubject)subject
{
  WeakRetained = objc_loadWeakRetained(&self->_subject);

  return WeakRetained;
}

@end