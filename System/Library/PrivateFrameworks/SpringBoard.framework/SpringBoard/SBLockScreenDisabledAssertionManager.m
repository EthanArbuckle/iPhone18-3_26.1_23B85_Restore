@interface SBLockScreenDisabledAssertionManager
- (BOOL)shouldAutoUnlockForSource:(int)a3;
- (NSString)description;
- (SBLockScreenDisabledAssertionManager)init;
- (void)addLockScreenDisableAssertion:(id)a3;
- (void)removeLockScreenDisableAssertion:(id)a3;
@end

@implementation SBLockScreenDisabledAssertionManager

- (SBLockScreenDisabledAssertionManager)init
{
  v6.receiver = self;
  v6.super_class = SBLockScreenDisabledAssertionManager;
  v2 = [(SBLockScreenDisabledAssertionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    disableLockScreenIfPossibleAssertions = v2->_disableLockScreenIfPossibleAssertions;
    v2->_disableLockScreenIfPossibleAssertions = v3;
  }

  return v2;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[SBLockScreenDisabledAssertionManager isLockScreenDisabledForAssertion](self withName:{"isLockScreenDisabledForAssertion"), @"lockScreenDisabled"}];
  if ([(NSMutableSet *)self->_disableLockScreenIfPossibleAssertions count])
  {
    v5 = [v3 appendObject:self->_disableLockScreenIfPossibleAssertions withName:@"assertions"];
  }

  v6 = [v3 build];

  return v6;
}

- (void)addLockScreenDisableAssertion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Adding lock screen disable assertion %@", &v7, 0xCu);
  }

  v6 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v4];
  [(NSMutableSet *)self->_disableLockScreenIfPossibleAssertions addObject:v6];
}

- (void)removeLockScreenDisableAssertion:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "Removing lock screen disable assertion %@", &v7, 0xCu);
  }

  v6 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v4];
  [(NSMutableSet *)self->_disableLockScreenIfPossibleAssertions removeObject:v6];
}

- (BOOL)shouldAutoUnlockForSource:(int)a3
{
  v4 = +[SBLockScreenManager sharedInstance];
  if ([v4 isLockScreenActive])
  {
    v5 = [(SBLockScreenDisabledAssertionManager *)self isLockScreenDisabledForAssertion];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end