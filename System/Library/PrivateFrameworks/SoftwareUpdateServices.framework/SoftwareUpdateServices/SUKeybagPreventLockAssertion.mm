@interface SUKeybagPreventLockAssertion
- (SUKeybagPreventLockAssertion)initWithKeybagAssertion:(__MKBAssertion *)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SUKeybagPreventLockAssertion

- (SUKeybagPreventLockAssertion)initWithKeybagAssertion:(__MKBAssertion *)a3
{
  if (!a3)
  {
    [SUKeybagPreventLockAssertion initWithKeybagAssertion:];
  }

  v7.receiver = self;
  v7.super_class = SUKeybagPreventLockAssertion;
  v5 = [(SUKeybagPreventLockAssertion *)&v7 init];
  if (v5)
  {
    CFRetain(a3);
    v5->_assertion = a3;
    v5->_invalidated = 0;
  }

  return v5;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    assertion = self->_assertion;
    if (assertion)
    {
      CFRelease(assertion);
      self->_assertion = 0;
    }
  }
}

- (void)initWithKeybagAssertion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"assertion" object:? file:? lineNumber:? description:?];
}

@end