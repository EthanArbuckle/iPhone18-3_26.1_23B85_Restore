@interface SBSAssertion
- (SBSAssertion)init;
- (SBSAssertion)initWithAssertionName:(id)a3 reason:(id)a4 port:(unsigned int)a5;
- (SBSAssertion)initWithAssertionName:(id)a3 reason:(id)a4 receiveRight:(id)a5;
- (void)addHandler:(id)a3 forDeathOfServerPort:(id)a4;
- (void)dealloc;
@end

@implementation SBSAssertion

- (SBSAssertion)initWithAssertionName:(id)a3 reason:(id)a4 port:(unsigned int)a5
{
  v5 = *&a5;
  v8 = MEMORY[0x1E698E6C0];
  v9 = a4;
  v10 = a3;
  v11 = [[v8 alloc] initWithPort:v5];
  v12 = [(SBSAssertion *)self initWithAssertionName:v10 reason:v9 receiveRight:v11];

  return v12;
}

- (SBSAssertion)initWithAssertionName:(id)a3 reason:(id)a4 receiveRight:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = SBSAssertion;
  v11 = [(SBSAssertion *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    assertionName = v11->_assertionName;
    v11->_assertionName = v12;

    v14 = [v9 copy];
    reason = v11->_reason;
    v11->_reason = v14;

    objc_storeStrong(&v11->_receiveRight, a5);
  }

  return v11;
}

- (SBSAssertion)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBSAssertion.m" lineNumber:41 description:@"use initWithAssertionName:..."];

  return 0;
}

- (void)dealloc
{
  [(SBSAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBSAssertion;
  [(SBSAssertion *)&v3 dealloc];
}

- (void)addHandler:(id)a3 forDeathOfServerPort:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E698E738];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__SBSAssertion_addHandler_forDeathOfServerPort___block_invoke;
  v10[3] = &unk_1E7361468;
  objc_copyWeak(&v12, &location);
  v9 = v6;
  v11 = v9;
  [v8 monitorSendRight:v7 withHandler:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __48__SBSAssertion_addHandler_forDeathOfServerPort___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isValid])
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end