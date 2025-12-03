@interface SBSAssertion
- (SBSAssertion)init;
- (SBSAssertion)initWithAssertionName:(id)name reason:(id)reason port:(unsigned int)port;
- (SBSAssertion)initWithAssertionName:(id)name reason:(id)reason receiveRight:(id)right;
- (void)addHandler:(id)handler forDeathOfServerPort:(id)port;
- (void)dealloc;
@end

@implementation SBSAssertion

- (SBSAssertion)initWithAssertionName:(id)name reason:(id)reason port:(unsigned int)port
{
  v5 = *&port;
  v8 = MEMORY[0x1E698E6C0];
  reasonCopy = reason;
  nameCopy = name;
  v11 = [[v8 alloc] initWithPort:v5];
  v12 = [(SBSAssertion *)self initWithAssertionName:nameCopy reason:reasonCopy receiveRight:v11];

  return v12;
}

- (SBSAssertion)initWithAssertionName:(id)name reason:(id)reason receiveRight:(id)right
{
  nameCopy = name;
  reasonCopy = reason;
  rightCopy = right;
  v17.receiver = self;
  v17.super_class = SBSAssertion;
  v11 = [(SBSAssertion *)&v17 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    assertionName = v11->_assertionName;
    v11->_assertionName = v12;

    v14 = [reasonCopy copy];
    reason = v11->_reason;
    v11->_reason = v14;

    objc_storeStrong(&v11->_receiveRight, right);
  }

  return v11;
}

- (SBSAssertion)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBSAssertion.m" lineNumber:41 description:@"use initWithAssertionName:..."];

  return 0;
}

- (void)dealloc
{
  [(SBSAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBSAssertion;
  [(SBSAssertion *)&v3 dealloc];
}

- (void)addHandler:(id)handler forDeathOfServerPort:(id)port
{
  handlerCopy = handler;
  portCopy = port;
  objc_initWeak(&location, self);
  v8 = MEMORY[0x1E698E738];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__SBSAssertion_addHandler_forDeathOfServerPort___block_invoke;
  v10[3] = &unk_1E7361468;
  objc_copyWeak(&v12, &location);
  v9 = handlerCopy;
  v11 = v9;
  [v8 monitorSendRight:portCopy withHandler:v10];

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