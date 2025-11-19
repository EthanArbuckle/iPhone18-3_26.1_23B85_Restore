@interface _HDSPPowerAssertion
+ (id)assertionWithIdentifier:(id)a3 timeout:(double)a4;
- (_HDSPPowerAssertion)initWithIdentifier:(id)a3 timeout:(double)a4;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_locked_release;
- (void)_withLock:(id)a3;
- (void)dealloc;
- (void)releaseAssertion;
@end

@implementation _HDSPPowerAssertion

+ (id)assertionWithIdentifier:(id)a3 timeout:(double)a4
{
  v5 = a3;
  v6 = [objc_alloc(objc_opt_class()) initWithIdentifier:v5 timeout:a4];

  return v6;
}

- (_HDSPPowerAssertion)initWithIdentifier:(id)a3 timeout:(double)a4
{
  v36[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v28.receiver = self;
  v28.super_class = _HDSPPowerAssertion;
  v8 = [(_HDSPPowerAssertion *)&v28 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_assertionLock._os_unfair_lock_opaque = 0;
    v10 = HKSPLogForCategory();
    v9->_signpost_id = os_signpost_id_generate(v10);

    v11 = HKSPLogForCategory();
    v12 = os_signpost_enabled(v11);

    if (v12)
    {
      v13 = HKSPLogForCategory();
      v14 = v13;
      signpost_id = v9->_signpost_id;
      if (signpost_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_269B11000, v14, OS_SIGNPOST_INTERVAL_BEGIN, signpost_id, "_HDSPPowerAssertion", "", buf, 2u);
      }
    }

    v35[0] = @"AssertType";
    v35[1] = @"AssertName";
    v36[0] = @"PreventUserIdleSystemSleep";
    v36[1] = v7;
    v36[2] = @"TimeoutActionRelease";
    v35[2] = @"TimeoutAction";
    v35[3] = @"TimeoutSeconds";
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v36[3] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:4];

    v18 = IOPMAssertionCreateWithProperties(v17, &v9->_assertionID);
    if (v18)
    {
      v19 = v18;
      v20 = HKSPLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = MEMORY[0x277CCABB0];
        v26 = v24;
        v27 = [v25 numberWithInt:v19];
        *buf = 138543874;
        v30 = v24;
        v31 = 2114;
        v32 = v27;
        v33 = 2114;
        v34 = v7;
        _os_log_error_impl(&dword_269B11000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Error %{public}@ taking power assert for %{public}@", buf, 0x20u);
      }
    }

    v21 = v9;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_withLock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_assertionLock);
  v4[2](v4);

  os_unfair_lock_unlock(&self->_assertionLock);
}

- (void)releaseAssertion
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __39___HDSPPowerAssertion_releaseAssertion__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(_HDSPPowerAssertion *)self _withLock:v2];
}

- (void)_locked_release
{
  assertionID = self->_assertionID;
  if (assertionID)
  {
    IOPMAssertionRelease(assertionID);
    self->_assertionID = 0;
    v4 = HKSPLogForCategory();
    v5 = os_signpost_enabled(v4);

    if (v5)
    {
      v6 = HKSPLogForCategory();
      v7 = v6;
      signpost_id = self->_signpost_id;
      if (signpost_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
      {
        *v9 = 0;
        _os_signpost_emit_with_name_impl(&dword_269B11000, v7, OS_SIGNPOST_INTERVAL_END, signpost_id, "_HDSPPowerAssertion", "", v9, 2u);
      }
    }
  }
}

- (void)dealloc
{
  [(_HDSPPowerAssertion *)self releaseAssertion];
  v3.receiver = self;
  v3.super_class = _HDSPPowerAssertion;
  [(_HDSPPowerAssertion *)&v3 dealloc];
}

- (id)succinctDescription
{
  v2 = [(_HDSPPowerAssertion *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(_HDSPPowerAssertion *)self identifier];
  [v3 appendString:v4 withName:@"identifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(_HDSPPowerAssertion *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end