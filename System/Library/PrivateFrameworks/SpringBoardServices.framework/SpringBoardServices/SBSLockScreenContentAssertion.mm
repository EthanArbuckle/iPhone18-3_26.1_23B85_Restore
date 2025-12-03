@interface SBSLockScreenContentAssertion
+ (id)acquireContentProviderAssertionForType:(unint64_t)type slot:(id)slot identifier:(id)identifier configurationObject:(id)object errorHandler:(id)handler;
- (BOOL)_supportsReacquisition;
- (SBSLockScreenContentAssertion)initWithType:(unint64_t)type slot:(id)slot identifier:(id)identifier configurationObject:(id)object errorHandler:(id)handler;
- (void)_acquireAssertionWithType:(unint64_t)type slot:(id)slot identifier:(id)identifier configurationObject:(id)object;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBSLockScreenContentAssertion

+ (id)acquireContentProviderAssertionForType:(unint64_t)type slot:(id)slot identifier:(id)identifier configurationObject:(id)object errorHandler:(id)handler
{
  slotCopy = slot;
  identifierCopy = identifier;
  objectCopy = object;
  handlerCopy = handler;
  if ([self _isRestrictedDevice])
  {
    if (handlerCopy)
    {
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBSLockScreenContentAssertionErrorDomain" code:3 userInfo:0];
      handlerCopy[2](handlerCopy, v16);
    }

    v17 = 0;
  }

  else
  {
    v17 = [[self alloc] initWithType:type slot:slotCopy identifier:identifierCopy configurationObject:objectCopy errorHandler:handlerCopy];
  }

  return v17;
}

- (SBSLockScreenContentAssertion)initWithType:(unint64_t)type slot:(id)slot identifier:(id)identifier configurationObject:(id)object errorHandler:(id)handler
{
  slotCopy = slot;
  identifierCopy = identifier;
  objectCopy = object;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = SBSLockScreenContentAssertion;
  v16 = [(SBSLockScreenContentAssertion *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(SBSLockScreenContentAssertion *)v16 _setErrorHandler:handlerCopy];
    [(SBSLockScreenContentAssertion *)v17 setSlot:slotCopy];
    [(SBSLockScreenContentAssertion *)v17 setIdentifier:identifierCopy];
    [(SBSLockScreenContentAssertion *)v17 setConfigurationObject:objectCopy];
    [(SBSLockScreenContentAssertion *)v17 _acquireAssertionWithType:type slot:slotCopy identifier:identifierCopy configurationObject:objectCopy];
  }

  return v17;
}

- (void)dealloc
{
  [(SBSLockScreenContentAction *)self->_action invalidate];
  action = self->_action;
  self->_action = 0;

  v4.receiver = self;
  v4.super_class = SBSLockScreenContentAssertion;
  [(SBSLockScreenContentAssertion *)&v4 dealloc];
}

- (void)invalidate
{
  [(SBSLockScreenContentAction *)self->_action invalidate];
  action = self->_action;
  self->_action = 0;
}

- (void)_acquireAssertionWithType:(unint64_t)type slot:(id)slot identifier:(id)identifier configurationObject:(id)object
{
  slotCopy = slot;
  identifierCopy = identifier;
  objectCopy = object;
  objc_initWeak(&location, self);
  v13 = [SBSLockScreenContentAction alloc];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __95__SBSLockScreenContentAssertion__acquireAssertionWithType_slot_identifier_configurationObject___block_invoke;
  v24 = &unk_1E735EE28;
  objc_copyWeak(v28, &location);
  v28[1] = type;
  v14 = slotCopy;
  v25 = v14;
  v15 = identifierCopy;
  v26 = v15;
  v16 = objectCopy;
  v27 = v16;
  v17 = [(SBSLockScreenContentAction *)v13 initWithType:type slot:v14 identifier:v15 configurationObject:v16 handler:&v21];
  action = self->_action;
  self->_action = v17;

  if (self->_action)
  {
    v19 = [MEMORY[0x1E695DFD8] setWithObject:{v21, v22, v23, v24, v25, v26}];
    mEMORY[0x1E699FCA0] = [MEMORY[0x1E699FCA0] sharedService];
    [mEMORY[0x1E699FCA0] sendActions:v19 withResult:0];
  }

  else
  {
    v19 = SBLogDashBoard();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SBSLockScreenContentAssertion _acquireAssertionWithType:v14 slot:v15 identifier:v19 configurationObject:?];
    }
  }

  objc_destroyWeak(v28);
  objc_destroyWeak(&location);
}

void __95__SBSLockScreenContentAssertion__acquireAssertionWithType_slot_identifier_configurationObject___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [v3 error];

  v6 = [v5 domain];
  v7 = *MEMORY[0x1E698E5A8];
  if ([v6 isEqualToString:*MEMORY[0x1E698E5A8]] && objc_msgSend(v5, "code") == 1)
  {
    v8 = [WeakRetained _supportsReacquisition];

    if (v8)
    {
      [WeakRetained _acquireAssertionWithType:*(a1 + 64) slot:*(a1 + 32) identifier:*(a1 + 40) configurationObject:*(a1 + 48)];
      goto LABEL_14;
    }
  }

  else
  {
  }

  v9 = [v5 domain];
  if ([v9 isEqualToString:@"SBSLockScreenContentAssertionErrorDomain"])
  {
    goto LABEL_10;
  }

  v10 = [v5 domain];
  v11 = [v10 isEqualToString:v7];

  if ((v11 & 1) == 0)
  {
    v9 = SBLogDashBoard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __95__SBSLockScreenContentAssertion__acquireAssertionWithType_slot_identifier_configurationObject___block_invoke_cold_1(v5, v9);
    }

LABEL_10:
  }

  v12 = [WeakRetained _errorHandler];
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12, v5);
  }

LABEL_14:
}

- (BOOL)_supportsReacquisition
{
  slot = [(SBSLockScreenContentAssertion *)self slot];
  v3 = [slot isEqualToString:@"App"];

  return v3;
}

- (void)_acquireAssertionWithType:(os_log_t)log slot:identifier:configurationObject:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_19169D000, log, OS_LOG_TYPE_ERROR, "[ContentAssertion] Action is nil after initialization, dropping content entirely. slot: %{public}@ identifier: %{public}@", &v3, 0x16u);
}

void __95__SBSLockScreenContentAssertion__acquireAssertionWithType_slot_identifier_configurationObject___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_19169D000, a2, OS_LOG_TYPE_ERROR, "%{public}@", &v4, 0xCu);
}

@end