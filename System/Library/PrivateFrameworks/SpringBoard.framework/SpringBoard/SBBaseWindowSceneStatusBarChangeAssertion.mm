@interface SBBaseWindowSceneStatusBarChangeAssertion
- (NSString)description;
- (SBBaseWindowSceneStatusBarChangeAssertion)init;
- (id)_initWithWindowSceneStatusBarAssertionManager:(id)manager reason:(id)reason;
@end

@implementation SBBaseWindowSceneStatusBarChangeAssertion

- (SBBaseWindowSceneStatusBarChangeAssertion)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBWindowSceneStatusBarChangeAssertion.m" lineNumber:23 description:@"You cannot invoke this directly."];

  return 0;
}

- (id)_initWithWindowSceneStatusBarAssertionManager:(id)manager reason:(id)reason
{
  managerCopy = manager;
  reasonCopy = reason;
  v12.receiver = self;
  v12.super_class = SBBaseWindowSceneStatusBarChangeAssertion;
  v8 = [(SBBaseWindowSceneStatusBarChangeAssertion *)&v12 init];
  if (v8)
  {
    v9 = [reasonCopy copy];
    reason = v8->_reason;
    v8->_reason = v9;

    objc_storeWeak(&v8->_assertionManager, managerCopy);
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p = reason:%@>", v5, self, self->_reason];

  return v6;
}

@end