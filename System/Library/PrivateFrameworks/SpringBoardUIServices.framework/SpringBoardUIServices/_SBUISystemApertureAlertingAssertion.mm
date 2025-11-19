@interface _SBUISystemApertureAlertingAssertion
- (SBUISystemApertureElementSource)elementSource;
- (_SBUISystemApertureAlertingAssertion)initWithElementSource:(id)a3;
- (id)_descriptionConstituents;
- (void)addInvalidationBlock:(id)a3;
- (void)resetAutomaticInvalidationTimer;
- (void)setAlertingAction:(id)a3;
- (void)setAutomaticallyInvalidatable:(BOOL)a3;
@end

@implementation _SBUISystemApertureAlertingAssertion

- (_SBUISystemApertureAlertingAssertion)initWithElementSource:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SBUISystemApertureAlertingAssertion;
  v5 = [(SBUISystemApertureAssertion *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_elementSource, v4);
    v6->_automaticallyInvalidatable = 1;
    objc_initWeak(&location, v6);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62___SBUISystemApertureAlertingAssertion_initWithElementSource___block_invoke;
    v9[3] = &unk_1E789FCC0;
    objc_copyWeak(&v10, &location);
    [(_SBUISystemApertureAlertingAssertion *)v6 addInvalidationBlock:v9];
    v7 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v6;
      _os_log_impl(&dword_1A9A79000, v7, OS_LOG_TYPE_DEFAULT, "Created alerting assertion: %{public}@", buf, 0xCu);
    }

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)setAlertingAction:(id)a3
{
  v5 = a3;
  if (self->_alertingAction)
  {
    [_SBUISystemApertureAlertingAssertion setAlertingAction:];
  }

  if ([(SBUISystemApertureAssertion *)self isValid])
  {
    objc_storeStrong(&self->_alertingAction, a3);
    objc_initWeak(&location, self);
    alertingAction = self->_alertingAction;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58___SBUISystemApertureAlertingAssertion_setAlertingAction___block_invoke;
    v9[3] = &unk_1E789DC30;
    objc_copyWeak(&v10, &location);
    [(SBUISystemApertureAlertingAction *)alertingAction setNullificationHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v7 = self->_alertingAction;
    v8 = [(SBUISystemApertureAssertion *)self _invalidationReason];
    [(SBUISystemApertureAlertingAction *)v7 invalidateWithReason:v8];
  }
}

- (id)_descriptionConstituents
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = NSStringFromBOOL();
  [v3 setObject:v4 forKey:@"automatically invalidatable"];

  alertingAction = self->_alertingAction;
  if (alertingAction)
  {
    [v3 setObject:alertingAction forKey:@"alerting action"];
  }

  v9.receiver = self;
  v9.super_class = _SBUISystemApertureAlertingAssertion;
  v6 = [(SBUISystemApertureAssertion *)&v9 _descriptionConstituents];
  v7 = [v6 arrayByAddingObject:v3];

  return v7;
}

- (void)setAutomaticallyInvalidatable:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  if ([(SBUISystemApertureAssertion *)self isValid]&& self->_automaticallyInvalidatable != v3)
  {
    self->_automaticallyInvalidatable = v3;
    v5 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (self->_automaticallyInvalidatable)
      {
        v6 = @"enabled";
      }

      else
      {
        v6 = @"disabled";
      }

      v9 = 138412546;
      v10 = v6;
      v11 = 2114;
      v12 = self;
      _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "Automatic invalidation %@: %{public}@", &v9, 0x16u);
    }

    if (self->_automaticallyInvalidatable)
    {
      v7 = 9;
    }

    else
    {
      v7 = 8;
    }

    WeakRetained = objc_loadWeakRetained(&self->_elementSource);
    [WeakRetained _sendActionForCommand:v7];
  }
}

- (void)addInvalidationBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61___SBUISystemApertureAlertingAssertion_addInvalidationBlock___block_invoke;
  v7[3] = &unk_1E789FEC0;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = _SBUISystemApertureAlertingAssertion;
  v5 = v4;
  [(SBUISystemApertureAssertion *)&v6 addInvalidationBlock:v7];
}

- (void)resetAutomaticInvalidationTimer
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(SBUISystemApertureAssertion *)self isValid])
  {
    v3 = SBLogSystemApertureHosting();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = self;
      _os_log_impl(&dword_1A9A79000, v3, OS_LOG_TYPE_DEFAULT, "Automatic invalidation timer reset: %{public}@", &v5, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_elementSource);
    [WeakRetained _sendActionForCommand:10];
  }
}

- (SBUISystemApertureElementSource)elementSource
{
  WeakRetained = objc_loadWeakRetained(&self->_elementSource);

  return WeakRetained;
}

- (void)setAlertingAction:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end