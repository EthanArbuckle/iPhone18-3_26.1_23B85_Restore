@interface SBTransientActiveInterfaceOrientationRequester
- (SBTransientActiveInterfaceOrientationRequester)initWithOrientation:(int64_t)orientation andReason:(id)reason;
@end

@implementation SBTransientActiveInterfaceOrientationRequester

- (SBTransientActiveInterfaceOrientationRequester)initWithOrientation:(int64_t)orientation andReason:(id)reason
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = SBTransientActiveInterfaceOrientationRequester;
  v7 = [(SBTransientActiveInterfaceOrientationRequester *)&v11 init];
  if (v7)
  {
    if (!reasonCopy)
    {
      [SBTransientActiveInterfaceOrientationRequester initWithOrientation:andReason:];
    }

    v7->_orientation = orientation;
    v8 = [reasonCopy copy];
    reason = v7->_reason;
    v7->_reason = v8;
  }

  return v7;
}

- (void)initWithOrientation:andReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end