@interface SBFAuthenticationAssertionTracker
- (SBFAuthenticationAssertionTracker)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)addAssertion:(id)assertion;
- (void)dealloc;
- (void)removeAssertion:(id)assertion;
@end

@implementation SBFAuthenticationAssertionTracker

- (SBFAuthenticationAssertionTracker)init
{
  v6.receiver = self;
  v6.super_class = SBFAuthenticationAssertionTracker;
  v2 = [(SBFAuthenticationAssertionTracker *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    assertions = v2->_assertions;
    v2->_assertions = weakObjectsHashTable;

    v2->_mkbAssertion = 0;
  }

  return v2;
}

- (void)dealloc
{
  mkbAssertion = self->_mkbAssertion;
  if (mkbAssertion)
  {
    CFRelease(mkbAssertion);
    self->_mkbAssertion = 0;
  }

  v4.receiver = self;
  v4.super_class = SBFAuthenticationAssertionTracker;
  [(SBFAuthenticationAssertionTracker *)&v4 dealloc];
}

- (void)addAssertion:(id)assertion
{
  v17 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  if (!self->_mkbAssertion)
  {
    mkbAssertionOptions = [(SBFAuthenticationAssertionTracker *)self mkbAssertionOptions];
    if (mkbAssertionOptions)
    {
      cf = 0;
      MKBDeviceLockAssertion = _get_MKBDeviceLockAssertion();
      self->_mkbAssertion = MKBDeviceLockAssertion(mkbAssertionOptions, &cf);
      if (cf)
      {
        v7 = SBLogAuthenticationAssertions();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          code = [cf code];
          *buf = 138412802;
          v12 = assertionCopy;
          v13 = 1024;
          v14 = code;
          v15 = 2112;
          v16 = cf;
          _os_log_impl(&dword_1BEA11000, v7, OS_LOG_TYPE_DEFAULT, "Failed to take MKBDeviceLockAssertion (%@) due to error: %d - %@", buf, 0x1Cu);
        }

        CFRelease(cf);
        mkbAssertion = self->_mkbAssertion;
        if (mkbAssertion)
        {
          CFRelease(mkbAssertion);
          self->_mkbAssertion = 0;
        }
      }
    }
  }

  [(NSHashTable *)self->_assertions addObject:assertionCopy];
}

- (void)removeAssertion:(id)assertion
{
  [(NSHashTable *)self->_assertions removeObject:assertion];
  if (![(NSHashTable *)self->_assertions count])
  {
    mkbAssertion = self->_mkbAssertion;
    if (mkbAssertion)
    {
      CFRelease(mkbAssertion);
      self->_mkbAssertion = 0;
    }
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBFAuthenticationAssertionTracker *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[NSHashTable count](self->_assertions withName:{"count"), @"assertionCount"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBFAuthenticationAssertionTracker *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBFAuthenticationAssertionTracker *)self succinctDescriptionBuilder];
  if (self->_mkbAssertion || [(NSHashTable *)self->_assertions count])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__SBFAuthenticationAssertionTracker_descriptionBuilderWithMultilinePrefix___block_invoke;
    v7[3] = &unk_1E807F290;
    v8 = succinctDescriptionBuilder;
    selfCopy = self;
    [v8 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v7];
  }

  return succinctDescriptionBuilder;
}

void __75__SBFAuthenticationAssertionTracker_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"mkbAssertion" skipIfNil:1];
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 16) allObjects];
  [v3 appendArraySection:v4 withName:@"assertions" skipIfEmpty:1];
}

@end