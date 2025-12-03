@interface HDSPAssertionManager
+ (Class)assertionClassForType:(unint64_t)type;
- (HDSPAssertionManager)init;
- (id)_assertionsOfType:(unint64_t)type;
- (id)activeAssertionIdentifiersOfType:(unint64_t)type;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diagnosticDescription;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_withLock:(id)lock;
- (void)releaseAssertionWithIdentifier:(id)identifier;
- (void)takeAssertion:(id)assertion;
- (void)takeAssertionWithIdentifier:(id)identifier type:(unint64_t)type;
- (void)takeAssertionWithIdentifier:(id)identifier type:(unint64_t)type timeout:(double)timeout;
- (void)takeIndefiniteAssertionWithIdentifier:(id)identifier type:(unint64_t)type;
@end

@implementation HDSPAssertionManager

- (HDSPAssertionManager)init
{
  v16 = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = HDSPAssertionManager;
  v2 = [(HDSPAssertionManager *)&v11 init];
  if (v2)
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      *buf = 138543618;
      v13 = v4;
      v14 = 2048;
      v15 = v2;
      v5 = v4;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertions = v2->_assertions;
    v2->_assertions = v6;

    v2->_assertionsLock._os_unfair_lock_opaque = 0;
    v8 = v2;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_assertionsLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_assertionsLock);
}

- (void)takeAssertionWithIdentifier:(id)identifier type:(unint64_t)type
{
  identifierCopy = identifier;
  v7 = [objc_msgSend(objc_opt_class() assertionClassForType:{type), "assertionWithIdentifier:", identifierCopy}];

  [(HDSPAssertionManager *)self takeAssertion:v7];
}

- (void)takeAssertionWithIdentifier:(id)identifier type:(unint64_t)type timeout:(double)timeout
{
  identifierCopy = identifier;
  v9 = [objc_msgSend(objc_opt_class() assertionClassForType:{type), "assertionWithIdentifier:timeout:", identifierCopy, timeout}];

  [(HDSPAssertionManager *)self takeAssertion:v9];
}

- (void)takeIndefiniteAssertionWithIdentifier:(id)identifier type:(unint64_t)type
{
  v6 = MEMORY[0x277CBEAA8];
  identifierCopy = identifier;
  distantFuture = [v6 distantFuture];
  [distantFuture timeIntervalSinceNow];
  v10 = v9;

  v11 = [objc_msgSend(objc_opt_class() assertionClassForType:{type), "assertionWithIdentifier:timeout:", identifierCopy, v10}];

  [(HDSPAssertionManager *)self takeAssertion:v11];
}

- (void)takeAssertion:(id)assertion
{
  v17 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    identifier = [assertionCopy identifier];
    *buf = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = identifier;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Taking assertion with identifier %{public}@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__HDSPAssertionManager_takeAssertion___block_invoke;
  v11[3] = &unk_279C7B2D0;
  v11[4] = self;
  v12 = assertionCopy;
  v9 = assertionCopy;
  [(HDSPAssertionManager *)self _withLock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __38__HDSPAssertionManager_takeAssertion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 16);
  v3 = [v1 identifier];
  [v2 setObject:v1 forKeyedSubscript:v3];
}

+ (Class)assertionClassForType:(unint64_t)type
{
  if (type == 1)
  {
    v4 = off_279C7A868;
  }

  else
  {
    if (type != 2)
    {
      goto LABEL_6;
    }

    v4 = &off_279C7A870;
  }

  v5 = *v4;
  self = objc_opt_class();
LABEL_6:

  return self;
}

- (void)releaseAssertionWithIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = identifierCopy;
    v6 = v12;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Releasing assertion with identifier %{public}@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HDSPAssertionManager_releaseAssertionWithIdentifier___block_invoke;
  v9[3] = &unk_279C7B2D0;
  v9[4] = self;
  v10 = identifierCopy;
  v7 = identifierCopy;
  [(HDSPAssertionManager *)self _withLock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __55__HDSPAssertionManager_releaseAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    [v2 releaseAssertion];
  }

  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
}

- (id)activeAssertionIdentifiersOfType:(unint64_t)type
{
  v3 = [(HDSPAssertionManager *)self _assertionsOfType:type];
  v4 = [v3 na_map:&__block_literal_global_19];

  return v4;
}

- (id)_assertionsOfType:(unint64_t)type
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__16;
  v10 = __Block_byref_object_dispose__16;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__HDSPAssertionManager__assertionsOfType___block_invoke;
  v5[3] = &unk_279C7C260;
  v5[4] = self;
  v5[5] = &v6;
  v5[6] = type;
  [(HDSPAssertionManager *)self _withLock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __42__HDSPAssertionManager__assertionsOfType___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HDSPAssertionManager__assertionsOfType___block_invoke_2;
  v7[3] = &unk_279C7CA00;
  v3 = a1[6];
  v7[4] = a1[4];
  v7[5] = v3;
  v4 = [v2 na_filter:v7];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __42__HDSPAssertionManager__assertionsOfType___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = a2;
  [objc_opt_class() assertionClassForType:*(v2 + 40)];
  LOBYTE(v2) = objc_opt_isKindOfClass();

  return v2 & 1;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(HDSPAssertionManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(HDSPAssertionManager *)self _assertionsOfType:1];
  [v3 appendArraySection:v4 withName:@"transactions" multilinePrefix:&stru_287A83178 skipIfEmpty:1];

  v5 = [(HDSPAssertionManager *)self _assertionsOfType:2];
  [v3 appendArraySection:v5 withName:@"assertions" multilinePrefix:&stru_287A83178 skipIfEmpty:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HDSPAssertionManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)diagnosticDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HDSPAssertionManager *)self activeAssertionIdentifiersOfType:2];
  v5 = [(HDSPAssertionManager *)self activeAssertionIdentifiersOfType:1];
  v6 = [v3 stringWithFormat:@"Assertions: %@\nTransactions: %@", v4, v5];

  return v6;
}

@end