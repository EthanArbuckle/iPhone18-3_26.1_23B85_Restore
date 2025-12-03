@interface _HDSPOSTransaction
+ (id)assertionWithIdentifier:(id)identifier timeout:(double)timeout;
- (_HDSPOSTransaction)initWithIdentifier:(id)identifier timeout:(double)timeout;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_locked_release;
- (void)_withLock:(id)lock;
- (void)dealloc;
- (void)releaseAssertion;
@end

@implementation _HDSPOSTransaction

+ (id)assertionWithIdentifier:(id)identifier timeout:(double)timeout
{
  identifierCopy = identifier;
  v6 = [objc_alloc(objc_opt_class()) initWithIdentifier:identifierCopy timeout:timeout];

  return v6;
}

- (_HDSPOSTransaction)initWithIdentifier:(id)identifier timeout:(double)timeout
{
  identifierCopy = identifier;
  v28.receiver = self;
  v28.super_class = _HDSPOSTransaction;
  v8 = [(_HDSPOSTransaction *)&v28 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_transactionLock._os_unfair_lock_opaque = 0;
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
        LOWORD(buf[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_269B11000, v14, OS_SIGNPOST_INTERVAL_BEGIN, signpost_id, "_HDSPOSTransaction", "", buf, 2u);
      }
    }

    [identifierCopy UTF8String];
    v16 = os_transaction_create();
    transaction = v9->_transaction;
    v9->_transaction = v16;

    v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    timer = v9->_timer;
    v9->_timer = v18;

    objc_initWeak(buf, v9);
    v20 = v9->_timer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49___HDSPOSTransaction_initWithIdentifier_timeout___block_invoke;
    handler[3] = &unk_279C7C2A8;
    objc_copyWeak(&v26, buf);
    dispatch_source_set_event_handler(v20, handler);
    v21 = v9->_timer;
    v22 = dispatch_time(0, (timeout * 1000000000.0));
    dispatch_source_set_timer(v21, v22, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v9->_timer);
    v23 = v9;
    objc_destroyWeak(&v26);
    objc_destroyWeak(buf);
  }

  return v9;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_transactionLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_transactionLock);
}

- (void)releaseAssertion
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __38___HDSPOSTransaction_releaseAssertion__block_invoke;
  v2[3] = &unk_279C7B108;
  v2[4] = self;
  [(_HDSPOSTransaction *)self _withLock:v2];
}

- (void)_locked_release
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  transaction = self->_transaction;
  self->_transaction = 0;

  v5 = self->_timer;
  self->_timer = 0;

  v6 = HKSPLogForCategory();
  v7 = os_signpost_enabled(v6);

  if (v7)
  {
    v8 = HKSPLogForCategory();
    v9 = v8;
    signpost_id = self->_signpost_id;
    if (signpost_id - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_269B11000, v9, OS_SIGNPOST_INTERVAL_END, signpost_id, "_HDSPOSTransaction", "", v11, 2u);
    }
  }
}

- (void)dealloc
{
  [(_HDSPOSTransaction *)self releaseAssertion];
  v3.receiver = self;
  v3.super_class = _HDSPOSTransaction;
  [(_HDSPOSTransaction *)&v3 dealloc];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(_HDSPOSTransaction *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  identifier = [(_HDSPOSTransaction *)self identifier];
  [v3 appendString:identifier withName:@"identifier"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(_HDSPOSTransaction *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end