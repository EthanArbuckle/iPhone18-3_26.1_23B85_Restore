@interface SBMedusaHostedKeyboardWindowLevelAssertion
- (SBMedusaHostedKeyboardWindowLevelAssertion)initWithMedusaHostedKeyboardWindow:(id)a3 priority:(unint64_t)a4 windowLevel:(double)a5;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBMedusaHostedKeyboardWindowLevelAssertion

- (SBMedusaHostedKeyboardWindowLevelAssertion)initWithMedusaHostedKeyboardWindow:(id)a3 priority:(unint64_t)a4 windowLevel:(double)a5
{
  v8 = a3;
  v22.receiver = self;
  v22.super_class = SBMedusaHostedKeyboardWindowLevelAssertion;
  v9 = [(SBMedusaHostedKeyboardWindowLevelAssertion *)&v22 init];
  v10 = v9;
  if (v9)
  {
    v9->_priority = a4;
    v9->_windowLevel = a5;
    objc_initWeak(&location, v9);
    objc_initWeak(&from, v8);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __102__SBMedusaHostedKeyboardWindowLevelAssertion_initWithMedusaHostedKeyboardWindow_priority_windowLevel___block_invoke;
    v17 = &unk_2783B45E8;
    objc_copyWeak(&v18, &from);
    objc_copyWeak(&v19, &location);
    v11 = MEMORY[0x223D6F7F0](&v14);
    invalidationHandler = v10->_invalidationHandler;
    v10->_invalidationHandler = v11;

    [v8 addWindowLevelAssertion:{v10, v14, v15, v16, v17}];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __102__SBMedusaHostedKeyboardWindowLevelAssertion_initWithMedusaHostedKeyboardWindow_priority_windowLevel___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeWindowLevelAssertion:v2];
}

- (void)dealloc
{
  [(SBMedusaHostedKeyboardWindowLevelAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBMedusaHostedKeyboardWindowLevelAssertion;
  [(SBMedusaHostedKeyboardWindowLevelAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2](invalidationHandler, a2);
    v4 = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }
}

@end