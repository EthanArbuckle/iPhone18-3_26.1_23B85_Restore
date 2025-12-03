@interface SBLockScreenDisableAssertion
+ (void)initialize;
- (SBLockScreenDisableAssertion)initWithIdentifier:(id)identifier;
- (id)description;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBLockScreenDisableAssertion

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = MEMORY[0x277D679C0];
    v3 = objc_opt_class();

    [v2 setLockScreenDisableAssertionClass:v3];
  }
}

- (SBLockScreenDisableAssertion)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = SBLockScreenDisableAssertion;
  v5 = [(SBLockScreenDisableAssertion *)&v13 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    authenticationController = [SBApp authenticationController];
    v9 = [authenticationController createKeybagUnlockAssertionWithReason:v5->_identifier];
    disableLockAssertion = v5->_disableLockAssertion;
    v5->_disableLockAssertion = v9;

    [(SBFAuthenticationAssertion *)v5->_disableLockAssertion activate];
    v11 = +[SBLockScreenManager sharedInstance];
    [v11 addLockScreenDisableAssertion:v5];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: reason %@>", v5, self->_identifier];

  return v6;
}

- (void)dealloc
{
  v3 = +[SBLockScreenManager sharedInstance];
  [v3 removeLockScreenDisableAssertion:self];

  [(SBFAuthenticationAssertion *)self->_disableLockAssertion invalidate];
  v4.receiver = self;
  v4.super_class = SBLockScreenDisableAssertion;
  [(SBLockScreenDisableAssertion *)&v4 dealloc];
}

- (void)invalidate
{
  v3 = +[SBLockScreenManager sharedInstance];
  [v3 removeLockScreenDisableAssertion:self];

  disableLockAssertion = self->_disableLockAssertion;

  [(SBFAuthenticationAssertion *)disableLockAssertion invalidate];
}

@end